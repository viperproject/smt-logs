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

;; MODULE 'module vstd::string'

;; Fuel
(declare-const fuel%vstd.string.new_strlit_spec. FuelId)
(declare-const fuel%vstd.string.axiom_str_literal_is_ascii. FuelId)
(declare-const fuel%vstd.string.axiom_str_literal_len. FuelId)
(declare-const fuel%vstd.string.axiom_str_literal_get_char. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%6.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%30.view. FuelId)
(assert
 (distinct fuel%vstd.string.new_strlit_spec. fuel%vstd.string.axiom_str_literal_is_ascii.
  fuel%vstd.string.axiom_str_literal_len. fuel%vstd.string.axiom_str_literal_get_char.
  fuel%vstd.view.impl&%0.view. fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view.
  fuel%vstd.view.impl&%6.view. fuel%vstd.view.impl&%16.view. fuel%vstd.view.impl&%30.view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort vstd.seq.Seq<char.>. 0)
(declare-sort strslice%. 0)
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%vstd.seq.Seq<char.>. (vstd.seq.Seq<char.>.) Poly)
(declare-fun %Poly%vstd.seq.Seq<char.>. (Poly) vstd.seq.Seq<char.>.)
(declare-fun Poly%strslice%. (strslice%.) Poly)
(declare-fun %Poly%strslice%. (Poly) strslice%.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x vstd.seq.Seq<char.>.)) (!
   (= x (%Poly%vstd.seq.Seq<char.>. (Poly%vstd.seq.Seq<char.>. x)))
   :pattern ((Poly%vstd.seq.Seq<char.>. x))
   :qid internal_crate__vstd__seq__Seq<char.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<char.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.seq.Seq. $ CHAR))
    (= x (Poly%vstd.seq.Seq<char.>. (%Poly%vstd.seq.Seq<char.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.seq.Seq. $ CHAR)))
   :qid internal_crate__vstd__seq__Seq<char.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<char.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.seq.Seq<char.>.)) (!
   (has_type (Poly%vstd.seq.Seq<char.>. x) (TYPE%vstd.seq.Seq. $ CHAR))
   :pattern ((has_type (Poly%vstd.seq.Seq<char.>. x) (TYPE%vstd.seq.Seq. $ CHAR)))
   :qid internal_crate__vstd__seq__Seq<char.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<char.>_has_type_always_definition
)))
(assert
 (forall ((x strslice%.)) (!
   (= x (%Poly%strslice%. (Poly%strslice%. x)))
   :pattern ((Poly%strslice%. x))
   :qid internal_crate__strslice___box_axiom_definition
   :skolemid skolem_internal_crate__strslice___box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x STRSLICE)
    (= x (Poly%strslice%. (%Poly%strslice%. x)))
   )
   :pattern ((has_type x STRSLICE))
   :qid internal_crate__strslice___unbox_axiom_definition
   :skolemid skolem_internal_crate__strslice___unbox_axiom_definition
)))
(assert
 (forall ((x strslice%.)) (!
   (has_type (Poly%strslice%. x) STRSLICE)
   :pattern ((has_type (Poly%strslice%. x) STRSLICE))
   :qid internal_crate__strslice___has_type_always_definition
   :skolemid skolem_internal_crate__strslice___has_type_always_definition
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
(declare-fun str%strslice_is_ascii (strslice%.) Bool)
(declare-fun str%strslice_len (strslice%.) Int)
(declare-fun str%strslice_get_char (strslice%. Int) Int)
(declare-fun str%new_strlit (Int) strslice%.)
(declare-fun str%from_strlit (strslice%.) Int)
(assert
 (forall ((x Int)) (!
   (= (str%from_strlit (str%new_strlit x)) x)
   :pattern ((str%new_strlit x))
   :qid prelude_strlit_injective
   :skolemid skolem_prelude_strlit_injective
)))

;; Traits
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.view.View. Self%&. Self%&))
   :qid internal_crate__vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__View_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (= (proj%%vstd.view.View./V $ STRSLICE) $)
)
(assert
 (= (proj%vstd.view.View./V $ STRSLICE) (TYPE%vstd.seq.Seq. $ CHAR))
)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.view.View./V (REF A&.) A&) (proj%%vstd.view.View./V A&. A&))
   :pattern ((proj%%vstd.view.View./V (REF A&.) A&))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.view.View./V (REF A&.) A&) (proj%vstd.view.View./V A&. A&))
   :pattern ((proj%vstd.view.View./V (REF A&.) A&))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd.view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 8)) (UINT 8))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd.view.View./V $ CHAR) $)
)
(assert
 (= (proj%vstd.view.View./V $ CHAR) CHAR)
)

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::subrange
(declare-fun vstd!seq.Seq.subrange.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::string::str_slice_is_ascii
(declare-fun vstd.string.str_slice_is_ascii.? (Poly) Bool)

;; Function-Decl crate::vstd::string::new_strlit_spec
(declare-fun vstd.string.new_strlit_spec.? (Poly) strslice%.)

;; Function-Axioms crate::vstd::view::View::view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.view.View.view.? Self%&. Self%& self!) (proj%vstd.view.View./V Self%&.
      Self%&
   )))
   :pattern ((vstd.view.View.view.? Self%&. Self%& self!))
   :qid internal_vstd.view.View.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.view.View.view.?_pre_post_definition
)))

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

;; Function-Specs vstd::seq::Seq::subrange
(declare-fun req%vstd!seq.Seq.subrange. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (= (req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!) (=>
     %%global_location_label%%1
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

;; Function-Specs core::str::impl&%0::is_ascii
(declare-fun ens%core!str.impl&%0.is_ascii. (strslice%. Bool) Bool)
(assert
 (forall ((s! strslice%.) (b! Bool)) (!
   (= (ens%core!str.impl&%0.is_ascii. s! b!) (= b! (vstd.string.str_slice_is_ascii.? (Poly%strslice%.
       s!
   ))))
   :pattern ((ens%core!str.impl&%0.is_ascii. s! b!))
   :qid internal_ens__core!str.impl&__0.is_ascii._definition
   :skolemid skolem_internal_ens__core!str.impl&__0.is_ascii._definition
)))

;; Function-Specs crate::vstd::string::impl&%1::unicode_len
(declare-fun ens%vstd.string.impl&%1.unicode_len. (strslice%. Int) Bool)
(assert
 (forall ((self! strslice%.) (l! Int)) (!
   (= (ens%vstd.string.impl&%1.unicode_len. self! l!) (and
     (uInv SZ l!)
     (= l! (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%. self!))))
   ))
   :pattern ((ens%vstd.string.impl&%1.unicode_len. self! l!))
   :qid internal_ens__vstd.string.impl&__1.unicode_len._definition
   :skolemid skolem_internal_ens__vstd.string.impl&__1.unicode_len._definition
)))

;; Function-Specs crate::vstd::string::impl&%1::get_char
(declare-fun req%vstd.string.impl&%1.get_char. (strslice%. Int) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! strslice%.) (i! Int)) (!
   (= (req%vstd.string.impl&%1.get_char. self! i!) (=>
     %%global_location_label%%2
     (< i! (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%. self!))))
   ))
   :pattern ((req%vstd.string.impl&%1.get_char. self! i!))
   :qid internal_req__vstd.string.impl&__1.get_char._definition
   :skolemid skolem_internal_req__vstd.string.impl&__1.get_char._definition
)))
(declare-fun ens%vstd.string.impl&%1.get_char. (strslice%. Int Int) Bool)
(assert
 (forall ((self! strslice%.) (i! Int) (c! Int)) (!
   (= (ens%vstd.string.impl&%1.get_char. self! i! c!) (and
     (charInv c!)
     (= (%I (vstd!seq.Seq.index.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
          self!
         )
        ) (I i!)
       )
      ) c!
     )
     (=>
      (vstd.string.str_slice_is_ascii.? (Poly%strslice%. self!))
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (< (%I i$) (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
              self!
          ))))
          (< (nClip (%I (vstd!seq.Seq.index.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
                self!
               )
              ) i$
            ))
           ) 256
        )))
        :pattern ((vstd!seq.Seq.index.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
            self!
           )
          ) i$
        ))
        :qid user_crate__vstd__string__impl&%1__get_char_0
        :skolemid skolem_user_crate__vstd__string__impl&%1__get_char_0
   )))))
   :pattern ((ens%vstd.string.impl&%1.get_char. self! i! c!))
   :qid internal_ens__vstd.string.impl&__1.get_char._definition
   :skolemid skolem_internal_ens__vstd.string.impl&__1.get_char._definition
)))

;; Function-Specs crate::vstd::string::impl&%1::substring_ascii
(declare-fun req%vstd.string.impl&%1.substring_ascii. (strslice%. Int Int) Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! strslice%.) (from! Int) (to! Int)) (!
   (= (req%vstd.string.impl&%1.substring_ascii. self! from! to!) (and
     (=>
      %%global_location_label%%3
      (vstd.string.str_slice_is_ascii.? (Poly%strslice%. self!))
     )
     (=>
      %%global_location_label%%4
      (< from! (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
          self!
     )))))
     (=>
      %%global_location_label%%5
      (<= to! (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
          self!
   )))))))
   :pattern ((req%vstd.string.impl&%1.substring_ascii. self! from! to!))
   :qid internal_req__vstd.string.impl&__1.substring_ascii._definition
   :skolemid skolem_internal_req__vstd.string.impl&__1.substring_ascii._definition
)))
(declare-fun ens%vstd.string.impl&%1.substring_ascii. (strslice%. Int Int strslice%.)
 Bool
)
(assert
 (forall ((self! strslice%.) (from! Int) (to! Int) (ret! strslice%.)) (!
   (= (ens%vstd.string.impl&%1.substring_ascii. self! from! to! ret!) (and
     (= (vstd.view.View.view.? $ STRSLICE (Poly%strslice%. ret!)) (vstd!seq.Seq.subrange.?
       $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%. self!)) (I from!) (I to!)
     ))
     (= (vstd.string.str_slice_is_ascii.? (Poly%strslice%. ret!)) (vstd.string.str_slice_is_ascii.?
       (Poly%strslice%. self!)
   ))))
   :pattern ((ens%vstd.string.impl&%1.substring_ascii. self! from! to! ret!))
   :qid internal_ens__vstd.string.impl&__1.substring_ascii._definition
   :skolemid skolem_internal_ens__vstd.string.impl&__1.substring_ascii._definition
)))

;; Function-Specs crate::vstd::string::impl&%1::substring_char
(declare-fun req%vstd.string.impl&%1.substring_char. (strslice%. Int Int) Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! strslice%.) (from! Int) (to! Int)) (!
   (= (req%vstd.string.impl&%1.substring_char. self! from! to!) (and
     (=>
      %%global_location_label%%6
      (< from! (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
          self!
     )))))
     (=>
      %%global_location_label%%7
      (<= to! (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
          self!
   )))))))
   :pattern ((req%vstd.string.impl&%1.substring_char. self! from! to!))
   :qid internal_req__vstd.string.impl&__1.substring_char._definition
   :skolemid skolem_internal_req__vstd.string.impl&__1.substring_char._definition
)))
(declare-fun ens%vstd.string.impl&%1.substring_char. (strslice%. Int Int strslice%.)
 Bool
)
(assert
 (forall ((self! strslice%.) (from! Int) (to! Int) (ret! strslice%.)) (!
   (= (ens%vstd.string.impl&%1.substring_char. self! from! to! ret!) (and
     (= (vstd.view.View.view.? $ STRSLICE (Poly%strslice%. ret!)) (vstd!seq.Seq.subrange.?
       $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%. self!)) (I from!) (I to!)
     ))
     (= (vstd.string.str_slice_is_ascii.? (Poly%strslice%. ret!)) (vstd.string.str_slice_is_ascii.?
       (Poly%strslice%. self!)
   ))))
   :pattern ((ens%vstd.string.impl&%1.substring_char. self! from! to! ret!))
   :qid internal_ens__vstd.string.impl&__1.substring_char._definition
   :skolemid skolem_internal_ens__vstd.string.impl&__1.substring_char._definition
)))

;; Function-Specs crate::vstd::string::impl&%1::get_ascii
(declare-fun req%vstd.string.impl&%1.get_ascii. (strslice%. Int) Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! strslice%.) (i! Int)) (!
   (= (req%vstd.string.impl&%1.get_ascii. self! i!) (=>
     %%global_location_label%%8
     (vstd.string.str_slice_is_ascii.? (Poly%strslice%. self!))
   ))
   :pattern ((req%vstd.string.impl&%1.get_ascii. self! i!))
   :qid internal_req__vstd.string.impl&__1.get_ascii._definition
   :skolemid skolem_internal_req__vstd.string.impl&__1.get_ascii._definition
)))
(declare-fun ens%vstd.string.impl&%1.get_ascii. (strslice%. Int Int) Bool)
(assert
 (forall ((self! strslice%.) (i! Int) (b! Int)) (!
   (= (ens%vstd.string.impl&%1.get_ascii. self! i! b!) (and
     (uInv 8 b!)
     (= (uClip 8 (%I (vstd!seq.Seq.index.? $ CHAR (vstd.view.View.view.? $ STRSLICE (Poly%strslice%.
           self!
          )
         ) (I i!)
       ))
      ) b!
   )))
   :pattern ((ens%vstd.string.impl&%1.get_ascii. self! i! b!))
   :qid internal_ens__vstd.string.impl&__1.get_ascii._definition
   :skolemid skolem_internal_ens__vstd.string.impl&__1.get_ascii._definition
)))

;; Function-Def crate::vstd::string::axiom_str_literal_is_ascii
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/string.rs:187:1: 187:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! strslice%.)
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

;; Broadcast crate::vstd::string::axiom_str_literal_is_ascii
(assert
 (=>
  (fuel_bool fuel%vstd.string.axiom_str_literal_is_ascii.)
  (forall ((s! Poly)) (!
    (=>
     (has_type s! STRSLICE)
     (= (vstd.string.str_slice_is_ascii.? s!) (str%strslice_is_ascii (%Poly%strslice%. s!)))
    )
    :pattern ((vstd.string.str_slice_is_ascii.? s!))
    :qid user_crate__vstd__string__axiom_str_literal_is_ascii_1
    :skolemid skolem_user_crate__vstd__string__axiom_str_literal_is_ascii_1
))))

;; Function-Def crate::vstd::string::axiom_str_literal_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/string.rs:194:1: 194:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! strslice%.)
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

;; Broadcast crate::vstd::string::axiom_str_literal_len
(assert
 (=>
  (fuel_bool fuel%vstd.string.axiom_str_literal_len.)
  (forall ((s! Poly)) (!
    (=>
     (has_type s! STRSLICE)
     (= (vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE s!)) (str%strslice_len
       (%Poly%strslice%. s!)
    )))
    :pattern ((vstd!seq.Seq.len.? $ CHAR (vstd.view.View.view.? $ STRSLICE s!)))
    :qid user_crate__vstd__string__axiom_str_literal_len_2
    :skolemid skolem_user_crate__vstd__string__axiom_str_literal_len_2
))))

;; Function-Def crate::vstd::string::axiom_str_literal_get_char
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/string.rs:201:1: 201:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! strslice%.)
 (declare-const i! Int)
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

;; Broadcast crate::vstd::string::axiom_str_literal_get_char
(assert
 (=>
  (fuel_bool fuel%vstd.string.axiom_str_literal_get_char.)
  (forall ((s! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! STRSLICE)
      (has_type i! INT)
     )
     (= (%I (vstd!seq.Seq.index.? $ CHAR (vstd.view.View.view.? $ STRSLICE s!) i!)) (str%strslice_get_char
       (%Poly%strslice%. s!) (%I i!)
    )))
    :pattern ((vstd!seq.Seq.index.? $ CHAR (vstd.view.View.view.? $ STRSLICE s!) i!))
    :qid user_crate__vstd__string__axiom_str_literal_get_char_3
    :skolemid skolem_user_crate__vstd__string__axiom_str_literal_get_char_3
))))

;; Function-Axioms crate::vstd::string::new_strlit_spec
(assert
 (fuel_bool_default fuel%vstd.string.new_strlit_spec.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.string.new_strlit_spec.)
  (forall ((s! Poly)) (!
    (= (vstd.string.new_strlit_spec.? s!) (%Poly%strslice%. s!))
    :pattern ((vstd.string.new_strlit_spec.? s!))
    :qid internal_vstd.string.new_strlit_spec.?_definition
    :skolemid skolem_internal_vstd.string.new_strlit_spec.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%0.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.View. A&. A&)
     (= (vstd.view.View.view.? (REF A&.) A& self!) (vstd.view.View.view.? A&. A& self!))
    )
    :pattern ((vstd.view.View.view.? (REF A&.) A& self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%2::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%2.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%2.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd.view.View.view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%4::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%4.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ BOOL self!) self!)
    :pattern ((vstd.view.View.view.? $ BOOL self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%6::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%6.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%6.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT 8) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT 8) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%16::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%16.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%16.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT SZ) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%30::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%30.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%30.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ CHAR self!) self!)
    :pattern ((vstd.view.View.view.? $ CHAR self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ STRSLICE)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd.view.View. A&. A&)
    (tr_bound%vstd.view.View. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd.view.View. (REF A&.) A&))
   :qid internal_crate__vstd__view__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ CHAR)
)

;; Function-Specs crate::vstd::string::new_strlit
(declare-fun ens%vstd.string.new_strlit. (strslice%. strslice%.) Bool)
(assert
 (forall ((s! strslice%.) (t! strslice%.)) (!
   (= (ens%vstd.string.new_strlit. s! t!) (= t! s!))
   :pattern ((ens%vstd.string.new_strlit. s! t!))
   :qid internal_ens__vstd.string.new_strlit._definition
   :skolemid skolem_internal_ens__vstd.string.new_strlit._definition
)))

;; Function-Def crate::vstd::string::new_strlit
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/string.rs:39:1: 39:39 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! strslice%.)
 (declare-const s! strslice%.)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= t! s!)
    (=>
     %%location_label%%0
     (= t! s!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::string::impl&%1::from_rust_str
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/string.rs:178:5: 178:46 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! strslice%.)
 (declare-const self! strslice%.)
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

;; Function-Def crate::vstd::string::impl&%1::into_rust_str
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/string.rs:182:5: 182:46 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! strslice%.)
 (declare-const self! strslice%.)
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
