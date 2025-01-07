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

;; MODULE 'root module'

;; Fuel
(declare-const fuel%impl&%3.arrow_y. FuelId)
(declare-const fuel%impl&%3.arrow_x. FuelId)
(declare-const fuel%impl&%3.arrow_Quit_0. FuelId)
(declare-const fuel%impl&%3.arrow_Move_x. FuelId)
(declare-const fuel%impl&%3.arrow_Move_y. FuelId)
(declare-const fuel%impl&%3.arrow_Write_0. FuelId)
(declare-const fuel%is_good_integer_2. FuelId)
(declare-const fuel%is_good_message_2. FuelId)
(declare-const fuel%is_good. FuelId)
(assert
 (distinct fuel%impl&%3.arrow_y. fuel%impl&%3.arrow_x. fuel%impl&%3.arrow_Quit_0. fuel%impl&%3.arrow_Move_x.
  fuel%impl&%3.arrow_Move_y. fuel%impl&%3.arrow_Write_0. fuel%is_good_integer_2. fuel%is_good_message_2.
  fuel%is_good.
))

;; Datatypes
(declare-datatypes ((Message. 0) (tuple%0. 0)) (((Message./Quit (Message./Quit/?0 Bool))
   (Message./Move (Message./Move/?x Int) (Message./Move/?y Int)) (Message./Write (Message./Write/?0
     Bool
   ))
  ) ((tuple%0./tuple%0))
))
(declare-fun Message./Quit/0 (Message.) Bool)
(declare-fun Message./Move/x (Message.) Int)
(declare-fun Message./Move/y (Message.) Int)
(declare-fun Message./Write/0 (Message.) Bool)
(declare-const TYPE%Message. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%Message. (Message.) Poly)
(declare-fun %Poly%Message. (Poly) Message.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x Message.)) (!
   (= x (%Poly%Message. (Poly%Message. x)))
   :pattern ((Poly%Message. x))
   :qid internal_crate__Message_box_axiom_definition
   :skolemid skolem_internal_crate__Message_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Message.)
    (= x (Poly%Message. (%Poly%Message. x)))
   )
   :pattern ((has_type x TYPE%Message.))
   :qid internal_crate__Message_unbox_axiom_definition
   :skolemid skolem_internal_crate__Message_unbox_axiom_definition
)))
(assert
 (forall ((_0! Bool)) (!
   (has_type (Poly%Message. (Message./Quit _0!)) TYPE%Message.)
   :pattern ((has_type (Poly%Message. (Message./Quit _0!)) TYPE%Message.))
   :qid internal_Message./Quit_constructor_definition
   :skolemid skolem_internal_Message./Quit_constructor_definition
)))
(assert
 (forall ((x Message.)) (!
   (= (Message./Quit/0 x) (Message./Quit/?0 x))
   :pattern ((Message./Quit/0 x))
   :qid internal_Message./Quit/0_accessor_definition
   :skolemid skolem_internal_Message./Quit/0_accessor_definition
)))
(assert
 (forall ((_x! Int) (_y! Int)) (!
   (=>
    (and
     (iInv 32 _x!)
     (iInv 32 _y!)
    )
    (has_type (Poly%Message. (Message./Move _x! _y!)) TYPE%Message.)
   )
   :pattern ((has_type (Poly%Message. (Message./Move _x! _y!)) TYPE%Message.))
   :qid internal_Message./Move_constructor_definition
   :skolemid skolem_internal_Message./Move_constructor_definition
)))
(assert
 (forall ((x Message.)) (!
   (= (Message./Move/x x) (Message./Move/?x x))
   :pattern ((Message./Move/x x))
   :qid internal_Message./Move/x_accessor_definition
   :skolemid skolem_internal_Message./Move/x_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Message.)
    (iInv 32 (Message./Move/x (%Poly%Message. x)))
   )
   :pattern ((Message./Move/x (%Poly%Message. x)) (has_type x TYPE%Message.))
   :qid internal_Message./Move/x_invariant_definition
   :skolemid skolem_internal_Message./Move/x_invariant_definition
)))
(assert
 (forall ((x Message.)) (!
   (= (Message./Move/y x) (Message./Move/?y x))
   :pattern ((Message./Move/y x))
   :qid internal_Message./Move/y_accessor_definition
   :skolemid skolem_internal_Message./Move/y_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Message.)
    (iInv 32 (Message./Move/y (%Poly%Message. x)))
   )
   :pattern ((Message./Move/y (%Poly%Message. x)) (has_type x TYPE%Message.))
   :qid internal_Message./Move/y_invariant_definition
   :skolemid skolem_internal_Message./Move/y_invariant_definition
)))
(assert
 (forall ((_0! Bool)) (!
   (has_type (Poly%Message. (Message./Write _0!)) TYPE%Message.)
   :pattern ((has_type (Poly%Message. (Message./Write _0!)) TYPE%Message.))
   :qid internal_Message./Write_constructor_definition
   :skolemid skolem_internal_Message./Write_constructor_definition
)))
(assert
 (forall ((x Message.)) (!
   (= (Message./Write/0 x) (Message./Write/?0 x))
   :pattern ((Message./Write/0 x))
   :qid internal_Message./Write/0_accessor_definition
   :skolemid skolem_internal_Message./Write/0_accessor_definition
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

;; Function-Decl crate::Message::arrow_y
(declare-fun impl&%3.arrow_y.? (Poly) Int)

;; Function-Decl crate::Message::arrow_x
(declare-fun impl&%3.arrow_x.? (Poly) Int)

;; Function-Decl crate::Message::arrow_Quit_0
(declare-fun impl&%3.arrow_Quit_0.? (Poly) Bool)

;; Function-Decl crate::Message::arrow_Move_x
(declare-fun impl&%3.arrow_Move_x.? (Poly) Int)

;; Function-Decl crate::Message::arrow_Move_y
(declare-fun impl&%3.arrow_Move_y.? (Poly) Int)

;; Function-Decl crate::Message::arrow_Write_0
(declare-fun impl&%3.arrow_Write_0.? (Poly) Bool)

;; Function-Decl crate::is_good_integer_2
(declare-fun is_good_integer_2.? (Poly) Bool)

;; Function-Decl crate::is_good_message_2
(declare-fun is_good_message_2.? (Poly) Bool)

;; Function-Decl crate::is_good
(declare-fun is_good.? (Poly) Bool)

;; Function-Axioms crate::Message::arrow_y
(assert
 (fuel_bool_default fuel%impl&%3.arrow_y.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_y.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_y.? self!) (Message./Move/y (%Poly%Message. self!)))
    :pattern ((impl&%3.arrow_y.? self!))
    :qid internal_impl&__3.arrow_y.?_definition
    :skolemid skolem_internal_impl&__3.arrow_y.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Message.)
    (iInv 32 (impl&%3.arrow_y.? self!))
   )
   :pattern ((impl&%3.arrow_y.? self!))
   :qid internal_impl&__3.arrow_y.?_pre_post_definition
   :skolemid skolem_internal_impl&__3.arrow_y.?_pre_post_definition
)))

;; Function-Axioms crate::Message::arrow_x
(assert
 (fuel_bool_default fuel%impl&%3.arrow_x.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_x.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_x.? self!) (Message./Move/x (%Poly%Message. self!)))
    :pattern ((impl&%3.arrow_x.? self!))
    :qid internal_impl&__3.arrow_x.?_definition
    :skolemid skolem_internal_impl&__3.arrow_x.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Message.)
    (iInv 32 (impl&%3.arrow_x.? self!))
   )
   :pattern ((impl&%3.arrow_x.? self!))
   :qid internal_impl&__3.arrow_x.?_pre_post_definition
   :skolemid skolem_internal_impl&__3.arrow_x.?_pre_post_definition
)))

;; Function-Axioms crate::Message::arrow_Quit_0
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Quit_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Quit_0.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Quit_0.? self!) (Message./Quit/0 (%Poly%Message. self!)))
    :pattern ((impl&%3.arrow_Quit_0.? self!))
    :qid internal_impl&__3.arrow_Quit_0.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Quit_0.?_definition
))))

;; Function-Axioms crate::Message::arrow_Move_x
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Move_x.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Move_x.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Move_x.? self!) (Message./Move/x (%Poly%Message. self!)))
    :pattern ((impl&%3.arrow_Move_x.? self!))
    :qid internal_impl&__3.arrow_Move_x.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Move_x.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Message.)
    (iInv 32 (impl&%3.arrow_Move_x.? self!))
   )
   :pattern ((impl&%3.arrow_Move_x.? self!))
   :qid internal_impl&__3.arrow_Move_x.?_pre_post_definition
   :skolemid skolem_internal_impl&__3.arrow_Move_x.?_pre_post_definition
)))

;; Function-Axioms crate::Message::arrow_Move_y
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Move_y.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Move_y.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Move_y.? self!) (Message./Move/y (%Poly%Message. self!)))
    :pattern ((impl&%3.arrow_Move_y.? self!))
    :qid internal_impl&__3.arrow_Move_y.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Move_y.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Message.)
    (iInv 32 (impl&%3.arrow_Move_y.? self!))
   )
   :pattern ((impl&%3.arrow_Move_y.? self!))
   :qid internal_impl&__3.arrow_Move_y.?_pre_post_definition
   :skolemid skolem_internal_impl&__3.arrow_Move_y.?_pre_post_definition
)))

;; Function-Axioms crate::Message::arrow_Write_0
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Write_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Write_0.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Write_0.? self!) (Message./Write/0 (%Poly%Message. self!)))
    :pattern ((impl&%3.arrow_Write_0.? self!))
    :qid internal_impl&__3.arrow_Write_0.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Write_0.?_definition
))))

;; Function-Axioms crate::is_good_integer_2
(assert
 (fuel_bool_default fuel%is_good_integer_2.)
)
(assert
 (=>
  (fuel_bool fuel%is_good_integer_2.)
  (forall ((x! Poly)) (!
    (= (is_good_integer_2.? x!) (and
      (>= (%I x!) 0)
      (not (= (%I x!) 5))
    ))
    :pattern ((is_good_integer_2.? x!))
    :qid internal_is_good_integer_2.?_definition
    :skolemid skolem_internal_is_good_integer_2.?_definition
))))

;; Function-Axioms crate::is_good_message_2
(assert
 (fuel_bool_default fuel%is_good_message_2.)
)
(assert
 (=>
  (fuel_bool fuel%is_good_message_2.)
  (forall ((msg! Poly)) (!
    (= (is_good_message_2.? msg!) (ite
      (is-Message./Quit (%Poly%Message. msg!))
      (let
       ((b$ (Message./Quit/0 (%Poly%Message. msg!))))
       b$
      )
      (ite
       (is-Message./Move (%Poly%Message. msg!))
       (let
        ((x$ (Message./Move/x (%Poly%Message. msg!))))
        (let
         ((y$ (Message./Move/y (%Poly%Message. msg!))))
         (is_good_integer_2.? (I (Sub x$ y$)))
       ))
       (let
        ((b$ (Message./Write/0 (%Poly%Message. msg!))))
        b$
    ))))
    :pattern ((is_good_message_2.? msg!))
    :qid internal_is_good_message_2.?_definition
    :skolemid skolem_internal_is_good_message_2.?_definition
))))

;; Function-Axioms crate::is_good
(assert
 (fuel_bool_default fuel%is_good.)
)
(assert
 (=>
  (fuel_bool fuel%is_good.)
  (forall ((msg! Poly)) (!
    (= (is_good.? msg!) (is_good_message_2.? msg!))
    :pattern ((is_good.? msg!))
    :qid internal_is_good.?_definition
    :skolemid skolem_internal_is_good.?_definition
))))

;; Function-Def crate::test_expansion_multiple_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/expand_errors-fcd0bf0bcccc130d-test2_expand_error/test.rs:43:7: 43:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const x@ Message.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (Message./Move (%I (I 5)) (%I (I 6))))
    (=>
     (= tmp%1 (is_good.? (Poly%Message. x@)))
     (=>
      %%location_label%%0
      tmp%1
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%0)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Expand-Errors crate::test_expansion_multiple_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/expand_errors-fcd0bf0bcccc130d-test2_expand_error/test.rs:43:7: 43:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const x@ Message.)
 (declare-const b$$$0 Bool)
 (declare-const x$$$1 Int)
 (declare-const y$$$2 Int)
 (declare-const b$$$3 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (Message./Move (%I (I 5)) (%I (I 6))))
    (=>
     (= tmp%1 (is_good.? (Poly%Message. x@)))
     (=>
      (is-Message./Quit (%Poly%Message. (Poly%Message. x@)))
      (=>
       (= b$$$0 (Message./Quit/0 (%Poly%Message. (Poly%Message. x@))))
       (=>
        %%location_label%%0
        b$$$0
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Expand-Errors crate::test_expansion_multiple_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/expand_errors-fcd0bf0bcccc130d-test2_expand_error/test.rs:43:7: 43:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const x@ Message.)
 (declare-const b$$$0 Bool)
 (declare-const x$$$1 Int)
 (declare-const y$$$2 Int)
 (declare-const b$$$3 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (Message./Move (%I (I 5)) (%I (I 6))))
    (=>
     (= tmp%1 (is_good.? (Poly%Message. x@)))
     (=>
      (not (is-Message./Quit (%Poly%Message. (Poly%Message. x@))))
      (=>
       (is-Message./Move (%Poly%Message. (Poly%Message. x@)))
       (=>
        (= x$$$1 (Message./Move/x (%Poly%Message. (Poly%Message. x@))))
        (=>
         (= y$$$2 (Message./Move/y (%Poly%Message. (Poly%Message. x@))))
         (=>
          %%location_label%%0
          (>= (%I (I (Sub x$$$1 y$$$2))) 0)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%0)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Expand-Errors crate::test_expansion_multiple_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/expand_errors-fcd0bf0bcccc130d-test2_expand_error/test.rs:43:7: 43:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const x@ Message.)
 (declare-const b$$$0 Bool)
 (declare-const x$$$1 Int)
 (declare-const y$$$2 Int)
 (declare-const b$$$3 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (Message./Move (%I (I 5)) (%I (I 6))))
    (=>
     (= tmp%1 (is_good.? (Poly%Message. x@)))
     (=>
      (not (is-Message./Quit (%Poly%Message. (Poly%Message. x@))))
      (=>
       (is-Message./Move (%Poly%Message. (Poly%Message. x@)))
       (=>
        (= x$$$1 (Message./Move/x (%Poly%Message. (Poly%Message. x@))))
        (=>
         (= y$$$2 (Message./Move/y (%Poly%Message. (Poly%Message. x@))))
         (=>
          (>= (%I (I (Sub x$$$1 y$$$2))) 0)
          (=>
           %%location_label%%0
           (not (= (%I (I (Sub x$$$1 y$$$2))) 5))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Expand-Errors crate::test_expansion_multiple_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/expand_errors-fcd0bf0bcccc130d-test2_expand_error/test.rs:43:7: 43:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const x@ Message.)
 (declare-const b$$$0 Bool)
 (declare-const x$$$1 Int)
 (declare-const y$$$2 Int)
 (declare-const b$$$3 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (Message./Move (%I (I 5)) (%I (I 6))))
    (=>
     (= tmp%1 (is_good.? (Poly%Message. x@)))
     (=>
      (not (is-Message./Quit (%Poly%Message. (Poly%Message. x@))))
      (=>
       (not (is-Message./Move (%Poly%Message. (Poly%Message. x@))))
       (=>
        (= b$$$3 (Message./Write/0 (%Poly%Message. (Poly%Message. x@))))
        (=>
         %%location_label%%0
         b$$$3
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test_expansion_multiple_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/expand_errors-fcd0bf0bcccc130d-test2_expand_error/test.rs:43:7: 43:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const x@ Message.)
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
