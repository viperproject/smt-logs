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

;; MODULE 'module vstd::rwlock'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.is_None. FuelId)
(declare-const fuel%vstd.std_specs.option.is_some. FuelId)
(declare-const fuel%vstd.std_specs.option.is_none. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.std_specs.result.impl&%0.is_Ok. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%0.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%1.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%1.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%20.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%21.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%21.constant. FuelId)
(declare-const fuel%vstd!invariant.AtomicInvariant.inv. FuelId)
(declare-const fuel%vstd.rwlock.impl&%0.inv. FuelId)
(declare-const fuel%vstd.rwlock.impl&%1.inv. FuelId)
(declare-const fuel%vstd.rwlock.impl&%2.atomic_inv. FuelId)
(declare-const fuel%vstd.rwlock.impl&%3.atomic_inv. FuelId)
(declare-const fuel%vstd.rwlock.impl&%4.wf. FuelId)
(declare-const fuel%vstd.rwlock.impl&%5.wf_write_handle. FuelId)
(declare-const fuel%vstd.rwlock.impl&%5.rwlock. FuelId)
(declare-const fuel%vstd.rwlock.impl&%6.wf_read_handle. FuelId)
(declare-const fuel%vstd.rwlock.impl&%6.view. FuelId)
(declare-const fuel%vstd.rwlock.impl&%6.rwlock. FuelId)
(declare-const fuel%vstd.rwlock.impl&%7.pred. FuelId)
(declare-const fuel%vstd.rwlock.impl&%7.inv. FuelId)
(declare-const fuel%vstd.tokens.option_value_eq_option_token. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.impl&%0.is_None. fuel%vstd.std_specs.option.is_some. fuel%vstd.std_specs.option.is_none.
  fuel%vstd.std_specs.option.spec_unwrap. fuel%vstd.std_specs.result.impl&%0.is_Ok.
  fuel%vstd.atomic_ghost.impl&%0.inv. fuel%vstd.atomic_ghost.impl&%1.well_formed. fuel%vstd.atomic_ghost.impl&%1.constant.
  fuel%vstd.atomic_ghost.impl&%20.inv. fuel%vstd.atomic_ghost.impl&%21.well_formed.
  fuel%vstd.atomic_ghost.impl&%21.constant. fuel%vstd!invariant.AtomicInvariant.inv.
  fuel%vstd.rwlock.impl&%0.inv. fuel%vstd.rwlock.impl&%1.inv. fuel%vstd.rwlock.impl&%2.atomic_inv.
  fuel%vstd.rwlock.impl&%3.atomic_inv. fuel%vstd.rwlock.impl&%4.wf. fuel%vstd.rwlock.impl&%5.wf_write_handle.
  fuel%vstd.rwlock.impl&%5.rwlock. fuel%vstd.rwlock.impl&%6.wf_read_handle. fuel%vstd.rwlock.impl&%6.view.
  fuel%vstd.rwlock.impl&%6.rwlock. fuel%vstd.rwlock.impl&%7.pred. fuel%vstd.rwlock.impl&%7.inv.
  fuel%vstd.tokens.option_value_eq_option_token.
))

;; Datatypes
(declare-sort vstd.atomic.PAtomicBool. 0)
(declare-sort vstd.atomic.PAtomicU64. 0)
(declare-sort vstd.atomic.PermissionBool. 0)
(declare-sort vstd.atomic.PermissionU64. 0)
(declare-sort vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
 0
)
(declare-sort vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
 0
)
(declare-sort vstd.cell.CellId. 0)
(declare-sort vstd.invariant.OpenInvariantCredit. 0)
(declare-sort vstd.multiset.Multiset<tuple%0.>. 0)
(declare-datatypes ((core!option.Option. 0) (core!result.Result. 0) (core!marker.PhantomData.
   0
  ) (vstd.atomic.PermissionDataBool. 0) (vstd.atomic.PermissionDataU64. 0) (vstd.atomic_ghost.AtomicU64.
   0
  ) (vstd.atomic_ghost.AtomicBool. 0) (vstd.cell.PointsToData. 0) (vstd.rwlock.InternalPred.
   0
  ) (vstd.rwlock.RwLock. 0) (vstd.rwlock.InvariantPredicate_auto_RwLock_exc. 0) (vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
   0
  ) (vstd.rwlock.WriteHandle. 0) (vstd.rwlock.ReadHandle. 0) (vstd.tokens.InstanceId.
   0
  ) (tuple%0. 0) (tuple%2. 0) (tuple%3. 0) (tuple%7. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!result.Result./Ok (core!result.Result./Ok/?0 Poly)) (core!result.Result./Err
    (core!result.Result./Err/?0 Poly)
   )
  ) ((core!marker.PhantomData./PhantomData)) ((vstd.atomic.PermissionDataBool./PermissionDataBool
    (vstd.atomic.PermissionDataBool./PermissionDataBool/?patomic Int) (vstd.atomic.PermissionDataBool./PermissionDataBool/?value
     Bool
   ))
  ) ((vstd.atomic.PermissionDataU64./PermissionDataU64 (vstd.atomic.PermissionDataU64./PermissionDataU64/?patomic
     Int
    ) (vstd.atomic.PermissionDataU64./PermissionDataU64/?value Int)
   )
  ) ((vstd.atomic_ghost.AtomicU64./AtomicU64 (vstd.atomic_ghost.AtomicU64./AtomicU64/?patomic
     vstd.atomic.PAtomicU64.
    ) (vstd.atomic_ghost.AtomicU64./AtomicU64/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicBool./AtomicBool (vstd.atomic_ghost.AtomicBool./AtomicBool/?patomic
     vstd.atomic.PAtomicBool.
    ) (vstd.atomic_ghost.AtomicBool./AtomicBool/?atomic_inv Poly)
   )
  ) ((vstd.cell.PointsToData./PointsToData (vstd.cell.PointsToData./PointsToData/?pcell
     vstd.cell.CellId.
    ) (vstd.cell.PointsToData./PointsToData/?value core!option.Option.)
   )
  ) ((vstd.rwlock.InternalPred./InternalPred (vstd.rwlock.InternalPred./InternalPred/?v
     Poly
    ) (vstd.rwlock.InternalPred./InternalPred/?pred Poly)
   )
  ) ((vstd.rwlock.RwLock./RwLock (vstd.rwlock.RwLock./RwLock/?cell Poly) (vstd.rwlock.RwLock./RwLock/?exc
     vstd.atomic_ghost.AtomicBool.
    ) (vstd.rwlock.RwLock./RwLock/?rc vstd.atomic_ghost.AtomicU64.) (vstd.rwlock.RwLock./RwLock/?inst
     Poly
    ) (vstd.rwlock.RwLock./RwLock/?pred Poly)
   )
  ) ((vstd.rwlock.InvariantPredicate_auto_RwLock_exc./InvariantPredicate_auto_RwLock_exc))
  ((vstd.rwlock.InvariantPredicate_auto_RwLock_rc./InvariantPredicate_auto_RwLock_rc))
  ((vstd.rwlock.WriteHandle./WriteHandle (vstd.rwlock.WriteHandle./WriteHandle/?handle
     Poly
    ) (vstd.rwlock.WriteHandle./WriteHandle/?perm Poly) (vstd.rwlock.WriteHandle./WriteHandle/?rwlock
     vstd.rwlock.RwLock.
   ))
  ) ((vstd.rwlock.ReadHandle./ReadHandle (vstd.rwlock.ReadHandle./ReadHandle/?handle Poly)
    (vstd.rwlock.ReadHandle./ReadHandle/?rwlock vstd.rwlock.RwLock.)
   )
  ) ((vstd.tokens.InstanceId./InstanceId (vstd.tokens.InstanceId./InstanceId/?0 Int)))
  ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
   ))
  ) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1 Poly) (tuple%3./tuple%3/?2
     Poly
   ))
  ) ((tuple%7./tuple%7 (tuple%7./tuple%7/?0 Poly) (tuple%7./tuple%7/?1 Poly) (tuple%7./tuple%7/?2
     Poly
    ) (tuple%7./tuple%7/?3 Poly) (tuple%7./tuple%7/?4 Poly) (tuple%7./tuple%7/?5 Poly)
    (tuple%7./tuple%7/?6 Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun core!result.Result./Ok/0 (core!result.Result.) Poly)
(declare-fun core!result.Result./Err/0 (core!result.Result.) Poly)
(declare-fun vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (vstd.atomic.PermissionDataBool.)
 Int
)
(declare-fun vstd.atomic.PermissionDataBool./PermissionDataBool/value (vstd.atomic.PermissionDataBool.)
 Bool
)
(declare-fun vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (vstd.atomic.PermissionDataU64.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU64./PermissionDataU64/value (vstd.atomic.PermissionDataU64.)
 Int
)
(declare-fun vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (vstd.atomic_ghost.AtomicU64.)
 vstd.atomic.PAtomicU64.
)
(declare-fun vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (vstd.atomic_ghost.AtomicU64.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (vstd.atomic_ghost.AtomicBool.)
 vstd.atomic.PAtomicBool.
)
(declare-fun vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (vstd.atomic_ghost.AtomicBool.)
 Poly
)
(declare-fun vstd.cell.PointsToData./PointsToData/pcell (vstd.cell.PointsToData.)
 vstd.cell.CellId.
)
(declare-fun vstd.cell.PointsToData./PointsToData/value (vstd.cell.PointsToData.)
 core!option.Option.
)
(declare-fun vstd.rwlock.InternalPred./InternalPred/v (vstd.rwlock.InternalPred.)
 Poly
)
(declare-fun vstd.rwlock.InternalPred./InternalPred/pred (vstd.rwlock.InternalPred.)
 Poly
)
(declare-fun vstd.rwlock.RwLock./RwLock/cell (vstd.rwlock.RwLock.) Poly)
(declare-fun vstd.rwlock.RwLock./RwLock/exc (vstd.rwlock.RwLock.) vstd.atomic_ghost.AtomicBool.)
(declare-fun vstd.rwlock.RwLock./RwLock/rc (vstd.rwlock.RwLock.) vstd.atomic_ghost.AtomicU64.)
(declare-fun vstd.rwlock.RwLock./RwLock/inst (vstd.rwlock.RwLock.) Poly)
(declare-fun vstd.rwlock.RwLock./RwLock/pred (vstd.rwlock.RwLock.) Poly)
(declare-fun vstd.rwlock.WriteHandle./WriteHandle/handle (vstd.rwlock.WriteHandle.)
 Poly
)
(declare-fun vstd.rwlock.WriteHandle./WriteHandle/perm (vstd.rwlock.WriteHandle.)
 Poly
)
(declare-fun vstd.rwlock.WriteHandle./WriteHandle/rwlock (vstd.rwlock.WriteHandle.)
 vstd.rwlock.RwLock.
)
(declare-fun vstd.rwlock.ReadHandle./ReadHandle/handle (vstd.rwlock.ReadHandle.) Poly)
(declare-fun vstd.rwlock.ReadHandle./ReadHandle/rwlock (vstd.rwlock.ReadHandle.) vstd.rwlock.RwLock.)
(declare-fun vstd.tokens.InstanceId./InstanceId/0 (vstd.tokens.InstanceId.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun tuple%7./tuple%7/0 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/1 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/2 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/3 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/4 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/5 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/6 (tuple%7.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!result.Result. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!marker.PhantomData. (Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.Instance. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.flag_exc. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.flag_rc. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.pending_writer. (Dcr Type Dcr Type Dcr Type)
 Type
)
(declare-fun TYPE%vstd.rwlock.RwLockToks.writer. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.pending_reader. (Dcr Type Dcr Type Dcr Type)
 Type
)
(declare-fun TYPE%vstd.rwlock.RwLockToks.reader. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.atomic.PAtomicBool. Type)
(declare-const TYPE%vstd.atomic.PermissionBool. Type)
(declare-const TYPE%vstd.atomic.PermissionDataBool. Type)
(declare-const TYPE%vstd.atomic.PAtomicU64. Type)
(declare-const TYPE%vstd.atomic.PermissionU64. Type)
(declare-const TYPE%vstd.atomic.PermissionDataU64. Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredU64. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicU64. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredBool. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicBool. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.cell.PCell. (Dcr Type) Type)
(declare-fun TYPE%vstd.cell.PointsTo. (Dcr Type) Type)
(declare-fun TYPE%vstd.cell.PointsToData. (Dcr Type) Type)
(declare-const TYPE%vstd.cell.CellId. Type)
(declare-fun TYPE%vstd.invariant.AtomicInvariant. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.invariant.OpenInvariantCredit. Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.InternalPred. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLock. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. Type)
(declare-const TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. Type)
(declare-fun TYPE%vstd.rwlock.WriteHandle. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.ReadHandle. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.tokens.InstanceId. Type)
(declare-fun TYPE%vstd.tokens.MultisetToken. (Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%7. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type Dcr
  Type
 ) Type
)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%vstd.atomic.PAtomicBool. (vstd.atomic.PAtomicBool.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicBool. (Poly) vstd.atomic.PAtomicBool.)
(declare-fun Poly%vstd.atomic.PAtomicU64. (vstd.atomic.PAtomicU64.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicU64. (Poly) vstd.atomic.PAtomicU64.)
(declare-fun Poly%vstd.atomic.PermissionBool. (vstd.atomic.PermissionBool.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionBool. (Poly) vstd.atomic.PermissionBool.)
(declare-fun Poly%vstd.atomic.PermissionU64. (vstd.atomic.PermissionU64.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionU64. (Poly) vstd.atomic.PermissionU64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
 (vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
 (Poly) vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
 (vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
 (Poly) vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
)
(declare-fun Poly%vstd.cell.CellId. (vstd.cell.CellId.) Poly)
(declare-fun %Poly%vstd.cell.CellId. (Poly) vstd.cell.CellId.)
(declare-fun Poly%vstd.invariant.OpenInvariantCredit. (vstd.invariant.OpenInvariantCredit.)
 Poly
)
(declare-fun %Poly%vstd.invariant.OpenInvariantCredit. (Poly) vstd.invariant.OpenInvariantCredit.)
(declare-fun Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.Multiset<tuple%0.>.)
 Poly
)
(declare-fun %Poly%vstd.multiset.Multiset<tuple%0.>. (Poly) vstd.multiset.Multiset<tuple%0.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!result.Result. (core!result.Result.) Poly)
(declare-fun %Poly%core!result.Result. (Poly) core!result.Result.)
(declare-fun Poly%core!marker.PhantomData. (core!marker.PhantomData.) Poly)
(declare-fun %Poly%core!marker.PhantomData. (Poly) core!marker.PhantomData.)
(declare-fun Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.PermissionDataBool.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataBool. (Poly) vstd.atomic.PermissionDataBool.)
(declare-fun Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.PermissionDataU64.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataU64. (Poly) vstd.atomic.PermissionDataU64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicU64. (vstd.atomic_ghost.AtomicU64.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicU64. (Poly) vstd.atomic_ghost.AtomicU64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicBool. (vstd.atomic_ghost.AtomicBool.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicBool. (Poly) vstd.atomic_ghost.AtomicBool.)
(declare-fun Poly%vstd.cell.PointsToData. (vstd.cell.PointsToData.) Poly)
(declare-fun %Poly%vstd.cell.PointsToData. (Poly) vstd.cell.PointsToData.)
(declare-fun Poly%vstd.rwlock.InternalPred. (vstd.rwlock.InternalPred.) Poly)
(declare-fun %Poly%vstd.rwlock.InternalPred. (Poly) vstd.rwlock.InternalPred.)
(declare-fun Poly%vstd.rwlock.RwLock. (vstd.rwlock.RwLock.) Poly)
(declare-fun %Poly%vstd.rwlock.RwLock. (Poly) vstd.rwlock.RwLock.)
(declare-fun Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. (vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. (Poly) vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
(declare-fun Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. (vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. (Poly) vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
(declare-fun Poly%vstd.rwlock.WriteHandle. (vstd.rwlock.WriteHandle.) Poly)
(declare-fun %Poly%vstd.rwlock.WriteHandle. (Poly) vstd.rwlock.WriteHandle.)
(declare-fun Poly%vstd.rwlock.ReadHandle. (vstd.rwlock.ReadHandle.) Poly)
(declare-fun %Poly%vstd.rwlock.ReadHandle. (Poly) vstd.rwlock.ReadHandle.)
(declare-fun Poly%vstd.tokens.InstanceId. (vstd.tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd.tokens.InstanceId. (Poly) vstd.tokens.InstanceId.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
(declare-fun Poly%tuple%7. (tuple%7.) Poly)
(declare-fun %Poly%tuple%7. (Poly) tuple%7.)
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
 (forall ((x vstd.atomic.PAtomicBool.)) (!
   (= x (%Poly%vstd.atomic.PAtomicBool. (Poly%vstd.atomic.PAtomicBool. x)))
   :pattern ((Poly%vstd.atomic.PAtomicBool. x))
   :qid internal_crate__vstd__atomic__PAtomicBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicBool.)
    (= x (Poly%vstd.atomic.PAtomicBool. (%Poly%vstd.atomic.PAtomicBool. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicBool.))
   :qid internal_crate__vstd__atomic__PAtomicBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicBool.)) (!
   (has_type (Poly%vstd.atomic.PAtomicBool. x) TYPE%vstd.atomic.PAtomicBool.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicBool. x) TYPE%vstd.atomic.PAtomicBool.))
   :qid internal_crate__vstd__atomic__PAtomicBool_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicBool_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU64.)) (!
   (= x (%Poly%vstd.atomic.PAtomicU64. (Poly%vstd.atomic.PAtomicU64. x)))
   :pattern ((Poly%vstd.atomic.PAtomicU64. x))
   :qid internal_crate__vstd__atomic__PAtomicU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicU64.)
    (= x (Poly%vstd.atomic.PAtomicU64. (%Poly%vstd.atomic.PAtomicU64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicU64.))
   :qid internal_crate__vstd__atomic__PAtomicU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU64.)) (!
   (has_type (Poly%vstd.atomic.PAtomicU64. x) TYPE%vstd.atomic.PAtomicU64.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicU64. x) TYPE%vstd.atomic.PAtomicU64.))
   :qid internal_crate__vstd__atomic__PAtomicU64_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU64_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionBool.)) (!
   (= x (%Poly%vstd.atomic.PermissionBool. (Poly%vstd.atomic.PermissionBool. x)))
   :pattern ((Poly%vstd.atomic.PermissionBool. x))
   :qid internal_crate__vstd__atomic__PermissionBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionBool.)
    (= x (Poly%vstd.atomic.PermissionBool. (%Poly%vstd.atomic.PermissionBool. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionBool.))
   :qid internal_crate__vstd__atomic__PermissionBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionBool.)) (!
   (has_type (Poly%vstd.atomic.PermissionBool. x) TYPE%vstd.atomic.PermissionBool.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionBool. x) TYPE%vstd.atomic.PermissionBool.))
   :qid internal_crate__vstd__atomic__PermissionBool_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionBool_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU64.)) (!
   (= x (%Poly%vstd.atomic.PermissionU64. (Poly%vstd.atomic.PermissionU64. x)))
   :pattern ((Poly%vstd.atomic.PermissionU64. x))
   :qid internal_crate__vstd__atomic__PermissionU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionU64.)
    (= x (Poly%vstd.atomic.PermissionU64. (%Poly%vstd.atomic.PermissionU64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionU64.))
   :qid internal_crate__vstd__atomic__PermissionU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU64.)) (!
   (has_type (Poly%vstd.atomic.PermissionU64. x) TYPE%vstd.atomic.PermissionU64.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionU64. x) TYPE%vstd.atomic.PermissionU64.))
   :qid internal_crate__vstd__atomic__PermissionU64_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU64_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.))
  (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
     (Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
     x
   ))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.))
    (= x (Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
      (%Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.))
  (!
   (has_type (Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
     x
    ) (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
   )
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>.
      x
     ) (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
   ))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredBool<vstd.rwlock.InvariantPredicate_auto_RwLock_exc.>_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.))
  (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
     (Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
     x
   ))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.))
    (= x (Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
      (%Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.))
  (!
   (has_type (Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
     x
    ) (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
   )
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>.
      x
     ) (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
   ))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU64<vstd.rwlock.InvariantPredicate_auto_RwLock_rc.>_has_type_always_definition
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
 (forall ((x vstd.multiset.Multiset<tuple%0.>.)) (!
   (= x (%Poly%vstd.multiset.Multiset<tuple%0.>. (Poly%vstd.multiset.Multiset<tuple%0.>.
      x
   )))
   :pattern ((Poly%vstd.multiset.Multiset<tuple%0.>. x))
   :qid internal_crate__vstd__multiset__Multiset<tuple__0.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<tuple__0.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.multiset.Multiset. $ TYPE%tuple%0.))
    (= x (Poly%vstd.multiset.Multiset<tuple%0.>. (%Poly%vstd.multiset.Multiset<tuple%0.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.multiset.Multiset. $ TYPE%tuple%0.)))
   :qid internal_crate__vstd__multiset__Multiset<tuple__0.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<tuple__0.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.multiset.Multiset<tuple%0.>.)) (!
   (has_type (Poly%vstd.multiset.Multiset<tuple%0.>. x) (TYPE%vstd.multiset.Multiset.
     $ TYPE%tuple%0.
   ))
   :pattern ((has_type (Poly%vstd.multiset.Multiset<tuple%0.>. x) (TYPE%vstd.multiset.Multiset.
      $ TYPE%tuple%0.
   )))
   :qid internal_crate__vstd__multiset__Multiset<tuple__0.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<tuple__0.>_has_type_always_definition
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
 (forall ((x core!result.Result.)) (!
   (= x (%Poly%core!result.Result. (Poly%core!result.Result. x)))
   :pattern ((Poly%core!result.Result. x))
   :qid internal_core__result__Result_box_axiom_definition
   :skolemid skolem_internal_core__result__Result_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (= x (Poly%core!result.Result. (%Poly%core!result.Result. x)))
   )
   :pattern ((has_type x (TYPE%core!result.Result. T&. T& E&. E&)))
   :qid internal_core__result__Result_unbox_axiom_definition
   :skolemid skolem_internal_core__result__Result_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T&)
    (has_type (Poly%core!result.Result. (core!result.Result./Ok _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :pattern ((has_type (Poly%core!result.Result. (core!result.Result./Ok _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Ok_constructor_definition
   :skolemid skolem_internal_core!result.Result./Ok_constructor_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= (core!result.Result./Ok/0 x) (core!result.Result./Ok/?0 x))
   :pattern ((core!result.Result./Ok/0 x))
   :qid internal_core!result.Result./Ok/0_accessor_definition
   :skolemid skolem_internal_core!result.Result./Ok/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (core!result.Result./Ok/0 (%Poly%core!result.Result. x)) T&)
   )
   :pattern ((core!result.Result./Ok/0 (%Poly%core!result.Result. x)) (has_type x (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Ok/0_invariant_definition
   :skolemid skolem_internal_core!result.Result./Ok/0_invariant_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (_0! Poly)) (!
   (=>
    (has_type _0! E&)
    (has_type (Poly%core!result.Result. (core!result.Result./Err _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :pattern ((has_type (Poly%core!result.Result. (core!result.Result./Err _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Err_constructor_definition
   :skolemid skolem_internal_core!result.Result./Err_constructor_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= (core!result.Result./Err/0 x) (core!result.Result./Err/?0 x))
   :pattern ((core!result.Result./Err/0 x))
   :qid internal_core!result.Result./Err/0_accessor_definition
   :skolemid skolem_internal_core!result.Result./Err/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (core!result.Result./Err/0 (%Poly%core!result.Result. x)) E&)
   )
   :pattern ((core!result.Result./Err/0 (%Poly%core!result.Result. x)) (has_type x (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Err/0_invariant_definition
   :skolemid skolem_internal_core!result.Result./Err/0_invariant_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (=>
    (is-core!result.Result./Ok x)
    (height_lt (height (core!result.Result./Ok/0 x)) (height (Poly%core!result.Result. x)))
   )
   :pattern ((height (core!result.Result./Ok/0 x)))
   :qid prelude_datatype_height_core!result.Result./Ok/0
   :skolemid skolem_prelude_datatype_height_core!result.Result./Ok/0
)))
(assert
 (forall ((x core!result.Result.)) (!
   (=>
    (is-core!result.Result./Err x)
    (height_lt (height (core!result.Result./Err/0 x)) (height (Poly%core!result.Result.
       x
   ))))
   :pattern ((height (core!result.Result./Err/0 x)))
   :qid prelude_datatype_height_core!result.Result./Err/0
   :skolemid skolem_prelude_datatype_height_core!result.Result./Err/0
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
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataBool. x))
   :qid internal_crate__vstd__atomic__PermissionDataBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataBool.)
    (= x (Poly%vstd.atomic.PermissionDataBool. (%Poly%vstd.atomic.PermissionDataBool. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataBool.))
   :qid internal_crate__vstd__atomic__PermissionDataBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic x) (vstd.atomic.PermissionDataBool./PermissionDataBool/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataBool./PermissionDataBool/patomic x))
   :qid internal_vstd.atomic.PermissionDataBool./PermissionDataBool/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataBool./PermissionDataBool/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value x) (vstd.atomic.PermissionDataBool./PermissionDataBool/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataBool./PermissionDataBool/value x))
   :qid internal_vstd.atomic.PermissionDataBool./PermissionDataBool/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataBool./PermissionDataBool/value_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (has_type (Poly%vstd.atomic.PermissionDataBool. x) TYPE%vstd.atomic.PermissionDataBool.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataBool. x) TYPE%vstd.atomic.PermissionDataBool.))
   :qid internal_crate__vstd__atomic__PermissionDataBool_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataBool_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU64.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataU64. x))
   :qid internal_crate__vstd__atomic__PermissionDataU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU64.)
    (= x (Poly%vstd.atomic.PermissionDataU64. (%Poly%vstd.atomic.PermissionDataU64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataU64.))
   :qid internal_crate__vstd__atomic__PermissionDataU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU64_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv 64 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.PermissionDataU64./PermissionDataU64
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU64.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.PermissionDataU64./PermissionDataU64
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU64.
   ))
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU64.)) (!
   (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic x) (vstd.atomic.PermissionDataU64./PermissionDataU64/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU64./PermissionDataU64/patomic x))
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU64.)) (!
   (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value x) (vstd.atomic.PermissionDataU64./PermissionDataU64/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU64./PermissionDataU64/value x))
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU64.)
    (uInv 64 (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataU64.)
   )
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicU64. (Poly%vstd.atomic_ghost.AtomicU64. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicU64. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU64_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicU64. (%Poly%vstd.atomic_ghost.AtomicU64. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU64_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicU64.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicU64. (vstd.atomic_ghost.AtomicU64./AtomicU64
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicU64. (vstd.atomic_ghost.AtomicU64./AtomicU64
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (= (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic x) (vstd.atomic_ghost.AtomicU64./AtomicU64/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU64./AtomicU64/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (= (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x) (vstd.atomic_ghost.AtomicU64./AtomicU64/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionU64. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicU64./AtomicU64 x)
    (height_lt (height (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicU64. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicBool. (Poly%vstd.atomic_ghost.AtomicBool. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicBool. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicBool_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicBool. (%Poly%vstd.atomic_ghost.AtomicBool. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicBool_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicBool.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicBool. (vstd.atomic_ghost.AtomicBool./AtomicBool
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicBool. (vstd.atomic_ghost.AtomicBool./AtomicBool
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (= (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic x) (vstd.atomic_ghost.AtomicBool./AtomicBool/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicBool./AtomicBool/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (= (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x) (vstd.atomic_ghost.AtomicBool./AtomicBool/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionBool. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicBool./AtomicBool x)
    (height_lt (height (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x)) (height
      (Poly%vstd.atomic_ghost.AtomicBool. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv
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
 (forall ((x vstd.rwlock.InternalPred.)) (!
   (= x (%Poly%vstd.rwlock.InternalPred. (Poly%vstd.rwlock.InternalPred. x)))
   :pattern ((Poly%vstd.rwlock.InternalPred. x))
   :qid internal_crate__vstd__rwlock__InternalPred_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InternalPred_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.InternalPred. (%Poly%vstd.rwlock.InternalPred. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__InternalPred_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InternalPred_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_v! Poly) (_pred! Poly)) (
   !
   (=>
    (and
     (has_type _v! V&)
     (has_type _pred! Pred&)
    )
    (has_type (Poly%vstd.rwlock.InternalPred. (vstd.rwlock.InternalPred./InternalPred _v!
       _pred!
      )
     ) (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.InternalPred. (vstd.rwlock.InternalPred./InternalPred
       _v! _pred!
      )
     ) (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.InternalPred./InternalPred_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.InternalPred./InternalPred_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.InternalPred.)) (!
   (= (vstd.rwlock.InternalPred./InternalPred/v x) (vstd.rwlock.InternalPred./InternalPred/?v
     x
   ))
   :pattern ((vstd.rwlock.InternalPred./InternalPred/v x))
   :qid internal_vstd.rwlock.InternalPred./InternalPred/v_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.InternalPred./InternalPred/v_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.InternalPred./InternalPred/v (%Poly%vstd.rwlock.InternalPred.
       x
      )
     ) V&
   ))
   :pattern ((vstd.rwlock.InternalPred./InternalPred/v (%Poly%vstd.rwlock.InternalPred.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.InternalPred./InternalPred/v_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.InternalPred./InternalPred/v_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.InternalPred.)) (!
   (= (vstd.rwlock.InternalPred./InternalPred/pred x) (vstd.rwlock.InternalPred./InternalPred/?pred
     x
   ))
   :pattern ((vstd.rwlock.InternalPred./InternalPred/pred x))
   :qid internal_vstd.rwlock.InternalPred./InternalPred/pred_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.InternalPred./InternalPred/pred_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.InternalPred./InternalPred/pred (%Poly%vstd.rwlock.InternalPred.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.rwlock.InternalPred./InternalPred/pred (%Poly%vstd.rwlock.InternalPred.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.InternalPred./InternalPred/pred_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.InternalPred./InternalPred/pred_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.InternalPred.)) (!
   (=>
    (is-vstd.rwlock.InternalPred./InternalPred x)
    (height_lt (height (vstd.rwlock.InternalPred./InternalPred/v x)) (height (Poly%vstd.rwlock.InternalPred.
       x
   ))))
   :pattern ((height (vstd.rwlock.InternalPred./InternalPred/v x)))
   :qid prelude_datatype_height_vstd.rwlock.InternalPred./InternalPred/v
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.InternalPred./InternalPred/v
)))
(assert
 (forall ((x vstd.rwlock.InternalPred.)) (!
   (=>
    (is-vstd.rwlock.InternalPred./InternalPred x)
    (height_lt (height (vstd.rwlock.InternalPred./InternalPred/pred x)) (height (Poly%vstd.rwlock.InternalPred.
       x
   ))))
   :pattern ((height (vstd.rwlock.InternalPred./InternalPred/pred x)))
   :qid prelude_datatype_height_vstd.rwlock.InternalPred./InternalPred/pred
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.InternalPred./InternalPred/pred
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (= x (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock. x)))
   :pattern ((Poly%vstd.rwlock.RwLock. x))
   :qid internal_crate__vstd__rwlock__RwLock_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLock_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLock. (%Poly%vstd.rwlock.RwLock. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLock_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLock_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_cell! Poly) (_exc! vstd.atomic_ghost.AtomicBool.)
   (_rc! vstd.atomic_ghost.AtomicU64.) (_inst! Poly) (_pred! Poly)
  ) (!
   (=>
    (and
     (has_type _cell! (TYPE%vstd.cell.PCell. V&. V&))
     (has_type (Poly%vstd.atomic_ghost.AtomicBool. _exc!) (TYPE%vstd.atomic_ghost.AtomicBool.
       (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
         TYPE%vstd.cell.CellId.
        ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
        $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
     ))
     (has_type (Poly%vstd.atomic_ghost.AtomicU64. _rc!) (TYPE%vstd.atomic_ghost.AtomicU64.
       (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
         TYPE%vstd.cell.CellId.
        ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
        $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
     ))
     (has_type _inst! (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred&
        $ TYPE%vstd.cell.CellId.
       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
     )))
     (has_type _pred! Pred&)
    )
    (has_type (Poly%vstd.rwlock.RwLock. (vstd.rwlock.RwLock./RwLock _cell! _exc! _rc! _inst!
       _pred!
      )
     ) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLock. (vstd.rwlock.RwLock./RwLock _cell! _exc!
       _rc! _inst! _pred!
      )
     ) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLock./RwLock_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (= (vstd.rwlock.RwLock./RwLock/cell x) (vstd.rwlock.RwLock./RwLock/?cell x))
   :pattern ((vstd.rwlock.RwLock./RwLock/cell x))
   :qid internal_vstd.rwlock.RwLock./RwLock/cell_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/cell_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock. x)) (TYPE%vstd.cell.PCell.
      V&. V&
   )))
   :pattern ((vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock. x)) (has_type
     x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLock./RwLock/cell_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/cell_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (= (vstd.rwlock.RwLock./RwLock/exc x) (vstd.rwlock.RwLock./RwLock/?exc x))
   :pattern ((vstd.rwlock.RwLock./RwLock/exc x))
   :qid internal_vstd.rwlock.RwLock./RwLock/exc_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/exc_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.atomic_ghost.AtomicBool. (vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock.
        x
      ))
     ) (TYPE%vstd.atomic_ghost.AtomicBool. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
        V&. V&
       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
      ) $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
       $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       )
      ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
   )))
   :pattern ((vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock. x)) (has_type
     x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLock./RwLock/exc_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/exc_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (= (vstd.rwlock.RwLock./RwLock/rc x) (vstd.rwlock.RwLock./RwLock/?rc x))
   :pattern ((vstd.rwlock.RwLock./RwLock/rc x))
   :qid internal_vstd.rwlock.RwLock./RwLock/rc_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/rc_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.atomic_ghost.AtomicU64. (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock.
        x
      ))
     ) (TYPE%vstd.atomic_ghost.AtomicU64. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
        V&. V&
       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
      ) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
       $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       )
      ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
   )))
   :pattern ((vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. x)) (has_type x
     (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLock./RwLock/rc_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/rc_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (= (vstd.rwlock.RwLock./RwLock/inst x) (vstd.rwlock.RwLock./RwLock/?inst x))
   :pattern ((vstd.rwlock.RwLock./RwLock/inst x))
   :qid internal_vstd.rwlock.RwLock./RwLock/inst_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/inst_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. x)) (TYPE%vstd.rwlock.RwLockToks.Instance.
      $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
       V&. V&
      ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
   )))
   :pattern ((vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. x)) (has_type
     x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLock./RwLock/inst_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/inst_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (= (vstd.rwlock.RwLock./RwLock/pred x) (vstd.rwlock.RwLock./RwLock/?pred x))
   :pattern ((vstd.rwlock.RwLock./RwLock/pred x))
   :qid internal_vstd.rwlock.RwLock./RwLock/pred_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/pred_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLock./RwLock/pred (%Poly%vstd.rwlock.RwLock. x)) Pred&)
   )
   :pattern ((vstd.rwlock.RwLock./RwLock/pred (%Poly%vstd.rwlock.RwLock. x)) (has_type
     x (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLock./RwLock/pred_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLock./RwLock/pred_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (=>
    (is-vstd.rwlock.RwLock./RwLock x)
    (height_lt (height (vstd.rwlock.RwLock./RwLock/cell x)) (height (Poly%vstd.rwlock.RwLock.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLock./RwLock/cell x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLock./RwLock/cell
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLock./RwLock/cell
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (=>
    (is-vstd.rwlock.RwLock./RwLock x)
    (height_lt (height (Poly%vstd.atomic_ghost.AtomicBool. (vstd.rwlock.RwLock./RwLock/exc
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLock. x))
   ))
   :pattern ((height (Poly%vstd.atomic_ghost.AtomicBool. (vstd.rwlock.RwLock./RwLock/exc
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLock./RwLock/exc
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLock./RwLock/exc
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (=>
    (is-vstd.rwlock.RwLock./RwLock x)
    (height_lt (height (Poly%vstd.atomic_ghost.AtomicU64. (vstd.rwlock.RwLock./RwLock/rc
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLock. x))
   ))
   :pattern ((height (Poly%vstd.atomic_ghost.AtomicU64. (vstd.rwlock.RwLock./RwLock/rc x))))
   :qid prelude_datatype_height_vstd.rwlock.RwLock./RwLock/rc
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLock./RwLock/rc
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (=>
    (is-vstd.rwlock.RwLock./RwLock x)
    (height_lt (height (vstd.rwlock.RwLock./RwLock/inst x)) (height (Poly%vstd.rwlock.RwLock.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLock./RwLock/inst x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLock./RwLock/inst
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLock./RwLock/inst
)))
(assert
 (forall ((x vstd.rwlock.RwLock.)) (!
   (=>
    (is-vstd.rwlock.RwLock./RwLock x)
    (height_lt (height (vstd.rwlock.RwLock./RwLock/pred x)) (height (Poly%vstd.rwlock.RwLock.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLock./RwLock/pred x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLock./RwLock/pred
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLock./RwLock/pred
)))
(assert
 (forall ((x vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)) (!
   (= x (%Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
      x
   )))
   :pattern ((Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. x))
   :qid internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_exc_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_exc_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
    (= x (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. (%Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.))
   :qid internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_exc_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_exc_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)) (!
   (has_type (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. x) TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
   :pattern ((has_type (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. x) TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.))
   :qid internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_exc_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_exc_has_type_always_definition
)))
(assert
 (forall ((x vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)) (!
   (= x (%Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
      x
   )))
   :pattern ((Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. x))
   :qid internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_rc_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_rc_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
    (= x (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. (%Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.))
   :qid internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_rc_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_rc_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)) (!
   (has_type (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. x) TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
   :pattern ((has_type (Poly%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. x) TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.))
   :qid internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_rc_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__rwlock__InvariantPredicate_auto_RwLock_rc_has_type_always_definition
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (= x (%Poly%vstd.rwlock.WriteHandle. (Poly%vstd.rwlock.WriteHandle. x)))
   :pattern ((Poly%vstd.rwlock.WriteHandle. x))
   :qid internal_crate__vstd__rwlock__WriteHandle_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__WriteHandle_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.WriteHandle. (%Poly%vstd.rwlock.WriteHandle. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__WriteHandle_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__WriteHandle_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_handle! Poly) (_perm! Poly)
   (_rwlock! vstd.rwlock.RwLock.)
  ) (!
   (=>
    (and
     (has_type _handle! (TYPE%vstd.rwlock.RwLockToks.writer. $ (TYPE%tuple%2. Pred&. Pred&
        $ TYPE%vstd.cell.CellId.
       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
     )))
     (has_type _perm! (TYPE%vstd.cell.PointsTo. V&. V&))
     (has_type (Poly%vstd.rwlock.RwLock. _rwlock!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
       Pred&
    )))
    (has_type (Poly%vstd.rwlock.WriteHandle. (vstd.rwlock.WriteHandle./WriteHandle _handle!
       _perm! _rwlock!
      )
     ) (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.WriteHandle. (vstd.rwlock.WriteHandle./WriteHandle
       _handle! _perm! _rwlock!
      )
     ) (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (= (vstd.rwlock.WriteHandle./WriteHandle/handle x) (vstd.rwlock.WriteHandle./WriteHandle/?handle
     x
   ))
   :pattern ((vstd.rwlock.WriteHandle./WriteHandle/handle x))
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle/handle_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle/handle_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.WriteHandle./WriteHandle/handle (%Poly%vstd.rwlock.WriteHandle.
       x
      )
     ) (TYPE%vstd.rwlock.RwLockToks.writer. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
   ))))
   :pattern ((vstd.rwlock.WriteHandle./WriteHandle/handle (%Poly%vstd.rwlock.WriteHandle.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle/handle_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle/handle_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (= (vstd.rwlock.WriteHandle./WriteHandle/perm x) (vstd.rwlock.WriteHandle./WriteHandle/?perm
     x
   ))
   :pattern ((vstd.rwlock.WriteHandle./WriteHandle/perm x))
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle/perm_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle/perm_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.WriteHandle./WriteHandle/perm (%Poly%vstd.rwlock.WriteHandle.
       x
      )
     ) (TYPE%vstd.cell.PointsTo. V&. V&)
   ))
   :pattern ((vstd.rwlock.WriteHandle./WriteHandle/perm (%Poly%vstd.rwlock.WriteHandle.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle/perm_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle/perm_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (= (vstd.rwlock.WriteHandle./WriteHandle/rwlock x) (vstd.rwlock.WriteHandle./WriteHandle/?rwlock
     x
   ))
   :pattern ((vstd.rwlock.WriteHandle./WriteHandle/rwlock x))
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle/rwlock_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle/rwlock_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLock. (vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle.
        x
      ))
     ) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.WriteHandle./WriteHandle/rwlock_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.WriteHandle./WriteHandle/rwlock_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (=>
    (is-vstd.rwlock.WriteHandle./WriteHandle x)
    (height_lt (height (vstd.rwlock.WriteHandle./WriteHandle/handle x)) (height (Poly%vstd.rwlock.WriteHandle.
       x
   ))))
   :pattern ((height (vstd.rwlock.WriteHandle./WriteHandle/handle x)))
   :qid prelude_datatype_height_vstd.rwlock.WriteHandle./WriteHandle/handle
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.WriteHandle./WriteHandle/handle
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (=>
    (is-vstd.rwlock.WriteHandle./WriteHandle x)
    (height_lt (height (vstd.rwlock.WriteHandle./WriteHandle/perm x)) (height (Poly%vstd.rwlock.WriteHandle.
       x
   ))))
   :pattern ((height (vstd.rwlock.WriteHandle./WriteHandle/perm x)))
   :qid prelude_datatype_height_vstd.rwlock.WriteHandle./WriteHandle/perm
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.WriteHandle./WriteHandle/perm
)))
(assert
 (forall ((x vstd.rwlock.WriteHandle.)) (!
   (=>
    (is-vstd.rwlock.WriteHandle./WriteHandle x)
    (height_lt (height (Poly%vstd.rwlock.RwLock. (vstd.rwlock.WriteHandle./WriteHandle/rwlock
        x
      ))
     ) (height (Poly%vstd.rwlock.WriteHandle. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLock. (vstd.rwlock.WriteHandle./WriteHandle/rwlock
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.WriteHandle./WriteHandle/rwlock
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.WriteHandle./WriteHandle/rwlock
)))
(assert
 (forall ((x vstd.rwlock.ReadHandle.)) (!
   (= x (%Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle. x)))
   :pattern ((Poly%vstd.rwlock.ReadHandle. x))
   :qid internal_crate__vstd__rwlock__ReadHandle_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__ReadHandle_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.ReadHandle. (%Poly%vstd.rwlock.ReadHandle. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__ReadHandle_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__ReadHandle_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_handle! Poly) (_rwlock! vstd.rwlock.RwLock.))
  (!
   (=>
    (and
     (has_type _handle! (TYPE%vstd.rwlock.RwLockToks.reader. $ (TYPE%tuple%2. Pred&. Pred&
        $ TYPE%vstd.cell.CellId.
       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
     )))
     (has_type (Poly%vstd.rwlock.RwLock. _rwlock!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
       Pred&
    )))
    (has_type (Poly%vstd.rwlock.ReadHandle. (vstd.rwlock.ReadHandle./ReadHandle _handle!
       _rwlock!
      )
     ) (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.ReadHandle. (vstd.rwlock.ReadHandle./ReadHandle
       _handle! _rwlock!
      )
     ) (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.ReadHandle./ReadHandle_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.ReadHandle./ReadHandle_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.ReadHandle.)) (!
   (= (vstd.rwlock.ReadHandle./ReadHandle/handle x) (vstd.rwlock.ReadHandle./ReadHandle/?handle
     x
   ))
   :pattern ((vstd.rwlock.ReadHandle./ReadHandle/handle x))
   :qid internal_vstd.rwlock.ReadHandle./ReadHandle/handle_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.ReadHandle./ReadHandle/handle_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.ReadHandle./ReadHandle/handle (%Poly%vstd.rwlock.ReadHandle.
       x
      )
     ) (TYPE%vstd.rwlock.RwLockToks.reader. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
   ))))
   :pattern ((vstd.rwlock.ReadHandle./ReadHandle/handle (%Poly%vstd.rwlock.ReadHandle.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.ReadHandle./ReadHandle/handle_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.ReadHandle./ReadHandle/handle_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.ReadHandle.)) (!
   (= (vstd.rwlock.ReadHandle./ReadHandle/rwlock x) (vstd.rwlock.ReadHandle./ReadHandle/?rwlock
     x
   ))
   :pattern ((vstd.rwlock.ReadHandle./ReadHandle/rwlock x))
   :qid internal_vstd.rwlock.ReadHandle./ReadHandle/rwlock_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.ReadHandle./ReadHandle/rwlock_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLock. (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle.
        x
      ))
     ) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.ReadHandle./ReadHandle/rwlock_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.ReadHandle./ReadHandle/rwlock_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.ReadHandle.)) (!
   (=>
    (is-vstd.rwlock.ReadHandle./ReadHandle x)
    (height_lt (height (vstd.rwlock.ReadHandle./ReadHandle/handle x)) (height (Poly%vstd.rwlock.ReadHandle.
       x
   ))))
   :pattern ((height (vstd.rwlock.ReadHandle./ReadHandle/handle x)))
   :qid prelude_datatype_height_vstd.rwlock.ReadHandle./ReadHandle/handle
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.ReadHandle./ReadHandle/handle
)))
(assert
 (forall ((x vstd.rwlock.ReadHandle.)) (!
   (=>
    (is-vstd.rwlock.ReadHandle./ReadHandle x)
    (height_lt (height (Poly%vstd.rwlock.RwLock. (vstd.rwlock.ReadHandle./ReadHandle/rwlock
        x
      ))
     ) (height (Poly%vstd.rwlock.ReadHandle. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLock. (vstd.rwlock.ReadHandle./ReadHandle/rwlock
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.ReadHandle./ReadHandle/rwlock
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.ReadHandle./ReadHandle/rwlock
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
(assert
 (forall ((x tuple%3.)) (!
   (= x (%Poly%tuple%3. (Poly%tuple%3. x)))
   :pattern ((Poly%tuple%3. x))
   :qid internal_crate__tuple__3_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%tuple%3. (%Poly%tuple%3. x)))
   )
   :pattern ((has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__tuple__3_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (_0!
    Poly
   ) (_1! Poly) (_2! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
    )
    (has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :pattern ((has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3_constructor_definition
   :skolemid skolem_internal_tuple__3./tuple__3_constructor_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/0 x) (tuple%3./tuple%3/?0 x))
   :pattern ((tuple%3./tuple%3/0 x))
   :qid internal_tuple__3./tuple__3/0_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) T%0&)
   )
   :pattern ((tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/0_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/1 x) (tuple%3./tuple%3/?1 x))
   :pattern ((tuple%3./tuple%3/1 x))
   :qid internal_tuple__3./tuple__3/1_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) T%1&)
   )
   :pattern ((tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/1_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/2 x) (tuple%3./tuple%3/?2 x))
   :pattern ((tuple%3./tuple%3/2 x))
   :qid internal_tuple__3./tuple__3/2_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) T%2&)
   )
   :pattern ((tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/2_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/0 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/0 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/0
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/0
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/1 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/1 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/1
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/1
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/2 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/2 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/2
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/2
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (ext_eq deep T%0& (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (tuple%3./tuple%3/0 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%1& (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (tuple%3./tuple%3/1 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%2& (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (tuple%3./tuple%3/2 (%Poly%tuple%3.
        y
    ))))
    (ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_tuple__3./tuple__3_ext_equal_definition
   :skolemid skolem_internal_tuple__3./tuple__3_ext_equal_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= x (%Poly%tuple%7. (Poly%tuple%7. x)))
   :pattern ((Poly%tuple%7. x))
   :qid internal_crate__tuple__7_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__7_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (= x (Poly%tuple%7. (%Poly%tuple%7. x)))
   )
   :pattern ((has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_crate__tuple__7_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__7_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (_0! Poly) (_1! Poly) (_2! Poly) (_3! Poly) (_4! Poly) (_5! Poly) (_6! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
     (has_type _3! T%3&)
     (has_type _4! T%4&)
     (has_type _5! T%5&)
     (has_type _6! T%6&)
    )
    (has_type (Poly%tuple%7. (tuple%7./tuple%7 _0! _1! _2! _3! _4! _5! _6!)) (TYPE%tuple%7.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :pattern ((has_type (Poly%tuple%7. (tuple%7./tuple%7 _0! _1! _2! _3! _4! _5! _6!))
     (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&.
      T%6&
   )))
   :qid internal_tuple__7./tuple__7_constructor_definition
   :skolemid skolem_internal_tuple__7./tuple__7_constructor_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/0 x) (tuple%7./tuple%7/?0 x))
   :pattern ((tuple%7./tuple%7/0 x))
   :qid internal_tuple__7./tuple__7/0_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/0 (%Poly%tuple%7. x)) T%0&)
   )
   :pattern ((tuple%7./tuple%7/0 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/0_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/0_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/1 x) (tuple%7./tuple%7/?1 x))
   :pattern ((tuple%7./tuple%7/1 x))
   :qid internal_tuple__7./tuple__7/1_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/1 (%Poly%tuple%7. x)) T%1&)
   )
   :pattern ((tuple%7./tuple%7/1 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/1_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/1_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/2 x) (tuple%7./tuple%7/?2 x))
   :pattern ((tuple%7./tuple%7/2 x))
   :qid internal_tuple__7./tuple__7/2_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/2 (%Poly%tuple%7. x)) T%2&)
   )
   :pattern ((tuple%7./tuple%7/2 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/2_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/2_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/3 x) (tuple%7./tuple%7/?3 x))
   :pattern ((tuple%7./tuple%7/3 x))
   :qid internal_tuple__7./tuple__7/3_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/3_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/3 (%Poly%tuple%7. x)) T%3&)
   )
   :pattern ((tuple%7./tuple%7/3 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/3_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/3_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/4 x) (tuple%7./tuple%7/?4 x))
   :pattern ((tuple%7./tuple%7/4 x))
   :qid internal_tuple__7./tuple__7/4_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/4_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/4 (%Poly%tuple%7. x)) T%4&)
   )
   :pattern ((tuple%7./tuple%7/4 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/4_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/4_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/5 x) (tuple%7./tuple%7/?5 x))
   :pattern ((tuple%7./tuple%7/5 x))
   :qid internal_tuple__7./tuple__7/5_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/5_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/5 (%Poly%tuple%7. x)) T%5&)
   )
   :pattern ((tuple%7./tuple%7/5 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/5_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/5_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/6 x) (tuple%7./tuple%7/?6 x))
   :pattern ((tuple%7./tuple%7/6 x))
   :qid internal_tuple__7./tuple__7/6_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/6_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/6 (%Poly%tuple%7. x)) T%6&)
   )
   :pattern ((tuple%7./tuple%7/6 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/6_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/6_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/0 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/0 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/0
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/0
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/1 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/1 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/1
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/1
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/2 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/2 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/2
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/2
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/3 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/3 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/3
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/3
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/4 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/4 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/4
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/4
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/5 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/5 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/5
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/5
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/6 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/6 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/6
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/6
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
       T%5& T%6&. T%6&
     ))
     (has_type y (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
       T%5& T%6&. T%6&
     ))
     (ext_eq deep T%0& (tuple%7./tuple%7/0 (%Poly%tuple%7. x)) (tuple%7./tuple%7/0 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%1& (tuple%7./tuple%7/1 (%Poly%tuple%7. x)) (tuple%7./tuple%7/1 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%2& (tuple%7./tuple%7/2 (%Poly%tuple%7. x)) (tuple%7./tuple%7/2 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%3& (tuple%7./tuple%7/3 (%Poly%tuple%7. x)) (tuple%7./tuple%7/3 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%4& (tuple%7./tuple%7/4 (%Poly%tuple%7. x)) (tuple%7./tuple%7/4 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%5& (tuple%7./tuple%7/5 (%Poly%tuple%7. x)) (tuple%7./tuple%7/5 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%6& (tuple%7./tuple%7/6 (%Poly%tuple%7. x)) (tuple%7./tuple%7/6 (%Poly%tuple%7.
        y
    ))))
    (ext_eq deep (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
      T%5&. T%5& T%6&. T%6&
     ) x y
   ))
   :pattern ((ext_eq deep (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4& T%5&. T%5& T%6&. T%6&
     ) x y
   ))
   :qid internal_tuple__7./tuple__7_ext_equal_definition
   :skolemid skolem_internal_tuple__7./tuple__7_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. (Dcr Type Dcr Type
  Dcr Type Dcr Type
 ) Bool
)
(declare-fun tr_bound%vstd.invariant.InvariantPredicate. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.rwlock.RwLockPredicate. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. (Dcr Type Dcr
  Type Dcr Type
 ) Bool
)
(declare-fun tr_bound%vstd.tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.ElementToken. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (G&. Dcr)
   (G& Type)
  ) (!
   true
   :pattern ((tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Self%&. Self%& K&.
     K& V&. V& G&. G&
   ))
   :qid internal_crate__vstd__atomic_ghost__AtomicInvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicInvariantPredicate_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. Self%&. Self%& K&. K& V&. V&))
   :qid internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.rwlock.RwLockPredicate. Self%&. Self%& V&. V&))
   :qid internal_crate__vstd__rwlock__RwLockPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockPredicate_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. Self%&. Self%& T&.
     T& E&. E&
   ))
   :qid internal_crate__vstd__std_specs__result__ResultAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__result__ResultAdditionalSpecFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.ValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_crate__vstd__tokens__ValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__ValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.ElementToken. Self%&. Self%& Element&. Element&))
   :qid internal_crate__vstd__tokens__ElementToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__ElementToken_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::tokens::ValueToken::instance_id
(declare-fun vstd.tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::ValueToken::value
(declare-fun vstd.tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

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

;; Function-Decl crate::vstd::std_specs::option::OptionAdditionalFns::is_None
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_None.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_None%default%.? (Dcr Type
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

;; Function-Decl crate::vstd::std_specs::result::ResultAdditionalSpecFns::is_Ok
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok%default%.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Instance::id
(declare-fun vstd.rwlock.RwLockToks.impl&%20.id.? (Dcr Type Dcr Type Dcr Type Poly)
 vstd.tokens.InstanceId.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Instance::k
(declare-fun vstd.rwlock.RwLockToks.impl&%20.k.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Instance::pred
(declare-fun vstd.rwlock.RwLockToks.impl&%20.pred.? (Dcr Type Dcr Type Dcr Type Poly)
 core!marker.PhantomData.
)

;; Function-Decl crate::vstd::atomic::PermissionBool::view
(declare-fun vstd.atomic.impl&%0.view.? (Poly) vstd.atomic.PermissionDataBool.)

;; Function-Decl crate::vstd::atomic::PAtomicBool::id
(declare-fun vstd.atomic.impl&%1.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU64::view
(declare-fun vstd.atomic.impl&%8.view.? (Poly) vstd.atomic.PermissionDataU64.)

;; Function-Decl crate::vstd::atomic::PAtomicU64::id
(declare-fun vstd.atomic.impl&%9.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic_ghost::AtomicInvariantPredicate::atomic_inv
(declare-fun vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? (Dcr Type Dcr
  Type Dcr Type Dcr Type Poly Poly Poly
 ) Poly
)
(declare-fun vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv%default%.? (Dcr
  Type Dcr Type Dcr Type Dcr Type Poly Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::cell::PointsTo::view
(declare-fun vstd.cell.impl&%2.view.? (Dcr Type Poly) vstd.cell.PointsToData.)

;; Function-Decl crate::vstd::cell::PCell::id
(declare-fun vstd.cell.impl&%3.id.? (Dcr Type Poly) vstd.cell.CellId.)

;; Function-Decl crate::vstd::invariant::AtomicInvariant::constant
(declare-fun vstd.invariant.impl&%0.constant.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::invariant::AtomicInvariant::namespace
(declare-fun vstd!invariant.AtomicInvariant.namespace.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)

;; Function-Decl vstd::invariant::AtomicInvariant::inv
(declare-fun vstd!invariant.AtomicInvariant.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockPredicate::inv
(declare-fun vstd.rwlock.RwLockPredicate.inv.? (Dcr Type Dcr Type Poly Poly) Poly)
(declare-fun vstd.rwlock.RwLockPredicate.inv%default%.? (Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU64::well_formed
(declare-fun vstd.atomic_ghost.impl&%1.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU64::constant
(declare-fun vstd.atomic_ghost.impl&%1.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicBool::well_formed
(declare-fun vstd.atomic_ghost.impl&%21.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicBool::constant
(declare-fun vstd.atomic_ghost.impl&%21.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::rwlock::RwLock::wf
(declare-fun vstd.rwlock.impl&%4.wf.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::rwlock::WriteHandle::wf_write_handle
(declare-fun vstd.rwlock.impl&%5.wf_write_handle.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::rwlock::WriteHandle::rwlock
(declare-fun vstd.rwlock.impl&%5.rwlock.? (Dcr Type Dcr Type Poly) vstd.rwlock.RwLock.)

;; Function-Decl crate::vstd::rwlock::ReadHandle::wf_read_handle
(declare-fun vstd.rwlock.impl&%6.wf_read_handle.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::rwlock::ReadHandle::view
(declare-fun vstd.rwlock.impl&%6.view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::rwlock::ReadHandle::rwlock
(declare-fun vstd.rwlock.impl&%6.rwlock.? (Dcr Type Dcr Type Poly) vstd.rwlock.RwLock.)

;; Function-Decl crate::vstd::rwlock::RwLock::pred
(declare-fun vstd.rwlock.impl&%7.pred.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::rwlock::RwLock::inv
(declare-fun vstd.rwlock.impl&%7.inv.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::tokens::MultisetToken::instance_id
(declare-fun vstd.tokens.impl&%2.instance_id.? (Dcr Type Dcr Type Poly) vstd.tokens.InstanceId.)

;; Function-Decl crate::vstd::tokens::MultisetToken::multiset
(declare-fun vstd.tokens.impl&%2.multiset.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::option_value_eq_option_token
(declare-fun vstd.tokens.option_value_eq_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

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

;; Function-Axioms crate::vstd::std_specs::option::OptionAdditionalFns::is_None
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.option.OptionAdditionalFns.is_None.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_None.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_pre_post_definition
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

;; Function-Axioms core::option::Option::is_None
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.impl&%0.is_None.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.impl&%0.is_None.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.std_specs.option.OptionAdditionalFns.is_None.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./None (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_None.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_definition
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

;; Function-Axioms crate::vstd::std_specs::result::ResultAdditionalSpecFns::is_Ok
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self!
    Poly
   )
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? Self%&. Self%& T&.
      T& E&. E& self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? Self%&. Self%& T&.
     T& E&. E& self!
   ))
   :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_pre_post_definition
)))

;; Function-Axioms core::result::Result::is_Ok
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.impl&%0.is_Ok.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.impl&%0.is_Ok.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self! Poly)) (!
    (= (vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
     ) (B (is-core!result.Result./Ok (%Poly%core!result.Result. self!)))
    )
    :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
    ))
    :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Instance::k
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%20.k.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.rwlock.RwLockToks.impl&%20.k.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.RwLockToks.impl&__20.k.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__20.k.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::load
(declare-fun req%vstd.atomic.impl&%1.load. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.)) (!
   (= (req%vstd.atomic.impl&%1.load. self! perm!) (=>
     %%global_location_label%%1
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__1.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.load. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.) (ret!
    Bool
   )
  ) (!
   (= (ens%vstd.atomic.impl&%1.load. self! perm! ret!) (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value
      (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
         (Poly%vstd.atomic.PermissionBool. perm!)
      )))
     ) ret!
   ))
   :pattern ((ens%vstd.atomic.impl&%1.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::store
(declare-fun req%vstd.atomic.impl&%1.store. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    v! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.store. self! pre%perm! v!) (=>
     %%global_location_label%%2
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__1.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.store. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (v! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
        (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%1.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__1.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::compare_exchange
(declare-fun req%vstd.atomic.impl&%1.compare_exchange. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    current! Bool
   ) (new! Bool)
  ) (!
   (= (req%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%3
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__1.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.compare_exchange. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (current! Bool) (new! Bool) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ BOOL $ BOOL))
     (and
      (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
        (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
           (Poly%vstd.atomic.PermissionBool. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%B (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
       ))))))))
       (let
        ((r$ (%B (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
              (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__1.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.compare_exchange._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU64::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU64.)
    (has_type (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? self!))
     TYPE%vstd.atomic.PermissionDataU64.
   ))
   :pattern ((vstd.atomic.impl&%8.view.? self!))
   :qid internal_vstd.atomic.impl&__8.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__8.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::load
(declare-fun req%vstd.atomic.impl&%9.load. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.)) (!
   (= (req%vstd.atomic.impl&%9.load. self! perm!) (=>
     %%global_location_label%%4
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__9.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.load. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%9.load. self! perm! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%9.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::compare_exchange
(declare-fun req%vstd.atomic.impl&%9.compare_exchange. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%5
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__9.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.compare_exchange. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 64) $ (
        UINT 64
     )))
     (and
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
              (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__9.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.compare_exchange._definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicInvariantPredicate::atomic_inv
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (G&. Dcr)
   (G& Type) (k! Poly) (v! Poly) (g! Poly)
  ) (!
   (=>
    (and
     (has_type k! K&)
     (has_type v! V&)
     (has_type g! G&)
    )
    (has_type (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Self%&. Self%& K&.
      K& V&. V& G&. G& k! v! g!
     ) BOOL
   ))
   :pattern ((vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Self%&. Self%& K&.
     K& V&. V& G&. G& k! v! g!
   ))
   :qid internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_pre_post_definition
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
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (v! Poly)) (!
   (= (req%vstd.cell.impl&%3.put. V&. V& self! pre%perm! v!) (=>
     %%global_location_label%%6
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
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly)) (!
   (= (req%vstd.cell.impl&%3.take. V&. V& self! pre%perm!) (and
     (=>
      %%global_location_label%%7
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& pre%perm!
     ))))))
     (=>
      %%global_location_label%%8
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

;; Function-Specs crate::vstd::cell::PCell::borrow
(declare-fun req%vstd.cell.impl&%3.borrow. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.cell.impl&%3.borrow. V&. V& self! perm!) (and
     (=>
      %%global_location_label%%9
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& perm!
     ))))))
     (=>
      %%global_location_label%%10
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

;; Function-Axioms crate::vstd::invariant::AtomicInvariant::constant
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.invariant.AtomicInvariant. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.invariant.impl&__0.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.impl&__0.constant.?_pre_post_definition
)))

;; Function-Axioms vstd::invariant::AtomicInvariant::inv
(assert
 (fuel_bool_default fuel%vstd!invariant.AtomicInvariant.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!invariant.AtomicInvariant.inv.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
    (v! Poly)
   ) (!
    (= (vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!) (%B (
       vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.invariant.impl&%0.constant.?
        K&. K& V&. V& Pred&. Pred& self!
       ) v!
    )))
    :pattern ((vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!))
    :qid internal_vstd!invariant.AtomicInvariant.inv.?_definition
    :skolemid skolem_internal_vstd!invariant.AtomicInvariant.inv.?_definition
))))

;; Function-Specs crate::vstd::pervasive::proof_from_false
(declare-fun req%vstd.pervasive.proof_from_false. (Dcr Type) Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (req%vstd.pervasive.proof_from_false. A&. A&) (=>
     %%global_location_label%%11
     false
   ))
   :pattern ((req%vstd.pervasive.proof_from_false. A&. A&))
   :qid internal_req__vstd.pervasive.proof_from_false._definition
   :skolemid skolem_internal_req__vstd.pervasive.proof_from_false._definition
)))
(declare-fun ens%vstd.pervasive.proof_from_false. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (%return! Poly)) (!
   (= (ens%vstd.pervasive.proof_from_false. A&. A& %return!) (has_type %return! A&))
   :pattern ((ens%vstd.pervasive.proof_from_false. A&. A& %return!))
   :qid internal_ens__vstd.pervasive.proof_from_false._definition
   :skolemid skolem_internal_ens__vstd.pervasive.proof_from_false._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockPredicate::inv
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type v! V&)
    )
    (has_type (vstd.rwlock.RwLockPredicate.inv.? Self%&. Self%& V&. V& self! v!) BOOL)
   )
   :pattern ((vstd.rwlock.RwLockPredicate.inv.? Self%&. Self%& V&. V& self! v!))
   :qid internal_vstd.rwlock.RwLockPredicate.inv.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockPredicate.inv.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredU64::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%0.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%0.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
               (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (UINT 64) G&. G& k$ (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                 (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__0_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU64::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%1.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%1.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (%I
       (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
            self!
       )))))
      ) (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic
         (%Poly%vstd.atomic_ghost.AtomicU64. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__1.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__1.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU64::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%1.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%1.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__1.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__1.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__1.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__1.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredBool::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%20.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%20.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
      G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
               (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              BOOL G&. G& k$ (B (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
                 (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
     G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__20_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__20_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicBool::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%21.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%21.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
            self!
       )))))
      ) (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic
         (%Poly%vstd.atomic_ghost.AtomicBool. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__21.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__21.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicBool::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%21.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%21.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__21.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__21.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__21.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__21.constant.?_pre_post_definition
)))

;; Function-Axioms crate::builtin::FnSpec::inv
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%0.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%0.inv.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.rwlock.RwLockPredicate.inv.? $ (TYPE%fun%1. V&. V& $ BOOL) V&. V& self! v!)
     (%%apply%%0 (%Poly%fun%1. self!) v!)
    )
    :pattern ((vstd.rwlock.RwLockPredicate.inv.? $ (TYPE%fun%1. V&. V& $ BOOL) V&. V& self!
      v!
    ))
    :qid internal_vstd.rwlock.RwLockPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockPredicate.inv.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::InternalPred::inv
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%1.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%1.inv.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly) (v! Poly)) (!
    (=>
     (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.rwlock.InternalPred. V&. V&
        Pred&. Pred&
       ) $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
        V&. V&
       ) k! v!
      ) (B (and
        (and
         (= (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
             (vstd.cell.impl&%2.view.? V&. V& v!)
           ))
          ) (%Poly%vstd.cell.CellId. (tuple%2./tuple%2/1 (%Poly%tuple%2. k!)))
         )
         (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
            (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& v!))
        ))))
        (%B (vstd.rwlock.RwLockPredicate.inv.? Pred&. Pred& V&. V& (tuple%2./tuple%2/0 (%Poly%tuple%2.
            k!
           )
          ) (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (
              vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
                (vstd.cell.impl&%2.view.? V&. V& v!)
    ))))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.rwlock.InternalPred.
       V&. V& Pred&. Pred&
      ) $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
       V&. V&
      ) k! v!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.rwlock.InternalPred. V&.
      V& Pred&. Pred&
     ) $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
      V&. V&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.rwlock.InternalPred.
      V&. V& Pred&. Pred&
     ) $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
      V&. V&
   )))
   :qid internal_crate__vstd__rwlock__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__impl&__1_trait_impl_definition
)))

;; Function-Axioms crate::vstd::rwlock::InvariantPredicate_auto_RwLock_exc::atomic_inv
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%2.atomic_inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%2.atomic_inv.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (declare_struct_with_invariants_tmp_k!
     Poly
    ) (declare_struct_with_invariants_tmp_v! Poly) (declare_struct_with_invariants_tmp_g!
     Poly
    )
   ) (!
    (=>
     (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
     (= (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
       (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
         TYPE%vstd.cell.CellId.
        ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) $ BOOL $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
        $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) declare_struct_with_invariants_tmp_k! declare_struct_with_invariants_tmp_v! declare_struct_with_invariants_tmp_g!
      ) (B (let
        ((inst$ declare_struct_with_invariants_tmp_k!))
        (let
         ((v$ (%B declare_struct_with_invariants_tmp_v!)))
         (let
          ((g$ declare_struct_with_invariants_tmp_g!))
          (and
           (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
               $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                V&. V&
               ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
              ) $ BOOL g$
             )
            ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
             $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
              Pred&
             ) inst$
           ))
           (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2.
                Pred&. Pred& $ TYPE%vstd.cell.CellId.
               ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                Pred&
               )
              ) $ BOOL g$
             )
            ) v$
    ))))))))
    :pattern ((vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
      (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
        TYPE%vstd.cell.CellId.
       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       )
      ) $ BOOL $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
       $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       )
      ) declare_struct_with_invariants_tmp_k! declare_struct_with_invariants_tmp_v! declare_struct_with_invariants_tmp_g!
    ))
    :qid internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::InvariantPredicate_auto_RwLock_rc::atomic_inv
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%3.atomic_inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%3.atomic_inv.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (declare_struct_with_invariants_tmp_k!
     Poly
    ) (declare_struct_with_invariants_tmp_v! Poly) (declare_struct_with_invariants_tmp_g!
     Poly
    )
   ) (!
    (=>
     (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
     (= (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
       (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
         TYPE%vstd.cell.CellId.
        ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) $ (UINT 64) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred&
         $ TYPE%vstd.cell.CellId.
        ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        )
       ) declare_struct_with_invariants_tmp_k! declare_struct_with_invariants_tmp_v! declare_struct_with_invariants_tmp_g!
      ) (B (let
        ((inst$ declare_struct_with_invariants_tmp_k!))
        (let
         ((v$ (%I declare_struct_with_invariants_tmp_v!)))
         (let
          ((g$ declare_struct_with_invariants_tmp_g!))
          (and
           (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
               $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                V&. V&
               ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
              ) $ NAT g$
             )
            ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
             $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
              Pred&
             ) inst$
           ))
           (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2.
                Pred&. Pred& $ TYPE%vstd.cell.CellId.
               ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                Pred&
               )
              ) $ NAT g$
             )
            ) v$
    ))))))))
    :pattern ((vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
      (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
        TYPE%vstd.cell.CellId.
       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       )
      ) $ (UINT 64) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred&
        $ TYPE%vstd.cell.CellId.
       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       )
      ) declare_struct_with_invariants_tmp_k! declare_struct_with_invariants_tmp_v! declare_struct_with_invariants_tmp_g!
    ))
    :qid internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
     (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
       TYPE%vstd.cell.CellId.
      ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
      )
     ) $ BOOL $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
   ))))
   :pattern ((tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.
     (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
       TYPE%vstd.cell.CellId.
      ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
      )
     ) $ BOOL $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
   ))))
   :qid internal_crate__vstd__rwlock__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
     (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
       TYPE%vstd.cell.CellId.
      ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
      )
     ) $ (UINT 64) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred&
       $ TYPE%vstd.cell.CellId.
      ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
   ))))
   :pattern ((tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.
     (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance. $ (TYPE%tuple%2. Pred&. Pred& $
       TYPE%vstd.cell.CellId.
      ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
      )
     ) $ (UINT 64) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred&
       $ TYPE%vstd.cell.CellId.
      ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
       Pred&
   ))))
   :qid internal_crate__vstd__rwlock__impl&__3_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__impl&__3_trait_impl_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLock::wf
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%4.wf.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%4.wf.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& self!) (and
      (and
       (and
        (and
         (vstd.atomic_ghost.impl&%21.well_formed.? (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
           $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
            V&. V&
           ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
          ) $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
           $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
            Pred&
           )
          ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. (Poly%vstd.atomic_ghost.AtomicBool.
           (vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock. self!))
         ))
         (= (vstd.atomic_ghost.impl&%21.constant.? (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
             V&. V&
            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
           ) $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
            $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
             Pred&
            )
           ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. (Poly%vstd.atomic_ghost.AtomicBool.
            (vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock. self!))
           )
          ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. self!))
        ))
        (vstd.atomic_ghost.impl&%1.well_formed.? (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
           V&. V&
          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
         ) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
          $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
           Pred&
          )
         ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. (Poly%vstd.atomic_ghost.AtomicU64.
          (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. self!))
       )))
       (= (vstd.atomic_ghost.impl&%1.constant.? (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
           V&. V&
          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
         ) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
          $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
           Pred&
          )
         ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. (Poly%vstd.atomic_ghost.AtomicU64.
          (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. self!))
         )
        ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. self!))
      ))
      (= (%Poly%tuple%2. (vstd.rwlock.RwLockToks.impl&%20.k.? $ (TYPE%tuple%2. Pred&. Pred&
          $ TYPE%vstd.cell.CellId.
         ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
          Pred&
         ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. self!))
        )
       ) (tuple%2./tuple%2 (vstd.rwlock.RwLock./RwLock/pred (%Poly%vstd.rwlock.RwLock. self!))
        (Poly%vstd.cell.CellId. (vstd.cell.impl&%3.id.? V&. V& (vstd.rwlock.RwLock./RwLock/cell
           (%Poly%vstd.rwlock.RwLock. self!)
    )))))))
    :pattern ((vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__4.wf.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__4.wf.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::WriteHandle::wf_write_handle
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%5.wf_write_handle.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%5.wf_write_handle.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%5.wf_write_handle.? V&. V& Pred&. Pred& self!) (and
      (and
       (and
        (= (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
            (vstd.cell.impl&%2.view.? V&. V& (vstd.rwlock.WriteHandle./WriteHandle/perm (%Poly%vstd.rwlock.WriteHandle.
               self!
          )))))
         ) (vstd.cell.impl&%3.id.? V&. V& (vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock.
            (Poly%vstd.rwlock.RwLock. (vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle.
               self!
        )))))))
        (is-core!option.Option./None (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
           (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& (vstd.rwlock.WriteHandle./WriteHandle/perm
              (%Poly%vstd.rwlock.WriteHandle. self!)
       )))))))
       (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
           $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
            V&. V&
           ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
          ) $ TYPE%tuple%0. (vstd.rwlock.WriteHandle./WriteHandle/handle (%Poly%vstd.rwlock.WriteHandle.
            self!
         )))
        ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
         $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
          Pred&
         ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
            (vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle. self!))
      ))))))
      (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. (vstd.rwlock.WriteHandle./WriteHandle/rwlock
         (%Poly%vstd.rwlock.WriteHandle. self!)
    )))))
    :pattern ((vstd.rwlock.impl&%5.wf_write_handle.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__5.wf_write_handle.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__5.wf_write_handle.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::WriteHandle::rwlock
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%5.rwlock.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%5.rwlock.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%5.rwlock.? V&. V& Pred&. Pred& self!) (vstd.rwlock.WriteHandle./WriteHandle/rwlock
      (%Poly%vstd.rwlock.WriteHandle. self!)
    ))
    :pattern ((vstd.rwlock.impl&%5.rwlock.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__5.rwlock.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__5.rwlock.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.WriteHandle. V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLock. (vstd.rwlock.impl&%5.rwlock.? V&. V& Pred&. Pred&
       self!
      )
     ) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.impl&%5.rwlock.? V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.impl&__5.rwlock.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.impl&__5.rwlock.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::ReadHandle::wf_read_handle
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%6.wf_read_handle.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%6.wf_read_handle.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& self!) (and
      (and
       (and
        (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
             V&. V&
            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
           ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
             %Poly%vstd.rwlock.ReadHandle. self!
          )))
         ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
          $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
           Pred&
          ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
             (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle. self!))
        )))))
        (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
           (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& (vstd.tokens.ElementToken.element.?
              $ (TYPE%vstd.rwlock.RwLockToks.reader. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
               $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                Pred&
               )
              ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
                %Poly%vstd.rwlock.ReadHandle. self!
       )))))))))
       (= (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
           (vstd.cell.impl&%2.view.? V&. V& (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
              $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
               V&. V&
              ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
               %Poly%vstd.rwlock.ReadHandle. self!
         ))))))
        ) (vstd.cell.impl&%3.id.? V&. V& (vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock.
           (Poly%vstd.rwlock.RwLock. (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle.
              self!
      ))))))))
      (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. (vstd.rwlock.ReadHandle./ReadHandle/rwlock
         (%Poly%vstd.rwlock.ReadHandle. self!)
    )))))
    :pattern ((vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__6.wf_read_handle.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__6.wf_read_handle.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::ReadHandle::view
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%6.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%6.view.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& self!) (core!option.Option./Some/0
      (%Poly%core!option.Option. (Poly%core!option.Option. (vstd.cell.PointsToData./PointsToData/value
         (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
            V&. V& (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. $
              (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
               V&. V&
              ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
               %Poly%vstd.rwlock.ReadHandle. self!
    )))))))))))
    :pattern ((vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__6.view.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__6.view.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& self!) V&)
   )
   :pattern ((vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.impl&__6.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.impl&__6.view.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::ReadHandle::rwlock
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%6.rwlock.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%6.rwlock.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& self!) (vstd.rwlock.ReadHandle./ReadHandle/rwlock
      (%Poly%vstd.rwlock.ReadHandle. self!)
    ))
    :pattern ((vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__6.rwlock.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__6.rwlock.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.ReadHandle. V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLock. (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred&
       self!
      )
     ) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.impl&__6.rwlock.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.impl&__6.rwlock.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLock::pred
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%7.pred.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%7.pred.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
    (= (vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& self!) (vstd.rwlock.RwLock./RwLock/pred
      (%Poly%vstd.rwlock.RwLock. self!)
    ))
    :pattern ((vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.impl&__7.pred.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__7.pred.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& self!) Pred&)
   )
   :pattern ((vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.impl&__7.pred.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.impl&__7.pred.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLock::inv
(assert
 (fuel_bool_default fuel%vstd.rwlock.impl&%7.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.impl&%7.inv.)
  (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly) (val! Poly)) (
    !
    (= (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& self! val!) (%B (vstd.rwlock.RwLockPredicate.inv.?
       Pred&. Pred& V&. V& (vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& self!) val!
    )))
    :pattern ((vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& self! val!))
    :qid internal_vstd.rwlock.impl&__7.inv.?_definition
    :skolemid skolem_internal_vstd.rwlock.impl&__7.inv.?_definition
))))

;; Function-Axioms crate::vstd::tokens::MultisetToken::multiset
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

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&.
      V& Pred&. Pred&
     ) $ BOOL
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
      K&. K& V&. V& Pred&. Pred&
     ) $ BOOL
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__5_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&.
      V& Pred&. Pred&
     ) $ NAT
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
      K&. K& V&. V& Pred&. Pred&
     ) $ NAT
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__8_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__8_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&.
      K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__11_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&.
      V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&.
      K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__14_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__14_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__17_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__17_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&.
      V& Pred&. Pred&
     ) V&. V&
   ))
   :pattern ((tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.reader.
      K&. K& V&. V& Pred&. Pred&
     ) V&. V&
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__19_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__19_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (tr_bound%vstd.rwlock.RwLockPredicate. $ (TYPE%fun%1. V&. V& $ BOOL) V&. V&)
   :pattern ((tr_bound%vstd.rwlock.RwLockPredicate. $ (TYPE%fun%1. V&. V& $ BOOL) V&.
     V&
   ))
   :qid internal_crate__vstd__rwlock__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__impl&__0_trait_impl_definition
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

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type)) (!
   (tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. $ (TYPE%core!result.Result.
     T&. T& E&. E&
    ) T&. T& E&. E&
   )
   :pattern ((tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. $ (TYPE%core!result.Result.
      T&. T& E&. E&
     ) T&. T& E&. E&
   ))
   :qid internal_crate__vstd__std_specs__result__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__result__impl&__0_trait_impl_definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::initialize_full
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. (Dcr Type Dcr Type
  Dcr Type Poly Poly core!option.Option.
 ) Bool
)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (t! Poly) (param_token_storage! core!option.Option.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&. Pred&
     k! t! param_token_storage!
    ) (and
     (=>
      %%global_location_label%%12
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! t!))
     )
     (=>
      %%global_location_label%%13
      (= param_token_storage! (core!option.Option./Some t!))
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&.
     Pred& k! t! param_token_storage!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. (Dcr Type Dcr Type
  Dcr Type Poly Poly core!option.Option. tuple%7.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (t! Poly) (param_token_storage! core!option.Option.) (tmp_tuple! tuple%7.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&. Pred&
     k! t! param_token_storage! tmp_tuple!
    ) (and
     (has_type (Poly%tuple%7. tmp_tuple!) (TYPE%tuple%7. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
        K&. K& V&. V& Pred&. Pred&
       ) (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&)
       (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&) (TRACKED
        $
       ) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&.
         V& Pred&. Pred&
        )
       ) (TRACKED $) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&.
         K& V&. V& Pred&. Pred&
        )
       ) (TRACKED $) (TYPE%vstd.tokens.MultisetToken. $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
         K&. K& V&. V& Pred&. Pred&
        )
       ) (TRACKED $) (TYPE%vstd.tokens.MultisetToken. V&. V& $ (TYPE%vstd.rwlock.RwLockToks.reader.
         K&. K& V&. V& Pred&. Pred&
     ))))
     (let
      ((instance$ (tuple%7./tuple%7/0 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
      (let
       ((param_token_flag_exc$ (tuple%7./tuple%7/1 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
       (let
        ((param_token_flag_rc$ (tuple%7./tuple%7/2 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
        (let
         ((param_token_pending_writer$ (%Poly%core!option.Option. (tuple%7./tuple%7/3 (%Poly%tuple%7.
              (Poly%tuple%7. tmp_tuple!)
         )))))
         (let
          ((param_token_writer$ (%Poly%core!option.Option. (tuple%7./tuple%7/4 (%Poly%tuple%7. (
                Poly%tuple%7. tmp_tuple!
          ))))))
          (let
           ((param_token_pending_reader$ (tuple%7./tuple%7/5 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
           (let
            ((param_token_reader$ (tuple%7./tuple%7/6 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
            (let
             ((instance$1 instance$))
             (let
              ((param_token_flag_exc$1 param_token_flag_exc$))
              (let
               ((param_token_flag_rc$1 param_token_flag_rc$))
               (let
                ((param_token_pending_writer$1 param_token_pending_writer$))
                (let
                 ((param_token_writer$1 param_token_writer$))
                 (let
                  ((param_token_pending_reader$1 param_token_pending_reader$))
                  (let
                   ((param_token_reader$1 param_token_reader$))
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and
                          (and
                           (and
                            (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                                K&. K& V&. V& Pred&. Pred&
                               ) $ BOOL param_token_flag_exc$1
                              )
                             ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& instance$1)
                            )
                            (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                K&. K& V&. V& Pred&. Pred&
                               ) $ NAT param_token_flag_rc$1
                              )
                             ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& instance$1)
                           ))
                           (= (vstd.rwlock.RwLockToks.impl&%20.k.? K&. K& V&. V& Pred&. Pred& instance$1) k!)
                          )
                          (= (vstd.rwlock.RwLockToks.impl&%20.pred.? K&. K& V&. V& Pred&. Pred& instance$1)
                           core!marker.PhantomData./PhantomData
                         ))
                         (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
                             V&. V& Pred&. Pred&
                            ) $ BOOL param_token_flag_exc$1
                           )
                          ) false
                        ))
                        (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
                            V&. V& Pred&. Pred&
                           ) $ NAT param_token_flag_rc$1
                          )
                         ) 0
                       ))
                       (vstd.tokens.option_value_eq_option_token.? $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                         K&. K& V&. V& Pred&. Pred&
                        ) (Poly%core!option.Option. core!option.Option./None) (Poly%core!option.Option. param_token_pending_writer$1)
                        (Poly%vstd.tokens.InstanceId. (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&.
                          Pred& instance$1
                      ))))
                      (vstd.tokens.option_value_eq_option_token.? $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.writer.
                        K&. K& V&. V& Pred&. Pred&
                       ) (Poly%core!option.Option. core!option.Option./None) (Poly%core!option.Option. param_token_writer$1)
                       (Poly%vstd.tokens.InstanceId. (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&.
                         Pred& instance$1
                     ))))
                     (and
                      (= (vstd.multiset.impl&%0.empty.? $ TYPE%tuple%0.) (vstd.tokens.impl&%2.multiset.?
                        $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&.
                         Pred&
                        ) param_token_pending_reader$1
                      ))
                      (= (vstd.tokens.impl&%2.instance_id.? $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
                         K&. K& V&. V& Pred&. Pred&
                        ) param_token_pending_reader$1
                       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& instance$1)
                    )))
                    (and
                     (= (vstd.multiset.impl&%0.empty.? V&. V&) (vstd.tokens.impl&%2.multiset.? V&. V& $
                       (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&) param_token_reader$1
                     ))
                     (= (vstd.tokens.impl&%2.instance_id.? V&. V& $ (TYPE%vstd.rwlock.RwLockToks.reader.
                        K&. K& V&. V& Pred&. Pred&
                       ) param_token_reader$1
                      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& instance$1)
   )))))))))))))))))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&.
     Pred& k! t! param_token_storage! tmp_tuple!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_read_start
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (pre%param_token_flag_rc! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_rc!
    ) (=>
     %%global_location_label%%14
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT pre%param_token_flag_rc!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (pre%param_token_flag_rc! Poly) (param_token_flag_rc! Poly) (param_token_0_pending_reader!
    Poly
   )
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
    ) (and
     (has_type param_token_0_pending_reader! (TYPE%vstd.rwlock.RwLockToks.pending_reader.
       K&. K& V&. V& Pred&. Pred&
     ))
     (has_type param_token_flag_rc! (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V&
       Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT param_token_flag_rc!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. param_token_0_pending_reader!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (= (%Poly%tuple%0. (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. param_token_0_pending_reader!
       )
      ) tuple%0./tuple%0
     )
     (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT param_token_flag_rc!
       )
      ) (nClip (Add (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
           K&. K& V&. V& Pred&. Pred&
          ) $ NAT pre%param_token_flag_rc!
         )
        ) 1
   )))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_read_end
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (param_token_flag_exc! Poly) (param_token_0_pending_reader! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_exc! param_token_0_pending_reader!
    ) (and
     (=>
      %%global_location_label%%15
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
          K&. K& V&. V& Pred&. Pred&
         ) $ BOOL param_token_flag_exc!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%16
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_pending_reader!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%17
      (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
          V&. V& Pred&. Pred&
         ) $ BOOL param_token_flag_exc!
        )
       ) false
     ))
     (=>
      %%global_location_label%%18
      (= (%Poly%tuple%0. (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_pending_reader!
        )
       ) tuple%0./tuple%0
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_exc! param_token_0_pending_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (param_token_flag_exc! Poly) (param_token_0_pending_reader! Poly) (tmp_tuple! tuple%2.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_exc! param_token_0_pending_reader! tmp_tuple!
    ) (and
     (has_type (Poly%tuple%2. tmp_tuple!) (TYPE%tuple%2. (GHOST $) (TYPE%core!option.Option.
        V&. V&
       ) (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&)
     ))
     (let
      ((original_field_storage$ (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
           (Poly%tuple%2. tmp_tuple!)
      )))))
      (let
       ((param_token_1_reader$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp_tuple!)))))
       (let
        ((original_field_storage$1 original_field_storage$))
        (let
         ((param_token_1_reader$1 param_token_1_reader$))
         (and
          (and
           (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
               K&. K& V&. V& Pred&. Pred&
              ) V&. V& param_token_1_reader$1
             )
            ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
           )
           (let
            ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                 original_field_storage$1
            )))))
            (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
               V&. V& Pred&. Pred&
              ) V&. V& param_token_1_reader$1
             ) x$
          )))
          (%B (let
            ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                 original_field_storage$1
            )))))
            (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.impl&%20.k.?
              K&. K& V&. V& Pred&. Pred& self!
             ) x$
   ))))))))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_exc! param_token_0_pending_reader! tmp_tuple!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_read_abandon
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%19 Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (pre%param_token_flag_rc! Poly) (param_token_0_pending_reader! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc! param_token_0_pending_reader!
    ) (and
     (=>
      %%global_location_label%%19
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
          K&. K& V&. V& Pred&. Pred&
         ) $ NAT pre%param_token_flag_rc!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%20
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_pending_reader!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%21
      (= (%Poly%tuple%0. (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_pending_reader!
        )
       ) tuple%0./tuple%0
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V&
     Pred&. Pred& self! pre%param_token_flag_rc! param_token_0_pending_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (pre%param_token_flag_rc! Poly) (param_token_flag_rc! Poly) (param_token_0_pending_reader!
    Poly
   )
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
    ) (and
     (has_type param_token_flag_rc! (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V&
       Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT param_token_flag_rc!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (>= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT pre%param_token_flag_rc!
       )
      ) 1
     )
     (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT param_token_flag_rc!
       )
      ) (nClip (Sub (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
           K&. K& V&. V& Pred&. Pred&
          ) $ NAT pre%param_token_flag_rc!
         )
        ) 1
   )))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V&
     Pred&. Pred& self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_exc_start
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%22 Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (pre%param_token_flag_exc! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_exc!
    ) (and
     (=>
      %%global_location_label%%22
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
          K&. K& V&. V& Pred&. Pred&
         ) $ BOOL pre%param_token_flag_exc!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%23
      (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
          V&. V& Pred&. Pred&
         ) $ BOOL pre%param_token_flag_exc!
        )
       ) false
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_exc!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (pre%param_token_flag_exc! Poly) (param_token_flag_exc! Poly) (param_token_0_pending_writer!
    Poly
   )
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_exc! param_token_flag_exc! param_token_0_pending_writer!
    ) (and
     (has_type param_token_0_pending_writer! (TYPE%vstd.rwlock.RwLockToks.pending_writer.
       K&. K& V&. V& Pred&. Pred&
     ))
     (has_type param_token_flag_exc! (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V&
       Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
         K&. K& V&. V& Pred&. Pred&
        ) $ BOOL param_token_flag_exc!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. param_token_0_pending_writer!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. param_token_0_pending_writer!
       )
      ) tuple%0./tuple%0
     )
     (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
         V&. V& Pred&. Pred&
        ) $ BOOL param_token_flag_exc!
       )
      ) true
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_exc! param_token_flag_exc! param_token_0_pending_writer!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_exc_end
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%24 Bool)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (param_token_flag_rc! Poly) (param_token_0_pending_writer! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_rc! param_token_0_pending_writer!
    ) (and
     (=>
      %%global_location_label%%24
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
          K&. K& V&. V& Pred&. Pred&
         ) $ NAT param_token_flag_rc!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%25
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_pending_writer!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%26
      (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
          V&. V& Pred&. Pred&
         ) $ NAT param_token_flag_rc!
        )
       ) 0
     ))
     (=>
      %%global_location_label%%27
      (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_pending_writer!
        )
       ) tuple%0./tuple%0
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_rc! param_token_0_pending_writer!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly tuple%3.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (param_token_flag_rc! Poly) (param_token_0_pending_writer! Poly) (tmp_tuple! tuple%3.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_rc! param_token_0_pending_writer! tmp_tuple!
    ) (and
     (has_type (Poly%tuple%3. tmp_tuple!) (TYPE%tuple%3. (GHOST $) (TYPE%core!option.Option.
        V&. V&
       ) (TRACKED V&.) V& (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V&
        Pred&. Pred&
     )))
     (let
      ((original_field_storage$ (%Poly%core!option.Option. (tuple%3./tuple%3/0 (%Poly%tuple%3.
           (Poly%tuple%3. tmp_tuple!)
      )))))
      (let
       ((param_token_2_storage$ (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. tmp_tuple!)))))
       (let
        ((param_token_1_writer$ (tuple%3./tuple%3/2 (%Poly%tuple%3. (Poly%tuple%3. tmp_tuple!)))))
        (let
         ((original_field_storage$1 original_field_storage$))
         (let
          ((param_token_2_storage$1 param_token_2_storage$))
          (let
           ((param_token_1_writer$1 param_token_1_writer$))
           (and
            (and
             (and
              (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
                  K&. K& V&. V& Pred&. Pred&
                 ) $ TYPE%tuple%0. param_token_1_writer$1
                )
               ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
              )
              (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
                  K&. K& V&. V& Pred&. Pred&
                 ) $ TYPE%tuple%0. param_token_1_writer$1
                )
               ) tuple%0./tuple%0
             ))
             (let
              ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                   original_field_storage$1
              )))))
              (= param_token_2_storage$1 x$)
            ))
            (%B (let
              ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                   original_field_storage$1
              )))))
              (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.impl&%20.k.?
                K&. K& V&. V& Pred&. Pred& self!
               ) x$
   ))))))))))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_rc! param_token_0_pending_writer! tmp_tuple!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::release_exc
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.release_exc. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(declare-const %%global_location_label%%29 Bool)
(declare-const %%global_location_label%%30 Bool)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (pre%param_token_flag_exc! Poly) (param_token_1_storage! Poly) (param_token_0_writer!
    Poly
   )
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred& self!
     x! pre%param_token_flag_exc! param_token_1_storage! param_token_0_writer!
    ) (and
     (=>
      %%global_location_label%%28
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
          K&. K& V&. V& Pred&. Pred&
         ) $ BOOL pre%param_token_flag_exc!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%29
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_writer!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%30
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.impl&%20.k.?
         K&. K& V&. V& Pred&. Pred& self!
        ) x!
     )))
     (=>
      %%global_location_label%%31
      (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. param_token_0_writer!
        )
       ) tuple%0./tuple%0
     ))
     (=>
      %%global_location_label%%32
      (= param_token_1_storage! x!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_exc! param_token_1_storage! param_token_0_writer!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (pre%param_token_flag_exc! Poly) (param_token_flag_exc! Poly) (param_token_1_storage!
    Poly
   ) (param_token_0_writer! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred& self!
     x! pre%param_token_flag_exc! param_token_flag_exc! param_token_1_storage! param_token_0_writer!
    ) (and
     (has_type param_token_flag_exc! (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V&
       Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
         K&. K& V&. V& Pred&. Pred&
        ) $ BOOL param_token_flag_exc!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
         V&. V& Pred&. Pred&
        ) $ BOOL param_token_flag_exc!
       )
      ) false
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_exc! param_token_flag_exc! param_token_1_storage! param_token_0_writer!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::read_guard
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.read_guard. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%33 Bool)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (param_token_0_reader! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred& self!
     x! param_token_0_reader!
    ) (and
     (=>
      %%global_location_label%%33
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& param_token_0_reader!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%34
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& param_token_0_reader!
       ) x!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred&
     self! x! param_token_0_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (param_token_0_reader! Poly) (param_token_1_storage! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred& self!
     x! param_token_0_reader! param_token_1_storage!
    ) (and
     (has_type param_token_1_storage! V&)
     (= param_token_1_storage! x!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred&
     self! x! param_token_0_reader! param_token_1_storage!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::read_match
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.read_match. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%35 Bool)
(declare-const %%global_location_label%%36 Bool)
(declare-const %%global_location_label%%37 Bool)
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (y! Poly) (param_token_0_reader! Poly) (param_token_1_reader! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred& self!
     x! y! param_token_0_reader! param_token_1_reader!
    ) (and
     (=>
      %%global_location_label%%35
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& param_token_0_reader!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%36
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& param_token_1_reader!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%37
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& param_token_0_reader!
       ) x!
     ))
     (=>
      %%global_location_label%%38
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& param_token_1_reader!
       ) y!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred&
     self! x! y! param_token_0_reader! param_token_1_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.read_match. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (y! Poly) (param_token_0_reader! Poly) (param_token_1_reader! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred& self!
     x! y! param_token_0_reader! param_token_1_reader!
    ) (= x! y!)
   )
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred&
     self! x! y! param_token_0_reader! param_token_1_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::release_shared
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.release_shared. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%39 Bool)
(declare-const %%global_location_label%%40 Bool)
(declare-const %%global_location_label%%41 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (pre%param_token_flag_rc! Poly) (param_token_0_reader! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_rc! param_token_0_reader!
    ) (and
     (=>
      %%global_location_label%%39
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
          K&. K& V&. V& Pred&. Pred&
         ) $ NAT pre%param_token_flag_rc!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%40
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& param_token_0_reader!
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     ))
     (=>
      %%global_location_label%%41
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& param_token_0_reader!
       ) x!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&.
     Pred& self! x! pre%param_token_flag_rc! param_token_0_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (x! Poly) (pre%param_token_flag_rc! Poly) (param_token_flag_rc! Poly) (param_token_0_reader!
    Poly
   )
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_reader!
    ) (and
     (has_type param_token_flag_rc! (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V&
       Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT param_token_flag_rc!
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& self!)
     )
     (>= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT pre%param_token_flag_rc!
       )
      ) 1
     )
     (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT param_token_flag_rc!
       )
      ) (nClip (Sub (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
           K&. K& V&. V& Pred&. Pred&
          ) $ NAT pre%param_token_flag_rc!
         )
        ) 1
   )))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&.
     Pred& self! x! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_sub
(declare-fun req%vstd.atomic.impl&%9.fetch_sub. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%42 Bool)
(declare-const %%global_location_label%%43 Bool)
(declare-const %%global_location_label%%44 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%42
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%43
      (<= 0 (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%44
      (<= (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       ) 18446744073709551615
   ))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_sub. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_sub._definition
)))

;; Function-Specs crate::vstd::atomic_ghost::AtomicU64::new
(declare-fun req%vstd.atomic_ghost.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%45 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%45
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 64) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__1.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__1.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicU64.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicU64.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicU64. t!) (TYPE%vstd.atomic_ghost.AtomicU64.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!))
   :qid internal_ens__vstd.atomic_ghost.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__1.new._definition
)))

;; Function-Specs crate::vstd::atomic_ghost::AtomicBool::new
(declare-fun req%vstd.atomic_ghost.impl&%21.new. (Dcr Type Dcr Type Dcr Type Poly Bool
  Poly
 ) Bool
)
(declare-const %%global_location_label%%46 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Bool) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%46
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       BOOL G&. G& k! (B u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__21.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__21.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%21.new. (Dcr Type Dcr Type Dcr Type Poly Bool
  Poly vstd.atomic_ghost.AtomicBool.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Bool) (g! Poly) (t! vstd.atomic_ghost.AtomicBool.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicBool. t!) (TYPE%vstd.atomic_ghost.AtomicBool.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__21.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__21.new._definition
)))

;; Function-Specs crate::vstd::rwlock::WriteHandle::release_write
(declare-fun req%vstd.rwlock.impl&%5.release_write. (Dcr Type Dcr Type vstd.rwlock.WriteHandle.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%47 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.WriteHandle.)
   (new_val! Poly)
  ) (!
   (= (req%vstd.rwlock.impl&%5.release_write. V&. V& Pred&. Pred& self! new_val!) (=>
     %%global_location_label%%47
     (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. (vstd.rwlock.impl&%5.rwlock.?
        V&. V& Pred&. Pred& (Poly%vstd.rwlock.WriteHandle. self!)
       )
      ) new_val!
   )))
   :pattern ((req%vstd.rwlock.impl&%5.release_write. V&. V& Pred&. Pred& self! new_val!))
   :qid internal_req__vstd.rwlock.impl&__5.release_write._definition
   :skolemid skolem_internal_req__vstd.rwlock.impl&__5.release_write._definition
)))

;; Function-Def crate::vstd::rwlock::WriteHandle::release_write
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:402:5: 402:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const self! vstd.rwlock.WriteHandle.)
 (declare-const new_val! Poly)
 (declare-const tmp%1 vstd.rwlock.WriteHandle.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5@0 tuple%2.)
 (declare-const pair~127@0 tuple%2.)
 (declare-const verus_tmp_perm$1@0 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%6 vstd.atomic.PAtomicBool.)
 (declare-const tmp%7 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm$1@0 vstd.atomic.PermissionBool.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Bool)
 (declare-const verus_tmp$2@0 Bool)
 (declare-const verus_tmp$3@0 tuple%0.)
 (declare-const atomic@ vstd.atomic_ghost.AtomicBool.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const rwlock@ vstd.rwlock.RwLock.)
 (declare-const handle@0 Poly)
 (declare-const perm@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.WriteHandle. self!) (TYPE%vstd.rwlock.WriteHandle. V&.
    V& Pred&. Pred&
 )))
 (assert
  (has_type new_val! V&)
 )
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (assert
  (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. (vstd.rwlock.impl&%5.rwlock.?
     V&. V& Pred&. Pred& (Poly%vstd.rwlock.WriteHandle. self!)
    )
   ) new_val!
 ))
 (declare-const handle@1 Poly)
 (declare-const perm@1 Poly)
 (declare-const perm@2 Poly)
 (declare-const perm$1@1 vstd.atomic.PermissionBool.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Bool)
 (declare-const perm$1@2 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp$2@1 Bool)
 (declare-const verus_tmp$3@1 tuple%0.)
 (declare-const g@2 Poly)
 (declare-const pair~127@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.rwlock.impl&%5.wf_write_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.WriteHandle.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= verus_tmp_handle@ (vstd.rwlock.WriteHandle./WriteHandle/handle (%Poly%vstd.rwlock.WriteHandle.
          (Poly%vstd.rwlock.WriteHandle. self!)
       )))
       (=>
        (= verus_tmp_perm@ (vstd.rwlock.WriteHandle./WriteHandle/perm (%Poly%vstd.rwlock.WriteHandle.
           (Poly%vstd.rwlock.WriteHandle. self!)
        )))
        (=>
         (= rwlock@ (vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle.
            (Poly%vstd.rwlock.WriteHandle. self!)
         )))
         (=>
          (= handle@1 verus_tmp_handle@)
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= tmp%3 (vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                (vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle. (Poly%vstd.rwlock.WriteHandle.
                   self!
            )))))))
            (and
             (=>
              %%location_label%%0
              (req%vstd.cell.impl&%3.put. V&. V& tmp%3 perm@1 new_val!)
             )
             (=>
              (has_type perm@2 (TYPE%vstd.cell.PointsTo. V&. V&))
              (=>
               (ens%vstd.cell.impl&%3.put. V&. V& tmp%3 perm@1 perm@2 new_val!)
               (=>
                (= atomic@ (vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                    rwlock@
                ))))
                (=>
                 (= tmp%4 (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
                    (Poly%vstd.atomic_ghost.AtomicBool. atomic@)
                 )))
                 (=>
                  (has_type (Poly%tuple%2. tmp%5@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
                    $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                     $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                      Pred&
                  ))))
                  (=>
                   (= pair~127@0 tmp%5@0)
                   (=>
                    (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                        V&. V&
                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                      ) $ INT
                     ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                        V&. V&
                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                      )
                     ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
                     tmp%4 (Poly%tuple%2. pair~127@0)
                    )
                    (=>
                     (= verus_tmp@ pair~127@0)
                     (=>
                      (= verus_tmp_perm$1@0 (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                          (Poly%tuple%2. verus_tmp@)
                      ))))
                      (=>
                       (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
                       (=>
                        (= perm$1@1 verus_tmp_perm$1@0)
                        (=>
                         (= g@1 verus_tmp_g@0)
                         (=>
                          (= verus_tmp$1@1 (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
                             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                                perm$1@1
                          ))))))
                          (=>
                           (= tmp%6 (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (%Poly%vstd.atomic_ghost.AtomicBool.
                              (Poly%vstd.atomic_ghost.AtomicBool. atomic@)
                           )))
                           (and
                            (=>
                             %%location_label%%1
                             (req%vstd.atomic.impl&%1.store. tmp%6 perm$1@1 false)
                            )
                            (=>
                             (ens%vstd.atomic.impl&%1.store. tmp%6 perm$1@1 perm$1@2 false)
                             (=>
                              (= verus_tmp$2@1 (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
                                 (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                                    perm$1@2
                              ))))))
                              (=>
                               (= verus_tmp$3@1 tuple%0./tuple%0)
                               (=>
                                (= tmp%7 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                    (vstd.rwlock.WriteHandle./WriteHandle/rwlock (%Poly%vstd.rwlock.WriteHandle. (Poly%vstd.rwlock.WriteHandle.
                                       self!
                                )))))))
                                (and
                                 (=>
                                  %%location_label%%2
                                  (req%vstd.rwlock.RwLockToks.impl&%20.release_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                   $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                    Pred&
                                   ) tmp%7 perm@2 g@1 perm@2 handle@1
                                 ))
                                 (=>
                                  (has_type g@2 (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $
                                     TYPE%vstd.cell.CellId.
                                    ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                     Pred&
                                  )))
                                  (=>
                                   (ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                    $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                     Pred&
                                    ) tmp%7 perm@2 g@1 g@2 perm@2 handle@1
                                   )
                                   (=>
                                    (= pair~127@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionBool. perm$1@2) g@2))
                                    (=>
                                     %%location_label%%3
                                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                         V&. V&
                                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                       ) $ INT
                                      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                         V&. V&
                                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                       )
                                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
                                      tmp%4 (Poly%tuple%2. pair~127@1)
 )))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::ReadHandle::borrow
(declare-fun ens%vstd.rwlock.impl&%6.borrow. (Dcr Type Dcr Type vstd.rwlock.ReadHandle.
  Poly
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.ReadHandle.)
   (val! Poly)
  ) (!
   (= (ens%vstd.rwlock.impl&%6.borrow. V&. V& Pred&. Pred& self! val!) (and
     (has_type val! V&)
     (= val! (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
        self!
   )))))
   :pattern ((ens%vstd.rwlock.impl&%6.borrow. V&. V& Pred&. Pred& self! val!))
   :qid internal_ens__vstd.rwlock.impl&__6.borrow._definition
   :skolemid skolem_internal_ens__vstd.rwlock.impl&__6.borrow._definition
)))

;; Function-Def crate::vstd::rwlock::ReadHandle::borrow
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:440:5: 440:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const val! Poly)
 (declare-const self! vstd.rwlock.ReadHandle.)
 (declare-const tmp%1 vstd.rwlock.ReadHandle.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 Poly)
 (declare-const verus_tmp@ Poly)
 (declare-const perm@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.ReadHandle. self!) (TYPE%vstd.rwlock.ReadHandle. V&. V&
    Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (declare-const perm@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= tmp%3 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
           (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle.
              self!
       )))))))
       (=>
        (= tmp%4 (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
           $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
            V&. V&
           ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
          ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
            %Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle. self!)
        ))))
        (=>
         (= tmp%5 (vstd.rwlock.ReadHandle./ReadHandle/handle (%Poly%vstd.rwlock.ReadHandle. (
             Poly%vstd.rwlock.ReadHandle. self!
         ))))
         (and
          (=>
           %%location_label%%0
           (req%vstd.rwlock.RwLockToks.impl&%20.read_guard. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
            $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
             Pred&
            ) tmp%3 tmp%4 tmp%5
          ))
          (=>
           (ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
            $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
             Pred&
            ) tmp%3 tmp%4 tmp%5 verus_tmp@
           )
           (=>
            (= verus_tmp_perm@ verus_tmp@)
            (=>
             (= perm@1 verus_tmp_perm@)
             (=>
              (= tmp%7 (vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                  (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle.
                     self!
              )))))))
              (and
               (=>
                %%location_label%%1
                (req%vstd.cell.impl&%3.borrow. V&. V& tmp%7 perm@1)
               )
               (=>
                (ens%vstd.cell.impl&%3.borrow. V&. V& tmp%7 perm@1 tmp%6)
                (=>
                 (= val! tmp%6)
                 (=>
                  %%location_label%%2
                  (= val! (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
                     self!
 ))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::ReadHandle::lemma_readers_match
(declare-fun req%vstd.rwlock.impl&%6.lemma_readers_match. (Dcr Type Dcr Type vstd.rwlock.ReadHandle.
  vstd.rwlock.ReadHandle.
 ) Bool
)
(declare-const %%global_location_label%%48 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (read_handle1! vstd.rwlock.ReadHandle.)
   (read_handle2! vstd.rwlock.ReadHandle.)
  ) (!
   (= (req%vstd.rwlock.impl&%6.lemma_readers_match. V&. V& Pred&. Pred& read_handle1!
     read_handle2!
    ) (=>
     %%global_location_label%%48
     (= (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle1!))
      (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle2!))
   )))
   :pattern ((req%vstd.rwlock.impl&%6.lemma_readers_match. V&. V& Pred&. Pred& read_handle1!
     read_handle2!
   ))
   :qid internal_req__vstd.rwlock.impl&__6.lemma_readers_match._definition
   :skolemid skolem_internal_req__vstd.rwlock.impl&__6.lemma_readers_match._definition
)))
(declare-fun ens%vstd.rwlock.impl&%6.lemma_readers_match. (Dcr Type Dcr Type vstd.rwlock.ReadHandle.
  vstd.rwlock.ReadHandle.
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (read_handle1! vstd.rwlock.ReadHandle.)
   (read_handle2! vstd.rwlock.ReadHandle.)
  ) (!
   (= (ens%vstd.rwlock.impl&%6.lemma_readers_match. V&. V& Pred&. Pred& read_handle1!
     read_handle2!
    ) (= (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle1!))
     (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle2!))
   ))
   :pattern ((ens%vstd.rwlock.impl&%6.lemma_readers_match. V&. V& Pred&. Pred& read_handle1!
     read_handle2!
   ))
   :qid internal_ens__vstd.rwlock.impl&__6.lemma_readers_match._definition
   :skolemid skolem_internal_ens__vstd.rwlock.impl&__6.lemma_readers_match._definition
)))

;; Function-Def crate::vstd::rwlock::ReadHandle::lemma_readers_match
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:454:5: 457:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const read_handle1! vstd.rwlock.ReadHandle.)
 (declare-const read_handle2! vstd.rwlock.ReadHandle.)
 (declare-const tmp%1 vstd.rwlock.ReadHandle.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 vstd.rwlock.ReadHandle.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 Poly)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.ReadHandle. read_handle1!) (TYPE%vstd.rwlock.ReadHandle.
    V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.ReadHandle. read_handle2!) (TYPE%vstd.rwlock.ReadHandle.
    V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (assert
  (= (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle1!))
   (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle2!))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 read_handle1!)
    (=>
     (= tmp%2 (vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= tmp%3 read_handle2!)
       (=>
        (= tmp%4 (vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
           tmp%3
        )))
        (=>
         tmp%4
         (=>
          (= tmp%5 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
              (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle.
                 read_handle1!
          )))))))
          (=>
           (= tmp%6 (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
              $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
               V&. V&
              ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
               %Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle. read_handle1!)
           ))))
           (=>
            (= tmp%7 (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
               $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                V&. V&
               ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
              ) $ (TYPE%vstd.cell.PointsTo. V&. V&) (vstd.rwlock.ReadHandle./ReadHandle/handle (
                %Poly%vstd.rwlock.ReadHandle. (Poly%vstd.rwlock.ReadHandle. read_handle2!)
            ))))
            (=>
             (= tmp%8 (vstd.rwlock.ReadHandle./ReadHandle/handle (%Poly%vstd.rwlock.ReadHandle. (
                 Poly%vstd.rwlock.ReadHandle. read_handle1!
             ))))
             (=>
              (= tmp%9 (vstd.rwlock.ReadHandle./ReadHandle/handle (%Poly%vstd.rwlock.ReadHandle. (
                  Poly%vstd.rwlock.ReadHandle. read_handle2!
              ))))
              (and
               (=>
                %%location_label%%0
                (req%vstd.rwlock.RwLockToks.impl&%20.read_match. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                 $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                  Pred&
                 ) tmp%5 tmp%6 tmp%7 tmp%8 tmp%9
               ))
               (=>
                (ens%vstd.rwlock.RwLockToks.impl&%20.read_match. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                 $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                  Pred&
                 ) tmp%5 tmp%6 tmp%7 tmp%8 tmp%9
                )
                (=>
                 %%location_label%%1
                 (= (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle1!))
                  (vstd.rwlock.impl&%6.view.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle2!))
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::rwlock::ReadHandle::release_read
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:473:5: 473:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const self! vstd.rwlock.ReadHandle.)
 (declare-const tmp%1 vstd.rwlock.ReadHandle.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 tuple%2.)
 (declare-const pair~88@0 tuple%2.)
 (declare-const verus_tmp_perm@0 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const tmp%%$1@ Int)
 (declare-const tmp%%$2@ Int)
 (declare-const tmp%%$3@ Int)
 (declare-const tmp%7 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU64.)
 (declare-const g@0 Poly)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU64.)
 (declare-const operand@ Int)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const rwlock@ vstd.rwlock.RwLock.)
 (declare-const handle@0 Poly)
 (declare-const tmp%%@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.ReadHandle. self!) (TYPE%vstd.rwlock.ReadHandle. V&. V&
    Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (declare-const handle@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionU64.)
 (declare-const g@1 Poly)
 (declare-const g@2 Poly)
 (declare-const perm@2 vstd.atomic.PermissionU64.)
 (declare-const pair~88@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= verus_tmp_handle@ (vstd.rwlock.ReadHandle./ReadHandle/handle (%Poly%vstd.rwlock.ReadHandle.
          (Poly%vstd.rwlock.ReadHandle. self!)
       )))
       (=>
        (= rwlock@ (vstd.rwlock.ReadHandle./ReadHandle/rwlock (%Poly%vstd.rwlock.ReadHandle.
           (Poly%vstd.rwlock.ReadHandle. self!)
        )))
        (=>
         (= handle@1 verus_tmp_handle@)
         (=>
          (= atomic@ (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
              rwlock@
          ))))
          (=>
           (= operand@ 1)
           (=>
            (= tmp%3 (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
               (Poly%vstd.atomic_ghost.AtomicU64. atomic@)
            )))
            (=>
             (has_type (Poly%tuple%2. tmp%4@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
               $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                 Pred&
             ))))
             (=>
              (= pair~88@0 tmp%4@0)
              (=>
               (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                  $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                   V&. V&
                  ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                 ) $ INT
                ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                  $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                   V&. V&
                  ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                 )
                ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                tmp%3 (Poly%tuple%2. pair~88@0)
               )
               (=>
                (= verus_tmp@ pair~88@0)
                (=>
                 (= verus_tmp_perm@0 (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                     (Poly%tuple%2. verus_tmp@)
                 ))))
                 (=>
                  (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
                  (=>
                   (= perm@1 verus_tmp_perm@0)
                   (=>
                    (= g@1 verus_tmp_g@0)
                    (=>
                     (= tmp%%$1@ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                           perm@1
                     ))))))
                     (=>
                      (= tmp%%$2@ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                            perm@1
                      ))))))
                      (=>
                       (= tmp%%$3@ (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                           (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                              perm@1
                          ))))
                         ) operand@
                       ))
                       (=>
                        (= tmp%5 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                            rwlock@
                        ))))
                        (=>
                         (= tmp%6 (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
                            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                             V&. V&
                            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                           ) $ (TYPE%vstd.cell.PointsTo. V&. V&) handle@1
                         ))
                         (and
                          (=>
                           %%location_label%%0
                           (req%vstd.rwlock.RwLockToks.impl&%20.release_shared. $ (TYPE%tuple%2. Pred&. Pred&
                             $ TYPE%vstd.cell.CellId.
                            ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                             Pred&
                            ) tmp%5 tmp%6 g@1 handle@1
                          ))
                          (=>
                           (has_type g@2 (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $
                              TYPE%vstd.cell.CellId.
                             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                              Pred&
                           )))
                           (=>
                            (ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. $ (TYPE%tuple%2. Pred&. Pred&
                              $ TYPE%vstd.cell.CellId.
                             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                              Pred&
                             ) tmp%5 tmp%6 g@1 g@2 handle@1
                            )
                            (=>
                             (= tmp%7 (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
                                (Poly%vstd.atomic_ghost.AtomicU64. atomic@)
                             )))
                             (and
                              (=>
                               %%location_label%%1
                               (req%vstd.atomic.impl&%9.fetch_sub. tmp%7 perm@1 operand@)
                              )
                              (=>
                               (ens%vstd.atomic.impl&%9.fetch_sub. tmp%7 perm@1 perm@2 operand@ result@)
                               (=>
                                (= pair~88@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm@2) g@2))
                                (=>
                                 %%location_label%%2
                                 (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                    $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                     V&. V&
                                    ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                   ) $ INT
                                  ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                    $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                     V&. V&
                                    ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                   )
                                  ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                                  tmp%3 (Poly%tuple%2. pair~88@1)
 )))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLock::new
(declare-fun req%vstd.rwlock.impl&%7.new. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%49 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (val! Poly) (pred! Poly)) (
   !
   (= (req%vstd.rwlock.impl&%7.new. V&. V& Pred&. Pred& val! pred!) (=>
     %%global_location_label%%49
     (%B (vstd.rwlock.RwLockPredicate.inv.? Pred&. Pred& V&. V& pred! val!))
   ))
   :pattern ((req%vstd.rwlock.impl&%7.new. V&. V& Pred&. Pred& val! pred!))
   :qid internal_req__vstd.rwlock.impl&__7.new._definition
   :skolemid skolem_internal_req__vstd.rwlock.impl&__7.new._definition
)))
(declare-fun ens%vstd.rwlock.impl&%7.new. (Dcr Type Dcr Type Poly Poly vstd.rwlock.RwLock.)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (val! Poly) (pred! Poly) (s!
    vstd.rwlock.RwLock.
   )
  ) (!
   (= (ens%vstd.rwlock.impl&%7.new. V&. V& Pred&. Pred& val! pred! s!) (and
     (has_type (Poly%vstd.rwlock.RwLock. s!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&. Pred&))
     (= (vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. s!))
      pred!
   )))
   :pattern ((ens%vstd.rwlock.impl&%7.new. V&. V& Pred&. Pred& val! pred! s!))
   :qid internal_ens__vstd.rwlock.impl&__7.new._definition
   :skolemid skolem_internal_ens__vstd.rwlock.impl&__7.new._definition
)))

;; Function-Def crate::vstd::rwlock::RwLock::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:501:5: 501:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const s! vstd.rwlock.RwLock.)
 (declare-const val! Poly)
 (declare-const pred! Poly)
 (declare-const tmp%1 tuple%2.)
 (declare-const tmp%2 core!option.Option.)
 (declare-const verus_tmp_inst@ Poly)
 (declare-const verus_tmp_flag_exc@ Poly)
 (declare-const verus_tmp_flag_rc@ Poly)
 (declare-const tmp%3 vstd.rwlock.RwLock.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%%@ tuple%2.)
 (declare-const cell@ Poly)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const perm@0 Poly)
 (declare-const verus_tmp@ tuple%7.)
 (declare-const inst@0 Poly)
 (declare-const flag_exc@0 Poly)
 (declare-const flag_rc@0 Poly)
 (declare-const inst$1@ Poly)
 (declare-const exc@ vstd.atomic_ghost.AtomicBool.)
 (declare-const rc@ vstd.atomic_ghost.AtomicU64.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type val! V&)
 )
 (assert
  (has_type pred! Pred&)
 )
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (assert
  (%B (vstd.rwlock.RwLockPredicate.inv.? Pred&. Pred& V&. V& pred! val!))
 )
 (declare-const perm@1 Poly)
 (declare-const inst@1 Poly)
 (declare-const flag_exc@1 Poly)
 (declare-const flag_rc@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (ens%vstd.cell.impl&%3.new. V&. V& val! tmp%%@)
    (=>
     (= cell@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
     (=>
      (= verus_tmp_perm@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= tmp%1 (tuple%2./tuple%2 pred! (Poly%vstd.cell.CellId. (vstd.cell.impl&%3.id.? V&.
            V& cell@
        ))))
        (=>
         (= tmp%2 (core!option.Option./Some perm@1))
         (and
          (=>
           %%location_label%%0
           (req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. $ (TYPE%tuple%2. Pred&. Pred&
             $ TYPE%vstd.cell.CellId.
            ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
             Pred&
            ) (Poly%tuple%2. tmp%1) perm@1 tmp%2
          ))
          (=>
           (ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. $ (TYPE%tuple%2. Pred&. Pred&
             $ TYPE%vstd.cell.CellId.
            ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
             Pred&
            ) (Poly%tuple%2. tmp%1) perm@1 tmp%2 verus_tmp@
           )
           (=>
            (= verus_tmp_inst@ (tuple%7./tuple%7/0 (%Poly%tuple%7. (Poly%tuple%7. verus_tmp@))))
            (=>
             (= verus_tmp_flag_exc@ (tuple%7./tuple%7/1 (%Poly%tuple%7. (Poly%tuple%7. verus_tmp@))))
             (=>
              (= verus_tmp_flag_rc@ (tuple%7./tuple%7/2 (%Poly%tuple%7. (Poly%tuple%7. verus_tmp@))))
              (=>
               (= inst@1 verus_tmp_inst@)
               (=>
                (= flag_exc@1 verus_tmp_flag_exc@)
                (=>
                 (= flag_rc@1 verus_tmp_flag_rc@)
                 (=>
                  (= inst$1@ inst@1)
                  (and
                   (=>
                    %%location_label%%1
                    (req%vstd.atomic_ghost.impl&%21.new. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                      $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                       V&. V&
                      ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                     ) $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                       Pred&
                      )
                     ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. inst$1@ false flag_exc@1
                   ))
                   (=>
                    (ens%vstd.atomic_ghost.impl&%21.new. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                      $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                       V&. V&
                      ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                     ) $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                       Pred&
                      )
                     ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc. inst$1@ false flag_exc@1
                     exc@
                    )
                    (and
                     (=>
                      %%location_label%%2
                      (req%vstd.atomic_ghost.impl&%1.new. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                         V&. V&
                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                       ) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                        $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                         Pred&
                        )
                       ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. inst$1@ 0 flag_rc@1
                     ))
                     (=>
                      (ens%vstd.atomic_ghost.impl&%1.new. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                         V&. V&
                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                       ) $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                        $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                         Pred&
                        )
                       ) $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc. inst$1@ 0 flag_rc@1 rc@
                      )
                      (=>
                       (= tmp%3 (vstd.rwlock.RwLock./RwLock cell@ (%Poly%vstd.atomic_ghost.AtomicBool. (Poly%vstd.atomic_ghost.AtomicBool.
                           exc@
                          )
                         ) (%Poly%vstd.atomic_ghost.AtomicU64. (Poly%vstd.atomic_ghost.AtomicU64. rc@)) inst$1@
                         pred!
                       ))
                       (=>
                        (= tmp%4 (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. tmp%3)))
                        (and
                         (=>
                          %%location_label%%3
                          tmp%4
                         )
                         (=>
                          tmp%4
                          (=>
                           (= s! tmp%3)
                           (=>
                            %%location_label%%4
                            (= (vstd.rwlock.impl&%7.pred.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. s!))
                             pred!
 ))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLock::acquire_write
(declare-fun ens%vstd.rwlock.impl&%7.acquire_write. (Dcr Type Dcr Type vstd.rwlock.RwLock.
  tuple%2.
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLock.)
   (ret! tuple%2.)
  ) (!
   (= (ens%vstd.rwlock.impl&%7.acquire_write. V&. V& Pred&. Pred& self! ret!) (and
     (has_type (Poly%tuple%2. ret!) (TYPE%tuple%2. V&. V& $ (TYPE%vstd.rwlock.WriteHandle.
        V&. V& Pred&. Pred&
     )))
     (let
      ((val$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. ret!)))))
      (let
       ((write_handle$ (%Poly%vstd.rwlock.WriteHandle. (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
             ret!
       ))))))
       (and
        (= (vstd.rwlock.impl&%5.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.WriteHandle.
           write_handle$
          )
         ) self!
        )
        (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!) val$)
   )))))
   :pattern ((ens%vstd.rwlock.impl&%7.acquire_write. V&. V& Pred&. Pred& self! ret!))
   :qid internal_ens__vstd.rwlock.impl&__7.acquire_write._definition
   :skolemid skolem_internal_ens__vstd.rwlock.impl&__7.acquire_write._definition
)))

;; Function-Def crate::vstd::rwlock::RwLock::acquire_write
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:543:9: 567:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const ret! tuple%2.)
 (declare-const self! vstd.rwlock.RwLock.)
 (declare-const tmp%1 vstd.rwlock.RwLock.)
 (declare-const tmp%2 Bool)
 (declare-const verus_tmp_token@0 core!option.Option.)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 tuple%2.)
 (declare-const pair~219@0 tuple%2.)
 (declare-const verus_tmp_perm@0 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%5 vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_res@ core!result.Result.)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 Poly)
 (declare-const verus_tmp$1@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionBool.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$2@0 Bool)
 (declare-const verus_tmp$3@0 core!result.Result.)
 (declare-const res@0 core!result.Result.)
 (declare-const verus_tmp$4@0 Bool)
 (declare-const result$1@ core!result.Result.)
 (declare-const atomic@ vstd.atomic_ghost.AtomicBool.)
 (declare-const operand1@ Bool)
 (declare-const operand2@ Bool)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const result@ core!result.Result.)
 (declare-const verus_tmp_perm_opt@0 core!option.Option.)
 (declare-const verus_tmp_handle_opt@0 core!option.Option.)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9@0 tuple%2.)
 (declare-const pair~602@0 tuple%2.)
 (declare-const verus_tmp_perm$1@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$1@0 Poly)
 (declare-const tmp%10 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_res$1@ Int)
 (declare-const tmp%11 Poly)
 (declare-const tmp%12 Poly)
 (declare-const tmp%13 Poly)
 (declare-const tok@ Poly)
 (declare-const x@ tuple%3.)
 (declare-const verus_tmp_perm$2@ Poly)
 (declare-const verus_tmp_exc_handle@ Poly)
 (declare-const perm$2@ Poly)
 (declare-const exc_handle@ Poly)
 (declare-const verus_tmp$7@ tuple%2.)
 (declare-const perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const g$1@0 Poly)
 (declare-const verus_tmp$8@0 Int)
 (declare-const res$1@0 Int)
 (declare-const verus_tmp$9@0 Int)
 (declare-const verus_tmp$10@0 Int)
 (declare-const result$3@ Int)
 (declare-const atomic$1@ vstd.atomic_ghost.AtomicU64.)
 (declare-const credit$1@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%14 Poly)
 (declare-const tmp%15 Poly)
 (declare-const verus_tmp_perm$3@0 Poly)
 (declare-const tmp%16 Poly)
 (declare-const tmp%17 Poly)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const tmp%18 Poly)
 (declare-const tmp%19 vstd.rwlock.WriteHandle.)
 (declare-const tmp%20 Bool)
 (declare-const verus_tmp$11@ Poly)
 (declare-const perm$3@0 Poly)
 (declare-const verus_tmp$12@ Poly)
 (declare-const handle@0 Poly)
 (declare-const t$3@ Poly)
 (declare-const write_handle@ vstd.rwlock.WriteHandle.)
 (declare-const verus_tmp$5@ core!option.Option.)
 (declare-const perm_opt@0 core!option.Option.)
 (declare-const verus_tmp$6@ core!option.Option.)
 (declare-const handle_opt@0 core!option.Option.)
 (declare-const result$2@ Int)
 (declare-const done@0 Bool)
 (declare-const verus_tmp@ core!option.Option.)
 (declare-const token@0 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. self!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. tmp%1) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (has_type (Poly%core!option.Option. verus_tmp@) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
      V&. V&
     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
 ))))
 (assert
  (has_type (Poly%core!option.Option. verus_tmp_token@0) (TYPE%core!option.Option. $
    (TYPE%vstd.rwlock.RwLockToks.pending_writer. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
     $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
      Pred&
 )))))
 (assert
  (has_type (Poly%core!option.Option. token@0) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
      V&. V&
     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
 ))))
 (declare-const perm@1 vstd.atomic.PermissionBool.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$2@1 Bool)
 (declare-const perm@2 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp$3@1 core!result.Result.)
 (declare-const res@1 core!result.Result.)
 (declare-const verus_tmp$4@1 Bool)
 (declare-const g@2 Poly)
 (declare-const token@1 core!option.Option.)
 (declare-const pair~219@1 tuple%2.)
 (declare-const done@1 Bool)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%2 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%3 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (=>
     done@0
     (and
      (is-core!option.Option./Some token@0)
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
           V&. V&
          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
         ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
            token@0
        ))))
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
        $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
         Pred&
        ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
           self!
    )))))))
    (=>
     (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
     (=>
      (not done@0)
      (=>
       (= atomic@ (vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
           self!
       ))))
       (=>
        (= operand1@ false)
        (=>
         (= operand2@ true)
         (=>
          (= tmp%3 (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
             (Poly%vstd.atomic_ghost.AtomicBool. atomic@)
          )))
          (=>
           (has_type (Poly%tuple%2. tmp%4@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
             $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
              $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
               Pred&
           ))))
           (=>
            (= pair~219@0 tmp%4@0)
            (=>
             (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                 V&. V&
                ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
               ) $ INT
              ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                 V&. V&
                ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
               )
              ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
              tmp%3 (Poly%tuple%2. pair~219@0)
             )
             (=>
              (= verus_tmp$1@ pair~219@0)
              (=>
               (= verus_tmp_perm@0 (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                   (Poly%tuple%2. verus_tmp$1@)
               ))))
               (=>
                (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp$1@))))
                (=>
                 (= perm@1 verus_tmp_perm@0)
                 (=>
                  (= g@1 verus_tmp_g@0)
                  (=>
                   (= verus_tmp$2@1 (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
                      (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                         perm@1
                   ))))))
                   (=>
                    (= tmp%5 (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (%Poly%vstd.atomic_ghost.AtomicBool.
                       (Poly%vstd.atomic_ghost.AtomicBool. atomic@)
                    )))
                    (and
                     (=>
                      %%location_label%%0
                      (req%vstd.atomic.impl&%1.compare_exchange. tmp%5 perm@1 operand1@ operand2@)
                     )
                     (=>
                      (ens%vstd.atomic.impl&%1.compare_exchange. tmp%5 perm@1 perm@2 operand1@ operand2@
                       result$1@
                      )
                      (=>
                       (= verus_tmp$3@1 result$1@)
                       (=>
                        (= verus_tmp_res@ verus_tmp$3@1)
                        (=>
                         (= res@1 verus_tmp_res@)
                         (=>
                          (= verus_tmp$4@1 (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
                             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                                perm@2
                          ))))))
                          (or
                           (and
                            (=>
                             (is-core!result.Result./Ok res@1)
                             (=>
                              (= tmp%7 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                  self!
                              ))))
                              (and
                               (=>
                                %%location_label%%1
                                (req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. $ (TYPE%tuple%2. Pred&. Pred&
                                  $ TYPE%vstd.cell.CellId.
                                 ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                  Pred&
                                 ) tmp%7 g@1
                               ))
                               (=>
                                (has_type g@2 (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $
                                   TYPE%vstd.cell.CellId.
                                  ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                   Pred&
                                )))
                                (=>
                                 (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. $ (TYPE%tuple%2. Pred&. Pred&
                                   $ TYPE%vstd.cell.CellId.
                                  ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                   Pred&
                                  ) tmp%7 g@1 g@2 tmp%6
                                 )
                                 (=>
                                  (= token@1 (core!option.Option./Some tmp%6))
                                  %%switch_label%%0
                            ))))))
                            (=>
                             (not (is-core!result.Result./Ok res@1))
                             (=>
                              (= g@2 g@1)
                              (=>
                               (= token@1 token@0)
                               %%switch_label%%0
                           ))))
                           (and
                            (not %%switch_label%%0)
                            (=>
                             (= pair~219@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionBool. perm@2) g@2))
                             (and
                              (=>
                               %%location_label%%2
                               (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                  $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                   V&. V&
                                  ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                 ) $ INT
                                ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                                  $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                   V&. V&
                                  ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                 )
                                ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
                                tmp%3 (Poly%tuple%2. pair~219@1)
                              ))
                              (=>
                               (= result@ result$1@)
                               (=>
                                (= done@1 (is-core!result.Result./Ok result@))
                                (and
                                 (=>
                                  %%location_label%%3
                                  (=>
                                   done@1
                                   (and
                                    (is-core!option.Option./Some token@1)
                                    (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                         V&. V&
                                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                       ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                          token@1
                                      ))))
                                     ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                       Pred&
                                      ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                         self!
                                 ))))))))
                                 (=>
                                  %%location_label%%4
                                  (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
 )))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::rwlock::RwLock::acquire_write
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:568:9: 611:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const ret! tuple%2.)
 (declare-const self! vstd.rwlock.RwLock.)
 (declare-const tmp%1 vstd.rwlock.RwLock.)
 (declare-const tmp%2 Bool)
 (declare-const verus_tmp_token@0 core!option.Option.)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 tuple%2.)
 (declare-const pair~219@0 tuple%2.)
 (declare-const verus_tmp_perm@0 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%5 vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_res@ core!result.Result.)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 Poly)
 (declare-const verus_tmp$1@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionBool.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$2@0 Bool)
 (declare-const verus_tmp$3@0 core!result.Result.)
 (declare-const res@0 core!result.Result.)
 (declare-const verus_tmp$4@0 Bool)
 (declare-const result$1@ core!result.Result.)
 (declare-const atomic@ vstd.atomic_ghost.AtomicBool.)
 (declare-const operand1@ Bool)
 (declare-const operand2@ Bool)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const result@ core!result.Result.)
 (declare-const verus_tmp_perm_opt@0 core!option.Option.)
 (declare-const verus_tmp_handle_opt@0 core!option.Option.)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9@0 tuple%2.)
 (declare-const pair~602@0 tuple%2.)
 (declare-const verus_tmp_perm$1@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$1@0 Poly)
 (declare-const tmp%10 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_res$1@ Int)
 (declare-const tmp%11 Poly)
 (declare-const tmp%12 Poly)
 (declare-const tmp%13 Poly)
 (declare-const tok@ Poly)
 (declare-const x@ tuple%3.)
 (declare-const verus_tmp_perm$2@ Poly)
 (declare-const verus_tmp_exc_handle@ Poly)
 (declare-const perm$2@ Poly)
 (declare-const exc_handle@ Poly)
 (declare-const verus_tmp$7@ tuple%2.)
 (declare-const perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const g$1@0 Poly)
 (declare-const verus_tmp$8@0 Int)
 (declare-const res$1@0 Int)
 (declare-const verus_tmp$9@0 Int)
 (declare-const verus_tmp$10@0 Int)
 (declare-const result$3@ Int)
 (declare-const atomic$1@ vstd.atomic_ghost.AtomicU64.)
 (declare-const credit$1@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%14 Poly)
 (declare-const tmp%15 Poly)
 (declare-const verus_tmp_perm$3@0 Poly)
 (declare-const tmp%16 Poly)
 (declare-const tmp%17 Poly)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const tmp%18 Poly)
 (declare-const tmp%19 vstd.rwlock.WriteHandle.)
 (declare-const tmp%20 Bool)
 (declare-const verus_tmp$11@ Poly)
 (declare-const perm$3@0 Poly)
 (declare-const verus_tmp$12@ Poly)
 (declare-const handle@0 Poly)
 (declare-const t$3@ Poly)
 (declare-const write_handle@ vstd.rwlock.WriteHandle.)
 (declare-const verus_tmp$5@ core!option.Option.)
 (declare-const perm_opt@0 core!option.Option.)
 (declare-const verus_tmp$6@ core!option.Option.)
 (declare-const handle_opt@0 core!option.Option.)
 (declare-const result$2@ Int)
 (declare-const done@0 Bool)
 (declare-const verus_tmp@ core!option.Option.)
 (declare-const token@0 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. self!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. tmp%1) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (has_type (Poly%core!option.Option. verus_tmp@) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
      V&. V&
     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
 ))))
 (assert
  (has_type (Poly%core!option.Option. verus_tmp_token@0) (TYPE%core!option.Option. $
    (TYPE%vstd.rwlock.RwLockToks.pending_writer. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
     $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
      Pred&
 )))))
 (assert
  (has_type (Poly%core!option.Option. token@0) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
      V&. V&
     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
 ))))
 (declare-const perm_opt@1 core!option.Option.)
 (declare-const handle_opt@1 core!option.Option.)
 (declare-const perm$1@1 vstd.atomic.PermissionU64.)
 (declare-const g$1@1 Poly)
 (declare-const verus_tmp$8@1 Int)
 (declare-const res$1@1 Int)
 (declare-const verus_tmp$9@1 Int)
 (declare-const verus_tmp$10@1 Int)
 (declare-const token@1 core!option.Option.)
 (declare-const perm_opt@2 core!option.Option.)
 (declare-const handle_opt@2 core!option.Option.)
 (declare-const pair~602@1 tuple%2.)
 (declare-const perm$3@1 Poly)
 (declare-const handle@1 Poly)
 (declare-const perm$3@2 Poly)
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 (declare-const %%switch_label%%3 Bool)
 (declare-const %%switch_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%9 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (and
     (is-core!option.Option./Some token@0)
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
         $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
          V&. V&
         ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
        ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
           token@0
       ))))
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
       $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
        Pred&
       ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
          self!
    ))))))
    (=>
     (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
     (=>
      (= verus_tmp$5@ core!option.Option./None)
      (=>
       (= verus_tmp_perm_opt@0 verus_tmp$5@)
       (=>
        (= perm_opt@1 verus_tmp_perm_opt@0)
        (=>
         (= verus_tmp$6@ core!option.Option./None)
         (=>
          (= verus_tmp_handle_opt@0 verus_tmp$6@)
          (=>
           (= handle_opt@1 verus_tmp_handle_opt@0)
           (=>
            (= atomic$1@ (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                self!
            ))))
            (=>
             (= tmp%8 (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
                (Poly%vstd.atomic_ghost.AtomicU64. atomic$1@)
             )))
             (=>
              (has_type (Poly%tuple%2. tmp%9@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
                $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                 $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                  Pred&
              ))))
              (=>
               (= pair~602@0 tmp%9@0)
               (=>
                (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                   $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                    V&. V&
                   ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                  ) $ INT
                 ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                   $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                    V&. V&
                   ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                  )
                 ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                 tmp%8 (Poly%tuple%2. pair~602@0)
                )
                (=>
                 (= verus_tmp$7@ pair~602@0)
                 (=>
                  (= verus_tmp_perm$1@ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                      (Poly%tuple%2. verus_tmp$7@)
                  ))))
                  (=>
                   (= verus_tmp_g$1@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp$7@))))
                   (=>
                    (= perm$1@1 verus_tmp_perm$1@)
                    (=>
                     (= g$1@1 verus_tmp_g$1@0)
                     (=>
                      (= tmp%10 (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
                         (Poly%vstd.atomic_ghost.AtomicU64. atomic$1@)
                      )))
                      (and
                       (=>
                        %%location_label%%0
                        (req%vstd.atomic.impl&%9.load. tmp%10 perm$1@1)
                       )
                       (=>
                        (ens%vstd.atomic.impl&%9.load. tmp%10 perm$1@1 result$3@)
                        (=>
                         (= verus_tmp$8@1 result$3@)
                         (=>
                          (= verus_tmp_res$1@ verus_tmp$8@1)
                          (=>
                           (= res$1@1 verus_tmp_res$1@)
                           (=>
                            (= verus_tmp$9@1 result$3@)
                            (=>
                             (= verus_tmp$10@1 result$3@)
                             (or
                              (and
                               (=>
                                (= res$1@1 0)
                                (or
                                 (and
                                  (=>
                                   (is-core!option.Option./Some token@0)
                                   (=>
                                    (= tmp%12 (let
                                      ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                           token@0
                                      )))))
                                      t$
                                    ))
                                    %%switch_label%%4
                                  ))
                                  (=>
                                   (not (is-core!option.Option./Some token@0))
                                   (and
                                    (=>
                                     %%location_label%%1
                                     (req%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                        V&. V&
                                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                    )))
                                    (=>
                                     (ens%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                        V&. V&
                                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                      ) tmp%11
                                     )
                                     (=>
                                      (= tmp%12 tmp%11)
                                      %%switch_label%%4
                                 )))))
                                 (and
                                  (not %%switch_label%%4)
                                  (=>
                                   (= tok@ tmp%12)
                                   (=>
                                    (= tmp%13 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                        self!
                                    ))))
                                    (and
                                     (=>
                                      %%location_label%%2
                                      (req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. $ (TYPE%tuple%2. Pred&. Pred&
                                        $ TYPE%vstd.cell.CellId.
                                       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                        Pred&
                                       ) tmp%13 g$1@1 tok@
                                     ))
                                     (=>
                                      (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. $ (TYPE%tuple%2. Pred&. Pred&
                                        $ TYPE%vstd.cell.CellId.
                                       ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                        Pred&
                                       ) tmp%13 g$1@1 tok@ x@
                                      )
                                      (=>
                                       (= token@1 core!option.Option./None)
                                       (=>
                                        (= verus_tmp_perm$2@ (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. x@))))
                                        (=>
                                         (= verus_tmp_exc_handle@ (tuple%3./tuple%3/2 (%Poly%tuple%3. (Poly%tuple%3. x@))))
                                         (=>
                                          (= perm$2@ verus_tmp_perm$2@)
                                          (=>
                                           (= exc_handle@ verus_tmp_exc_handle@)
                                           (=>
                                            (= perm_opt@2 (core!option.Option./Some perm$2@))
                                            (=>
                                             (= handle_opt@2 (core!option.Option./Some exc_handle@))
                                             %%switch_label%%3
                               ))))))))))))))
                               (=>
                                (not (= res$1@1 0))
                                (=>
                                 (= perm_opt@2 perm_opt@1)
                                 (=>
                                  (= handle_opt@2 handle_opt@1)
                                  (=>
                                   (= token@1 token@0)
                                   %%switch_label%%3
                              )))))
                              (and
                               (not %%switch_label%%3)
                               (=>
                                (= pair~602@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm$1@1) g$1@1))
                                (and
                                 (=>
                                  %%location_label%%3
                                  (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                      V&. V&
                                     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                    ) $ INT
                                   ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                      V&. V&
                                     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                    )
                                   ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                                   tmp%8 (Poly%tuple%2. pair~602@1)
                                 ))
                                 (=>
                                  (= result$2@ result$3@)
                                  (or
                                   (and
                                    (=>
                                     (= result$2@ 0)
                                     (or
                                      (and
                                       (=>
                                        (is-core!option.Option./Some perm_opt@2)
                                        (=>
                                         (= tmp%15 (let
                                           ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                                perm_opt@2
                                           )))))
                                           t$
                                         ))
                                         %%switch_label%%2
                                       ))
                                       (=>
                                        (not (is-core!option.Option./Some perm_opt@2))
                                        (and
                                         (=>
                                          %%location_label%%4
                                          (req%vstd.pervasive.proof_from_false. $ (TYPE%vstd.cell.PointsTo. V&. V&))
                                         )
                                         (=>
                                          (ens%vstd.pervasive.proof_from_false. $ (TYPE%vstd.cell.PointsTo. V&. V&) tmp%14)
                                          (=>
                                           (= tmp%15 tmp%14)
                                           %%switch_label%%2
                                      )))))
                                      (and
                                       (not %%switch_label%%2)
                                       (=>
                                        (= verus_tmp$11@ tmp%15)
                                        (=>
                                         (= verus_tmp_perm$3@0 verus_tmp$11@)
                                         (=>
                                          (= perm$3@1 verus_tmp_perm$3@0)
                                          (or
                                           (and
                                            (=>
                                             (is-core!option.Option./Some handle_opt@2)
                                             (=>
                                              (= tmp%17 (let
                                                ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                                     handle_opt@2
                                                )))))
                                                t$
                                              ))
                                              %%switch_label%%1
                                            ))
                                            (=>
                                             (not (is-core!option.Option./Some handle_opt@2))
                                             (and
                                              (=>
                                               %%location_label%%5
                                               (req%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.writer. $ (TYPE%tuple%2.
                                                  Pred&. Pred& $ TYPE%vstd.cell.CellId.
                                                 ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                  Pred&
                                              ))))
                                              (=>
                                               (ens%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.writer. $ (TYPE%tuple%2.
                                                  Pred&. Pred& $ TYPE%vstd.cell.CellId.
                                                 ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                  Pred&
                                                 )
                                                ) tmp%16
                                               )
                                               (=>
                                                (= tmp%17 tmp%16)
                                                %%switch_label%%1
                                           )))))
                                           (and
                                            (not %%switch_label%%1)
                                            (=>
                                             (= verus_tmp$12@ tmp%17)
                                             (=>
                                              (= verus_tmp_handle@ verus_tmp$12@)
                                              (=>
                                               (= handle@1 verus_tmp_handle@)
                                               (=>
                                                (= tmp%18 (vstd.rwlock.RwLock./RwLock/cell (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                    self!
                                                ))))
                                                (and
                                                 (=>
                                                  %%location_label%%6
                                                  (req%vstd.cell.impl&%3.take. V&. V& tmp%18 perm$3@1)
                                                 )
                                                 (=>
                                                  (has_type perm$3@2 (TYPE%vstd.cell.PointsTo. V&. V&))
                                                  (=>
                                                   (ens%vstd.cell.impl&%3.take. V&. V& tmp%18 perm$3@1 perm$3@2 t$3@)
                                                   (=>
                                                    (= tmp%19 (vstd.rwlock.WriteHandle./WriteHandle handle@1 perm$3@2 (%Poly%vstd.rwlock.RwLock.
                                                       (Poly%vstd.rwlock.RwLock. self!)
                                                    )))
                                                    (=>
                                                     (= tmp%20 (vstd.rwlock.impl&%5.wf_write_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.WriteHandle.
                                                        tmp%19
                                                     )))
                                                     (and
                                                      (=>
                                                       %%location_label%%7
                                                       tmp%20
                                                      )
                                                      (=>
                                                       tmp%20
                                                       (=>
                                                        (= write_handle@ tmp%19)
                                                        (=>
                                                         (= ret! (tuple%2./tuple%2 t$3@ (Poly%vstd.rwlock.WriteHandle. write_handle@)))
                                                         (=>
                                                          %%location_label%%8
                                                          (let
                                                           ((val$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. ret!)))))
                                                           (let
                                                            ((write_handle$ (%Poly%vstd.rwlock.WriteHandle. (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
                                                                  ret!
                                                            ))))))
                                                            (and
                                                             (= (vstd.rwlock.impl&%5.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.WriteHandle.
                                                                write_handle$
                                                               )
                                                              ) self!
                                                             )
                                                             (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!) val$)
                                    )))))))))))))))))))))))))
                                    (=>
                                     (not (= result$2@ 0))
                                     (=>
                                      (= perm$3@2 perm$3@0)
                                      (=>
                                       (= handle@1 handle@0)
                                       %%switch_label%%0
                                   ))))
                                   (and
                                    (not %%switch_label%%0)
                                    (and
                                     (=>
                                      %%location_label%%9
                                      (and
                                       (is-core!option.Option./Some token@1)
                                       (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                                           $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                            V&. V&
                                           ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                          ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                             token@1
                                         ))))
                                        ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                         $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                          Pred&
                                         ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                            self!
                                     )))))))
                                     (=>
                                      %%location_label%%10
                                      (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
 )))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::rwlock::RwLock::acquire_write
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:528:5: 528:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const ret! tuple%2.)
 (declare-const self! vstd.rwlock.RwLock.)
 (declare-const tmp%1 vstd.rwlock.RwLock.)
 (declare-const tmp%2 Bool)
 (declare-const verus_tmp_token@0 core!option.Option.)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 tuple%2.)
 (declare-const pair~219@0 tuple%2.)
 (declare-const verus_tmp_perm@0 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%5 vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_res@ core!result.Result.)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 Poly)
 (declare-const verus_tmp$1@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionBool.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$2@0 Bool)
 (declare-const verus_tmp$3@0 core!result.Result.)
 (declare-const res@0 core!result.Result.)
 (declare-const verus_tmp$4@0 Bool)
 (declare-const result$1@ core!result.Result.)
 (declare-const atomic@ vstd.atomic_ghost.AtomicBool.)
 (declare-const operand1@ Bool)
 (declare-const operand2@ Bool)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const result@ core!result.Result.)
 (declare-const verus_tmp_perm_opt@0 core!option.Option.)
 (declare-const verus_tmp_handle_opt@0 core!option.Option.)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9@0 tuple%2.)
 (declare-const pair~602@0 tuple%2.)
 (declare-const verus_tmp_perm$1@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$1@0 Poly)
 (declare-const tmp%10 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_res$1@ Int)
 (declare-const tmp%11 Poly)
 (declare-const tmp%12 Poly)
 (declare-const tmp%13 Poly)
 (declare-const tok@ Poly)
 (declare-const x@ tuple%3.)
 (declare-const verus_tmp_perm$2@ Poly)
 (declare-const verus_tmp_exc_handle@ Poly)
 (declare-const perm$2@ Poly)
 (declare-const exc_handle@ Poly)
 (declare-const verus_tmp$7@ tuple%2.)
 (declare-const perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const g$1@0 Poly)
 (declare-const verus_tmp$8@0 Int)
 (declare-const res$1@0 Int)
 (declare-const verus_tmp$9@0 Int)
 (declare-const verus_tmp$10@0 Int)
 (declare-const result$3@ Int)
 (declare-const atomic$1@ vstd.atomic_ghost.AtomicU64.)
 (declare-const credit$1@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%14 Poly)
 (declare-const tmp%15 Poly)
 (declare-const verus_tmp_perm$3@0 Poly)
 (declare-const tmp%16 Poly)
 (declare-const tmp%17 Poly)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const tmp%18 Poly)
 (declare-const tmp%19 vstd.rwlock.WriteHandle.)
 (declare-const tmp%20 Bool)
 (declare-const verus_tmp$11@ Poly)
 (declare-const perm$3@0 Poly)
 (declare-const verus_tmp$12@ Poly)
 (declare-const handle@0 Poly)
 (declare-const t$3@ Poly)
 (declare-const write_handle@ vstd.rwlock.WriteHandle.)
 (declare-const verus_tmp$5@ core!option.Option.)
 (declare-const perm_opt@0 core!option.Option.)
 (declare-const verus_tmp$6@ core!option.Option.)
 (declare-const handle_opt@0 core!option.Option.)
 (declare-const result$2@ Int)
 (declare-const done@0 Bool)
 (declare-const verus_tmp@ core!option.Option.)
 (declare-const token@0 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. self!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (declare-const token@1 core!option.Option.)
 (declare-const perm@1 vstd.atomic.PermissionBool.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$2@1 Bool)
 (declare-const verus_tmp$3@1 core!result.Result.)
 (declare-const res@1 core!result.Result.)
 (declare-const verus_tmp$4@1 Bool)
 (declare-const token@2 core!option.Option.)
 (declare-const pair~219@1 tuple%2.)
 (declare-const done@1 Bool)
 (declare-const perm_opt@1 core!option.Option.)
 (declare-const handle_opt@1 core!option.Option.)
 (declare-const perm$1@1 vstd.atomic.PermissionU64.)
 (declare-const g$1@1 Poly)
 (declare-const verus_tmp$8@1 Int)
 (declare-const res$1@1 Int)
 (declare-const verus_tmp$9@1 Int)
 (declare-const verus_tmp$10@1 Int)
 (declare-const token@3 core!option.Option.)
 (declare-const pair~602@1 tuple%2.)
 (declare-const perm$3@1 Poly)
 (declare-const handle@1 Poly)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. tmp%1)))
     (=>
      tmp%2
      (=>
       (= done@0 false)
       (=>
        (= verus_tmp@ core!option.Option./None)
        (=>
         (= verus_tmp_token@0 verus_tmp@)
         (=>
          (= token@1 verus_tmp_token@0)
          (and
           (=>
            %%location_label%%0
            (=>
             done@0
             (and
              (is-core!option.Option./Some token@1)
              (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                  $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                   V&. V&
                  ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                 ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                    token@1
                ))))
               ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                 Pred&
                ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                   self!
           ))))))))
           (and
            (=>
             %%location_label%%1
             (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
            )
            (=>
             (has_type (Poly%core!option.Option. token@2) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                 V&. V&
                ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
             )))
             (=>
              (=>
               done@1
               (and
                (is-core!option.Option./Some token@2)
                (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                    $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                     V&. V&
                    ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                   ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                      token@2
                  ))))
                 ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                  $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                   Pred&
                  ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                     self!
              )))))))
              (=>
               (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
               (=>
                (not (not done@1))
                (and
                 (=>
                  %%location_label%%2
                  (and
                   (is-core!option.Option./Some token@2)
                   (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                        V&. V&
                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                      ) $ TYPE%tuple%0. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                         token@2
                     ))))
                    ) (vstd.rwlock.RwLockToks.impl&%20.id.? $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                     $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                      Pred&
                     ) (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                        self!
                 )))))))
                 (=>
                  %%location_label%%3
                  (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLock::acquire_read
(declare-fun ens%vstd.rwlock.impl&%7.acquire_read. (Dcr Type Dcr Type vstd.rwlock.RwLock.
  vstd.rwlock.ReadHandle.
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLock.)
   (read_handle! vstd.rwlock.ReadHandle.)
  ) (!
   (= (ens%vstd.rwlock.impl&%7.acquire_read. V&. V& Pred&. Pred& self! read_handle!)
    (and
     (has_type (Poly%vstd.rwlock.ReadHandle. read_handle!) (TYPE%vstd.rwlock.ReadHandle.
       V&. V& Pred&. Pred&
     ))
     (= (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle!))
      self!
     )
     (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!) (vstd.rwlock.impl&%6.view.?
       V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle!)
   ))))
   :pattern ((ens%vstd.rwlock.impl&%7.acquire_read. V&. V& Pred&. Pred& self! read_handle!))
   :qid internal_ens__vstd.rwlock.impl&__7.acquire_read._definition
   :skolemid skolem_internal_ens__vstd.rwlock.impl&__7.acquire_read._definition
)))

;; Function-Def crate::vstd::rwlock::RwLock::acquire_read
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:627:9: 691:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const read_handle! vstd.rwlock.ReadHandle.)
 (declare-const self! vstd.rwlock.RwLock.)
 (declare-const tmp%1 vstd.rwlock.RwLock.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 tuple%2.)
 (declare-const pair~108@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%5 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU64.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU64.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const verus_tmp_token@0 core!option.Option.)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7@0 tuple%2.)
 (declare-const pair~373@0 tuple%2.)
 (declare-const verus_tmp_perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$1@0 Poly)
 (declare-const tmp%8 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_res@ core!result.Result.)
 (declare-const tmp%9 Poly)
 (declare-const tmp%10 Poly)
 (declare-const verus_tmp$5@ tuple%2.)
 (declare-const perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const g$1@0 Poly)
 (declare-const verus_tmp$6@0 Int)
 (declare-const verus_tmp$7@0 core!result.Result.)
 (declare-const res@0 core!result.Result.)
 (declare-const verus_tmp$8@0 Int)
 (declare-const result$2@ core!result.Result.)
 (declare-const atomic$1@ vstd.atomic_ghost.AtomicU64.)
 (declare-const operand1@ Int)
 (declare-const operand2@ Int)
 (declare-const credit$1@ vstd.invariant.OpenInvariantCredit.)
 (declare-const verus_tmp_handle_opt@0 core!option.Option.)
 (declare-const tmp%11 Poly)
 (declare-const tmp%12@0 tuple%2.)
 (declare-const pair~673@0 tuple%2.)
 (declare-const verus_tmp_perm$2@ vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g$2@0 Poly)
 (declare-const tmp%13 vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_res$1@ Bool)
 (declare-const tmp%14 Poly)
 (declare-const tmp%15 Poly)
 (declare-const tmp%16 Poly)
 (declare-const tok@ Poly)
 (declare-const x@ tuple%2.)
 (declare-const verus_tmp_exc_handle@ Poly)
 (declare-const exc_handle@ Poly)
 (declare-const verus_tmp$10@ tuple%2.)
 (declare-const perm$2@0 vstd.atomic.PermissionBool.)
 (declare-const g$2@0 Poly)
 (declare-const verus_tmp$11@0 Bool)
 (declare-const res$1@0 Bool)
 (declare-const verus_tmp$12@0 Bool)
 (declare-const verus_tmp$13@0 Bool)
 (declare-const result$4@ Bool)
 (declare-const atomic$2@ vstd.atomic_ghost.AtomicBool.)
 (declare-const credit$2@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%17 Poly)
 (declare-const tmp%18 Poly)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const tmp%19 vstd.rwlock.ReadHandle.)
 (declare-const tmp%20 Bool)
 (declare-const verus_tmp$14@ Poly)
 (declare-const handle@0 Poly)
 (declare-const read_handle@ vstd.rwlock.ReadHandle.)
 (declare-const tmp%21 Poly)
 (declare-const tmp%22@0 tuple%2.)
 (declare-const pair~1033@0 tuple%2.)
 (declare-const verus_tmp_perm$3@0 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$3@0 Poly)
 (declare-const tmp%23 Poly)
 (declare-const tmp%24 Poly)
 (declare-const tmp%25 Poly)
 (declare-const tok$1@ Poly)
 (declare-const tmp%%$1@ Int)
 (declare-const tmp%%$2@ Int)
 (declare-const tmp%%$3@ Int)
 (declare-const tmp%26 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp$15@ tuple%2.)
 (declare-const perm$3@0 vstd.atomic.PermissionU64.)
 (declare-const g$3@0 Poly)
 (declare-const result$5@ Int)
 (declare-const atomic$3@ vstd.atomic_ghost.AtomicU64.)
 (declare-const operand@ Int)
 (declare-const credit$3@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%%@ Int)
 (declare-const verus_tmp$9@ core!option.Option.)
 (declare-const handle_opt@0 core!option.Option.)
 (declare-const result$3@ Bool)
 (declare-const result$1@ core!result.Result.)
 (declare-const val@ Int)
 (declare-const verus_tmp$4@ core!option.Option.)
 (declare-const token@0 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. self!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. tmp%1) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (declare-const perm@1 vstd.atomic.PermissionU64.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~108@1 tuple%2.)
 (declare-const token@1 core!option.Option.)
 (declare-const perm$1@1 vstd.atomic.PermissionU64.)
 (declare-const g$1@1 Poly)
 (declare-const verus_tmp$6@1 Int)
 (declare-const perm$1@2 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp$7@1 core!result.Result.)
 (declare-const res@1 core!result.Result.)
 (declare-const verus_tmp$8@1 Int)
 (declare-const g$1@2 Poly)
 (declare-const token@2 core!option.Option.)
 (declare-const pair~373@1 tuple%2.)
 (declare-const handle_opt@1 core!option.Option.)
 (declare-const perm$2@1 vstd.atomic.PermissionBool.)
 (declare-const g$2@1 Poly)
 (declare-const verus_tmp$11@1 Bool)
 (declare-const res$1@1 Bool)
 (declare-const verus_tmp$12@1 Bool)
 (declare-const verus_tmp$13@1 Bool)
 (declare-const token@3 core!option.Option.)
 (declare-const handle_opt@2 core!option.Option.)
 (declare-const pair~673@1 tuple%2.)
 (declare-const handle@1 Poly)
 (declare-const perm$3@1 vstd.atomic.PermissionU64.)
 (declare-const g$3@1 Poly)
 (declare-const g$3@2 Poly)
 (declare-const perm$3@2 vstd.atomic.PermissionU64.)
 (declare-const pair~1033@1 tuple%2.)
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 (declare-const %%switch_label%%3 Bool)
 (declare-const %%switch_label%%4 Bool)
 (declare-const %%switch_label%%5 Bool)
 (declare-const %%switch_label%%6 Bool)
 (declare-const %%switch_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%9 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%11 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%16 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%17 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%18 Bool)
 (assert
  (not (=>
    (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
    (=>
     (= atomic@ (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
         self!
     ))))
     (=>
      (= tmp%3 (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
         (Poly%vstd.atomic_ghost.AtomicU64. atomic@)
      )))
      (=>
       (has_type (Poly%tuple%2. tmp%4@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
         $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
          $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
           Pred&
       ))))
       (=>
        (= pair~108@0 tmp%4@0)
        (=>
         (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
             V&. V&
            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
           ) $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
             V&. V&
            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
           )
          ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
          tmp%3 (Poly%tuple%2. pair~108@0)
         )
         (=>
          (= verus_tmp@ pair~108@0)
          (=>
           (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
               (Poly%tuple%2. verus_tmp@)
           ))))
           (=>
            (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
            (=>
             (= perm@1 verus_tmp_perm@)
             (=>
              (= g@1 verus_tmp_g@0)
              (=>
               (= tmp%5 (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
                  (Poly%vstd.atomic_ghost.AtomicU64. atomic@)
               )))
               (and
                (=>
                 %%location_label%%0
                 (req%vstd.atomic.impl&%9.load. tmp%5 perm@1)
                )
                (=>
                 (ens%vstd.atomic.impl&%9.load. tmp%5 perm@1 result@)
                 (=>
                  (= verus_tmp$1@1 result@)
                  (=>
                   (= verus_tmp$2@1 result@)
                   (=>
                    (= verus_tmp$3@1 result@)
                    (=>
                     (= pair~108@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm@1) g@1))
                     (and
                      (=>
                       %%location_label%%1
                       (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                           V&. V&
                          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                         ) $ INT
                        ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                           V&. V&
                          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                         )
                        ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                        tmp%3 (Poly%tuple%2. pair~108@1)
                      ))
                      (=>
                       (= val@ result@)
                       (=>
                        (= verus_tmp$4@ core!option.Option./None)
                        (=>
                         (= verus_tmp_token@0 verus_tmp$4@)
                         (=>
                          (= token@1 verus_tmp_token@0)
                          (or
                           (and
                            (=>
                             (< val@ 18446744073709551615)
                             (=>
                              (= atomic$1@ (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                  self!
                              ))))
                              (=>
                               (= operand1@ val@)
                               (and
                                (=>
                                 %%location_label%%2
                                 (uInv 64 (Add val@ 1))
                                )
                                (=>
                                 (= operand2@ (uClip 64 (Add val@ 1)))
                                 (=>
                                  (= tmp%6 (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
                                     (Poly%vstd.atomic_ghost.AtomicU64. atomic$1@)
                                  )))
                                  (=>
                                   (has_type (Poly%tuple%2. tmp%7@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
                                     $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                      $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                       Pred&
                                   ))))
                                   (=>
                                    (= pair~373@0 tmp%7@0)
                                    (=>
                                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                         V&. V&
                                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                       ) $ INT
                                      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                        $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                         V&. V&
                                        ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                       )
                                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                                      tmp%6 (Poly%tuple%2. pair~373@0)
                                     )
                                     (=>
                                      (= verus_tmp$5@ pair~373@0)
                                      (=>
                                       (= verus_tmp_perm$1@0 (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                                           (Poly%tuple%2. verus_tmp$5@)
                                       ))))
                                       (=>
                                        (= verus_tmp_g$1@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp$5@))))
                                        (=>
                                         (= perm$1@1 verus_tmp_perm$1@0)
                                         (=>
                                          (= g$1@1 verus_tmp_g$1@0)
                                          (=>
                                           (= verus_tmp$6@1 (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                                              (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                                                 perm$1@1
                                           ))))))
                                           (=>
                                            (= tmp%8 (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
                                               (Poly%vstd.atomic_ghost.AtomicU64. atomic$1@)
                                            )))
                                            (and
                                             (=>
                                              %%location_label%%3
                                              (req%vstd.atomic.impl&%9.compare_exchange. tmp%8 perm$1@1 operand1@ operand2@)
                                             )
                                             (=>
                                              (ens%vstd.atomic.impl&%9.compare_exchange. tmp%8 perm$1@1 perm$1@2 operand1@ operand2@
                                               result$2@
                                              )
                                              (=>
                                               (= verus_tmp$7@1 result$2@)
                                               (=>
                                                (= verus_tmp_res@ verus_tmp$7@1)
                                                (=>
                                                 (= res@1 verus_tmp_res@)
                                                 (=>
                                                  (= verus_tmp$8@1 (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                                                     (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                                                        perm$1@2
                                                  ))))))
                                                  (or
                                                   (and
                                                    (=>
                                                     (is-core!result.Result./Ok res@1)
                                                     (=>
                                                      (= tmp%10 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                          self!
                                                      ))))
                                                      (and
                                                       (=>
                                                        %%location_label%%4
                                                        (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. $ (TYPE%tuple%2. Pred&. Pred&
                                                          $ TYPE%vstd.cell.CellId.
                                                         ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                          Pred&
                                                         ) tmp%10 g$1@1
                                                       ))
                                                       (=>
                                                        (has_type g$1@2 (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred&
                                                           $ TYPE%vstd.cell.CellId.
                                                          ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                           Pred&
                                                        )))
                                                        (=>
                                                         (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. $ (TYPE%tuple%2. Pred&. Pred&
                                                           $ TYPE%vstd.cell.CellId.
                                                          ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                           Pred&
                                                          ) tmp%10 g$1@1 g$1@2 tmp%9
                                                         )
                                                         (=>
                                                          (= token@2 (core!option.Option./Some tmp%9))
                                                          %%switch_label%%7
                                                    ))))))
                                                    (=>
                                                     (not (is-core!result.Result./Ok res@1))
                                                     (=>
                                                      (= g$1@2 g$1@1)
                                                      (=>
                                                       (= token@2 token@1)
                                                       %%switch_label%%7
                                                   ))))
                                                   (and
                                                    (not %%switch_label%%7)
                                                    (=>
                                                     (= pair~373@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm$1@2) g$1@2))
                                                     (and
                                                      (=>
                                                       %%location_label%%5
                                                       (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                                          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                           V&. V&
                                                          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                         ) $ INT
                                                        ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                                          $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                           V&. V&
                                                          ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                         )
                                                        ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                                                        tmp%6 (Poly%tuple%2. pair~373@1)
                                                      ))
                                                      (=>
                                                       (= result$1@ result$2@)
                                                       (or
                                                        (and
                                                         (=>
                                                          (is-core!result.Result./Ok result$1@)
                                                          (=>
                                                           (= verus_tmp$9@ core!option.Option./None)
                                                           (=>
                                                            (= verus_tmp_handle_opt@0 verus_tmp$9@)
                                                            (=>
                                                             (= handle_opt@1 verus_tmp_handle_opt@0)
                                                             (=>
                                                              (= atomic$2@ (vstd.rwlock.RwLock./RwLock/exc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                                  self!
                                                              ))))
                                                              (=>
                                                               (= tmp%11 (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
                                                                  (Poly%vstd.atomic_ghost.AtomicBool. atomic$2@)
                                                               )))
                                                               (=>
                                                                (has_type (Poly%tuple%2. tmp%12@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
                                                                  $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                                                   $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                    Pred&
                                                                ))))
                                                                (=>
                                                                 (= pair~673@0 tmp%12@0)
                                                                 (=>
                                                                  (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                                                     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                      V&. V&
                                                                     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                    ) $ INT
                                                                   ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                                                                     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                      V&. V&
                                                                     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                    )
                                                                   ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
                                                                   tmp%11 (Poly%tuple%2. pair~673@0)
                                                                  )
                                                                  (=>
                                                                   (= verus_tmp$10@ pair~673@0)
                                                                   (=>
                                                                    (= verus_tmp_perm$2@ (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                                                                        (Poly%tuple%2. verus_tmp$10@)
                                                                    ))))
                                                                    (=>
                                                                     (= verus_tmp_g$2@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp$10@))))
                                                                     (=>
                                                                      (= perm$2@1 verus_tmp_perm$2@)
                                                                      (=>
                                                                       (= g$2@1 verus_tmp_g$2@0)
                                                                       (=>
                                                                        (= tmp%13 (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (%Poly%vstd.atomic_ghost.AtomicBool.
                                                                           (Poly%vstd.atomic_ghost.AtomicBool. atomic$2@)
                                                                        )))
                                                                        (and
                                                                         (=>
                                                                          %%location_label%%6
                                                                          (req%vstd.atomic.impl&%1.load. tmp%13 perm$2@1)
                                                                         )
                                                                         (=>
                                                                          (ens%vstd.atomic.impl&%1.load. tmp%13 perm$2@1 result$4@)
                                                                          (=>
                                                                           (= verus_tmp$11@1 result$4@)
                                                                           (=>
                                                                            (= verus_tmp_res$1@ verus_tmp$11@1)
                                                                            (=>
                                                                             (= res$1@1 verus_tmp_res$1@)
                                                                             (=>
                                                                              (= verus_tmp$12@1 result$4@)
                                                                              (=>
                                                                               (= verus_tmp$13@1 result$4@)
                                                                               (or
                                                                                (and
                                                                                 (=>
                                                                                  (= res$1@1 false)
                                                                                  (or
                                                                                   (and
                                                                                    (=>
                                                                                     (is-core!option.Option./Some token@2)
                                                                                     (=>
                                                                                      (= tmp%15 (let
                                                                                        ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                                                                             token@2
                                                                                        )))))
                                                                                        t$
                                                                                      ))
                                                                                      %%switch_label%%6
                                                                                    ))
                                                                                    (=>
                                                                                     (not (is-core!option.Option./Some token@2))
                                                                                     (and
                                                                                      (=>
                                                                                       %%location_label%%7
                                                                                       (req%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
                                                                                         $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                          V&. V&
                                                                                         ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                      )))
                                                                                      (=>
                                                                                       (ens%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
                                                                                         $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                          V&. V&
                                                                                         ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                        ) tmp%14
                                                                                       )
                                                                                       (=>
                                                                                        (= tmp%15 tmp%14)
                                                                                        %%switch_label%%6
                                                                                   )))))
                                                                                   (and
                                                                                    (not %%switch_label%%6)
                                                                                    (=>
                                                                                     (= tok@ tmp%15)
                                                                                     (=>
                                                                                      (= tmp%16 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                                                          self!
                                                                                      ))))
                                                                                      (and
                                                                                       (=>
                                                                                        %%location_label%%8
                                                                                        (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. $ (TYPE%tuple%2. Pred&. Pred&
                                                                                          $ TYPE%vstd.cell.CellId.
                                                                                         ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                          Pred&
                                                                                         ) tmp%16 g$2@1 tok@
                                                                                       ))
                                                                                       (=>
                                                                                        (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. $ (TYPE%tuple%2. Pred&. Pred&
                                                                                          $ TYPE%vstd.cell.CellId.
                                                                                         ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                          Pred&
                                                                                         ) tmp%16 g$2@1 tok@ x@
                                                                                        )
                                                                                        (=>
                                                                                         (= token@3 core!option.Option./None)
                                                                                         (=>
                                                                                          (= verus_tmp_exc_handle@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. x@))))
                                                                                          (=>
                                                                                           (= exc_handle@ verus_tmp_exc_handle@)
                                                                                           (=>
                                                                                            (= handle_opt@2 (core!option.Option./Some exc_handle@))
                                                                                            %%switch_label%%5
                                                                                 )))))))))))
                                                                                 (=>
                                                                                  (not (= res$1@1 false))
                                                                                  (=>
                                                                                   (= handle_opt@2 handle_opt@1)
                                                                                   (=>
                                                                                    (= token@3 token@2)
                                                                                    %%switch_label%%5
                                                                                ))))
                                                                                (and
                                                                                 (not %%switch_label%%5)
                                                                                 (=>
                                                                                  (= pair~673@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionBool. perm$2@1) g$2@1))
                                                                                  (and
                                                                                   (=>
                                                                                    %%location_label%%9
                                                                                    (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                                                                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                        V&. V&
                                                                                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                      ) $ INT
                                                                                     ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                                                                                       $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                        V&. V&
                                                                                       ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                      )
                                                                                     ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_exc.)
                                                                                     tmp%11 (Poly%tuple%2. pair~673@1)
                                                                                   ))
                                                                                   (=>
                                                                                    (= result$3@ result$4@)
                                                                                    (or
                                                                                     (and
                                                                                      (=>
                                                                                       (= result$3@ false)
                                                                                       (or
                                                                                        (and
                                                                                         (=>
                                                                                          (is-core!option.Option./Some handle_opt@2)
                                                                                          (=>
                                                                                           (= tmp%18 (let
                                                                                             ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                                                                                  handle_opt@2
                                                                                             )))))
                                                                                             t$
                                                                                           ))
                                                                                           %%switch_label%%3
                                                                                         ))
                                                                                         (=>
                                                                                          (not (is-core!option.Option./Some handle_opt@2))
                                                                                          (and
                                                                                           (=>
                                                                                            %%location_label%%10
                                                                                            (req%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.reader. $ (TYPE%tuple%2.
                                                                                               Pred&. Pred& $ TYPE%vstd.cell.CellId.
                                                                                              ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                               Pred&
                                                                                           ))))
                                                                                           (=>
                                                                                            (ens%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.reader. $ (TYPE%tuple%2.
                                                                                               Pred&. Pred& $ TYPE%vstd.cell.CellId.
                                                                                              ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                               Pred&
                                                                                              )
                                                                                             ) tmp%17
                                                                                            )
                                                                                            (=>
                                                                                             (= tmp%18 tmp%17)
                                                                                             %%switch_label%%3
                                                                                        )))))
                                                                                        (and
                                                                                         (not %%switch_label%%3)
                                                                                         (=>
                                                                                          (= verus_tmp$14@ tmp%18)
                                                                                          (=>
                                                                                           (= verus_tmp_handle@ verus_tmp$14@)
                                                                                           (=>
                                                                                            (= handle@1 verus_tmp_handle@)
                                                                                            (=>
                                                                                             (= tmp%19 (vstd.rwlock.ReadHandle./ReadHandle handle@1 (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                                                                 self!
                                                                                             ))))
                                                                                             (=>
                                                                                              (= tmp%20 (vstd.rwlock.impl&%6.wf_read_handle.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle.
                                                                                                 tmp%19
                                                                                              )))
                                                                                              (and
                                                                                               (=>
                                                                                                %%location_label%%11
                                                                                                tmp%20
                                                                                               )
                                                                                               (=>
                                                                                                tmp%20
                                                                                                (=>
                                                                                                 (= read_handle@ tmp%19)
                                                                                                 (=>
                                                                                                  (= read_handle! read_handle@)
                                                                                                  (and
                                                                                                   (=>
                                                                                                    %%location_label%%12
                                                                                                    (= (vstd.rwlock.impl&%6.rwlock.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle!))
                                                                                                     self!
                                                                                                   ))
                                                                                                   (=>
                                                                                                    %%location_label%%13
                                                                                                    (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!) (vstd.rwlock.impl&%6.view.?
                                                                                                      V&. V& Pred&. Pred& (Poly%vstd.rwlock.ReadHandle. read_handle!)
                                                                                      ))))))))))))))))
                                                                                      (=>
                                                                                       (not (= result$3@ false))
                                                                                       (=>
                                                                                        (= atomic$3@ (vstd.rwlock.RwLock./RwLock/rc (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                                                            self!
                                                                                        ))))
                                                                                        (=>
                                                                                         (= operand@ 1)
                                                                                         (=>
                                                                                          (= tmp%21 (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
                                                                                             (Poly%vstd.atomic_ghost.AtomicU64. atomic$3@)
                                                                                          )))
                                                                                          (=>
                                                                                           (has_type (Poly%tuple%2. tmp%22@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
                                                                                             $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.)
                                                                                              $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                               Pred&
                                                                                           ))))
                                                                                           (=>
                                                                                            (= pair~1033@0 tmp%22@0)
                                                                                            (=>
                                                                                             (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                                                                                $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                                 V&. V&
                                                                                                ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                               ) $ INT
                                                                                              ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                                                                                $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                                 V&. V&
                                                                                                ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                               )
                                                                                              ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                                                                                              tmp%21 (Poly%tuple%2. pair~1033@0)
                                                                                             )
                                                                                             (=>
                                                                                              (= verus_tmp$15@ pair~1033@0)
                                                                                              (=>
                                                                                               (= verus_tmp_perm$3@0 (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                                                                                                   (Poly%tuple%2. verus_tmp$15@)
                                                                                               ))))
                                                                                               (=>
                                                                                                (= verus_tmp_g$3@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp$15@))))
                                                                                                (=>
                                                                                                 (= perm$3@1 verus_tmp_perm$3@0)
                                                                                                 (=>
                                                                                                  (= g$3@1 verus_tmp_g$3@0)
                                                                                                  (=>
                                                                                                   (= tmp%%$1@ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                                                                                                      (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                                                                                                         perm$3@1
                                                                                                   ))))))
                                                                                                   (=>
                                                                                                    (= tmp%%$2@ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                                                                                                       (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                                                                                                          perm$3@1
                                                                                                    ))))))
                                                                                                    (=>
                                                                                                     (= tmp%%$3@ (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                                                                                                         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                                                                                                            perm$3@1
                                                                                                        ))))
                                                                                                       ) operand@
                                                                                                     ))
                                                                                                     (or
                                                                                                      (and
                                                                                                       (=>
                                                                                                        (is-core!option.Option./Some token@3)
                                                                                                        (=>
                                                                                                         (= tmp%24 (let
                                                                                                           ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                                                                                                token@3
                                                                                                           )))))
                                                                                                           t$
                                                                                                         ))
                                                                                                         %%switch_label%%4
                                                                                                       ))
                                                                                                       (=>
                                                                                                        (not (is-core!option.Option./Some token@3))
                                                                                                        (and
                                                                                                         (=>
                                                                                                          %%location_label%%14
                                                                                                          (req%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
                                                                                                            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                                             V&. V&
                                                                                                            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                                         )))
                                                                                                         (=>
                                                                                                          (ens%vstd.pervasive.proof_from_false. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
                                                                                                            $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                                             V&. V&
                                                                                                            ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                                           ) tmp%23
                                                                                                          )
                                                                                                          (=>
                                                                                                           (= tmp%24 tmp%23)
                                                                                                           %%switch_label%%4
                                                                                                      )))))
                                                                                                      (and
                                                                                                       (not %%switch_label%%4)
                                                                                                       (=>
                                                                                                        (= tok$1@ tmp%24)
                                                                                                        (=>
                                                                                                         (= tmp%25 (vstd.rwlock.RwLock./RwLock/inst (%Poly%vstd.rwlock.RwLock. (Poly%vstd.rwlock.RwLock.
                                                                                                             self!
                                                                                                         ))))
                                                                                                         (and
                                                                                                          (=>
                                                                                                           %%location_label%%15
                                                                                                           (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. $ (TYPE%tuple%2. Pred&.
                                                                                                             Pred& $ TYPE%vstd.cell.CellId.
                                                                                                            ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                                             Pred&
                                                                                                            ) tmp%25 g$3@1 tok$1@
                                                                                                          ))
                                                                                                          (=>
                                                                                                           (has_type g$3@2 (TYPE%vstd.rwlock.RwLockToks.flag_rc. $ (TYPE%tuple%2. Pred&. Pred&
                                                                                                              $ TYPE%vstd.cell.CellId.
                                                                                                             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                                              Pred&
                                                                                                           )))
                                                                                                           (=>
                                                                                                            (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. $ (TYPE%tuple%2. Pred&.
                                                                                                              Pred& $ TYPE%vstd.cell.CellId.
                                                                                                             ) $ (TYPE%vstd.cell.PointsTo. V&. V&) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&.
                                                                                                              Pred&
                                                                                                             ) tmp%25 g$3@1 g$3@2 tok$1@
                                                                                                            )
                                                                                                            (=>
                                                                                                             (= tmp%26 (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
                                                                                                                (Poly%vstd.atomic_ghost.AtomicU64. atomic$3@)
                                                                                                             )))
                                                                                                             (and
                                                                                                              (=>
                                                                                                               %%location_label%%16
                                                                                                               (req%vstd.atomic.impl&%9.fetch_sub. tmp%26 perm$3@1 operand@)
                                                                                                              )
                                                                                                              (=>
                                                                                                               (ens%vstd.atomic.impl&%9.fetch_sub. tmp%26 perm$3@1 perm$3@2 operand@ result$5@)
                                                                                                               (=>
                                                                                                                (= pair~1033@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm$3@2) g$3@2))
                                                                                                                (and
                                                                                                                 (=>
                                                                                                                  %%location_label%%17
                                                                                                                  (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
                                                                                                                     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                                                      V&. V&
                                                                                                                     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                                                    ) $ INT
                                                                                                                   ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                                                                                                     $ (TYPE%tuple%2. Pred&. Pred& $ TYPE%vstd.cell.CellId.) $ (TYPE%vstd.cell.PointsTo.
                                                                                                                      V&. V&
                                                                                                                     ) $ (TYPE%vstd.rwlock.InternalPred. V&. V& Pred&. Pred&)
                                                                                                                    )
                                                                                                                   ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. $ TYPE%vstd.rwlock.InvariantPredicate_auto_RwLock_rc.)
                                                                                                                   tmp%21 (Poly%tuple%2. pair~1033@1)
                                                                                                                 ))
                                                                                                                 (=>
                                                                                                                  (= tmp%%@ result$5@)
                                                                                                                  (=>
                                                                                                                   (= handle@1 handle@0)
                                                                                                                   %%switch_label%%2
                                                                                     ))))))))))))))))))))))))))))))
                                                                                     (and
                                                                                      (not %%switch_label%%2)
                                                                                      %%switch_label%%1
                                                         )))))))))))))))))))))))))))))
                                                         (=>
                                                          (not (is-core!result.Result./Ok result$1@))
                                                          (=>
                                                           (= pair~673@1 pair~673@0)
                                                           (=>
                                                            (= perm$2@1 perm$2@0)
                                                            (=>
                                                             (= g$2@1 g$2@0)
                                                             (=>
                                                              (= verus_tmp$11@1 verus_tmp$11@0)
                                                              (=>
                                                               (= res$1@1 res$1@0)
                                                               (=>
                                                                (= verus_tmp$12@1 verus_tmp$12@0)
                                                                (=>
                                                                 (= verus_tmp$13@1 verus_tmp$13@0)
                                                                 (=>
                                                                  (= handle@1 handle@0)
                                                                  (=>
                                                                   (= pair~1033@1 pair~1033@0)
                                                                   (=>
                                                                    (= perm$3@2 perm$3@0)
                                                                    (=>
                                                                     (= g$3@2 g$3@0)
                                                                     (=>
                                                                      (= handle_opt@2 handle_opt@0)
                                                                      (=>
                                                                       (= token@3 token@2)
                                                                       %%switch_label%%1
                                                        )))))))))))))))
                                                        (and
                                                         (not %%switch_label%%1)
                                                         %%switch_label%%0
                            )))))))))))))))))))))))))))))
                            (=>
                             (not (< val@ 18446744073709551615))
                             (=>
                              (= pair~373@1 pair~373@0)
                              (=>
                               (= perm$1@2 perm$1@0)
                               (=>
                                (= g$1@2 g$1@0)
                                (=>
                                 (= verus_tmp$6@1 verus_tmp$6@0)
                                 (=>
                                  (= verus_tmp$7@1 verus_tmp$7@0)
                                  (=>
                                   (= res@1 res@0)
                                   (=>
                                    (= verus_tmp$8@1 verus_tmp$8@0)
                                    (=>
                                     (= pair~673@1 pair~673@0)
                                     (=>
                                      (= perm$2@1 perm$2@0)
                                      (=>
                                       (= g$2@1 g$2@0)
                                       (=>
                                        (= verus_tmp$11@1 verus_tmp$11@0)
                                        (=>
                                         (= res$1@1 res$1@0)
                                         (=>
                                          (= verus_tmp$12@1 verus_tmp$12@0)
                                          (=>
                                           (= verus_tmp$13@1 verus_tmp$13@0)
                                           (=>
                                            (= handle@1 handle@0)
                                            (=>
                                             (= pair~1033@1 pair~1033@0)
                                             (=>
                                              (= perm$3@2 perm$3@0)
                                              (=>
                                               (= g$3@2 g$3@0)
                                               (=>
                                                (= handle_opt@2 handle_opt@0)
                                                (=>
                                                 (= token@3 token@1)
                                                 %%switch_label%%0
                           ))))))))))))))))))))))
                           (and
                            (not %%switch_label%%0)
                            (=>
                             %%location_label%%18
                             (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
 ))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::rwlock::RwLock::acquire_read
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:619:5: 619:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const read_handle! vstd.rwlock.ReadHandle.)
 (declare-const self! vstd.rwlock.RwLock.)
 (declare-const tmp%1 vstd.rwlock.RwLock.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 tuple%2.)
 (declare-const pair~108@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%5 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU64.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU64.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (declare-const verus_tmp_token@0 core!option.Option.)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7@0 tuple%2.)
 (declare-const pair~373@0 tuple%2.)
 (declare-const verus_tmp_perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$1@0 Poly)
 (declare-const tmp%8 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_res@ core!result.Result.)
 (declare-const tmp%9 Poly)
 (declare-const tmp%10 Poly)
 (declare-const verus_tmp$5@ tuple%2.)
 (declare-const perm$1@0 vstd.atomic.PermissionU64.)
 (declare-const g$1@0 Poly)
 (declare-const verus_tmp$6@0 Int)
 (declare-const verus_tmp$7@0 core!result.Result.)
 (declare-const res@0 core!result.Result.)
 (declare-const verus_tmp$8@0 Int)
 (declare-const result$2@ core!result.Result.)
 (declare-const atomic$1@ vstd.atomic_ghost.AtomicU64.)
 (declare-const operand1@ Int)
 (declare-const operand2@ Int)
 (declare-const credit$1@ vstd.invariant.OpenInvariantCredit.)
 (declare-const verus_tmp_handle_opt@0 core!option.Option.)
 (declare-const tmp%11 Poly)
 (declare-const tmp%12@0 tuple%2.)
 (declare-const pair~673@0 tuple%2.)
 (declare-const verus_tmp_perm$2@ vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g$2@0 Poly)
 (declare-const tmp%13 vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_res$1@ Bool)
 (declare-const tmp%14 Poly)
 (declare-const tmp%15 Poly)
 (declare-const tmp%16 Poly)
 (declare-const tok@ Poly)
 (declare-const x@ tuple%2.)
 (declare-const verus_tmp_exc_handle@ Poly)
 (declare-const exc_handle@ Poly)
 (declare-const verus_tmp$10@ tuple%2.)
 (declare-const perm$2@0 vstd.atomic.PermissionBool.)
 (declare-const g$2@0 Poly)
 (declare-const verus_tmp$11@0 Bool)
 (declare-const res$1@0 Bool)
 (declare-const verus_tmp$12@0 Bool)
 (declare-const verus_tmp$13@0 Bool)
 (declare-const result$4@ Bool)
 (declare-const atomic$2@ vstd.atomic_ghost.AtomicBool.)
 (declare-const credit$2@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%17 Poly)
 (declare-const tmp%18 Poly)
 (declare-const verus_tmp_handle@ Poly)
 (declare-const tmp%19 vstd.rwlock.ReadHandle.)
 (declare-const tmp%20 Bool)
 (declare-const verus_tmp$14@ Poly)
 (declare-const handle@0 Poly)
 (declare-const read_handle@ vstd.rwlock.ReadHandle.)
 (declare-const tmp%21 Poly)
 (declare-const tmp%22@0 tuple%2.)
 (declare-const pair~1033@0 tuple%2.)
 (declare-const verus_tmp_perm$3@0 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g$3@0 Poly)
 (declare-const tmp%23 Poly)
 (declare-const tmp%24 Poly)
 (declare-const tmp%25 Poly)
 (declare-const tok$1@ Poly)
 (declare-const tmp%%$1@ Int)
 (declare-const tmp%%$2@ Int)
 (declare-const tmp%%$3@ Int)
 (declare-const tmp%26 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp$15@ tuple%2.)
 (declare-const perm$3@0 vstd.atomic.PermissionU64.)
 (declare-const g$3@0 Poly)
 (declare-const result$5@ Int)
 (declare-const atomic$3@ vstd.atomic_ghost.AtomicU64.)
 (declare-const operand@ Int)
 (declare-const credit$3@ vstd.invariant.OpenInvariantCredit.)
 (declare-const tmp%%@ Int)
 (declare-const verus_tmp$9@ core!option.Option.)
 (declare-const handle_opt@0 core!option.Option.)
 (declare-const result$3@ Bool)
 (declare-const result$1@ core!result.Result.)
 (declare-const val@ Int)
 (declare-const verus_tmp$4@ core!option.Option.)
 (declare-const token@0 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. self!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 (declare-const perm@1 vstd.atomic.PermissionU64.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~108@1 tuple%2.)
 (declare-const token@1 core!option.Option.)
 (declare-const perm$1@1 vstd.atomic.PermissionU64.)
 (declare-const g$1@1 Poly)
 (declare-const verus_tmp$6@1 Int)
 (declare-const verus_tmp$7@1 core!result.Result.)
 (declare-const res@1 core!result.Result.)
 (declare-const verus_tmp$8@1 Int)
 (declare-const pair~373@1 tuple%2.)
 (declare-const handle_opt@1 core!option.Option.)
 (declare-const perm$2@1 vstd.atomic.PermissionBool.)
 (declare-const g$2@1 Poly)
 (declare-const verus_tmp$11@1 Bool)
 (declare-const res$1@1 Bool)
 (declare-const verus_tmp$12@1 Bool)
 (declare-const verus_tmp$13@1 Bool)
 (declare-const pair~673@1 tuple%2.)
 (declare-const handle@1 Poly)
 (declare-const perm$3@1 vstd.atomic.PermissionU64.)
 (declare-const g$3@1 Poly)
 (declare-const pair~1033@1 tuple%2.)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. tmp%1)))
     (=>
      tmp%2
      (=>
       %%location_label%%0
       (vstd.rwlock.impl&%4.wf.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLock::into_inner
(declare-fun ens%vstd.rwlock.impl&%7.into_inner. (Dcr Type Dcr Type vstd.rwlock.RwLock.
  Poly
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLock.)
   (v! Poly)
  ) (!
   (= (ens%vstd.rwlock.impl&%7.into_inner. V&. V& Pred&. Pred& self! v!) (and
     (has_type v! V&)
     (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!) v!)
   ))
   :pattern ((ens%vstd.rwlock.impl&%7.into_inner. V&. V& Pred&. Pred& self! v!))
   :qid internal_ens__vstd.rwlock.impl&__7.into_inner._definition
   :skolemid skolem_internal_ens__vstd.rwlock.impl&__7.into_inner._definition
)))

;; Function-Def crate::vstd::rwlock::RwLock::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:696:5: 696:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const v! Poly)
 (declare-const self! vstd.rwlock.RwLock.)
 (declare-const tmp%%@ tuple%2.)
 (declare-const v@ Poly)
 (declare-const _write_handle@ vstd.rwlock.WriteHandle.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLock. self!) (TYPE%vstd.rwlock.RwLock. V&. V& Pred&.
    Pred&
 )))
 (assert
  (tr_bound%vstd.rwlock.RwLockPredicate. Pred&. Pred& V&. V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd.rwlock.impl&%7.acquire_write. V&. V& Pred&. Pred& self! tmp%%@)
    (=>
     (= v@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
     (=>
      (= _write_handle@ (%Poly%vstd.rwlock.WriteHandle. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= v! v@)
       (=>
        %%location_label%%0
        (vstd.rwlock.impl&%7.inv.? V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLock. self!) v!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
