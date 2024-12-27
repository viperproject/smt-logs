
; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(set-option :global-decls false)
(set-option :smt.mbqi false)
(set-option :auto_config false)
(set-option :produce-unsat-cores true)
(set-option :model true)
(set-option :smt.case_split 3)
(set-option :smt.relevancy 2)
(set-option :smt.arith.solver 2)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.arith.nl false)

(declare-sort FString)
(declare-fun FString_constr_id (FString) Int)

(declare-sort Term)
(declare-fun Term_constr_id (Term) Int)
(declare-sort Dummy_sort)
(declare-fun Dummy_value () Dummy_sort)
(declare-datatypes () ((Fuel 
(ZFuel) 
(SFuel (prec Fuel)))))
(declare-fun MaxIFuel () Fuel)
(declare-fun MaxFuel () Fuel)
(declare-fun PreType (Term) Term)
(declare-fun Valid (Term) Bool)
(declare-fun HasTypeFuel (Fuel Term Term) Bool)
(define-fun HasTypeZ ((x Term) (t Term)) Bool
(HasTypeFuel ZFuel x t))
(define-fun HasType ((x Term) (t Term)) Bool
(HasTypeFuel MaxIFuel x t))
(declare-fun IsTotFun (Term) Bool)

                ;;fuel irrelevance
(assert (forall ((f Fuel) (x Term) (t Term))
(! (= (HasTypeFuel (SFuel f) x t)
(HasTypeZ x t))
:pattern ((HasTypeFuel (SFuel f) x t)))))
(declare-fun NoHoist (Term Bool) Bool)
;;no-hoist
(assert (forall ((dummy Term) (b Bool))
(! (= (NoHoist dummy b)
b)
:pattern ((NoHoist dummy b)))))
(define-fun  IsTyped ((x Term)) Bool
(exists ((t Term)) (HasTypeZ x t)))
(declare-fun ApplyTF (Term Fuel) Term)
(declare-fun ApplyTT (Term Term) Term)
(declare-fun Prec (Term Term) Bool)
(assert (forall ((x Term) (y Term) (z Term))
(! (implies (and (Prec x y) (Prec y z))
(Prec x z))
                                   :pattern ((Prec x z) (Prec x y)))))
(assert (forall ((x Term) (y Term))
(implies (Prec x y)
(not (Prec y x)))))
(declare-fun Closure (Term) Term)
(declare-fun ConsTerm (Term Term) Term)
(declare-fun ConsFuel (Fuel Term) Term)
(declare-fun Tm_uvar (Int) Term)
(define-fun Reify ((x Term)) Term x)
(declare-fun Prims.precedes (Term Term Term Term) Term)
(declare-fun Range_const (Int) Term)
(declare-fun _mul (Int Int) Int)
(declare-fun _div (Int Int) Int)
(declare-fun _mod (Int Int) Int)
(declare-fun __uu__PartialApp () Term)
(assert (forall ((x Int) (y Int)) (! (= (_mul x y) (* x y)) :pattern ((_mul x y)))))
(assert (forall ((x Int) (y Int)) (! (= (_div x y) (div x y)) :pattern ((_div x y)))))
(assert (forall ((x Int) (y Int)) (! (= (_mod x y) (mod x y)) :pattern ((_mod x y)))))
(declare-fun _rmul (Real Real) Real)
(declare-fun _rdiv (Real Real) Real)
(assert (forall ((x Real) (y Real)) (! (= (_rmul x y) (* x y)) :pattern ((_rmul x y)))))
(assert (forall ((x Real) (y Real)) (! (= (_rdiv x y) (/ x y)) :pattern ((_rdiv x y)))))
(define-fun Unreachable () Bool false)
; <start constructor FString_const>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FString_const (Int) FString)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (forall ((@u0 Int))
 (! (= 0
(FString_constr_id (FString_const @u0)))
 

:pattern ((FString_const @u0))
:qid constructor_distinct_FString_const))
:named constructor_distinct_FString_const))
;;;;;;;;;;;;;;;;Projector
(declare-fun FString_const_proj_0 (FString) Int)
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: 
(assert (! (forall ((@u0 Int))
 (! (= (FString_const_proj_0 (FString_const @u0))
@u0)
 

:pattern ((FString_const @u0))
:qid projection_inverse_FString_const_proj_0))
:named projection_inverse_FString_const_proj_0))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FString_const ((__@u0 FString)) Bool
 (and (= (FString_constr_id __@u0)
0)
(= __@u0
(FString_const (FString_const_proj_0 __@u0)))))

; </end constructor FString_const>


; <start constructor Tm_type>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Tm_type () Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (= 2
(Term_constr_id Tm_type))
:named constructor_distinct_Tm_type))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Tm_type ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
2)
(= __@x0
Tm_type)))

; </end constructor Tm_type>


; <start constructor Tm_arrow>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Tm_arrow (Int) Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (forall ((@u0 Int))
 (! (= 3
(Term_constr_id (Tm_arrow @u0)))
 

:pattern ((Tm_arrow @u0))
:qid constructor_distinct_Tm_arrow))
:named constructor_distinct_Tm_arrow))
;;;;;;;;;;;;;;;;Projector
(declare-fun Tm_arrow_id (Term) Int)
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: 
(assert (! (forall ((@u0 Int))
 (! (= (Tm_arrow_id (Tm_arrow @u0))
@u0)
 

:pattern ((Tm_arrow @u0))
:qid projection_inverse_Tm_arrow_id))
:named projection_inverse_Tm_arrow_id))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Tm_arrow ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
3)
(= __@x0
(Tm_arrow (Tm_arrow_id __@x0)))))

; </end constructor Tm_arrow>


; <start constructor Tm_unit>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Tm_unit () Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (= 6
(Term_constr_id Tm_unit))
:named constructor_distinct_Tm_unit))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Tm_unit ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
6)
(= __@x0
Tm_unit)))

; </end constructor Tm_unit>


; <start constructor BoxInt>

;;;;;;;;;;;;;;;;Constructor
(declare-fun BoxInt (Int) Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (forall ((@u0 Int))
 (! (= 7
(Term_constr_id (BoxInt @u0)))
 

:pattern ((BoxInt @u0))
:qid constructor_distinct_BoxInt))
:named constructor_distinct_BoxInt))
;;;;;;;;;;;;;;;;Projector
(declare-fun BoxInt_proj_0 (Term) Int)
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: 
(assert (! (forall ((@u0 Int))
 (! (= (BoxInt_proj_0 (BoxInt @u0))
@u0)
 

:pattern ((BoxInt @u0))
:qid projection_inverse_BoxInt_proj_0))
:named projection_inverse_BoxInt_proj_0))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BoxInt ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
7)
(= __@x0
(BoxInt (BoxInt_proj_0 __@x0)))))

; </end constructor BoxInt>


; <start constructor BoxBool>

;;;;;;;;;;;;;;;;Constructor
(declare-fun BoxBool (Bool) Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (forall ((@u0 Bool))
 (! (= 8
(Term_constr_id (BoxBool @u0)))
 

:pattern ((BoxBool @u0))
:qid constructor_distinct_BoxBool))
:named constructor_distinct_BoxBool))
;;;;;;;;;;;;;;;;Projector
(declare-fun BoxBool_proj_0 (Term) Bool)
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: 
(assert (! (forall ((@u0 Bool))
 (! (= (BoxBool_proj_0 (BoxBool @u0))
@u0)
 

:pattern ((BoxBool @u0))
:qid projection_inverse_BoxBool_proj_0))
:named projection_inverse_BoxBool_proj_0))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BoxBool ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
8)
(= __@x0
(BoxBool (BoxBool_proj_0 __@x0)))))

; </end constructor BoxBool>


; <start constructor BoxString>

;;;;;;;;;;;;;;;;Constructor
(declare-fun BoxString (FString) Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (forall ((@u0 FString))
 (! (= 9
(Term_constr_id (BoxString @u0)))
 

:pattern ((BoxString @u0))
:qid constructor_distinct_BoxString))
:named constructor_distinct_BoxString))
;;;;;;;;;;;;;;;;Projector
(declare-fun BoxString_proj_0 (Term) FString)
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: 
(assert (! (forall ((@u0 FString))
 (! (= (BoxString_proj_0 (BoxString @u0))
@u0)
 

:pattern ((BoxString @u0))
:qid projection_inverse_BoxString_proj_0))
:named projection_inverse_BoxString_proj_0))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BoxString ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
9)
(= __@x0
(BoxString (BoxString_proj_0 __@x0)))))

; </end constructor BoxString>


; <start constructor BoxReal>

;;;;;;;;;;;;;;;;Constructor
(declare-fun BoxReal (Real) Term)
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: 
(assert (! (forall ((@u0 Real))
 (! (= 10
(Term_constr_id (BoxReal @u0)))
 

:pattern ((BoxReal @u0))
:qid constructor_distinct_BoxReal))
:named constructor_distinct_BoxReal))
;;;;;;;;;;;;;;;;Projector
(declare-fun BoxReal_proj_0 (Term) Real)
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: 
(assert (! (forall ((@u0 Real))
 (! (= (BoxReal_proj_0 (BoxReal @u0))
@u0)
 

:pattern ((BoxReal @u0))
:qid projection_inverse_BoxReal_proj_0))
:named projection_inverse_BoxReal_proj_0))
;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BoxReal ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
10)
(= __@x0
(BoxReal (BoxReal_proj_0 __@x0)))))

; </end constructor BoxReal>

(declare-fun Prims.precedes@tok () Term)
(assert
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
(! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT Prims.precedes@tok
@x0)
@x1)
@x2)
@x3)
(Prims.precedes @x0 @x1 @x2 @x3))

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT Prims.precedes@tok
@x0)
@x1)
@x2)
@x3)))))

(declare-fun Prims.lex_t () Term)
(assert (forall ((t1 Term) (t2 Term) (e1 Term) (e2 Term))
(! (iff (Valid (Prims.precedes t1 t2 e1 e2))
(Valid (Prims.precedes Prims.lex_t Prims.lex_t e1 e2)))
:pattern (Prims.precedes t1 t2 e1 e2))))
(assert (forall ((t1 Term) (t2 Term))
(! (iff (Valid (Prims.precedes Prims.lex_t Prims.lex_t t1 t2)) 
(Prec t1 t2))
:pattern ((Prims.precedes Prims.lex_t Prims.lex_t t1 t2)))))
(assert (forall ((e Term) (t Term))
(! (implies (HasType e t)
(Valid t))
:pattern ((HasType e t)
(Valid t))
:qid __prelude_valid_intro)))


; Externals for module Prims


; <Start encoding val Prims.attribute>

(declare-fun Prims.attribute () Term)

; </end encoding val Prims.attribute>


; <Start encoding val Prims.cps>

(declare-fun Prims.cps () Term)

; </end encoding val Prims.cps>


; <Start encoding val Prims.tac_opaque>

(declare-fun Prims.tac_opaque () Term)

; </end encoding val Prims.tac_opaque>


; <Start encoding val Prims.unrefine>

(declare-fun Prims.unrefine () Term)

; </end encoding val Prims.unrefine>


; <Start encoding val Prims.do_not_unrefine>

(declare-fun Prims.do_not_unrefine () Term)

; </end encoding val Prims.do_not_unrefine>


; <Start encoding val Prims.hasEq>

(declare-fun Prims.hasEq (Term) Term)
(declare-fun Tm_arrow_ef9cb512a25ee351fa5536d617490497 () Term)
(declare-fun Prims.hasEq@tok () Term)

; </end encoding val Prims.hasEq>


; <Start encoding let eqtype>

(declare-fun Prims.eqtype () Term)
(declare-fun Tm_refine_414d0a9f578ab0048252f8c8f552b99f () Term)

; </end encoding let eqtype>


; <Start encoding val Prims.bool>

(declare-fun Prims.bool () Term)

; </end encoding val Prims.bool>


; <Start encoding type Prims.empty>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.empty () Term)

; <start constructor Prims.empty>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.empty ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
111)
(= __@x0
Prims.empty)))

; </end constructor Prims.empty>


; </end encoding type Prims.empty>


; <Start encoding type Prims.trivial>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.trivial () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.T () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.T
(declare-fun Prims.T@tok () Term)

; <start constructor Prims.trivial>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.trivial ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
116)
(= __@x0
Prims.trivial)))

; </end constructor Prims.trivial>


; <start constructor Prims.T>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.T ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
122)
(= __@x0
Prims.T)))

; </end constructor Prims.T>


; </end encoding type Prims.trivial>


; <Start encoding val Prims.uu___is_T>

(declare-fun Prims.uu___is_T (Term) Term)
(declare-fun Tm_arrow_053f01f066524059a49c5dc621e6494a () Term)
(declare-fun Prims.uu___is_T@tok () Term)

; </end encoding val Prims.uu___is_T>


; <Start encoding val Prims.unit>

(declare-fun Prims.unit () Term)

; </end encoding val Prims.unit>


; <Start encoding let squash>

(declare-fun Prims.squash (Term) Term)

(declare-fun Prims.squash@tok () Term)
(declare-fun Tm_refine_2de20c066034c13bf76e9c0b94f4806c (Term) Term)

; </end encoding let squash>


; <Start encoding let auto_squash>

(declare-fun Prims.auto_squash (Term) Term)

(declare-fun Prims.auto_squash@tok () Term)

; </end encoding let auto_squash>


; <Start encoding let logical>

(declare-fun Prims.logical () Term)

; </end encoding let logical>


; <Start encoding val Prims.smt_theory_symbol>

(declare-fun Prims.smt_theory_symbol () Term)

; </end encoding val Prims.smt_theory_symbol>


; <Start encoding let l_True>

(declare-fun Prims.l_True () Term)

; </end encoding let l_True>


; <Start encoding let l_False>

(declare-fun Prims.l_False () Term)

; </end encoding let l_False>


; <Start encoding type Prims.equals>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.equals (Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Prims.equals@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Refl (Term Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun Prims.Refl@base () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Refl
(declare-fun Prims.Refl@tok () Term)
(declare-fun Tm_arrow_8e00c6263684633abbc1d1a87608e391 () Term)

; <start constructor Prims.equals>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.equals ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
134)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(Prims.equals @x0
@x1
@x2))
 
;;no pats
:qid is-Prims.equals))))

; </end constructor Prims.equals>


; <start constructor Prims.Refl>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Refl ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
141)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(Prims.Refl @x0
@x1))
 
;;no pats
:qid is-Prims.Refl))))

; </end constructor Prims.Refl>


; </end encoding type Prims.equals>


; <Start encoding val Prims.uu___is_Refl>

(declare-fun Prims.uu___is_Refl (Term Term Term Term) Term)
(declare-fun Tm_arrow_2a4540f76c8969717ea911077d7b4d15 () Term)
(declare-fun Prims.uu___is_Refl@tok () Term)

; </end encoding val Prims.uu___is_Refl>


; <Start encoding let eq2>

(declare-fun Prims.eq2 (Term Term Term) Term)
(declare-fun Tm_arrow_1ec40cec1da281b45a559c74dd57f3b7 () Term)
(declare-fun Prims.eq2@tok () Term)

; </end encoding let eq2>


; <Start encoding let b2t>

(declare-fun Prims.b2t (Term) Term)

; </end encoding let b2t>


; <Start encoding type Prims.pair>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.pair (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Prims.pair@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Pair (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Pair_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Pair_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Pair__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Pair__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Pair
(declare-fun Prims.Pair@tok () Term)
(declare-fun Tm_arrow_e2b0096073073582c70f249d40f91c5d () Term)

; <start constructor Prims.pair>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.pair ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
150)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(Prims.pair @x0
@x1))
 
;;no pats
:qid is-Prims.pair))))

; </end constructor Prims.pair>


; <start constructor Prims.Pair>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Pair ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
157)
(= __@x0
(Prims.Pair (Prims.Pair_p __@x0)
(Prims.Pair_q __@x0)
(Prims.Pair__1 __@x0)
(Prims.Pair__2 __@x0)))))

; </end constructor Prims.Pair>


; </end encoding type Prims.pair>


; <Start encoding val Prims.uu___is_Pair>

(declare-fun Prims.uu___is_Pair (Term Term Term) Term)
(declare-fun Tm_arrow_0a519c999e1325381ee4c9b1d93a06b2 () Term)
(declare-fun Prims.uu___is_Pair@tok () Term)

; </end encoding val Prims.uu___is_Pair>


; <Start encoding val Prims.__proj__Pair__item___1>

(declare-fun Prims.__proj__Pair__item___1 (Term Term Term) Term)
(declare-fun Tm_arrow_214b45775d1504fb2699ff0d156b6857 () Term)
(declare-fun Prims.__proj__Pair__item___1@tok () Term)

; </end encoding val Prims.__proj__Pair__item___1>


; <Start encoding val Prims.__proj__Pair__item___2>

(declare-fun Prims.__proj__Pair__item___2 (Term Term Term) Term)
(declare-fun Tm_arrow_1b97dbe8f5eb289f51cc2556690371e3 () Term)
(declare-fun Prims.__proj__Pair__item___2@tok () Term)

; </end encoding val Prims.__proj__Pair__item___2>


; <Start encoding let l_and>

(declare-fun Prims.l_and (Term Term) Term)
(declare-fun Tm_arrow_289ee2cc5874944bf725b9e3db8c0fd6 () Term)
(declare-fun Prims.l_and@tok () Term)

; </end encoding let l_and>


; <Start encoding type Prims.sum>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.sum (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Prims.sum@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Left_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Left_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Left_v (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Left
(declare-fun Prims.Left@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Right_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Right_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Right_v (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Right
(declare-fun Prims.Right@tok () Term)
(declare-fun Tm_arrow_4ef073c03ed003774fe6ccb4064aeebd () Term)
(declare-fun Tm_arrow_c537ccd7fef2183d55f1a6960ee793b0 () Term)

; <start constructor Prims.sum>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.sum ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
169)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(Prims.sum @x0
@x1))
 
;;no pats
:qid is-Prims.sum))))

; </end constructor Prims.sum>


; <start constructor Prims.Left>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Left ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
176)
(= __@x0
(Prims.Left (Prims.Left_p __@x0)
(Prims.Left_q __@x0)
(Prims.Left_v __@x0)))))

; </end constructor Prims.Left>


; <start constructor Prims.Right>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Right ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
181)
(= __@x0
(Prims.Right (Prims.Right_p __@x0)
(Prims.Right_q __@x0)
(Prims.Right_v __@x0)))))

; </end constructor Prims.Right>


; </end encoding type Prims.sum>


; <Start encoding val Prims.uu___is_Left>

(declare-fun Prims.uu___is_Left (Term Term Term) Term)
(declare-fun Tm_arrow_3c254c463840bdea2ca63f23cf7c2f0c () Term)
(declare-fun Prims.uu___is_Left@tok () Term)

; </end encoding val Prims.uu___is_Left>


; <Start encoding val Prims.__proj__Left__item__v>

(declare-fun Tm_refine_6140be01a70b18051829f178aaf0270b (Term Term) Term)
(declare-fun Prims.__proj__Left__item__v (Term Term Term) Term)

(declare-fun Tm_arrow_aaf070885513892396497eef726adce1 () Term)
(declare-fun Prims.__proj__Left__item__v@tok () Term)

; </end encoding val Prims.__proj__Left__item__v>


; <Start encoding val Prims.uu___is_Right>

(declare-fun Prims.uu___is_Right (Term Term Term) Term)

(declare-fun Prims.uu___is_Right@tok () Term)

; </end encoding val Prims.uu___is_Right>


; <Start encoding val Prims.__proj__Right__item__v>

(declare-fun Tm_refine_43ea5cf89e866ce271f97bd6ce102588 (Term Term) Term)
(declare-fun Prims.__proj__Right__item__v (Term Term Term) Term)

(declare-fun Tm_arrow_4ae0e7dd85e55aec7e8190dea6e3997f () Term)
(declare-fun Prims.__proj__Right__item__v@tok () Term)

; </end encoding val Prims.__proj__Right__item__v>


; <Start encoding let l_or>

(declare-fun Prims.l_or (Term Term) Term)

(declare-fun Prims.l_or@tok () Term)

; </end encoding let l_or>


; <Start encoding let l_imp>

(declare-fun Prims.l_imp (Term Term) Term)

(declare-fun Prims.l_imp@tok () Term)
(declare-fun Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a (Term Term) Term)

; </end encoding let l_imp>


; <Start encoding let l_iff>

(declare-fun Prims.l_iff (Term Term) Term)

(declare-fun Prims.l_iff@tok () Term)

; </end encoding let l_iff>


; <Start encoding let l_not>

(declare-fun Prims.l_not (Term) Term)
(declare-fun Tm_arrow_8178e3b6934aa50ea45bb0ccea2d9711 () Term)
(declare-fun Prims.l_not@tok () Term)

; </end encoding let l_not>


; <Skipped let l_ITE/>


; <Skipped val Prims.precedes/>


; <Start encoding val Prims.string>

(declare-fun Prims.string () Term)

; </end encoding val Prims.string>


; <Start encoding val Prims.warn_on_use>

(declare-fun Prims.warn_on_use (Term) Term)
(declare-fun Tm_arrow_2863eb88d7490a9c3cf347c16ca04740 () Term)
(declare-fun Prims.warn_on_use@tok () Term)

; </end encoding val Prims.warn_on_use>


; <Start encoding val Prims.deprecated>

(declare-fun Prims.deprecated (Term) Term)

(declare-fun Prims.deprecated@tok () Term)

; </end encoding val Prims.deprecated>


; <Start encoding val Prims.has_type>

(declare-fun Prims.has_type (Term Term Term) Term)
(declare-fun Tm_arrow_b5d8ed0243b8c7c893f2b329de57c62b () Term)
(declare-fun Prims.has_type@tok () Term)

; </end encoding val Prims.has_type>


; <Start encoding let l_Forall>

(declare-fun Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da (Term) Term)
(declare-fun Prims.l_Forall (Term Term) Term)

(declare-fun Tm_arrow_977ec6901669a051ac66211b8e72666a () Term)
(declare-fun Prims.l_Forall@tok () Term)

(declare-fun Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f (Term Term) Term)

; </end encoding let l_Forall>


; <Skipped #push-options "--warn_error -288"/>


; <Start encoding let subtype_of>

(declare-fun Prims.subtype_of (Term Term) Term)
(declare-fun Tm_arrow_28becc0427b69ebf63ea956148504d97 () Term)
(declare-fun Prims.subtype_of@tok () Term)

; </end encoding let subtype_of>


; <Skipped #pop-options/>


; <Start encoding let prop>

(declare-fun Prims.prop () Term)
(declare-fun Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf () Term)

; </end encoding let prop>


; <Start encoding let pure_pre>

(declare-fun Prims.pure_pre () Term)

; </end encoding let pure_pre>


; <Start encoding let pure_post'>

(declare-fun Prims.pure_post_ (Term Term) Term)
(declare-fun Tm_arrow_e4cf09589736facd1137944a1f5a00a6 () Term)
(declare-fun Prims.pure_post_@tok () Term)
(declare-fun Tm_refine_8d65e998a07dd53ec478e27017d9dba5 (Term Term) Term)
(declare-fun Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 (Term Term) Term)

; </end encoding let pure_post'>


; <Start encoding let pure_post>

(declare-fun Prims.pure_post (Term) Term)

(declare-fun Prims.pure_post@tok () Term)

; </end encoding let pure_post>


; <Start encoding let pure_wp'>

(declare-fun Prims.pure_wp_ (Term) Term)

(declare-fun Prims.pure_wp_@tok () Term)
(declare-fun Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 (Term) Term)

; </end encoding let pure_wp'>


; <Start encoding let pure_wp_monotonic0>

(declare-fun Prims.pure_wp_monotonic0 (Term Term) Term)
(declare-fun Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e () Term)
(declare-fun Prims.pure_wp_monotonic0@tok () Term)

; </end encoding let pure_wp_monotonic0>


; <Start encoding let pure_wp_monotonic>

(declare-fun Prims.pure_wp_monotonic (Term Term) Term)

(declare-fun Prims.pure_wp_monotonic@tok () Term)

; </end encoding let pure_wp_monotonic>


; <Start encoding let pure_wp>

(declare-fun Prims.pure_wp (Term) Term)

(declare-fun Prims.pure_wp@tok () Term)
(declare-fun Tm_refine_15e0beb75f7033bad5fae236999feebe (Term) Term)

; </end encoding let pure_wp>


; <Start encoding val Prims.guard_free>

(declare-fun Prims.guard_free (Term) Term)

(declare-fun Prims.guard_free@tok () Term)

; </end encoding val Prims.guard_free>


; <Skipped let pure_return0/>


; <Skipped let pure_bind_wp0/>


; <Skipped let pure_if_then_else0/>


; <Skipped let pure_ite_wp0/>


; <Skipped let pure_stronger/>


; <Skipped let pure_close_wp0/>


; <Skipped let pure_trivial/>


; <Skipped new_effect { PURE ... }/>


; <Skipped effect Pure a pre post = Prims.PURE a/>


; <Skipped effect Admit a = Prims.PURE a/>


; <Skipped let pure_null_wp0/>


; <Skipped effect Tot a = Prims.PURE a/>


; <Start encoding let pure_assert_wp0>

(declare-fun Prims.pure_assert_wp0 (Term) Term)
(declare-fun Tm_arrow_14bcf5e7fc38d91827ecd9d25d3b3a67 () Term)
(declare-fun Prims.pure_assert_wp0@tok () Term)

; </end encoding let pure_assert_wp0>


; <Start encoding let pure_assume_wp0>

(declare-fun Prims.pure_assume_wp0 (Term) Term)

(declare-fun Prims.pure_assume_wp0@tok () Term)

; </end encoding let pure_assume_wp0>


; <Skipped new_effect { GHOST ... }/>


; <Skipped let purewp_id/>


; <Skipped sub_effect PURE ~> GHOST/>


; <Skipped effect Ghost a pre post = Prims.GHOST a/>


; <Skipped effect GTot a = Prims.GHOST a/>


; <Start encoding let op_Equals_Equals_Equals>

(declare-fun Prims.op_Equals_Equals_Equals (Term Term Term Term) Term)
(declare-fun Tm_arrow_7fcb145b23c2ac843afd9b126c4f71a9 () Term)
(declare-fun Prims.op_Equals_Equals_Equals@tok () Term)

; </end encoding let op_Equals_Equals_Equals>


; <Start encoding type Prims.dtuple2>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.dtuple2 (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Prims.dtuple2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Mkdtuple2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Mkdtuple2_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Mkdtuple2_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Mkdtuple2__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Mkdtuple2__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Mkdtuple2
(declare-fun Prims.Mkdtuple2@tok () Term)



(declare-fun Tm_arrow_22a50f5c5c9bb74bac4384fb8999be8b () Term)

; <start constructor Prims.dtuple2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.dtuple2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
258)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(Prims.dtuple2 @x0
@x1))
 
;;no pats
:qid is-Prims.dtuple2))))

; </end constructor Prims.dtuple2>


; <start constructor Prims.Mkdtuple2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Mkdtuple2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
267)
(= __@x0
(Prims.Mkdtuple2 (Prims.Mkdtuple2_a __@x0)
(Prims.Mkdtuple2_b __@x0)
(Prims.Mkdtuple2__1 __@x0)
(Prims.Mkdtuple2__2 __@x0)))))

; </end constructor Prims.Mkdtuple2>


; </end encoding type Prims.dtuple2>


; <Start encoding assume Prims.dtuple2__uu___haseq>



; </end encoding assume Prims.dtuple2__uu___haseq>


; <Start encoding val Prims.uu___is_Mkdtuple2>


(declare-fun Prims.uu___is_Mkdtuple2 (Term Term Term) Term)

(declare-fun Tm_arrow_e6f9f7cb1936ec43b52469e706dcadcc () Term)
(declare-fun Prims.uu___is_Mkdtuple2@tok () Term)

; </end encoding val Prims.uu___is_Mkdtuple2>


; <Skipped let uu___is_Mkdtuple2/>


; <Start encoding val Prims.__proj__Mkdtuple2__item___1>


(declare-fun Prims.__proj__Mkdtuple2__item___1 (Term Term Term) Term)

(declare-fun Tm_arrow_26c013ffba39d4f7eeb4bcc80d2d4e22 () Term)
(declare-fun Prims.__proj__Mkdtuple2__item___1@tok () Term)

; </end encoding val Prims.__proj__Mkdtuple2__item___1>


; <Skipped let __proj__Mkdtuple2__item___1/>


; <Start encoding val Prims.__proj__Mkdtuple2__item___2>


(declare-fun Prims.__proj__Mkdtuple2__item___2 (Term Term Term) Term)

(declare-fun Tm_arrow_870cc7701a0d9a8a2d6fb92427a97d66 () Term)
(declare-fun Prims.__proj__Mkdtuple2__item___2@tok () Term)

; </end encoding val Prims.__proj__Mkdtuple2__item___2>


; <Skipped let __proj__Mkdtuple2__item___2/>


; <Start encoding let l_Exists>


(declare-fun Prims.l_Exists (Term Term) Term)


(declare-fun Prims.l_Exists@tok () Term)


(declare-fun Tm_abs_6ba36691ee58dee85cd144324b083848 (Term Term) Term)

; </end encoding let l_Exists>


; <Start encoding val Prims.int>

(declare-fun Prims.int () Term)

; </end encoding val Prims.int>


; <Start encoding val Prims.op_AmpAmp>

(declare-fun Prims.op_AmpAmp (Term Term) Term)
(declare-fun Prims.op_AmpAmp@tok () Term)

; </end encoding val Prims.op_AmpAmp>


; <Start encoding val Prims.op_BarBar>

(declare-fun Prims.op_BarBar (Term Term) Term)
(declare-fun Prims.op_BarBar@tok () Term)

; </end encoding val Prims.op_BarBar>


; <Start encoding val Prims.op_Negation>

(declare-fun Prims.op_Negation (Term) Term)
(declare-fun Prims.op_Negation@tok () Term)

; </end encoding val Prims.op_Negation>


; <Start encoding val Prims.op_Multiply>

(declare-fun Prims.op_Multiply (Term Term) Term)
(declare-fun Prims.op_Multiply@tok () Term)

; </end encoding val Prims.op_Multiply>


; <Start encoding val Prims.op_Subtraction>

(declare-fun Prims.op_Subtraction (Term Term) Term)
(declare-fun Prims.op_Subtraction@tok () Term)

; </end encoding val Prims.op_Subtraction>


; <Start encoding val Prims.op_Addition>

(declare-fun Prims.op_Addition (Term Term) Term)
(declare-fun Prims.op_Addition@tok () Term)

; </end encoding val Prims.op_Addition>


; <Start encoding val Prims.op_Minus>

(declare-fun Prims.op_Minus (Term) Term)
(declare-fun Prims.op_Minus@tok () Term)

; </end encoding val Prims.op_Minus>


; <Start encoding val Prims.op_LessThanOrEqual>

(declare-fun Prims.op_LessThanOrEqual (Term Term) Term)
(declare-fun Prims.op_LessThanOrEqual@tok () Term)

; </end encoding val Prims.op_LessThanOrEqual>


; <Start encoding val Prims.op_GreaterThan>

(declare-fun Prims.op_GreaterThan (Term Term) Term)
(declare-fun Prims.op_GreaterThan@tok () Term)

; </end encoding val Prims.op_GreaterThan>


; <Start encoding val Prims.op_GreaterThanOrEqual>

(declare-fun Prims.op_GreaterThanOrEqual (Term Term) Term)
(declare-fun Prims.op_GreaterThanOrEqual@tok () Term)

; </end encoding val Prims.op_GreaterThanOrEqual>


; <Start encoding val Prims.op_LessThan>

(declare-fun Prims.op_LessThan (Term Term) Term)
(declare-fun Prims.op_LessThan@tok () Term)

; </end encoding val Prims.op_LessThan>


; <Start encoding val Prims.op_Equality>

(declare-fun Prims.op_Equality (Term Term Term) Term)
(declare-fun Prims.op_Equality@tok () Term)

; </end encoding val Prims.op_Equality>


; <Start encoding val Prims.op_disEquality>

(declare-fun Prims.op_disEquality (Term Term Term) Term)
(declare-fun Prims.op_disEquality@tok () Term)

; </end encoding val Prims.op_disEquality>


; <Start encoding val Prims.exn>

(declare-fun Prims.exn () Term)

; </end encoding val Prims.exn>


; <Start encoding val Prims.array>

(declare-fun Prims.array (Term) Term)

(declare-fun Prims.array@tok () Term)

; </end encoding val Prims.array>


; <Start encoding val Prims.strcat>

(declare-fun Prims.strcat (Term Term) Term)
(declare-fun Tm_arrow_b66cecec1d56111347abe61e89557dd1 () Term)
(declare-fun Prims.strcat@tok () Term)

; </end encoding val Prims.strcat>


; <Skipped let op_Hat/>


; <Start encoding type Prims.list>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.list (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Prims.list@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Nil (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Nil_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Nil
(declare-fun Prims.Nil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Prims.Cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Cons_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Cons_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Prims.Cons_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Prims.Cons
(declare-fun Prims.Cons@tok () Term)
(declare-fun Tm_arrow_3864bd5fbb999b4fe4487408df9b3401 () Term)
(declare-fun Tm_arrow_02c072760cbad0f5a4706f6cffab6c94 () Term)

; <start constructor Prims.list>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.list ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
318)
(exists ((@x0 Term))
 (! (= __@x0
(Prims.list @x0))
 
;;no pats
:qid is-Prims.list))))

; </end constructor Prims.list>


; <start constructor Prims.Nil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Nil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
325)
(= __@x0
(Prims.Nil (Prims.Nil_a __@x0)))))

; </end constructor Prims.Nil>


; <start constructor Prims.Cons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Prims.Cons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
330)
(= __@x0
(Prims.Cons (Prims.Cons_a __@x0)
(Prims.Cons_hd __@x0)
(Prims.Cons_tl __@x0)))))

; </end constructor Prims.Cons>


; </end encoding type Prims.list>


; <Start encoding assume Prims.list__uu___haseq>


; </end encoding assume Prims.list__uu___haseq>


; <Start encoding val Prims.uu___is_Nil>

(declare-fun Prims.uu___is_Nil (Term Term) Term)
(declare-fun Tm_arrow_606904b0fa72729a20285beb231f9f2e () Term)
(declare-fun Prims.uu___is_Nil@tok () Term)

; </end encoding val Prims.uu___is_Nil>


; <Skipped let uu___is_Nil/>


; <Start encoding val Prims.uu___is_Cons>

(declare-fun Prims.uu___is_Cons (Term Term) Term)

(declare-fun Prims.uu___is_Cons@tok () Term)

; </end encoding val Prims.uu___is_Cons>


; <Skipped let uu___is_Cons/>


; <Start encoding val Prims.__proj__Cons__item__hd>

(declare-fun Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 (Term) Term)
(declare-fun Prims.__proj__Cons__item__hd (Term Term) Term)

(declare-fun Tm_arrow_27c3547831737e5a63950f3d18bf3d22 () Term)
(declare-fun Prims.__proj__Cons__item__hd@tok () Term)

; </end encoding val Prims.__proj__Cons__item__hd>


; <Skipped let __proj__Cons__item__hd/>


; <Start encoding val Prims.__proj__Cons__item__tl>


(declare-fun Prims.__proj__Cons__item__tl (Term Term) Term)

(declare-fun Tm_arrow_4e740085106d54d8b48ffe3c6c20ef21 () Term)
(declare-fun Prims.__proj__Cons__item__tl@tok () Term)

; </end encoding val Prims.__proj__Cons__item__tl>


; <Skipped let __proj__Cons__item__tl/>


; <Skipped effect M a = a/>


; <Start encoding let returnM>

(declare-fun Prims.returnM (Term Term) Term)
(declare-fun Tm_arrow_99724436653747ac6f5a6a00c64ff8bc () Term)
(declare-fun Prims.returnM@tok () Term)

; </end encoding let returnM>


; <Skipped let as_requires/>


; <Skipped let as_ensures/>


; <Start encoding val Prims._assume>

(declare-fun Prims._assume (Term) Term)
(declare-fun Non_total_Tm_arrow_724d0dab46b8b51a1bb19d329f7fc4b2 () Term)
(declare-fun Prims._assume@tok () Term)

; </end encoding val Prims._assume>


; <Start encoding val Prims.admit>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Prims.admit (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Prims.admit@tok () Term)

; </end encoding val Prims.admit>


; <Start encoding val Prims.magic>

(declare-fun Prims.magic (Term Term) Term)
(declare-fun Tm_arrow_f5df98ce82fbcebbbdb844c958bee4fb () Term)
(declare-fun Prims.magic@tok () Term)

; </end encoding val Prims.magic>


; <Start encoding let unsafe_coerce>

(declare-fun Prims.unsafe_coerce (Term Term Term) Term)
(declare-fun Tm_arrow_443ab41008720460b7a09e280558a60f () Term)
(declare-fun Prims.unsafe_coerce@tok () Term)

; </end encoding let unsafe_coerce>


; <Start encoding val Prims.admitP>

(declare-fun Prims.admitP (Term) Term)

(declare-fun Prims.admitP@tok () Term)

; </end encoding val Prims.admitP>


; <Skipped val Prims._assert/>


; <Start encoding let _assert>

(declare-fun Prims._assert (Term) Term)
(declare-fun Non_total_Tm_arrow_bb2d1b4bdb07c87bf5990ad3e5fd8642 () Term)
(declare-fun Prims._assert@tok () Term)

; </end encoding let _assert>


; <Skipped val Prims.cut/>


; <Start encoding let cut>

(declare-fun Prims.cut (Term) Term)

(declare-fun Prims.cut@tok () Term)

; </end encoding let cut>


; <Start encoding let nat>

(declare-fun Prims.nat () Term)
(declare-fun Tm_refine_542f9d4f129664613f2483a6c88bc7c2 () Term)

; </end encoding let nat>


; <Start encoding let pos>

(declare-fun Prims.pos () Term)
(declare-fun Tm_refine_774ba3f728d91ead8ef40be66c9802e5 () Term)

; </end encoding let pos>


; <Start encoding let nonzero>

(declare-fun Prims.nonzero () Term)
(declare-fun Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f () Term)

; </end encoding let nonzero>


; <Start encoding val Prims.op_Modulus>

(declare-fun Prims.op_Modulus (Term Term) Term)
(declare-fun Prims.op_Modulus@tok () Term)

; </end encoding val Prims.op_Modulus>


; <Start encoding val Prims.op_Division>

(declare-fun Prims.op_Division (Term Term) Term)
(declare-fun Prims.op_Division@tok () Term)

; </end encoding val Prims.op_Division>


; <Start encoding let rec pow2>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun Prims.pow2.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun Prims.pow2.fuel_instrumented_token () Term)
(declare-fun Prims.pow2 (Term) Term)
(declare-fun Prims.pow2@tok () Term)
(declare-fun Tm_arrow_c331a0e032e021e1eaa359b3983de4f2 () Term)

; </end encoding let rec pow2>


; <Start encoding let min>

(declare-fun Prims.min (Term Term) Term)
(declare-fun Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623 () Term)
(declare-fun Prims.min@tok () Term)

; </end encoding let min>


; <Start encoding let abs>

(declare-fun Prims.abs (Term) Term)
(declare-fun Tm_arrow_35447810753695c4fe25c93af1251992 () Term)
(declare-fun Prims.abs@tok () Term)

; </end encoding let abs>


; <Start encoding val Prims.string_of_bool>

(declare-fun Prims.string_of_bool (Term) Term)
(declare-fun Tm_arrow_e86b54405c2a58719f5e8112efd48c09 () Term)
(declare-fun Prims.string_of_bool@tok () Term)

; </end encoding val Prims.string_of_bool>


; <Start encoding val Prims.string_of_int>

(declare-fun Prims.string_of_int (Term) Term)
(declare-fun Tm_arrow_2bc066ec63734c94a3c008e1e72cae2b () Term)
(declare-fun Prims.string_of_int@tok () Term)

; </end encoding val Prims.string_of_int>


; <Start encoding let __cache_version_number__>

(declare-fun Prims.__cache_version_number__ () Term)

; </end encoding let __cache_version_number__>


; End Externals for module Prims


; Externals for module FStar.Pervasives.Native


; <Start encoding type FStar.Pervasives.Native.option>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.option (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.option@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.None (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.None_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.None
(declare-fun FStar.Pervasives.Native.None@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Some (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Some_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Some_v (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Some
(declare-fun FStar.Pervasives.Native.Some@tok () Term)
(declare-fun Tm_arrow_48b914114ec9f2f1caadf0f6848a9741 () Term)
(declare-fun Tm_arrow_b93a364b5144c2a5f3e9d1ea7b881752 () Term)

; <start constructor FStar.Pervasives.Native.option>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.option ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
101)
(exists ((@x0 Term))
 (! (= __@x0
(FStar.Pervasives.Native.option @x0))
 
;;no pats
:qid is-FStar.Pervasives.Native.option))))

; </end constructor FStar.Pervasives.Native.option>


; <start constructor FStar.Pervasives.Native.None>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.None ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
108)
(= __@x0
(FStar.Pervasives.Native.None (FStar.Pervasives.Native.None_a __@x0)))))

; </end constructor FStar.Pervasives.Native.None>


; <start constructor FStar.Pervasives.Native.Some>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Some ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
113)
(= __@x0
(FStar.Pervasives.Native.Some (FStar.Pervasives.Native.Some_a __@x0)
(FStar.Pervasives.Native.Some_v __@x0)))))

; </end constructor FStar.Pervasives.Native.Some>


; </end encoding type FStar.Pervasives.Native.option>


; <Start encoding assume FStar.Pervasives.Native.option__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.option__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_None>

(declare-fun FStar.Pervasives.Native.uu___is_None (Term Term) Term)
(declare-fun Tm_arrow_f1a97bcd6ba9b40d22609b756f183afa () Term)
(declare-fun FStar.Pervasives.Native.uu___is_None@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_None>


; <Skipped let uu___is_None/>


; <Start encoding val FStar.Pervasives.Native.uu___is_Some>

(declare-fun FStar.Pervasives.Native.uu___is_Some (Term Term) Term)

(declare-fun FStar.Pervasives.Native.uu___is_Some@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Some>


; <Skipped let uu___is_Some/>


; <Start encoding val FStar.Pervasives.Native.__proj__Some__item__v>

(declare-fun Tm_refine_4d5241eb6fe198666a8101195bbd4a2a (Term) Term)
(declare-fun FStar.Pervasives.Native.__proj__Some__item__v (Term Term) Term)

(declare-fun Tm_arrow_1b1398c011ff53e4194fc2ec00c7b411 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Some__item__v@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Some__item__v>


; <Skipped let __proj__Some__item__v/>


; <Start encoding type FStar.Pervasives.Native.tuple2>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple2 (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple2__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple2__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple2__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple2__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple2
(declare-fun FStar.Pervasives.Native.Mktuple2@tok () Term)
(declare-fun Tm_arrow_4054cc0a51327db54c2ed9ba3376a093 () Term)

; <start constructor FStar.Pervasives.Native.tuple2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
125)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple2 @x0
@x1))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple2))))

; </end constructor FStar.Pervasives.Native.tuple2>


; <start constructor FStar.Pervasives.Native.Mktuple2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
132)
(= __@x0
(FStar.Pervasives.Native.Mktuple2 (FStar.Pervasives.Native.Mktuple2__a __@x0)
(FStar.Pervasives.Native.Mktuple2__b __@x0)
(FStar.Pervasives.Native.Mktuple2__1 __@x0)
(FStar.Pervasives.Native.Mktuple2__2 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple2>


; </end encoding type FStar.Pervasives.Native.tuple2>


; <Start encoding assume FStar.Pervasives.Native.tuple2__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple2__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple2>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple2 (Term Term Term) Term)
(declare-fun Tm_arrow_eff71eeee4474e017e02350f86f54756 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple2@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple2>


; <Skipped let uu___is_Mktuple2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple2__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple2__item___1 (Term Term Term) Term)
(declare-fun Tm_arrow_b8cce376a4a678a51298a0f3945f25ce () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple2__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple2__item___1>


; <Skipped let __proj__Mktuple2__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple2__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple2__item___2 (Term Term Term) Term)
(declare-fun Tm_arrow_d952d001575ecb20c572af535c88dd2d () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple2__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple2__item___2>


; <Skipped let __proj__Mktuple2__item___2/>


; <Start encoding let fst>

(declare-fun FStar.Pervasives.Native.fst (Term Term Term) Term)

(declare-fun FStar.Pervasives.Native.fst@tok () Term)

; </end encoding let fst>


; <Start encoding let snd>

(declare-fun FStar.Pervasives.Native.snd (Term Term Term) Term)

(declare-fun FStar.Pervasives.Native.snd@tok () Term)

; </end encoding let snd>


; <Start encoding type FStar.Pervasives.Native.tuple3>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple3 (Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple3@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple3 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple3__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple3__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple3__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple3__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple3__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple3__3 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple3
(declare-fun FStar.Pervasives.Native.Mktuple3@tok () Term)
(declare-fun Tm_arrow_1bedda193f13e939931cf5d46ad84216 () Term)

; <start constructor FStar.Pervasives.Native.tuple3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
146)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple3 @x0
@x1
@x2))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple3))))

; </end constructor FStar.Pervasives.Native.tuple3>


; <start constructor FStar.Pervasives.Native.Mktuple3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
153)
(= __@x0
(FStar.Pervasives.Native.Mktuple3 (FStar.Pervasives.Native.Mktuple3__a __@x0)
(FStar.Pervasives.Native.Mktuple3__b __@x0)
(FStar.Pervasives.Native.Mktuple3__c __@x0)
(FStar.Pervasives.Native.Mktuple3__1 __@x0)
(FStar.Pervasives.Native.Mktuple3__2 __@x0)
(FStar.Pervasives.Native.Mktuple3__3 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple3>


; </end encoding type FStar.Pervasives.Native.tuple3>


; <Start encoding assume FStar.Pervasives.Native.tuple3__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple3__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple3>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple3 (Term Term Term Term) Term)
(declare-fun Tm_arrow_f03c6dc5b30146aaca49ed4bf6f332a7 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple3@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple3>


; <Skipped let uu___is_Mktuple3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple3__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple3__item___1 (Term Term Term Term) Term)
(declare-fun Tm_arrow_592c45439d32a71e1933eacb9776c9ed () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple3__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple3__item___1>


; <Skipped let __proj__Mktuple3__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple3__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple3__item___2 (Term Term Term Term) Term)
(declare-fun Tm_arrow_9c9b0c5ac9b0fbfc367f406af296ecab () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple3__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple3__item___2>


; <Skipped let __proj__Mktuple3__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple3__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple3__item___3 (Term Term Term Term) Term)
(declare-fun Tm_arrow_08246a62c9aeca08c44c602ad80e95a4 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple3__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple3__item___3>


; <Skipped let __proj__Mktuple3__item___3/>


; <Start encoding type FStar.Pervasives.Native.tuple4>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple4 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple4@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple4 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple4__4 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple4
(declare-fun FStar.Pervasives.Native.Mktuple4@tok () Term)
(declare-fun Tm_arrow_cbe72a10167439fe1ecfaf4fec8fd23f () Term)

; <start constructor FStar.Pervasives.Native.tuple4>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple4 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
165)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple4 @x0
@x1
@x2
@x3))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple4))))

; </end constructor FStar.Pervasives.Native.tuple4>


; <start constructor FStar.Pervasives.Native.Mktuple4>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple4 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
172)
(= __@x0
(FStar.Pervasives.Native.Mktuple4 (FStar.Pervasives.Native.Mktuple4__a __@x0)
(FStar.Pervasives.Native.Mktuple4__b __@x0)
(FStar.Pervasives.Native.Mktuple4__c __@x0)
(FStar.Pervasives.Native.Mktuple4__d __@x0)
(FStar.Pervasives.Native.Mktuple4__1 __@x0)
(FStar.Pervasives.Native.Mktuple4__2 __@x0)
(FStar.Pervasives.Native.Mktuple4__3 __@x0)
(FStar.Pervasives.Native.Mktuple4__4 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple4>


; </end encoding type FStar.Pervasives.Native.tuple4>


; <Start encoding assume FStar.Pervasives.Native.tuple4__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple4__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple4>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple4 (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_4319694c225efa92ce9fad6e9d81f761 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple4@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple4>


; <Skipped let uu___is_Mktuple4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___1 (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_382d1e9129053162252ec57e86d46f82 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___1>


; <Skipped let __proj__Mktuple4__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___2 (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_fffd25e5325d259efa0675ef649c6864 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___2>


; <Skipped let __proj__Mktuple4__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___3 (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_57b4005e0833f7b396e349ed7cdd1bb2 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___3>


; <Skipped let __proj__Mktuple4__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___4 (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9e6c1a63d63f8735645b9898955a2dca () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple4__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple4__item___4>


; <Skipped let __proj__Mktuple4__item___4/>


; <Start encoding type FStar.Pervasives.Native.tuple5>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple5 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple5@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple5 (Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple5__5 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple5
(declare-fun FStar.Pervasives.Native.Mktuple5@tok () Term)
(declare-fun Tm_arrow_dd8a078a1b97a81b5089dc3637cc2887 () Term)

; <start constructor FStar.Pervasives.Native.tuple5>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple5 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
186)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple5 @x0
@x1
@x2
@x3
@x4))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple5))))

; </end constructor FStar.Pervasives.Native.tuple5>


; <start constructor FStar.Pervasives.Native.Mktuple5>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple5 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
193)
(= __@x0
(FStar.Pervasives.Native.Mktuple5 (FStar.Pervasives.Native.Mktuple5__a __@x0)
(FStar.Pervasives.Native.Mktuple5__b __@x0)
(FStar.Pervasives.Native.Mktuple5__c __@x0)
(FStar.Pervasives.Native.Mktuple5__d __@x0)
(FStar.Pervasives.Native.Mktuple5__e __@x0)
(FStar.Pervasives.Native.Mktuple5__1 __@x0)
(FStar.Pervasives.Native.Mktuple5__2 __@x0)
(FStar.Pervasives.Native.Mktuple5__3 __@x0)
(FStar.Pervasives.Native.Mktuple5__4 __@x0)
(FStar.Pervasives.Native.Mktuple5__5 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple5>


; </end encoding type FStar.Pervasives.Native.tuple5>


; <Start encoding assume FStar.Pervasives.Native.tuple5__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple5__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple5>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple5 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_cfa2e2c8b8b41312889ff659c4faa5f9 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple5@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple5>


; <Skipped let uu___is_Mktuple5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___1 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7519f72fe101267af170e00c6ce694af () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___1>


; <Skipped let __proj__Mktuple5__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___2 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3e46329f224aa70981a337f98afbaa87 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___2>


; <Skipped let __proj__Mktuple5__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___3 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_55e6dc1b736536de45fedf844003f847 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___3>


; <Skipped let __proj__Mktuple5__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___4 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3a4e86c6aee1a39b4811bdbc12405398 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___4>


; <Skipped let __proj__Mktuple5__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___5 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1a78355922fdaba3f3848932dfc0a089 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple5__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple5__item___5>


; <Skipped let __proj__Mktuple5__item___5/>


; <Start encoding type FStar.Pervasives.Native.tuple6>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple6 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple6@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple6 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple6__6 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple6
(declare-fun FStar.Pervasives.Native.Mktuple6@tok () Term)
(declare-fun Tm_arrow_f277ffaa7e891207f9c6bff5b88ffd67 () Term)

; <start constructor FStar.Pervasives.Native.tuple6>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple6 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
209)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple6 @x0
@x1
@x2
@x3
@x4
@x5))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple6))))

; </end constructor FStar.Pervasives.Native.tuple6>


; <start constructor FStar.Pervasives.Native.Mktuple6>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple6 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
216)
(= __@x0
(FStar.Pervasives.Native.Mktuple6 (FStar.Pervasives.Native.Mktuple6__a __@x0)
(FStar.Pervasives.Native.Mktuple6__b __@x0)
(FStar.Pervasives.Native.Mktuple6__c __@x0)
(FStar.Pervasives.Native.Mktuple6__d __@x0)
(FStar.Pervasives.Native.Mktuple6__e __@x0)
(FStar.Pervasives.Native.Mktuple6__f __@x0)
(FStar.Pervasives.Native.Mktuple6__1 __@x0)
(FStar.Pervasives.Native.Mktuple6__2 __@x0)
(FStar.Pervasives.Native.Mktuple6__3 __@x0)
(FStar.Pervasives.Native.Mktuple6__4 __@x0)
(FStar.Pervasives.Native.Mktuple6__5 __@x0)
(FStar.Pervasives.Native.Mktuple6__6 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple6>


; </end encoding type FStar.Pervasives.Native.tuple6>


; <Start encoding assume FStar.Pervasives.Native.tuple6__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple6__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple6>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple6 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_286587a1b9d299ba75a076f54a6dad5f () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple6@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple6>


; <Skipped let uu___is_Mktuple6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___1 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_5b1e145eeceab869b8e427e6927dbd63 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___1>


; <Skipped let __proj__Mktuple6__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___2 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3207475e225d584881d3e0a297482887 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___2>


; <Skipped let __proj__Mktuple6__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___3 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_43e491b3b537a523a4f10de18b1915f5 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___3>


; <Skipped let __proj__Mktuple6__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___4 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_f5747d5b721642d7ecb757b043f20880 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___4>


; <Skipped let __proj__Mktuple6__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___5 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_d6501381a0206e157ecc43950bb31fea () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___5>


; <Skipped let __proj__Mktuple6__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___6 (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9c342f41120d0c7aea115b09b58cefb2 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple6__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple6__item___6>


; <Skipped let __proj__Mktuple6__item___6/>


; <Start encoding type FStar.Pervasives.Native.tuple7>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple7 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple7@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple7 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple7__7 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple7
(declare-fun FStar.Pervasives.Native.Mktuple7@tok () Term)
(declare-fun Tm_arrow_37ee9ec407a0f7bb69bf1b308f74a230 () Term)

; <start constructor FStar.Pervasives.Native.tuple7>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple7 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
234)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple7 @x0
@x1
@x2
@x3
@x4
@x5
@x6))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple7))))

; </end constructor FStar.Pervasives.Native.tuple7>


; <start constructor FStar.Pervasives.Native.Mktuple7>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple7 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
241)
(= __@x0
(FStar.Pervasives.Native.Mktuple7 (FStar.Pervasives.Native.Mktuple7__a __@x0)
(FStar.Pervasives.Native.Mktuple7__b __@x0)
(FStar.Pervasives.Native.Mktuple7__c __@x0)
(FStar.Pervasives.Native.Mktuple7__d __@x0)
(FStar.Pervasives.Native.Mktuple7__e __@x0)
(FStar.Pervasives.Native.Mktuple7__f __@x0)
(FStar.Pervasives.Native.Mktuple7__g __@x0)
(FStar.Pervasives.Native.Mktuple7__1 __@x0)
(FStar.Pervasives.Native.Mktuple7__2 __@x0)
(FStar.Pervasives.Native.Mktuple7__3 __@x0)
(FStar.Pervasives.Native.Mktuple7__4 __@x0)
(FStar.Pervasives.Native.Mktuple7__5 __@x0)
(FStar.Pervasives.Native.Mktuple7__6 __@x0)
(FStar.Pervasives.Native.Mktuple7__7 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple7>


; </end encoding type FStar.Pervasives.Native.tuple7>


; <Start encoding assume FStar.Pervasives.Native.tuple7__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple7__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple7>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple7 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_612dde2fedb1440c5d790ba7f5015319 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple7@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple7>


; <Skipped let uu___is_Mktuple7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___1 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_01c4488a68699f466c59799f5c1173ff () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___1>


; <Skipped let __proj__Mktuple7__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___2 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_f317591858699585c67fe4ba8664e34c () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___2>


; <Skipped let __proj__Mktuple7__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___3 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_44afce9d86f095aacc82b3ea2e0e223c () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___3>


; <Skipped let __proj__Mktuple7__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___4 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_e857539d4cc5be0510cbcfb97cb64b35 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___4>


; <Skipped let __proj__Mktuple7__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___5 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_a249d3d5ba06026b12d41e289bb88061 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___5>


; <Skipped let __proj__Mktuple7__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___6 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_bf614c740d11cac9b5f8eb20b24c7d00 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___6>


; <Skipped let __proj__Mktuple7__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___7 (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_e775fbf03b08091e48143165286522f7 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple7__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple7__item___7>


; <Skipped let __proj__Mktuple7__item___7/>


; <Start encoding type FStar.Pervasives.Native.tuple8>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple8 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple8@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple8 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple8__8 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple8
(declare-fun FStar.Pervasives.Native.Mktuple8@tok () Term)
(declare-fun Tm_arrow_e922a339a0aa0f375ed7113049811583 () Term)

; <start constructor FStar.Pervasives.Native.tuple8>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple8 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
261)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple8 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple8))))

; </end constructor FStar.Pervasives.Native.tuple8>


; <start constructor FStar.Pervasives.Native.Mktuple8>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple8 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
268)
(= __@x0
(FStar.Pervasives.Native.Mktuple8 (FStar.Pervasives.Native.Mktuple8__a __@x0)
(FStar.Pervasives.Native.Mktuple8__b __@x0)
(FStar.Pervasives.Native.Mktuple8__c __@x0)
(FStar.Pervasives.Native.Mktuple8__d __@x0)
(FStar.Pervasives.Native.Mktuple8__e __@x0)
(FStar.Pervasives.Native.Mktuple8__f __@x0)
(FStar.Pervasives.Native.Mktuple8__g __@x0)
(FStar.Pervasives.Native.Mktuple8__h __@x0)
(FStar.Pervasives.Native.Mktuple8__1 __@x0)
(FStar.Pervasives.Native.Mktuple8__2 __@x0)
(FStar.Pervasives.Native.Mktuple8__3 __@x0)
(FStar.Pervasives.Native.Mktuple8__4 __@x0)
(FStar.Pervasives.Native.Mktuple8__5 __@x0)
(FStar.Pervasives.Native.Mktuple8__6 __@x0)
(FStar.Pervasives.Native.Mktuple8__7 __@x0)
(FStar.Pervasives.Native.Mktuple8__8 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple8>


; </end encoding type FStar.Pervasives.Native.tuple8>


; <Start encoding assume FStar.Pervasives.Native.tuple8__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple8__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple8>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple8 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_ee31533e24c78558f4566668a6ec027c () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple8@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple8>


; <Skipped let uu___is_Mktuple8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___1 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_c971649e117e4941e7317eff508d5ea7 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___1>


; <Skipped let __proj__Mktuple8__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___2 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_97dd51e3888c1c543d8f6c73d1808548 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___2>


; <Skipped let __proj__Mktuple8__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___3 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3931d1873633dc65fed4e022ee3df3ca () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___3>


; <Skipped let __proj__Mktuple8__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___4 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_5c791e62f9472e4c351c2befb2b7a3d8 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___4>


; <Skipped let __proj__Mktuple8__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___5 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7ef7cac898ca0ef25893959e91d8c6ce () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___5>


; <Skipped let __proj__Mktuple8__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___6 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_b0ae5f58a7fa002e0313b58bf5fc74cb () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___6>


; <Skipped let __proj__Mktuple8__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___7 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7fcd94f7549ca8acfadc26bc5b82f590 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___7>


; <Skipped let __proj__Mktuple8__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___8 (Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_feaaf61fa62fef18c5ee7c39e9f86573 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple8__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple8__item___8>


; <Skipped let __proj__Mktuple8__item___8/>


; <Start encoding type FStar.Pervasives.Native.tuple9>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple9 (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple9@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple9 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__i (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__8 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple9__9 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple9
(declare-fun FStar.Pervasives.Native.Mktuple9@tok () Term)
(declare-fun Tm_arrow_0c6bc368a301d7de6e1939ebea91ee60 () Term)

; <start constructor FStar.Pervasives.Native.tuple9>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple9 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
290)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple9 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple9))))

; </end constructor FStar.Pervasives.Native.tuple9>


; <start constructor FStar.Pervasives.Native.Mktuple9>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple9 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
297)
(= __@x0
(FStar.Pervasives.Native.Mktuple9 (FStar.Pervasives.Native.Mktuple9__a __@x0)
(FStar.Pervasives.Native.Mktuple9__b __@x0)
(FStar.Pervasives.Native.Mktuple9__c __@x0)
(FStar.Pervasives.Native.Mktuple9__d __@x0)
(FStar.Pervasives.Native.Mktuple9__e __@x0)
(FStar.Pervasives.Native.Mktuple9__f __@x0)
(FStar.Pervasives.Native.Mktuple9__g __@x0)
(FStar.Pervasives.Native.Mktuple9__h __@x0)
(FStar.Pervasives.Native.Mktuple9__i __@x0)
(FStar.Pervasives.Native.Mktuple9__1 __@x0)
(FStar.Pervasives.Native.Mktuple9__2 __@x0)
(FStar.Pervasives.Native.Mktuple9__3 __@x0)
(FStar.Pervasives.Native.Mktuple9__4 __@x0)
(FStar.Pervasives.Native.Mktuple9__5 __@x0)
(FStar.Pervasives.Native.Mktuple9__6 __@x0)
(FStar.Pervasives.Native.Mktuple9__7 __@x0)
(FStar.Pervasives.Native.Mktuple9__8 __@x0)
(FStar.Pervasives.Native.Mktuple9__9 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple9>


; </end encoding type FStar.Pervasives.Native.tuple9>


; <Start encoding assume FStar.Pervasives.Native.tuple9__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple9__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple9>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple9 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9ac8f39c7b1df1e87db7c9bf5bc37a38 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple9@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple9>


; <Skipped let uu___is_Mktuple9/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___1 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_270119cc1f13c9afeb25322d78efc328 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___1>


; <Skipped let __proj__Mktuple9__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___2 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3c368dee2c86a1af7bd7ea91baab7613 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___2>


; <Skipped let __proj__Mktuple9__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___3 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_e9c745e2da3dec50930b0a7e01a11cc3 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___3>


; <Skipped let __proj__Mktuple9__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___4 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_a82ff41c5c66cd37481c83584c94a54d () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___4>


; <Skipped let __proj__Mktuple9__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___5 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1b3b4c5e68fdf7277f64bde93e6534de () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___5>


; <Skipped let __proj__Mktuple9__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___6 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_837f1324f6fa51bb8a0e45ee48e4e058 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___6>


; <Skipped let __proj__Mktuple9__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___7 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_a7562220963e3431d35de76c3c9c87b9 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___7>


; <Skipped let __proj__Mktuple9__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___8 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_861b810bc1c20bbd221cecbce824b695 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___8>


; <Skipped let __proj__Mktuple9__item___8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___9>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___9 (Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9a54b18d8e08fdf0e20244b3f960c9dc () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple9__item___9@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple9__item___9>


; <Skipped let __proj__Mktuple9__item___9/>


; <Start encoding type FStar.Pervasives.Native.tuple10>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple10 (Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple10@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple10 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__i (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__j (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__8 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__9 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple10__10 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple10
(declare-fun FStar.Pervasives.Native.Mktuple10@tok () Term)
(declare-fun Tm_arrow_61d31241317018093b2245d256adbcb5 () Term)

; <start constructor FStar.Pervasives.Native.tuple10>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple10 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
321)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple10 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple10))))

; </end constructor FStar.Pervasives.Native.tuple10>


; <start constructor FStar.Pervasives.Native.Mktuple10>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple10 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
328)
(= __@x0
(FStar.Pervasives.Native.Mktuple10 (FStar.Pervasives.Native.Mktuple10__a __@x0)
(FStar.Pervasives.Native.Mktuple10__b __@x0)
(FStar.Pervasives.Native.Mktuple10__c __@x0)
(FStar.Pervasives.Native.Mktuple10__d __@x0)
(FStar.Pervasives.Native.Mktuple10__e __@x0)
(FStar.Pervasives.Native.Mktuple10__f __@x0)
(FStar.Pervasives.Native.Mktuple10__g __@x0)
(FStar.Pervasives.Native.Mktuple10__h __@x0)
(FStar.Pervasives.Native.Mktuple10__i __@x0)
(FStar.Pervasives.Native.Mktuple10__j __@x0)
(FStar.Pervasives.Native.Mktuple10__1 __@x0)
(FStar.Pervasives.Native.Mktuple10__2 __@x0)
(FStar.Pervasives.Native.Mktuple10__3 __@x0)
(FStar.Pervasives.Native.Mktuple10__4 __@x0)
(FStar.Pervasives.Native.Mktuple10__5 __@x0)
(FStar.Pervasives.Native.Mktuple10__6 __@x0)
(FStar.Pervasives.Native.Mktuple10__7 __@x0)
(FStar.Pervasives.Native.Mktuple10__8 __@x0)
(FStar.Pervasives.Native.Mktuple10__9 __@x0)
(FStar.Pervasives.Native.Mktuple10__10 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple10>


; </end encoding type FStar.Pervasives.Native.tuple10>


; <Start encoding assume FStar.Pervasives.Native.tuple10__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple10__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple10>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple10 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_f27282a056f525d8710bf32204d252ec () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple10@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple10>


; <Skipped let uu___is_Mktuple10/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___1 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_c581e9177cd071a1b6e057fca49ea75b () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___1>


; <Skipped let __proj__Mktuple10__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___2 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_ae4b2db87d7c69a8380f4d5ae20f2149 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___2>


; <Skipped let __proj__Mktuple10__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___3 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_a21274cb112dc6619b2bde244e6a0f9a () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___3>


; <Skipped let __proj__Mktuple10__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___4 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9a051d5cacf4367d170d590ba8bb720d () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___4>


; <Skipped let __proj__Mktuple10__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___5 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_bbd73769b626202d4de52d4d60cd3b75 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___5>


; <Skipped let __proj__Mktuple10__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___6 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7ceeded5a3852448c1a5406becbd990e () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___6>


; <Skipped let __proj__Mktuple10__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___7 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_c68947c71d484ad43cd50646c4e1daf4 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___7>


; <Skipped let __proj__Mktuple10__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___8 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_e7b9ff90289491020fe84c6ab3bc60c6 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___8>


; <Skipped let __proj__Mktuple10__item___8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___9>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___9 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_6dbb3170f112f78092d1caee0b341678 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___9@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___9>


; <Skipped let __proj__Mktuple10__item___9/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___10>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___10 (Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_45598a99c0a7fcc1bf2258b9ad4256cf () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple10__item___10@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple10__item___10>


; <Skipped let __proj__Mktuple10__item___10/>


; <Start encoding type FStar.Pervasives.Native.tuple11>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple11 (Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple11@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple11 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__i (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__j (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__k (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__8 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__9 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__10 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple11__11 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple11
(declare-fun FStar.Pervasives.Native.Mktuple11@tok () Term)
(declare-fun Tm_arrow_bf9783a1a3bf19ab918f42acff1daa32 () Term)

; <start constructor FStar.Pervasives.Native.tuple11>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple11 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
354)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple11 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple11))))

; </end constructor FStar.Pervasives.Native.tuple11>


; <start constructor FStar.Pervasives.Native.Mktuple11>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple11 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
361)
(= __@x0
(FStar.Pervasives.Native.Mktuple11 (FStar.Pervasives.Native.Mktuple11__a __@x0)
(FStar.Pervasives.Native.Mktuple11__b __@x0)
(FStar.Pervasives.Native.Mktuple11__c __@x0)
(FStar.Pervasives.Native.Mktuple11__d __@x0)
(FStar.Pervasives.Native.Mktuple11__e __@x0)
(FStar.Pervasives.Native.Mktuple11__f __@x0)
(FStar.Pervasives.Native.Mktuple11__g __@x0)
(FStar.Pervasives.Native.Mktuple11__h __@x0)
(FStar.Pervasives.Native.Mktuple11__i __@x0)
(FStar.Pervasives.Native.Mktuple11__j __@x0)
(FStar.Pervasives.Native.Mktuple11__k __@x0)
(FStar.Pervasives.Native.Mktuple11__1 __@x0)
(FStar.Pervasives.Native.Mktuple11__2 __@x0)
(FStar.Pervasives.Native.Mktuple11__3 __@x0)
(FStar.Pervasives.Native.Mktuple11__4 __@x0)
(FStar.Pervasives.Native.Mktuple11__5 __@x0)
(FStar.Pervasives.Native.Mktuple11__6 __@x0)
(FStar.Pervasives.Native.Mktuple11__7 __@x0)
(FStar.Pervasives.Native.Mktuple11__8 __@x0)
(FStar.Pervasives.Native.Mktuple11__9 __@x0)
(FStar.Pervasives.Native.Mktuple11__10 __@x0)
(FStar.Pervasives.Native.Mktuple11__11 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple11>


; </end encoding type FStar.Pervasives.Native.tuple11>


; <Start encoding assume FStar.Pervasives.Native.tuple11__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple11__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple11>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple11 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_005819ee7a23a5c47189bae72b85d85c () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple11@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple11>


; <Skipped let uu___is_Mktuple11/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___1 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_31968e334e9582d95281307f534992a9 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___1>


; <Skipped let __proj__Mktuple11__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___2 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_6252dd9f4473dc54a3482810e8556404 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___2>


; <Skipped let __proj__Mktuple11__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___3 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_ec3ce6b7406c091cd7d0961922bb5a02 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___3>


; <Skipped let __proj__Mktuple11__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___4 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_be7571e73b0e7fc24d03efe0e003c054 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___4>


; <Skipped let __proj__Mktuple11__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___5 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_97ae7d913e508c46c48c3b51553d4459 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___5>


; <Skipped let __proj__Mktuple11__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___6 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1dca311798936510e0ead61e14cf32a6 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___6>


; <Skipped let __proj__Mktuple11__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___7 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_eec431ea31093a646681ef2ceb2e2986 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___7>


; <Skipped let __proj__Mktuple11__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___8 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_689b2f06e9fd83f7a84ce80a13d338c6 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___8>


; <Skipped let __proj__Mktuple11__item___8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___9>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___9 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_20210a3d9498f929cb7aa68d9e8b5ebf () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___9@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___9>


; <Skipped let __proj__Mktuple11__item___9/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___10>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___10 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_96812f2124d88760b2002bbe1502c3c9 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___10@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___10>


; <Skipped let __proj__Mktuple11__item___10/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___11>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___11 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_abcfa2582f68905d460c5ef4a7642f2d () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple11__item___11@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple11__item___11>


; <Skipped let __proj__Mktuple11__item___11/>


; <Start encoding type FStar.Pervasives.Native.tuple12>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple12 (Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple12@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple12 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__i (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__j (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__k (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__l (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__8 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__9 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__10 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__11 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple12__12 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple12
(declare-fun FStar.Pervasives.Native.Mktuple12@tok () Term)
(declare-fun Tm_arrow_4d5cd995d6f44a2ec39d0f193be0be65 () Term)

; <start constructor FStar.Pervasives.Native.tuple12>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple12 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
389)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple12 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple12))))

; </end constructor FStar.Pervasives.Native.tuple12>


; <start constructor FStar.Pervasives.Native.Mktuple12>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple12 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
396)
(= __@x0
(FStar.Pervasives.Native.Mktuple12 (FStar.Pervasives.Native.Mktuple12__a __@x0)
(FStar.Pervasives.Native.Mktuple12__b __@x0)
(FStar.Pervasives.Native.Mktuple12__c __@x0)
(FStar.Pervasives.Native.Mktuple12__d __@x0)
(FStar.Pervasives.Native.Mktuple12__e __@x0)
(FStar.Pervasives.Native.Mktuple12__f __@x0)
(FStar.Pervasives.Native.Mktuple12__g __@x0)
(FStar.Pervasives.Native.Mktuple12__h __@x0)
(FStar.Pervasives.Native.Mktuple12__i __@x0)
(FStar.Pervasives.Native.Mktuple12__j __@x0)
(FStar.Pervasives.Native.Mktuple12__k __@x0)
(FStar.Pervasives.Native.Mktuple12__l __@x0)
(FStar.Pervasives.Native.Mktuple12__1 __@x0)
(FStar.Pervasives.Native.Mktuple12__2 __@x0)
(FStar.Pervasives.Native.Mktuple12__3 __@x0)
(FStar.Pervasives.Native.Mktuple12__4 __@x0)
(FStar.Pervasives.Native.Mktuple12__5 __@x0)
(FStar.Pervasives.Native.Mktuple12__6 __@x0)
(FStar.Pervasives.Native.Mktuple12__7 __@x0)
(FStar.Pervasives.Native.Mktuple12__8 __@x0)
(FStar.Pervasives.Native.Mktuple12__9 __@x0)
(FStar.Pervasives.Native.Mktuple12__10 __@x0)
(FStar.Pervasives.Native.Mktuple12__11 __@x0)
(FStar.Pervasives.Native.Mktuple12__12 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple12>


; </end encoding type FStar.Pervasives.Native.tuple12>


; <Start encoding assume FStar.Pervasives.Native.tuple12__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple12__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple12>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple12 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_5c9f47d9090f554c9826d2f65e388f20 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple12@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple12>


; <Skipped let uu___is_Mktuple12/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___1 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_618941d7cf5ddbaabe15df8579b4a387 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___1>


; <Skipped let __proj__Mktuple12__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___2 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_84e9e2280e9bcb3233e4f33f86d66ea6 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___2>


; <Skipped let __proj__Mktuple12__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___3 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1fa79c5abf9f18607bd2e46a1a6967fa () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___3>


; <Skipped let __proj__Mktuple12__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___4 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_0f49c582489d782b08195e81221181dc () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___4>


; <Skipped let __proj__Mktuple12__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___5 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_29b7181ebb44f9e4a45f95c4f8478c6a () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___5>


; <Skipped let __proj__Mktuple12__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___6 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3cc2863a7d7f23e3916fa1e43483cb90 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___6>


; <Skipped let __proj__Mktuple12__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___7 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_c7deea49701ab64a73985bf522e46359 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___7>


; <Skipped let __proj__Mktuple12__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___8 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_380615e7761919086537a14273a02d22 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___8>


; <Skipped let __proj__Mktuple12__item___8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___9>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___9 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_245250918a4432b31aea8152d056489a () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___9@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___9>


; <Skipped let __proj__Mktuple12__item___9/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___10>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___10 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_2a967c8402c441e6d8a9336a7568e4de () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___10@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___10>


; <Skipped let __proj__Mktuple12__item___10/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___11>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___11 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_543c3feac0cd9e04ecb6cfd74ced8964 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___11@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___11>


; <Skipped let __proj__Mktuple12__item___11/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___12>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___12 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_e91029e2320896c60e94f554727a0c41 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple12__item___12@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple12__item___12>


; <Skipped let __proj__Mktuple12__item___12/>


; <Start encoding type FStar.Pervasives.Native.tuple13>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple13 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple13@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple13 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__i (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__j (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__k (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__l (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__m (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__8 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__9 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__10 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__11 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__12 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple13__13 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple13
(declare-fun FStar.Pervasives.Native.Mktuple13@tok () Term)
(declare-fun Tm_arrow_6462785e86ca440ee74ed32e1053eae3 () Term)

; <start constructor FStar.Pervasives.Native.tuple13>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple13 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
426)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple13 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple13))))

; </end constructor FStar.Pervasives.Native.tuple13>


; <start constructor FStar.Pervasives.Native.Mktuple13>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple13 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
433)
(= __@x0
(FStar.Pervasives.Native.Mktuple13 (FStar.Pervasives.Native.Mktuple13__a __@x0)
(FStar.Pervasives.Native.Mktuple13__b __@x0)
(FStar.Pervasives.Native.Mktuple13__c __@x0)
(FStar.Pervasives.Native.Mktuple13__d __@x0)
(FStar.Pervasives.Native.Mktuple13__e __@x0)
(FStar.Pervasives.Native.Mktuple13__f __@x0)
(FStar.Pervasives.Native.Mktuple13__g __@x0)
(FStar.Pervasives.Native.Mktuple13__h __@x0)
(FStar.Pervasives.Native.Mktuple13__i __@x0)
(FStar.Pervasives.Native.Mktuple13__j __@x0)
(FStar.Pervasives.Native.Mktuple13__k __@x0)
(FStar.Pervasives.Native.Mktuple13__l __@x0)
(FStar.Pervasives.Native.Mktuple13__m __@x0)
(FStar.Pervasives.Native.Mktuple13__1 __@x0)
(FStar.Pervasives.Native.Mktuple13__2 __@x0)
(FStar.Pervasives.Native.Mktuple13__3 __@x0)
(FStar.Pervasives.Native.Mktuple13__4 __@x0)
(FStar.Pervasives.Native.Mktuple13__5 __@x0)
(FStar.Pervasives.Native.Mktuple13__6 __@x0)
(FStar.Pervasives.Native.Mktuple13__7 __@x0)
(FStar.Pervasives.Native.Mktuple13__8 __@x0)
(FStar.Pervasives.Native.Mktuple13__9 __@x0)
(FStar.Pervasives.Native.Mktuple13__10 __@x0)
(FStar.Pervasives.Native.Mktuple13__11 __@x0)
(FStar.Pervasives.Native.Mktuple13__12 __@x0)
(FStar.Pervasives.Native.Mktuple13__13 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple13>


; </end encoding type FStar.Pervasives.Native.tuple13>


; <Start encoding assume FStar.Pervasives.Native.tuple13__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple13__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple13>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple13 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_68c092e8b387730b412c4dcf592b12d3 () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple13@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple13>


; <Skipped let uu___is_Mktuple13/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___1 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_82a3dc3a5dbad615d8d4a31db238e43f () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___1>


; <Skipped let __proj__Mktuple13__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___2 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1da976aaa65f1c6b8b256dfc45c41306 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___2>


; <Skipped let __proj__Mktuple13__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___3 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_ca5cf529c415deee29e0a34c0c5d1c9f () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___3>


; <Skipped let __proj__Mktuple13__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___4 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_94f6c578541b6cb528ca9e7dd1dacc3b () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___4>


; <Skipped let __proj__Mktuple13__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___5 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_211e172b7220adc186d8a02ff17e8780 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___5>


; <Skipped let __proj__Mktuple13__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___6 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9276a4f669d8497205e8d59f12da53ba () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___6>


; <Skipped let __proj__Mktuple13__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___7 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_8aa8f381a5ed57cbbae9dcd2405ce80f () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___7>


; <Skipped let __proj__Mktuple13__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___8 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_51814106613688cf259d7cdba9c24d93 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___8>


; <Skipped let __proj__Mktuple13__item___8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___9>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___9 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_05fec25e6f03f974bb2933a910642d7e () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___9@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___9>


; <Skipped let __proj__Mktuple13__item___9/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___10>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___10 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3280ee04611a7985c9d107bb1a8a330a () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___10@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___10>


; <Skipped let __proj__Mktuple13__item___10/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___11>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___11 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_86c868d5d5058e8e5ec1f4d0285c7e90 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___11@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___11>


; <Skipped let __proj__Mktuple13__item___11/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___12>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___12 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7263c1a3c4475bb4e4b41a1be4bf22da () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___12@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___12>


; <Skipped let __proj__Mktuple13__item___12/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___13>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___13 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_338c65ae58844787891c6f47cf01c068 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple13__item___13@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple13__item___13>


; <Skipped let __proj__Mktuple13__item___13/>


; <Start encoding type FStar.Pervasives.Native.tuple14>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.tuple14 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.Native.tuple14@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Native.Mktuple14 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__h (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__i (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__j (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__k (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__l (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__m (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__6 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__7 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__8 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__9 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__10 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__11 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__12 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__13 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Native.Mktuple14__14 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Native.Mktuple14
(declare-fun FStar.Pervasives.Native.Mktuple14@tok () Term)
(declare-fun Tm_arrow_484e3bf88a886900f7e695d7333615e9 () Term)

; <start constructor FStar.Pervasives.Native.tuple14>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.tuple14 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
465)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term))
 (! (= __@x0
(FStar.Pervasives.Native.tuple14 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13))
 
;;no pats
:qid is-FStar.Pervasives.Native.tuple14))))

; </end constructor FStar.Pervasives.Native.tuple14>


; <start constructor FStar.Pervasives.Native.Mktuple14>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Native.Mktuple14 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
472)
(= __@x0
(FStar.Pervasives.Native.Mktuple14 (FStar.Pervasives.Native.Mktuple14__a __@x0)
(FStar.Pervasives.Native.Mktuple14__b __@x0)
(FStar.Pervasives.Native.Mktuple14__c __@x0)
(FStar.Pervasives.Native.Mktuple14__d __@x0)
(FStar.Pervasives.Native.Mktuple14__e __@x0)
(FStar.Pervasives.Native.Mktuple14__f __@x0)
(FStar.Pervasives.Native.Mktuple14__g __@x0)
(FStar.Pervasives.Native.Mktuple14__h __@x0)
(FStar.Pervasives.Native.Mktuple14__i __@x0)
(FStar.Pervasives.Native.Mktuple14__j __@x0)
(FStar.Pervasives.Native.Mktuple14__k __@x0)
(FStar.Pervasives.Native.Mktuple14__l __@x0)
(FStar.Pervasives.Native.Mktuple14__m __@x0)
(FStar.Pervasives.Native.Mktuple14__n __@x0)
(FStar.Pervasives.Native.Mktuple14__1 __@x0)
(FStar.Pervasives.Native.Mktuple14__2 __@x0)
(FStar.Pervasives.Native.Mktuple14__3 __@x0)
(FStar.Pervasives.Native.Mktuple14__4 __@x0)
(FStar.Pervasives.Native.Mktuple14__5 __@x0)
(FStar.Pervasives.Native.Mktuple14__6 __@x0)
(FStar.Pervasives.Native.Mktuple14__7 __@x0)
(FStar.Pervasives.Native.Mktuple14__8 __@x0)
(FStar.Pervasives.Native.Mktuple14__9 __@x0)
(FStar.Pervasives.Native.Mktuple14__10 __@x0)
(FStar.Pervasives.Native.Mktuple14__11 __@x0)
(FStar.Pervasives.Native.Mktuple14__12 __@x0)
(FStar.Pervasives.Native.Mktuple14__13 __@x0)
(FStar.Pervasives.Native.Mktuple14__14 __@x0)))))

; </end constructor FStar.Pervasives.Native.Mktuple14>


; </end encoding type FStar.Pervasives.Native.tuple14>


; <Start encoding assume FStar.Pervasives.Native.tuple14__uu___haseq>


; </end encoding assume FStar.Pervasives.Native.tuple14__uu___haseq>


; <Start encoding val FStar.Pervasives.Native.uu___is_Mktuple14>

(declare-fun FStar.Pervasives.Native.uu___is_Mktuple14 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_2de133cfaca100fc23d8bf4b3421db9a () Term)
(declare-fun FStar.Pervasives.Native.uu___is_Mktuple14@tok () Term)

; </end encoding val FStar.Pervasives.Native.uu___is_Mktuple14>


; <Skipped let uu___is_Mktuple14/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___1>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___1 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_2e3216cab266e138debd68d0a503c177 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___1@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___1>


; <Skipped let __proj__Mktuple14__item___1/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___2>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___2 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_958b0270e487d0bf5fe9191b9efaa127 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___2@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___2>


; <Skipped let __proj__Mktuple14__item___2/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___3>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___3 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_08349f596f8c0acf60d1587bebe8c91b () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___3@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___3>


; <Skipped let __proj__Mktuple14__item___3/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___4>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___4 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_2b069168147ba0f67f117ad5b0ac078b () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___4@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___4>


; <Skipped let __proj__Mktuple14__item___4/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___5>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___5 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1e38bb16245a24a197c44a262fee7bf1 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___5@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___5>


; <Skipped let __proj__Mktuple14__item___5/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___6>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___6 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7a148953a3884454d8a1dffddce086bb () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___6@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___6>


; <Skipped let __proj__Mktuple14__item___6/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___7>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___7 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_812eeb3fdab56dfea8e419236740acb0 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___7@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___7>


; <Skipped let __proj__Mktuple14__item___7/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___8>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___8 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9dc932ce7cdfd6fa57f6536787fcb65b () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___8@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___8>


; <Skipped let __proj__Mktuple14__item___8/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___9>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___9 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_2600722933f06bc55e28bb3fc2ce4a6a () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___9@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___9>


; <Skipped let __proj__Mktuple14__item___9/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___10>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___10 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_f51203e57fd66f9e9293b8962c57edfe () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___10@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___10>


; <Skipped let __proj__Mktuple14__item___10/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___11>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___11 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_7c34e0c28edc5fc4ad24d0b749c0adb7 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___11@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___11>


; <Skipped let __proj__Mktuple14__item___11/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___12>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___12 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_8772cc50ea320af17b3f2371c273679a () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___12@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___12>


; <Skipped let __proj__Mktuple14__item___12/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___13>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___13 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_039da0b9a8da1a651a1c570e55456614 () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___13@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___13>


; <Skipped let __proj__Mktuple14__item___13/>


; <Start encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___14>

(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___14 (Term Term Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_579ada2eb036c15c7306dac5b648153e () Term)
(declare-fun FStar.Pervasives.Native.__proj__Mktuple14__item___14@tok () Term)

; </end encoding val FStar.Pervasives.Native.__proj__Mktuple14__item___14>


; <Skipped let __proj__Mktuple14__item___14/>


; End Externals for module FStar.Pervasives.Native


; Externals for interface FStar.Pervasives


; <Start encoding val FStar.Pervasives.remove_unused_type_parameters>

(declare-fun FStar.Pervasives.remove_unused_type_parameters (Term) Term)
(declare-fun Tm_arrow_555d62757eeaf90340982fcdf25f6704 () Term)
(declare-fun FStar.Pervasives.remove_unused_type_parameters@tok () Term)

; </end encoding val FStar.Pervasives.remove_unused_type_parameters>


; <Start encoding let pattern>

(declare-fun FStar.Pervasives.pattern () Term)

; </end encoding let pattern>


; <Start encoding val FStar.Pervasives.smt_pat>

(declare-fun FStar.Pervasives.smt_pat (Term Term) Term)
(declare-fun Tm_arrow_ce7b692455ad1649f97902066cf7c9aa () Term)
(declare-fun FStar.Pervasives.smt_pat@tok () Term)

; </end encoding val FStar.Pervasives.smt_pat>


; <Start encoding val FStar.Pervasives.smt_pat_or>

(declare-fun FStar.Pervasives.smt_pat_or (Term) Term)
(declare-fun Tm_arrow_cbfaca2770c8ef7d6393b664b7ea1a41 () Term)
(declare-fun FStar.Pervasives.smt_pat_or@tok () Term)

; </end encoding val FStar.Pervasives.smt_pat_or>


; <Start encoding let eqtype_u>

(declare-fun FStar.Pervasives.eqtype_u () Term)


; </end encoding let eqtype_u>


; <Skipped effect Lemma a pre post pats = Prims.Pure a/>


; <Start encoding val FStar.Pervasives.spinoff>

(declare-fun FStar.Pervasives.spinoff (Term) Term)

(declare-fun FStar.Pervasives.spinoff@tok () Term)

; </end encoding val FStar.Pervasives.spinoff>


; <Start encoding val FStar.Pervasives.spinoff_eq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Pervasives.spinoff_eq (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Pervasives.spinoff_eq@tok () Term)

; </end encoding val FStar.Pervasives.spinoff_eq>


; <Start encoding val FStar.Pervasives.spinoff_equiv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Pervasives.spinoff_equiv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Pervasives.spinoff_equiv@tok () Term)

; </end encoding val FStar.Pervasives.spinoff_equiv>


; <Start encoding val FStar.Pervasives.assert_spinoff>

(declare-fun FStar.Pervasives.assert_spinoff (Term) Term)

(declare-fun Tm_arrow_071538fd1c72fb82c7bb7b280daddf84 () Term)
(declare-fun FStar.Pervasives.assert_spinoff@tok () Term)


; </end encoding val FStar.Pervasives.assert_spinoff>


; <Start encoding let id>

(declare-fun FStar.Pervasives.id (Term Term) Term)

(declare-fun FStar.Pervasives.id@tok () Term)

; </end encoding let id>


; <Start encoding let trivial_pure_post>

(declare-fun FStar.Pervasives.trivial_pure_post (Term) Term)
(declare-fun Tm_arrow_53823f439377767fbcd3e27ebcdb971b () Term)
(declare-fun FStar.Pervasives.trivial_pure_post@tok () Term)

(declare-fun Tm_abs_5e34897418ce4950a4effcc8c159cf53 (Term) Term)

; </end encoding let trivial_pure_post>


; <Start encoding val FStar.Pervasives.ambient>

(declare-fun FStar.Pervasives.ambient (Term Term) Term)
(declare-fun Tm_arrow_9e007179360e2932d75ab29019e3d7fa () Term)
(declare-fun FStar.Pervasives.ambient@tok () Term)

; </end encoding val FStar.Pervasives.ambient>


; <Start encoding val FStar.Pervasives.intro_ambient>

(declare-fun FStar.Pervasives.intro_ambient (Term Term) Term)
(declare-fun Tm_arrow_6fc6334d56387f3d408122a4bd045e7e () Term)
(declare-fun FStar.Pervasives.intro_ambient@tok () Term)

; </end encoding val FStar.Pervasives.intro_ambient>


; <Start encoding val FStar.Pervasives.normalize_term>

(declare-fun FStar.Pervasives.normalize_term (Term Term) Term)

(declare-fun FStar.Pervasives.normalize_term@tok () Term)

; </end encoding val FStar.Pervasives.normalize_term>


; <Start encoding val FStar.Pervasives.normalize>

(declare-fun FStar.Pervasives.normalize (Term) Term)

(declare-fun FStar.Pervasives.normalize@tok () Term)

; </end encoding val FStar.Pervasives.normalize>


; <Start encoding val FStar.Pervasives.norm_step>

(declare-fun FStar.Pervasives.norm_step () Term)

; </end encoding val FStar.Pervasives.norm_step>


; <Start encoding val FStar.Pervasives.simplify>

(declare-fun FStar.Pervasives.simplify (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.simplify>


; <Start encoding val FStar.Pervasives.weak>

(declare-fun FStar.Pervasives.weak (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.weak>


; <Start encoding val FStar.Pervasives.hnf>

(declare-fun FStar.Pervasives.hnf (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.hnf>


; <Start encoding val FStar.Pervasives.primops>

(declare-fun FStar.Pervasives.primops (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.primops>


; <Start encoding val FStar.Pervasives.delta>

(declare-fun FStar.Pervasives.delta (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.delta>


; <Start encoding val FStar.Pervasives.norm_debug>

(declare-fun FStar.Pervasives.norm_debug (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.norm_debug>


; <Start encoding val FStar.Pervasives.zeta>

(declare-fun FStar.Pervasives.zeta (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.zeta>


; <Start encoding val FStar.Pervasives.zeta_full>

(declare-fun FStar.Pervasives.zeta_full (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.zeta_full>


; <Start encoding val FStar.Pervasives.iota>

(declare-fun FStar.Pervasives.iota (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.iota>


; <Start encoding val FStar.Pervasives.nbe>

(declare-fun FStar.Pervasives.nbe (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.nbe>


; <Start encoding val FStar.Pervasives.reify_>

(declare-fun FStar.Pervasives.reify_ (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.reify_>


; <Start encoding val FStar.Pervasives.delta_only>

(declare-fun FStar.Pervasives.delta_only (Term) Term)
(declare-fun Tm_arrow_f14a20345cd55ddda96b6c4cc49e05f1 () Term)
(declare-fun FStar.Pervasives.delta_only@tok () Term)

; </end encoding val FStar.Pervasives.delta_only>


; <Start encoding val FStar.Pervasives.delta_fully>

(declare-fun FStar.Pervasives.delta_fully (Term) Term)

(declare-fun FStar.Pervasives.delta_fully@tok () Term)

; </end encoding val FStar.Pervasives.delta_fully>


; <Start encoding val FStar.Pervasives.delta_attr>

(declare-fun FStar.Pervasives.delta_attr (Term) Term)

(declare-fun FStar.Pervasives.delta_attr@tok () Term)

; </end encoding val FStar.Pervasives.delta_attr>


; <Start encoding val FStar.Pervasives.delta_qualifier>

(declare-fun FStar.Pervasives.delta_qualifier (Term) Term)

(declare-fun FStar.Pervasives.delta_qualifier@tok () Term)

; </end encoding val FStar.Pervasives.delta_qualifier>


; <Start encoding val FStar.Pervasives.delta_namespace>

(declare-fun FStar.Pervasives.delta_namespace (Term) Term)

(declare-fun FStar.Pervasives.delta_namespace@tok () Term)

; </end encoding val FStar.Pervasives.delta_namespace>


; <Start encoding val FStar.Pervasives.unmeta>

(declare-fun FStar.Pervasives.unmeta (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.unmeta>


; <Start encoding val FStar.Pervasives.unascribe>

(declare-fun FStar.Pervasives.unascribe (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.unascribe>


; <Start encoding val FStar.Pervasives.norm>

(declare-fun FStar.Pervasives.norm (Term Term Term) Term)
(declare-fun Tm_arrow_7d92e7a4aa7eee4098b10c5f1b3d77ea () Term)
(declare-fun FStar.Pervasives.norm@tok () Term)

; </end encoding val FStar.Pervasives.norm>


; <Start encoding val FStar.Pervasives.assert_norm>

(declare-fun FStar.Pervasives.assert_norm (Term) Term)

(declare-fun Tm_arrow_ee24fcf624d074d3c637ee61e4a867fb () Term)
(declare-fun FStar.Pervasives.assert_norm@tok () Term)


; </end encoding val FStar.Pervasives.assert_norm>


; <Start encoding val FStar.Pervasives.normalize_term_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Pervasives.normalize_term_spec (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Pervasives.normalize_term_spec@tok () Term)

; </end encoding val FStar.Pervasives.normalize_term_spec>


; <Start encoding val FStar.Pervasives.normalize_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Pervasives.normalize_spec (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Pervasives.normalize_spec@tok () Term)

; </end encoding val FStar.Pervasives.normalize_spec>


; <Start encoding val FStar.Pervasives.norm_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Pervasives.norm_spec (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Pervasives.norm_spec@tok () Term)

; </end encoding val FStar.Pervasives.norm_spec>


; <Start encoding let reveal_opaque>

(declare-fun FStar.Pervasives.reveal_opaque (Term Term) Term)
(declare-fun Tm_refine_2be30877b98f57c6ef5847ce3a81c23c (Term Term Term) Term)
(declare-fun Tm_arrow_ba8e05da7828191e456b9d6196e5c486 (Term Term) Term)
(declare-fun Tm_arrow_a3d09fecedc35d104f95c5fde10a81ff () Term)
(declare-fun FStar.Pervasives.reveal_opaque@tok () Term)



; </end encoding let reveal_opaque>


; <Start encoding let pure_return>

(declare-fun FStar.Pervasives.pure_return (Term Term) Term)
(declare-fun Tm_arrow_0dff8d294aeaf0b1d7e9cad664c9a15f () Term)
(declare-fun FStar.Pervasives.pure_return@tok () Term)

(declare-fun Tm_abs_bc5117f6a06a581c69e04141781c86d0 (Term Term Term) Term)
(declare-fun Tm_arrow_c88a29758356586fc450d481d4b685f3 (Term) Term)
(declare-fun Tm_abs_bdac9a3f32789788b83138a3a4262d0d (Term Term) Term)

; </end encoding let pure_return>


; <Start encoding let pure_bind_wp>

(declare-fun Tm_arrow_c05bc9331677cc1a187ad7677301a601 (Term Term) Term)
(declare-fun FStar.Pervasives.pure_bind_wp (Term Term Term Term) Term)

(declare-fun Tm_arrow_f8eba41a4bcb9aca0e3c11224f695d1e () Term)
(declare-fun FStar.Pervasives.pure_bind_wp@tok () Term)


(declare-fun Tm_abs_d0f415a5361a9d7988d8e425dc193472 (Term Term Term) Term)

(declare-fun Tm_abs_72b65b71b828688dbb0ba657715a194c (Term Term Term Term) Term)

; </end encoding let pure_bind_wp>


; <Start encoding let pure_if_then_else>

(declare-fun FStar.Pervasives.pure_if_then_else (Term Term Term Term) Term)
(declare-fun Tm_arrow_5911c11ab85061b4a8acf6a6ff43aaea () Term)
(declare-fun FStar.Pervasives.pure_if_then_else@tok () Term)

(declare-fun Tm_abs_614d7ab3976dfea6b6428085a93bafcc (Term Term Term Term) Term)

; </end encoding let pure_if_then_else>


; <Start encoding let pure_ite_wp>

(declare-fun FStar.Pervasives.pure_ite_wp (Term Term) Term)
(declare-fun Tm_arrow_983cc9c1e881fffd3b37c61b327d54c8 () Term)
(declare-fun FStar.Pervasives.pure_ite_wp@tok () Term)

(declare-fun Tm_abs_ea1703a99385b474600aa7a3bdb045c5 (Term Term Term) Term)
(declare-fun Tm_arrow_b275e247a67e3e77d7c5997d864d1247 (Term) Term)
(declare-fun Tm_abs_f9993abe3e10fc5902262cf22e5f5e1c (Term Term Term) Term)

(declare-fun Tm_abs_a4d8a67e708eb0f8e41d6eefd90d8b3d (Term Term) Term)

; </end encoding let pure_ite_wp>


; <Start encoding let pure_close_wp>


(declare-fun FStar.Pervasives.pure_close_wp (Term Term Term) Term)

(declare-fun Tm_arrow_6424f17922e38fc8eb3b7ad8d9107d78 () Term)
(declare-fun FStar.Pervasives.pure_close_wp@tok () Term)




(declare-fun Tm_abs_bef01cdc202d648a37f7725a1e8579fa (Term Term Term) Term)

; </end encoding let pure_close_wp>


; <Start encoding let pure_null_wp>

(declare-fun FStar.Pervasives.pure_null_wp (Term) Term)
(declare-fun Tm_arrow_e02f472dad10492b4fdaf21971ae643f () Term)
(declare-fun FStar.Pervasives.pure_null_wp@tok () Term)



(declare-fun Tm_abs_c7a599bd05f6d553477b7b3a5a51d357 (Term) Term)

; </end encoding let pure_null_wp>


; <Start encoding let pure_assert_wp>

(declare-fun FStar.Pervasives.pure_assert_wp (Term) Term)

(declare-fun FStar.Pervasives.pure_assert_wp@tok () Term)

; </end encoding let pure_assert_wp>


; <Start encoding let pure_assume_wp>

(declare-fun FStar.Pervasives.pure_assume_wp (Term) Term)

(declare-fun FStar.Pervasives.pure_assume_wp@tok () Term)

; </end encoding let pure_assume_wp>


; <Skipped new_effect { DIV ... }/>


; <Skipped sub_effect PURE ~> DIV/>


; <Start encoding let div_hoare_to_wp>

(declare-fun FStar.Pervasives.div_hoare_to_wp (Term Term Term) Term)
(declare-fun Tm_arrow_e81e37f60b892c60a4b806bfecd6c240 () Term)
(declare-fun FStar.Pervasives.div_hoare_to_wp@tok () Term)




(declare-fun Tm_abs_69982e78bbdc9cbdfcc98c8c3ec276f1 (Term Term Term Term) Term)


(declare-fun Tm_abs_95829b03554cf2093d2bc29e28500b94 (Term Term Term) Term)

; </end encoding let div_hoare_to_wp>


; <Skipped effect Div a pre post = FStar.Pervasives.DIV a/>


; <Skipped effect Dv a = FStar.Pervasives.DIV a/>


; <Skipped effect EXT a = FStar.Pervasives.Dv a/>


; <Start encoding let st_pre_h>

(declare-fun FStar.Pervasives.st_pre_h (Term) Term)

(declare-fun FStar.Pervasives.st_pre_h@tok () Term)


; </end encoding let st_pre_h>


; <Start encoding let st_post_h'>

(declare-fun FStar.Pervasives.st_post_h_ (Term Term Term) Term)
(declare-fun Tm_arrow_659175ed40df3b798f91ffaee9e689bd () Term)
(declare-fun FStar.Pervasives.st_post_h_@tok () Term)

(declare-fun Tm_arrow_14435f7112db17792f8cd33f8f7ea859 (Term Term Term) Term)

; </end encoding let st_post_h'>


; <Start encoding let st_post_h>

(declare-fun FStar.Pervasives.st_post_h (Term Term) Term)

(declare-fun FStar.Pervasives.st_post_h@tok () Term)

; </end encoding let st_post_h>


; <Start encoding let st_wp_h>

(declare-fun FStar.Pervasives.st_wp_h (Term Term) Term)

(declare-fun FStar.Pervasives.st_wp_h@tok () Term)
(declare-fun Tm_arrow_c80b139653078194d2de90941effdc68 (Term Term) Term)

; </end encoding let st_wp_h>


; <Start encoding let st_return>

(declare-fun FStar.Pervasives.st_return (Term Term Term Term) Term)

(declare-fun Tm_arrow_6bfe4bf6faf1fb53a521d575cefc35ef () Term)
(declare-fun FStar.Pervasives.st_return@tok () Term)


; </end encoding let st_return>


; <Start encoding let st_bind_wp>

(declare-fun Tm_arrow_c6e0af8c2ccbdda79db5c09d07e87e35 (Term Term Term) Term)
(declare-fun FStar.Pervasives.st_bind_wp (Term Term Term Term Term Term Term) Term)

(declare-fun Tm_arrow_0eca50df2f29485bdbf578799f16b4a6 () Term)
(declare-fun FStar.Pervasives.st_bind_wp@tok () Term)

(declare-fun Tm_arrow_eb9b1a038524b37579c152a3f169145e (Term Term) Term)
(declare-fun Tm_abs_0f3b5ee9eaa8de8cacad7d3dcacb4558 (Term Term Term Term) Term)

; </end encoding let st_bind_wp>


; <Start encoding let st_if_then_else>

(declare-fun FStar.Pervasives.st_if_then_else (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_6e48361e1a1c92df6ec1ff87e622ddad () Term)
(declare-fun FStar.Pervasives.st_if_then_else@tok () Term)

; </end encoding let st_if_then_else>


; <Start encoding let st_ite_wp>

(declare-fun FStar.Pervasives.st_ite_wp (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_eaad896c6afdcb7ade2e80b5a6a930af () Term)
(declare-fun FStar.Pervasives.st_ite_wp@tok () Term)

; </end encoding let st_ite_wp>


; <Start encoding let st_stronger>

(declare-fun FStar.Pervasives.st_stronger (Term Term Term Term) Term)
(declare-fun Tm_arrow_ae4d7f489de84317e0022bf89d45dd95 () Term)
(declare-fun FStar.Pervasives.st_stronger@tok () Term)

; </end encoding let st_stronger>


; <Start encoding let st_close_wp>


(declare-fun FStar.Pervasives.st_close_wp (Term Term Term Term Term Term) Term)

(declare-fun Tm_arrow_de6d3045642382698e9e38d41acfd7cc () Term)
(declare-fun FStar.Pervasives.st_close_wp@tok () Term)


; </end encoding let st_close_wp>


; <Start encoding let st_trivial>

(declare-fun FStar.Pervasives.st_trivial (Term Term Term) Term)
(declare-fun Tm_arrow_f145e04ff3c7033bdfc718f7f5bb1df0 () Term)
(declare-fun FStar.Pervasives.st_trivial@tok () Term)

(declare-fun Tm_abs_89b21c42be5bc00d63e29f63ae20d4e2 (Term Term) Term)

; </end encoding let st_trivial>


; <Skipped new_effect { STATE_h ... }/>


; <Start encoding type FStar.Pervasives.result>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.result (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.result@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.V (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.V_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.V_v (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.V
(declare-fun FStar.Pervasives.V@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.E (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.E_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.E_e (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.E
(declare-fun FStar.Pervasives.E@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Err (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Err_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Err_msg (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Err
(declare-fun FStar.Pervasives.Err@tok () Term)
(declare-fun Tm_arrow_30908143640041985b9200e2fb38a259 () Term)
(declare-fun Tm_arrow_f8bb10130fea772e0f786d78a188c381 () Term)
(declare-fun Tm_arrow_93661c87034b0b64c4714dafbe2b02e6 () Term)

; <start constructor FStar.Pervasives.result>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.result ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
263)
(exists ((@x0 Term))
 (! (= __@x0
(FStar.Pervasives.result @x0))
 
;;no pats
:qid is-FStar.Pervasives.result))))

; </end constructor FStar.Pervasives.result>


; <start constructor FStar.Pervasives.V>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.V ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
270)
(= __@x0
(FStar.Pervasives.V (FStar.Pervasives.V_a __@x0)
(FStar.Pervasives.V_v __@x0)))))

; </end constructor FStar.Pervasives.V>


; <start constructor FStar.Pervasives.E>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.E ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
275)
(= __@x0
(FStar.Pervasives.E (FStar.Pervasives.E_a __@x0)
(FStar.Pervasives.E_e __@x0)))))

; </end constructor FStar.Pervasives.E>


; <start constructor FStar.Pervasives.Err>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Err ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
280)
(= __@x0
(FStar.Pervasives.Err (FStar.Pervasives.Err_a __@x0)
(FStar.Pervasives.Err_msg __@x0)))))

; </end constructor FStar.Pervasives.Err>


; </end encoding type FStar.Pervasives.result>


; <Start encoding val FStar.Pervasives.uu___is_V>

(declare-fun FStar.Pervasives.uu___is_V (Term Term) Term)
(declare-fun Tm_arrow_5cd1d0722a6a986faf6f8e557186fe24 () Term)
(declare-fun FStar.Pervasives.uu___is_V@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_V>


; <Skipped let uu___is_V/>


; <Start encoding val FStar.Pervasives.__proj__V__item__v>

(declare-fun Tm_refine_9db520b26a7f39c5a01493a3f375290d (Term) Term)
(declare-fun FStar.Pervasives.__proj__V__item__v (Term Term) Term)

(declare-fun Tm_arrow_1ea119bf213c016916a7095486e28467 () Term)
(declare-fun FStar.Pervasives.__proj__V__item__v@tok () Term)

; </end encoding val FStar.Pervasives.__proj__V__item__v>


; <Skipped let __proj__V__item__v/>


; <Start encoding val FStar.Pervasives.uu___is_E>

(declare-fun FStar.Pervasives.uu___is_E (Term Term) Term)

(declare-fun FStar.Pervasives.uu___is_E@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_E>


; <Skipped let uu___is_E/>


; <Start encoding val FStar.Pervasives.__proj__E__item__e>

(declare-fun Tm_refine_95e1e2ee29104754cc3740f5575fc6e5 (Term) Term)
(declare-fun FStar.Pervasives.__proj__E__item__e (Term Term) Term)

(declare-fun Tm_arrow_19e73c373dbf3f9945c6fcfce8a07661 () Term)
(declare-fun FStar.Pervasives.__proj__E__item__e@tok () Term)

; </end encoding val FStar.Pervasives.__proj__E__item__e>


; <Skipped let __proj__E__item__e/>


; <Start encoding val FStar.Pervasives.uu___is_Err>

(declare-fun FStar.Pervasives.uu___is_Err (Term Term) Term)

(declare-fun FStar.Pervasives.uu___is_Err@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Err>


; <Skipped let uu___is_Err/>


; <Start encoding val FStar.Pervasives.__proj__Err__item__msg>

(declare-fun Tm_refine_22fb403854eba07427f92e79848f9d9f (Term) Term)
(declare-fun FStar.Pervasives.__proj__Err__item__msg (Term Term) Term)

(declare-fun Tm_arrow_f7e3debb858e412c9497460c5187d5cd () Term)
(declare-fun FStar.Pervasives.__proj__Err__item__msg@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Err__item__msg>


; <Skipped let __proj__Err__item__msg/>


; <Start encoding let ex_pre>

(declare-fun FStar.Pervasives.ex_pre () Term)

; </end encoding let ex_pre>


; <Start encoding let ex_post'>

(declare-fun FStar.Pervasives.ex_post_ (Term Term) Term)

(declare-fun FStar.Pervasives.ex_post_@tok () Term)
(declare-fun Tm_refine_a4dcdeeacbcb04d05a6720f786918fd6 (Term Term) Term)
(declare-fun Tm_arrow_68b66d987e8a7bdf825af8b370553e65 (Term Term) Term)

; </end encoding let ex_post'>


; <Start encoding let ex_post>

(declare-fun FStar.Pervasives.ex_post (Term) Term)

(declare-fun FStar.Pervasives.ex_post@tok () Term)

; </end encoding let ex_post>


; <Start encoding let ex_wp>

(declare-fun FStar.Pervasives.ex_wp (Term) Term)

(declare-fun FStar.Pervasives.ex_wp@tok () Term)
(declare-fun Tm_arrow_58168e52ae0908fefec42cac825ecc69 (Term) Term)

; </end encoding let ex_wp>


; <Start encoding let ex_return>

(declare-fun FStar.Pervasives.ex_return (Term Term Term) Term)
(declare-fun Tm_arrow_375264f6f19b4e37d33ffba9f6b1c7d2 () Term)
(declare-fun FStar.Pervasives.ex_return@tok () Term)

; </end encoding let ex_return>


; <Start encoding let ex_bind_wp>

(declare-fun Tm_arrow_3eb2992a529511f5b0ff2fef4e4594ad (Term Term) Term)
(declare-fun FStar.Pervasives.ex_bind_wp (Term Term Term Term Term) Term)

(declare-fun Tm_arrow_1da2056f1a2fe3dc8db7decf5cbd5885 () Term)
(declare-fun FStar.Pervasives.ex_bind_wp@tok () Term)

(declare-fun Tm_arrow_ca5db633696caf7e0cd44c11654eed8b (Term) Term)
(declare-fun Tm_abs_c1d9037a5cc10cc07ba9b6a7a58728db (Term Term Term Term) Term)

; </end encoding let ex_bind_wp>


; <Start encoding let ex_if_then_else>

(declare-fun FStar.Pervasives.ex_if_then_else (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_08bd7ce530cc6e8b4a3f8dadbd0806b0 () Term)
(declare-fun FStar.Pervasives.ex_if_then_else@tok () Term)

; </end encoding let ex_if_then_else>


; <Start encoding let ex_ite_wp>

(declare-fun FStar.Pervasives.ex_ite_wp (Term Term Term) Term)
(declare-fun Tm_arrow_c2a8c761b16a75376b24262cd8c50369 () Term)
(declare-fun FStar.Pervasives.ex_ite_wp@tok () Term)

; </end encoding let ex_ite_wp>


; <Start encoding let ex_stronger>

(declare-fun FStar.Pervasives.ex_stronger (Term Term Term) Term)
(declare-fun Tm_arrow_1376d97b5d43e7d77d56729e2a3e04af () Term)
(declare-fun FStar.Pervasives.ex_stronger@tok () Term)

; </end encoding let ex_stronger>


; <Start encoding let ex_close_wp>


(declare-fun FStar.Pervasives.ex_close_wp (Term Term Term Term) Term)

(declare-fun Tm_arrow_814af0adff92aa08c5b8b0951bcb1959 () Term)
(declare-fun FStar.Pervasives.ex_close_wp@tok () Term)


; </end encoding let ex_close_wp>


; <Start encoding let ex_trivial>

(declare-fun FStar.Pervasives.ex_trivial (Term Term) Term)
(declare-fun Tm_arrow_ee4a787765920b0cb4357a47a0d3ac5c () Term)
(declare-fun FStar.Pervasives.ex_trivial@tok () Term)

(declare-fun Tm_abs_5cc223716d095f4545f0dcc745acad5d (Term) Term)

; </end encoding let ex_trivial>


; <Skipped new_effect { EXN ... }/>


; <Skipped effect Exn a pre post = FStar.Pervasives.EXN a/>


; <Start encoding let lift_div_exn>

(declare-fun FStar.Pervasives.lift_div_exn (Term Term Term) Term)
(declare-fun Tm_arrow_8196682216f286f6fe3a7dffb3de7d02 () Term)
(declare-fun FStar.Pervasives.lift_div_exn@tok () Term)

(declare-fun Tm_abs_c2b605ddd5d1991642baf5762d2b1dc5 (Term Term) Term)

; </end encoding let lift_div_exn>


; <Skipped sub_effect DIV ~> EXN/>


; <Skipped effect Ex a = FStar.Pervasives.Exn a/>


; <Start encoding let all_pre_h>

(declare-fun FStar.Pervasives.all_pre_h (Term) Term)

(declare-fun FStar.Pervasives.all_pre_h@tok () Term)


; </end encoding let all_pre_h>


; <Start encoding let all_post_h'>

(declare-fun FStar.Pervasives.all_post_h_ (Term Term Term) Term)

(declare-fun FStar.Pervasives.all_post_h_@tok () Term)

(declare-fun Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 (Term Term Term) Term)

; </end encoding let all_post_h'>


; <Start encoding let all_post_h>

(declare-fun FStar.Pervasives.all_post_h (Term Term) Term)

(declare-fun FStar.Pervasives.all_post_h@tok () Term)

; </end encoding let all_post_h>


; <Start encoding let all_wp_h>

(declare-fun FStar.Pervasives.all_wp_h (Term Term) Term)

(declare-fun FStar.Pervasives.all_wp_h@tok () Term)
(declare-fun Tm_arrow_1cd90c71d90a216d9fb0ba0321a1d3b5 (Term Term) Term)

; </end encoding let all_wp_h>


; <Start encoding let all_return>

(declare-fun FStar.Pervasives.all_return (Term Term Term Term) Term)

(declare-fun Tm_arrow_3f61557667800fb54cc62e48a5201f9d () Term)
(declare-fun FStar.Pervasives.all_return@tok () Term)


; </end encoding let all_return>


; <Start encoding let all_bind_wp>

(declare-fun Tm_arrow_b567b509414635f00096b9b1c3e30b57 (Term Term Term) Term)
(declare-fun FStar.Pervasives.all_bind_wp (Term Term Term Term Term Term Term) Term)

(declare-fun Tm_arrow_6ac18e25eb49f55ae0ce9c14679ecc22 () Term)
(declare-fun FStar.Pervasives.all_bind_wp@tok () Term)

(declare-fun Tm_arrow_59cac8a9b1ae3aa9511b8a867f8e934e (Term Term) Term)
(declare-fun Tm_abs_35ddc99cefc0079215f6f6ab3c58856d (Term Term Term Term Term) Term)

; </end encoding let all_bind_wp>


; <Start encoding let all_if_then_else>

(declare-fun FStar.Pervasives.all_if_then_else (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_491eee2c8dc4eab4d420326a8285d2c4 () Term)
(declare-fun FStar.Pervasives.all_if_then_else@tok () Term)

; </end encoding let all_if_then_else>


; <Start encoding let all_ite_wp>

(declare-fun FStar.Pervasives.all_ite_wp (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_20fdb4e6d0c32f949f55e39a059913a7 () Term)
(declare-fun FStar.Pervasives.all_ite_wp@tok () Term)

; </end encoding let all_ite_wp>


; <Start encoding let all_stronger>

(declare-fun FStar.Pervasives.all_stronger (Term Term Term Term) Term)
(declare-fun Tm_arrow_073b21d0ec8edf2dda32907b45ec5f68 () Term)
(declare-fun FStar.Pervasives.all_stronger@tok () Term)

; </end encoding let all_stronger>


; <Start encoding let all_close_wp>


(declare-fun FStar.Pervasives.all_close_wp (Term Term Term Term Term Term) Term)

(declare-fun Tm_arrow_803d195802308e8beadf04438d3a6508 () Term)
(declare-fun FStar.Pervasives.all_close_wp@tok () Term)


; </end encoding let all_close_wp>


; <Start encoding let all_trivial>

(declare-fun FStar.Pervasives.all_trivial (Term Term Term) Term)
(declare-fun Tm_arrow_957927b0d25001784693eee8b2182308 () Term)
(declare-fun FStar.Pervasives.all_trivial@tok () Term)

(declare-fun Tm_abs_22e463dbd987016e31d6bc67025a7cd9 (Term Term) Term)

; </end encoding let all_trivial>


; <Skipped new_effect { ALL_h ... }/>


; <Start encoding val FStar.Pervasives.inversion>

(declare-fun FStar.Pervasives.inversion (Term) Term)

(declare-fun FStar.Pervasives.inversion@tok () Term)

; </end encoding val FStar.Pervasives.inversion>


; <Start encoding val FStar.Pervasives.allow_inversion>

(declare-fun FStar.Pervasives.allow_inversion (Term) Term)
(declare-fun Tm_refine_363615bee79fae5066b7c8bd06c286d0 (Term) Term)
(declare-fun Tm_arrow_bcab9cce464ec0f76562bc48c17ba410 () Term)
(declare-fun FStar.Pervasives.allow_inversion@tok () Term)


; </end encoding val FStar.Pervasives.allow_inversion>


; <Start encoding val FStar.Pervasives.invertOption>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Pervasives.invertOption (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Pervasives.invertOption@tok () Term)

; </end encoding val FStar.Pervasives.invertOption>


; <Start encoding type FStar.Pervasives.either>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.either (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.either@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Inl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Inl_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Inl_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Inl_v (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Inl
(declare-fun FStar.Pervasives.Inl@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Inr (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Inr_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Inr_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Inr_v (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Inr
(declare-fun FStar.Pervasives.Inr@tok () Term)
(declare-fun Tm_arrow_065da0adeba0c4ae0da1476ececee84c () Term)
(declare-fun Tm_arrow_c883938642e6d97d79c975d8d94b4aac () Term)

; <start constructor FStar.Pervasives.either>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.either ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
402)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(FStar.Pervasives.either @x0
@x1))
 
;;no pats
:qid is-FStar.Pervasives.either))))

; </end constructor FStar.Pervasives.either>


; <start constructor FStar.Pervasives.Inl>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Inl ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
409)
(= __@x0
(FStar.Pervasives.Inl (FStar.Pervasives.Inl_a __@x0)
(FStar.Pervasives.Inl_b __@x0)
(FStar.Pervasives.Inl_v __@x0)))))

; </end constructor FStar.Pervasives.Inl>


; <start constructor FStar.Pervasives.Inr>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Inr ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
414)
(= __@x0
(FStar.Pervasives.Inr (FStar.Pervasives.Inr_a __@x0)
(FStar.Pervasives.Inr_b __@x0)
(FStar.Pervasives.Inr_v __@x0)))))

; </end constructor FStar.Pervasives.Inr>


; </end encoding type FStar.Pervasives.either>


; <Start encoding assume FStar.Pervasives.either__uu___haseq>


; </end encoding assume FStar.Pervasives.either__uu___haseq>


; <Start encoding val FStar.Pervasives.uu___is_Inl>

(declare-fun FStar.Pervasives.uu___is_Inl (Term Term Term) Term)
(declare-fun Tm_arrow_af0c68f1e39d4d6020c0873b16730c7d () Term)
(declare-fun FStar.Pervasives.uu___is_Inl@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Inl>


; <Skipped let uu___is_Inl/>


; <Start encoding val FStar.Pervasives.__proj__Inl__item__v>

(declare-fun Tm_refine_85e0cc884f8457202f90cd77f23733ba (Term Term) Term)
(declare-fun FStar.Pervasives.__proj__Inl__item__v (Term Term Term) Term)

(declare-fun Tm_arrow_a80e0750277867ba1a434ad3bba8702d () Term)
(declare-fun FStar.Pervasives.__proj__Inl__item__v@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Inl__item__v>


; <Skipped let __proj__Inl__item__v/>


; <Start encoding val FStar.Pervasives.uu___is_Inr>

(declare-fun FStar.Pervasives.uu___is_Inr (Term Term Term) Term)

(declare-fun FStar.Pervasives.uu___is_Inr@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Inr>


; <Skipped let uu___is_Inr/>


; <Start encoding val FStar.Pervasives.__proj__Inr__item__v>

(declare-fun Tm_refine_8f1f5f564dae90240db429de2eb41517 (Term Term) Term)
(declare-fun FStar.Pervasives.__proj__Inr__item__v (Term Term Term) Term)

(declare-fun Tm_arrow_df618db6b42762940f198036c8a56200 () Term)
(declare-fun FStar.Pervasives.__proj__Inr__item__v@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Inr__item__v>


; <Skipped let __proj__Inr__item__v/>


; <Start encoding let dfst>


(declare-fun FStar.Pervasives.dfst (Term Term Term) Term)


(declare-fun FStar.Pervasives.dfst@tok () Term)


; </end encoding let dfst>


; <Start encoding let dsnd>


(declare-fun FStar.Pervasives.dsnd (Term Term Term) Term)


(declare-fun FStar.Pervasives.dsnd@tok () Term)


; </end encoding let dsnd>


; <Start encoding type FStar.Pervasives.dtuple3>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.dtuple3 (Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.dtuple3@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Mkdtuple3 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple3_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple3_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple3_c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple3__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple3__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple3__3 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Mkdtuple3
(declare-fun FStar.Pervasives.Mkdtuple3@tok () Term)

(declare-fun Tm_arrow_0b6559e6ff3addf84b0c2880affbb335 (Term Term) Term)




(declare-fun Tm_arrow_8423f67df62f9e824c55756f9e26058d () Term)

; <start constructor FStar.Pervasives.dtuple3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.dtuple3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
450)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(FStar.Pervasives.dtuple3 @x0
@x1
@x2))
 
;;no pats
:qid is-FStar.Pervasives.dtuple3))))

; </end constructor FStar.Pervasives.dtuple3>


; <start constructor FStar.Pervasives.Mkdtuple3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Mkdtuple3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
461)
(= __@x0
(FStar.Pervasives.Mkdtuple3 (FStar.Pervasives.Mkdtuple3_a __@x0)
(FStar.Pervasives.Mkdtuple3_b __@x0)
(FStar.Pervasives.Mkdtuple3_c __@x0)
(FStar.Pervasives.Mkdtuple3__1 __@x0)
(FStar.Pervasives.Mkdtuple3__2 __@x0)
(FStar.Pervasives.Mkdtuple3__3 __@x0)))))

; </end constructor FStar.Pervasives.Mkdtuple3>


; </end encoding type FStar.Pervasives.dtuple3>


; <Start encoding assume FStar.Pervasives.dtuple3__uu___haseq>




; </end encoding assume FStar.Pervasives.dtuple3__uu___haseq>


; <Start encoding val FStar.Pervasives.uu___is_Mkdtuple3>



(declare-fun FStar.Pervasives.uu___is_Mkdtuple3 (Term Term Term Term) Term)


(declare-fun Tm_arrow_70452cb82cd0a282ca9a2dbeb54c1b04 () Term)
(declare-fun FStar.Pervasives.uu___is_Mkdtuple3@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Mkdtuple3>


; <Skipped let uu___is_Mkdtuple3/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple3__item___1>



(declare-fun FStar.Pervasives.__proj__Mkdtuple3__item___1 (Term Term Term Term) Term)


(declare-fun Tm_arrow_255f0cfe499b1d2e9836e157bce1dba3 () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple3__item___1@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple3__item___1>


; <Skipped let __proj__Mkdtuple3__item___1/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple3__item___2>



(declare-fun FStar.Pervasives.__proj__Mkdtuple3__item___2 (Term Term Term Term) Term)


(declare-fun Tm_arrow_ea1ded11f7d194a26e812f407333a011 () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple3__item___2@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple3__item___2>


; <Skipped let __proj__Mkdtuple3__item___2/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple3__item___3>



(declare-fun FStar.Pervasives.__proj__Mkdtuple3__item___3 (Term Term Term Term) Term)


(declare-fun Tm_arrow_1d7ad5cfa0fff643640e3f74466d283e () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple3__item___3@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple3__item___3>


; <Skipped let __proj__Mkdtuple3__item___3/>


; <Start encoding type FStar.Pervasives.dtuple4>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.dtuple4 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.dtuple4@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Mkdtuple4 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4_c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4_d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple4__4 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Mkdtuple4
(declare-fun FStar.Pervasives.Mkdtuple4@tok () Term)


(declare-fun Tm_arrow_af8eda99ba3685403be22a88669dcb35 (Term Term Term) Term)






(declare-fun Tm_arrow_cef44a6056754f192c2446237c4c1408 () Term)

; <start constructor FStar.Pervasives.dtuple4>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.dtuple4 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
519)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= __@x0
(FStar.Pervasives.dtuple4 @x0
@x1
@x2
@x3))
 
;;no pats
:qid is-FStar.Pervasives.dtuple4))))

; </end constructor FStar.Pervasives.dtuple4>


; <start constructor FStar.Pervasives.Mkdtuple4>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Mkdtuple4 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
532)
(= __@x0
(FStar.Pervasives.Mkdtuple4 (FStar.Pervasives.Mkdtuple4_a __@x0)
(FStar.Pervasives.Mkdtuple4_b __@x0)
(FStar.Pervasives.Mkdtuple4_c __@x0)
(FStar.Pervasives.Mkdtuple4_d __@x0)
(FStar.Pervasives.Mkdtuple4__1 __@x0)
(FStar.Pervasives.Mkdtuple4__2 __@x0)
(FStar.Pervasives.Mkdtuple4__3 __@x0)
(FStar.Pervasives.Mkdtuple4__4 __@x0)))))

; </end constructor FStar.Pervasives.Mkdtuple4>


; </end encoding type FStar.Pervasives.dtuple4>


; <Start encoding assume FStar.Pervasives.dtuple4__uu___haseq>





; </end encoding assume FStar.Pervasives.dtuple4__uu___haseq>


; <Start encoding val FStar.Pervasives.uu___is_Mkdtuple4>




(declare-fun FStar.Pervasives.uu___is_Mkdtuple4 (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_76a226dc2cea2ddd4e4258637fc95e5b () Term)
(declare-fun FStar.Pervasives.uu___is_Mkdtuple4@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Mkdtuple4>


; <Skipped let uu___is_Mkdtuple4/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple4__item___1>




(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___1 (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_1da4d60ab69f411b912e76cc25e77965 () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___1@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple4__item___1>


; <Skipped let __proj__Mkdtuple4__item___1/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple4__item___2>




(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___2 (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_a86867091548f3d7d3ca1cb8b0458b9f () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___2@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple4__item___2>


; <Skipped let __proj__Mkdtuple4__item___2/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple4__item___3>




(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___3 (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_ee72552fcc293405aa0e854ba26f27ac () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___3@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple4__item___3>


; <Skipped let __proj__Mkdtuple4__item___3/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple4__item___4>




(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___4 (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_6c79def96aa5d5d9eb9555c48dd9ebb6 () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple4__item___4@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple4__item___4>


; <Skipped let __proj__Mkdtuple4__item___4/>


; <Start encoding type FStar.Pervasives.dtuple5>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.dtuple5 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Pervasives.dtuple5@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Mkdtuple5 (Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5_c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5_d (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5_e (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5__2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5__4 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Mkdtuple5__5 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Mkdtuple5
(declare-fun FStar.Pervasives.Mkdtuple5@tok () Term)



(declare-fun Tm_arrow_e2051b23ee191036cd2c8f08b57577cc (Term Term Term Term) Term)








(declare-fun Tm_arrow_7c47a0b67fa3d6e69e51a1ade2982e74 () Term)

; <start constructor FStar.Pervasives.dtuple5>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.dtuple5 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
626)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= __@x0
(FStar.Pervasives.dtuple5 @x0
@x1
@x2
@x3
@x4))
 
;;no pats
:qid is-FStar.Pervasives.dtuple5))))

; </end constructor FStar.Pervasives.dtuple5>


; <start constructor FStar.Pervasives.Mkdtuple5>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Mkdtuple5 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
641)
(= __@x0
(FStar.Pervasives.Mkdtuple5 (FStar.Pervasives.Mkdtuple5_a __@x0)
(FStar.Pervasives.Mkdtuple5_b __@x0)
(FStar.Pervasives.Mkdtuple5_c __@x0)
(FStar.Pervasives.Mkdtuple5_d __@x0)
(FStar.Pervasives.Mkdtuple5_e __@x0)
(FStar.Pervasives.Mkdtuple5__1 __@x0)
(FStar.Pervasives.Mkdtuple5__2 __@x0)
(FStar.Pervasives.Mkdtuple5__3 __@x0)
(FStar.Pervasives.Mkdtuple5__4 __@x0)
(FStar.Pervasives.Mkdtuple5__5 __@x0)))))

; </end constructor FStar.Pervasives.Mkdtuple5>


; </end encoding type FStar.Pervasives.dtuple5>


; <Start encoding assume FStar.Pervasives.dtuple5__uu___haseq>






; </end encoding assume FStar.Pervasives.dtuple5__uu___haseq>


; <Start encoding val FStar.Pervasives.uu___is_Mkdtuple5>





(declare-fun FStar.Pervasives.uu___is_Mkdtuple5 (Term Term Term Term Term Term) Term)




(declare-fun Tm_arrow_790317d9d2afaf2417875fd8f65cee9f () Term)
(declare-fun FStar.Pervasives.uu___is_Mkdtuple5@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Mkdtuple5>


; <Skipped let uu___is_Mkdtuple5/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple5__item___1>





(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___1 (Term Term Term Term Term Term) Term)




(declare-fun Tm_arrow_855676d3a54fc2cdf0dfa3ac2f15fdad () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___1@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple5__item___1>


; <Skipped let __proj__Mkdtuple5__item___1/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple5__item___2>





(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___2 (Term Term Term Term Term Term) Term)




(declare-fun Tm_arrow_3c181aa1af161d84af20412908ff5981 () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___2@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple5__item___2>


; <Skipped let __proj__Mkdtuple5__item___2/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple5__item___3>





(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___3 (Term Term Term Term Term Term) Term)




(declare-fun Tm_arrow_cc152ea4c314cfd6854de94e70041031 () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___3@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple5__item___3>


; <Skipped let __proj__Mkdtuple5__item___3/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple5__item___4>





(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___4 (Term Term Term Term Term Term) Term)




(declare-fun Tm_arrow_6a05465acf4f8d1b8f43fd30077a772a () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___4@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple5__item___4>


; <Skipped let __proj__Mkdtuple5__item___4/>


; <Start encoding val FStar.Pervasives.__proj__Mkdtuple5__item___5>





(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___5 (Term Term Term Term Term Term) Term)




(declare-fun Tm_arrow_d5d61b48d54646c5c411627b3a20c98f () Term)
(declare-fun FStar.Pervasives.__proj__Mkdtuple5__item___5@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Mkdtuple5__item___5>


; <Skipped let __proj__Mkdtuple5__item___5/>


; <Start encoding let ignore>

(declare-fun FStar.Pervasives.ignore (Term Term) Term)
(declare-fun Tm_arrow_962476a7eea46a6ffc9b658c6d8fbc71 () Term)
(declare-fun FStar.Pervasives.ignore@tok () Term)

; </end encoding let ignore>


; <Start encoding val FStar.Pervasives.false_elim>

(declare-fun Tm_refine_f1ecc6ab6882a651504f328937700647 () Term)
(declare-fun FStar.Pervasives.false_elim (Term Term) Term)

(declare-fun Tm_arrow_7636fbfab5cd88ba06f60c10ea8caef2 () Term)
(declare-fun FStar.Pervasives.false_elim@tok () Term)

; </end encoding val FStar.Pervasives.false_elim>


; <Start encoding type FStar.Pervasives.__internal_ocaml_attributes>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.__internal_ocaml_attributes () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.PpxDerivingShow () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.PpxDerivingShow
(declare-fun FStar.Pervasives.PpxDerivingShow@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.PpxDerivingShowConstant (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.PpxDerivingShowConstant__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.PpxDerivingShowConstant
(declare-fun FStar.Pervasives.PpxDerivingShowConstant@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.PpxDerivingYoJson () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.PpxDerivingYoJson
(declare-fun FStar.Pervasives.PpxDerivingYoJson@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CInline () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CInline
(declare-fun FStar.Pervasives.CInline@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Substitute () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Substitute
(declare-fun FStar.Pervasives.Substitute@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Gc () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Gc
(declare-fun FStar.Pervasives.Gc@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.Comment (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.Comment__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.Comment
(declare-fun FStar.Pervasives.Comment@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CPrologue (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.CPrologue__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CPrologue
(declare-fun FStar.Pervasives.CPrologue@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CEpilogue (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.CEpilogue__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CEpilogue
(declare-fun FStar.Pervasives.CEpilogue@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CConst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.CConst__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CConst
(declare-fun FStar.Pervasives.CConst@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CCConv (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Pervasives.CCConv__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CCConv
(declare-fun FStar.Pervasives.CCConv@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CAbstractStruct () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CAbstractStruct
(declare-fun FStar.Pervasives.CAbstractStruct@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CIfDef () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CIfDef
(declare-fun FStar.Pervasives.CIfDef@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CMacro () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CMacro
(declare-fun FStar.Pervasives.CMacro@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Pervasives.CNoInline () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Pervasives.CNoInline
(declare-fun FStar.Pervasives.CNoInline@tok () Term)
(declare-fun Tm_arrow_a25c6dbdd7c43412e925069991c0ef48 () Term)






; <start constructor FStar.Pervasives.__internal_ocaml_attributes>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.__internal_ocaml_attributes ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
775)
(= __@x0
FStar.Pervasives.__internal_ocaml_attributes)))

; </end constructor FStar.Pervasives.__internal_ocaml_attributes>


; <start constructor FStar.Pervasives.PpxDerivingShow>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.PpxDerivingShow ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
781)
(= __@x0
FStar.Pervasives.PpxDerivingShow)))

; </end constructor FStar.Pervasives.PpxDerivingShow>


; <start constructor FStar.Pervasives.PpxDerivingShowConstant>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.PpxDerivingShowConstant ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
783)
(= __@x0
(FStar.Pervasives.PpxDerivingShowConstant (FStar.Pervasives.PpxDerivingShowConstant__0 __@x0)))))

; </end constructor FStar.Pervasives.PpxDerivingShowConstant>


; <start constructor FStar.Pervasives.PpxDerivingYoJson>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.PpxDerivingYoJson ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
788)
(= __@x0
FStar.Pervasives.PpxDerivingYoJson)))

; </end constructor FStar.Pervasives.PpxDerivingYoJson>


; <start constructor FStar.Pervasives.CInline>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CInline ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
790)
(= __@x0
FStar.Pervasives.CInline)))

; </end constructor FStar.Pervasives.CInline>


; <start constructor FStar.Pervasives.Substitute>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Substitute ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
792)
(= __@x0
FStar.Pervasives.Substitute)))

; </end constructor FStar.Pervasives.Substitute>


; <start constructor FStar.Pervasives.Gc>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Gc ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
794)
(= __@x0
FStar.Pervasives.Gc)))

; </end constructor FStar.Pervasives.Gc>


; <start constructor FStar.Pervasives.Comment>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.Comment ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
796)
(= __@x0
(FStar.Pervasives.Comment (FStar.Pervasives.Comment__0 __@x0)))))

; </end constructor FStar.Pervasives.Comment>


; <start constructor FStar.Pervasives.CPrologue>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CPrologue ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
801)
(= __@x0
(FStar.Pervasives.CPrologue (FStar.Pervasives.CPrologue__0 __@x0)))))

; </end constructor FStar.Pervasives.CPrologue>


; <start constructor FStar.Pervasives.CEpilogue>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CEpilogue ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
806)
(= __@x0
(FStar.Pervasives.CEpilogue (FStar.Pervasives.CEpilogue__0 __@x0)))))

; </end constructor FStar.Pervasives.CEpilogue>


; <start constructor FStar.Pervasives.CConst>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CConst ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
811)
(= __@x0
(FStar.Pervasives.CConst (FStar.Pervasives.CConst__0 __@x0)))))

; </end constructor FStar.Pervasives.CConst>


; <start constructor FStar.Pervasives.CCConv>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CCConv ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
816)
(= __@x0
(FStar.Pervasives.CCConv (FStar.Pervasives.CCConv__0 __@x0)))))

; </end constructor FStar.Pervasives.CCConv>


; <start constructor FStar.Pervasives.CAbstractStruct>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CAbstractStruct ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
821)
(= __@x0
FStar.Pervasives.CAbstractStruct)))

; </end constructor FStar.Pervasives.CAbstractStruct>


; <start constructor FStar.Pervasives.CIfDef>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CIfDef ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
823)
(= __@x0
FStar.Pervasives.CIfDef)))

; </end constructor FStar.Pervasives.CIfDef>


; <start constructor FStar.Pervasives.CMacro>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CMacro ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
825)
(= __@x0
FStar.Pervasives.CMacro)))

; </end constructor FStar.Pervasives.CMacro>


; <start constructor FStar.Pervasives.CNoInline>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Pervasives.CNoInline ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
827)
(= __@x0
FStar.Pervasives.CNoInline)))

; </end constructor FStar.Pervasives.CNoInline>


; </end encoding type FStar.Pervasives.__internal_ocaml_attributes>


; <Start encoding assume FStar.Pervasives.__internal_ocaml_attributes__uu___haseq>


; </end encoding assume FStar.Pervasives.__internal_ocaml_attributes__uu___haseq>


; <Start encoding val FStar.Pervasives.uu___is_PpxDerivingShow>

(declare-fun FStar.Pervasives.uu___is_PpxDerivingShow (Term) Term)
(declare-fun Tm_arrow_89dc0c243f5e74d4fefc48cfe123db41 () Term)
(declare-fun FStar.Pervasives.uu___is_PpxDerivingShow@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_PpxDerivingShow>


; <Skipped let uu___is_PpxDerivingShow/>


; <Start encoding val FStar.Pervasives.uu___is_PpxDerivingShowConstant>

(declare-fun FStar.Pervasives.uu___is_PpxDerivingShowConstant (Term) Term)

(declare-fun FStar.Pervasives.uu___is_PpxDerivingShowConstant@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_PpxDerivingShowConstant>


; <Skipped let uu___is_PpxDerivingShowConstant/>


; <Start encoding val FStar.Pervasives.__proj__PpxDerivingShowConstant__item___0>

(declare-fun Tm_refine_564db2f0aa0878b4d96c60508be3dd36 () Term)
(declare-fun FStar.Pervasives.__proj__PpxDerivingShowConstant__item___0 (Term) Term)

(declare-fun Tm_arrow_dbb84ef8131159481071b6d6a41b7f31 () Term)
(declare-fun FStar.Pervasives.__proj__PpxDerivingShowConstant__item___0@tok () Term)

; </end encoding val FStar.Pervasives.__proj__PpxDerivingShowConstant__item___0>


; <Skipped let __proj__PpxDerivingShowConstant__item___0/>


; <Start encoding val FStar.Pervasives.uu___is_PpxDerivingYoJson>

(declare-fun FStar.Pervasives.uu___is_PpxDerivingYoJson (Term) Term)

(declare-fun FStar.Pervasives.uu___is_PpxDerivingYoJson@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_PpxDerivingYoJson>


; <Skipped let uu___is_PpxDerivingYoJson/>


; <Start encoding val FStar.Pervasives.uu___is_CInline>

(declare-fun FStar.Pervasives.uu___is_CInline (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CInline@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CInline>


; <Skipped let uu___is_CInline/>


; <Start encoding val FStar.Pervasives.uu___is_Substitute>

(declare-fun FStar.Pervasives.uu___is_Substitute (Term) Term)

(declare-fun FStar.Pervasives.uu___is_Substitute@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Substitute>


; <Skipped let uu___is_Substitute/>


; <Start encoding val FStar.Pervasives.uu___is_Gc>

(declare-fun FStar.Pervasives.uu___is_Gc (Term) Term)

(declare-fun FStar.Pervasives.uu___is_Gc@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Gc>


; <Skipped let uu___is_Gc/>


; <Start encoding val FStar.Pervasives.uu___is_Comment>

(declare-fun FStar.Pervasives.uu___is_Comment (Term) Term)

(declare-fun FStar.Pervasives.uu___is_Comment@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_Comment>


; <Skipped let uu___is_Comment/>


; <Start encoding val FStar.Pervasives.__proj__Comment__item___0>

(declare-fun Tm_refine_c53089e2d20d1b0f5a267296ac8e45f0 () Term)
(declare-fun FStar.Pervasives.__proj__Comment__item___0 (Term) Term)

(declare-fun Tm_arrow_d4c2bbf4fb852b3f4b9961c7cbc2f3a2 () Term)
(declare-fun FStar.Pervasives.__proj__Comment__item___0@tok () Term)

; </end encoding val FStar.Pervasives.__proj__Comment__item___0>


; <Skipped let __proj__Comment__item___0/>


; <Start encoding val FStar.Pervasives.uu___is_CPrologue>

(declare-fun FStar.Pervasives.uu___is_CPrologue (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CPrologue@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CPrologue>


; <Skipped let uu___is_CPrologue/>


; <Start encoding val FStar.Pervasives.__proj__CPrologue__item___0>

(declare-fun Tm_refine_ac46c1a2a06ce46a180e0eda48004c47 () Term)
(declare-fun FStar.Pervasives.__proj__CPrologue__item___0 (Term) Term)

(declare-fun Tm_arrow_929b9daa0a2a2e99e3571b146c52feaf () Term)
(declare-fun FStar.Pervasives.__proj__CPrologue__item___0@tok () Term)

; </end encoding val FStar.Pervasives.__proj__CPrologue__item___0>


; <Skipped let __proj__CPrologue__item___0/>


; <Start encoding val FStar.Pervasives.uu___is_CEpilogue>

(declare-fun FStar.Pervasives.uu___is_CEpilogue (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CEpilogue@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CEpilogue>


; <Skipped let uu___is_CEpilogue/>


; <Start encoding val FStar.Pervasives.__proj__CEpilogue__item___0>

(declare-fun Tm_refine_47384bef739d1f0729fd782d351dc9a5 () Term)
(declare-fun FStar.Pervasives.__proj__CEpilogue__item___0 (Term) Term)

(declare-fun Tm_arrow_e37361b66babb46a30183ad1ff072689 () Term)
(declare-fun FStar.Pervasives.__proj__CEpilogue__item___0@tok () Term)

; </end encoding val FStar.Pervasives.__proj__CEpilogue__item___0>


; <Skipped let __proj__CEpilogue__item___0/>


; <Start encoding val FStar.Pervasives.uu___is_CConst>

(declare-fun FStar.Pervasives.uu___is_CConst (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CConst@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CConst>


; <Skipped let uu___is_CConst/>


; <Start encoding val FStar.Pervasives.__proj__CConst__item___0>

(declare-fun Tm_refine_5036c6b2983454bc3afeffcba3f00f50 () Term)
(declare-fun FStar.Pervasives.__proj__CConst__item___0 (Term) Term)

(declare-fun Tm_arrow_2d0b7639551b88b0df758d7b36c8f77a () Term)
(declare-fun FStar.Pervasives.__proj__CConst__item___0@tok () Term)

; </end encoding val FStar.Pervasives.__proj__CConst__item___0>


; <Skipped let __proj__CConst__item___0/>


; <Start encoding val FStar.Pervasives.uu___is_CCConv>

(declare-fun FStar.Pervasives.uu___is_CCConv (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CCConv@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CCConv>


; <Skipped let uu___is_CCConv/>


; <Start encoding val FStar.Pervasives.__proj__CCConv__item___0>

(declare-fun Tm_refine_2c4510f48649a66c3dca1fc9e3a2d320 () Term)
(declare-fun FStar.Pervasives.__proj__CCConv__item___0 (Term) Term)

(declare-fun Tm_arrow_b7e884ec94708f2b05c42d4d8834eac6 () Term)
(declare-fun FStar.Pervasives.__proj__CCConv__item___0@tok () Term)

; </end encoding val FStar.Pervasives.__proj__CCConv__item___0>


; <Skipped let __proj__CCConv__item___0/>


; <Start encoding val FStar.Pervasives.uu___is_CAbstractStruct>

(declare-fun FStar.Pervasives.uu___is_CAbstractStruct (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CAbstractStruct@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CAbstractStruct>


; <Skipped let uu___is_CAbstractStruct/>


; <Start encoding val FStar.Pervasives.uu___is_CIfDef>

(declare-fun FStar.Pervasives.uu___is_CIfDef (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CIfDef@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CIfDef>


; <Skipped let uu___is_CIfDef/>


; <Start encoding val FStar.Pervasives.uu___is_CMacro>

(declare-fun FStar.Pervasives.uu___is_CMacro (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CMacro@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CMacro>


; <Skipped let uu___is_CMacro/>


; <Start encoding val FStar.Pervasives.uu___is_CNoInline>

(declare-fun FStar.Pervasives.uu___is_CNoInline (Term) Term)

(declare-fun FStar.Pervasives.uu___is_CNoInline@tok () Term)

; </end encoding val FStar.Pervasives.uu___is_CNoInline>


; <Skipped let uu___is_CNoInline/>


; <Start encoding val FStar.Pervasives.inline_let>

(declare-fun FStar.Pervasives.inline_let (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.inline_let>


; <Start encoding val FStar.Pervasives.rename_let>

(declare-fun FStar.Pervasives.rename_let (Term) Term)

(declare-fun FStar.Pervasives.rename_let@tok () Term)

; </end encoding val FStar.Pervasives.rename_let>


; <Start encoding val FStar.Pervasives.plugin>

(declare-fun FStar.Pervasives.plugin (Term) Term)
(declare-fun Tm_arrow_f12575a0ee171a8be16a63e3359708f8 () Term)
(declare-fun FStar.Pervasives.plugin@tok () Term)

; </end encoding val FStar.Pervasives.plugin>


; <Start encoding val FStar.Pervasives.tcnorm>

(declare-fun FStar.Pervasives.tcnorm (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.tcnorm>


; <Start encoding val FStar.Pervasives.must_erase_for_extraction>

(declare-fun FStar.Pervasives.must_erase_for_extraction (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.must_erase_for_extraction>


; <Start encoding val FStar.Pervasives.dm4f_bind_range>

(declare-fun FStar.Pervasives.dm4f_bind_range (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.dm4f_bind_range>


; <Start encoding val FStar.Pervasives.expect_failure>

(declare-fun FStar.Pervasives.expect_failure (Term) Term)

(declare-fun FStar.Pervasives.expect_failure@tok () Term)

; </end encoding val FStar.Pervasives.expect_failure>


; <Start encoding val FStar.Pervasives.expect_lax_failure>

(declare-fun FStar.Pervasives.expect_lax_failure (Term) Term)

(declare-fun FStar.Pervasives.expect_lax_failure@tok () Term)

; </end encoding val FStar.Pervasives.expect_lax_failure>


; <Start encoding val FStar.Pervasives.tcdecltime>

(declare-fun FStar.Pervasives.tcdecltime (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.tcdecltime>


; <Start encoding val FStar.Pervasives.unifier_hint_injective>

(declare-fun FStar.Pervasives.unifier_hint_injective (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.unifier_hint_injective>


; <Start encoding val FStar.Pervasives.strict_on_arguments>

(declare-fun FStar.Pervasives.strict_on_arguments (Term) Term)

(declare-fun FStar.Pervasives.strict_on_arguments@tok () Term)

; </end encoding val FStar.Pervasives.strict_on_arguments>


; <Start encoding val FStar.Pervasives.resolve_implicits>

(declare-fun FStar.Pervasives.resolve_implicits (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.resolve_implicits>


; <Start encoding val FStar.Pervasives.override_resolve_implicits_handler>

(declare-fun FStar.Pervasives.override_resolve_implicits_handler (Term Term Term) Term)
(declare-fun Tm_arrow_93e6548cfc250f7cc25301579d62a018 () Term)
(declare-fun FStar.Pervasives.override_resolve_implicits_handler@tok () Term)

; </end encoding val FStar.Pervasives.override_resolve_implicits_handler>


; <Start encoding val FStar.Pervasives.handle_smt_goals>

(declare-fun FStar.Pervasives.handle_smt_goals (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.handle_smt_goals>


; <Start encoding val FStar.Pervasives.erasable>

(declare-fun FStar.Pervasives.erasable (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.erasable>


; <Start encoding val FStar.Pervasives.commute_nested_matches>

(declare-fun FStar.Pervasives.commute_nested_matches (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.commute_nested_matches>


; <Start encoding val FStar.Pervasives.noextract_to>

(declare-fun FStar.Pervasives.noextract_to (Term) Term)

(declare-fun FStar.Pervasives.noextract_to@tok () Term)

; </end encoding val FStar.Pervasives.noextract_to>


; <Start encoding val FStar.Pervasives.normalize_for_extraction>

(declare-fun FStar.Pervasives.normalize_for_extraction (Term) Term)
(declare-fun Tm_arrow_5a371649389ebd695db0478470787cef () Term)
(declare-fun FStar.Pervasives.normalize_for_extraction@tok () Term)

; </end encoding val FStar.Pervasives.normalize_for_extraction>


; <Start encoding val FStar.Pervasives.ite_soundness_by>

(declare-fun FStar.Pervasives.ite_soundness_by (Term) Term)
(declare-fun Tm_arrow_0c55530a575bf8e94add46ffb548393c () Term)
(declare-fun FStar.Pervasives.ite_soundness_by@tok () Term)

; </end encoding val FStar.Pervasives.ite_soundness_by>


; <Start encoding val FStar.Pervasives.default_effect>

(declare-fun FStar.Pervasives.default_effect (Term) Term)

(declare-fun FStar.Pervasives.default_effect@tok () Term)

; </end encoding val FStar.Pervasives.default_effect>


; <Start encoding val FStar.Pervasives.top_level_effect>

(declare-fun FStar.Pervasives.top_level_effect (Term) Term)

(declare-fun FStar.Pervasives.top_level_effect@tok () Term)

; </end encoding val FStar.Pervasives.top_level_effect>


; <Start encoding val FStar.Pervasives.effect_param>

(declare-fun FStar.Pervasives.effect_param (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.effect_param>


; <Start encoding val FStar.Pervasives.bind_has_range_args>

(declare-fun FStar.Pervasives.bind_has_range_args (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.bind_has_range_args>


; <Start encoding val FStar.Pervasives.primitive_extraction>

(declare-fun FStar.Pervasives.primitive_extraction (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.primitive_extraction>


; <Start encoding val FStar.Pervasives.extract_as_impure_effect>

(declare-fun FStar.Pervasives.extract_as_impure_effect (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.extract_as_impure_effect>


; <Start encoding val FStar.Pervasives.strictly_positive>

(declare-fun FStar.Pervasives.strictly_positive (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.strictly_positive>


; <Start encoding val FStar.Pervasives.unused>

(declare-fun FStar.Pervasives.unused (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.unused>


; <Start encoding val FStar.Pervasives.no_auto_projectors>

(declare-fun FStar.Pervasives.no_auto_projectors (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.no_auto_projectors>


; <Start encoding val FStar.Pervasives.no_auto_projectors_decls>

(declare-fun FStar.Pervasives.no_auto_projectors_decls (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.no_auto_projectors_decls>


; <Start encoding val FStar.Pervasives.no_subtyping>

(declare-fun FStar.Pervasives.no_subtyping (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.no_subtyping>


; <Start encoding val FStar.Pervasives.admit_termination>

(declare-fun FStar.Pervasives.admit_termination (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.admit_termination>


; <Start encoding val FStar.Pervasives.singleton>

(declare-fun FStar.Pervasives.singleton (Term Term) Term)
(declare-fun Tm_refine_2fbd657fe85bcb2423f9c7e5f9b3bcb5 (Term Term) Term)
(declare-fun Tm_arrow_9cdb4ebd85da757e86217b6fb07ef9fc () Term)
(declare-fun FStar.Pervasives.singleton@tok () Term)


; </end encoding val FStar.Pervasives.singleton>


; <Start encoding let eqtype_as_type>

(declare-fun FStar.Pervasives.eqtype_as_type (Term) Term)
(declare-fun Tm_arrow_7e9afc6da5407011473323ad80ff51bf () Term)
(declare-fun FStar.Pervasives.eqtype_as_type@tok () Term)

; </end encoding let eqtype_as_type>


; <Start encoding let coerce_eq>

(declare-fun Tm_refine_0dee8cb03258a67c2f7ec66427696212 (Term Term) Term)
(declare-fun FStar.Pervasives.coerce_eq (Term Term Term Term) Term)

(declare-fun Tm_arrow_f44173fb14fa6046eedce5f32cb8aae8 () Term)
(declare-fun FStar.Pervasives.coerce_eq@tok () Term)


; </end encoding let coerce_eq>


; <Start encoding val FStar.Pervasives.coercion>

(declare-fun FStar.Pervasives.coercion (Dummy_sort) Term)

; </end encoding val FStar.Pervasives.coercion>


; <Start encoding val FStar.Pervasives.desugar_of_variant_record>

(declare-fun FStar.Pervasives.desugar_of_variant_record (Term) Term)

(declare-fun FStar.Pervasives.desugar_of_variant_record@tok () Term)

; </end encoding val FStar.Pervasives.desugar_of_variant_record>


; <Start encoding val FStar.Pervasives.defer_to>

(declare-fun FStar.Pervasives.defer_to (Term Term) Term)

(declare-fun FStar.Pervasives.defer_to@tok () Term)

; </end encoding val FStar.Pervasives.defer_to>


; End Externals for interface FStar.Pervasives


; Externals for interface FStar.Set


; <Skipped #set-options "--initial_fuel 0 --max_fuel 0 --initial_ifuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Set.set>

(declare-fun FStar.Set.set (Term) Term)

(declare-fun FStar.Set.set@tok () Term)

; </end encoding val FStar.Set.set>


; <Start encoding val FStar.Set.equal>

(declare-fun FStar.Set.equal (Term Term Term) Term)
(declare-fun Tm_arrow_3c4f6e4cf547bd34ec8e06fa6c99957f () Term)
(declare-fun FStar.Set.equal@tok () Term)

; </end encoding val FStar.Set.equal>


; <Start encoding val FStar.Set.mem>

(declare-fun FStar.Set.mem (Term Term Term) Term)
(declare-fun Tm_arrow_3622740f6f31d7fd022d9da9e7023a5e () Term)
(declare-fun FStar.Set.mem@tok () Term)

; </end encoding val FStar.Set.mem>


; <Start encoding val FStar.Set.empty>

(declare-fun FStar.Set.empty (Term) Term)
(declare-fun Tm_arrow_8126140804a823c0abf765b538511539 () Term)
(declare-fun FStar.Set.empty@tok () Term)

; </end encoding val FStar.Set.empty>


; <Start encoding val FStar.Set.singleton>

(declare-fun FStar.Set.singleton (Term Term) Term)
(declare-fun Tm_arrow_764304f899737575fb0645eff5d55885 () Term)
(declare-fun FStar.Set.singleton@tok () Term)

; </end encoding val FStar.Set.singleton>


; <Start encoding val FStar.Set.union>

(declare-fun FStar.Set.union (Term Term Term) Term)
(declare-fun Tm_arrow_7571f855c31e3c10cb35bbdc0f3ae878 () Term)
(declare-fun FStar.Set.union@tok () Term)

; </end encoding val FStar.Set.union>


; <Start encoding val FStar.Set.intersect>

(declare-fun FStar.Set.intersect (Term Term Term) Term)

(declare-fun FStar.Set.intersect@tok () Term)

; </end encoding val FStar.Set.intersect>


; <Start encoding val FStar.Set.complement>

(declare-fun FStar.Set.complement (Term Term) Term)
(declare-fun Tm_arrow_4a14af1f2d9ff62069ebb44d0d1980f6 () Term)
(declare-fun FStar.Set.complement@tok () Term)

; </end encoding val FStar.Set.complement>


; <Start encoding val FStar.Set.intension>

(declare-fun Tm_arrow_84543425b818e2d10a976186b8e8c250 (Term) Term)
(declare-fun FStar.Set.intension (Term Term) Term)

(declare-fun Tm_ghost_arrow_04e42a5c0c55c36964ab6333a076e29e () Term)
(declare-fun FStar.Set.intension@tok () Term)

; </end encoding val FStar.Set.intension>


; <Start encoding let disjoint>

(declare-fun FStar.Set.disjoint (Term Term Term) Term)

(declare-fun FStar.Set.disjoint@tok () Term)

; </end encoding let disjoint>


; <Start encoding let subset>

(declare-fun FStar.Set.subset (Term Term Term) Term)
(declare-fun Tm_arrow_9a1bfd7a415bf0250a3dd161144f27fa () Term)
(declare-fun FStar.Set.subset@tok () Term)

; </end encoding let subset>


; <Start encoding let add>

(declare-fun FStar.Set.add (Term Term Term) Term)
(declare-fun Tm_arrow_3e561cbcf9b0a4b95f6e5d77760b40db () Term)
(declare-fun FStar.Set.add@tok () Term)

; </end encoding let add>


; <Start encoding let remove>

(declare-fun FStar.Set.remove (Term Term Term) Term)

(declare-fun FStar.Set.remove@tok () Term)

; </end encoding let remove>


; <Start encoding val FStar.Set.mem_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_empty@tok () Term)

; </end encoding val FStar.Set.mem_empty>


; <Start encoding val FStar.Set.mem_singleton>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_singleton (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_singleton@tok () Term)

; </end encoding val FStar.Set.mem_singleton>


; <Start encoding val FStar.Set.mem_union>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_union (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_union@tok () Term)

; </end encoding val FStar.Set.mem_union>


; <Start encoding val FStar.Set.mem_intersect>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_intersect (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_intersect@tok () Term)

; </end encoding val FStar.Set.mem_intersect>


; <Start encoding val FStar.Set.mem_complement>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_complement (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_complement@tok () Term)

; </end encoding val FStar.Set.mem_complement>


; <Start encoding val FStar.Set.mem_intension>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_intension (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_intension@tok () Term)

; </end encoding val FStar.Set.mem_intension>


; <Start encoding val FStar.Set.mem_subset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_subset (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_subset@tok () Term)

; </end encoding val FStar.Set.mem_subset>


; <Start encoding val FStar.Set.subset_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.subset_mem (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.subset_mem@tok () Term)

; </end encoding val FStar.Set.subset_mem>


; <Start encoding val FStar.Set.lemma_equal_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_equal_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_equal_intro@tok () Term)

; </end encoding val FStar.Set.lemma_equal_intro>


; <Start encoding val FStar.Set.lemma_equal_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_equal_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_equal_elim@tok () Term)

; </end encoding val FStar.Set.lemma_equal_elim>


; <Start encoding val FStar.Set.lemma_equal_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_equal_refl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_equal_refl@tok () Term)

; </end encoding val FStar.Set.lemma_equal_refl>


; <Start encoding val FStar.Set.disjoint_not_in_both>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.disjoint_not_in_both (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.disjoint_not_in_both@tok () Term)

; </end encoding val FStar.Set.disjoint_not_in_both>


; <Skipped #reset-options/>


; <Start encoding let rec as_set'>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Set.as_set_.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Set.as_set_.fuel_instrumented_token () Term)
(declare-fun FStar.Set.as_set_ (Term Term) Term)
(declare-fun FStar.Set.as_set_@tok () Term)
(declare-fun Tm_arrow_37c32948884378803a50151abdb3cb09 () Term)

; </end encoding let rec as_set'>


; <Start encoding let as_set>

(declare-fun FStar.Set.as_set (Term Term) Term)

(declare-fun FStar.Set.as_set@tok () Term)

; </end encoding let as_set>


; <Start encoding let lemma_disjoint_subset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_disjoint_subset (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_disjoint_subset@tok () Term)

; </end encoding let lemma_disjoint_subset>


; End Externals for interface FStar.Set


; Externals for interface FStar.Map


; <Start encoding val FStar.Map.t>

(declare-fun FStar.Map.t (Term Term) Term)
(declare-fun Tm_arrow_2b8b9bde9fdc9f797e5827d0c154aeeb () Term)
(declare-fun FStar.Map.t@tok () Term)

; </end encoding val FStar.Map.t>


; <Start encoding val FStar.Map.sel>

(declare-fun FStar.Map.sel (Term Term Term Term) Term)
(declare-fun Tm_arrow_28a168f8d4c6d78564a214862be72b08 () Term)
(declare-fun FStar.Map.sel@tok () Term)

; </end encoding val FStar.Map.sel>


; <Start encoding val FStar.Map.upd>

(declare-fun FStar.Map.upd (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_b19283e90b47034162373413c6a19933 () Term)
(declare-fun FStar.Map.upd@tok () Term)

; </end encoding val FStar.Map.upd>


; <Start encoding val FStar.Map.const>

(declare-fun FStar.Map.const (Term Term Term) Term)
(declare-fun Tm_arrow_867ad7c8cdd01bd87f415b1f9e0b39ac () Term)
(declare-fun FStar.Map.const@tok () Term)

; </end encoding val FStar.Map.const>


; <Start encoding val FStar.Map.domain>

(declare-fun FStar.Map.domain (Term Term Term) Term)
(declare-fun Tm_arrow_6e8371e4f424600b54c69f2eb03b48d8 () Term)
(declare-fun FStar.Map.domain@tok () Term)

; </end encoding val FStar.Map.domain>


; <Start encoding val FStar.Map.contains>

(declare-fun FStar.Map.contains (Term Term Term Term) Term)
(declare-fun Tm_arrow_32b461b2324f01c7a6bc6b577725566d () Term)
(declare-fun FStar.Map.contains@tok () Term)

; </end encoding val FStar.Map.contains>


; <Start encoding val FStar.Map.concat>

(declare-fun FStar.Map.concat (Term Term Term Term) Term)
(declare-fun Tm_arrow_b137090ab92fa6ffe958df8f30b9f54e () Term)
(declare-fun FStar.Map.concat@tok () Term)

; </end encoding val FStar.Map.concat>


; <Start encoding val FStar.Map.map_val>

(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun FStar.Map.map_val (Term Term Term Term Term) Term)

(declare-fun Tm_arrow_9123217b92d7c89a4449fe44590b9f47 () Term)
(declare-fun FStar.Map.map_val@tok () Term)

; </end encoding val FStar.Map.map_val>


; <Start encoding val FStar.Map.restrict>

(declare-fun FStar.Map.restrict (Term Term Term Term) Term)
(declare-fun Tm_arrow_e8f96ed4bf330326d457be2f8416d734 () Term)
(declare-fun FStar.Map.restrict@tok () Term)

; </end encoding val FStar.Map.restrict>


; <Start encoding let const_on>

(declare-fun FStar.Map.const_on (Term Term Term Term) Term)
(declare-fun Tm_arrow_f99b4e662f3e4a97cdb11f6ede73601e () Term)
(declare-fun FStar.Map.const_on@tok () Term)

; </end encoding let const_on>


; <Start encoding val FStar.Map.map_literal>


(declare-fun FStar.Map.map_literal (Term Term Term) Term)

(declare-fun Tm_arrow_fb1dd96195814b8107d05d25a2bbb566 () Term)
(declare-fun FStar.Map.map_literal@tok () Term)

; </end encoding val FStar.Map.map_literal>


; <Start encoding let disjoint_dom>

(declare-fun FStar.Map.disjoint_dom (Term Term Term Term) Term)
(declare-fun Tm_arrow_556fc2b76256aeb4c51415a912920e4f () Term)
(declare-fun FStar.Map.disjoint_dom@tok () Term)

; </end encoding let disjoint_dom>


; <Start encoding let has_dom>

(declare-fun FStar.Map.has_dom (Term Term Term Term) Term)
(declare-fun Tm_arrow_978eafbacd55316f8accb3c830570c46 () Term)
(declare-fun FStar.Map.has_dom@tok () Term)

; </end encoding let has_dom>


; <Start encoding val FStar.Map.lemma_SelUpd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelUpd1 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelUpd1@tok () Term)

; </end encoding val FStar.Map.lemma_SelUpd1>


; <Start encoding val FStar.Map.lemma_SelUpd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelUpd2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelUpd2@tok () Term)

; </end encoding val FStar.Map.lemma_SelUpd2>


; <Start encoding val FStar.Map.lemma_SelConst>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelConst (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelConst@tok () Term)

; </end encoding val FStar.Map.lemma_SelConst>


; <Start encoding val FStar.Map.lemma_SelRestrict>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelRestrict (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelRestrict@tok () Term)

; </end encoding val FStar.Map.lemma_SelRestrict>


; <Start encoding val FStar.Map.lemma_SelConcat1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelConcat1 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelConcat1@tok () Term)

; </end encoding val FStar.Map.lemma_SelConcat1>


; <Start encoding val FStar.Map.lemma_SelConcat2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelConcat2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelConcat2@tok () Term)

; </end encoding val FStar.Map.lemma_SelConcat2>


; <Start encoding val FStar.Map.lemma_SelMapVal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelMapVal (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelMapVal@tok () Term)


; </end encoding val FStar.Map.lemma_SelMapVal>


; <Start encoding val FStar.Map.lemma_InDomUpd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomUpd1 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomUpd1@tok () Term)

; </end encoding val FStar.Map.lemma_InDomUpd1>


; <Start encoding val FStar.Map.lemma_InDomUpd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomUpd2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomUpd2@tok () Term)

; </end encoding val FStar.Map.lemma_InDomUpd2>


; <Start encoding val FStar.Map.lemma_InDomConstMap>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomConstMap (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomConstMap@tok () Term)

; </end encoding val FStar.Map.lemma_InDomConstMap>


; <Start encoding val FStar.Map.lemma_InDomConcat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomConcat (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomConcat@tok () Term)

; </end encoding val FStar.Map.lemma_InDomConcat>


; <Start encoding val FStar.Map.lemma_InMapVal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InMapVal (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InMapVal@tok () Term)


; </end encoding val FStar.Map.lemma_InMapVal>


; <Start encoding val FStar.Map.lemma_InDomRestrict>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomRestrict (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomRestrict@tok () Term)

; </end encoding val FStar.Map.lemma_InDomRestrict>


; <Start encoding val FStar.Map.lemma_ContainsDom>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_ContainsDom (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_ContainsDom@tok () Term)

; </end encoding val FStar.Map.lemma_ContainsDom>


; <Start encoding val FStar.Map.lemma_UpdDomain>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_UpdDomain (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_UpdDomain@tok () Term)

; </end encoding val FStar.Map.lemma_UpdDomain>


; <Start encoding val FStar.Map.lemma_map_literal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_map_literal (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_map_literal@tok () Term)


; </end encoding val FStar.Map.lemma_map_literal>


; <Start encoding val FStar.Map.equal>

(declare-fun FStar.Map.equal (Term Term Term Term) Term)
(declare-fun Tm_arrow_8d5e09121919a406639e2201d1f5d3dd () Term)
(declare-fun FStar.Map.equal@tok () Term)

; </end encoding val FStar.Map.equal>


; <Start encoding val FStar.Map.lemma_equal_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_equal_intro (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_equal_intro@tok () Term)

; </end encoding val FStar.Map.lemma_equal_intro>


; <Start encoding val FStar.Map.lemma_equal_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_equal_elim (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_equal_elim@tok () Term)

; </end encoding val FStar.Map.lemma_equal_elim>


; <Start encoding val FStar.Map.lemma_equal_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_equal_refl (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_equal_refl@tok () Term)

; </end encoding val FStar.Map.lemma_equal_refl>


; End Externals for interface FStar.Map

(push) ;; push{1

; Internals for Asm1


; encoding sigelt let map


; <Start encoding let map>

(declare-fun Asm1.map (Term Term) Term)

(declare-fun Asm1.map@tok () Term)

; </end encoding let map>


; encoding sigelt let op_String_Access


; <Start encoding let op_String_Access>

(declare-fun Asm1.op_String_Access (Term Term) Term)
;;;;;;;;;;;;;;;;_: FStar.Map.t _ _ -> _: _ -> _
(declare-fun Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 (Term Term) Term)
;;;;;;;;;;;;;;;;_: FStar.Map.t _ _ -> _: _ -> _
(declare-fun Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a () Term)
(declare-fun Asm1.op_String_Access@tok () Term)


; </end encoding let op_String_Access>


; encoding sigelt let op_String_Assignment


; <Start encoding let op_String_Assignment>

(declare-fun Asm1.op_String_Assignment (Term Term) Term)
;;;;;;;;;;;;;;;;_: FStar.Map.t _ _ -> _: _ -> _: _ -> FStar.Map.t _ _
(declare-fun Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 (Term Term) Term)
;;;;;;;;;;;;;;;;_: FStar.Map.t _ _ -> _: _ -> _: _ -> FStar.Map.t _ _
(declare-fun Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0 () Term)
(declare-fun Asm1.op_String_Assignment@tok () Term)


; </end encoding let op_String_Assignment>


; encoding sigelt let contains


; <Start encoding let contains>

(declare-fun Asm1.contains (Term Term) Term)
;;;;;;;;;;;;;;;;_: FStar.Map.t _ _ -> _: _ -> Prims.bool
(declare-fun Tm_arrow_9f4db3187888091a832b0a323f1b9876 (Term Term) Term)
;;;;;;;;;;;;;;;;_: FStar.Map.t _ _ -> _: _ -> Prims.bool
(declare-fun Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126 () Term)
(declare-fun Asm1.contains@tok () Term)


; </end encoding let contains>


; encoding sigelt let reg


; <Start encoding let reg>

(declare-fun Asm1.reg (Dummy_sort) Term)

; </end encoding let reg>


; encoding sigelt type Asm1.state


; <Start encoding type Asm1.state>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.state () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.Mkstate (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.Mkstate_regs (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.Mkstate_mem (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Asm1.Mkstate
(declare-fun Asm1.Mkstate@tok () Term)
;;;;;;;;;;;;;;;;regs: map reg Prims.int -> mem: map Prims.int Prims.int -> state
(declare-fun Tm_arrow_c00b29272a29c4570f8135f688cc1a6e () Term)

; <start constructor Asm1.state>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.state ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
124)
(= __@x0
Asm1.state)))

; </end constructor Asm1.state>


; <start constructor Asm1.Mkstate>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.Mkstate ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
130)
(= __@x0
(Asm1.Mkstate (Asm1.Mkstate_regs __@x0)
(Asm1.Mkstate_mem __@x0)))))

; </end constructor Asm1.Mkstate>


; </end encoding type Asm1.state>


; encoding sigelt val Asm1.__proj__Mkstate__item__regs


; <Start encoding val Asm1.__proj__Mkstate__item__regs>

(declare-fun Asm1.__proj__Mkstate__item__regs (Term) Term)
;;;;;;;;;;;;;;;;projectee: state -> map reg Prims.int
(declare-fun Tm_arrow_75815519a02fc1e9d67955af4c02b77d () Term)
(declare-fun Asm1.__proj__Mkstate__item__regs@tok () Term)

; </end encoding val Asm1.__proj__Mkstate__item__regs>


; encoding sigelt let __proj__Mkstate__item__regs


; <Skipped let __proj__Mkstate__item__regs/>


; encoding sigelt val Asm1.__proj__Mkstate__item__mem


; <Start encoding val Asm1.__proj__Mkstate__item__mem>

(declare-fun Asm1.__proj__Mkstate__item__mem (Term) Term)
;;;;;;;;;;;;;;;;projectee: state -> map Prims.int Prims.int
(declare-fun Tm_arrow_8aff25d812de3ae8af18299f255b01f9 () Term)
(declare-fun Asm1.__proj__Mkstate__item__mem@tok () Term)

; </end encoding val Asm1.__proj__Mkstate__item__mem>


; encoding sigelt let __proj__Mkstate__item__mem


; <Skipped let __proj__Mkstate__item__mem/>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type Asm1.ins


; <Start encoding type Asm1.ins>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.ins () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.ILoad (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.ILoad_lDst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.ILoad_lSrc (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.ILoad_lOffset (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Asm1.ILoad
(declare-fun Asm1.ILoad@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.IStore (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.IStore_sDst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.IStore_sOffset (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.IStore_sSrc (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Asm1.IStore
(declare-fun Asm1.IStore@tok () Term)
;;;;;;;;;;;;;;;;lDst: reg -> lSrc: reg -> lOffset: Prims.int -> ins
(declare-fun Tm_arrow_946cca9ccc853f434596dcded3365046 () Term)
;;;;;;;;;;;;;;;;sDst: reg -> sOffset: Prims.int -> sSrc: reg -> ins
(declare-fun Tm_arrow_ee2835cb9302001d40de6623e2c16c0d () Term)

; <start constructor Asm1.ins>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.ins ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
153)
(= __@x0
Asm1.ins)))

; </end constructor Asm1.ins>


; <start constructor Asm1.ILoad>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.ILoad ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
159)
(= __@x0
(Asm1.ILoad (Asm1.ILoad_lDst __@x0)
(Asm1.ILoad_lSrc __@x0)
(Asm1.ILoad_lOffset __@x0)))))

; </end constructor Asm1.ILoad>


; <start constructor Asm1.IStore>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.IStore ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
164)
(= __@x0
(Asm1.IStore (Asm1.IStore_sDst __@x0)
(Asm1.IStore_sOffset __@x0)
(Asm1.IStore_sSrc __@x0)))))

; </end constructor Asm1.IStore>


; </end encoding type Asm1.ins>

;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.__cache_version_number__; Namespace Prims
(assert (! (HasType Prims.__cache_version_number__
Prims.int)
:named function_token_typing_Prims.__cache_version_number__))
;;;;;;;;;;;;;;;;well-founded ordering on nat (alt)
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)
(> (BoxInt_proj_0 @x1)
0)
(>= (BoxInt_proj_0 @x2)
0)
(< (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
@x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.int) (HasTypeFuel @u0
@x2
Prims.int) (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
@x1)))
:qid well-founded-ordering-on-nat))
:named well-founded-ordering-on-nat))
;;;;;;;;;;;;;;;;unit typing
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (HasType Tm_unit
Prims.unit)
:named unit_typing))
;;;;;;;;;;;;;;;;unit inversion
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.unit)
(= @x1
Tm_unit))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.unit))
:qid unit_inversion))
:named unit_inversion))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (HasType Prims.unit
Prims.eqtype)
:named typing_Prims.unit))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.subtype_of; Namespace Prims
(assert (! 
;; def=Prims.fst(291,4-291,14); use=Prims.fst(291,4-291,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (Prims.subtype_of @x0
@x1)
Prims.logical))
 

:pattern ((Prims.subtype_of @x0
@x1))
:qid typing_Prims.subtype_of))

:named typing_Prims.subtype_of))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named typing_Prims.logical))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named typing_Prims.int))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.hasEq; Namespace Prims
(assert (! 
;; def=Prims.fst(69,5-69,10); use=Prims.fst(69,5-69,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.hasEq @x0)
Tm_type))
 

:pattern ((Prims.hasEq @x0))
:qid typing_Prims.hasEq))

:named typing_Prims.hasEq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named typing_Prims.eqtype))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.reg; Namespace Asm1
(assert (! 
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(forall ((@u0 Dummy_sort))
 (! (HasType (Asm1.reg @u0)
Prims.eqtype)
 

:pattern ((Asm1.reg @u0))
:qid typing_Asm1.reg))

:named typing_Asm1.reg))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Asm1.IStore @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Asm1.IStore @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Asm1.IStore @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
:qid subterm_ordering_Asm1.IStore))

:named subterm_ordering_Asm1.IStore))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Asm1.ILoad @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Asm1.ILoad @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Asm1.ILoad @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
:qid subterm_ordering_Asm1.ILoad))

:named subterm_ordering_Asm1.ILoad))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Tm_refine_774ba3f728d91ead8ef40be66c9802e5
Tm_type)
:named refinement_kinding_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Tm_refine_542f9d4f129664613f2483a6c88bc7c2
Tm_type)
:named refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Tm_refine_414d0a9f578ab0048252f8c8f552b99f
Tm_type)
:named refinement_kinding_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (HasType Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
Tm_type)
:named refinement_kinding_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(772,26-772,42); use=FStar.Pervasives.fsti(772,26-772,42)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f1ecc6ab6882a651504f328937700647)
false)
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f1ecc6ab6882a651504f328937700647))
:qid refinement_interpretation_Tm_refine_f1ecc6ab6882a651504f328937700647))

:named refinement_interpretation_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! 
;; def=Prims.fst(683,11-683,24); use=Prims.fst(683,11-683,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_774ba3f728d91ead8ef40be66c9802e5)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(683,18-683,23); use=Prims.fst(683,18-683,23)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
:qid refinement_interpretation_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))

:named refinement_interpretation_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! 
;; def=Prims.fst(304,12-304,41); use=Prims.fst(304,12-304,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf)
(and (HasTypeFuel @u0
@x1
Tm_type)

;; def=Prims.fst(304,21-304,40); use=Prims.fst(304,21-304,40)
(Valid 
;; def=Prims.fst(304,21-304,40); use=Prims.fst(304,21-304,40)
(Prims.subtype_of @x1
Prims.unit)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
:qid refinement_interpretation_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))

:named refinement_interpretation_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! 
;; def=Prims.fst(680,11-680,25); use=Prims.fst(680,11-680,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_542f9d4f129664613f2483a6c88bc7c2)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(680,18-680,24); use=Prims.fst(680,18-680,24)
(>= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
:qid refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))

:named refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! 
;; def=Prims.fst(73,14-73,31); use=Prims.fst(73,14-73,31)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
(and (HasTypeFuel @u0
@x1
Tm_type)

;; def=Prims.fst(73,23-73,30); use=Prims.fst(73,23-73,30)
(Valid 
;; def=Prims.fst(73,23-73,30); use=Prims.fst(73,23-73,30)
(Prims.hasEq @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
:qid refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))

:named refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! 
;; def=Prims.fst(686,15-686,29); use=Prims.fst(686,15-686,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(686,22-686,28); use=Prims.fst(686,22-686,28)
(not (= @x1
(BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
:qid refinement_interpretation_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))

:named refinement_interpretation_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.IStore_sSrc (Asm1.IStore @x0
@x1
@x2))
@x2)
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid projection_inverse_Asm1.IStore_sSrc))

:named projection_inverse_Asm1.IStore_sSrc))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.IStore_sOffset (Asm1.IStore @x0
@x1
@x2))
@x1)
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid projection_inverse_Asm1.IStore_sOffset))

:named projection_inverse_Asm1.IStore_sOffset))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.IStore_sDst (Asm1.IStore @x0
@x1
@x2))
@x0)
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid projection_inverse_Asm1.IStore_sDst))

:named projection_inverse_Asm1.IStore_sDst))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.ILoad_lSrc (Asm1.ILoad @x0
@x1
@x2))
@x1)
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid projection_inverse_Asm1.ILoad_lSrc))

:named projection_inverse_Asm1.ILoad_lSrc))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.ILoad_lOffset (Asm1.ILoad @x0
@x1
@x2))
@x2)
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid projection_inverse_Asm1.ILoad_lOffset))

:named projection_inverse_Asm1.ILoad_lOffset))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.ILoad_lDst (Asm1.ILoad @x0
@x1
@x2))
@x0)
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid projection_inverse_Asm1.ILoad_lDst))

:named projection_inverse_Asm1.ILoad_lDst))
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! (HasType Asm1.ins
Tm_type)
:named kinding_Asm1.ins@tok))
;;;;;;;;;;;;;;;;int typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (forall ((@u0 Int))
 (! (HasType (BoxInt @u0)
Prims.int)
 

:pattern ((BoxInt @u0))
:qid int_typing))
:named int_typing))
;;;;;;;;;;;;;;;;int inversion
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.int)
(is-BoxInt @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.int))
:qid int_inversion))
:named int_inversion))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_774ba3f728d91ead8ef40be66c9802e5
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_542f9d4f129664613f2483a6c88bc7c2
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_414d0a9f578ab0048252f8c8f552b99f
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (HasType Prims.unit
Prims.eqtype)
:named function_token_typing_Prims.unit))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named function_token_typing_Prims.logical))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named function_token_typing_Prims.int))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named function_token_typing_Prims.eqtype))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(29,5-29,8); use=Asm1.fst(29,5-29,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
Asm1.ins)
(or (is-Asm1.ILoad @x1)
(is-Asm1.IStore @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
Asm1.ins))
:qid fuel_guarded_inversion_Asm1.ins))

:named fuel_guarded_inversion_Asm1.ins))
;;;;;;;;;;;;;;;;Equation for Prims.subtype_of
;;; Fact-ids: Name Prims.subtype_of; Namespace Prims
(assert (! 
;; def=Prims.fst(291,4-291,14); use=Prims.fst(291,4-291,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (Prims.subtype_of @x0
@x1))

;; def=Prims.fst(291,31-291,60); use=Prims.fst(291,31-291,60)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x0)
(HasType @x2
@x1))
 
;;no pats
:qid equation_Prims.subtype_of.1))
)
 

:pattern ((Prims.subtype_of @x0
@x1))
:qid equation_Prims.subtype_of))

:named equation_Prims.subtype_of))
;;;;;;;;;;;;;;;;Equation for Prims.logical
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (= Prims.logical
Tm_type)
:named equation_Prims.logical))
;;;;;;;;;;;;;;;;Equation for Prims.eqtype
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (= Prims.eqtype
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
:named equation_Prims.eqtype))
;;;;;;;;;;;;;;;;Equation for Asm1.reg
;;; Fact-ids: Name Asm1.reg; Namespace Asm1
(assert (! 
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(Asm1.reg @u0)

Prims.int)
 

:pattern (
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(Asm1.reg @u0)
)
:qid equation_Asm1.reg))

:named equation_Asm1.reg))
;;;;;;;;;;;;;;;;Prop-typing for Prims.subtype_of
;;; Fact-ids: Name Prims.subtype_of; Namespace Prims
(assert (! 
;; def=Prims.fst(291,4-291,14); use=Prims.fst(291,4-291,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(Valid (Prims.subtype_of (Prims.subtype_of @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Prims.subtype_of @x0
@x1)
Prims.unit))
:qid defn_equation_Prims.subtype_of))

:named defn_equation_Prims.subtype_of))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
Prims.int)
(HasTypeFuel @u0
@x3
(Asm1.reg Dummy_value)))
(HasTypeFuel @u0
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
 

:pattern ((HasTypeFuel @u0
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
:qid data_typing_intro_Asm1.IStore@tok))

:named data_typing_intro_Asm1.IStore@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x3
Prims.int))
(HasTypeFuel @u0
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
 

:pattern ((HasTypeFuel @u0
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
:qid data_typing_intro_Asm1.ILoad@tok))

:named data_typing_intro_Asm1.ILoad@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins)
(and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
Prims.int)
(HasTypeFuel @u0
@x3
(Asm1.reg Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
:qid data_elim_Asm1.IStore))

:named data_elim_Asm1.IStore))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins)
(and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x3
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
:qid data_elim_Asm1.ILoad))

:named data_elim_Asm1.ILoad))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (= 303
(Term_constr_id Prims.int))
:named constructor_distinct_Prims.int))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! (= 153
(Term_constr_id Asm1.ins))
:named constructor_distinct_Asm1.ins))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 164
(Term_constr_id (Asm1.IStore @x0
@x1
@x2)))
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid constructor_distinct_Asm1.IStore))

:named constructor_distinct_Asm1.IStore))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 159
(Term_constr_id (Asm1.ILoad @x0
@x1
@x2)))
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid constructor_distinct_Asm1.ILoad))

:named constructor_distinct_Asm1.ILoad))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! 
;; def=Prims.fst(96,5-96,9); use=Prims.fst(96,5-96,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.unit)
(= Prims.unit
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.unit))
:qid Prims_pretyping_f8666440faa91836cc5a13998af863fc))

:named Prims_pretyping_f8666440faa91836cc5a13998af863fc))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! 
;; def=Prims.fst(514,5-514,8); use=Prims.fst(514,5-514,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.int)
(= Prims.int
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.int))
:qid Prims_pretyping_ae567c2fb75be05905677af440075565))

:named Prims_pretyping_ae567c2fb75be05905677af440075565))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(29,5-29,8); use=Asm1.fst(29,5-29,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Asm1.ins)
(= Asm1.ins
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Asm1.ins))
:qid Asm1_pretyping_bc9c2f1fd95279caaea3a34bcc039124))

:named Asm1_pretyping_bc9c2f1fd95279caaea3a34bcc039124))
(push) ;; push{4

; Starting query at Asm1.fst(29,0-31,55)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq Asm1.ins ==>
; (forall (lDst: Asm1.reg) (lSrc: Asm1.reg) (lOffset: Prims.int).
;     Prims.hasEq Asm1.reg /\ Prims.hasEq Asm1.reg) /\
; (forall (sDst: Asm1.reg) (sOffset: Prims.int) (sSrc: Asm1.reg).
;     Prims.hasEq Asm1.reg /\ Prims.hasEq Asm1.reg)


; Context: While encoding a query
; While typechecking the top-level declaration `type Asm1.ins`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (implies 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Valid 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Prims.hasEq Asm1.ins)
)


;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(and 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(Asm1.reg Dummy_value))
(HasType @x1
(Asm1.reg Dummy_value))
(HasType @x2
Prims.int))

;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(and 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(30,17-30,20)
(or label_1

;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Valid 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Prims.hasEq (Asm1.reg Dummy_value))
)
)


;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(30,29-30,32)
(or label_2

;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Valid 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Prims.hasEq (Asm1.reg Dummy_value))
)
)
)
)
 
;;no pats
:qid @query))


;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(Asm1.reg Dummy_value))
(HasType @x1
Prims.int)
(HasType @x2
(Asm1.reg Dummy_value)))

;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(and 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(31,18-31,21)
(or label_3

;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Valid 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Prims.hasEq (Asm1.reg Dummy_value))
)
)


;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(31,45-31,48)
(or label_4

;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Valid 
;; def=Asm1.fst(29,0-31,55); use=Asm1.fst(29,0-31,55)
(Prims.hasEq (Asm1.reg Dummy_value))
)
)
)
)
 
;;no pats
:qid @query.1))
)
))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_4")
(eval label_4)
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.ins, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Asm1.reg, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type Asm1.ins


; <Start encoding type Asm1.ins>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.ins () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.ILoad (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.ILoad_lDst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.ILoad_lSrc (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.ILoad_lOffset (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Asm1.ILoad
(declare-fun Asm1.ILoad@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Asm1.IStore (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.IStore_sDst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.IStore_sOffset (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Asm1.IStore_sSrc (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Asm1.IStore
(declare-fun Asm1.IStore@tok () Term)
;;;;;;;;;;;;;;;;lDst: reg -> lSrc: reg -> lOffset: Prims.int -> ins
(declare-fun Tm_arrow_946cca9ccc853f434596dcded3365046 () Term)
;;;;;;;;;;;;;;;;sDst: reg -> sOffset: Prims.int -> sSrc: reg -> ins
(declare-fun Tm_arrow_ee2835cb9302001d40de6623e2c16c0d () Term)

; <start constructor Asm1.ins>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.ins ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
168)
(= __@x0
Asm1.ins)))

; </end constructor Asm1.ins>


; <start constructor Asm1.ILoad>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.ILoad ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
174)
(= __@x0
(Asm1.ILoad (Asm1.ILoad_lDst __@x0)
(Asm1.ILoad_lSrc __@x0)
(Asm1.ILoad_lOffset __@x0)))))

; </end constructor Asm1.ILoad>


; <start constructor Asm1.IStore>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Asm1.IStore ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
179)
(= __@x0
(Asm1.IStore (Asm1.IStore_sDst __@x0)
(Asm1.IStore_sOffset __@x0)
(Asm1.IStore_sSrc __@x0)))))

; </end constructor Asm1.IStore>


; </end encoding type Asm1.ins>


; encoding sigelt assume Asm1.ins__uu___haseq


; <Start encoding assume Asm1.ins__uu___haseq>


; </end encoding assume Asm1.ins__uu___haseq>


; encoding sigelt val Asm1.uu___is_ILoad


; <Start encoding val Asm1.uu___is_ILoad>

(declare-fun Asm1.uu___is_ILoad (Term) Term)
;;;;;;;;;;;;;;;;projectee: ins -> Prims.bool
(declare-fun Tm_arrow_a643e595d7473267fb7454c6255b4995 () Term)
(declare-fun Asm1.uu___is_ILoad@tok () Term)

; </end encoding val Asm1.uu___is_ILoad>


; encoding sigelt let uu___is_ILoad


; <Skipped let uu___is_ILoad/>


; encoding sigelt val Asm1.__proj__ILoad__item__lDst


; <Start encoding val Asm1.__proj__ILoad__item__lDst>

(declare-fun Tm_refine_f230ca36ce2a7ff8ae53c124d032312b () Term)
(declare-fun Asm1.__proj__ILoad__item__lDst (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ins{ILoad? _} -> reg
(declare-fun Tm_arrow_d246a7673880866203ebf1405e2b4b56 () Term)
(declare-fun Asm1.__proj__ILoad__item__lDst@tok () Term)

; </end encoding val Asm1.__proj__ILoad__item__lDst>

;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.__cache_version_number__; Namespace Prims
(assert (! (HasType Prims.__cache_version_number__
Prims.int)
:named function_token_typing_Prims.__cache_version_number__))
;;;;;;;;;;;;;;;;well-founded ordering on nat (alt)
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)
(> (BoxInt_proj_0 @x1)
0)
(>= (BoxInt_proj_0 @x2)
0)
(< (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
@x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.int) (HasTypeFuel @u0
@x2
Prims.int) (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
@x1)))
:qid well-founded-ordering-on-nat))
:named well-founded-ordering-on-nat))
;;;;;;;;;;;;;;;;unit typing
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (HasType Tm_unit
Prims.unit)
:named unit_typing))
;;;;;;;;;;;;;;;;unit inversion
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.unit)
(= @x1
Tm_unit))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.unit))
:qid unit_inversion))
:named unit_inversion))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (HasType Prims.unit
Prims.eqtype)
:named typing_Prims.unit))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.subtype_of; Namespace Prims
(assert (! 
;; def=Prims.fst(291,4-291,14); use=Prims.fst(291,4-291,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (Prims.subtype_of @x0
@x1)
Prims.logical))
 

:pattern ((Prims.subtype_of @x0
@x1))
:qid typing_Prims.subtype_of))

:named typing_Prims.subtype_of))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named typing_Prims.logical))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named typing_Prims.int))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.hasEq; Namespace Prims
(assert (! 
;; def=Prims.fst(69,5-69,10); use=Prims.fst(69,5-69,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.hasEq @x0)
Tm_type))
 

:pattern ((Prims.hasEq @x0))
:qid typing_Prims.hasEq))

:named typing_Prims.hasEq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named typing_Prims.eqtype))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (HasType Prims.bool
Prims.eqtype)
:named typing_Prims.bool))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.uu___is_ILoad; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Asm1.ins)
(HasType (Asm1.uu___is_ILoad @x0)
Prims.bool))
 

:pattern ((Asm1.uu___is_ILoad @x0))
:qid typing_Asm1.uu___is_ILoad))

:named typing_Asm1.uu___is_ILoad))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.reg; Namespace Asm1
(assert (! 
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(forall ((@u0 Dummy_sort))
 (! (HasType (Asm1.reg @u0)
Prims.eqtype)
 

:pattern ((Asm1.reg @u0))
:qid typing_Asm1.reg))

:named typing_Asm1.reg))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Asm1.IStore @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Asm1.IStore @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Asm1.IStore @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
:qid subterm_ordering_Asm1.IStore))

:named subterm_ordering_Asm1.IStore))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Asm1.ILoad @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Asm1.ILoad @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Asm1.ILoad @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
:qid subterm_ordering_Asm1.ILoad))

:named subterm_ordering_Asm1.ILoad))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Asm1.__proj__ILoad__item__lDst; Namespace Asm1
(assert (! (HasType Tm_refine_f230ca36ce2a7ff8ae53c124d032312b
Tm_type)
:named refinement_kinding_Tm_refine_f230ca36ce2a7ff8ae53c124d032312b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Tm_refine_774ba3f728d91ead8ef40be66c9802e5
Tm_type)
:named refinement_kinding_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Tm_refine_542f9d4f129664613f2483a6c88bc7c2
Tm_type)
:named refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Tm_refine_414d0a9f578ab0048252f8c8f552b99f
Tm_type)
:named refinement_kinding_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (HasType Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
Tm_type)
:named refinement_kinding_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Asm1.__proj__ILoad__item__lDst; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f230ca36ce2a7ff8ae53c124d032312b)
(and (HasTypeFuel @u0
@x1
Asm1.ins)

;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f230ca36ce2a7ff8ae53c124d032312b))
:qid refinement_interpretation_Tm_refine_f230ca36ce2a7ff8ae53c124d032312b))

:named refinement_interpretation_Tm_refine_f230ca36ce2a7ff8ae53c124d032312b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(772,26-772,42); use=FStar.Pervasives.fsti(772,26-772,42)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f1ecc6ab6882a651504f328937700647)
false)
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f1ecc6ab6882a651504f328937700647))
:qid refinement_interpretation_Tm_refine_f1ecc6ab6882a651504f328937700647))

:named refinement_interpretation_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! 
;; def=Prims.fst(683,11-683,24); use=Prims.fst(683,11-683,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_774ba3f728d91ead8ef40be66c9802e5)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(683,18-683,23); use=Prims.fst(683,18-683,23)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
:qid refinement_interpretation_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))

:named refinement_interpretation_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! 
;; def=Prims.fst(304,12-304,41); use=Prims.fst(304,12-304,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf)
(and (HasTypeFuel @u0
@x1
Tm_type)

;; def=Prims.fst(304,21-304,40); use=Prims.fst(304,21-304,40)
(Valid 
;; def=Prims.fst(304,21-304,40); use=Prims.fst(304,21-304,40)
(Prims.subtype_of @x1
Prims.unit)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
:qid refinement_interpretation_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))

:named refinement_interpretation_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! 
;; def=Prims.fst(680,11-680,25); use=Prims.fst(680,11-680,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_542f9d4f129664613f2483a6c88bc7c2)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(680,18-680,24); use=Prims.fst(680,18-680,24)
(>= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
:qid refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))

:named refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! 
;; def=Prims.fst(73,14-73,31); use=Prims.fst(73,14-73,31)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
(and (HasTypeFuel @u0
@x1
Tm_type)

;; def=Prims.fst(73,23-73,30); use=Prims.fst(73,23-73,30)
(Valid 
;; def=Prims.fst(73,23-73,30); use=Prims.fst(73,23-73,30)
(Prims.hasEq @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
:qid refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))

:named refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! 
;; def=Prims.fst(686,15-686,29); use=Prims.fst(686,15-686,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(686,22-686,28); use=Prims.fst(686,22-686,28)
(not (= @x1
(BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
:qid refinement_interpretation_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))

:named refinement_interpretation_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.IStore_sSrc (Asm1.IStore @x0
@x1
@x2))
@x2)
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid projection_inverse_Asm1.IStore_sSrc))

:named projection_inverse_Asm1.IStore_sSrc))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.IStore_sOffset (Asm1.IStore @x0
@x1
@x2))
@x1)
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid projection_inverse_Asm1.IStore_sOffset))

:named projection_inverse_Asm1.IStore_sOffset))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.IStore_sDst (Asm1.IStore @x0
@x1
@x2))
@x0)
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid projection_inverse_Asm1.IStore_sDst))

:named projection_inverse_Asm1.IStore_sDst))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.ILoad_lSrc (Asm1.ILoad @x0
@x1
@x2))
@x1)
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid projection_inverse_Asm1.ILoad_lSrc))

:named projection_inverse_Asm1.ILoad_lSrc))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.ILoad_lOffset (Asm1.ILoad @x0
@x1
@x2))
@x2)
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid projection_inverse_Asm1.ILoad_lOffset))

:named projection_inverse_Asm1.ILoad_lOffset))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Asm1.ILoad_lDst (Asm1.ILoad @x0
@x1
@x2))
@x0)
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid projection_inverse_Asm1.ILoad_lDst))

:named projection_inverse_Asm1.ILoad_lDst))
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! (HasType Asm1.ins
Tm_type)
:named kinding_Asm1.ins@tok))
;;;;;;;;;;;;;;;;int typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (forall ((@u0 Int))
 (! (HasType (BoxInt @u0)
Prims.int)
 

:pattern ((BoxInt @u0))
:qid int_typing))
:named int_typing))
;;;;;;;;;;;;;;;;int inversion
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.int)
(is-BoxInt @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.int))
:qid int_inversion))
:named int_inversion))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f230ca36ce2a7ff8ae53c124d032312b
;;; Fact-ids: Name Asm1.__proj__ILoad__item__lDst; Namespace Asm1
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f230ca36ce2a7ff8ae53c124d032312b))
(Valid (Prims.hasEq Asm1.ins)))
:named haseqTm_refine_f230ca36ce2a7ff8ae53c124d032312b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_774ba3f728d91ead8ef40be66c9802e5
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_542f9d4f129664613f2483a6c88bc7c2
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_414d0a9f578ab0048252f8c8f552b99f
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (HasType Prims.unit
Prims.eqtype)
:named function_token_typing_Prims.unit))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named function_token_typing_Prims.logical))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named function_token_typing_Prims.int))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named function_token_typing_Prims.eqtype))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (HasType Prims.bool
Prims.eqtype)
:named function_token_typing_Prims.bool))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(29,5-29,8); use=Asm1.fst(29,5-29,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
Asm1.ins)
(or (is-Asm1.ILoad @x1)
(is-Asm1.IStore @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
Asm1.ins))
:qid fuel_guarded_inversion_Asm1.ins))

:named fuel_guarded_inversion_Asm1.ins))
;;;;;;;;;;;;;;;;Equation for Prims.subtype_of
;;; Fact-ids: Name Prims.subtype_of; Namespace Prims
(assert (! 
;; def=Prims.fst(291,4-291,14); use=Prims.fst(291,4-291,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (Prims.subtype_of @x0
@x1))

;; def=Prims.fst(291,31-291,60); use=Prims.fst(291,31-291,60)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x0)
(HasType @x2
@x1))
 
;;no pats
:qid equation_Prims.subtype_of.1))
)
 

:pattern ((Prims.subtype_of @x0
@x1))
:qid equation_Prims.subtype_of))

:named equation_Prims.subtype_of))
;;;;;;;;;;;;;;;;Equation for Prims.logical
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (= Prims.logical
Tm_type)
:named equation_Prims.logical))
;;;;;;;;;;;;;;;;Equation for Prims.eqtype
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (= Prims.eqtype
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
:named equation_Prims.eqtype))
;;;;;;;;;;;;;;;;Equation for Asm1.reg
;;; Fact-ids: Name Asm1.reg; Namespace Asm1
(assert (! 
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(Asm1.reg @u0)

Prims.int)
 

:pattern (
;; def=Asm1.fst(26,5-26,8); use=Asm1.fst(26,5-26,8)
(Asm1.reg @u0)
)
:qid equation_Asm1.reg))

:named equation_Asm1.reg))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Asm1.uu___is_ILoad; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term))
 (! (= (Asm1.uu___is_ILoad @x0)
(BoxBool (is-Asm1.ILoad @x0)))
 

:pattern ((Asm1.uu___is_ILoad @x0))
:qid disc_equation_Asm1.ILoad))

:named disc_equation_Asm1.ILoad))
;;;;;;;;;;;;;;;;Prop-typing for Prims.subtype_of
;;; Fact-ids: Name Prims.subtype_of; Namespace Prims
(assert (! 
;; def=Prims.fst(291,4-291,14); use=Prims.fst(291,4-291,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(Valid (Prims.subtype_of (Prims.subtype_of @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Prims.subtype_of @x0
@x1)
Prims.unit))
:qid defn_equation_Prims.subtype_of))

:named defn_equation_Prims.subtype_of))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
Prims.int)
(HasTypeFuel @u0
@x3
(Asm1.reg Dummy_value)))
(HasTypeFuel @u0
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
 

:pattern ((HasTypeFuel @u0
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
:qid data_typing_intro_Asm1.IStore@tok))

:named data_typing_intro_Asm1.IStore@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x3
Prims.int))
(HasTypeFuel @u0
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
 

:pattern ((HasTypeFuel @u0
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
:qid data_typing_intro_Asm1.ILoad@tok))

:named data_typing_intro_Asm1.ILoad@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins)
(and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
Prims.int)
(HasTypeFuel @u0
@x3
(Asm1.reg Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.IStore @x1
@x2
@x3)
Asm1.ins))
:qid data_elim_Asm1.IStore))

:named data_elim_Asm1.IStore))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins)
(and (HasTypeFuel @u0
@x1
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x2
(Asm1.reg Dummy_value))
(HasTypeFuel @u0
@x3
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.ILoad @x1
@x2
@x3)
Asm1.ins))
:qid data_elim_Asm1.ILoad))

:named data_elim_Asm1.ILoad))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (= 303
(Term_constr_id Prims.int))
:named constructor_distinct_Prims.int))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (= 107
(Term_constr_id Prims.bool))
:named constructor_distinct_Prims.bool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! (= 168
(Term_constr_id Asm1.ins))
:named constructor_distinct_Asm1.ins))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 179
(Term_constr_id (Asm1.IStore @x0
@x1
@x2)))
 

:pattern ((Asm1.IStore @x0
@x1
@x2))
:qid constructor_distinct_Asm1.IStore))

:named constructor_distinct_Asm1.IStore))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,4-30,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 174
(Term_constr_id (Asm1.ILoad @x0
@x1
@x2)))
 

:pattern ((Asm1.ILoad @x0
@x1
@x2))
:qid constructor_distinct_Asm1.ILoad))

:named constructor_distinct_Asm1.ILoad))
;;;;;;;;;;;;;;;;bool typing
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (forall ((@u0 Bool))
 (! (HasType (BoxBool @u0)
Prims.bool)
 

:pattern ((BoxBool @u0))
:qid bool_typing))
:named bool_typing))
;;;;;;;;;;;;;;;;bool inversion
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.bool)
(is-BoxBool @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.bool))
:qid bool_inversion))
:named bool_inversion))
;;;;;;;;;;;;;;;;Assumption: Asm1.ins__uu___haseq
;;; Fact-ids: Name Asm1.ins__uu___haseq; Namespace Asm1
(assert (! (Valid (Prims.hasEq Asm1.ins))
:named assumption_Asm1.ins__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! 
;; def=Prims.fst(96,5-96,9); use=Prims.fst(96,5-96,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.unit)
(= Prims.unit
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.unit))
:qid Prims_pretyping_f8666440faa91836cc5a13998af863fc))

:named Prims_pretyping_f8666440faa91836cc5a13998af863fc))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! 
;; def=Prims.fst(80,5-80,9); use=Prims.fst(80,5-80,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.bool)
(= Prims.bool
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.bool))
:qid Prims_pretyping_f537159ed795b314b4e58c260361ae86))

:named Prims_pretyping_f537159ed795b314b4e58c260361ae86))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! 
;; def=Prims.fst(514,5-514,8); use=Prims.fst(514,5-514,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.int)
(= Prims.int
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.int))
:qid Prims_pretyping_ae567c2fb75be05905677af440075565))

:named Prims_pretyping_ae567c2fb75be05905677af440075565))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Asm1.ins; Namespace Asm1; Name Asm1.ILoad; Namespace Asm1; Name Asm1.IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(29,5-29,8); use=Asm1.fst(29,5-29,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Asm1.ins)
(= Asm1.ins
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Asm1.ins))
:qid Asm1_pretyping_bc9c2f1fd95279caaea3a34bcc039124))

:named Asm1_pretyping_bc9c2f1fd95279caaea3a34bcc039124))
(push) ;; push{2

; Starting query at Asm1.fst(30,12-30,16)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Asm1.ins{ILoad? _}).
;   (*  - Could not prove post-condition
; *) ~(ILoad? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ILoad__item__lDst`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_f230ca36ce2a7ff8ae53c124d032312b)

;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,12-30,16)
(not 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,12-30,16)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x0))
)
)
label_1)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.__proj__ILoad__item__lDst, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_f230ca36ce2a7ff8ae53c124d032312b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ILoad__item__lDst


; <Skipped let __proj__ILoad__item__lDst/>


; encoding sigelt val Asm1.__proj__ILoad__item__lSrc


; <Start encoding val Asm1.__proj__ILoad__item__lSrc>


(declare-fun Asm1.__proj__ILoad__item__lSrc (Term) Term)


(declare-fun Asm1.__proj__ILoad__item__lSrc@tok () Term)

; </end encoding val Asm1.__proj__ILoad__item__lSrc>

(push) ;; push{2

; Starting query at Asm1.fst(30,24-30,28)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Asm1.ins{ILoad? _}).
;   (*  - Could not prove post-condition
; *) ~(ILoad? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ILoad__item__lSrc`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_f230ca36ce2a7ff8ae53c124d032312b)

;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,24-30,28)
(not 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,24-30,28)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x0))
)
)
label_1)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.__proj__ILoad__item__lSrc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_f230ca36ce2a7ff8ae53c124d032312b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ILoad__item__lSrc


; <Skipped let __proj__ILoad__item__lSrc/>


; encoding sigelt val Asm1.__proj__ILoad__item__lOffset


; <Start encoding val Asm1.__proj__ILoad__item__lOffset>


(declare-fun Asm1.__proj__ILoad__item__lOffset (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ins{ILoad? _} -> Prims.int
(declare-fun Tm_arrow_095c9070f5979c1f505cd4795a79f3af () Term)
(declare-fun Asm1.__proj__ILoad__item__lOffset@tok () Term)

; </end encoding val Asm1.__proj__ILoad__item__lOffset>

(push) ;; push{2

; Starting query at Asm1.fst(30,36-30,43)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Asm1.ins{ILoad? _}).
;   (*  - Could not prove post-condition
; *) ~(ILoad? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ILoad__item__lOffset`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_f230ca36ce2a7ff8ae53c124d032312b)

;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,36-30,43)
(not 
;; def=Asm1.fst(30,4-30,9); use=Asm1.fst(30,36-30,43)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x0))
)
)
label_1)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.__proj__ILoad__item__lOffset, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_f230ca36ce2a7ff8ae53c124d032312b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ILoad__item__lOffset


; <Skipped let __proj__ILoad__item__lOffset/>


; encoding sigelt val Asm1.uu___is_IStore


; <Start encoding val Asm1.uu___is_IStore>

(declare-fun Asm1.uu___is_IStore (Term) Term)

(declare-fun Asm1.uu___is_IStore@tok () Term)

; </end encoding val Asm1.uu___is_IStore>


; encoding sigelt let uu___is_IStore


; <Skipped let uu___is_IStore/>


; encoding sigelt val Asm1.__proj__IStore__item__sDst


; <Start encoding val Asm1.__proj__IStore__item__sDst>

(declare-fun Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b () Term)
(declare-fun Asm1.__proj__IStore__item__sDst (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ins{IStore? _} -> reg
(declare-fun Tm_arrow_ed0fe1e0743e77c9665dd93005d7cf40 () Term)
(declare-fun Asm1.__proj__IStore__item__sDst@tok () Term)

; </end encoding val Asm1.__proj__IStore__item__sDst>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.uu___is_IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Asm1.ins)
(HasType (Asm1.uu___is_IStore @x0)
Prims.bool))
 

:pattern ((Asm1.uu___is_IStore @x0))
:qid typing_Asm1.uu___is_IStore))

:named typing_Asm1.uu___is_IStore))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Asm1.__proj__IStore__item__sDst; Namespace Asm1
(assert (! (HasType Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b
Tm_type)
:named refinement_kinding_Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Asm1.__proj__IStore__item__sDst; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b)
(and (HasTypeFuel @u0
@x1
Asm1.ins)

;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b))
:qid refinement_interpretation_Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b))

:named refinement_interpretation_Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b
;;; Fact-ids: Name Asm1.__proj__IStore__item__sDst; Namespace Asm1
(assert (! (iff (Valid (Prims.hasEq Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b))
(Valid (Prims.hasEq Asm1.ins)))
:named haseqTm_refine_999ac40df2c08a5d6e4e4cb66f26d80b))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Asm1.uu___is_IStore; Namespace Asm1
(assert (! 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,4-31,10)
(forall ((@x0 Term))
 (! (= (Asm1.uu___is_IStore @x0)
(BoxBool (is-Asm1.IStore @x0)))
 

:pattern ((Asm1.uu___is_IStore @x0))
:qid disc_equation_Asm1.IStore))

:named disc_equation_Asm1.IStore))
(push) ;; push{2

; Starting query at Asm1.fst(31,13-31,17)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Asm1.ins{IStore? _}).
;   (*  - Could not prove post-condition
; *) ~(IStore? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__IStore__item__sDst`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b)

;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,13-31,17)
(not 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,13-31,17)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x0))
)
)
label_1)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.__proj__IStore__item__sDst, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__IStore__item__sDst


; <Skipped let __proj__IStore__item__sDst/>


; encoding sigelt val Asm1.__proj__IStore__item__sOffset


; <Start encoding val Asm1.__proj__IStore__item__sOffset>


(declare-fun Asm1.__proj__IStore__item__sOffset (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ins{IStore? _} -> Prims.int
(declare-fun Tm_arrow_88f9f1ba74f80535c79e9c1eed806d50 () Term)
(declare-fun Asm1.__proj__IStore__item__sOffset@tok () Term)

; </end encoding val Asm1.__proj__IStore__item__sOffset>

(push) ;; push{2

; Starting query at Asm1.fst(31,25-31,32)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Asm1.ins{IStore? _}).
;   (*  - Could not prove post-condition
; *) ~(IStore? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__IStore__item__sOffset`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b)

;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,25-31,32)
(not 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,25-31,32)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x0))
)
)
label_1)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.__proj__IStore__item__sOffset, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__IStore__item__sOffset


; <Skipped let __proj__IStore__item__sOffset/>


; encoding sigelt val Asm1.__proj__IStore__item__sSrc


; <Start encoding val Asm1.__proj__IStore__item__sSrc>


(declare-fun Asm1.__proj__IStore__item__sSrc (Term) Term)


(declare-fun Asm1.__proj__IStore__item__sSrc@tok () Term)

; </end encoding val Asm1.__proj__IStore__item__sSrc>

(push) ;; push{2

; Starting query at Asm1.fst(31,40-31,44)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Asm1.ins{IStore? _}).
;   (*  - Could not prove post-condition
; *) ~(IStore? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__IStore__item__sSrc`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b)

;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,40-31,44)
(not 
;; def=Asm1.fst(31,4-31,10); use=Asm1.fst(31,40-31,44)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x0))
)
)
label_1)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.__proj__IStore__item__sSrc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_999ac40df2c08a5d6e4e4cb66f26d80b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__IStore__item__sSrc


; <Skipped let __proj__IStore__item__sSrc/>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.squash; Namespace Prims
(assert (! 
;; def=Prims.fst(117,5-117,11); use=Prims.fst(117,5-117,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.squash @x0)
Tm_type))
 

:pattern ((Prims.squash @x0))
:qid typing_Prims.squash))

:named typing_Prims.squash))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,4-315,14); use=Prims.fst(315,4-315,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (Prims.pure_post_ @x0
@x1)
Tm_type))
 

:pattern ((Prims.pure_post_ @x0
@x1))
:qid typing_Prims.pure_post_))

:named typing_Prims.pure_post_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pure_post; Namespace Prims
(assert (! 
;; def=Prims.fst(316,4-316,13); use=Prims.fst(316,4-316,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.pure_post @x0)
Tm_type))
 

:pattern ((Prims.pure_post @x0))
:qid typing_Prims.pure_post))

:named typing_Prims.pure_post))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (HasType Prims.l_True
Prims.logical)
:named typing_Prims.l_True))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.guard_free; Namespace Prims
(assert (! 
;; def=Prims.fst(346,5-346,15); use=Prims.fst(346,5-346,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.guard_free @x0)
Tm_type))
 

:pattern ((Prims.guard_free @x0))
:qid typing_Prims.guard_free))

:named typing_Prims.guard_free))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.uu___is_Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Pervasives.Native.option @x0)))
(HasType (FStar.Pervasives.Native.uu___is_Some @x0
@x1)
Prims.bool))
 

:pattern ((FStar.Pervasives.Native.uu___is_Some @x0
@x1))
:qid typing_FStar.Pervasives.Native.uu___is_Some))

:named typing_FStar.Pervasives.Native.uu___is_Some))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.uu___is_None; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(32,4-32,8); use=FStar.Pervasives.Native.fst(32,4-32,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Pervasives.Native.option @x0)))
(HasType (FStar.Pervasives.Native.uu___is_None @x0
@x1)
Prims.bool))
 

:pattern ((FStar.Pervasives.Native.uu___is_None @x0
@x1))
:qid typing_FStar.Pervasives.Native.uu___is_None))

:named typing_FStar.Pervasives.Native.uu___is_None))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.t; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(35,4-35,5); use=FStar.Map.fsti(35,4-35,5)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type))
(HasType (FStar.Map.t @x0
@x1)
Tm_type))
 

:pattern ((FStar.Map.t @x0
@x1))
:qid typing_FStar.Map.t))

:named typing_FStar.Map.t))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.map; Namespace Asm1
(assert (! 
;; def=Asm1.fst(19,4-19,7); use=Asm1.fst(19,4-19,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type))
(HasType (Asm1.map @x0
@x1)
Tm_type))
 

:pattern ((Asm1.map @x0
@x1))
:qid typing_Asm1.map))

:named typing_Asm1.map))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(31,5-31,11); use=FStar.Pervasives.Native.fst(31,5-31,11)
(forall ((@x0 Term))
 (! (= (ApplyTT FStar.Pervasives.Native.option@tok
@x0)
(FStar.Pervasives.Native.option @x0))
 

:pattern ((ApplyTT FStar.Pervasives.Native.option@tok
@x0))

:pattern ((FStar.Pervasives.Native.option @x0))
:qid token_correspondence_FStar.Pervasives.Native.option@tok))

:named token_correspondence_FStar.Pervasives.Native.option@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Some @x1
@x2)
(FStar.Pervasives.Native.option @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(FStar.Pervasives.Native.Some @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Some @x1
@x2)
(FStar.Pervasives.Native.option @x3)))
:qid subterm_ordering_FStar.Pervasives.Native.Some))

:named subterm_ordering_FStar.Pervasives.Native.Some))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.Mkstate @x1
@x2)
Asm1.state)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Asm1.Mkstate @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Asm1.Mkstate @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.Mkstate @x1
@x2)
Asm1.state))
:qid subterm_ordering_Asm1.Mkstate))

:named subterm_ordering_Asm1.Mkstate))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,31-315,40); use=Prims.fst(315,31-315,40)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_8d65e998a07dd53ec478e27017d9dba5))

:named refinement_kinding_Tm_refine_8d65e998a07dd53ec478e27017d9dba5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.squash; Namespace Prims
(assert (! 
;; def=Prims.fst(117,32-117,42); use=Prims.fst(117,32-117,42)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_2de20c066034c13bf76e9c0b94f4806c))

:named refinement_kinding_Tm_refine_2de20c066034c13bf76e9c0b94f4806c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,31-315,40); use=Prims.fst(315,31-315,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x2
@x3))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=Prims.fst(315,18-315,21); use=Prims.fst(315,36-315,39)
(Valid 
;; def=Prims.fst(315,18-315,21); use=Prims.fst(315,36-315,39)
@x3
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_8d65e998a07dd53ec478e27017d9dba5))

:named refinement_interpretation_Tm_refine_8d65e998a07dd53ec478e27017d9dba5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.squash; Namespace Prims
(assert (! 
;; def=Prims.fst(117,32-117,42); use=Prims.fst(117,32-117,42)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x2))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(117,13-117,14); use=Prims.fst(117,40-117,41)
(Valid 
;; def=Prims.fst(117,13-117,14); use=Prims.fst(117,40-117,41)
@x2
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x2)))
:qid refinement_interpretation_Tm_refine_2de20c066034c13bf76e9c0b94f4806c))

:named refinement_interpretation_Tm_refine_2de20c066034c13bf76e9c0b94f4806c))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.Native.Some @x0
@x1))
@x1)
 

:pattern ((FStar.Pervasives.Native.Some @x0
@x1))
:qid projection_inverse_FStar.Pervasives.Native.Some_v))

:named projection_inverse_FStar.Pervasives.Native.Some_v))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Native.Some_a (FStar.Pervasives.Native.Some @x0
@x1))
@x0)
 

:pattern ((FStar.Pervasives.Native.Some @x0
@x1))
:qid projection_inverse_FStar.Pervasives.Native.Some_a))

:named projection_inverse_FStar.Pervasives.Native.Some_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(32,4-32,8); use=FStar.Pervasives.Native.fst(32,4-32,8)
(forall ((@x0 Term))
 (! (= (FStar.Pervasives.Native.None_a (FStar.Pervasives.Native.None @x0))
@x0)
 

:pattern ((FStar.Pervasives.Native.None @x0))
:qid projection_inverse_FStar.Pervasives.Native.None_a))

:named projection_inverse_FStar.Pervasives.Native.None_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.Mkstate_regs (Asm1.Mkstate @x0
@x1))
@x0)
 

:pattern ((Asm1.Mkstate @x0
@x1))
:qid projection_inverse_Asm1.Mkstate_regs))

:named projection_inverse_Asm1.Mkstate_regs))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.Mkstate_mem (Asm1.Mkstate @x0
@x1))
@x1)
 

:pattern ((Asm1.Mkstate @x0
@x1))
:qid projection_inverse_Asm1.Mkstate_mem))

:named projection_inverse_Asm1.Mkstate_mem))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.option@tok))
:named pre_kinding_FStar.Pervasives.Native.option@tok))
;;;;;;;;;;;;;;;;Lemma: FStar.Pervasives.invertOption
;;; Fact-ids: Name FStar.Pervasives.invertOption; Namespace FStar.Pervasives
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)

;; def=FStar.Pervasives.fsti(727,37-727,79); use=FStar.Pervasives.fsti(727,37-727,79)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(FStar.Pervasives.Native.option @x0))

;; def=FStar.Pervasives.fsti(727,60-727,78); use=FStar.Pervasives.fsti(727,60-727,78)
(or 
;; def=FStar.Pervasives.fsti(727,60-727,67); use=FStar.Pervasives.fsti(727,60-727,67)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None @x0
@x1))


;; def=FStar.Pervasives.fsti(727,71-727,78); use=FStar.Pervasives.fsti(727,71-727,78)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some @x0
@x1))
)
)
 
;;no pats
:qid lemma_FStar.Pervasives.invertOption.1))
)
 

:pattern ((FStar.Pervasives.Native.option @x0))
:qid lemma_FStar.Pervasives.invertOption))
:named lemma_FStar.Pervasives.invertOption))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,31-315,54); use=Prims.fst(315,31-315,54)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3))

:named kinding_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3))
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! (and (IsTotFun FStar.Pervasives.Native.option@tok)

;; def=FStar.Pervasives.Native.fst(31,5-31,11); use=FStar.Pervasives.Native.fst(31,5-31,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Pervasives.Native.option @x0)
Tm_type))
 

:pattern ((FStar.Pervasives.Native.option @x0))
:qid kinding_FStar.Pervasives.Native.option@tok))
)
:named kinding_FStar.Pervasives.Native.option@tok))
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! (HasType Asm1.state
Tm_type)
:named kinding_Asm1.state@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_8d65e998a07dd53ec478e27017d9dba5
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,31-315,40); use=Prims.fst(315,31-315,40)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x0
@x1)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x0
@x1))))
:qid haseqTm_refine_8d65e998a07dd53ec478e27017d9dba5))

:named haseqTm_refine_8d65e998a07dd53ec478e27017d9dba5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2de20c066034c13bf76e9c0b94f4806c
;;; Fact-ids: Name Prims.squash; Namespace Prims
(assert (! 
;; def=Prims.fst(117,32-117,42); use=Prims.fst(117,32-117,42)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x0)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x0))))
:qid haseqTm_refine_2de20c066034c13bf76e9c0b94f4806c))

:named haseqTm_refine_2de20c066034c13bf76e9c0b94f4806c))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (HasType Prims.l_True
Prims.logical)
:named function_token_typing_Prims.l_True))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! 
;; def=Prims.fst(91,5-91,12); use=Prims.fst(91,5-91,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.trivial)
(is-Prims.T @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.trivial))
:qid fuel_guarded_inversion_Prims.trivial))

:named fuel_guarded_inversion_Prims.trivial))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(31,5-31,11); use=FStar.Pervasives.Native.fst(31,5-31,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(FStar.Pervasives.Native.option @x2))
(or (and (is-FStar.Pervasives.Native.None @x1)
(= @x2
(FStar.Pervasives.Native.None_a @x1)))
(and (is-FStar.Pervasives.Native.Some @x1)
(= @x2
(FStar.Pervasives.Native.Some_a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(FStar.Pervasives.Native.option @x2)))
:qid fuel_guarded_inversion_FStar.Pervasives.Native.option))

:named fuel_guarded_inversion_FStar.Pervasives.Native.option))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Asm1.state)
(is-Asm1.Mkstate @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Asm1.state))
:qid fuel_guarded_inversion_Asm1.state))

:named fuel_guarded_inversion_Asm1.state))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! (= 102
(Term_constr_id FStar.Pervasives.Native.option@tok))
:named fresh_token_FStar.Pervasives.Native.option@tok))
;;;;;;;;;;;;;;;;Equation for Prims.squash
;;; Fact-ids: Name Prims.squash; Namespace Prims
(assert (! 
;; def=Prims.fst(117,5-117,11); use=Prims.fst(117,5-117,11)
(forall ((@x0 Term))
 (! (= (Prims.squash @x0)
(Tm_refine_2de20c066034c13bf76e9c0b94f4806c @x0))
 

:pattern ((Prims.squash @x0))
:qid equation_Prims.squash))

:named equation_Prims.squash))
;;;;;;;;;;;;;;;;Equation for Prims.pure_post'
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,4-315,14); use=Prims.fst(315,4-315,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.pure_post_ @x0
@x1)
(Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x1
@x0))
 

:pattern ((Prims.pure_post_ @x0
@x1))
:qid equation_Prims.pure_post_))

:named equation_Prims.pure_post_))
;;;;;;;;;;;;;;;;Equation for Prims.pure_post
;;; Fact-ids: Name Prims.pure_post; Namespace Prims
(assert (! 
;; def=Prims.fst(316,4-316,13); use=Prims.fst(316,4-316,13)
(forall ((@x0 Term))
 (! (= (Prims.pure_post @x0)
(Prims.pure_post_ @x0
Prims.l_True))
 

:pattern ((Prims.pure_post @x0))
:qid equation_Prims.pure_post))

:named equation_Prims.pure_post))
;;;;;;;;;;;;;;;;Equation for Prims.l_True
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (= Prims.l_True
(Prims.squash Prims.trivial))
:named equation_Prims.l_True))
;;;;;;;;;;;;;;;;Equation for Asm1.map
;;; Fact-ids: Name Asm1.map; Namespace Asm1
(assert (! 
;; def=Asm1.fst(19,4-19,7); use=Asm1.fst(19,4-19,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.map @x0
@x1)
(FStar.Map.t @x0
@x1))
 

:pattern ((Asm1.map @x0
@x1))
:qid equation_Asm1.map))

:named equation_Asm1.map))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name FStar.Pervasives.Native.uu___is_Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Native.uu___is_Some @x0
@x1)
(BoxBool (is-FStar.Pervasives.Native.Some @x1)))
 

:pattern ((FStar.Pervasives.Native.uu___is_Some @x0
@x1))
:qid disc_equation_FStar.Pervasives.Native.Some))

:named disc_equation_FStar.Pervasives.Native.Some))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name FStar.Pervasives.Native.uu___is_None; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(32,4-32,8); use=FStar.Pervasives.Native.fst(32,4-32,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Native.uu___is_None @x0
@x1)
(BoxBool (is-FStar.Pervasives.Native.None @x1)))
 

:pattern ((FStar.Pervasives.Native.uu___is_None @x0
@x1))
:qid disc_equation_FStar.Pervasives.Native.None))

:named disc_equation_FStar.Pervasives.Native.None))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! 
;; def=Prims.fst(91,17-91,18); use=Prims.fst(91,17-91,18)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Prims.T
Prims.trivial)
 

:pattern ((HasTypeFuel @u0
Prims.T
Prims.trivial))
:qid data_typing_intro_Prims.T@tok))

:named data_typing_intro_Prims.T@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1))
(HasTypeFuel @u0
(FStar.Pervasives.Native.Some @x1
@x2)
(FStar.Pervasives.Native.option @x1)))
 

:pattern ((HasTypeFuel @u0
(FStar.Pervasives.Native.Some @x1
@x2)
(FStar.Pervasives.Native.option @x1)))
:qid data_typing_intro_FStar.Pervasives.Native.Some@tok))

:named data_typing_intro_FStar.Pervasives.Native.Some@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(32,4-32,8); use=FStar.Pervasives.Native.fst(32,4-32,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
(FStar.Pervasives.Native.None @x1)
(FStar.Pervasives.Native.option @x1)))
 

:pattern ((HasTypeFuel @u0
(FStar.Pervasives.Native.None @x1)
(FStar.Pervasives.Native.option @x1)))
:qid data_typing_intro_FStar.Pervasives.Native.None@tok))

:named data_typing_intro_FStar.Pervasives.Native.None@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Asm1.map (Asm1.reg Dummy_value)
Prims.int))
(HasTypeFuel @u0
@x2
(Asm1.map Prims.int
Prims.int)))
(HasTypeFuel @u0
(Asm1.Mkstate @x1
@x2)
Asm1.state))
 

:pattern ((HasTypeFuel @u0
(Asm1.Mkstate @x1
@x2)
Asm1.state))
:qid data_typing_intro_Asm1.Mkstate@tok))

:named data_typing_intro_Asm1.Mkstate@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Some @x1
@x2)
(FStar.Pervasives.Native.option @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
@x3)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Some @x1
@x2)
(FStar.Pervasives.Native.option @x3)))
:qid data_elim_FStar.Pervasives.Native.Some))

:named data_elim_FStar.Pervasives.Native.Some))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(32,4-32,8); use=FStar.Pervasives.Native.fst(32,4-32,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.None @x1)
(FStar.Pervasives.Native.option @x2))
(HasTypeFuel @u0
@x2
Tm_type))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.None @x1)
(FStar.Pervasives.Native.option @x2)))
:qid data_elim_FStar.Pervasives.Native.None))

:named data_elim_FStar.Pervasives.Native.None))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Asm1.Mkstate @x1
@x2)
Asm1.state)
(and (HasTypeFuel @u0
@x1
(Asm1.map (Asm1.reg Dummy_value)
Prims.int))
(HasTypeFuel @u0
@x2
(Asm1.map Prims.int
Prims.int))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Asm1.Mkstate @x1
@x2)
Asm1.state))
:qid data_elim_Asm1.Mkstate))

:named data_elim_Asm1.Mkstate))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 116
(Term_constr_id Prims.trivial))
:named constructor_distinct_Prims.trivial))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(31,5-31,11); use=FStar.Pervasives.Native.fst(31,5-31,11)
(forall ((@x0 Term))
 (! (= 101
(Term_constr_id (FStar.Pervasives.Native.option @x0)))
 

:pattern ((FStar.Pervasives.Native.option @x0))
:qid constructor_distinct_FStar.Pervasives.Native.option))

:named constructor_distinct_FStar.Pervasives.Native.option))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 113
(Term_constr_id (FStar.Pervasives.Native.Some @x0
@x1)))
 

:pattern ((FStar.Pervasives.Native.Some @x0
@x1))
:qid constructor_distinct_FStar.Pervasives.Native.Some))

:named constructor_distinct_FStar.Pervasives.Native.Some))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(32,4-32,8); use=FStar.Pervasives.Native.fst(32,4-32,8)
(forall ((@x0 Term))
 (! (= 108
(Term_constr_id (FStar.Pervasives.Native.None @x0)))
 

:pattern ((FStar.Pervasives.Native.None @x0))
:qid constructor_distinct_FStar.Pervasives.Native.None))

:named constructor_distinct_FStar.Pervasives.Native.None))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! (= 124
(Term_constr_id Asm1.state))
:named constructor_distinct_Asm1.state))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= 130
(Term_constr_id (Asm1.Mkstate @x0
@x1)))
 

:pattern ((Asm1.Mkstate @x0
@x1))
:qid constructor_distinct_Asm1.Mkstate))

:named constructor_distinct_Asm1.Mkstate))
;;;;;;;;;;;;;;;;Assumption: FStar.Pervasives.Native.option__uu___haseq
;;; Fact-ids: Name FStar.Pervasives.Native.option__uu___haseq; Namespace FStar.Pervasives.Native
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.option @x0))))
 

:pattern ((Prims.hasEq (FStar.Pervasives.Native.option @x0)))
:qid assumption_FStar.Pervasives.Native.option__uu___haseq))
:named assumption_FStar.Pervasives.Native.option__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! 
;; def=Prims.fst(91,5-91,12); use=Prims.fst(91,5-91,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.trivial)
(= Prims.trivial
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.trivial))
:qid Prims_pretyping_e8ffb7d227a1bbf69407a8d2ad2c4c83))

:named Prims_pretyping_e8ffb7d227a1bbf69407a8d2ad2c4c83))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,31-315,54); use=Prims.fst(315,31-315,54)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x2
@x3)))
:qid Prims_pre_typing_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3))

:named Prims_pre_typing_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3
;;; Fact-ids: Name Prims.pure_post'; Namespace Prims
(assert (! 
;; def=Prims.fst(315,31-315,54); use=Prims.fst(315,31-315,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x1
@x2))
(and 
;; def=Prims.fst(315,31-315,54); use=Prims.fst(315,31-315,54)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x2
@x1))
(HasType (ApplyTT @x0
@x3)
Tm_type))
 

:pattern ((ApplyTT @x0
@x3))
:qid Prims_interpretation_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3 @x1
@x2)))
:qid Prims_interpretation_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3))

:named Prims_interpretation_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(31,5-31,11); use=FStar.Pervasives.Native.fst(31,5-31,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Pervasives.Native.option @x2))
(= (FStar.Pervasives.Native.option @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Pervasives.Native.option @x2)))
:qid FStar.Pervasives.Native_pretyping_b53dbd183c526bc5d0f20d7b966ae125))

:named FStar.Pervasives.Native_pretyping_b53dbd183c526bc5d0f20d7b966ae125))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Asm1.state; Namespace Asm1; Name Asm1.Mkstate; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,10-27,15); use=Asm1.fst(27,10-27,15)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Asm1.state)
(= Asm1.state
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Asm1.state))
:qid Asm1_pretyping_8d2a371ced49b74ad42c2d4f031a5095))

:named Asm1_pretyping_8d2a371ced49b74ad42c2d4f031a5095))
(push) ;; push{2

; Starting query at Asm1.fst(34,2-46,15)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (i: Asm1.ins) (s: Asm1.state).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post (FStar.Pervasives.Native.option Asm1.state)).
;     (forall (x: FStar.Pervasives.Native.option Asm1.state). {:pattern Prims.guard_free (k x)}
;         Prims.auto_squash (k x)) ==>
;     ~(ILoad? i) /\ ~(IStore? i) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let eval_ins`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Asm1.ins)
(HasType @x1
Asm1.state))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post (FStar.Pervasives.Native.option Asm1.state)))

;; def=Prims.fst(402,27-402,88); use=Asm1.fst(34,2-46,15)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Asm1.fst(34,2-46,15)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Asm1.fst(34,2-46,15)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))


;; def=Asm1.fst(33,14-33,15); use=Asm1.fst(34,8-34,9)
(not 
;; def=Asm1.fst(33,14-33,15); use=Asm1.fst(34,8-34,9)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x0))
)


;; def=Asm1.fst(33,14-33,15); use=Asm1.fst(34,8-34,9)
(not 
;; def=Asm1.fst(33,14-33,15); use=Asm1.fst(34,8-34,9)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x0))
)
)
label_1)
 
;;no pats
:qid @query.1)))
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.eval_ins, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_Asm1.ILoad, disc_equation_Asm1.IStore, fuel_guarded_inversion_Asm1.ins, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let eval_ins


; <Start encoding let eval_ins>

(declare-fun Asm1.eval_ins (Term Term) Term)
;;;;;;;;;;;;;;;;i: ins -> s: state -> FStar.Pervasives.Native.option state
(declare-fun Tm_arrow_6be362e25bf8b84f4eb7b807a0a83476 () Term)
(declare-fun Asm1.eval_ins@tok () Term)












; </end encoding let eval_ins>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Nil @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid typing_Prims.uu___is_Nil))

:named typing_Prims.uu___is_Nil))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Cons @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Cons @x0
@x1))
:qid typing_Prims.uu___is_Cons))

:named typing_Prims.uu___is_Cons))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.op_Equals_Equals_Equals; Namespace Prims
(assert (! 
;; def=Prims.fst(498,6-498,9); use=Prims.fst(498,6-498,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
@x0)
(HasType @x3
@x1))
(HasType (Prims.op_Equals_Equals_Equals @x0
@x1
@x2
@x3)
Prims.logical))
 

:pattern ((Prims.op_Equals_Equals_Equals @x0
@x1
@x2
@x3))
:qid typing_Prims.op_Equals_Equals_Equals))

:named typing_Prims.op_Equals_Equals_Equals))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.union; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(40,4-40,9); use=FStar.Set.fsti(40,4-40,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0)))
(HasType (FStar.Set.union @x0
@x1
@x2)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Set.union @x0
@x1
@x2))
:qid typing_FStar.Set.union))

:named typing_FStar.Set.union))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.singleton; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(37,4-37,13); use=FStar.Set.fsti(37,4-37,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0))
(HasType (FStar.Set.singleton @x0
@x1)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Set.singleton @x0
@x1))
:qid typing_FStar.Set.singleton))

:named typing_FStar.Set.singleton))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.set; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(22,4-22,7); use=FStar.Set.fsti(22,4-22,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.eqtype)
(HasType (FStar.Set.set @x0)
Tm_type))
 

:pattern ((FStar.Set.set @x0))
:qid typing_FStar.Set.set))

:named typing_FStar.Set.set))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.mem; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(30,4-30,7); use=FStar.Set.fsti(30,4-30,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(FStar.Set.set @x0)))
(HasType (FStar.Set.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.Set.mem @x0
@x1
@x2))
:qid typing_FStar.Set.mem))

:named typing_FStar.Set.mem))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.equal; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(25,4-25,9); use=FStar.Set.fsti(25,4-25,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0)))
(HasType (FStar.Set.equal @x0
@x1
@x2)
Tm_type))
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid typing_FStar.Set.equal))

:named typing_FStar.Set.equal))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(42,4-42,7); use=FStar.Map.fsti(42,4-42,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x1))
(HasType (FStar.Map.upd @x0
@x1
@x2
@x3
@x4)
(FStar.Map.t @x0
@x1)))
 

:pattern ((FStar.Map.upd @x0
@x1
@x2
@x3
@x4))
:qid typing_FStar.Map.upd))

:named typing_FStar.Map.upd))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(39,4-39,7); use=FStar.Map.fsti(39,4-39,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0))
(HasType (FStar.Map.sel @x0
@x1
@x2
@x3)
@x1))
 

:pattern ((FStar.Map.sel @x0
@x1
@x2
@x3))
:qid typing_FStar.Map.sel))

:named typing_FStar.Map.sel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.domain; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(48,4-48,10); use=FStar.Map.fsti(48,4-48,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1)))
(HasType (FStar.Map.domain @x0
@x1
@x2)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Map.domain @x0
@x1
@x2))
:qid typing_FStar.Map.domain))

:named typing_FStar.Map.domain))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(51,4-51,12); use=FStar.Map.fsti(51,4-51,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0))
(HasType (FStar.Map.contains @x0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.Map.contains @x0
@x1
@x2
@x3))
:qid typing_FStar.Map.contains))

:named typing_FStar.Map.contains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,4-21,24); use=Asm1.fst(21,4-21,24)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type))
(HasType (Asm1.op_String_Assignment @x0
@x1)
(Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x1
@x0)))
 

:pattern ((Asm1.op_String_Assignment @x0
@x1))
:qid typing_Asm1.op_String_Assignment))

:named typing_Asm1.op_String_Assignment))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,4-20,20); use=Asm1.fst(20,4-20,20)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type))
(HasType (Asm1.op_String_Access @x0
@x1)
(Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x1
@x0)))
 

:pattern ((Asm1.op_String_Access @x0
@x1))
:qid typing_Asm1.op_String_Access))

:named typing_Asm1.op_String_Access))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.eval_ins; Namespace Asm1
(assert (! 
;; def=Asm1.fst(33,4-33,12); use=Asm1.fst(33,4-33,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Asm1.ins)
(HasType @x1
Asm1.state))
(HasType (Asm1.eval_ins @x0
@x1)
(FStar.Pervasives.Native.option Asm1.state)))
 

:pattern ((Asm1.eval_ins @x0
@x1))
:qid typing_Asm1.eval_ins))

:named typing_Asm1.eval_ins))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,4-22,12); use=Asm1.fst(22,4-22,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type))
(HasType (Asm1.contains @x0
@x1)
(Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x1
@x0)))
 

:pattern ((Asm1.contains @x0
@x1))
:qid typing_Asm1.contains))

:named typing_Asm1.contains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.__proj__Mkstate__item__regs; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,20-27,24); use=Asm1.fst(27,20-27,24)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Asm1.state)
(HasType (Asm1.__proj__Mkstate__item__regs @x0)
(Asm1.map (Asm1.reg Dummy_value)
Prims.int)))
 

:pattern ((Asm1.__proj__Mkstate__item__regs @x0))
:qid typing_Asm1.__proj__Mkstate__item__regs))

:named typing_Asm1.__proj__Mkstate__item__regs))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.__proj__Mkstate__item__mem; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,38-27,41); use=Asm1.fst(27,38-27,41)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Asm1.state)
(HasType (Asm1.__proj__Mkstate__item__mem @x0)
(Asm1.map Prims.int
Prims.int)))
 

:pattern ((Asm1.__proj__Mkstate__item__mem @x0))
:qid typing_Asm1.__proj__Mkstate__item__mem))

:named typing_Asm1.__proj__Mkstate__item__mem))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(614,5-614,9); use=Prims.fst(614,5-614,9)
(forall ((@x0 Term))
 (! (= (ApplyTT Prims.list@tok
@x0)
(Prims.list @x0))
 

:pattern ((ApplyTT Prims.list@tok
@x0))

:pattern ((Prims.list @x0))
:qid token_correspondence_Prims.list@tok))

:named token_correspondence_Prims.list@tok))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(42,4-42,7); use=FStar.Map.fsti(42,4-42,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.upd@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.upd@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_FStar.Map.upd))

:named token_correspondence_FStar.Map.upd))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(39,4-39,7); use=FStar.Map.fsti(39,4-39,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.sel@tok
@x0)
@x1)
@x2)
@x3)
(FStar.Map.sel @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.sel@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_FStar.Map.sel))

:named token_correspondence_FStar.Map.sel))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(51,4-51,12); use=FStar.Map.fsti(51,4-51,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.contains@tok
@x0)
@x1)
@x2)
@x3)
(FStar.Map.contains @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.contains@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_FStar.Map.contains))

:named token_correspondence_FStar.Map.contains))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,4-21,24); use=Asm1.fst(21,4-21,24)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
@x0)
@x1)
(Asm1.op_String_Assignment @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
@x0)
@x1))
:qid token_correspondence_Asm1.op_String_Assignment))

:named token_correspondence_Asm1.op_String_Assignment))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,4-20,20); use=Asm1.fst(20,4-20,20)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Asm1.op_String_Access@tok
@x0)
@x1)
(Asm1.op_String_Access @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Asm1.op_String_Access@tok
@x0)
@x1))
:qid token_correspondence_Asm1.op_String_Access))

:named token_correspondence_Asm1.op_String_Access))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,4-22,12); use=Asm1.fst(22,4-22,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Asm1.contains@tok
@x0)
@x1)
(Asm1.contains @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Asm1.contains@tok
@x0)
@x1))
:qid token_correspondence_Asm1.contains))

:named token_correspondence_Asm1.contains))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Cons @x1
@x2
@x3)
(Prims.list @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Prims.Cons @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Prims.Cons @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Cons @x1
@x2
@x3)
(Prims.list @x4)))
:qid subterm_ordering_Prims.Cons))

:named subterm_ordering_Prims.Cons))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term))
 (! (= (Prims.Nil_a (Prims.Nil @x0))
@x0)
 

:pattern ((Prims.Nil @x0))
:qid projection_inverse_Prims.Nil_a))

:named projection_inverse_Prims.Nil_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Cons_tl (Prims.Cons @x0
@x1
@x2))
@x2)
 

:pattern ((Prims.Cons @x0
@x1
@x2))
:qid projection_inverse_Prims.Cons_tl))

:named projection_inverse_Prims.Cons_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Cons_hd (Prims.Cons @x0
@x1
@x2))
@x1)
 

:pattern ((Prims.Cons @x0
@x1
@x2))
:qid projection_inverse_Prims.Cons_hd))

:named projection_inverse_Prims.Cons_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Cons_a (Prims.Cons @x0
@x1
@x2))
@x0)
 

:pattern ((Prims.Cons @x0
@x1
@x2))
:qid projection_inverse_Prims.Cons_a))

:named projection_inverse_Prims.Cons_a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name Asm1.__proj__Mkstate__item__regs; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,20-27,24); use=Asm1.fst(27,20-27,24)
(forall ((@x0 Term))
 (! (= (Asm1.__proj__Mkstate__item__regs @x0)
(Asm1.Mkstate_regs @x0))
 

:pattern ((Asm1.__proj__Mkstate__item__regs @x0))
:qid proj_equation_Asm1.Mkstate_regs))

:named proj_equation_Asm1.Mkstate_regs))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name Asm1.__proj__Mkstate__item__mem; Namespace Asm1
(assert (! 
;; def=Asm1.fst(27,38-27,41); use=Asm1.fst(27,38-27,41)
(forall ((@x0 Term))
 (! (= (Asm1.__proj__Mkstate__item__mem @x0)
(Asm1.Mkstate_mem @x0))
 

:pattern ((Asm1.__proj__Mkstate__item__mem @x0))
:qid proj_equation_Asm1.Mkstate_mem))

:named proj_equation_Asm1.Mkstate_mem))
;;; Fact-ids: Name Prims.op_Equality; Namespace Prims
(assert (! 
;; def=Prims.fst(588,4-588,15); use=Prims.fst(588,4-588,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.op_Equality @x0
@x1
@x2)
(BoxBool (= @x1
@x2)))
 

:pattern ((Prims.op_Equality @x0
@x1
@x2))
:qid primitive_Prims.op_Equality))

:named primitive_Prims.op_Equality))
;;; Fact-ids: Name Prims.op_BarBar; Namespace Prims
(assert (! 
;; def=Prims.fst(528,4-528,13); use=Prims.fst(528,4-528,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_BarBar @x0
@x1)
(BoxBool (or (BoxBool_proj_0 @x0)
(BoxBool_proj_0 @x1))))
 

:pattern ((Prims.op_BarBar @x0
@x1))
:qid primitive_Prims.op_BarBar))

:named primitive_Prims.op_BarBar))
;;; Fact-ids: Name Prims.op_AmpAmp; Namespace Prims
(assert (! 
;; def=Prims.fst(522,4-522,13); use=Prims.fst(522,4-522,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_AmpAmp @x0
@x1)
(BoxBool (and (BoxBool_proj_0 @x0)
(BoxBool_proj_0 @x1))))
 

:pattern ((Prims.op_AmpAmp @x0
@x1))
:qid primitive_Prims.op_AmpAmp))

:named primitive_Prims.op_AmpAmp))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.mem_union
;;; Fact-ids: Name FStar.Set.mem_union; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(FStar.Set.set @x0))
(HasType @x3
(FStar.Set.set @x0)))

;; def=FStar.Set.fsti(72,12-72,58); use=FStar.Set.fsti(72,12-72,58)
(= (FStar.Set.mem @x0
@x1
(FStar.Set.union @x0
@x2
@x3))
(Prims.op_BarBar (FStar.Set.mem @x0
@x1
@x2)
(FStar.Set.mem @x0
@x1
@x3)))
)
 

:pattern ((FStar.Set.mem @x0
@x1
(FStar.Set.union @x0
@x2
@x3)))
:qid lemma_FStar.Set.mem_union))
:named lemma_FStar.Set.mem_union))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.mem_singleton
;;; Fact-ids: Name FStar.Set.mem_singleton; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
@x0))

;; def=FStar.Set.fsti(67,12-67,41); use=FStar.Set.fsti(67,12-67,41)
(= (FStar.Set.mem @x0
@x2
(FStar.Set.singleton @x0
@x1))
(Prims.op_Equality @x0
@x1
@x2))
)
 

:pattern ((FStar.Set.mem @x0
@x2
(FStar.Set.singleton @x0
@x1)))
:qid lemma_FStar.Set.mem_singleton))
:named lemma_FStar.Set.mem_singleton))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.lemma_equal_refl
;;; Fact-ids: Name FStar.Set.lemma_equal_refl; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0))

;; def=FStar.Set.fsti(111,14-111,24); use=FStar.Set.fsti(111,14-111,24)
(= @x1
@x2)
)

;; def=FStar.Set.fsti(112,14-112,27); use=FStar.Set.fsti(112,14-112,27)
(Valid 
;; def=FStar.Set.fsti(112,14-112,27); use=FStar.Set.fsti(112,14-112,27)
(FStar.Set.equal @x0
@x1
@x2)
)
)
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid lemma_FStar.Set.lemma_equal_refl))
:named lemma_FStar.Set.lemma_equal_refl))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.lemma_equal_intro
;;; Fact-ids: Name FStar.Set.lemma_equal_intro; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0))

;; def=FStar.Set.fsti(101,15-101,46); use=FStar.Set.fsti(101,15-101,46)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x0)

;; def=FStar.Set.fsti(101,26-101,45); use=FStar.Set.fsti(101,26-101,45)
(= (FStar.Set.mem @x0
@x3
@x1)
(FStar.Set.mem @x0
@x3
@x2))
)
 
;;no pats
:qid lemma_FStar.Set.lemma_equal_intro.1))
)

;; def=FStar.Set.fsti(102,13-102,26); use=FStar.Set.fsti(102,13-102,26)
(Valid 
;; def=FStar.Set.fsti(102,13-102,26); use=FStar.Set.fsti(102,13-102,26)
(FStar.Set.equal @x0
@x1
@x2)
)
)
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid lemma_FStar.Set.lemma_equal_intro))
:named lemma_FStar.Set.lemma_equal_intro))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.lemma_equal_elim
;;; Fact-ids: Name FStar.Set.lemma_equal_elim; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0))

;; def=FStar.Set.fsti(106,14-106,27); use=FStar.Set.fsti(106,14-106,27)
(Valid 
;; def=FStar.Set.fsti(106,14-106,27); use=FStar.Set.fsti(106,14-106,27)
(FStar.Set.equal @x0
@x1
@x2)
)
)

;; def=FStar.Set.fsti(107,14-107,24); use=FStar.Set.fsti(107,14-107,24)
(= @x1
@x2)
)
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid lemma_FStar.Set.lemma_equal_elim))
:named lemma_FStar.Set.lemma_equal_elim))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_UpdDomain
;;; Fact-ids: Name FStar.Map.lemma_UpdDomain; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x1))

;; def=FStar.Map.fsti(153,17-153,84); use=FStar.Map.fsti(153,17-153,84)
(Valid 
;; def=FStar.Map.fsti(153,17-153,84); use=FStar.Map.fsti(153,17-153,84)
(FStar.Set.equal @x0
(FStar.Map.domain @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4))
(FStar.Set.union @x0
(FStar.Map.domain @x0
@x1
@x2)
(FStar.Set.singleton @x0
@x3)))
)
)
 

:pattern ((FStar.Map.domain @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4)))
:qid lemma_FStar.Map.lemma_UpdDomain))
:named lemma_FStar.Map.lemma_UpdDomain))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_SelUpd2
;;; Fact-ids: Name FStar.Map.lemma_SelUpd2; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x0)
(HasType @x5
@x1)

;; def=FStar.Map.fsti(100,51-100,58); use=FStar.Map.fsti(100,51-100,58)
(not 
;; def=FStar.Map.fsti(100,51-100,58); use=FStar.Map.fsti(100,51-100,58)
(= @x4
@x3)
)
)

;; def=FStar.Map.fsti(100,63-100,94); use=FStar.Map.fsti(100,63-100,94)
(= (FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3)
(FStar.Map.sel @x0
@x1
@x2
@x3))
)
 

:pattern ((FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3))
:qid lemma_FStar.Map.lemma_SelUpd2))
:named lemma_FStar.Map.lemma_SelUpd2))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_SelUpd1
;;; Fact-ids: Name FStar.Map.lemma_SelUpd1; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x1))

;; def=FStar.Map.fsti(96,50-96,74); use=FStar.Map.fsti(96,50-96,74)
(= (FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4)
@x3)
@x4)
)
 

:pattern ((FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4)
@x3))
:qid lemma_FStar.Map.lemma_SelUpd1))
:named lemma_FStar.Map.lemma_SelUpd1))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_InDomUpd2
;;; Fact-ids: Name FStar.Map.lemma_InDomUpd2; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x0)
(HasType @x5
@x1)

;; def=FStar.Map.fsti(128,53-128,60); use=FStar.Map.fsti(128,53-128,60)
(not 
;; def=FStar.Map.fsti(128,53-128,60); use=FStar.Map.fsti(128,53-128,60)
(= @x4
@x3)
)
)

;; def=FStar.Map.fsti(128,65-128,106); use=FStar.Map.fsti(128,65-128,106)
(= (FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3)
(FStar.Map.contains @x0
@x1
@x2
@x3))
)
 

:pattern ((FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3))
:qid lemma_FStar.Map.lemma_InDomUpd2))
:named lemma_FStar.Map.lemma_InDomUpd2))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_InDomUpd1
;;; Fact-ids: Name FStar.Map.lemma_InDomUpd1; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x0)
(HasType @x5
@x1))

;; def=FStar.Map.fsti(124,52-124,106); use=FStar.Map.fsti(124,52-124,106)
(= (FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x5)
@x4)
(Prims.op_BarBar (Prims.op_Equality @x0
@x3
@x4)
(FStar.Map.contains @x0
@x1
@x2
@x4)))
)
 

:pattern ((FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x5)
@x4))
:qid lemma_FStar.Map.lemma_InDomUpd1))
:named lemma_FStar.Map.lemma_InDomUpd1))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_ContainsDom
;;; Fact-ids: Name FStar.Map.lemma_ContainsDom; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0))

;; def=FStar.Map.fsti(148,33-148,68); use=FStar.Map.fsti(148,33-148,68)
(= (FStar.Map.contains @x0
@x1
@x2
@x3)
(FStar.Set.mem @x0
@x3
(FStar.Map.domain @x0
@x1
@x2)))
)
 

:pattern ((FStar.Map.contains @x0
@x1
@x2
@x3))

:pattern ((FStar.Set.mem @x0
@x3
(FStar.Map.domain @x0
@x1
@x2)))
:qid lemma_FStar.Map.lemma_ContainsDom))
:named lemma_FStar.Map.lemma_ContainsDom))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! (HasType Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0
Tm_type)
:named kinding_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,0-21,34); use=Asm1.fst(21,0-21,34)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98))

:named kinding_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b19283e90b47034162373413c6a19933
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! (HasType Tm_arrow_b19283e90b47034162373413c6a19933
Tm_type)
:named kinding_Tm_arrow_b19283e90b47034162373413c6a19933))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9f4db3187888091a832b0a323f1b9876
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,0-22,27); use=Asm1.fst(22,0-22,27)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_9f4db3187888091a832b0a323f1b9876))

:named kinding_Tm_arrow_9f4db3187888091a832b0a323f1b9876))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! (HasType Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126
Tm_type)
:named kinding_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,0-20,30); use=Asm1.fst(20,0-20,30)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6))

:named kinding_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! (HasType Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a
Tm_type)
:named kinding_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_32b461b2324f01c7a6bc6b577725566d
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! (HasType Tm_arrow_32b461b2324f01c7a6bc6b577725566d
Tm_type)
:named kinding_Tm_arrow_32b461b2324f01c7a6bc6b577725566d))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_28a168f8d4c6d78564a214862be72b08
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! (HasType Tm_arrow_28a168f8d4c6d78564a214862be72b08
Tm_type)
:named kinding_Tm_arrow_28a168f8d4c6d78564a214862be72b08))
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (and (IsTotFun Prims.list@tok)

;; def=Prims.fst(614,5-614,9); use=Prims.fst(614,5-614,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.list @x0)
Tm_type))
 

:pattern ((Prims.list @x0))
:qid kinding_Prims.list@tok))
)
:named kinding_Prims.list@tok))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(42,4-42,7); use=FStar.Map.fsti(42,4-42,7)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType FStar.Map.upd@tok
Tm_arrow_b19283e90b47034162373413c6a19933))

;; def=FStar.Map.fsti(42,4-42,7); use=FStar.Map.fsti(42,4-42,7)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.upd@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(FStar.Map.upd @x1
@x2
@x3
@x4
@x5))
 

:pattern ((FStar.Map.upd @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_FStar.Map.upd.1))
)
 

:pattern ((ApplyTT @x0
FStar.Map.upd@tok))
:qid function_token_typing_FStar.Map.upd))

:named function_token_typing_FStar.Map.upd))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(39,4-39,7); use=FStar.Map.fsti(39,4-39,7)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType FStar.Map.sel@tok
Tm_arrow_28a168f8d4c6d78564a214862be72b08))

;; def=FStar.Map.fsti(39,4-39,7); use=FStar.Map.fsti(39,4-39,7)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.sel@tok
@x1)
@x2)
@x3)
@x4)
(FStar.Map.sel @x1
@x2
@x3
@x4))
 

:pattern ((FStar.Map.sel @x1
@x2
@x3
@x4))
:qid function_token_typing_FStar.Map.sel.1))
)
 

:pattern ((ApplyTT @x0
FStar.Map.sel@tok))
:qid function_token_typing_FStar.Map.sel))

:named function_token_typing_FStar.Map.sel))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(51,4-51,12); use=FStar.Map.fsti(51,4-51,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType FStar.Map.contains@tok
Tm_arrow_32b461b2324f01c7a6bc6b577725566d))

;; def=FStar.Map.fsti(51,4-51,12); use=FStar.Map.fsti(51,4-51,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.Map.contains@tok
@x1)
@x2)
@x3)
@x4)
(FStar.Map.contains @x1
@x2
@x3
@x4))
 

:pattern ((FStar.Map.contains @x1
@x2
@x3
@x4))
:qid function_token_typing_FStar.Map.contains.1))
)
 

:pattern ((ApplyTT @x0
FStar.Map.contains@tok))
:qid function_token_typing_FStar.Map.contains))

:named function_token_typing_FStar.Map.contains))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,4-21,24); use=Asm1.fst(21,4-21,24)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Asm1.op_String_Assignment@tok
Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))

;; def=Asm1.fst(21,4-21,24); use=Asm1.fst(21,4-21,24)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
@x1)
@x2)
(Asm1.op_String_Assignment @x1
@x2))
 

:pattern ((Asm1.op_String_Assignment @x1
@x2))
:qid function_token_typing_Asm1.op_String_Assignment.1))
)
 

:pattern ((ApplyTT @x0
Asm1.op_String_Assignment@tok))
:qid function_token_typing_Asm1.op_String_Assignment))

:named function_token_typing_Asm1.op_String_Assignment))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,4-20,20); use=Asm1.fst(20,4-20,20)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Asm1.op_String_Access@tok
Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))

;; def=Asm1.fst(20,4-20,20); use=Asm1.fst(20,4-20,20)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Asm1.op_String_Access@tok
@x1)
@x2)
(Asm1.op_String_Access @x1
@x2))
 

:pattern ((Asm1.op_String_Access @x1
@x2))
:qid function_token_typing_Asm1.op_String_Access.1))
)
 

:pattern ((ApplyTT @x0
Asm1.op_String_Access@tok))
:qid function_token_typing_Asm1.op_String_Access))

:named function_token_typing_Asm1.op_String_Access))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,4-22,12); use=Asm1.fst(22,4-22,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Asm1.contains@tok
Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))

;; def=Asm1.fst(22,4-22,12); use=Asm1.fst(22,4-22,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Asm1.contains@tok
@x1)
@x2)
(Asm1.contains @x1
@x2))
 

:pattern ((Asm1.contains @x1
@x2))
:qid function_token_typing_Asm1.contains.1))
)
 

:pattern ((ApplyTT @x0
Asm1.contains@tok))
:qid function_token_typing_Asm1.contains))

:named function_token_typing_Asm1.contains))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(614,5-614,9); use=Prims.fst(614,5-614,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(Prims.list @x2))
(or (and (is-Prims.Nil @x1)
(= @x2
(Prims.Nil_a @x1)))
(and (is-Prims.Cons @x1)
(= @x2
(Prims.Cons_a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(Prims.list @x2)))
:qid fuel_guarded_inversion_Prims.list))

:named fuel_guarded_inversion_Prims.list))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;Equation for Prims.op_Equals_Equals_Equals
;;; Fact-ids: Name Prims.op_Equals_Equals_Equals; Namespace Prims
(assert (! 
;; def=Prims.fst(498,6-498,9); use=Prims.fst(498,6-498,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (Prims.op_Equals_Equals_Equals @x0
@x1
@x2
@x3))

;; def=Prims.fst(498,52-498,68); use=Prims.fst(498,52-498,68)
(and 
;; def=Prims.fst(498,52-498,58); use=Prims.fst(498,52-498,58)
(= @x0
@x1)


;; def=Prims.fst(498,62-498,68); use=Prims.fst(498,62-498,68)
(= @x2
@x3)
)
)
 

:pattern ((Prims.op_Equals_Equals_Equals @x0
@x1
@x2
@x3))
:qid equation_Prims.op_Equals_Equals_Equals))

:named equation_Prims.op_Equals_Equals_Equals))
;;;;;;;;;;;;;;;;Equation for Asm1.op_String_Assignment
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,4-21,24); use=Asm1.fst(21,4-21,24)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.op_String_Assignment @x0
@x1)
(ApplyTT (ApplyTT FStar.Map.upd@tok
@x0)
@x1))
 

:pattern ((Asm1.op_String_Assignment @x0
@x1))
:qid equation_Asm1.op_String_Assignment))

:named equation_Asm1.op_String_Assignment))
;;;;;;;;;;;;;;;;Equation for Asm1.op_String_Access
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,4-20,20); use=Asm1.fst(20,4-20,20)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.op_String_Access @x0
@x1)
(ApplyTT (ApplyTT FStar.Map.sel@tok
@x0)
@x1))
 

:pattern ((Asm1.op_String_Access @x0
@x1))
:qid equation_Asm1.op_String_Access))

:named equation_Asm1.op_String_Access))
;;;;;;;;;;;;;;;;Equation for Asm1.eval_ins
;;; Fact-ids: Name Asm1.eval_ins; Namespace Asm1
(assert (! 
;; def=Asm1.fst(33,4-33,12); use=Asm1.fst(33,4-33,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.eval_ins @x0
@x1)
(let ((@lb2 @x0))
(ite (is-Asm1.ILoad @lb2)
(let ((@lb3 (Prims.op_AmpAmp (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lDst @lb2))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lSrc @lb2)))))
(ite (= @lb3
(BoxBool true))
(let ((@lb4 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lSrc @lb2)))
(BoxInt_proj_0 (Asm1.ILoad_lOffset @lb2)))))))
(ite (= @lb4
(BoxBool true))
(FStar.Pervasives.Native.Some Asm1.state
(Asm1.Mkstate (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lDst @lb2))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lSrc @lb2)))
(BoxInt_proj_0 (Asm1.ILoad_lOffset @lb2))))))
(Asm1.__proj__Mkstate__item__mem @x1)))
(FStar.Pervasives.Native.None Asm1.state)))
(FStar.Pervasives.Native.None Asm1.state)))
(ite (is-Asm1.IStore @lb2)
(let ((@lb3 (Prims.op_AmpAmp (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sDst @lb2))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sSrc @lb2)))))
(ite (= @lb3
(BoxBool true))
(let ((@lb4 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sDst @lb2)))
(BoxInt_proj_0 (Asm1.IStore_sOffset @lb2)))))))
(ite (= @lb4
(BoxBool true))
(FStar.Pervasives.Native.Some Asm1.state
(Asm1.Mkstate (Asm1.__proj__Mkstate__item__regs @x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sDst @lb2)))
(BoxInt_proj_0 (Asm1.IStore_sOffset @lb2)))))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sSrc @lb2)))))
(FStar.Pervasives.Native.None Asm1.state)))
(FStar.Pervasives.Native.None Asm1.state)))
Tm_unit))))
 

:pattern ((Asm1.eval_ins @x0
@x1))
:qid equation_Asm1.eval_ins))

:named equation_Asm1.eval_ins))
;;;;;;;;;;;;;;;;Equation for Asm1.contains
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,4-22,12); use=Asm1.fst(22,4-22,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.contains @x0
@x1)
(ApplyTT (ApplyTT FStar.Map.contains@tok
@x0)
@x1))
 

:pattern ((Asm1.contains @x0
@x1))
:qid equation_Asm1.contains))

:named equation_Asm1.contains))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Nil @x0
@x1)
(BoxBool (is-Prims.Nil @x1)))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid disc_equation_Prims.Nil))

:named disc_equation_Prims.Nil))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Cons @x0
@x1)
(BoxBool (is-Prims.Cons @x1)))
 

:pattern ((Prims.uu___is_Cons @x0
@x1))
:qid disc_equation_Prims.Cons))

:named disc_equation_Prims.Cons))
;;;;;;;;;;;;;;;;Prop-typing for Prims.op_Equals_Equals_Equals
;;; Fact-ids: Name Prims.op_Equals_Equals_Equals; Namespace Prims
(assert (! 
;; def=Prims.fst(498,6-498,9); use=Prims.fst(498,6-498,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
@x0)
(HasType @x3
@x1))
(Valid (Prims.subtype_of (Prims.op_Equals_Equals_Equals @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Prims.op_Equals_Equals_Equals @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_Prims.op_Equals_Equals_Equals))

:named defn_equation_Prims.op_Equals_Equals_Equals))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
(Prims.Nil @x1)
(Prims.list @x1)))
 

:pattern ((HasTypeFuel @u0
(Prims.Nil @x1)
(Prims.list @x1)))
:qid data_typing_intro_Prims.Nil@tok))

:named data_typing_intro_Prims.Nil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(Prims.list @x1)))
(HasTypeFuel @u0
(Prims.Cons @x1
@x2
@x3)
(Prims.list @x1)))
 

:pattern ((HasTypeFuel @u0
(Prims.Cons @x1
@x2
@x3)
(Prims.list @x1)))
:qid data_typing_intro_Prims.Cons@tok))

:named data_typing_intro_Prims.Cons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Nil @x1)
(Prims.list @x2))
(HasTypeFuel @u0
@x2
Tm_type))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Nil @x1)
(Prims.list @x2)))
:qid data_elim_Prims.Nil))

:named data_elim_Prims.Nil))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Cons @x1
@x2
@x3)
(Prims.list @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(Prims.list @x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Cons @x1
@x2
@x3)
(Prims.list @x4)))
:qid data_elim_Prims.Cons))

:named data_elim_Prims.Cons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(614,5-614,9); use=Prims.fst(614,5-614,9)
(forall ((@x0 Term))
 (! (= 318
(Term_constr_id (Prims.list @x0)))
 

:pattern ((Prims.list @x0))
:qid constructor_distinct_Prims.list))

:named constructor_distinct_Prims.list))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term))
 (! (= 325
(Term_constr_id (Prims.Nil @x0)))
 

:pattern ((Prims.Nil @x0))
:qid constructor_distinct_Prims.Nil))

:named constructor_distinct_Prims.Nil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 330
(Term_constr_id (Prims.Cons @x0
@x1
@x2)))
 

:pattern ((Prims.Cons @x0
@x1
@x2))
:qid constructor_distinct_Prims.Cons))

:named constructor_distinct_Prims.Cons))
;;;;;;;;;;;;;;;;Assumption: Prims.list__uu___haseq
;;; Fact-ids: Name Prims.list__uu___haseq; Namespace Prims
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (Prims.list @x0))))
 

:pattern ((Prims.hasEq (Prims.list @x0)))
:qid assumption_Prims.list__uu___haseq))
:named assumption_Prims.list__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! 
;; def=Prims.fst(614,5-614,9); use=Prims.fst(614,5-614,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Prims.list @x2))
(= (Prims.list @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(Prims.list @x2)))
:qid Prims_pretyping_3862c4e8ff39bfc3871b6a47e7ff5b2e))

:named Prims_pretyping_3862c4e8ff39bfc3871b6a47e7ff5b2e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b19283e90b47034162373413c6a19933)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b19283e90b47034162373413c6a19933))
:qid FStar.Map_pre_typing_Tm_arrow_b19283e90b47034162373413c6a19933))

:named FStar.Map_pre_typing_Tm_arrow_b19283e90b47034162373413c6a19933))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(51,15-51,74); use=FStar.Map.fsti(51,19-51,74)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_32b461b2324f01c7a6bc6b577725566d)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_32b461b2324f01c7a6bc6b577725566d))
:qid FStar.Map_pre_typing_Tm_arrow_32b461b2324f01c7a6bc6b577725566d))

:named FStar.Map_pre_typing_Tm_arrow_32b461b2324f01c7a6bc6b577725566d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(39,10-39,50); use=FStar.Map.fsti(39,14-39,70)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_28a168f8d4c6d78564a214862be72b08)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_28a168f8d4c6d78564a214862be72b08))
:qid FStar.Map_pre_typing_Tm_arrow_28a168f8d4c6d78564a214862be72b08))

:named FStar.Map_pre_typing_Tm_arrow_28a168f8d4c6d78564a214862be72b08))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b19283e90b47034162373413c6a19933
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b19283e90b47034162373413c6a19933)
(and 
;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2))
(HasType @x4
@x1)
(HasType @x5
@x2))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(FStar.Map.t @x1
@x2)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933.1))

(IsTotFun @x0)

;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933.2))


;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933.3))


;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933.4))


;; def=FStar.Map.fsti(42,10-42,87); use=FStar.Map.fsti(42,14-42,87)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2))
(HasType @x4
@x1))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b19283e90b47034162373413c6a19933))
:qid FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933))

:named FStar.Map_interpretation_Tm_arrow_b19283e90b47034162373413c6a19933))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(51,15-51,74); use=FStar.Map.fsti(51,19-51,74)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_32b461b2324f01c7a6bc6b577725566d)
(and 
;; def=FStar.Map.fsti(51,15-51,74); use=FStar.Map.fsti(51,19-51,74)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2))
(HasType @x4
@x1))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d.1))

(IsTotFun @x0)

;; def=FStar.Map.fsti(51,15-51,74); use=FStar.Map.fsti(51,19-51,74)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d.2))


;; def=FStar.Map.fsti(51,15-51,74); use=FStar.Map.fsti(51,19-51,74)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d.3))


;; def=FStar.Map.fsti(51,15-51,74); use=FStar.Map.fsti(51,19-51,74)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_32b461b2324f01c7a6bc6b577725566d))
:qid FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d))

:named FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(39,10-39,50); use=FStar.Map.fsti(39,14-39,70)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_28a168f8d4c6d78564a214862be72b08)
(and 
;; def=FStar.Map.fsti(39,10-39,50); use=FStar.Map.fsti(39,14-39,70)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2))
(HasType @x4
@x1))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08.1))

(IsTotFun @x0)

;; def=FStar.Map.fsti(39,10-39,50); use=FStar.Map.fsti(39,14-39,70)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08.2))


;; def=FStar.Map.fsti(39,10-39,50); use=FStar.Map.fsti(39,14-39,70)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08.3))


;; def=FStar.Map.fsti(39,10-39,50); use=FStar.Map.fsti(39,14-39,70)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(FStar.Map.t @x1
@x2)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_28a168f8d4c6d78564a214862be72b08))
:qid FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08))

:named FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=FStar.Map.fsti(42,14-42,35); use=Asm1.fst(21,0-21,34)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))
:qid Asm1_pre_typing_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))

:named Asm1_pre_typing_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,0-21,34); use=Asm1.fst(21,0-21,34)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x2
@x3)))
:qid Asm1_pre_typing_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98))

:named Asm1_pre_typing_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,0-22,27); use=Asm1.fst(22,0-22,27)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x2
@x3)))
:qid Asm1_pre_typing_Tm_arrow_9f4db3187888091a832b0a323f1b9876))

:named Asm1_pre_typing_Tm_arrow_9f4db3187888091a832b0a323f1b9876))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=FStar.Map.fsti(51,19-51,40); use=Asm1.fst(22,0-22,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))
:qid Asm1_pre_typing_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))

:named Asm1_pre_typing_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,0-20,30); use=Asm1.fst(20,0-20,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x2
@x3)))
:qid Asm1_pre_typing_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6))

:named Asm1_pre_typing_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=FStar.Map.fsti(39,14-39,35); use=Asm1.fst(20,0-20,30)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))
:qid Asm1_pre_typing_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))

:named Asm1_pre_typing_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=FStar.Map.fsti(42,14-42,35); use=Asm1.fst(21,0-21,34)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0)
(and 
;; def=FStar.Map.fsti(42,14-42,35); use=Asm1.fst(21,0-21,34)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Asm1_interpretation_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0.1))

(IsTotFun @x0)

;; def=FStar.Map.fsti(42,14-42,35); use=Asm1.fst(21,0-21,34)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Asm1_interpretation_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))
:qid Asm1_interpretation_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))

:named Asm1_interpretation_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! 
;; def=Asm1.fst(21,0-21,34); use=Asm1.fst(21,0-21,34)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x1
@x2))
(and 
;; def=Asm1.fst(21,0-21,34); use=Asm1.fst(21,0-21,34)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
(FStar.Map.t @x2
@x1))
(HasType @x4
@x2)
(HasType @x5
@x1))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
(FStar.Map.t @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid Asm1_interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98.1))

(IsTotFun @x0)

;; def=Asm1.fst(21,0-21,34); use=Asm1.fst(21,0-21,34)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(FStar.Map.t @x2
@x1))
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid Asm1_interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98.2))


;; def=Asm1.fst(21,0-21,34); use=Asm1.fst(21,0-21,34)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(FStar.Map.t @x2
@x1))
(HasType @x4
@x2))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid Asm1_interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98.3))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98 @x1
@x2)))
:qid Asm1_interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98))

:named Asm1_interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9f4db3187888091a832b0a323f1b9876
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=Asm1.fst(22,0-22,27); use=Asm1.fst(22,0-22,27)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x1
@x2))
(and 
;; def=Asm1.fst(22,0-22,27); use=Asm1.fst(22,0-22,27)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(FStar.Map.t @x2
@x1))
(HasType @x4
@x2))
(HasType (ApplyTT (ApplyTT @x0
@x3)
@x4)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid Asm1_interpretation_Tm_arrow_9f4db3187888091a832b0a323f1b9876.1))

(IsTotFun @x0)

;; def=Asm1.fst(22,0-22,27); use=Asm1.fst(22,0-22,27)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(FStar.Map.t @x2
@x1))
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid Asm1_interpretation_Tm_arrow_9f4db3187888091a832b0a323f1b9876.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x1
@x2)))
:qid Asm1_interpretation_Tm_arrow_9f4db3187888091a832b0a323f1b9876))

:named Asm1_interpretation_Tm_arrow_9f4db3187888091a832b0a323f1b9876))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! 
;; def=FStar.Map.fsti(51,19-51,40); use=Asm1.fst(22,0-22,27)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126)
(and 
;; def=FStar.Map.fsti(51,19-51,40); use=Asm1.fst(22,0-22,27)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_arrow_9f4db3187888091a832b0a323f1b9876 @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Asm1_interpretation_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126.1))

(IsTotFun @x0)

;; def=FStar.Map.fsti(51,19-51,40); use=Asm1.fst(22,0-22,27)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Asm1_interpretation_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))
:qid Asm1_interpretation_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))

:named Asm1_interpretation_Tm_arrow_9d4a2d0290cfa26edf8ed23de72a5126))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=Asm1.fst(20,0-20,30); use=Asm1.fst(20,0-20,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x1
@x2))
(and 
;; def=Asm1.fst(20,0-20,30); use=Asm1.fst(20,0-20,30)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(FStar.Map.t @x2
@x1))
(HasType @x4
@x2))
(HasType (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid Asm1_interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6.1))

(IsTotFun @x0)

;; def=Asm1.fst(20,0-20,30); use=Asm1.fst(20,0-20,30)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(FStar.Map.t @x2
@x1))
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid Asm1_interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x1
@x2)))
:qid Asm1_interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6))

:named Asm1_interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! 
;; def=FStar.Map.fsti(39,14-39,35); use=Asm1.fst(20,0-20,30)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a)
(and 
;; def=FStar.Map.fsti(39,14-39,35); use=Asm1.fst(20,0-20,30)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6 @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Asm1_interpretation_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a.1))

(IsTotFun @x0)

;; def=FStar.Map.fsti(39,14-39,35); use=Asm1.fst(20,0-20,30)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Asm1_interpretation_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))
:qid Asm1_interpretation_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))

:named Asm1_interpretation_Tm_arrow_6bba04b4885461a0e9e5b22b0a94469a))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Asm1.contains; Namespace Asm1
(assert (! (Valid (ApplyTT __uu__PartialApp
FStar.Map.contains@tok))
:named @kick_partial_app_f7dc1b87bf2b0042f4fa8d5bb3d35051))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Asm1.op_String_Access; Namespace Asm1
(assert (! (Valid (ApplyTT __uu__PartialApp
FStar.Map.sel@tok))
:named @kick_partial_app_edfe432dfa91cadec5785b1a3740ab83))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Asm1.eval_ins; Namespace Asm1
(assert (! (Valid (ApplyTT __uu__PartialApp
Asm1.contains@tok))
:named @kick_partial_app_af391b56515c5d0895cfa3c8da44ba21))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Asm1.op_String_Assignment; Namespace Asm1
(assert (! (Valid (ApplyTT __uu__PartialApp
FStar.Map.upd@tok))
:named @kick_partial_app_8a7f7b4aae27e82e9b0c2aa043fb2952))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Asm1.eval_ins; Namespace Asm1
(assert (! (Valid (ApplyTT __uu__PartialApp
Asm1.op_String_Assignment@tok))
:named @kick_partial_app_5abb6d76e88e944a60bd2ac93a855dcc))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Asm1.eval_ins; Namespace Asm1
(assert (! (Valid (ApplyTT __uu__PartialApp
Asm1.op_String_Access@tok))
:named @kick_partial_app_3309b6ac23a4869ca16bba5f0f222809))
(push) ;; push{2

; Starting query at Asm1.fst(49,2-56,5)

;;;;;;;;;;;;;;;;block : Prims.list Asm1.ins (Prims.list Asm1.ins)
(declare-fun x_bda6836a556ce650892e56d48d39de58_0 () Term)
;;;;;;;;;;;;;;;;binder_x_bda6836a556ce650892e56d48d39de58_0
;;; Fact-ids: 
(assert (! (HasType x_bda6836a556ce650892e56d48d39de58_0
(Prims.list Asm1.ins))
:named binder_x_bda6836a556ce650892e56d48d39de58_0))
;;;;;;;;;;;;;;;;s0 : Asm1.state (Asm1.state)
(declare-fun x_8d2a371ced49b74ad42c2d4f031a5095_1 () Term)
;;;;;;;;;;;;;;;;binder_x_8d2a371ced49b74ad42c2d4f031a5095_1
;;; Fact-ids: 
(assert (! (HasType x_8d2a371ced49b74ad42c2d4f031a5095_1
Asm1.state)
:named binder_x_8d2a371ced49b74ad42c2d4f031a5095_1))
(declare-fun Tm_refine_f5a1c3593f24e054e001a2c887386e1e (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_f5a1c3593f24e054e001a2c887386e1e))

:named refinement_kinding_Tm_refine_f5a1c3593f24e054e001a2c887386e1e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x2))
(and (HasTypeFuel @u0
@x1
Asm1.state)

;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)

;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(or 
;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(49,2-56,5)
(Valid 
;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(49,2-56,5)
(Prims.precedes (Prims.list Asm1.ins)
(Prims.list Asm1.ins)
@x2
x_bda6836a556ce650892e56d48d39de58_0)
)


;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(and 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(48,20-48,25)
(Valid 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(48,20-48,25)
(Prims.op_Equals_Equals_Equals (Prims.list Asm1.ins)
(Prims.list Asm1.ins)
@x2
x_bda6836a556ce650892e56d48d39de58_0)
)


;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(49,2-56,5)
(Valid 
;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(49,2-56,5)
(Prims.precedes Asm1.state
Asm1.state
@x1
x_8d2a371ced49b74ad42c2d4f031a5095_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x2)))
:qid refinement_interpretation_Tm_refine_f5a1c3593f24e054e001a2c887386e1e))

:named refinement_interpretation_Tm_refine_f5a1c3593f24e054e001a2c887386e1e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f5a1c3593f24e054e001a2c887386e1e
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x0)))
(Valid (Prims.hasEq Asm1.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x0))))
:qid haseqTm_refine_f5a1c3593f24e054e001a2c887386e1e))

:named haseqTm_refine_f5a1c3593f24e054e001a2c887386e1e))
(declare-fun Asm1.eval_block (Term Term) Term)

;;;;;;;;;;;;;;;;block: Prims.list ins -> s0: state{block << block \/ block === block /\ s0 << s0}   -> FStar.Pervasives.Native.option state
(declare-fun Tm_arrow_0a1082d06c7ac77e358d52e1c742702b () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_0a1082d06c7ac77e358d52e1c742702b
Tm_type)
:named kinding_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_0a1082d06c7ac77e358d52e1c742702b)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))
:qid Asm1_pre_typing_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))

:named Asm1_pre_typing_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_0a1082d06c7ac77e358d52e1c742702b)
(and 
;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list Asm1.ins))
(HasType @x2
(Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(FStar.Pervasives.Native.option Asm1.state)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Asm1_interpretation_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b.1))

(IsTotFun @x0)

;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(48,20-56,5)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.list Asm1.ins))
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Asm1_interpretation_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))
:qid Asm1_interpretation_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))

:named Asm1_interpretation_Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))
(declare-fun Asm1.eval_block@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Asm1.eval_block@tok
@x0)
@x1)
(Asm1.eval_block @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Asm1.eval_block@tok
@x0)
@x1))
:qid token_correspondence_Asm1.eval_block))

:named token_correspondence_Asm1.eval_block))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Asm1.eval_block@tok
Tm_arrow_0a1082d06c7ac77e358d52e1c742702b))

;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Asm1.eval_block@tok
@x1)
@x2)
(Asm1.eval_block @x1
@x2))
 

:pattern ((Asm1.eval_block @x1
@x2))
:qid function_token_typing_Asm1.eval_block.1))
)
 

:pattern ((ApplyTT @x0
Asm1.eval_block@tok))
:qid function_token_typing_Asm1.eval_block))

:named function_token_typing_Asm1.eval_block))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list Asm1.ins))
(HasType @x1
(Tm_refine_f5a1c3593f24e054e001a2c887386e1e @x0)))
(HasType (Asm1.eval_block @x0
@x1)
(FStar.Pervasives.Native.option Asm1.state)))
 

:pattern ((Asm1.eval_block @x0
@x1))
:qid typing_Asm1.eval_block))

:named typing_Asm1.eval_block))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post (FStar.Pervasives.Native.option Asm1.state)).
;   (forall (x: FStar.Pervasives.Native.option Asm1.state). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(Nil? block) /\ ~(Cons? block) ==> Prims.l_False) /\
;   (~(Nil? block) ==>
;     (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;         block == b :: b ==>
;         (forall (k: Prims.pure_post (FStar.Pervasives.Native.option Asm1.state)).
;             (forall (x: FStar.Pervasives.Native.option Asm1.state).
;                 {:pattern Prims.guard_free (k x)}
;                 Prims.auto_squash (k x)) ==>
;             (~(None? (Asm1.eval_ins b s0)) /\ ~(Some? (Asm1.eval_ins b s0)) ==> Prims.l_False) /\
;             (~(None? (Asm1.eval_ins b s0)) ==>
;               (forall (b: Asm1.state).
;                   Asm1.eval_ins b s0 == FStar.Pervasives.Native.Some b ==>
;                   b << block \/ b === block /\ b << s0)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec eval_block`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post (FStar.Pervasives.Native.option Asm1.state)))

;; def=Prims.fst(402,27-402,88); use=Asm1.fst(49,2-56,5)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Asm1.fst(49,2-56,5)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Asm1.fst(49,2-56,5)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(49,2-56,5)
(and (implies 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(49,8-49,13)
(and 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(49,8-49,13)
(not 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(49,8-49,13)
(BoxBool_proj_0 (Prims.uu___is_Nil Asm1.ins
x_bda6836a556ce650892e56d48d39de58_0))
)


;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(49,8-49,13)
(not 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(49,8-49,13)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
x_bda6836a556ce650892e56d48d39de58_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=Asm1.fst(49,2-56,5)
(not 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(49,8-49,13)
(BoxBool_proj_0 (Prims.uu___is_Nil Asm1.ins
x_bda6836a556ce650892e56d48d39de58_0))
)


;; def=Prims.fst(413,99-413,120); use=Asm1.fst(49,2-56,5)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(49,2-56,5)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Asm1.ins))

;; def=Asm1.fst(48,20-51,10); use=Asm1.fst(49,8-51,10)
(= x_bda6836a556ce650892e56d48d39de58_0
(Prims.Cons Asm1.ins
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post (FStar.Pervasives.Native.option Asm1.state)))

;; def=Prims.fst(402,27-402,88); use=Asm1.fst(49,2-56,5)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Asm1.fst(49,2-56,5)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Asm1.fst(49,2-56,5)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.5))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(49,2-56,5)
(and (implies 
;; def=Asm1.fst(53,12-53,26); use=Asm1.fst(53,12-53,26)
(and 
;; def=Asm1.fst(53,12-53,26); use=Asm1.fst(53,12-53,26)
(not 
;; def=Asm1.fst(53,12-53,26); use=Asm1.fst(53,12-53,26)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Asm1.state
(Asm1.eval_ins @x1
x_8d2a371ced49b74ad42c2d4f031a5095_1)))
)


;; def=Asm1.fst(53,12-53,26); use=Asm1.fst(53,12-53,26)
(not 
;; def=Asm1.fst(53,12-53,26); use=Asm1.fst(53,12-53,26)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some Asm1.state
(Asm1.eval_ins @x1
x_8d2a371ced49b74ad42c2d4f031a5095_1)))
)
)

label_2)
(implies 
;; def=Prims.fst(389,19-389,21); use=Asm1.fst(49,2-56,5)
(not 
;; def=Asm1.fst(53,12-53,26); use=Asm1.fst(53,12-53,26)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Asm1.state
(Asm1.eval_ins @x1
x_8d2a371ced49b74ad42c2d4f031a5095_1)))
)


;; def=Prims.fst(413,99-413,120); use=Asm1.fst(49,2-56,5)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(53,12-55,15); use=Asm1.fst(53,12-55,15)
(= (Asm1.eval_ins @x1
x_8d2a371ced49b74ad42c2d4f031a5095_1)
(FStar.Pervasives.Native.Some Asm1.state
@x4))
)

;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(55,33-55,35)
(or label_3

;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(55,33-55,35)
(Valid 
;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(55,33-55,35)
(Prims.precedes (Prims.list Asm1.ins)
(Prims.list Asm1.ins)
@x2
x_bda6836a556ce650892e56d48d39de58_0)
)


;; def=Asm1.fst(48,20-56,5); use=Asm1.fst(55,33-55,35)
(and 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(55,33-55,35)
(Valid 
;; def=Asm1.fst(48,20-48,25); use=Asm1.fst(55,33-55,35)
(Prims.op_Equals_Equals_Equals (Prims.list Asm1.ins)
(Prims.list Asm1.ins)
@x2
x_bda6836a556ce650892e56d48d39de58_0)
)


;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(55,33-55,35)
(Valid 
;; def=Asm1.fst(49,2-56,5); use=Asm1.fst(55,33-55,35)
(Prims.precedes Asm1.state
Asm1.state
@x4
x_8d2a371ced49b74ad42c2d4f031a5095_1)
)
)
)
)
 
;;no pats
:qid @query.6))
))
)
 
;;no pats
:qid @query.4)))
 
;;no pats
:qid @query.3))
)
 
;;no pats
:qid @query.2))
))
)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.eval_block, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_8d2a371ced49b74ad42c2d4f031a5095_1, binder_x_bda6836a556ce650892e56d48d39de58_0, disc_equation_Prims.Cons, disc_equation_Prims.Nil, fuel_guarded_inversion_Asm1.state, fuel_guarded_inversion_Prims.list, kinding_Asm1.state@tok, lemma_FStar.Pervasives.invertOption, projection_inverse_BoxBool_proj_0, projection_inverse_Prims.Cons_tl, subterm_ordering_Prims.Cons, typing_Asm1.eval_ins

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec eval_block


; <Start encoding let rec eval_block>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun Asm1.eval_block.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun Asm1.eval_block.fuel_instrumented_token () Term)
(declare-fun Asm1.eval_block (Term Term) Term)
(declare-fun Asm1.eval_block@tok () Term)
;;;;;;;;;;;;;;;;block: Prims.list ins -> s0: state -> FStar.Pervasives.Native.option state
(declare-fun Tm_arrow_69b353a064593100782d51bd49406ad7 () Term)

; </end encoding let rec eval_block>


; encoding sigelt let valid_state


; <Start encoding let valid_state>

(declare-fun Asm1.valid_state (Term) Term)
;;;;;;;;;;;;;;;;s: state -> Prims.bool
(declare-fun Tm_arrow_fbe0747ad6ee9cce7c836d1268e57cf4 () Term)
(declare-fun Asm1.valid_state@tok () Term)





; </end encoding let valid_state>


; encoding sigelt let valid_reg


; <Start encoding let valid_reg>

(declare-fun Asm1.valid_reg (Term) Term)
;;;;;;;;;;;;;;;;r: reg -> Prims.bool
(declare-fun Tm_arrow_750fa7d9dcd29fc13c4014b24675fd2d () Term)
(declare-fun Asm1.valid_reg@tok () Term)

; </end encoding let valid_reg>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.valid_state; Namespace Asm1
(assert (! 
;; def=Asm1.fst(60,4-60,15); use=Asm1.fst(60,4-60,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Asm1.state)
(HasType (Asm1.valid_state @x0)
Prims.bool))
 

:pattern ((Asm1.valid_state @x0))
:qid typing_Asm1.valid_state))

:named typing_Asm1.valid_state))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.valid_reg; Namespace Asm1
(assert (! 
;; def=Asm1.fst(63,4-63,13); use=Asm1.fst(63,4-63,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(Asm1.reg Dummy_value))
(HasType (Asm1.valid_reg @x0)
Prims.bool))
 

:pattern ((Asm1.valid_reg @x0))
:qid typing_Asm1.valid_reg))

:named typing_Asm1.valid_reg))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.eval_block; Namespace Asm1
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list Asm1.ins))
(HasType @x1
Asm1.state))
(HasType (Asm1.eval_block @x0
@x1)
(FStar.Pervasives.Native.option Asm1.state)))
 

:pattern ((Asm1.eval_block @x0
@x1))
:qid typing_Asm1.eval_block))

:named typing_Asm1.eval_block))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,5-59,11); use=FStar.Pervasives.Native.fst(59,5-59,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT FStar.Pervasives.Native.tuple2@tok
@x0)
@x1)
(FStar.Pervasives.Native.tuple2 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT FStar.Pervasives.Native.tuple2@tok
@x0)
@x1))

:pattern ((FStar.Pervasives.Native.tuple2 @x0
@x1))
:qid token_correspondence_FStar.Pervasives.Native.tuple2@tok))

:named token_correspondence_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name Asm1.eval_block; Namespace Asm1
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list Asm1.ins))
(HasType @x2
Asm1.state))
(HasType (Asm1.eval_block.fuel_instrumented @u0
@x1
@x2)
(FStar.Pervasives.Native.option Asm1.state)))
 

:pattern ((Asm1.eval_block.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_Asm1.eval_block.fuel_instrumented))

:named token_correspondence_Asm1.eval_block.fuel_instrumented))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)
(FStar.Pervasives.Native.tuple2 @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)
(FStar.Pervasives.Native.tuple2 @x5
@x6)))
:qid subterm_ordering_FStar.Pervasives.Native.Mktuple2))

:named subterm_ordering_FStar.Pervasives.Native.Mktuple2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Pervasives.Native.Mktuple2__b (FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Pervasives.Native.Mktuple2__b))

:named projection_inverse_FStar.Pervasives.Native.Mktuple2__b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Pervasives.Native.Mktuple2__a (FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Pervasives.Native.Mktuple2__a))

:named projection_inverse_FStar.Pervasives.Native.Mktuple2__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Pervasives.Native.Mktuple2__2 (FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Pervasives.Native.Mktuple2__2))

:named projection_inverse_FStar.Pervasives.Native.Mktuple2__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Pervasives.Native.Mktuple2__1 (FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Pervasives.Native.Mktuple2__1))

:named projection_inverse_FStar.Pervasives.Native.Mktuple2__1))
;;; Fact-ids: Name Prims.op_LessThanOrEqual; Namespace Prims
(assert (! 
;; def=Prims.fst(564,4-564,22); use=Prims.fst(564,4-564,22)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_LessThanOrEqual @x0
@x1)
(BoxBool (<= (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_LessThanOrEqual @x0
@x1))
:qid primitive_Prims.op_LessThanOrEqual))

:named primitive_Prims.op_LessThanOrEqual))
;;; Fact-ids: Name Prims.op_LessThan; Namespace Prims
(assert (! 
;; def=Prims.fst(582,4-582,15); use=Prims.fst(582,4-582,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_LessThan @x0
@x1)
(BoxBool (< (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_LessThan @x0
@x1))
:qid primitive_Prims.op_LessThan))

:named primitive_Prims.op_LessThan))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (and (IsTotFun FStar.Pervasives.Native.tuple2@tok)

;; def=FStar.Pervasives.Native.fst(59,5-59,11); use=FStar.Pervasives.Native.fst(59,5-59,11)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT FStar.Pervasives.Native.tuple2@tok
@x0))
 

:pattern ((ApplyTT FStar.Pervasives.Native.tuple2@tok
@x0))
:qid kinding_FStar.Pervasives.Native.tuple2@tok))


;; def=FStar.Pervasives.Native.fst(59,5-59,11); use=FStar.Pervasives.Native.fst(59,5-59,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (FStar.Pervasives.Native.tuple2 @x0
@x1)
Tm_type))
 

:pattern ((FStar.Pervasives.Native.tuple2 @x0
@x1))
:qid kinding_FStar.Pervasives.Native.tuple2@tok.1))
)
:named kinding_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,5-59,11); use=FStar.Pervasives.Native.fst(59,5-59,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 @x2
@x3))
(and (is-FStar.Pervasives.Native.Mktuple2 @x1)
(= @x2
(FStar.Pervasives.Native.Mktuple2__a @x1))
(= @x3
(FStar.Pervasives.Native.Mktuple2__b @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 @x2
@x3)))
:qid fuel_guarded_inversion_FStar.Pervasives.Native.tuple2))

:named fuel_guarded_inversion_FStar.Pervasives.Native.tuple2))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (= 126
(Term_constr_id FStar.Pervasives.Native.tuple2@tok))
:named fresh_token_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: Asm1.eval_block
;;; Fact-ids: Name Asm1.eval_block; Namespace Asm1
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list Asm1.ins))
(HasType @x2
Asm1.state))
(= (Asm1.eval_block.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-Prims.Nil @lb3)
(FStar.Pervasives.Native.Some Asm1.state
@x2)
(ite (is-Prims.Cons @lb3)
(let ((@lb4 (Asm1.eval_ins (Prims.Cons_hd @lb3)
@x2)))
(ite (is-FStar.Pervasives.Native.None @lb4)
(FStar.Pervasives.Native.None Asm1.state)
(ite (is-FStar.Pervasives.Native.Some @lb4)
(Asm1.eval_block.fuel_instrumented @u0
(Prims.Cons_tl @lb3)
(FStar.Pervasives.Native.Some_v @lb4))
Tm_unit)))
Tm_unit)))))
 :weight 0


:pattern ((Asm1.eval_block.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_Asm1.eval_block.fuel_instrumented))

:named equation_with_fuel_Asm1.eval_block.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for Asm1.valid_state
;;; Fact-ids: Name Asm1.valid_state; Namespace Asm1
(assert (! 
;; def=Asm1.fst(60,4-60,15); use=Asm1.fst(60,4-60,15)
(forall ((@x0 Term))
 (! (= (Asm1.valid_state @x0)
(Prims.op_AmpAmp (Prims.op_AmpAmp (Prims.op_AmpAmp (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 0))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 1)))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 2)))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3))))
 

:pattern ((Asm1.valid_state @x0))
:qid equation_Asm1.valid_state))

:named equation_Asm1.valid_state))
;;;;;;;;;;;;;;;;Equation for Asm1.valid_reg
;;; Fact-ids: Name Asm1.valid_reg; Namespace Asm1
(assert (! 
;; def=Asm1.fst(63,4-63,13); use=Asm1.fst(63,4-63,13)
(forall ((@x0 Term))
 (! (= (Asm1.valid_reg @x0)
(Prims.op_AmpAmp (Prims.op_LessThanOrEqual (BoxInt 0)
@x0)
(Prims.op_LessThan @x0
(BoxInt 4))))
 

:pattern ((Asm1.valid_reg @x0))
:qid equation_Asm1.valid_reg))

:named equation_Asm1.valid_reg))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
@x1)
(HasTypeFuel @u0
@x4
@x2))
(HasTypeFuel @u0
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)
(FStar.Pervasives.Native.tuple2 @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)
(FStar.Pervasives.Native.tuple2 @x1
@x2)))
:qid data_typing_intro_FStar.Pervasives.Native.Mktuple2@tok))

:named data_typing_intro_FStar.Pervasives.Native.Mktuple2@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)
(FStar.Pervasives.Native.tuple2 @x5
@x6))
(and (HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x3
@x5)
(HasTypeFuel @u0
@x4
@x6)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Native.Mktuple2 @x1
@x2
@x3
@x4)
(FStar.Pervasives.Native.tuple2 @x5
@x6)))
:qid data_elim_FStar.Pervasives.Native.Mktuple2))

:named data_elim_FStar.Pervasives.Native.Mktuple2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,5-59,11); use=FStar.Pervasives.Native.fst(59,5-59,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 125
(Term_constr_id (FStar.Pervasives.Native.tuple2 @x0
@x1)))
 

:pattern ((FStar.Pervasives.Native.tuple2 @x0
@x1))
:qid constructor_distinct_FStar.Pervasives.Native.tuple2))

:named constructor_distinct_FStar.Pervasives.Native.tuple2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,22-59,30); use=FStar.Pervasives.Native.fst(59,22-59,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 132
(Term_constr_id (FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3)))
 

:pattern ((FStar.Pervasives.Native.Mktuple2 @x0
@x1
@x2
@x3))
:qid constructor_distinct_FStar.Pervasives.Native.Mktuple2))

:named constructor_distinct_FStar.Pervasives.Native.Mktuple2))
;;;;;;;;;;;;;;;;Assumption: FStar.Pervasives.Native.tuple2__uu___haseq
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2__uu___haseq; Namespace FStar.Pervasives.Native
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(Valid (Prims.hasEq @x0))
(Valid (Prims.hasEq @x1)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
@x1))))
 

:pattern ((Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
@x1)))
:qid assumption_FStar.Pervasives.Native.tuple2__uu___haseq))
:named assumption_FStar.Pervasives.Native.tuple2__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,5-59,11); use=FStar.Pervasives.Native.fst(59,5-59,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Pervasives.Native.tuple2 @x2
@x3))
(= (FStar.Pervasives.Native.tuple2 @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Pervasives.Native.tuple2 @x2
@x3)))
:qid FStar.Pervasives.Native_pretyping_4894c30cf477acf9a27e7a844279eb08))

:named FStar.Pervasives.Native_pretyping_4894c30cf477acf9a27e7a844279eb08))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name Asm1.eval_block; Namespace Asm1
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (Asm1.eval_block.fuel_instrumented (SFuel @u0)
@x1
@x2)
(Asm1.eval_block.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((Asm1.eval_block.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_Asm1.eval_block.fuel_instrumented))

:named @fuel_irrelevance_Asm1.eval_block.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name Asm1.eval_block; Namespace Asm1
(assert (! 
;; def=Asm1.fst(48,8-48,18); use=Asm1.fst(48,8-48,18)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.eval_block @x0
@x1)
(Asm1.eval_block.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((Asm1.eval_block @x0
@x1))
:qid @fuel_correspondence_Asm1.eval_block.fuel_instrumented))

:named @fuel_correspondence_Asm1.eval_block.fuel_instrumented))
(push) ;; push{2

; Starting query at Asm1.fst(79,85-82,10)

(declare-fun label_13 () Bool)
(declare-fun label_12 () Bool)
(declare-fun label_11 () Bool)
(declare-fun label_10 () Bool)
(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


(declare-fun Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(65,29-70,68); use=Asm1.fst(65,29-70,68)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))

:named refinement_kinding_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(65,29-70,68); use=Asm1.fst(65,29-70,68)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x2))
(and (HasTypeFuel @u0
@x1
Asm1.state)

;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(66,8-66,24)
(BoxBool_proj_0 (Asm1.valid_state @x1))

(let ((@lb3 @x2))
(ite (and (is-Prims.Cons @lb3)
(is-Asm1.ILoad (Prims.Cons_hd @lb3)))

;; def=Asm1.fst(68,12-70,52); use=Asm1.fst(68,12-70,52)
(and 
;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(68,12-68,25)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lDst (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(69,12-69,25)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lSrc (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(70,12-70,52)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lSrc (Prims.Cons_hd @lb3))))
(BoxInt_proj_0 (Asm1.ILoad_lOffset (Prims.Cons_hd @lb3)))))))
)


;; def=Asm1.fst(70,60-70,65); use=Asm1.fst(70,60-70,65)
false
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x2)))
:qid refinement_interpretation_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))

:named refinement_interpretation_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(65,29-70,68); use=Asm1.fst(65,29-70,68)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)))
(Valid (Prims.hasEq Asm1.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0))))
:qid haseqTm_refine_4e80bd4cb4381dd7b404ae8d87d55810))

:named haseqTm_refine_4e80bd4cb4381dd7b404ae8d87d55810))




; Encoding query formula : forall (b0: Prims.list Asm1.ins)
;   (s0:
;   Asm1.state
;     { Asm1.valid_state s0 /\
;       (match b0 with
;         | Asm1.ILoad dst src offset :: _ ->
;           Asm1.valid_reg dst /\ Asm1.valid_reg src /\
;           Asm1.contains s0.mem (s0.regs.[ src ] + offset)
;         | _ -> Prims.l_False) }).
;   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;       b1_s1 == (b, b) ==>
;       (~(Cons? b0) ==> Prims.l_False) /\
;       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins). b0 == b :: b ==> ~(ILoad? b) ==> Prims.l_False
;       )) /\
;   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;       b1_s1 == (b, b) ==>
;       (~(Cons? b0) ==> Prims.l_False) /\
;       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins). b0 == b :: b ==> ~(ILoad? b) ==> Prims.l_False
;       )) /\
;   ((~(Cons? b0) ==> Prims.l_False) /\
;   (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;       b0 == b :: b ==>
;       (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;           b1_s1 == (b, b) ==>
;           (~(Cons? b0) ==> Prims.l_False) /\
;           (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;               b0 == b :: b ==> ~(ILoad? b) ==> Prims.l_False)) /\
;       (~(Some? (Asm1.eval_ins b s0)) ==> Prims.l_False) /\
;       (forall (b: Asm1.state).
;           Asm1.eval_ins b s0 == FStar.Pervasives.Native.Some b ==>
;           Prims.auto_squash (let i :: _ = b0 in
;               (let Asm1.ILoad dst src offset = i in
;                 b0 == i :: b /\ Asm1.valid_state b /\
;                 FStar.Pervasives.Native.Some b == Asm1.eval_ins i s0 /\
;                 Asm1.eval_block b0 s0 == Asm1.eval_block b b /\
;                 b == Asm1.Mkstate (s0.regs.[ dst ] <- s0.mem.[ s0.regs.[ src ] + offset ]) s0.mem)
;               <:
;               Type0))))


; Context: While encoding a query
; While typechecking the top-level declaration `let lemma_load`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list Asm1.ins))
(HasType @x1
(Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)))

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(71,6-82,10)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(79,85-82,10)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x3
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(72,9-72,15); use=Asm1.fst(79,85-82,10)
(= @x2
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(79,85-82,10)
(and (implies 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(79,85-82,10)
(not 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(79,85-82,10)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.list Asm1.ins))

;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(79,85-82,10)
(= @x0
(Prims.Cons Asm1.ins
@x5
@x6))


;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(79,85-82,10)
(not 
;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(79,85-82,10)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x5))
)
)
label_2)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))


;; def=dummy(0,0-0,0); use=Asm1.fst(79,85-82,10)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x3
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(72,9-72,15); use=Asm1.fst(79,85-82,10)
(= @x2
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(79,85-82,10)
(and (implies 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(79,85-82,10)
(not 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(79,85-82,10)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_3)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.list Asm1.ins))

;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(79,85-82,10)
(= @x0
(Prims.Cons Asm1.ins
@x5
@x6))


;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(79,85-82,10)
(not 
;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(79,85-82,10)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x5))
)
)
label_4)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.7))
)
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))

(implies 
;; def=Asm1.fst(80,6-80,15); use=Asm1.fst(80,6-80,15)
(not 
;; def=Asm1.fst(80,6-80,15); use=Asm1.fst(80,6-80,15)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_5)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.list Asm1.ins))

;; def=Asm1.fst(80,6-80,15); use=Asm1.fst(80,6-80,15)
(= @x0
(Prims.Cons Asm1.ins
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(79,85-82,10)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(80,23-82,10)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x5
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(80,23-82,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Asm1.state)

;; def=Asm1.fst(72,9-72,15); use=Asm1.fst(80,23-82,10)
(= @x4
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x5
@x6))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(80,23-82,10)
(and (implies 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(80,23-82,10)
(not 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(80,23-82,10)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_6)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(80,23-82,10)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(80,23-82,10)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.list Asm1.ins))

;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(80,23-82,10)
(= @x0
(Prims.Cons Asm1.ins
@x7
@x8))


;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(80,23-82,10)
(not 
;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(80,23-82,10)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x7))
)
)
label_7)
 
;;no pats
:qid @query.14))
)
 
;;no pats
:qid @query.13))
)
)
 
;;no pats
:qid @query.12))
)
 
;;no pats
:qid @query.11))

(implies 
;; def=Asm1.fst(81,6-81,13); use=Asm1.fst(81,6-81,13)
(not 
;; def=Asm1.fst(81,6-81,13); use=Asm1.fst(81,6-81,13)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some Asm1.state
(Asm1.eval_ins @x2
@x1)))
)

label_8)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(79,85-82,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(81,6-81,13); use=Asm1.fst(81,6-81,13)
(= (Asm1.eval_ins @x2
@x1)
(FStar.Pervasives.Native.Some Asm1.state
@x4))
)
(let ((@lb5 @x0))
(ite (is-Prims.Cons @lb5)
(let ((@lb6 (Prims.Cons_hd @lb5)))
(ite (is-Asm1.ILoad @lb6)

;; def=Asm1.fst(75,8-79,81); use=Asm1.fst(82,2-82,10)
(and 
;; def=Asm1.fst(75,8-75,19); use=Asm1.fst(82,2-82,10)
(or label_9

;; def=Asm1.fst(75,8-75,19); use=Asm1.fst(82,2-82,10)
(= @x0
(Prims.Cons Asm1.ins
(Prims.Cons_hd @lb5)
@x3))
)


;; def=Asm1.fst(76,8-76,22); use=Asm1.fst(82,2-82,10)
(or label_10

;; def=Asm1.fst(76,8-76,22); use=Asm1.fst(82,2-82,10)
(BoxBool_proj_0 (Asm1.valid_state @x4))
)


;; def=Asm1.fst(77,8-77,32); use=Asm1.fst(82,2-82,10)
(or label_11

;; def=Asm1.fst(77,8-77,32); use=Asm1.fst(82,2-82,10)
(= (FStar.Pervasives.Native.Some Asm1.state
@x4)
(Asm1.eval_ins (Prims.Cons_hd @lb5)
@x1))
)


;; def=Asm1.fst(78,8-78,44); use=Asm1.fst(82,2-82,10)
(or label_12

;; def=Asm1.fst(78,8-78,44); use=Asm1.fst(82,2-82,10)
(= (Asm1.eval_block @x0
@x1)
(Asm1.eval_block @x3
@x4))
)


;; def=Asm1.fst(79,8-79,81); use=Asm1.fst(82,2-82,10)
(or label_13

;; def=Asm1.fst(79,8-79,81); use=Asm1.fst(82,2-82,10)
(= @x4
(Asm1.Mkstate (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lDst @lb6))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lSrc @lb6)))
(BoxInt_proj_0 (Asm1.ILoad_lOffset @lb6))))))
(Asm1.__proj__Mkstate__item__mem @x1)))
)
)

Unreachable))
Unreachable)))
 
;;no pats
:qid @query.15))
)
)
 
;;no pats
:qid @query.10))
)
 
;;no pats
:qid @query.9))
)
)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_13")
(eval label_13)
(echo "label_12")
(eval label_12)
(echo "label_11")
(eval label_11)
(echo "label_10")
(eval label_10)
(echo "label_9")
(eval label_9)
(echo "label_8")
(eval label_8)
(echo "label_7")
(eval label_7)
(echo "label_6")
(eval label_6)
(echo "label_5")
(eval label_5)
(echo "label_4")
(eval label_4)
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.lemma_load, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_Asm1.eval_block.fuel_instrumented, @fuel_irrelevance_Asm1.eval_block.fuel_instrumented, @query, Asm1_interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6, Asm1_pretyping_8d2a371ced49b74ad42c2d4f031a5095, Asm1_pretyping_bc9c2f1fd95279caaea3a34bcc039124, FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d, Prims_pretyping_ae567c2fb75be05905677af440075565, bool_inversion, bool_typing, constructor_distinct_FStar.Pervasives.Native.None, constructor_distinct_FStar.Pervasives.Native.Some, data_elim_Asm1.ILoad, data_elim_Prims.Cons, disc_equation_Asm1.ILoad, disc_equation_FStar.Pervasives.Native.None, disc_equation_FStar.Pervasives.Native.Some, disc_equation_Prims.Cons, equation_Asm1.contains, equation_Asm1.eval_ins, equation_Asm1.map, equation_Asm1.op_String_Assignment, equation_Asm1.reg, equation_Asm1.valid_reg, equation_Asm1.valid_state, equation_Prims.eqtype, equation_with_fuel_Asm1.eval_block.fuel_instrumented, fuel_guarded_inversion_Asm1.state, function_token_typing_FStar.Map.contains, function_token_typing_Prims.__cache_version_number__, int_inversion, int_typing, kinding_Asm1.state@tok, lemma_FStar.Map.lemma_InDomUpd1, lemma_FStar.Pervasives.invertOption, primitive_Prims.op_AmpAmp, primitive_Prims.op_BarBar, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, proj_equation_Asm1.Mkstate_mem, proj_equation_Asm1.Mkstate_regs, projection_inverse_Asm1.Mkstate_regs, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Some_a, projection_inverse_FStar.Pervasives.Native.Some_v, projection_inverse_Prims.Cons_a, projection_inverse_Prims.Cons_hd, projection_inverse_Prims.Cons_tl, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810, token_correspondence_Asm1.contains, token_correspondence_Asm1.op_String_Access, token_correspondence_Asm1.op_String_Assignment, token_correspondence_FStar.Map.contains, token_correspondence_FStar.Map.upd, typing_Asm1.__proj__Mkstate__item__mem, typing_Asm1.__proj__Mkstate__item__regs, typing_Asm1.eval_ins, typing_Asm1.op_String_Access, typing_Asm1.valid_state, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let lemma_load


; <Start encoding let lemma_load>



(declare-fun Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 (Term) Term)
(declare-fun Asm1.lemma_load (Term Term) Term)






(declare-fun Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 (Term Term) Term)
;;;;;;;;;;;;;;;;b0: Prims.list ins ->     s0:       state         { valid_state s0 /\           (match b0 with             | Asm1.ILoad dst src offset :: _ ->               valid_reg dst /\ valid_reg src /\ contains s0.mem (s0.regs.[ src ] + offset)             | _ -> Prims.l_False) }   -> b1_s1:     (Prims.list ins & state)       { (let b1, s1 = b1_s1 in           (let i :: _ = b0 in             (let Asm1.ILoad dst src offset = i in               b0 == i :: b1 /\ valid_state s1 /\ FStar.Pervasives.Native.Some s1 == eval_ins i s0 /\               eval_block b0 s0 == eval_block b1 s1 /\               s1 == Mkstate (s0.regs.[ dst ] <- s0.mem.[ s0.regs.[ src ] + offset ]) s0.mem)             <:             Type)           <:           Type)         <:         Type }
(declare-fun Tm_arrow_53a60eefc4327ab6ad99ced93cda2846 () Term)
(declare-fun Asm1.lemma_load@tok () Term)








; </end encoding let lemma_load>

(push) ;; push{2

; Starting query at Asm1.fst(98,84-101,10)

(declare-fun label_13 () Bool)
(declare-fun label_12 () Bool)
(declare-fun label_11 () Bool)
(declare-fun label_10 () Bool)
(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


(declare-fun Tm_refine_48243b13481161358a87b188b1c7a1bb (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(84,30-89,67); use=Asm1.fst(84,30-89,67)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_48243b13481161358a87b188b1c7a1bb))

:named refinement_kinding_Tm_refine_48243b13481161358a87b188b1c7a1bb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(84,30-89,67); use=Asm1.fst(84,30-89,67)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_48243b13481161358a87b188b1c7a1bb @x2))
(and (HasTypeFuel @u0
@x1
Asm1.state)

;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(85,8-85,24)
(BoxBool_proj_0 (Asm1.valid_state @x1))

(let ((@lb3 @x2))
(ite (and (is-Prims.Cons @lb3)
(is-Asm1.IStore (Prims.Cons_hd @lb3)))

;; def=Asm1.fst(87,11-89,51); use=Asm1.fst(87,11-89,51)
(and 
;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(87,11-87,24)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sDst (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(88,11-88,24)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sSrc (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(89,11-89,51)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sDst (Prims.Cons_hd @lb3))))
(BoxInt_proj_0 (Asm1.IStore_sOffset (Prims.Cons_hd @lb3)))))))
)


;; def=Asm1.fst(89,59-89,64); use=Asm1.fst(89,59-89,64)
false
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_48243b13481161358a87b188b1c7a1bb @x2)))
:qid refinement_interpretation_Tm_refine_48243b13481161358a87b188b1c7a1bb))

:named refinement_interpretation_Tm_refine_48243b13481161358a87b188b1c7a1bb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_48243b13481161358a87b188b1c7a1bb
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(84,30-89,67); use=Asm1.fst(84,30-89,67)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)))
(Valid (Prims.hasEq Asm1.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0))))
:qid haseqTm_refine_48243b13481161358a87b188b1c7a1bb))

:named haseqTm_refine_48243b13481161358a87b188b1c7a1bb))




; Encoding query formula : forall (b0: Prims.list Asm1.ins)
;   (s0:
;   Asm1.state
;     { Asm1.valid_state s0 /\
;       (match b0 with
;         | Asm1.IStore dst offset src :: _ ->
;           Asm1.valid_reg dst /\ Asm1.valid_reg src /\
;           Asm1.contains s0.mem (s0.regs.[ dst ] + offset)
;         | _ -> Prims.l_False) }).
;   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;       b1_s1 == (b, b) ==>
;       (~(Cons? b0) ==> Prims.l_False) /\
;       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;           b0 == b :: b ==> ~(IStore? b) ==> Prims.l_False)) /\
;   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;       b1_s1 == (b, b) ==>
;       (~(Cons? b0) ==> Prims.l_False) /\
;       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;           b0 == b :: b ==> ~(IStore? b) ==> Prims.l_False)) /\
;   ((~(Cons? b0) ==> Prims.l_False) /\
;   (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;       b0 == b :: b ==>
;       (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;           b1_s1 == (b, b) ==>
;           (~(Cons? b0) ==> Prims.l_False) /\
;           (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;               b0 == b :: b ==> ~(IStore? b) ==> Prims.l_False)) /\
;       (~(Some? (Asm1.eval_ins b s0)) ==> Prims.l_False) /\
;       (forall (b: Asm1.state).
;           Asm1.eval_ins b s0 == FStar.Pervasives.Native.Some b ==>
;           Prims.auto_squash (let i :: _ = b0 in
;               (let Asm1.IStore dst offset src = i in
;                 b0 == i :: b /\ Asm1.valid_state b /\
;                 FStar.Pervasives.Native.Some b == Asm1.eval_ins i s0 /\
;                 Asm1.eval_block b0 s0 == Asm1.eval_block b b /\
;                 b == Asm1.Mkstate s0.regs (s0.mem.[ s0.regs.[ dst ] + offset ] <- s0.regs.[ src ]))
;               <:
;               Type0))))


; Context: While encoding a query
; While typechecking the top-level declaration `let lemma_store`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list Asm1.ins))
(HasType @x1
(Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)))

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(90,6-101,10)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(98,84-101,10)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x3
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(91,9-91,15); use=Asm1.fst(98,84-101,10)
(= @x2
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(98,84-101,10)
(and (implies 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(98,84-101,10)
(not 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(98,84-101,10)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.list Asm1.ins))

;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(98,84-101,10)
(= @x0
(Prims.Cons Asm1.ins
@x5
@x6))


;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(98,84-101,10)
(not 
;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(98,84-101,10)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x5))
)
)
label_2)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))


;; def=dummy(0,0-0,0); use=Asm1.fst(98,84-101,10)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x3
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(91,9-91,15); use=Asm1.fst(98,84-101,10)
(= @x2
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(98,84-101,10)
(and (implies 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(98,84-101,10)
(not 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(98,84-101,10)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_3)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.list Asm1.ins))

;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(98,84-101,10)
(= @x0
(Prims.Cons Asm1.ins
@x5
@x6))


;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(98,84-101,10)
(not 
;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(98,84-101,10)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x5))
)
)
label_4)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.7))
)
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))

(implies 
;; def=Asm1.fst(99,6-99,15); use=Asm1.fst(99,6-99,15)
(not 
;; def=Asm1.fst(99,6-99,15); use=Asm1.fst(99,6-99,15)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_5)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.list Asm1.ins))

;; def=Asm1.fst(99,6-99,15); use=Asm1.fst(99,6-99,15)
(= @x0
(Prims.Cons Asm1.ins
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(98,84-101,10)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(99,23-101,10)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x5
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(99,23-101,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Asm1.state)

;; def=Asm1.fst(91,9-91,15); use=Asm1.fst(99,23-101,10)
(= @x4
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x5
@x6))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(99,23-101,10)
(and (implies 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(99,23-101,10)
(not 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(99,23-101,10)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x0))
)

label_6)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(99,23-101,10)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(99,23-101,10)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.list Asm1.ins))

;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(99,23-101,10)
(= @x0
(Prims.Cons Asm1.ins
@x7
@x8))


;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(99,23-101,10)
(not 
;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(99,23-101,10)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x7))
)
)
label_7)
 
;;no pats
:qid @query.14))
)
 
;;no pats
:qid @query.13))
)
)
 
;;no pats
:qid @query.12))
)
 
;;no pats
:qid @query.11))

(implies 
;; def=Asm1.fst(100,6-100,13); use=Asm1.fst(100,6-100,13)
(not 
;; def=Asm1.fst(100,6-100,13); use=Asm1.fst(100,6-100,13)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some Asm1.state
(Asm1.eval_ins @x2
@x1)))
)

label_8)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(98,84-101,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Asm1.state)

;; def=Asm1.fst(100,6-100,13); use=Asm1.fst(100,6-100,13)
(= (Asm1.eval_ins @x2
@x1)
(FStar.Pervasives.Native.Some Asm1.state
@x4))
)
(let ((@lb5 @x0))
(ite (is-Prims.Cons @lb5)
(let ((@lb6 (Prims.Cons_hd @lb5)))
(ite (is-Asm1.IStore @lb6)

;; def=Asm1.fst(94,8-98,80); use=Asm1.fst(101,2-101,10)
(and 
;; def=Asm1.fst(94,8-94,19); use=Asm1.fst(101,2-101,10)
(or label_9

;; def=Asm1.fst(94,8-94,19); use=Asm1.fst(101,2-101,10)
(= @x0
(Prims.Cons Asm1.ins
(Prims.Cons_hd @lb5)
@x3))
)


;; def=Asm1.fst(95,8-95,22); use=Asm1.fst(101,2-101,10)
(or label_10

;; def=Asm1.fst(95,8-95,22); use=Asm1.fst(101,2-101,10)
(BoxBool_proj_0 (Asm1.valid_state @x4))
)


;; def=Asm1.fst(96,8-96,32); use=Asm1.fst(101,2-101,10)
(or label_11

;; def=Asm1.fst(96,8-96,32); use=Asm1.fst(101,2-101,10)
(= (FStar.Pervasives.Native.Some Asm1.state
@x4)
(Asm1.eval_ins (Prims.Cons_hd @lb5)
@x1))
)


;; def=Asm1.fst(97,8-97,44); use=Asm1.fst(101,2-101,10)
(or label_12

;; def=Asm1.fst(97,8-97,44); use=Asm1.fst(101,2-101,10)
(= (Asm1.eval_block @x0
@x1)
(Asm1.eval_block @x3
@x4))
)


;; def=Asm1.fst(98,8-98,80); use=Asm1.fst(101,2-101,10)
(or label_13

;; def=Asm1.fst(98,8-98,80); use=Asm1.fst(101,2-101,10)
(= @x4
(Asm1.Mkstate (Asm1.__proj__Mkstate__item__regs @x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sDst @lb6)))
(BoxInt_proj_0 (Asm1.IStore_sOffset @lb6)))))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sSrc @lb6)))))
)
)

Unreachable))
Unreachable)))
 
;;no pats
:qid @query.15))
)
)
 
;;no pats
:qid @query.10))
)
 
;;no pats
:qid @query.9))
)
)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_13")
(eval label_13)
(echo "label_12")
(eval label_12)
(echo "label_11")
(eval label_11)
(echo "label_10")
(eval label_10)
(echo "label_9")
(eval label_9)
(echo "label_8")
(eval label_8)
(echo "label_7")
(eval label_7)
(echo "label_6")
(eval label_6)
(echo "label_5")
(eval label_5)
(echo "label_4")
(eval label_4)
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.lemma_store, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_Asm1.eval_block.fuel_instrumented, @fuel_irrelevance_Asm1.eval_block.fuel_instrumented, @query, Asm1_pretyping_8d2a371ced49b74ad42c2d4f031a5095, Asm1_pretyping_bc9c2f1fd95279caaea3a34bcc039124, FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d, Prims_pretyping_ae567c2fb75be05905677af440075565, bool_inversion, bool_typing, constructor_distinct_FStar.Pervasives.Native.None, constructor_distinct_FStar.Pervasives.Native.Some, data_elim_Asm1.IStore, data_elim_Prims.Cons, disc_equation_Asm1.IStore, disc_equation_FStar.Pervasives.Native.Some, disc_equation_Prims.Cons, equation_Asm1.contains, equation_Asm1.eval_ins, equation_Asm1.map, equation_Asm1.reg, equation_Asm1.valid_reg, equation_Asm1.valid_state, equation_Prims.eqtype, equation_with_fuel_Asm1.eval_block.fuel_instrumented, fuel_guarded_inversion_Asm1.state, fuel_guarded_inversion_Prims.list, function_token_typing_FStar.Map.contains, function_token_typing_Prims.__cache_version_number__, int_inversion, int_typing, primitive_Prims.op_AmpAmp, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, proj_equation_Asm1.Mkstate_mem, proj_equation_Asm1.Mkstate_regs, projection_inverse_Asm1.Mkstate_regs, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Some_a, projection_inverse_FStar.Pervasives.Native.Some_v, projection_inverse_Prims.Cons_hd, projection_inverse_Prims.Cons_tl, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_48243b13481161358a87b188b1c7a1bb, token_correspondence_Asm1.contains, token_correspondence_FStar.Map.contains, typing_Asm1.__proj__Mkstate__item__mem, typing_Asm1.__proj__Mkstate__item__regs, typing_Asm1.valid_state, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let lemma_store


; <Start encoding let lemma_store>



(declare-fun Tm_refine_48243b13481161358a87b188b1c7a1bb (Term) Term)
(declare-fun Asm1.lemma_store (Term Term) Term)






(declare-fun Tm_refine_2d0e4143b34a89d925e715c163c112f4 (Term Term) Term)
;;;;;;;;;;;;;;;;b0: Prims.list ins ->     s0:       state         { valid_state s0 /\           (match b0 with             | Asm1.IStore dst offset src :: _ ->               valid_reg dst /\ valid_reg src /\ contains s0.mem (s0.regs.[ dst ] + offset)             | _ -> Prims.l_False) }   -> b1_s1:     (Prims.list ins & state)       { (let b1, s1 = b1_s1 in           (let i :: _ = b0 in             (let Asm1.IStore dst offset src = i in               b0 == i :: b1 /\ valid_state s1 /\ FStar.Pervasives.Native.Some s1 == eval_ins i s0 /\               eval_block b0 s0 == eval_block b1 s1 /\               s1 == Mkstate s0.regs (s0.mem.[ s0.regs.[ dst ] + offset ] <- s0.regs.[ src ]))             <:             Type)           <:           Type)         <:         Type }
(declare-fun Tm_arrow_d6daddb3193f7982db2d8e8374cd3029 () Term)
(declare-fun Asm1.lemma_store@tok () Term)








; </end encoding let lemma_store>

(push) ;; push{2

; Starting query at Asm1.fst(106,2-106,4)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (s0: Asm1.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         Asm1.eval_block [] s0 == FStar.Pervasives.Native.Some s0 ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let lemma_empty`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Asm1.state)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=Asm1.fst(106,2-106,4)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=Asm1.fst(105,13-105,42); use=Asm1.fst(106,2-106,4)
(or label_2

;; def=Asm1.fst(105,13-105,42); use=Asm1.fst(106,2-106,4)
(= (Asm1.eval_block (Prims.Nil Asm1.ins)
@x0)
(FStar.Pervasives.Native.Some Asm1.state
@x0))
)
)

;; def=Prims.fst(441,83-441,96); use=Asm1.fst(106,2-106,4)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Asm1.fst(106,2-106,4)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=Asm1.fst(106,2-106,4)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Asm1.fst(106,2-106,4)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.3))
)
 
;;no pats
:qid @query.1))
)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.lemma_empty, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_Asm1.eval_block.fuel_instrumented, @query, constructor_distinct_Prims.Nil, data_typing_intro_Prims.Nil@tok, equation_with_fuel_Asm1.eval_block.fuel_instrumented, kinding_Asm1.ins@tok, projection_inverse_Prims.Nil_a

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let lemma_empty


; <Start encoding let lemma_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Asm1.lemma_empty (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Asm1.lemma_empty@tok () Term)

; </end encoding let lemma_empty>


; encoding sigelt let copy


; <Start encoding let copy>

(declare-fun Asm1.copy (Dummy_sort) Term)

; </end encoding let copy>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(84,4-84,15); use=Asm1.fst(84,4-84,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list Asm1.ins))
(HasType @x1
(Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)))
(HasType (Asm1.lemma_store @x0
@x1)
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x0
@x1)))
 

:pattern ((Asm1.lemma_store @x0
@x1))
:qid typing_Asm1.lemma_store))

:named typing_Asm1.lemma_store))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(65,4-65,14); use=Asm1.fst(65,4-65,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list Asm1.ins))
(HasType @x1
(Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)))
(HasType (Asm1.lemma_load @x0
@x1)
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x0
@x1)))
 

:pattern ((Asm1.lemma_load @x0
@x1))
:qid typing_Asm1.lemma_load))

:named typing_Asm1.lemma_load))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Asm1.copy; Namespace Asm1
(assert (! 
;; def=Asm1.fst(108,4-108,8); use=Asm1.fst(108,4-108,8)
(forall ((@u0 Dummy_sort))
 (! (HasType (Asm1.copy @u0)
(Prims.list Asm1.ins))
 

:pattern ((Asm1.copy @u0))
:qid typing_Asm1.copy))

:named typing_Asm1.copy))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(65,29-70,68); use=Asm1.fst(65,29-70,68)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))

:named refinement_kinding_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(84,30-89,67); use=Asm1.fst(84,30-89,67)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_48243b13481161358a87b188b1c7a1bb))

:named refinement_kinding_Tm_refine_48243b13481161358a87b188b1c7a1bb))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(90,6-98,82); use=Asm1.fst(90,6-98,82)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_2d0e4143b34a89d925e715c163c112f4))

:named refinement_kinding_Tm_refine_2d0e4143b34a89d925e715c163c112f4))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(71,6-79,83); use=Asm1.fst(71,6-79,83)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374))

:named refinement_kinding_Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(65,29-70,68); use=Asm1.fst(65,29-70,68)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x2))
(and (HasTypeFuel @u0
@x1
Asm1.state)

;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(66,8-66,24)
(BoxBool_proj_0 (Asm1.valid_state @x1))

(let ((@lb3 @x2))
(ite (and (is-Prims.Cons @lb3)
(is-Asm1.ILoad (Prims.Cons_hd @lb3)))

;; def=Asm1.fst(68,12-70,52); use=Asm1.fst(68,12-70,52)
(and 
;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(68,12-68,25)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lDst (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(69,12-69,25)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lSrc (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(70,12-70,52)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.ILoad_lSrc (Prims.Cons_hd @lb3))))
(BoxInt_proj_0 (Asm1.ILoad_lOffset (Prims.Cons_hd @lb3)))))))
)


;; def=Asm1.fst(70,60-70,65); use=Asm1.fst(70,60-70,65)
false
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x2)))
:qid refinement_interpretation_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))

:named refinement_interpretation_Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(84,30-89,67); use=Asm1.fst(84,30-89,67)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_48243b13481161358a87b188b1c7a1bb @x2))
(and (HasTypeFuel @u0
@x1
Asm1.state)

;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(85,8-85,24)
(BoxBool_proj_0 (Asm1.valid_state @x1))

(let ((@lb3 @x2))
(ite (and (is-Prims.Cons @lb3)
(is-Asm1.IStore (Prims.Cons_hd @lb3)))

;; def=Asm1.fst(87,11-89,51); use=Asm1.fst(87,11-89,51)
(and 
;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(87,11-87,24)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sDst (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(88,11-88,24)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sSrc (Prims.Cons_hd @lb3))))


;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(89,11-89,51)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(Asm1.IStore_sDst (Prims.Cons_hd @lb3))))
(BoxInt_proj_0 (Asm1.IStore_sOffset (Prims.Cons_hd @lb3)))))))
)


;; def=Asm1.fst(89,59-89,64); use=Asm1.fst(89,59-89,64)
false
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_48243b13481161358a87b188b1c7a1bb @x2)))
:qid refinement_interpretation_Tm_refine_48243b13481161358a87b188b1c7a1bb))

:named refinement_interpretation_Tm_refine_48243b13481161358a87b188b1c7a1bb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(90,6-98,82); use=Asm1.fst(90,6-98,82)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(let ((@lb4 @x1))
(let ((@lb5 @x2))
(ite (is-Prims.Cons @lb5)
(let ((@lb6 (Prims.Cons_hd @lb5)))
(ite (is-Asm1.IStore @lb6)

;; def=Asm1.fst(94,8-98,80); use=Asm1.fst(94,8-98,80)
(and 
;; def=Asm1.fst(94,8-94,19); use=Asm1.fst(94,8-94,19)
(= @x2
(Prims.Cons Asm1.ins
(Prims.Cons_hd @lb5)
(FStar.Pervasives.Native.Mktuple2__1 @lb4)))


;; def=Asm1.fst(95,8-95,22); use=Asm1.fst(95,8-95,22)
(BoxBool_proj_0 (Asm1.valid_state (FStar.Pervasives.Native.Mktuple2__2 @lb4)))


;; def=Asm1.fst(96,8-96,32); use=Asm1.fst(96,8-96,32)
(= (FStar.Pervasives.Native.Some Asm1.state
(FStar.Pervasives.Native.Mktuple2__2 @lb4))
(Asm1.eval_ins (Prims.Cons_hd @lb5)
@x3))


;; def=Asm1.fst(97,8-97,44); use=Asm1.fst(97,8-97,44)
(= (Asm1.eval_block @x2
@x3)
(Asm1.eval_block (FStar.Pervasives.Native.Mktuple2__1 @lb4)
(FStar.Pervasives.Native.Mktuple2__2 @lb4)))


;; def=Asm1.fst(98,8-98,80); use=Asm1.fst(98,8-98,80)
(= (FStar.Pervasives.Native.Mktuple2__2 @lb4)
(Asm1.Mkstate (Asm1.__proj__Mkstate__item__regs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x3))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x3))
(Asm1.IStore_sDst @lb6)))
(BoxInt_proj_0 (Asm1.IStore_sOffset @lb6)))))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x3))
(Asm1.IStore_sSrc @lb6)))))
)

Unreachable))
Unreachable)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_2d0e4143b34a89d925e715c163c112f4))

:named refinement_interpretation_Tm_refine_2d0e4143b34a89d925e715c163c112f4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(71,6-79,83); use=Asm1.fst(71,6-79,83)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(let ((@lb4 @x1))
(let ((@lb5 @x2))
(ite (is-Prims.Cons @lb5)
(let ((@lb6 (Prims.Cons_hd @lb5)))
(ite (is-Asm1.ILoad @lb6)

;; def=Asm1.fst(75,8-79,81); use=Asm1.fst(75,8-79,81)
(and 
;; def=Asm1.fst(75,8-75,19); use=Asm1.fst(75,8-75,19)
(= @x2
(Prims.Cons Asm1.ins
(Prims.Cons_hd @lb5)
(FStar.Pervasives.Native.Mktuple2__1 @lb4)))


;; def=Asm1.fst(76,8-76,22); use=Asm1.fst(76,8-76,22)
(BoxBool_proj_0 (Asm1.valid_state (FStar.Pervasives.Native.Mktuple2__2 @lb4)))


;; def=Asm1.fst(77,8-77,32); use=Asm1.fst(77,8-77,32)
(= (FStar.Pervasives.Native.Some Asm1.state
(FStar.Pervasives.Native.Mktuple2__2 @lb4))
(Asm1.eval_ins (Prims.Cons_hd @lb5)
@x3))


;; def=Asm1.fst(78,8-78,44); use=Asm1.fst(78,8-78,44)
(= (Asm1.eval_block @x2
@x3)
(Asm1.eval_block (FStar.Pervasives.Native.Mktuple2__1 @lb4)
(FStar.Pervasives.Native.Mktuple2__2 @lb4)))


;; def=Asm1.fst(79,8-79,81); use=Asm1.fst(79,8-79,81)
(= (FStar.Pervasives.Native.Mktuple2__2 @lb4)
(Asm1.Mkstate (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x3))
(Asm1.ILoad_lDst @lb6))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x3))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x3))
(Asm1.ILoad_lSrc @lb6)))
(BoxInt_proj_0 (Asm1.ILoad_lOffset @lb6))))))
(Asm1.__proj__Mkstate__item__mem @x3)))
)

Unreachable))
Unreachable)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374))

:named refinement_interpretation_Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(65,29-70,68); use=Asm1.fst(65,29-70,68)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0)))
(Valid (Prims.hasEq Asm1.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4e80bd4cb4381dd7b404ae8d87d55810 @x0))))
:qid haseqTm_refine_4e80bd4cb4381dd7b404ae8d87d55810))

:named haseqTm_refine_4e80bd4cb4381dd7b404ae8d87d55810))
;;;;;;;;;;;;;;;;haseq for Tm_refine_48243b13481161358a87b188b1c7a1bb
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(84,30-89,67); use=Asm1.fst(84,30-89,67)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0)))
(Valid (Prims.hasEq Asm1.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_48243b13481161358a87b188b1c7a1bb @x0))))
:qid haseqTm_refine_48243b13481161358a87b188b1c7a1bb))

:named haseqTm_refine_48243b13481161358a87b188b1c7a1bb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2d0e4143b34a89d925e715c163c112f4
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(90,6-98,82); use=Asm1.fst(90,6-98,82)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x0
@x1)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x0
@x1))))
:qid haseqTm_refine_2d0e4143b34a89d925e715c163c112f4))

:named haseqTm_refine_2d0e4143b34a89d925e715c163c112f4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(71,6-79,83); use=Asm1.fst(71,6-79,83)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x0
@x1)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x0
@x1))))
:qid haseqTm_refine_09c0e6258fadd3d82c4b9e11e8b64374))

:named haseqTm_refine_09c0e6258fadd3d82c4b9e11e8b64374))
;;;;;;;;;;;;;;;;Equation for Asm1.lemma_store
;;; Fact-ids: Name Asm1.lemma_store; Namespace Asm1
(assert (! 
;; def=Asm1.fst(84,4-84,15); use=Asm1.fst(84,4-84,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.lemma_store @x0
@x1)
(let ((@lb2 @x0))
(ite (is-Prims.Cons @lb2)
(let ((@lb3 (Asm1.eval_ins (Prims.Cons_hd @lb2)
@x1)))
(ite (is-FStar.Pervasives.Native.Some @lb3)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
(Prims.Cons_tl @lb2)
(FStar.Pervasives.Native.Some_v @lb3))
Tm_unit))
Tm_unit)))
 

:pattern ((Asm1.lemma_store @x0
@x1))
:qid equation_Asm1.lemma_store))

:named equation_Asm1.lemma_store))
;;;;;;;;;;;;;;;;Equation for Asm1.lemma_load
;;; Fact-ids: Name Asm1.lemma_load; Namespace Asm1
(assert (! 
;; def=Asm1.fst(65,4-65,14); use=Asm1.fst(65,4-65,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Asm1.lemma_load @x0
@x1)
(let ((@lb2 @x0))
(ite (is-Prims.Cons @lb2)
(let ((@lb3 (Asm1.eval_ins (Prims.Cons_hd @lb2)
@x1)))
(ite (is-FStar.Pervasives.Native.Some @lb3)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
(Prims.Cons_tl @lb2)
(FStar.Pervasives.Native.Some_v @lb3))
Tm_unit))
Tm_unit)))
 

:pattern ((Asm1.lemma_load @x0
@x1))
:qid equation_Asm1.lemma_load))

:named equation_Asm1.lemma_load))
;;;;;;;;;;;;;;;;Equation for Asm1.copy
;;; Fact-ids: Name Asm1.copy; Namespace Asm1
(assert (! 
;; def=Asm1.fst(108,4-108,8); use=Asm1.fst(108,4-108,8)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Asm1.fst(108,4-108,8); use=Asm1.fst(108,4-108,8)
(Asm1.copy @u0)

(Prims.Cons Asm1.ins
(Asm1.ILoad (BoxInt 0)
(BoxInt 3)
(BoxInt 0))
(Prims.Cons Asm1.ins
(Asm1.ILoad (BoxInt 1)
(BoxInt 3)
(BoxInt 1))
(Prims.Cons Asm1.ins
(Asm1.ILoad (BoxInt 2)
(BoxInt 3)
(BoxInt 2))
(Prims.Cons Asm1.ins
(Asm1.IStore (BoxInt 3)
(BoxInt 20)
(BoxInt 0))
(Prims.Cons Asm1.ins
(Asm1.IStore (BoxInt 3)
(BoxInt 21)
(BoxInt 1))
(Prims.Cons Asm1.ins
(Asm1.IStore (BoxInt 3)
(BoxInt 22)
(BoxInt 2))
(Prims.Nil Asm1.ins))))))))
 

:pattern (
;; def=Asm1.fst(108,4-108,8); use=Asm1.fst(108,4-108,8)
(Asm1.copy @u0)
)
:qid equation_Asm1.copy))

:named equation_Asm1.copy))
(push) ;; push{2

; Starting query at Asm1.fst(136,42-145,4)

(declare-fun label_47 () Bool)
(declare-fun label_46 () Bool)
(declare-fun label_45 () Bool)
(declare-fun label_44 () Bool)
(declare-fun label_43 () Bool)
(declare-fun label_42 () Bool)
(declare-fun label_41 () Bool)
(declare-fun label_40 () Bool)
(declare-fun label_39 () Bool)
(declare-fun label_38 () Bool)
(declare-fun label_37 () Bool)
(declare-fun label_36 () Bool)
(declare-fun label_35 () Bool)
(declare-fun label_34 () Bool)
(declare-fun label_33 () Bool)
(declare-fun label_32 () Bool)
(declare-fun label_31 () Bool)
(declare-fun label_30 () Bool)
(declare-fun label_29 () Bool)
(declare-fun label_28 () Bool)
(declare-fun label_27 () Bool)
(declare-fun label_26 () Bool)
(declare-fun label_25 () Bool)
(declare-fun label_24 () Bool)
(declare-fun label_23 () Bool)
(declare-fun label_22 () Bool)
(declare-fun label_21 () Bool)
(declare-fun label_20 () Bool)
(declare-fun label_19 () Bool)
(declare-fun label_18 () Bool)
(declare-fun label_17 () Bool)
(declare-fun label_16 () Bool)
(declare-fun label_15 () Bool)
(declare-fun label_14 () Bool)
(declare-fun label_13 () Bool)
(declare-fun label_12 () Bool)
(declare-fun label_11 () Bool)
(declare-fun label_10 () Bool)
(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)












(declare-fun Tm_refine_a766ba25747e5f65d9110aeed34306a4 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_a766ba25747e5f65d9110aeed34306a4
Tm_type)
:named refinement_kinding_Tm_refine_a766ba25747e5f65d9110aeed34306a4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(118,15-127,34); use=Asm1.fst(118,15-127,34)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a766ba25747e5f65d9110aeed34306a4)
(and (HasTypeFuel @u0
@x1
Asm1.state)

;; def=Asm1.fst(119,8-119,22); use=Asm1.fst(119,8-119,22)
(BoxBool_proj_0 (Asm1.valid_state @x1))


;; def=Asm1.fst(122,12-122,30); use=Asm1.fst(122,12-122,30)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(BoxInt 3)))
0))))


;; def=Asm1.fst(123,12-123,30); use=Asm1.fst(123,12-123,30)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(BoxInt 3)))
1))))


;; def=Asm1.fst(124,12-124,30); use=Asm1.fst(124,12-124,30)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(BoxInt 3)))
2))))


;; def=Asm1.fst(125,12-125,31); use=Asm1.fst(125,12-125,31)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(BoxInt 3)))
20))))


;; def=Asm1.fst(126,12-126,31); use=Asm1.fst(126,12-126,31)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(BoxInt 3)))
21))))


;; def=Asm1.fst(127,12-127,31); use=Asm1.fst(127,12-127,31)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x1))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x1))
(BoxInt 3)))
22))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a766ba25747e5f65d9110aeed34306a4))
:qid refinement_interpretation_Tm_refine_a766ba25747e5f65d9110aeed34306a4))

:named refinement_interpretation_Tm_refine_a766ba25747e5f65d9110aeed34306a4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a766ba25747e5f65d9110aeed34306a4
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a766ba25747e5f65d9110aeed34306a4))
(Valid (Prims.hasEq Asm1.state)))
:named haseqTm_refine_a766ba25747e5f65d9110aeed34306a4))






























(declare-fun Tm_refine_4185fbd0490c35b112c0e16227dcbd49 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(71,6-79,83); use=Asm1.fst(136,42-145,4)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_4185fbd0490c35b112c0e16227dcbd49))

:named refinement_kinding_Tm_refine_4185fbd0490c35b112c0e16227dcbd49))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(71,6-79,83); use=Asm1.fst(136,42-145,4)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(let ((@lb3 @x1))
(let ((@lb4 (Asm1.copy Dummy_value)))
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (Prims.Cons_hd @lb4)))
(ite (is-Asm1.ILoad @lb5)

;; def=Asm1.fst(75,8-79,81); use=Asm1.fst(136,42-145,4)
(and 
;; def=Asm1.fst(75,8-75,19); use=Asm1.fst(136,42-145,4)
(= (Asm1.copy Dummy_value)
(Prims.Cons Asm1.ins
(Prims.Cons_hd @lb4)
(FStar.Pervasives.Native.Mktuple2__1 @lb3)))


;; def=Asm1.fst(76,8-76,22); use=Asm1.fst(136,42-145,4)
(BoxBool_proj_0 (Asm1.valid_state (FStar.Pervasives.Native.Mktuple2__2 @lb3)))


;; def=Asm1.fst(77,8-77,32); use=Asm1.fst(136,42-145,4)
(= (FStar.Pervasives.Native.Some Asm1.state
(FStar.Pervasives.Native.Mktuple2__2 @lb3))
(Asm1.eval_ins (Prims.Cons_hd @lb4)
@x2))


;; def=Asm1.fst(78,8-78,44); use=Asm1.fst(136,42-145,4)
(= (Asm1.eval_block (Asm1.copy Dummy_value)
@x2)
(Asm1.eval_block (FStar.Pervasives.Native.Mktuple2__1 @lb3)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)))


;; def=Asm1.fst(79,8-79,81); use=Asm1.fst(136,42-145,4)
(= (FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Asm1.Mkstate (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Assignment@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x2))
(Asm1.ILoad_lDst @lb5))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x2))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x2))
(Asm1.ILoad_lSrc @lb5)))
(BoxInt_proj_0 (Asm1.ILoad_lOffset @lb5))))))
(Asm1.__proj__Mkstate__item__mem @x2)))
)

Unreachable))
Unreachable)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x2)))
:qid refinement_interpretation_Tm_refine_4185fbd0490c35b112c0e16227dcbd49))

:named refinement_interpretation_Tm_refine_4185fbd0490c35b112c0e16227dcbd49))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4185fbd0490c35b112c0e16227dcbd49
;;; Fact-ids: 
(assert (! 
;; def=Asm1.fst(71,6-79,83); use=Asm1.fst(136,42-145,4)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x0)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x0))))
:qid haseqTm_refine_4185fbd0490c35b112c0e16227dcbd49))

:named haseqTm_refine_4185fbd0490c35b112c0e16227dcbd49))



































































; Encoding query formula : forall (s0:
;   Asm1.state
;     { Asm1.valid_state s0 /\
;       Asm1.contains s0.mem (s0.regs.[ 3 ] + 0) /\ Asm1.contains s0.mem (s0.regs.[ 3 ] + 1) /\
;       Asm1.contains s0.mem (s0.regs.[ 3 ] + 2) /\
;       Asm1.contains s0.mem (s0.regs.[ 3 ] + 20) /\
;       Asm1.contains s0.mem (s0.regs.[ 3 ] + 21) /\
;       Asm1.contains s0.mem (s0.regs.[ 3 ] + 22) }).
;   (*  - Could not prove post-condition
; *)
;   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state) (b: Prims.list Asm1.ins) (b: Asm1.state).
;       b1_s1 == (b, b) ==>
;       (~(Cons? Asm1.copy) ==> Prims.l_False) /\
;       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;           Asm1.copy == b :: b ==> ~(ILoad? b) ==> Prims.l_False)) /\
;   (Asm1.valid_state s0 /\
;     Asm1.contains s0.mem (s0.regs.[ 3 ] + 0) /\ Asm1.contains s0.mem (s0.regs.[ 3 ] + 1) /\
;     Asm1.contains s0.mem (s0.regs.[ 3 ] + 2) /\
;     Asm1.contains s0.mem (s0.regs.[ 3 ] + 20) /\
;     Asm1.contains s0.mem (s0.regs.[ 3 ] + 21) /\
;     Asm1.contains s0.mem (s0.regs.[ 3 ] + 22) ==>
;     Asm1.valid_state s0 /\
;     (match Asm1.copy with
;       | Asm1.ILoad dst src offset :: _ ->
;         Asm1.valid_reg dst /\ Asm1.valid_reg src /\ Asm1.contains s0.mem (s0.regs.[ src ] + offset)
;       | _ -> Prims.l_False)) /\
;   (forall (any_result:
;       s0:
;       Asm1.state
;         { Asm1.valid_state s0 /\
;           Asm1.contains s0.mem (s0.regs.[ 3 ] + 0) /\ Asm1.contains s0.mem (s0.regs.[ 3 ] + 1) /\
;           Asm1.contains s0.mem (s0.regs.[ 3 ] + 2) /\
;           Asm1.contains s0.mem (s0.regs.[ 3 ] + 20) /\
;           Asm1.contains s0.mem (s0.regs.[ 3 ] + 21) /\
;           Asm1.contains s0.mem (s0.regs.[ 3 ] + 22) }).
;       s0 == any_result ==>
;       (forall (any_result:
;           b1_s1:
;           (Prims.list Asm1.ins & Asm1.state)
;             { (let b1, s1 = b1_s1 in
;                 (let i :: _ = Asm1.copy in
;                   (let Asm1.ILoad dst src offset = i in
;                     Asm1.copy == i :: b1 /\ Asm1.valid_state s1 /\
;                     FStar.Pervasives.Native.Some s1 == Asm1.eval_ins i s0 /\
;                     Asm1.eval_block Asm1.copy s0 == Asm1.eval_block b1 s1 /\
;                     s1 ==
;                     Asm1.Mkstate (s0.regs.[ dst ] <- s0.mem.[ s0.regs.[ src ] + offset ]) s0.mem)
;                   <:
;                   Type0)
;                 <:
;                 Type0)
;               <:
;               Type0 }).
;           Asm1.lemma_load Asm1.copy s0 == any_result ==>
;           (forall (return_val:
;               b1_s1:
;               (Prims.list Asm1.ins & Asm1.state)
;                 { (let b1, s1 = b1_s1 in
;                     (let i :: _ = Asm1.copy in
;                       (let Asm1.ILoad dst src offset = i in
;                         Asm1.copy == i :: b1 /\ Asm1.valid_state s1 /\
;                         FStar.Pervasives.Native.Some s1 == Asm1.eval_ins i s0 /\
;                         Asm1.eval_block Asm1.copy s0 == Asm1.eval_block b1 s1 /\
;                         s1 ==
;                         Asm1.Mkstate (s0.regs.[ dst ] <- s0.mem.[ s0.regs.[ src ] + offset ]) s0.mem
;                       )
;                       <:
;                       Type0)
;                     <:
;                     Type0)
;                   <:
;                   Type0 }).
;               return_val == Asm1.lemma_load Asm1.copy s0 ==>
;               Asm1.lemma_load Asm1.copy s0 == return_val ==>
;               (forall (b: Prims.list Asm1.ins) (b: Asm1.state).
;                   Asm1.lemma_load Asm1.copy s0 == (b, b) ==>
;                   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state)
;                       (b: Prims.list Asm1.ins)
;                       (b: Asm1.state).
;                       b1_s1 == (b, b) ==>
;                       (~(Cons? b) ==> Prims.l_False) /\
;                       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;                           b == b :: b ==> ~(ILoad? b) ==> Prims.l_False)) /\
;                   Asm1.valid_state b /\
;                   (match b with
;                     | Asm1.ILoad dst src offset :: _ ->
;                       Asm1.valid_reg dst /\ Asm1.valid_reg src /\
;                       Asm1.contains b.mem (b.regs.[ src ] + offset)
;                     | _ -> Prims.l_False) /\
;                   (forall (any_result: Asm1.state).
;                       b == any_result ==>
;                       (forall (any_result:
;                           b1_s1:
;                           (Prims.list Asm1.ins & Asm1.state)
;                             { (let b1, s1 = b1_s1 in
;                                 (let i :: _ = b in
;                                   (let Asm1.ILoad dst src offset = i in
;                                     b == i :: b1 /\ Asm1.valid_state s1 /\
;                                     FStar.Pervasives.Native.Some s1 == Asm1.eval_ins i b /\
;                                     Asm1.eval_block b b == Asm1.eval_block b1 s1 /\
;                                     s1 ==
;                                     Asm1.Mkstate
;                                       (b.regs.[ dst ] <- b.mem.[ b.regs.[ src ] + offset ]) b.mem)
;                                   <:
;                                   Type0)
;                                 <:
;                                 Type0)
;                               <:
;                               Type0 }).
;                           Asm1.lemma_load b b == any_result ==>
;                           (forall (return_val:
;                               b1_s1:
;                               (Prims.list Asm1.ins & Asm1.state)
;                                 { (let b1, s1 = b1_s1 in
;                                     (let i :: _ = b in
;                                       (let Asm1.ILoad dst src offset = i in
;                                         b == i :: b1 /\ Asm1.valid_state s1 /\
;                                         FStar.Pervasives.Native.Some s1 == Asm1.eval_ins i b /\
;                                         Asm1.eval_block b b == Asm1.eval_block b1 s1 /\
;                                         s1 ==
;                                         Asm1.Mkstate
;                                           (b.regs.[ dst ] <- b.mem.[ b.regs.[ src ] + offset ])
;                                           b.mem)
;                                       <:
;                                       Type0)
;                                     <:
;                                     Type0)
;                                   <:
;                                   Type0 }).
;                               return_val == Asm1.lemma_load b b ==>
;                               Asm1.lemma_load b b == return_val ==>
;                               (forall (b: Prims.list Asm1.ins) (b: Asm1.state).
;                                   Asm1.lemma_load b b == (b, b) ==>
;                                   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state)
;                                       (b: Prims.list Asm1.ins)
;                                       (b: Asm1.state).
;                                       b1_s1 == (b, b) ==>
;                                       (~(Cons? b) ==> Prims.l_False) /\
;                                       (forall (b: Asm1.ins) (b: Prims.list Asm1.ins).
;                                           b == b :: b ==> ~(ILoad? b) ==> Prims.l_False)) /\
;                                   Asm1.valid_state b /\
;                                   (match b with
;                                     | Asm1.ILoad dst src offset :: _ ->
;                                       Asm1.valid_reg dst /\ Asm1.valid_reg src /\
;                                       Asm1.contains b.mem (b.regs.[ src ] + offset)
;                                     | _ -> Prims.l_False) /\
;                                   (forall (any_result: Asm1.state).
;                                       b == any_result ==>
;                                       (forall (any_result:
;                                           b1_s1:
;                                           (Prims.list Asm1.ins & Asm1.state)
;                                             { (let b1, s1 = b1_s1 in
;                                                 (let i :: _ = b in
;                                                   (let Asm1.ILoad dst src offset = i in
;                                                     b == i :: b1 /\ Asm1.valid_state s1 /\
;                                                     FStar.Pervasives.Native.Some s1 ==
;                                                     Asm1.eval_ins i b /\
;                                                     Asm1.eval_block b b == Asm1.eval_block b1 s1 /\
;                                                     s1 ==
;                                                     Asm1.Mkstate
;                                                       (b.regs.[ dst ] <-
;                                                           b.mem.[ b.regs.[ src ] + offset ]) b.mem)
;                                                   <:
;                                                   Type0)
;                                                 <:
;                                                 Type0)
;                                               <:
;                                               Type0 }).
;                                           Asm1.lemma_load b b == any_result ==>
;                                           (forall (return_val:
;                                               b1_s1:
;                                               (Prims.list Asm1.ins & Asm1.state)
;                                                 { (let b1, s1 = b1_s1 in
;                                                     (let i :: _ = b in
;                                                       (let Asm1.ILoad dst src offset = i in
;                                                         b == i :: b1 /\ Asm1.valid_state s1 /\
;                                                         FStar.Pervasives.Native.Some s1 ==
;                                                         Asm1.eval_ins i b /\
;                                                         Asm1.eval_block b b == Asm1.eval_block b1 s1 /\
;                                                         s1 ==
;                                                         Asm1.Mkstate
;                                                           (b.regs.[ dst ] <-
;                                                               b.mem.[ b.regs.[ src ] + offset ])
;                                                           b.mem)
;                                                       <:
;                                                       Type0)
;                                                     <:
;                                                     Type0)
;                                                   <:
;                                                   Type0 }).
;                                               return_val == Asm1.lemma_load b b ==>
;                                               Asm1.lemma_load b b == return_val ==>
;                                               (forall (b: Prims.list Asm1.ins) (b: Asm1.state).
;                                                   Asm1.lemma_load b b == (b, b) ==>
;                                                   (forall (b1_s1: Prims.list Asm1.ins & Asm1.state)
;                                                       (b: Prims.list Asm1.ins)
;                                                       (b: Asm1.state).
;                                                       b1_s1 == (b, b) ==>
;                                                       (~(Cons? b) ==> Prims.l_False) /\
;                                                       (forall (b: Asm1.ins)
;                                                           (b: Prims.list Asm1.ins).
;                                                           b == b :: b ==>
;                                                           ~(IStore? b) ==> Prims.l_False)) /\
;                                                   Asm1.valid_state b /\
;                                                   (match b with
;                                                     | Asm1.IStore dst offset src :: _ ->
;                                                       Asm1.valid_reg dst /\ Asm1.valid_reg src /\
;                                                       Asm1.contains b.mem (b.regs.[ dst ] + offset)
;                                                     | _ -> Prims.l_False) /\
;                                                   (forall (any_result: Asm1.state).
;                                                       b == any_result ==>
;                                                       (forall (any_result:
;                                                           b1_s1:
;                                                           (Prims.list Asm1.ins & Asm1.state)
;                                                             { (let b1, s1 = b1_s1 in
;                                                                 (let i :: _ = b in
;                                                                   (let Asm1.IStore dst offset src =
;                                                                       i
;                                                                     in
;                                                                     b == i :: b1 /\
;                                                                     Asm1.valid_state s1 /\
;                                                                     FStar.Pervasives.Native.Some s1 ==
;                                                                     Asm1.eval_ins i b /\
;                                                                     Asm1.eval_block b b ==
;                                                                     Asm1.eval_block b1 s1 /\
;                                                                     s1 ==
;                                                                     Asm1.Mkstate b.regs
;                                                                       (b.mem.[ b.regs.[ dst ] +
;                                                                           offset ] <- b.regs.[ src ]
;                                                                       ))
;                                                                   <:
;                                                                   Type0)
;                                                                 <:
;                                                                 Type0)
;                                                               <:
;                                                               Type0 }).
;                                                           Asm1.lemma_store b b == any_result ==>
;                                                           (forall (return_val:
;                                                               b1_s1:
;                                                               (Prims.list Asm1.ins & Asm1.state)
;                                                                 { (let b1, s1 = b1_s1 in
;                                                                     (let i :: _ = b in
;                                                                       (let
;                                                                         Asm1.IStore dst offset src =
;                                                                           i
;                                                                         in
;                                                                         b == i :: b1 /\
;                                                                         Asm1.valid_state s1 /\
;                                                                         FStar.Pervasives.Native.Some
;                                                                         s1 ==
;                                                                         Asm1.eval_ins i b /\
;                                                                         Asm1.eval_block b b ==
;                                                                         Asm1.eval_block b1 s1 /\
;                                                                         s1 ==
;                                                                         Asm1.Mkstate b.regs
;                                                                           (b.mem.[ b.regs.[ dst ] +
;                                                                               offset ] <-
;                                                                               b.regs.[ src ]))
;                                                                       <:
;                                                                       Type0)
;                                                                     <:
;                                                                     Type0)
;                                                                   <:
;                                                                   Type0 }).
;                                                               return_val == Asm1.lemma_store b b ==>
;                                                               Asm1.lemma_store b b == return_val ==>
;                                                               (forall (b: Prims.list Asm1.ins)
;                                                                   (b: Asm1.state).
;                                                                   Asm1.lemma_store b b == (b, b) ==>
;                                                                   (forall (b1_s1:
;                                                                       Prims.list Asm1.ins &
;                                                                       Asm1.state)
;                                                                       (b: Prims.list Asm1.ins)
;                                                                       (b: Asm1.state).
;                                                                       b1_s1 == (b, b) ==>
;                                                                       (~(Cons? b) ==> Prims.l_False) /\
;                                                                       (forall (b: Asm1.ins)
;                                                                           (b: Prims.list Asm1.ins).
;                                                                           b == b :: b ==>
;                                                                           ~(IStore? b) ==>
;                                                                           Prims.l_False)) /\
;                                                                   Asm1.valid_state b /\
;                                                                   (match b with
;                                                                     | Asm1.IStore dst offset src ::
;                                                                     _ ->
;                                                                       Asm1.valid_reg dst /\
;                                                                       Asm1.valid_reg src /\
;                                                                       Asm1.contains b.mem
;                                                                         (b.regs.[ dst ] + offset)
;                                                                     | _ -> Prims.l_False) /\
;                                                                   (forall (any_result: Asm1.state).
;                                                                       b == any_result ==>
;                                                                       (forall (any_result:
;                                                                           b1_s1:
;                                                                           (Prims.list Asm1.ins &
;                                                                             Asm1.state)
;                                                                             { (let b1, s1 = b1_s1 in
;                                                                                 (let i :: _ = b in
;                                                                                   (let
;                                                                                     Asm1.IStore
;                                                                                       dst
;                                                                                       offset
;                                                                                       src =
;                                                                                       i
;                                                                                     in
;                                                                                     b == i :: b1 /\
;                                                                                     Asm1.valid_state
;                                                                                       s1 /\
;                                                                                     FStar.Pervasives.Native.Some
;                                                                                     s1 ==
;                                                                                     Asm1.eval_ins i
;                                                                                       b /\
;                                                                                     Asm1.eval_block b
;                                                                                       b ==
;                                                                                     Asm1.eval_block b1
;                                                                                       s1 /\
;                                                                                     s1 ==
;                                                                                     Asm1.Mkstate
;                                                                                       b.regs
;                                                                                       (b.mem.[ b
;                                                                                             .regs.[ dst
;                                                                                           ] +
;                                                                                           offset ] <-
;                                                                                           b.regs.[ src
;                                                                                           ]))
;                                                                                   <:
;                                                                                   Type0)
;                                                                                 <:
;                                                                                 Type0)
;                                                                               <:
;                                                                               Type0 }).
;                                                                           Asm1.lemma_store b b ==
;                                                                           any_result ==>
;                                                                           (forall (return_val:
;                                                                               b1_s1:
;                                                                               (Prims.list Asm1.ins &
;                                                                                 Asm1.state)
;                                                                                 { (let b1, s1 =
;                                                                                       b1_s1
;                                                                                     in
;                                                                                     (let i :: _ =
;                                                                                         b
;                                                                                       in
;                                                                                       (let
;                                                                                         Asm1.IStore
;                                                                                           dst
;                                                                                           offset
;                                                                                           src =
;                                                                                           i
;                                                                                         in
;                                                                                         b == i :: b1 /\
;                                                                                         Asm1.valid_state
;                                                                                           s1 /\
;                                                                                         FStar.Pervasives.Native.Some
;                                                                                         s1 ==
;                                                                                         Asm1.eval_ins
;                                                                                           i
;                                                                                           b /\
;                                                                                         Asm1.eval_block
;                                                                                           b
;                                                                                           b ==
;                                                                                         Asm1.eval_block
;                                                                                           b1
;                                                                                           s1 /\
;                                                                                         s1 ==
;                                                                                         Asm1.Mkstate
;                                                                                           b.regs
;                                                                                           (b.mem.[ b
;                                                                                                 .regs.[
;                                                                                                 dst
;                                                                                               ] +
;                                                                                               offset
;                                                                                             ] <-
;                                                                                               b.regs.[
;                                                                                                 src
;                                                                                               ]))
;                                                                                       <:
;                                                                                       Type0)
;                                                                                     <:
;                                                                                     Type0)
;                                                                                   <:
;                                                                                   Type0 }).
;                                                                               return_val ==
;                                                                               Asm1.lemma_store b b ==>
;                                                                               Asm1.lemma_store b b ==
;                                                                               return_val ==>
;                                                                               (forall (b:
;                                                                                   Prims.list Asm1.ins
;                                                                                   )
;                                                                                   (b: Asm1.state).
;                                                                                   Asm1.lemma_store b
;                                                                                     b ==
;                                                                                   (b,
;                                                                                   b) ==>
;                                                                                   (forall (b1_s1:
;                                                                                       Prims.list Asm1.ins
;                                                                                        &
;                                                                                       Asm1.state)
;                                                                                       (b:
;                                                                                       Prims.list Asm1.ins
;                                                                                       )
;                                                                                       (b:
;                                                                                       Asm1.state).
;                                                                                       b1_s1 ==
;                                                                                       (b,
;                                                                                       b) ==>
;                                                                                       (~(Cons? b) ==>
;                                                                                         Prims.l_False
;                                                                                       ) /\
;                                                                                       (forall (b:
;                                                                                           Asm1.ins)
;                                                                                           (b:
;                                                                                           Prims.list
;                                                                                             Asm1.ins)
;                                                                                         .
;                                                                                           b ==
;                                                                                           b :: b ==>
;                                                                                           ~(IStore? b
;                                                                                             ) ==>
;                                                                                           Prims.l_False
;                                                                                       )) /\
;                                                                                   Asm1.valid_state b /\
;                                                                                   (match b with
;                                                                                     | Asm1.IStore
;                                                                                       dst
;                                                                                       offset
;                                                                                       src ::
;                                                                                     _ ->
;                                                                                       Asm1.valid_reg
;                                                                                         dst /\
;                                                                                       Asm1.valid_reg
;                                                                                         src /\
;                                                                                       Asm1.contains b
;                                                                                           .mem
;                                                                                         (b.regs.[ dst
;                                                                                           ] +
;                                                                                           offset)
;                                                                                     | _ ->
;                                                                                       Prims.l_False) /\
;                                                                                   (forall (any_result:
;                                                                                       Asm1.state).
;                                                                                       b ==
;                                                                                       any_result ==>
;                                                                                       (forall (any_result:
;                                                                                           b1_s1:
;                                                                                           (Prims.list
;                                                                                               Asm1.ins
;                                                                                              &
;                                                                                             Asm1.state
;                                                                                           )
;                                                                                             { (let
;                                                                                                 b1,
;                                                                                                 s1 =
;                                                                                                   b1_s1
;                                                                                                 in
;                                                                                                 (let
;                                                                                                   i ::
;                                                                                                   _
;                                                                                                   =
;                                                                                                     b
;                                                                                                   in
;                                                                                                   (let
;                                                                                                     Asm1.IStore
;                                                                                                       dst
;                                                                                                       offset
;                                                                                                       src
;                                                                                                     =
;                                                                                                       i
;                                                                                                     in
;                                                                                                     b ==
;                                                                                                     i ::
;                                                                                                     b1 /\
;                                                                                                     Asm1.valid_state
;                                                                                                       s1
;                                                                                                      /\
;                                                                                                     FStar.Pervasives.Native.Some
;                                                                                                     s1 ==
;                                                                                                     Asm1.eval_ins
;                                                                                                       i
;                                                                                                       b
;                                                                                                      /\
;                                                                                                     Asm1.eval_block
;                                                                                                       b
;                                                                                                       b
;                                                                                                      ==
;                                                                                                     Asm1.eval_block
;                                                                                                       b1
;                                                                                                       s1
;                                                                                                      /\
;                                                                                                     s1 ==
;                                                                                                     Asm1.Mkstate
;                                                                                                       b
;                                                                                                         .regs
;                                                                                                       (
;                                                                                                         b
;                                                                                                           .mem.[
;                                                                                                           b
;                                                                                                             .regs.[
;                                                                                                             dst
;                                                                                                           ] +
;                                                                                                           offset
;                                                                                                         ] <-
;                                                                                                           b
;                                                                                                             .regs.[
;                                                                                                             src
;                                                                                                           ]
;                                                                                                       )
;                                                                                                   )
;                                                                                                   <:
;                                                                                                   Type0
;                                                                                                 )
;                                                                                                 <:
;                                                                                                 Type0
;                                                                                               )
;                                                                                               <:
;                                                                                               Type0
;                                                                                             }).
;                                                                                           Asm1.lemma_store
;                                                                                             b
;                                                                                             b ==
;                                                                                           any_result ==>
;                                                                                           (forall (return_val:
;                                                                                               b1_s1:
;                                                                                               (Prims.list
;                                                                                                   Asm1.ins
;                                                                                                  &
;                                                                                                 Asm1.state
;                                                                                               )
;                                                                                                 { (let
;                                                                                                     b1,
;                                                                                                     s1
;                                                                                                     =
;                                                                                                       b1_s1
;                                                                                                     in
;                                                                                                     (
;                                                                                                       let
;                                                                                                       i ::
;                                                                                                       _
;                                                                                                       =
;                                                                                                         b
;                                                                                                       in
;                                                                                                       (
;                                                                                                         let
;                                                                                                         Asm1.IStore
;                                                                                                           dst
;                                                                                                           offset
;                                                                                                           src
;                                                                                                         =
;                                                                                                           i
;                                                                                                         in
;                                                                                                         b ==
;                                                                                                         i ::
;                                                                                                         b1 /\
;                                                                                                         Asm1.valid_state
;                                                                                                           s1
;                                                                                                          /\
;                                                                                                         FStar.Pervasives.Native.Some
;                                                                                                         s1 ==
;                                                                                                         Asm1.eval_ins
;                                                                                                           i
;                                                                                                           b
;                                                                                                          /\
;                                                                                                         Asm1.eval_block
;                                                                                                           b
;                                                                                                           b
;                                                                                                          ==
;                                                                                                         Asm1.eval_block
;                                                                                                           b1
;                                                                                                           s1
;                                                                                                          /\
;                                                                                                         s1 ==
;                                                                                                         Asm1.Mkstate
;                                                                                                           b
;                                                                                                             .regs
;                                                                                                           (
;                                                                                                             b
;                                                                                                               .mem.[
;                                                                                                               b
;                                                                                                                 .regs.[
;                                                                                                                 dst
;                                                                                                               ] +
;                                                                                                               offset
;                                                                                                             ] <-
;                                                                                                               b
;                                                                                                                 .regs.[
;                                                                                                                 src
;                                                                                                               ]
;                                                                                                           )
;                                                                                                       )
;                                                                                                       <:
;                                                                                                       Type0
;                                                                                                     )
;                                                                                                     <:
;                                                                                                     Type0
;                                                                                                   )
;                                                                                                   <:
;                                                                                                   Type0
;                                                                                                 }).
;                                                                                               return_val ==
;                                                                                               Asm1.lemma_store
;                                                                                                 b
;                                                                                                 b ==>
;                                                                                               Asm1.lemma_store
;                                                                                                 b
;                                                                                                 b ==
;                                                                                               return_val ==>
;                                                                                               (forall
;                                                                                                   (b:
;                                                                                                   Prims.list
;                                                                                                     Asm1.ins
;                                                                                                   )
;                                                                                                   (b:
;                                                                                                   Asm1.state)
;                                                                                                 .
;                                                                                                   Asm1.lemma_store
;                                                                                                     b
;                                                                                                     b
;                                                                                                    ==
;                                                                                                   (b,
;                                                                                                   b) ==>
;                                                                                                   (forall
;                                                                                                       (pure_result:
;                                                                                                       Prims.unit)
;                                                                                                     .
;                                                                                                       Asm1.eval_block
;                                                                                                         [
; 
;                                                                                                         ]
;                                                                                                         b
;                                                                                                        ==
;                                                                                                       FStar.Pervasives.Native.Some
;                                                                                                       b ==>
;                                                                                                       Asm1.valid_state
;                                                                                                         b
;                                                                                                        /\
;                                                                                                       FStar.Pervasives.Native.Some
;                                                                                                       b ==
;                                                                                                       Asm1.eval_block
;                                                                                                         Asm1.copy
;                                                                                                         s0
;                                                                                                        /\
;                                                                                                       (
;                                                                                                         b
;                                                                                                           .mem.[
;                                                                                                           s0
;                                                                                                             .regs.[
;                                                                                                             3
;                                                                                                           ] +
;                                                                                                           20
;                                                                                                         ] ==
;                                                                                                         s0
;                                                                                                           .mem.[
;                                                                                                           s0
;                                                                                                             .regs.[
;                                                                                                             3
;                                                                                                           ] +
;                                                                                                           0
;                                                                                                         ]
;                                                                                                       ) /\
;                                                                                                       (
;                                                                                                         b
;                                                                                                           .mem.[
;                                                                                                           s0
;                                                                                                             .regs.[
;                                                                                                             3
;                                                                                                           ] +
;                                                                                                           21
;                                                                                                         ] ==
;                                                                                                         s0
;                                                                                                           .mem.[
;                                                                                                           s0
;                                                                                                             .regs.[
;                                                                                                             3
;                                                                                                           ] +
;                                                                                                           1
;                                                                                                         ]
;                                                                                                       ) /\
;                                                                                                       (
;                                                                                                         b
;                                                                                                           .mem.[
;                                                                                                           s0
;                                                                                                             .regs.[
;                                                                                                             3
;                                                                                                           ] +
;                                                                                                           22
;                                                                                                         ] ==
;                                                                                                         s0
;                                                                                                           .mem.[
;                                                                                                           s0
;                                                                                                             .regs.[
;                                                                                                             3
;                                                                                                           ] +
;                                                                                                           2
;                                                                                                         ]
;                                                                                                       )
;                                                                                                   ))
;                                                                                           ))))))))))
;                                                   )))))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let lemma_copy`

(push) ;; push{0

; <fuel='1' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel ZFuel))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_a766ba25747e5f65d9110aeed34306a4)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(136,42-145,4)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(137,18-145,4)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x2
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(138,17-138,27)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Asm1.state)

;; def=Asm1.fst(72,9-72,15); use=Asm1.fst(138,17-138,27)
(= @x1
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(138,17-138,27)
(and (implies 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(138,17-138,27)
(not 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(138,17-138,27)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
(Asm1.copy Dummy_value)))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(138,17-138,27)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(138,17-138,27)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.list Asm1.ins))

;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(138,17-138,27)
(= (Asm1.copy Dummy_value)
(Prims.Cons Asm1.ins
@x4
@x5))


;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(138,17-138,27)
(not 
;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(138,17-138,27)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x4))
)
)
label_2)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))

(implies 
;; def=Asm1.fst(119,8-127,32); use=Asm1.fst(138,31-138,33)
(and 
;; def=Asm1.fst(119,8-119,22); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (Asm1.valid_state @x0))


;; def=Asm1.fst(122,12-122,30); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
0))))


;; def=Asm1.fst(123,12-123,30); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
1))))


;; def=Asm1.fst(124,12-124,30); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
2))))


;; def=Asm1.fst(125,12-125,31); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
20))))


;; def=Asm1.fst(126,12-126,31); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
21))))


;; def=Asm1.fst(127,12-127,31); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
22))))
)


;; def=Asm1.fst(66,8-70,66); use=Asm1.fst(138,31-138,33)
(and 
;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(138,31-138,33)
(or label_3

;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (Asm1.valid_state @x0))
)

(let ((@lb1 (Asm1.copy Dummy_value)))
(ite (and (is-Prims.Cons @lb1)
(is-Asm1.ILoad (Prims.Cons_hd @lb1)))

;; def=Asm1.fst(68,12-70,52); use=Asm1.fst(138,31-138,33)
(and 
;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(138,31-138,33)
(or label_4

;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lDst (Prims.Cons_hd @lb1))))
)


;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(138,31-138,33)
(or label_5

;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lSrc (Prims.Cons_hd @lb1))))
)


;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(138,31-138,33)
(or label_6

;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(138,31-138,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(Asm1.ILoad_lSrc (Prims.Cons_hd @lb1))))
(BoxInt_proj_0 (Asm1.ILoad_lOffset (Prims.Cons_hd @lb1)))))))
)
)

label_7)))
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Tm_refine_a766ba25747e5f65d9110aeed34306a4)

;; def=Asm1.fst(65,30-118,18); use=Asm1.fst(136,42-145,4)
(= @x0
@x1)
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x0))

;; def=Asm1.fst(71,6-138,33); use=Asm1.fst(138,17-138,33)
(= (Asm1.lemma_load (Asm1.copy Dummy_value)
@x0)
@x2)
)

;; def=Prims.fst(356,2-356,58); use=Asm1.fst(136,42-145,4)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Tm_refine_4185fbd0490c35b112c0e16227dcbd49 @x0))

;; def=Prims.fst(356,26-356,41); use=Asm1.fst(136,42-145,4)
(= @x3
(Asm1.lemma_load (Asm1.copy Dummy_value)
@x0))


;; def=Asm1.fst(138,7-138,33); use=Asm1.fst(138,7-138,33)
(= (Asm1.lemma_load (Asm1.copy Dummy_value)
@x0)
@x3)
)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(Prims.list Asm1.ins))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Asm1.state)

;; def=Asm1.fst(138,7-138,13); use=Asm1.fst(138,7-138,13)
(= (Asm1.lemma_load (Asm1.copy Dummy_value)
@x0)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x4
@x5))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(136,42-145,4)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(138,36-145,4)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x7
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(139,17-139,27)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Asm1.state)

;; def=Asm1.fst(72,9-72,15); use=Asm1.fst(139,17-139,27)
(= @x6
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x7
@x8))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(139,17-139,27)
(and (implies 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(139,17-139,27)
(not 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(139,17-139,27)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x4))
)

label_8)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(139,17-139,27)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(139,17-139,27)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Prims.list Asm1.ins))

;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(139,17-139,27)
(= @x4
(Prims.Cons Asm1.ins
@x9
@x10))


;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(139,17-139,27)
(not 
;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(139,17-139,27)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x9))
)
)
label_9)
 
;;no pats
:qid @query.13))
)
 
;;no pats
:qid @query.12))
)
)
 
;;no pats
:qid @query.11))
)
 
;;no pats
:qid @query.10))


;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(139,31-139,33)
(or label_10

;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(139,31-139,33)
(BoxBool_proj_0 (Asm1.valid_state @x5))
)

(let ((@lb6 @x4))
(ite (and (is-Prims.Cons @lb6)
(is-Asm1.ILoad (Prims.Cons_hd @lb6)))

;; def=Asm1.fst(68,12-70,52); use=Asm1.fst(139,31-139,33)
(and 
;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(139,31-139,33)
(or label_11

;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(139,31-139,33)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lDst (Prims.Cons_hd @lb6))))
)


;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(139,31-139,33)
(or label_12

;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(139,31-139,33)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lSrc (Prims.Cons_hd @lb6))))
)


;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(139,31-139,33)
(or label_13

;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(139,31-139,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x5))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x5))
(Asm1.ILoad_lSrc (Prims.Cons_hd @lb6))))
(BoxInt_proj_0 (Asm1.ILoad_lOffset (Prims.Cons_hd @lb6)))))))
)
)

label_14))

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Asm1.state)

;; def=Asm1.fst(65,30-138,13); use=Asm1.fst(136,42-145,4)
(= @x5
@x6)
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x4
@x5))

;; def=Asm1.fst(71,6-139,33); use=Asm1.fst(139,17-139,33)
(= (Asm1.lemma_load @x4
@x5)
@x7)
)

;; def=Prims.fst(356,2-356,58); use=Asm1.fst(136,42-145,4)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x4
@x5))

;; def=Prims.fst(356,26-356,41); use=Asm1.fst(136,42-145,4)
(= @x8
(Asm1.lemma_load @x4
@x5))


;; def=Asm1.fst(139,7-139,33); use=Asm1.fst(139,7-139,33)
(= (Asm1.lemma_load @x4
@x5)
@x8)
)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(Prims.list Asm1.ins))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Asm1.state)

;; def=Asm1.fst(139,7-139,13); use=Asm1.fst(139,7-139,13)
(= (Asm1.lemma_load @x4
@x5)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x9
@x10))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(136,42-145,4)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(139,36-145,4)
(forall ((@x11 Term) (@x12 Term))
 (! (implies (and (HasType @x11
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x12
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(140,17-140,27)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Asm1.state)

;; def=Asm1.fst(72,9-72,15); use=Asm1.fst(140,17-140,27)
(= @x11
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x12
@x13))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(140,17-140,27)
(and (implies 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(140,17-140,27)
(not 
;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(140,17-140,27)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x9))
)

label_15)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(140,17-140,27)
(forall ((@x14 Term))
 (! (implies (HasType @x14
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(140,17-140,27)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Prims.list Asm1.ins))

;; def=Asm1.fst(73,8-73,16); use=Asm1.fst(140,17-140,27)
(= @x9
(Prims.Cons Asm1.ins
@x14
@x15))


;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(140,17-140,27)
(not 
;; def=Asm1.fst(74,8-74,28); use=Asm1.fst(140,17-140,27)
(BoxBool_proj_0 (Asm1.uu___is_ILoad @x14))
)
)
label_16)
 
;;no pats
:qid @query.22))
)
 
;;no pats
:qid @query.21))
)
)
 
;;no pats
:qid @query.20))
)
 
;;no pats
:qid @query.19))


;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(140,31-140,33)
(or label_17

;; def=Asm1.fst(66,8-66,24); use=Asm1.fst(140,31-140,33)
(BoxBool_proj_0 (Asm1.valid_state @x10))
)

(let ((@lb11 @x9))
(ite (and (is-Prims.Cons @lb11)
(is-Asm1.ILoad (Prims.Cons_hd @lb11)))

;; def=Asm1.fst(68,12-70,52); use=Asm1.fst(140,31-140,33)
(and 
;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(140,31-140,33)
(or label_18

;; def=Asm1.fst(68,12-68,25); use=Asm1.fst(140,31-140,33)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lDst (Prims.Cons_hd @lb11))))
)


;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(140,31-140,33)
(or label_19

;; def=Asm1.fst(69,12-69,25); use=Asm1.fst(140,31-140,33)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.ILoad_lSrc (Prims.Cons_hd @lb11))))
)


;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(140,31-140,33)
(or label_20

;; def=Asm1.fst(70,12-70,52); use=Asm1.fst(140,31-140,33)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x10))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x10))
(Asm1.ILoad_lSrc (Prims.Cons_hd @lb11))))
(BoxInt_proj_0 (Asm1.ILoad_lOffset (Prims.Cons_hd @lb11)))))))
)
)

label_21))

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Asm1.state)

;; def=Asm1.fst(65,30-139,13); use=Asm1.fst(136,42-145,4)
(= @x10
@x11)
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x9
@x10))

;; def=Asm1.fst(71,6-140,33); use=Asm1.fst(140,17-140,33)
(= (Asm1.lemma_load @x9
@x10)
@x12)
)

;; def=Prims.fst(356,2-356,58); use=Asm1.fst(136,42-145,4)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374 @x9
@x10))

;; def=Prims.fst(356,26-356,41); use=Asm1.fst(136,42-145,4)
(= @x13
(Asm1.lemma_load @x9
@x10))


;; def=Asm1.fst(140,7-140,33); use=Asm1.fst(140,7-140,33)
(= (Asm1.lemma_load @x9
@x10)
@x13)
)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(Prims.list Asm1.ins))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Asm1.state)

;; def=Asm1.fst(140,7-140,13); use=Asm1.fst(140,7-140,13)
(= (Asm1.lemma_load @x9
@x10)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x14
@x15))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(136,42-145,4)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(140,36-145,4)
(forall ((@x16 Term) (@x17 Term))
 (! (implies (and (HasType @x16
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x17
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(141,17-141,28)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Asm1.state)

;; def=Asm1.fst(91,9-91,15); use=Asm1.fst(141,17-141,28)
(= @x16
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x17
@x18))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(141,17-141,28)
(and (implies 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(141,17-141,28)
(not 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(141,17-141,28)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x14))
)

label_22)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(141,17-141,28)
(forall ((@x19 Term))
 (! (implies (HasType @x19
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(141,17-141,28)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(Prims.list Asm1.ins))

;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(141,17-141,28)
(= @x14
(Prims.Cons Asm1.ins
@x19
@x20))


;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(141,17-141,28)
(not 
;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(141,17-141,28)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x19))
)
)
label_23)
 
;;no pats
:qid @query.31))
)
 
;;no pats
:qid @query.30))
)
)
 
;;no pats
:qid @query.29))
)
 
;;no pats
:qid @query.28))


;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(141,32-141,34)
(or label_24

;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(141,32-141,34)
(BoxBool_proj_0 (Asm1.valid_state @x15))
)

(let ((@lb16 @x14))
(ite (and (is-Prims.Cons @lb16)
(is-Asm1.IStore (Prims.Cons_hd @lb16)))

;; def=Asm1.fst(87,11-89,51); use=Asm1.fst(141,32-141,34)
(and 
;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(141,32-141,34)
(or label_25

;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(141,32-141,34)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sDst (Prims.Cons_hd @lb16))))
)


;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(141,32-141,34)
(or label_26

;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(141,32-141,34)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sSrc (Prims.Cons_hd @lb16))))
)


;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(141,32-141,34)
(or label_27

;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(141,32-141,34)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x15))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x15))
(Asm1.IStore_sDst (Prims.Cons_hd @lb16))))
(BoxInt_proj_0 (Asm1.IStore_sOffset (Prims.Cons_hd @lb16)))))))
)
)

label_28))

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Asm1.state)

;; def=Asm1.fst(84,31-140,13); use=Asm1.fst(136,42-145,4)
(= @x15
@x16)
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x14
@x15))

;; def=Asm1.fst(90,6-141,34); use=Asm1.fst(141,17-141,34)
(= (Asm1.lemma_store @x14
@x15)
@x17)
)

;; def=Prims.fst(356,2-356,58); use=Asm1.fst(136,42-145,4)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x14
@x15))

;; def=Prims.fst(356,26-356,41); use=Asm1.fst(136,42-145,4)
(= @x18
(Asm1.lemma_store @x14
@x15))


;; def=Asm1.fst(141,7-141,34); use=Asm1.fst(141,7-141,34)
(= (Asm1.lemma_store @x14
@x15)
@x18)
)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x19 Term))
 (! (implies (HasType @x19
(Prims.list Asm1.ins))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
Asm1.state)

;; def=Asm1.fst(141,7-141,13); use=Asm1.fst(141,7-141,13)
(= (Asm1.lemma_store @x14
@x15)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x19
@x20))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(136,42-145,4)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(141,37-145,4)
(forall ((@x21 Term) (@x22 Term))
 (! (implies (and (HasType @x21
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x22
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(142,17-142,28)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
Asm1.state)

;; def=Asm1.fst(91,9-91,15); use=Asm1.fst(142,17-142,28)
(= @x21
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x22
@x23))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(142,17-142,28)
(and (implies 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(142,17-142,28)
(not 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(142,17-142,28)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x19))
)

label_29)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(142,17-142,28)
(forall ((@x24 Term))
 (! (implies (HasType @x24
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(142,17-142,28)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
(Prims.list Asm1.ins))

;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(142,17-142,28)
(= @x19
(Prims.Cons Asm1.ins
@x24
@x25))


;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(142,17-142,28)
(not 
;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(142,17-142,28)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x24))
)
)
label_30)
 
;;no pats
:qid @query.40))
)
 
;;no pats
:qid @query.39))
)
)
 
;;no pats
:qid @query.38))
)
 
;;no pats
:qid @query.37))


;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(142,32-142,34)
(or label_31

;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(142,32-142,34)
(BoxBool_proj_0 (Asm1.valid_state @x20))
)

(let ((@lb21 @x19))
(ite (and (is-Prims.Cons @lb21)
(is-Asm1.IStore (Prims.Cons_hd @lb21)))

;; def=Asm1.fst(87,11-89,51); use=Asm1.fst(142,32-142,34)
(and 
;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(142,32-142,34)
(or label_32

;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(142,32-142,34)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sDst (Prims.Cons_hd @lb21))))
)


;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(142,32-142,34)
(or label_33

;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(142,32-142,34)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sSrc (Prims.Cons_hd @lb21))))
)


;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(142,32-142,34)
(or label_34

;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(142,32-142,34)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x20))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x20))
(Asm1.IStore_sDst (Prims.Cons_hd @lb21))))
(BoxInt_proj_0 (Asm1.IStore_sOffset (Prims.Cons_hd @lb21)))))))
)
)

label_35))

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
Asm1.state)

;; def=Asm1.fst(84,31-141,13); use=Asm1.fst(136,42-145,4)
(= @x20
@x21)
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x19
@x20))

;; def=Asm1.fst(90,6-142,34); use=Asm1.fst(142,17-142,34)
(= (Asm1.lemma_store @x19
@x20)
@x22)
)

;; def=Prims.fst(356,2-356,58); use=Asm1.fst(136,42-145,4)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x19
@x20))

;; def=Prims.fst(356,26-356,41); use=Asm1.fst(136,42-145,4)
(= @x23
(Asm1.lemma_store @x19
@x20))


;; def=Asm1.fst(142,7-142,34); use=Asm1.fst(142,7-142,34)
(= (Asm1.lemma_store @x19
@x20)
@x23)
)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x24 Term))
 (! (implies (HasType @x24
(Prims.list Asm1.ins))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
Asm1.state)

;; def=Asm1.fst(142,7-142,13); use=Asm1.fst(142,7-142,13)
(= (Asm1.lemma_store @x19
@x20)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x24
@x25))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(136,42-145,4)
(and 
;; def=dummy(0,0-0,0); use=Asm1.fst(142,37-145,4)
(forall ((@x26 Term) (@x27 Term))
 (! (implies (and (HasType @x26
(FStar.Pervasives.Native.tuple2 (Prims.list Asm1.ins)
Asm1.state))
(HasType @x27
(Prims.list Asm1.ins)))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(143,17-143,28)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
Asm1.state)

;; def=Asm1.fst(91,9-91,15); use=Asm1.fst(143,17-143,28)
(= @x26
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x27
@x28))
)

;; def=Prims.fst(459,77-459,89); use=Asm1.fst(143,17-143,28)
(and (implies 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(143,17-143,28)
(not 
;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(143,17-143,28)
(BoxBool_proj_0 (Prims.uu___is_Cons Asm1.ins
@x24))
)

label_36)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(143,17-143,28)
(forall ((@x29 Term))
 (! (implies (HasType @x29
Asm1.ins)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(143,17-143,28)
(forall ((@x30 Term))
 (! (implies (and (HasType @x30
(Prims.list Asm1.ins))

;; def=Asm1.fst(92,8-92,16); use=Asm1.fst(143,17-143,28)
(= @x24
(Prims.Cons Asm1.ins
@x29
@x30))


;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(143,17-143,28)
(not 
;; def=Asm1.fst(93,8-93,29); use=Asm1.fst(143,17-143,28)
(BoxBool_proj_0 (Asm1.uu___is_IStore @x29))
)
)
label_37)
 
;;no pats
:qid @query.49))
)
 
;;no pats
:qid @query.48))
)
)
 
;;no pats
:qid @query.47))
)
 
;;no pats
:qid @query.46))


;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(143,32-143,34)
(or label_38

;; def=Asm1.fst(85,8-85,24); use=Asm1.fst(143,32-143,34)
(BoxBool_proj_0 (Asm1.valid_state @x25))
)

(let ((@lb26 @x24))
(ite (and (is-Prims.Cons @lb26)
(is-Asm1.IStore (Prims.Cons_hd @lb26)))

;; def=Asm1.fst(87,11-89,51); use=Asm1.fst(143,32-143,34)
(and 
;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(143,32-143,34)
(or label_39

;; def=Asm1.fst(87,11-87,24); use=Asm1.fst(143,32-143,34)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sDst (Prims.Cons_hd @lb26))))
)


;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(143,32-143,34)
(or label_40

;; def=Asm1.fst(88,11-88,24); use=Asm1.fst(143,32-143,34)
(BoxBool_proj_0 (Asm1.valid_reg (Asm1.IStore_sSrc (Prims.Cons_hd @lb26))))
)


;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(143,32-143,34)
(or label_41

;; def=Asm1.fst(89,11-89,51); use=Asm1.fst(143,32-143,34)
(BoxBool_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.contains@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x25))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x25))
(Asm1.IStore_sDst (Prims.Cons_hd @lb26))))
(BoxInt_proj_0 (Asm1.IStore_sOffset (Prims.Cons_hd @lb26)))))))
)
)

label_42))

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
Asm1.state)

;; def=Asm1.fst(84,31-142,13); use=Asm1.fst(136,42-145,4)
(= @x25
@x26)
)

;; def=Prims.fst(451,66-451,102); use=Asm1.fst(136,42-145,4)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x24
@x25))

;; def=Asm1.fst(90,6-143,34); use=Asm1.fst(143,17-143,34)
(= (Asm1.lemma_store @x24
@x25)
@x27)
)

;; def=Prims.fst(356,2-356,58); use=Asm1.fst(136,42-145,4)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
(Tm_refine_2d0e4143b34a89d925e715c163c112f4 @x24
@x25))

;; def=Prims.fst(356,26-356,41); use=Asm1.fst(136,42-145,4)
(= @x28
(Asm1.lemma_store @x24
@x25))


;; def=Asm1.fst(143,7-143,34); use=Asm1.fst(143,7-143,34)
(= (Asm1.lemma_store @x24
@x25)
@x28)
)

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x29 Term))
 (! (implies (HasType @x29
(Prims.list Asm1.ins))

;; def=Prims.fst(413,99-413,120); use=Asm1.fst(136,42-145,4)
(forall ((@x30 Term))
 (! (implies (and (HasType @x30
Asm1.state)

;; def=Asm1.fst(143,7-143,13); use=Asm1.fst(143,7-143,13)
(= (Asm1.lemma_store @x24
@x25)
(FStar.Pervasives.Native.Mktuple2 (Prims.list Asm1.ins)
Asm1.state
@x29
@x30))
)

;; def=Prims.fst(441,36-441,97); use=Asm1.fst(144,2-144,13)
(forall ((@x31 Term))
 (! (implies (and (HasType @x31
Prims.unit)

;; def=Asm1.fst(105,13-105,42); use=Asm1.fst(144,2-144,13)
(= (Asm1.eval_block (Prims.Nil Asm1.ins)
@x30)
(FStar.Pervasives.Native.Some Asm1.state
@x30))
)

;; def=Asm1.fst(129,8-136,38); use=Asm1.fst(145,2-145,4)
(and 
;; def=Asm1.fst(129,8-129,22); use=Asm1.fst(145,2-145,4)
(or label_43

;; def=Asm1.fst(129,8-129,22); use=Asm1.fst(145,2-145,4)
(BoxBool_proj_0 (Asm1.valid_state @x30))
)


;; def=Asm1.fst(130,8-130,37); use=Asm1.fst(145,2-145,4)
(or label_44

;; def=Asm1.fst(130,8-130,37); use=Asm1.fst(145,2-145,4)
(= (FStar.Pervasives.Native.Some Asm1.state
@x30)
(Asm1.eval_block (Asm1.copy Dummy_value)
@x0))
)


;; def=Asm1.fst(134,12-134,37); use=Asm1.fst(145,2-145,4)
(or label_45

;; def=Asm1.fst(134,12-134,37); use=Asm1.fst(145,2-145,4)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x30))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
20)))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
0))))
)


;; def=Asm1.fst(135,12-135,37); use=Asm1.fst(145,2-145,4)
(or label_46

;; def=Asm1.fst(135,12-135,37); use=Asm1.fst(145,2-145,4)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x30))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
21)))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
1))))
)


;; def=Asm1.fst(136,12-136,37); use=Asm1.fst(145,2-145,4)
(or label_47

;; def=Asm1.fst(136,12-136,37); use=Asm1.fst(145,2-145,4)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x30))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
22)))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
Prims.int)
Prims.int)
(Asm1.__proj__Mkstate__item__mem @x0))
(BoxInt (+ (BoxInt_proj_0 (ApplyTT (ApplyTT (ApplyTT (ApplyTT Asm1.op_String_Access@tok
(Asm1.reg Dummy_value))
Prims.int)
(Asm1.__proj__Mkstate__item__regs @x0))
(BoxInt 3)))
2))))
)
)
)
 
;;no pats
:qid @query.55))
)
 
;;no pats
:qid @query.54))
)
 
;;no pats
:qid @query.53))
)
 
;;no pats
:qid @query.52))
)
 
;;no pats
:qid @query.51))
)
 
;;no pats
:qid @query.50))
)
)
 
;;no pats
:qid @query.45))
)
 
;;no pats
:qid @query.44))
)
 
;;no pats
:qid @query.43))
)
 
;;no pats
:qid @query.42))
)
 
;;no pats
:qid @query.41))
)
)
 
;;no pats
:qid @query.36))
)
 
;;no pats
:qid @query.35))
)
 
;;no pats
:qid @query.34))
)
 
;;no pats
:qid @query.33))
)
 
;;no pats
:qid @query.32))
)
)
 
;;no pats
:qid @query.27))
)
 
;;no pats
:qid @query.26))
)
 
;;no pats
:qid @query.25))
)
 
;;no pats
:qid @query.24))
)
 
;;no pats
:qid @query.23))
)
)
 
;;no pats
:qid @query.18))
)
 
;;no pats
:qid @query.17))
)
 
;;no pats
:qid @query.16))
)
 
;;no pats
:qid @query.15))
)
 
;;no pats
:qid @query.14))
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
)
)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 2723280)
(echo "<result>")
(check-sat)
(echo "</result>")
(set-option :rlimit 0)
(echo "<reason-unknown>")
(get-info :reason-unknown)
(echo "</reason-unknown>")
(echo "<unsat-core>")
(get-unsat-core)
(echo "</unsat-core>")
(echo "<labels>")
(echo "label_47")
(eval label_47)
(echo "label_46")
(eval label_46)
(echo "label_45")
(eval label_45)
(echo "label_44")
(eval label_44)
(echo "label_43")
(eval label_43)
(echo "label_42")
(eval label_42)
(echo "label_41")
(eval label_41)
(echo "label_40")
(eval label_40)
(echo "label_39")
(eval label_39)
(echo "label_38")
(eval label_38)
(echo "label_37")
(eval label_37)
(echo "label_36")
(eval label_36)
(echo "label_35")
(eval label_35)
(echo "label_34")
(eval label_34)
(echo "label_33")
(eval label_33)
(echo "label_32")
(eval label_32)
(echo "label_31")
(eval label_31)
(echo "label_30")
(eval label_30)
(echo "label_29")
(eval label_29)
(echo "label_28")
(eval label_28)
(echo "label_27")
(eval label_27)
(echo "label_26")
(eval label_26)
(echo "label_25")
(eval label_25)
(echo "label_24")
(eval label_24)
(echo "label_23")
(eval label_23)
(echo "label_22")
(eval label_22)
(echo "label_21")
(eval label_21)
(echo "label_20")
(eval label_20)
(echo "label_19")
(eval label_19)
(echo "label_18")
(eval label_18)
(echo "label_17")
(eval label_17)
(echo "label_16")
(eval label_16)
(echo "label_15")
(eval label_15)
(echo "label_14")
(eval label_14)
(echo "label_13")
(eval label_13)
(echo "label_12")
(eval label_12)
(echo "label_11")
(eval label_11)
(echo "label_10")
(eval label_10)
(echo "label_9")
(eval label_9)
(echo "label_8")
(eval label_8)
(echo "label_7")
(eval label_7)
(echo "label_6")
(eval label_6)
(echo "label_5")
(eval label_5)
(echo "label_4")
(eval label_4)
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Asm1.lemma_copy, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_Asm1.eval_block.fuel_instrumented, @fuel_irrelevance_Asm1.eval_block.fuel_instrumented, @query, Asm1_interpretation_Tm_arrow_9c859e8a1c6526d3222abd12b06f56e6, Asm1_interpretation_Tm_arrow_9f4db3187888091a832b0a323f1b9876, Asm1_interpretation_Tm_arrow_e76ad7ea1b49a51ebc304bcd6e344d98, Asm1_interpretation_Tm_arrow_ecbe25e460c8c11eb9fd7d4047b093d0, Asm1_pretyping_8d2a371ced49b74ad42c2d4f031a5095, FStar.Map_interpretation_Tm_arrow_28a168f8d4c6d78564a214862be72b08, FStar.Map_interpretation_Tm_arrow_32b461b2324f01c7a6bc6b577725566d, Prims_pretyping_ae567c2fb75be05905677af440075565, bool_inversion, bool_typing, constructor_distinct_Asm1.ILoad, constructor_distinct_Asm1.IStore, constructor_distinct_FStar.Pervasives.Native.Some, constructor_distinct_Prims.Cons, disc_equation_Asm1.ILoad, disc_equation_Asm1.IStore, disc_equation_Prims.Cons, equation_Asm1.contains, equation_Asm1.copy, equation_Asm1.map, equation_Asm1.op_String_Access, equation_Asm1.op_String_Assignment, equation_Asm1.reg, equation_Asm1.valid_reg, equation_Asm1.valid_state, equation_Prims.eqtype, equation_with_fuel_Asm1.eval_block.fuel_instrumented, fuel_guarded_inversion_Asm1.state, function_token_typing_Asm1.op_String_Assignment, function_token_typing_FStar.Map.contains, function_token_typing_FStar.Map.sel, function_token_typing_Prims.__cache_version_number__, int_inversion, int_typing, lemma_FStar.Map.lemma_InDomUpd1, lemma_FStar.Map.lemma_InDomUpd2, lemma_FStar.Map.lemma_SelUpd1, lemma_FStar.Map.lemma_SelUpd2, primitive_Prims.op_AmpAmp, primitive_Prims.op_BarBar, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, proj_equation_Asm1.Mkstate_mem, proj_equation_Asm1.Mkstate_regs, projection_inverse_Asm1.ILoad_lDst, projection_inverse_Asm1.ILoad_lOffset, projection_inverse_Asm1.ILoad_lSrc, projection_inverse_Asm1.IStore_sDst, projection_inverse_Asm1.IStore_sOffset, projection_inverse_Asm1.IStore_sSrc, projection_inverse_Asm1.Mkstate_mem, projection_inverse_Asm1.Mkstate_regs, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_FStar.Pervasives.Native.Some_a, projection_inverse_FStar.Pervasives.Native.Some_v, projection_inverse_Prims.Cons_a, projection_inverse_Prims.Cons_hd, projection_inverse_Prims.Cons_tl, refinement_interpretation_Tm_refine_09c0e6258fadd3d82c4b9e11e8b64374, refinement_interpretation_Tm_refine_2d0e4143b34a89d925e715c163c112f4, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_4185fbd0490c35b112c0e16227dcbd49, refinement_interpretation_Tm_refine_a766ba25747e5f65d9110aeed34306a4, token_correspondence_Asm1.contains, token_correspondence_Asm1.op_String_Access, token_correspondence_Asm1.op_String_Assignment, token_correspondence_FStar.Map.contains, token_correspondence_FStar.Map.sel, token_correspondence_FStar.Map.upd, typing_Asm1.__proj__Mkstate__item__mem, typing_Asm1.__proj__Mkstate__item__regs, typing_Asm1.contains, typing_Asm1.op_String_Access, typing_Asm1.valid_reg, typing_Asm1.valid_state, typing_FStar.Map.sel, typing_FStar.Map.upd, typing_Prims.int
