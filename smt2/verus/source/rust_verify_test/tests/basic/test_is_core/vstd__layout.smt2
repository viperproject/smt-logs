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

;; MODULE 'module vstd::layout'

;; Fuel
(declare-const fuel%vstd.layout.is_power_2. FuelId)
(declare-const fuel%vstd.layout.valid_layout. FuelId)
(declare-const fuel%vstd.layout.size_of_as_usize. FuelId)
(declare-const fuel%vstd.layout.align_of_as_usize. FuelId)
(assert
 (distinct fuel%vstd.layout.is_power_2. fuel%vstd.layout.valid_layout. fuel%vstd.layout.size_of_as_usize.
  fuel%vstd.layout.align_of_as_usize.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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

;; Function-Decl crate::vstd::layout::is_sized
(declare-fun vstd.layout.is_sized.? (Dcr Type) Bool)

;; Function-Decl crate::vstd::layout::size_of
(declare-fun vstd.layout.size_of.? (Dcr Type) Int)

;; Function-Decl crate::vstd::layout::align_of
(declare-fun vstd.layout.align_of.? (Dcr Type) Int)

;; Function-Decl crate::vstd::layout::is_power_2
(declare-fun vstd.layout.is_power_2.? (Poly) Bool)
(declare-fun vstd.layout.rec%is_power_2.? (Poly Fuel) Bool)

;; Function-Decl crate::vstd::layout::valid_layout
(declare-fun vstd.layout.valid_layout.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::layout::size_of_as_usize
(declare-fun vstd.layout.size_of_as_usize.? (Dcr Type) Int)

;; Function-Decl crate::vstd::layout::align_of_as_usize
(declare-fun vstd.layout.align_of_as_usize.? (Dcr Type) Int)

;; Function-Axioms crate::vstd::layout::size_of
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (<= 0 (vstd.layout.size_of.? V&. V&))
   :pattern ((vstd.layout.size_of.? V&. V&))
   :qid internal_vstd.layout.size_of.?_pre_post_definition
   :skolemid skolem_internal_vstd.layout.size_of.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::layout::align_of
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (<= 0 (vstd.layout.align_of.? V&. V&))
   :pattern ((vstd.layout.align_of.? V&. V&))
   :qid internal_vstd.layout.align_of.?_pre_post_definition
   :skolemid skolem_internal_vstd.layout.align_of.?_pre_post_definition
)))

;; Function-Specs core::mem::size_of
(declare-fun ens%core!mem.size_of. (Dcr Type Int) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (u! Int)) (!
   (= (ens%core!mem.size_of. V&. V& u!) (and
     (uInv SZ u!)
     (vstd.layout.is_sized.? V&. V&)
     (= u! (vstd.layout.size_of.? V&. V&))
   ))
   :pattern ((ens%core!mem.size_of. V&. V& u!))
   :qid internal_ens__core!mem.size_of._definition
   :skolemid skolem_internal_ens__core!mem.size_of._definition
)))

;; Function-Specs core::mem::align_of
(declare-fun ens%core!mem.align_of. (Dcr Type Int) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (u! Int)) (!
   (= (ens%core!mem.align_of. V&. V& u!) (and
     (uInv SZ u!)
     (vstd.layout.is_sized.? V&. V&)
     (= u! (vstd.layout.align_of.? V&. V&))
   ))
   :pattern ((ens%core!mem.align_of. V&. V& u!))
   :qid internal_ens__core!mem.align_of._definition
   :skolemid skolem_internal_ens__core!mem.align_of._definition
)))

;; Spec-Termination crate::vstd::layout::is_power_2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/layout.rs:9:1: 9:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type n! INT)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%I n!))
    (or
     (and
      (=>
       (<= (%I n!) 0)
       (=>
        (= tmp%5 false)
        %%switch_label%%0
      ))
      (=>
       (not (<= (%I n!) 0))
       (or
        (and
         (=>
          (= (%I n!) 1)
          (=>
           (= tmp%4 true)
           %%switch_label%%1
         ))
         (=>
          (not (= (%I n!) 1))
          (or
           (and
            (=>
             (= (EucMod (%I n!) 2) 0)
             (=>
              (= tmp%2 (I (EucDiv (%I n!) 2)))
              (and
               (=>
                %%location_label%%0
                (check_decrease_int (let
                  ((n!$0 (%I tmp%2)))
                  n!$0
                 ) decrease%init0 false
               ))
               (=>
                (= tmp%1 (vstd.layout.is_power_2.? (I (EucDiv (%I n!) 2))))
                (=>
                 (= tmp%3 tmp%1)
                 %%switch_label%%2
            )))))
            (=>
             (not (= (EucMod (%I n!) 2) 0))
             (=>
              (= tmp%3 false)
              %%switch_label%%2
           )))
           (and
            (not %%switch_label%%2)
            (=>
             (= tmp%4 tmp%3)
             %%switch_label%%1
        )))))
        (and
         (not %%switch_label%%1)
         (=>
          (= tmp%5 tmp%4)
          %%switch_label%%0
     )))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::layout::is_power_2
(assert
 (fuel_bool_default fuel%vstd.layout.is_power_2.)
)
(declare-const fuel_nat%vstd.layout.is_power_2. Fuel)
(assert
 (forall ((n! Poly) (fuel% Fuel)) (!
   (= (vstd.layout.rec%is_power_2.? n! fuel%) (vstd.layout.rec%is_power_2.? n! zero))
   :pattern ((vstd.layout.rec%is_power_2.? n! fuel%))
   :qid internal_vstd.layout.is_power_2._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.layout.is_power_2._fuel_to_zero_definition
)))
(assert
 (forall ((n! Poly) (fuel% Fuel)) (!
   (=>
    (has_type n! INT)
    (= (vstd.layout.rec%is_power_2.? n! (succ fuel%)) (and
      (not (<= (%I n!) 0))
      (=>
       (not (= (%I n!) 1))
       (and
        (= (EucMod (%I n!) 2) 0)
        (vstd.layout.rec%is_power_2.? (I (EucDiv (%I n!) 2)) fuel%)
   )))))
   :pattern ((vstd.layout.rec%is_power_2.? n! (succ fuel%)))
   :qid internal_vstd.layout.is_power_2._fuel_to_body_definition
   :skolemid skolem_internal_vstd.layout.is_power_2._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.layout.is_power_2.)
  (forall ((n! Poly)) (!
    (=>
     (has_type n! INT)
     (= (vstd.layout.is_power_2.? n!) (vstd.layout.rec%is_power_2.? n! (succ fuel_nat%vstd.layout.is_power_2.)))
    )
    :pattern ((vstd.layout.is_power_2.? n!))
    :qid internal_vstd.layout.is_power_2.?_definition
    :skolemid skolem_internal_vstd.layout.is_power_2.?_definition
))))

;; Function-Axioms crate::vstd::layout::valid_layout
(assert
 (fuel_bool_default fuel%vstd.layout.valid_layout.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.layout.valid_layout.)
  (forall ((size! Poly) (align! Poly)) (!
    (= (vstd.layout.valid_layout.? size! align!) (and
      (vstd.layout.is_power_2.? align!)
      (<= (%I size!) (Sub (- (iHi SZ) 1) (EucMod (- (iHi SZ) 1) (%I align!))))
    ))
    :pattern ((vstd.layout.valid_layout.? size! align!))
    :qid internal_vstd.layout.valid_layout.?_definition
    :skolemid skolem_internal_vstd.layout.valid_layout.?_definition
))))

;; Function-Specs crate::vstd::layout::layout_for_type_is_valid
(declare-fun ens%vstd.layout.layout_for_type_is_valid. (Dcr Type) Bool)
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (= (ens%vstd.layout.layout_for_type_is_valid. V&. V&) (and
     (vstd.layout.valid_layout.? (I (uClip SZ (vstd.layout.size_of.? V&. V&))) (I (uClip
        SZ (vstd.layout.align_of.? V&. V&)
     )))
     (vstd.layout.is_sized.? V&. V&)
     (= (uClip SZ (vstd.layout.size_of.? V&. V&)) (vstd.layout.size_of.? V&. V&))
     (= (uClip SZ (vstd.layout.align_of.? V&. V&)) (vstd.layout.align_of.? V&. V&))
   ))
   :pattern ((ens%vstd.layout.layout_for_type_is_valid. V&. V&))
   :qid internal_ens__vstd.layout.layout_for_type_is_valid._definition
   :skolemid skolem_internal_ens__vstd.layout.layout_for_type_is_valid._definition
)))

;; Function-Specs crate::vstd::layout::size_of_as_usize
(declare-fun req%vstd.layout.size_of_as_usize. (Dcr Type) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (= (req%vstd.layout.size_of_as_usize. V&. V&) (=>
     %%global_location_label%%0
     (= (uClip SZ (vstd.layout.size_of.? V&. V&)) (vstd.layout.size_of.? V&. V&))
   ))
   :pattern ((req%vstd.layout.size_of_as_usize. V&. V&))
   :qid internal_req__vstd.layout.size_of_as_usize._definition
   :skolemid skolem_internal_req__vstd.layout.size_of_as_usize._definition
)))

;; Function-Axioms crate::vstd::layout::size_of_as_usize
(assert
 (fuel_bool_default fuel%vstd.layout.size_of_as_usize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.layout.size_of_as_usize.)
  (forall ((V&. Dcr) (V& Type)) (!
    (= (vstd.layout.size_of_as_usize.? V&. V&) (uClip SZ (vstd.layout.size_of.? V&. V&)))
    :pattern ((vstd.layout.size_of_as_usize.? V&. V&))
    :qid internal_vstd.layout.size_of_as_usize.?_definition
    :skolemid skolem_internal_vstd.layout.size_of_as_usize.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (uInv SZ (vstd.layout.size_of_as_usize.? V&. V&))
   :pattern ((vstd.layout.size_of_as_usize.? V&. V&))
   :qid internal_vstd.layout.size_of_as_usize.?_pre_post_definition
   :skolemid skolem_internal_vstd.layout.size_of_as_usize.?_pre_post_definition
)))

;; Function-Specs crate::vstd::layout::align_of_as_usize
(declare-fun req%vstd.layout.align_of_as_usize. (Dcr Type) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (= (req%vstd.layout.align_of_as_usize. V&. V&) (=>
     %%global_location_label%%1
     (= (uClip SZ (vstd.layout.align_of.? V&. V&)) (vstd.layout.align_of.? V&. V&))
   ))
   :pattern ((req%vstd.layout.align_of_as_usize. V&. V&))
   :qid internal_req__vstd.layout.align_of_as_usize._definition
   :skolemid skolem_internal_req__vstd.layout.align_of_as_usize._definition
)))

;; Function-Axioms crate::vstd::layout::align_of_as_usize
(assert
 (fuel_bool_default fuel%vstd.layout.align_of_as_usize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.layout.align_of_as_usize.)
  (forall ((V&. Dcr) (V& Type)) (!
    (= (vstd.layout.align_of_as_usize.? V&. V&) (uClip SZ (vstd.layout.align_of.? V&. V&)))
    :pattern ((vstd.layout.align_of_as_usize.? V&. V&))
    :qid internal_vstd.layout.align_of_as_usize.?_definition
    :skolemid skolem_internal_vstd.layout.align_of_as_usize.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (uInv SZ (vstd.layout.align_of_as_usize.? V&. V&))
   :pattern ((vstd.layout.align_of_as_usize.? V&. V&))
   :qid internal_vstd.layout.align_of_as_usize.?_pre_post_definition
   :skolemid skolem_internal_vstd.layout.align_of_as_usize.?_pre_post_definition
)))
