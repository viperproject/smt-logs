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

;; MODULE 'module vstd::pervasive'

;; Fuel
(declare-const fuel%vstd.pervasive.trigger. FuelId)
(declare-const fuel%vstd.pervasive.impl&%0.requires. FuelId)
(declare-const fuel%vstd.pervasive.impl&%0.ensures. FuelId)
(declare-const fuel%vstd.pervasive.spec_affirm. FuelId)
(assert
 (distinct fuel%vstd.pervasive.trigger. fuel%vstd.pervasive.impl&%0.requires. fuel%vstd.pervasive.impl&%0.ensures.
  fuel%vstd.pervasive.spec_affirm.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.pervasive.ForLoopGhostIterator./ExecIter (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIterator./ExecIter (Dcr Type) Type)
(declare-fun proj%%vstd.pervasive.ForLoopGhostIterator./Item (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIterator./Item (Dcr Type) Type)
(declare-fun proj%%vstd.pervasive.ForLoopGhostIterator./Decrease (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIterator./Decrease (Dcr Type) Type)
(declare-fun proj%%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter (Dcr Type) Type)

;; Datatypes
(declare-datatypes ((core!option.Option. 0) (tuple%0. 0)) (((core!option.Option./None)
   (core!option.Option./Some (core!option.Option./Some/?0 Poly))
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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

;; Traits
(declare-fun tr_bound%vstd.pervasive.ForLoopGhostIterator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.pervasive.ForLoopGhostIteratorNew. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.pervasive.FnWithRequiresEnsures. (Dcr Type Dcr Type Dcr
  Type
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.pervasive.ForLoopGhostIterator. Self%&. Self%&))
   :qid internal_crate__vstd__pervasive__ForLoopGhostIterator_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pervasive__ForLoopGhostIterator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.pervasive.ForLoopGhostIteratorNew. Self%&. Self%&))
   :qid internal_crate__vstd__pervasive__ForLoopGhostIteratorNew_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pervasive__ForLoopGhostIteratorNew_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   )
  ) (!
   true
   :pattern ((tr_bound%vstd.pervasive.FnWithRequiresEnsures. Self%&. Self%& Args&. Args&
     Output&. Output&
   ))
   :qid internal_crate__vstd__pervasive__FnWithRequiresEnsures_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pervasive__FnWithRequiresEnsures_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::pervasive::FnWithRequiresEnsures::requires
(declare-fun vstd.pervasive.FnWithRequiresEnsures.requires.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)
(declare-fun vstd.pervasive.FnWithRequiresEnsures.requires%default%.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::FnWithRequiresEnsures::ensures
(declare-fun vstd.pervasive.FnWithRequiresEnsures.ensures.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Poly
)
(declare-fun vstd.pervasive.FnWithRequiresEnsures.ensures%default%.? (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::trigger
(declare-fun vstd.pervasive.trigger.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::exec_invariant
(declare-fun vstd.pervasive.ForLoopGhostIterator.exec_invariant.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.exec_invariant%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_invariant
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_invariant%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_ensures
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? (Dcr Type Poly) Poly)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_ensures%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_decrease
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? (Dcr Type Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_decrease%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_peek_next
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? (Dcr Type Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_peek_next%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_advance
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_advance.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_advance%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIteratorNew::ghost_iter
(declare-fun vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? (Dcr Type Poly) Poly)
(declare-fun vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::arbitrary
(declare-fun vstd.pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::pervasive::spec_affirm
(declare-fun vstd.pervasive.spec_affirm.? (Poly) Bool)

;; Function-Axioms crate::vstd::pervasive::FnWithRequiresEnsures::requires
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   ) (self! Poly) (args! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type args! Args&)
    )
    (has_type (vstd.pervasive.FnWithRequiresEnsures.requires.? Self%&. Self%& Args&. Args&
      Output&. Output& self! args!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.FnWithRequiresEnsures.requires.? Self%&. Self%& Args&. Args&
     Output&. Output& self! args!
   ))
   :qid internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::FnWithRequiresEnsures::ensures
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   ) (self! Poly) (args! Poly) (output! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type args! Args&)
     (has_type output! Output&)
    )
    (has_type (vstd.pervasive.FnWithRequiresEnsures.ensures.? Self%&. Self%& Args&. Args&
      Output&. Output& self! args! output!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.FnWithRequiresEnsures.ensures.? Self%&. Self%& Args&. Args&
     Output&. Output& self! args! output!
   ))
   :qid internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::impl&%0::F::requires
(assert
 (fuel_bool_default fuel%vstd.pervasive.impl&%0.requires.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pervasive.impl&%0.requires.)
  (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
    (self! Poly) (args! Poly)
   ) (!
    (= (vstd.pervasive.FnWithRequiresEnsures.requires.? F&. F& Args&. Args& Output&. Output&
      self! args!
     ) (B (closure_req F& Args&. Args& self! args!))
    )
    :pattern ((vstd.pervasive.FnWithRequiresEnsures.requires.? F&. F& Args&. Args& Output&.
      Output& self! args!
    ))
    :qid internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_definition
    :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_definition
))))

;; Function-Axioms crate::vstd::pervasive::impl&%0::F::ensures
(assert
 (fuel_bool_default fuel%vstd.pervasive.impl&%0.ensures.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pervasive.impl&%0.ensures.)
  (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
    (self! Poly) (args! Poly) (output! Poly)
   ) (!
    (= (vstd.pervasive.FnWithRequiresEnsures.ensures.? F&. F& Args&. Args& Output&. Output&
      self! args! output!
     ) (B (closure_ens F& Args&. Args& self! args! output!))
    )
    :pattern ((vstd.pervasive.FnWithRequiresEnsures.ensures.? F&. F& Args&. Args& Output&.
      Output& self! args! output!
    ))
    :qid internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_definition
    :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_definition
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

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::exec_invariant
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (exec_iter! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type exec_iter! (proj%vstd.pervasive.ForLoopGhostIterator./ExecIter Self%&. Self%&))
    )
    (has_type (vstd.pervasive.ForLoopGhostIterator.exec_invariant.? Self%&. Self%& self!
      exec_iter!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.exec_invariant.? Self%&. Self%& self!
     exec_iter!
   ))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.exec_invariant.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.exec_invariant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_invariant
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (init! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type init! (TYPE%core!option.Option. (REF Self%&.) Self%&))
    )
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? Self%&. Self%& self!
      init!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? Self%&. Self%& self!
     init!
   ))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_invariant.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_invariant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_ensures
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? Self%&. Self%& self!)
     BOOL
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_ensures.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_ensures.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_decrease
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? Self%&. Self%& self!)
     (TYPE%core!option.Option. (proj%%vstd.pervasive.ForLoopGhostIterator./Decrease Self%&.
       Self%&
      ) (proj%vstd.pervasive.ForLoopGhostIterator./Decrease Self%&. Self%&)
   )))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_decrease.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_decrease.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_peek_next
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? Self%&. Self%& self!)
     (TYPE%core!option.Option. (proj%%vstd.pervasive.ForLoopGhostIterator./Item Self%&.
       Self%&
      ) (proj%vstd.pervasive.ForLoopGhostIterator./Item Self%&. Self%&)
   )))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_advance
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (exec_iter! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type exec_iter! (proj%vstd.pervasive.ForLoopGhostIterator./ExecIter Self%&. Self%&))
    )
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_advance.? Self%&. Self%& self!
      exec_iter!
     ) Self%&
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_advance.? Self%&. Self%& self!
     exec_iter!
   ))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_advance.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_advance.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIteratorNew::ghost_iter
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? Self%&. Self%& self!)
     (proj%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter Self%&. Self%&)
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.?_pre_post_definition
)))

;; Function-Specs vstd::pervasive::exec_nonstatic_call
(declare-fun req%vstd!pervasive.exec_nonstatic_call. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
   (f! Poly) (args! Poly)
  ) (!
   (= (req%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&. F& f!
     args!
    ) (closure_req F& Args&. Args& f! args!)
   )
   :pattern ((req%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&.
     F& f! args!
   ))
   :qid internal_req__vstd!pervasive.exec_nonstatic_call._definition
   :skolemid skolem_internal_req__vstd!pervasive.exec_nonstatic_call._definition
)))
(declare-fun ens%vstd!pervasive.exec_nonstatic_call. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
   (f! Poly) (args! Poly) (output! Poly)
  ) (!
   (= (ens%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&. F& f!
     args! output!
    ) (and
     (has_type output! Output&)
     (closure_ens F& Args&. Args& f! args! output!)
   ))
   :pattern ((ens%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&.
     F& f! args! output!
   ))
   :qid internal_ens__vstd!pervasive.exec_nonstatic_call._definition
   :skolemid skolem_internal_ens__vstd!pervasive.exec_nonstatic_call._definition
)))

;; Function-Axioms crate::vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd.pervasive.arbitrary.? A&. A&))
   :qid internal_vstd.pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.arbitrary.?_pre_post_definition
)))

;; Function-Specs crate::vstd::pervasive::proof_from_false
(declare-fun req%vstd.pervasive.proof_from_false. (Dcr Type) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (req%vstd.pervasive.proof_from_false. A&. A&) (=>
     %%global_location_label%%0
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

;; Function-Specs crate::vstd::pervasive::unreached
(declare-fun req%vstd.pervasive.unreached. (Dcr Type) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (req%vstd.pervasive.unreached. A&. A&) (=>
     %%global_location_label%%1
     false
   ))
   :pattern ((req%vstd.pervasive.unreached. A&. A&))
   :qid internal_req__vstd.pervasive.unreached._definition
   :skolemid skolem_internal_req__vstd.pervasive.unreached._definition
)))
(declare-fun ens%vstd.pervasive.unreached. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (%return! Poly)) (!
   (= (ens%vstd.pervasive.unreached. A&. A& %return!) (has_type %return! A&))
   :pattern ((ens%vstd.pervasive.unreached. A&. A& %return!))
   :qid internal_ens__vstd.pervasive.unreached._definition
   :skolemid skolem_internal_ens__vstd.pervasive.unreached._definition
)))

;; Function-Specs crate::vstd::pervasive::runtime_assert
(declare-fun req%vstd.pervasive.runtime_assert. (Bool) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.pervasive.runtime_assert. b!) (=>
     %%global_location_label%%2
     b!
   ))
   :pattern ((req%vstd.pervasive.runtime_assert. b!))
   :qid internal_req__vstd.pervasive.runtime_assert._definition
   :skolemid skolem_internal_req__vstd.pervasive.runtime_assert._definition
)))

;; Function-Specs crate::vstd::pervasive::spec_affirm
(declare-fun req%vstd.pervasive.spec_affirm. (Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((b! Poly)) (!
   (= (req%vstd.pervasive.spec_affirm. b!) (=>
     %%global_location_label%%3
     (%B b!)
   ))
   :pattern ((req%vstd.pervasive.spec_affirm. b!))
   :qid internal_req__vstd.pervasive.spec_affirm._definition
   :skolemid skolem_internal_req__vstd.pervasive.spec_affirm._definition
)))

;; Function-Axioms crate::vstd::pervasive::spec_affirm
(assert
 (fuel_bool_default fuel%vstd.pervasive.spec_affirm.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pervasive.spec_affirm.)
  (forall ((b! Poly)) (!
    (= (vstd.pervasive.spec_affirm.? b!) (%B b!))
    :pattern ((vstd.pervasive.spec_affirm.? b!))
    :qid internal_vstd.pervasive.spec_affirm.?_definition
    :skolemid skolem_internal_vstd.pervasive.spec_affirm.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type))
  (!
   (tr_bound%vstd.pervasive.FnWithRequiresEnsures. F&. F& Args&. Args& Output&. Output&)
   :pattern ((tr_bound%vstd.pervasive.FnWithRequiresEnsures. F&. F& Args&. Args& Output&.
     Output&
   ))
   :qid internal_crate__vstd__pervasive__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__pervasive__impl&__0_trait_impl_definition
)))

;; Function-Specs crate::vstd::pervasive::assume
(declare-fun ens%vstd.pervasive.assume. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.pervasive.assume. b!) b!)
   :pattern ((ens%vstd.pervasive.assume. b!))
   :qid internal_ens__vstd.pervasive.assume._definition
   :skolemid skolem_internal_ens__vstd.pervasive.assume._definition
)))

;; Function-Def crate::vstd::pervasive::assume
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pervasive.rs:13:1: 13:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Bool)
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

;; Function-Specs crate::vstd::pervasive::assert
(declare-fun req%vstd.pervasive.assert. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.pervasive.assert. b!) b!)
   :pattern ((req%vstd.pervasive.assert. b!))
   :qid internal_req__vstd.pervasive.assert._definition
   :skolemid skolem_internal_req__vstd.pervasive.assert._definition
)))
(declare-fun ens%vstd.pervasive.assert. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.pervasive.assert. b!) b!)
   :pattern ((ens%vstd.pervasive.assert. b!))
   :qid internal_ens__vstd.pervasive.assert._definition
   :skolemid skolem_internal_ens__vstd.pervasive.assert._definition
)))

;; Function-Def crate::vstd::pervasive::assert
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pervasive.rs:22:1: 22:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Bool)
 (assert
  fuel_defaults
 )
 (assert
  b!
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    b!
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pervasive::affirm
(declare-fun req%vstd.pervasive.affirm. (Bool) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.pervasive.affirm. b!) (=>
     %%global_location_label%%4
     b!
   ))
   :pattern ((req%vstd.pervasive.affirm. b!))
   :qid internal_req__vstd.pervasive.affirm._definition
   :skolemid skolem_internal_req__vstd.pervasive.affirm._definition
)))

;; Function-Def crate::vstd::pervasive::affirm
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pervasive.rs:30:1: 30:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Bool)
 (assert
  fuel_defaults
 )
 (assert
  b!
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
