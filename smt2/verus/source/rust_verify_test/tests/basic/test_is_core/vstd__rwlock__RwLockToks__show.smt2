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

;; MODULE 'module vstd::rwlock::RwLockToks::show'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.is_None. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.remove. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.get_Some_0. fuel%vstd.std_specs.option.impl&%0.is_None.
  fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.
  fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc. fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared.
  fuel%vstd.multiset.impl&%0.insert. fuel%vstd.multiset.impl&%0.remove.
))

;; Datatypes
(declare-sort vstd.multiset.Multiset<tuple%0.>. 0)
(declare-datatypes ((core!option.Option. 0) (core!marker.PhantomData. 0) (vstd.rwlock.RwLockToks.State.
   0
  ) (tuple%0. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!marker.PhantomData./PhantomData)) ((vstd.rwlock.RwLockToks.State./State (vstd.rwlock.RwLockToks.State./State/?k
     Poly
    ) (vstd.rwlock.RwLockToks.State./State/?pred core!marker.PhantomData.) (vstd.rwlock.RwLockToks.State./State/?flag_exc
     Bool
    ) (vstd.rwlock.RwLockToks.State./State/?flag_rc Int) (vstd.rwlock.RwLockToks.State./State/?storage
     core!option.Option.
    ) (vstd.rwlock.RwLockToks.State./State/?pending_writer core!option.Option.) (vstd.rwlock.RwLockToks.State./State/?writer
     core!option.Option.
    ) (vstd.rwlock.RwLockToks.State./State/?pending_reader vstd.multiset.Multiset<tuple%0.>.)
    (vstd.rwlock.RwLockToks.State./State/?reader Poly)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd.rwlock.RwLockToks.State./State/k (vstd.rwlock.RwLockToks.State.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.State./State/pred (vstd.rwlock.RwLockToks.State.)
 core!marker.PhantomData.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/flag_exc (vstd.rwlock.RwLockToks.State.)
 Bool
)
(declare-fun vstd.rwlock.RwLockToks.State./State/flag_rc (vstd.rwlock.RwLockToks.State.)
 Int
)
(declare-fun vstd.rwlock.RwLockToks.State./State/storage (vstd.rwlock.RwLockToks.State.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/pending_writer (vstd.rwlock.RwLockToks.State.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/writer (vstd.rwlock.RwLockToks.State.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/pending_reader (vstd.rwlock.RwLockToks.State.)
 vstd.multiset.Multiset<tuple%0.>.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/reader (vstd.rwlock.RwLockToks.State.)
 Poly
)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!marker.PhantomData. (Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.State. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.Multiset<tuple%0.>.)
 Poly
)
(declare-fun %Poly%vstd.multiset.Multiset<tuple%0.>. (Poly) vstd.multiset.Multiset<tuple%0.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!marker.PhantomData. (core!marker.PhantomData.) Poly)
(declare-fun %Poly%core!marker.PhantomData. (Poly) core!marker.PhantomData.)
(declare-fun Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.State.) Poly)
(declare-fun %Poly%vstd.rwlock.RwLockToks.State. (Poly) vstd.rwlock.RwLockToks.State.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.State. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__State_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__State_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.State. (%Poly%vstd.rwlock.RwLockToks.State. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__State_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__State_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_k! Poly)
   (_pred! core!marker.PhantomData.) (_flag_exc! Bool) (_flag_rc! Int) (_storage! core!option.Option.)
   (_pending_writer! core!option.Option.) (_writer! core!option.Option.) (_pending_reader!
    vstd.multiset.Multiset<tuple%0.>.
   ) (_reader! Poly)
  ) (!
   (=>
    (and
     (has_type _k! K&)
     (<= 0 _flag_rc!)
     (has_type (Poly%core!option.Option. _storage!) (TYPE%core!option.Option. V&. V&))
     (has_type (Poly%core!option.Option. _pending_writer!) (TYPE%core!option.Option. $ TYPE%tuple%0.))
     (has_type (Poly%core!option.Option. _writer!) (TYPE%core!option.Option. $ TYPE%tuple%0.))
     (has_type _reader! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.State./State _k!
       _pred! _flag_exc! _flag_rc! _storage! _pending_writer! _writer! _pending_reader!
       _reader!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.State./State
       _k! _pred! _flag_exc! _flag_rc! _storage! _pending_writer! _writer! _pending_reader!
       _reader!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.State./State_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/k x) (vstd.rwlock.RwLockToks.State./State/?k
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/k x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/k_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/k_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
       x
      )
     ) K&
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/k_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/k_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/pred x) (vstd.rwlock.RwLockToks.State./State/?pred
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pred x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/pred_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pred_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/flag_exc x) (vstd.rwlock.RwLockToks.State./State/?flag_exc
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/flag_exc x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/flag_exc_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/flag_exc_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/flag_rc x) (vstd.rwlock.RwLockToks.State./State/?flag_rc
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/flag_rc x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/flag_rc_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/flag_rc_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (<= 0 (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
       x
   ))))
   :pattern ((vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/flag_rc_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/flag_rc_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/storage x) (vstd.rwlock.RwLockToks.State./State/?storage
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/storage x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/storage_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/storage_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
        x
      ))
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/storage_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/storage_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/pending_writer x) (vstd.rwlock.RwLockToks.State./State/?pending_writer
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pending_writer x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/pending_writer_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pending_writer_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/pending_writer
       (%Poly%vstd.rwlock.RwLockToks.State. x)
      )
     ) (TYPE%core!option.Option. $ TYPE%tuple%0.)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/pending_writer_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pending_writer_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/writer x) (vstd.rwlock.RwLockToks.State./State/?writer
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/writer x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/writer_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/writer_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
        x
      ))
     ) (TYPE%core!option.Option. $ TYPE%tuple%0.)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/writer_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/writer_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/pending_reader x) (vstd.rwlock.RwLockToks.State./State/?pending_reader
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pending_reader x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/pending_reader_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pending_reader_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/reader x) (vstd.rwlock.RwLockToks.State./State/?reader
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/reader x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/reader_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/reader_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
       x
      )
     ) (TYPE%vstd.multiset.Multiset. V&. V&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/reader_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/reader_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (vstd.rwlock.RwLockToks.State./State/k x)) (height (Poly%vstd.rwlock.RwLockToks.State.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.State./State/k x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/k
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/k
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (Poly%core!marker.PhantomData. (vstd.rwlock.RwLockToks.State./State/pred
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.State. x))
   ))
   :pattern ((height (Poly%core!marker.PhantomData. (vstd.rwlock.RwLockToks.State./State/pred
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/pred
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/pred
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/storage
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.State. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/storage
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/storage
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/storage
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (vstd.rwlock.RwLockToks.State./State/reader x)) (height (Poly%vstd.rwlock.RwLockToks.State.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.State./State/reader x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/reader
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/reader
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

;; Function-Decl crate::vstd::invariant::InvariantPredicate::inv
(declare-fun vstd.invariant.InvariantPredicate.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.invariant.InvariantPredicate.inv%default%.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::multiset::Multiset::add
(declare-fun vstd.multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::singleton
(declare-fun vstd.multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::insert
(declare-fun vstd.multiset.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_start
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::multiset::Multiset::count
(declare-fun vstd.multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::sub
(declare-fun vstd.multiset.impl&%0.sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::remove
(declare-fun vstd.multiset.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

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

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_end
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_start
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_end
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_exc
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_exc.? (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_shared
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_shared.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::next
(declare-fun vstd.rwlock.RwLockToks.impl&%23.next.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::multiset::Multiset::empty
(declare-fun vstd.multiset.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::initialize_full
(declare-fun vstd.rwlock.RwLockToks.impl&%23.initialize_full.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::init
(declare-fun vstd.rwlock.RwLockToks.impl&%23.init.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

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

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_start
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_flag_rc$ (nClip (Add (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    pre!
                   )
                  ) 1
              ))))
              (let
               ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.insert.?
                   $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                   (Poly%tuple%0. tuple%0./tuple%0)
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                   post!
                  )
                 ) update_tmp_pending_reader$1
                )
                (and
                 (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    post!
                   )
                  ) update_tmp_flag_rc$
                 )
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_reader$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_writer$
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_pending_writer$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_storage$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_flag_exc$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_pred$
                       )
                       (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_k$
    ))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start.?_definition
))))

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

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_end
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? K&. K& V&. V& Pred&. Pred& pre!
      post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (let
               ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
                  )
                 ) false
                )
                (and
                 (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                    update_tmp_pending_reader$
                   ) (Poly%tuple%0. tuple%0./tuple%0)
                  ) 1
                 )
                 (let
                  ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                      $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                      (Poly%tuple%0. tuple%0./tuple%0)
                  ))))
                  (and
                   (let
                    ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                         (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                    )))))
                    (let
                     ((update_tmp_reader$1 (vstd.multiset.impl&%0.insert.? V&. V& update_tmp_reader$ x$)))
                     (let
                      ((tmp_assert$1 (and
                         tmp_assert$
                         (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                            (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                           ) x$
                      )))))
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_reader$1
                   )))))
                   (let
                    ((tmp_assert$2 (let
                       ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                            (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                       )))))
                       (let
                        ((update_tmp_reader$2 (vstd.multiset.impl&%0.insert.? V&. V& update_tmp_reader$ x$)))
                        (let
                         ((tmp_assert$3 (and
                            tmp_assert$
                            (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                               (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                              ) x$
                         )))))
                         tmp_assert$3
                    )))))
                    (and
                     (=>
                      tmp_assert$2
                      (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_reader$1
                     ))
                     (and
                      (=>
                       tmp_assert$2
                       (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_writer$
                      ))
                      (and
                       (=>
                        tmp_assert$2
                        (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$2
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$2
                          (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_rc$
                         ))
                         (and
                          (=>
                           tmp_assert$2
                           (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                              post!
                             )
                            ) update_tmp_flag_exc$
                          ))
                          (and
                           (=>
                            tmp_assert$2
                            (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                             update_tmp_pred$
                           ))
                           (=>
                            tmp_assert$2
                            (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                             update_tmp_k$
    )))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                  update_tmp_pending_reader$
                 ) (Poly%tuple%0. tuple%0./tuple%0)
                ) 1
               )
               (let
                ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                    $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                    (Poly%tuple%0. tuple%0./tuple%0)
                ))))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       pre!
                      )
                     ) 1
                 ))))
                 (let
                  ((update_tmp_flag_rc$ (nClip (Sub (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                        pre!
                       )
                      ) 1
                  ))))
                  (and
                   (=>
                    tmp_assert$1
                    (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_flag_rc$
                   ))
                   (and
                    (=>
                     tmp_assert$1
                     (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_pending_reader$1
                    ))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_reader$
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_writer$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_exc$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                          ))
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon.?_definition
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

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_start
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
                 )
                ) false
               )
               (let
                ((update_tmp_flag_exc$ true))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (is-core!option.Option./None update_tmp_pending_writer$)
                 )))
                 (let
                  ((update_tmp_pending_writer$1 (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0))))
                  (and
                   (=>
                    tmp_assert$1
                    (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_pending_writer$1
                   ))
                   (and
                    (=>
                     tmp_assert$1
                     (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_flag_exc$
                    ))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_reader$
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_pending_reader$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_rc$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                          ))
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_end
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? K&. K& V&. V& Pred&. Pred& pre!
      post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (let
               ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
                  )
                 ) 0
                )
                (and
                 (= update_tmp_pending_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
                 (let
                  ((update_tmp_pending_writer$1 core!option.Option./None))
                  (let
                   ((tmp_assert$1 (and
                      tmp_assert$
                      (is-core!option.Option./None update_tmp_writer$)
                   )))
                   (let
                    ((update_tmp_writer$1 (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0))))
                    (and
                     (let
                      ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                           (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                      )))))
                      (let
                       ((tmp_assert$2 (and
                          tmp_assert$1
                          (= update_tmp_storage$ (core!option.Option./Some x$))
                       )))
                       (let
                        ((update_tmp_storage$1 core!option.Option./None))
                        (let
                         ((tmp_assert$3 (and
                            tmp_assert$2
                            (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                               (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                              ) x$
                         )))))
                         (=>
                          tmp_assert$3
                          (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_storage$1
                     ))))))
                     (let
                      ((tmp_assert$4 (let
                         ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                              (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                         )))))
                         (let
                          ((tmp_assert$5 (and
                             tmp_assert$1
                             (= update_tmp_storage$ (core!option.Option./Some x$))
                          )))
                          (let
                           ((update_tmp_storage$2 core!option.Option./None))
                           (let
                            ((tmp_assert$6 (and
                               tmp_assert$5
                               (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                                  (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                                 ) x$
                            )))))
                            tmp_assert$6
                      ))))))
                      (and
                       (=>
                        tmp_assert$4
                        (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_writer$1
                       ))
                       (and
                        (=>
                         tmp_assert$4
                         (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_pending_writer$1
                        ))
                        (and
                         (=>
                          tmp_assert$4
                          (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_reader$
                         ))
                         (and
                          (=>
                           tmp_assert$4
                           (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                              post!
                             )
                            ) update_tmp_pending_reader$
                          ))
                          (and
                           (=>
                            tmp_assert$4
                            (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                               post!
                              )
                             ) update_tmp_flag_rc$
                           ))
                           (and
                            (=>
                             tmp_assert$4
                             (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                                post!
                               )
                              ) update_tmp_flag_exc$
                            ))
                            (and
                             (=>
                              tmp_assert$4
                              (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                               update_tmp_pred$
                             ))
                             (=>
                              tmp_assert$4
                              (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                               update_tmp_k$
    )))))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? K&. K& V&. V& Pred&. Pred&
      pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_exc
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_exc.? K&. K& V&. V& Pred&. Pred& pre! post!
      x!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                  (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                 ) x!
               ))
               (and
                (= update_tmp_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
                (let
                 ((update_tmp_writer$1 core!option.Option./None))
                 (let
                  ((update_tmp_flag_exc$ false))
                  (let
                   ((tmp_assert$1 (and
                      tmp_assert$
                      (is-core!option.Option./None update_tmp_storage$)
                   )))
                   (let
                    ((update_tmp_storage$1 (core!option.Option./Some x!)))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_storage$1
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_flag_exc$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_writer$1
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_reader$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_pending_reader$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                              post!
                             )
                            ) update_tmp_pending_writer$
                          ))
                          (and
                           (=>
                            tmp_assert$1
                            (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                               post!
                              )
                             ) update_tmp_flag_rc$
                           ))
                           (and
                            (=>
                             tmp_assert$1
                             (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                              update_tmp_pred$
                            ))
                            (=>
                             tmp_assert$1
                             (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                              update_tmp_k$
    ))))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_exc.? K&. K& V&. V& Pred&. Pred&
      pre! post! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_exc.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_exc.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_shared
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_shared.? K&. K& V&. V& Pred&. Pred& pre!
      post! x!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader$ x!) 1)
               (let
                ((update_tmp_reader$1 (vstd.multiset.impl&%0.remove.? V&. V& update_tmp_reader$ x!)))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       pre!
                      )
                     ) 1
                 ))))
                 (let
                  ((update_tmp_flag_rc$ (nClip (Sub (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                        pre!
                       )
                      ) 1
                  ))))
                  (and
                   (=>
                    tmp_assert$1
                    (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_flag_rc$
                   ))
                   (and
                    (=>
                     tmp_assert$1
                     (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_reader$1
                    ))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_reader$
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_writer$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_exc$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                          ))
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_shared.? K&. K& V&. V& Pred&. Pred&
      pre! post! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_shared.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_shared.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::acquire_read_start
(declare-fun req%vstd.rwlock.RwLockToks.show.acquire_read_start. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.acquire_read_start. K&. K& V&. V& Pred&. Pred&
     pre! post!
    ) (=>
     %%global_location_label%%0
     (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? K&. K& V&. V& Pred&. Pred& (
       Poly%vstd.rwlock.RwLockToks.State. pre!
      ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.acquire_read_start. K&. K& V&. V& Pred&.
     Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.acquire_read_start._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.acquire_read_start._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.acquire_read_start. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.acquire_read_start. K&. K& V&. V& Pred&. Pred&
     pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.acquire_read_start. K&. K& V&. V& Pred&.
     Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.acquire_read_start._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.acquire_read_start._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::acquire_read_end
(declare-fun req%vstd.rwlock.RwLockToks.show.acquire_read_end. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.acquire_read_end. K&. K& V&. V& Pred&. Pred& pre!
     post!
    ) (=>
     %%global_location_label%%1
     (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       pre!
      ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.acquire_read_end. K&. K& V&. V& Pred&. Pred&
     pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.acquire_read_end._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.acquire_read_end._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.acquire_read_end. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.acquire_read_end. K&. K& V&. V& Pred&. Pred& pre!
     post!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.acquire_read_end. K&. K& V&. V& Pred&. Pred&
     pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.acquire_read_end._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.acquire_read_end._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::acquire_read_abandon
(declare-fun req%vstd.rwlock.RwLockToks.show.acquire_read_abandon. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.acquire_read_abandon. K&. K& V&. V& Pred&. Pred&
     pre! post!
    ) (=>
     %%global_location_label%%2
     (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? K&. K& V&. V& Pred&. Pred&
      (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.acquire_read_abandon. K&. K& V&. V& Pred&.
     Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.acquire_read_abandon._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.acquire_read_abandon._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.acquire_read_abandon. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.acquire_read_abandon. K&. K& V&. V& Pred&. Pred&
     pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.acquire_read_abandon. K&. K& V&. V& Pred&.
     Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.acquire_read_abandon._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.acquire_read_abandon._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::acquire_exc_start
(declare-fun req%vstd.rwlock.RwLockToks.show.acquire_exc_start. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.acquire_exc_start. K&. K& V&. V& Pred&. Pred& pre!
     post!
    ) (=>
     %%global_location_label%%3
     (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       pre!
      ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.acquire_exc_start. K&. K& V&. V& Pred&.
     Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.acquire_exc_start._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.acquire_exc_start._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.acquire_exc_start. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.acquire_exc_start. K&. K& V&. V& Pred&. Pred& pre!
     post!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.acquire_exc_start. K&. K& V&. V& Pred&.
     Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.acquire_exc_start._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.acquire_exc_start._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::acquire_exc_end
(declare-fun req%vstd.rwlock.RwLockToks.show.acquire_exc_end. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.acquire_exc_end. K&. K& V&. V& Pred&. Pred& pre!
     post!
    ) (=>
     %%global_location_label%%4
     (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       pre!
      ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.acquire_exc_end. K&. K& V&. V& Pred&. Pred&
     pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.acquire_exc_end._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.acquire_exc_end._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.acquire_exc_end. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.acquire_exc_end. K&. K& V&. V& Pred&. Pred& pre!
     post!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.acquire_exc_end. K&. K& V&. V& Pred&. Pred&
     pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.acquire_exc_end._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.acquire_exc_end._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::release_exc
(declare-fun req%vstd.rwlock.RwLockToks.show.release_exc. (Dcr Type Dcr Type Dcr Type
  vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.release_exc. K&. K& V&. V& Pred&. Pred& pre! post!
     x!
    ) (=>
     %%global_location_label%%5
     (vstd.rwlock.RwLockToks.impl&%23.release_exc.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       pre!
      ) (Poly%vstd.rwlock.RwLockToks.State. post!) x!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.release_exc. K&. K& V&. V& Pred&. Pred&
     pre! post! x!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.release_exc._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.release_exc._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.release_exc. (Dcr Type Dcr Type Dcr Type
  vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.release_exc. K&. K& V&. V& Pred&. Pred& pre! post!
     x!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.release_exc. K&. K& V&. V& Pred&. Pred&
     pre! post! x!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.release_exc._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.release_exc._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::release_shared
(declare-fun req%vstd.rwlock.RwLockToks.show.release_shared. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.release_shared. K&. K& V&. V& Pred&. Pred& pre!
     post! x!
    ) (=>
     %%global_location_label%%6
     (vstd.rwlock.RwLockToks.impl&%23.release_shared.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       pre!
      ) (Poly%vstd.rwlock.RwLockToks.State. post!) x!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.release_shared. K&. K& V&. V& Pred&. Pred&
     pre! post! x!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.release_shared._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.release_shared._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.release_shared. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.release_shared. K&. K& V&. V& Pred&. Pred& pre!
     post! x!
    ) (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
     ) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.release_shared. K&. K& V&. V& Pred&. Pred&
     pre! post! x!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.release_shared._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.release_shared._definition
)))

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

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::initialize_full
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! Poly)
    (k! Poly) (t! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred& post!
      k! t!
     ) (and
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! t!))
      (let
       ((update_tmp_k$ k!))
       (let
        ((update_tmp_pred$ core!marker.PhantomData./PhantomData))
        (let
         ((update_tmp_flag_exc$ false))
         (let
          ((update_tmp_flag_rc$ 0))
          (let
           ((update_tmp_storage$ (core!option.Option./Some t!)))
           (let
            ((update_tmp_pending_writer$ core!option.Option./None))
            (let
             ((update_tmp_writer$ core!option.Option./None))
             (let
              ((update_tmp_pending_reader$ (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.empty.?
                  $ TYPE%tuple%0.
              ))))
              (let
               ((update_tmp_reader$ (vstd.multiset.impl&%0.empty.? V&. V&)))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                   post!
                  )
                 ) update_tmp_reader$
                )
                (and
                 (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                    post!
                   )
                  ) update_tmp_pending_reader$
                 )
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_writer$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_pending_writer$
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_storage$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_flag_rc$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_flag_exc$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_pred$
                       )
                       (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_k$
    ))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred&
      post! k! t!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.initialize_full.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.initialize_full.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::show::initialize_full
(declare-fun req%vstd.rwlock.RwLockToks.show.initialize_full. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! vstd.rwlock.RwLockToks.State.)
   (k! Poly) (t! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.show.initialize_full. K&. K& V&. V& Pred&. Pred& post!
     k! t!
    ) (=>
     %%global_location_label%%7
     (vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       post!
      ) k! t!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.show.initialize_full. K&. K& V&. V& Pred&. Pred&
     post! k! t!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.show.initialize_full._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.show.initialize_full._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.show.initialize_full. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.State. Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! vstd.rwlock.RwLockToks.State.)
   (k! Poly) (t! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.show.initialize_full. K&. K& V&. V& Pred&. Pred& post!
     k! t!
    ) (vstd.rwlock.RwLockToks.impl&%23.init.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.show.initialize_full. K&. K& V&. V& Pred&. Pred&
     post! k! t!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.show.initialize_full._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.show.initialize_full._definition
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
