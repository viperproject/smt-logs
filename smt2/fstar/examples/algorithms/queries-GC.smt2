
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

(push) ;; push{1

; Internals for GC


; encoding sigelt type GC.color


; <Start encoding type GC.color>

;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.color () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.Unalloc () Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.Unalloc
(declare-fun GC.Unalloc@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.White () Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.White
(declare-fun GC.White@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.Gray () Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.Gray
(declare-fun GC.Gray@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.Black () Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.Black
(declare-fun GC.Black@tok () Term)

; <start constructor GC.color>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.color ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
130)
(= __@x0
GC.color)))

; </end constructor GC.color>


; <start constructor GC.Unalloc>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.Unalloc ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
136)
(= __@x0
GC.Unalloc)))

; </end constructor GC.Unalloc>


; <start constructor GC.White>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.White ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
138)
(= __@x0
GC.White)))

; </end constructor GC.White>


; <start constructor GC.Gray>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.Gray ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
140)
(= __@x0
GC.Gray)))

; </end constructor GC.Gray>


; <start constructor GC.Black>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.Black ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
142)
(= __@x0
GC.Black)))

; </end constructor GC.Black>


; </end encoding type GC.color>


; encoding sigelt assume GC.color__uu___haseq


; <Start encoding assume GC.color__uu___haseq>


; </end encoding assume GC.color__uu___haseq>


; encoding sigelt val GC.uu___is_Unalloc


; <Start encoding val GC.uu___is_Unalloc>

(declare-fun GC.uu___is_Unalloc (Term) Term)
;;;;;;;;;;;;;;;;projectee: color -> Prims.bool
(declare-fun Tm_arrow_5bbe7b32eaab9cbc0cbe9369e0d9d1e8 () Term)
(declare-fun GC.uu___is_Unalloc@tok () Term)

; </end encoding val GC.uu___is_Unalloc>


; encoding sigelt let uu___is_Unalloc


; <Skipped let uu___is_Unalloc/>


; encoding sigelt val GC.uu___is_White


; <Start encoding val GC.uu___is_White>

(declare-fun GC.uu___is_White (Term) Term)

(declare-fun GC.uu___is_White@tok () Term)

; </end encoding val GC.uu___is_White>


; encoding sigelt let uu___is_White


; <Skipped let uu___is_White/>


; encoding sigelt val GC.uu___is_Gray


; <Start encoding val GC.uu___is_Gray>

(declare-fun GC.uu___is_Gray (Term) Term)

(declare-fun GC.uu___is_Gray@tok () Term)

; </end encoding val GC.uu___is_Gray>


; encoding sigelt let uu___is_Gray


; <Skipped let uu___is_Gray/>


; encoding sigelt val GC.uu___is_Black


; <Start encoding val GC.uu___is_Black>

(declare-fun GC.uu___is_Black (Term) Term)

(declare-fun GC.uu___is_Black@tok () Term)

; </end encoding val GC.uu___is_Black>


; encoding sigelt let uu___is_Black


; <Skipped let uu___is_Black/>


; encoding sigelt val GC.mem_lo


; <Start encoding val GC.mem_lo>

(declare-fun GC.mem_lo (Dummy_sort) Term)
(declare-fun Tm_refine_6faaaf327b122a7307a5bdd1f21b4925 () Term)


; </end encoding val GC.mem_lo>


; encoding sigelt val GC.mem_hi


; <Start encoding val GC.mem_hi>

(declare-fun GC.mem_hi (Dummy_sort) Term)
(declare-fun Tm_refine_ebe8d554029941ff856db931e680cc38 () Term)


; </end encoding val GC.mem_hi>


; encoding sigelt let is_mem_addr


; <Start encoding let is_mem_addr>

(declare-fun GC.is_mem_addr (Term) Term)
;;;;;;;;;;;;;;;;i: Prims.int -> Prims.bool
(declare-fun Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1 () Term)
(declare-fun GC.is_mem_addr@tok () Term)

; </end encoding let is_mem_addr>


; encoding sigelt type GC.field


; <Start encoding type GC.field>

;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.field () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.F1 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.F1
(declare-fun GC.F1@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.F2 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.F2
(declare-fun GC.F2@tok () Term)

; <start constructor GC.field>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.field ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
175)
(= __@x0
GC.field)))

; </end constructor GC.field>


; <start constructor GC.F1>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.F1 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
181)
(= __@x0
GC.F1)))

; </end constructor GC.F1>


; <start constructor GC.F2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.F2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
183)
(= __@x0
GC.F2)))

; </end constructor GC.F2>


; </end encoding type GC.field>


; encoding sigelt assume GC.field__uu___haseq


; <Start encoding assume GC.field__uu___haseq>


; </end encoding assume GC.field__uu___haseq>


; encoding sigelt val GC.uu___is_F1


; <Start encoding val GC.uu___is_F1>

(declare-fun GC.uu___is_F1 (Term) Term)
;;;;;;;;;;;;;;;;projectee: field -> Prims.bool
(declare-fun Tm_arrow_6505cbf65b77f8c474fb510c069fb699 () Term)
(declare-fun GC.uu___is_F1@tok () Term)

; </end encoding val GC.uu___is_F1>


; encoding sigelt let uu___is_F1


; <Skipped let uu___is_F1/>


; encoding sigelt val GC.uu___is_F2


; <Start encoding val GC.uu___is_F2>

(declare-fun GC.uu___is_F2 (Term) Term)

(declare-fun GC.uu___is_F2@tok () Term)

; </end encoding val GC.uu___is_F2>


; encoding sigelt let uu___is_F2


; <Skipped let uu___is_F2/>


; encoding sigelt val GC.abs_node


; <Start encoding val GC.abs_node>

(declare-fun GC.abs_node (Dummy_sort) Term)



; </end encoding val GC.abs_node>


; encoding sigelt val GC.no_abs


; <Start encoding val GC.no_abs>

(declare-fun GC.no_abs (Dummy_sort) Term)

; </end encoding val GC.no_abs>


; encoding sigelt let valid


; <Start encoding let valid>

(declare-fun GC.valid (Term) Term)
;;;;;;;;;;;;;;;;a: abs_node -> Prims.bool
(declare-fun Tm_arrow_a20af6a3391fa8ae94673e5a914e70b5 () Term)
(declare-fun GC.valid@tok () Term)

; </end encoding let valid>


; encoding sigelt let valid_node


; <Start encoding let valid_node>

(declare-fun GC.valid_node () Term)
(declare-fun Tm_refine_72a1ba9879d65a2f89d7f272288d8d45 () Term)

; </end encoding let valid_node>


; encoding sigelt let mem_addr


; <Start encoding let mem_addr>

(declare-fun GC.mem_addr () Term)
(declare-fun Tm_refine_5248130f0b0d7223b3b6331b13742bec () Term)

; </end encoding let mem_addr>


; encoding sigelt let color_map


; <Start encoding let color_map>

(declare-fun GC.color_map () Term)
;;;;;;;;;;;;;;;;_: mem_addr -> color
(declare-fun Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5 () Term)

; </end encoding let color_map>


; encoding sigelt let abs_map


; <Start encoding let abs_map>

(declare-fun GC.abs_map () Term)
;;;;;;;;;;;;;;;;_: mem_addr -> abs_node
(declare-fun Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346 () Term)

; </end encoding let abs_map>


; encoding sigelt let field_map


; <Start encoding let field_map>

(declare-fun GC.field_map () Term)
;;;;;;;;;;;;;;;;_: mem_addr & field -> mem_addr
(declare-fun Tm_arrow_5d846e8dc8d50e58c30aadcda1836791 () Term)

; </end encoding let field_map>


; encoding sigelt let abs_field_map


; <Start encoding let abs_field_map>

(declare-fun GC.abs_field_map () Term)
;;;;;;;;;;;;;;;;_: abs_node & field -> abs_node
(declare-fun Tm_arrow_305f25c9c866bff8516b56dc030d0f8c () Term)

; </end encoding let abs_field_map>


; encoding sigelt let trigger


; <Start encoding let trigger>

(declare-fun GC.trigger (Term) Term)
;;;;;;;;;;;;;;;;i: Prims.int -> Prims.logical
(declare-fun Tm_arrow_18523044355bf6a573deed3112c71d2b () Term)
(declare-fun GC.trigger@tok () Term)

; </end encoding let trigger>

;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.__cache_version_number__; Namespace Prims
(assert (! (HasType Prims.__cache_version_number__
Prims.int)
:named function_token_typing_Prims.__cache_version_number__))
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
;;; Fact-ids: Name GC.valid; Namespace GC
(assert (! 
;; def=GC.fst(30,4-30,9); use=GC.fst(30,4-30,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(GC.abs_node Dummy_value))
(HasType (GC.valid @x0)
Prims.bool))
 

:pattern ((GC.valid @x0))
:qid typing_GC.valid))

:named typing_GC.valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.trigger; Namespace GC
(assert (! 
;; def=GC.fst(40,5-40,12); use=GC.fst(40,5-40,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)
(HasType (GC.trigger @x0)
Prims.logical))
 

:pattern ((GC.trigger @x0))
:qid typing_GC.trigger))

:named typing_GC.trigger))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.no_abs; Namespace GC
(assert (! 
;; def=GC.fst(29,11-29,17); use=GC.fst(29,11-29,17)
(forall ((@u0 Dummy_sort))
 (! (HasType (GC.no_abs @u0)
(GC.abs_node Dummy_value))
 

:pattern ((GC.no_abs @u0))
:qid typing_GC.no_abs))

:named typing_GC.no_abs))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.mem_lo; Namespace GC
(assert (! 
;; def=GC.fst(20,11-20,17); use=GC.fst(20,11-20,17)
(forall ((@u0 Dummy_sort))
 (! (HasType (GC.mem_lo @u0)
Tm_refine_6faaaf327b122a7307a5bdd1f21b4925)
 

:pattern ((GC.mem_lo @u0))
:qid typing_GC.mem_lo))

:named typing_GC.mem_lo))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.mem_hi; Namespace GC
(assert (! 
;; def=GC.fst(21,11-21,17); use=GC.fst(21,11-21,17)
(forall ((@u0 Dummy_sort))
 (! (HasType (GC.mem_hi @u0)
Tm_refine_ebe8d554029941ff856db931e680cc38)
 

:pattern ((GC.mem_hi @u0))
:qid typing_GC.mem_hi))

:named typing_GC.mem_hi))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.mem_addr; Namespace GC
(assert (! (HasType GC.mem_addr
Tm_type)
:named typing_GC.mem_addr))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.is_mem_addr; Namespace GC
(assert (! 
;; def=GC.fst(22,4-22,15); use=GC.fst(22,4-22,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)
(HasType (GC.is_mem_addr @x0)
Prims.bool))
 

:pattern ((GC.is_mem_addr @x0))
:qid typing_GC.is_mem_addr))

:named typing_GC.is_mem_addr))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.abs_node; Namespace GC
(assert (! 
;; def=GC.fst(28,12-28,20); use=GC.fst(28,12-28,20)
(forall ((@u0 Dummy_sort))
 (! (HasType (GC.abs_node @u0)
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
 

:pattern ((GC.abs_node @u0))
:qid typing_GC.abs_node))

:named typing_GC.abs_node))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.abs_map; Namespace GC
(assert (! (HasType GC.abs_map
Tm_type)
:named typing_GC.abs_map))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name GC.mem_hi; Namespace GC
(assert (! (HasType Tm_refine_ebe8d554029941ff856db931e680cc38
Tm_type)
:named refinement_kinding_Tm_refine_ebe8d554029941ff856db931e680cc38))
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
;;; Fact-ids: Name GC.valid_node; Namespace GC
(assert (! (HasType Tm_refine_72a1ba9879d65a2f89d7f272288d8d45
Tm_type)
:named refinement_kinding_Tm_refine_72a1ba9879d65a2f89d7f272288d8d45))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name GC.mem_lo; Namespace GC
(assert (! (HasType Tm_refine_6faaaf327b122a7307a5bdd1f21b4925
Tm_type)
:named refinement_kinding_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Tm_refine_542f9d4f129664613f2483a6c88bc7c2
Tm_type)
:named refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name GC.mem_addr; Namespace GC
(assert (! (HasType Tm_refine_5248130f0b0d7223b3b6331b13742bec
Tm_type)
:named refinement_kinding_Tm_refine_5248130f0b0d7223b3b6331b13742bec))
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
;;; Fact-ids: Name GC.mem_hi; Namespace GC
(assert (! 
;; def=GC.fst(21,20-21,37); use=GC.fst(21,20-21,37)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_ebe8d554029941ff856db931e680cc38)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=GC.fst(21,26-21,36); use=GC.fst(21,26-21,36)
(< (BoxInt_proj_0 (GC.mem_lo Dummy_value))
(BoxInt_proj_0 @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_ebe8d554029941ff856db931e680cc38))
:qid refinement_interpretation_Tm_refine_ebe8d554029941ff856db931e680cc38))

:named refinement_interpretation_Tm_refine_ebe8d554029941ff856db931e680cc38))
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
;;; Fact-ids: Name GC.valid_node; Namespace GC
(assert (! 
;; def=GC.fst(31,18-31,37); use=GC.fst(31,18-31,37)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_72a1ba9879d65a2f89d7f272288d8d45)
(and (HasTypeFuel @u0
@x1
(GC.abs_node Dummy_value))

;; def=GC.fst(31,29-31,36); use=GC.fst(31,29-31,36)
(BoxBool_proj_0 (GC.valid @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_72a1ba9879d65a2f89d7f272288d8d45))
:qid refinement_interpretation_Tm_refine_72a1ba9879d65a2f89d7f272288d8d45))

:named refinement_interpretation_Tm_refine_72a1ba9879d65a2f89d7f272288d8d45))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name GC.mem_lo; Namespace GC
(assert (! 
;; def=GC.fst(20,20-20,32); use=GC.fst(20,20-20,32)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_6faaaf327b122a7307a5bdd1f21b4925)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=GC.fst(20,26-20,31); use=GC.fst(20,26-20,31)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_6faaaf327b122a7307a5bdd1f21b4925))
:qid refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925))

:named refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925))
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
;;; Fact-ids: Name GC.mem_addr; Namespace GC
(assert (! 
;; def=GC.fst(33,17-33,37); use=GC.fst(33,17-33,37)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_5248130f0b0d7223b3b6331b13742bec)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=GC.fst(33,23-33,36); use=GC.fst(33,23-33,36)
(BoxBool_proj_0 (GC.is_mem_addr @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_5248130f0b0d7223b3b6331b13742bec))
:qid refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec))

:named refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec))
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
;;; Fact-ids: Name Prims.op_disEquality; Namespace Prims
(assert (! 
;; def=Prims.fst(594,4-594,18); use=Prims.fst(594,4-594,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.op_disEquality @x0
@x1
@x2)
(BoxBool (not (= @x1
@x2))))
 

:pattern ((Prims.op_disEquality @x0
@x1
@x2))
:qid primitive_Prims.op_disEquality))

:named primitive_Prims.op_disEquality))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346
;;; Fact-ids: Name GC.abs_map; Namespace GC
(assert (! (HasType Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346
Tm_type)
:named kinding_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_ebe8d554029941ff856db931e680cc38
;;; Fact-ids: Name GC.mem_hi; Namespace GC
(assert (! (iff (Valid (Prims.hasEq Tm_refine_ebe8d554029941ff856db931e680cc38))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_ebe8d554029941ff856db931e680cc38))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_72a1ba9879d65a2f89d7f272288d8d45
;;; Fact-ids: Name GC.valid_node; Namespace GC
(assert (! (iff (Valid (Prims.hasEq Tm_refine_72a1ba9879d65a2f89d7f272288d8d45))
(Valid (Prims.hasEq (GC.abs_node Dummy_value))))
:named haseqTm_refine_72a1ba9879d65a2f89d7f272288d8d45))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6faaaf327b122a7307a5bdd1f21b4925
;;; Fact-ids: Name GC.mem_lo; Namespace GC
(assert (! (iff (Valid (Prims.hasEq Tm_refine_6faaaf327b122a7307a5bdd1f21b4925))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_6faaaf327b122a7307a5bdd1f21b4925))
;;;;;;;;;;;;;;;;haseq for Tm_refine_542f9d4f129664613f2483a6c88bc7c2
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5248130f0b0d7223b3b6331b13742bec
;;; Fact-ids: Name GC.mem_addr; Namespace GC
(assert (! (iff (Valid (Prims.hasEq Tm_refine_5248130f0b0d7223b3b6331b13742bec))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_5248130f0b0d7223b3b6331b13742bec))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.mem_addr; Namespace GC
(assert (! (HasType GC.mem_addr
Tm_type)
:named function_token_typing_GC.mem_addr))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.abs_map; Namespace GC
(assert (! (HasType GC.abs_map
Tm_type)
:named function_token_typing_GC.abs_map))
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
;;;;;;;;;;;;;;;;Equation for GC.valid
;;; Fact-ids: Name GC.valid; Namespace GC
(assert (! 
;; def=GC.fst(30,4-30,9); use=GC.fst(30,4-30,9)
(forall ((@x0 Term))
 (! (= (GC.valid @x0)
(Prims.op_disEquality (GC.abs_node Dummy_value)
@x0
(GC.no_abs Dummy_value)))
 

:pattern ((GC.valid @x0))
:qid equation_GC.valid))

:named equation_GC.valid))
;;;;;;;;;;;;;;;;Equation for GC.trigger
;;; Fact-ids: Name GC.trigger; Namespace GC
(assert (! 
;; def=GC.fst(40,5-40,12); use=GC.fst(40,5-40,12)
(forall ((@x0 Term))
 (! (= (Valid (GC.trigger @x0))

;; def=GC.fst(40,23-40,27); use=GC.fst(40,23-40,27)
true
)
 

:pattern ((GC.trigger @x0))
:qid equation_GC.trigger))

:named equation_GC.trigger))
;;;;;;;;;;;;;;;;Equation for GC.mem_addr
;;; Fact-ids: Name GC.mem_addr; Namespace GC
(assert (! (= GC.mem_addr
Tm_refine_5248130f0b0d7223b3b6331b13742bec)
:named equation_GC.mem_addr))
;;;;;;;;;;;;;;;;Equation for GC.is_mem_addr
;;; Fact-ids: Name GC.is_mem_addr; Namespace GC
(assert (! 
;; def=GC.fst(22,4-22,15); use=GC.fst(22,4-22,15)
(forall ((@x0 Term))
 (! (= (GC.is_mem_addr @x0)
(Prims.op_AmpAmp (Prims.op_LessThanOrEqual (GC.mem_lo Dummy_value)
@x0)
(Prims.op_LessThan @x0
(GC.mem_hi Dummy_value))))
 

:pattern ((GC.is_mem_addr @x0))
:qid equation_GC.is_mem_addr))

:named equation_GC.is_mem_addr))
;;;;;;;;;;;;;;;;Equation for GC.abs_map
;;; Fact-ids: Name GC.abs_map; Namespace GC
(assert (! (= GC.abs_map
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346)
:named equation_GC.abs_map))
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
;;;;;;;;;;;;;;;;Prop-typing for GC.trigger
;;; Fact-ids: Name GC.trigger; Namespace GC
(assert (! 
;; def=GC.fst(40,5-40,12); use=GC.fst(40,5-40,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)
(Valid (Prims.subtype_of (GC.trigger @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.trigger @x0)
Prims.unit))
:qid defn_equation_GC.trigger))

:named defn_equation_GC.trigger))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.abs_map; Namespace GC
(assert (! 
;; def=GC.fst(35,17-35,41); use=GC.fst(35,17-35,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))
:qid GC_pre_typing_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))

:named GC_pre_typing_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346
;;; Fact-ids: Name GC.abs_map; Namespace GC
(assert (! 
;; def=GC.fst(35,17-35,41); use=GC.fst(35,17-35,41)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346)
(and 
;; def=GC.fst(35,17-35,41); use=GC.fst(35,17-35,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)
(HasType (ApplyTT @x0
@x1)
(GC.abs_node Dummy_value)))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))
:qid GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))

:named GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346))
(push) ;; push{2

; Starting query at GC.fst(43,2-49,30)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (to_abs: GC.abs_map).
;   (*  - Could not prove post-condition
; *)
;   forall (i1: GC.mem_addr).
;     (*  - Could not prove post-condition
; *)
;     forall (i2: GC.mem_addr).
;       GC.trigger i1 /\ GC.trigger i2 /\ GC.valid (to_abs i1) /\ GC.valid (to_abs i2) ==>
;       Prims.hasEq GC.mem_addr


; Context: While encoding a query
; While typechecking the top-level declaration `let to_abs_inj`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
GC.abs_map)

;; def=dummy(0,0-0,0); use=GC.fst(43,2-49,30)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)

;; def=dummy(0,0-0,0); use=GC.fst(43,23-49,30)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
GC.mem_addr)

;; def=GC.fst(44,4-44,14); use=GC.fst(44,4-44,14)
(Valid 
;; def=GC.fst(44,4-44,14); use=GC.fst(44,4-44,14)
(GC.trigger @x1)
)


;; def=GC.fst(45,4-45,14); use=GC.fst(45,4-45,14)
(Valid 
;; def=GC.fst(45,4-45,14); use=GC.fst(45,4-45,14)
(GC.trigger @x2)
)


;; def=GC.fst(46,7-46,24); use=GC.fst(46,7-46,24)
(BoxBool_proj_0 (GC.valid (ApplyTT @x0
@x1)))


;; def=GC.fst(47,7-47,24); use=GC.fst(47,7-47,24)
(BoxBool_proj_0 (GC.valid (ApplyTT @x0
@x2)))
)

;; def=Prims.fst(73,23-73,30); use=GC.fst(48,7-48,9)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(48,7-48,9)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(48,7-48,9)
(Prims.hasEq GC.mem_addr)
)
)
)
 
;;no pats
:qid @query.2))
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (GC.to_abs_inj, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_GC.mem_addr, equation_Prims.eqtype, haseqTm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let to_abs_inj


; <Start encoding let to_abs_inj>

(declare-fun GC.to_abs_inj (Term) Term)
;;;;;;;;;;;;;;;;to_abs: abs_map -> Prims.logical
(declare-fun Tm_arrow_6d6ab7d548ec0156d73e6f51bb548c9c () Term)
(declare-fun GC.to_abs_inj@tok () Term)

; </end encoding let to_abs_inj>


; encoding sigelt type GC.gc_state


; <Start encoding type GC.gc_state>

;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.gc_state () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun GC.Mkgc_state (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun GC.Mkgc_state_to_abs (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun GC.Mkgc_state_color (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun GC.Mkgc_state_abs_fields (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun GC.Mkgc_state_fields (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: GC.Mkgc_state
(declare-fun GC.Mkgc_state@tok () Term)
;;;;;;;;;;;;;;;;to_abs: abs_map -> color: color_map -> abs_fields: abs_field_map -> fields: field_map -> gc_state
(declare-fun Tm_arrow_a2e5ac5933966eacafabe78afb45e5d1 () Term)

; <start constructor GC.gc_state>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.gc_state ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
206)
(= __@x0
GC.gc_state)))

; </end constructor GC.gc_state>


; <start constructor GC.Mkgc_state>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-GC.Mkgc_state ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
212)
(= __@x0
(GC.Mkgc_state (GC.Mkgc_state_to_abs __@x0)
(GC.Mkgc_state_color __@x0)
(GC.Mkgc_state_abs_fields __@x0)
(GC.Mkgc_state_fields __@x0)))))

; </end constructor GC.Mkgc_state>


; </end encoding type GC.gc_state>


; encoding sigelt val GC.__proj__Mkgc_state__item__to_abs


; <Start encoding val GC.__proj__Mkgc_state__item__to_abs>

(declare-fun GC.__proj__Mkgc_state__item__to_abs (Term) Term)
;;;;;;;;;;;;;;;;projectee: gc_state -> abs_map
(declare-fun Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c () Term)
(declare-fun GC.__proj__Mkgc_state__item__to_abs@tok () Term)

; </end encoding val GC.__proj__Mkgc_state__item__to_abs>


; encoding sigelt let __proj__Mkgc_state__item__to_abs


; <Skipped let __proj__Mkgc_state__item__to_abs/>


; encoding sigelt val GC.__proj__Mkgc_state__item__color


; <Start encoding val GC.__proj__Mkgc_state__item__color>

(declare-fun GC.__proj__Mkgc_state__item__color (Term) Term)
;;;;;;;;;;;;;;;;projectee: gc_state -> color_map
(declare-fun Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc () Term)
(declare-fun GC.__proj__Mkgc_state__item__color@tok () Term)

; </end encoding val GC.__proj__Mkgc_state__item__color>


; encoding sigelt let __proj__Mkgc_state__item__color


; <Skipped let __proj__Mkgc_state__item__color/>


; encoding sigelt val GC.__proj__Mkgc_state__item__abs_fields


; <Start encoding val GC.__proj__Mkgc_state__item__abs_fields>

(declare-fun GC.__proj__Mkgc_state__item__abs_fields (Term) Term)
;;;;;;;;;;;;;;;;projectee: gc_state -> abs_field_map
(declare-fun Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5 () Term)
(declare-fun GC.__proj__Mkgc_state__item__abs_fields@tok () Term)

; </end encoding val GC.__proj__Mkgc_state__item__abs_fields>


; encoding sigelt let __proj__Mkgc_state__item__abs_fields


; <Skipped let __proj__Mkgc_state__item__abs_fields/>


; encoding sigelt val GC.__proj__Mkgc_state__item__fields


; <Start encoding val GC.__proj__Mkgc_state__item__fields>

(declare-fun GC.__proj__Mkgc_state__item__fields (Term) Term)
;;;;;;;;;;;;;;;;projectee: gc_state -> field_map
(declare-fun Tm_arrow_3e83f5278aec4c2201106bf98084ce36 () Term)
(declare-fun GC.__proj__Mkgc_state__item__fields@tok () Term)

; </end encoding val GC.__proj__Mkgc_state__item__fields>


; encoding sigelt let __proj__Mkgc_state__item__fields


; <Skipped let __proj__Mkgc_state__item__fields/>


; encoding sigelt let ptr_lifts


; <Start encoding let ptr_lifts>

(declare-fun GC.ptr_lifts (Term Term) Term)
;;;;;;;;;;;;;;;;gc_state: gc_state -> ptr: mem_addr -> Type
(declare-fun Tm_arrow_4d33582fa1f753c2627cf0de05a1f530 () Term)
(declare-fun GC.ptr_lifts@tok () Term)

; </end encoding let ptr_lifts>


; encoding sigelt let ptr_lifts_to


; <Start encoding let ptr_lifts_to>

(declare-fun GC.ptr_lifts_to (Term Term Term) Term)
;;;;;;;;;;;;;;;;gc_state: gc_state -> ptr: mem_addr -> abs: abs_node -> Type
(declare-fun Tm_arrow_228e82020bbc81ebf1915b74e1cf0f04 () Term)
(declare-fun GC.ptr_lifts_to@tok () Term)


; </end encoding let ptr_lifts_to>


; encoding sigelt let obj_inv


; <Start encoding let obj_inv>

(declare-fun GC.obj_inv (Term Term) Term)
;;;;;;;;;;;;;;;;gc_state: gc_state -> i: mem_addr -> Prims.logical
(declare-fun Tm_arrow_85287fa3e4e4251783fef14e47994f1d () Term)
(declare-fun GC.obj_inv@tok () Term)



; </end encoding let obj_inv>

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
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (HasType GC.White@tok
GC.color)
:named typing_tok_GC.White@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (HasType GC.Unalloc@tok
GC.color)
:named typing_tok_GC.Unalloc@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (HasType GC.Gray@tok
GC.color)
:named typing_tok_GC.Gray@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (HasType GC.F2@tok
GC.field)
:named typing_tok_GC.F2@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (HasType GC.F1@tok
GC.field)
:named typing_tok_GC.F1@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (HasType GC.Black@tok
GC.color)
:named typing_tok_GC.Black@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.to_abs_inj; Namespace GC
(assert (! 
;; def=GC.fst(42,5-42,15); use=GC.fst(42,5-42,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.abs_map)
(HasType (GC.to_abs_inj @x0)
Prims.logical))
 

:pattern ((GC.to_abs_inj @x0))
:qid typing_GC.to_abs_inj))

:named typing_GC.to_abs_inj))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.ptr_lifts_to; Namespace GC
(assert (! 
;; def=GC.fst(61,5-61,17); use=GC.fst(61,5-61,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
GC.mem_addr)
(HasType @x2
(GC.abs_node Dummy_value)))
(HasType (GC.ptr_lifts_to @x0
@x1
@x2)
Tm_type))
 

:pattern ((GC.ptr_lifts_to @x0
@x1
@x2))
:qid typing_GC.ptr_lifts_to))

:named typing_GC.ptr_lifts_to))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.obj_inv; Namespace GC
(assert (! 
;; def=GC.fst(65,5-65,12); use=GC.fst(65,5-65,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
GC.mem_addr))
(HasType (GC.obj_inv @x0
@x1)
Prims.logical))
 

:pattern ((GC.obj_inv @x0
@x1))
:qid typing_GC.obj_inv))

:named typing_GC.obj_inv))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.field_map; Namespace GC
(assert (! (HasType GC.field_map
Tm_type)
:named typing_GC.field_map))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.color_map; Namespace GC
(assert (! (HasType GC.color_map
Tm_type)
:named typing_GC.color_map))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.abs_field_map; Namespace GC
(assert (! (HasType GC.abs_field_map
Tm_type)
:named typing_GC.abs_field_map))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! 
;; def=GC.fst(52,2-52,8); use=GC.fst(52,2-52,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (GC.__proj__Mkgc_state__item__to_abs @x0)
GC.abs_map))
 

:pattern ((GC.__proj__Mkgc_state__item__to_abs @x0))
:qid typing_GC.__proj__Mkgc_state__item__to_abs))

:named typing_GC.__proj__Mkgc_state__item__to_abs))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! 
;; def=GC.fst(55,2-55,8); use=GC.fst(55,2-55,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (GC.__proj__Mkgc_state__item__fields @x0)
GC.field_map))
 

:pattern ((GC.__proj__Mkgc_state__item__fields @x0))
:qid typing_GC.__proj__Mkgc_state__item__fields))

:named typing_GC.__proj__Mkgc_state__item__fields))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! 
;; def=GC.fst(54,2-54,12); use=GC.fst(54,2-54,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (GC.__proj__Mkgc_state__item__abs_fields @x0)
GC.abs_field_map))
 

:pattern ((GC.__proj__Mkgc_state__item__abs_fields @x0))
:qid typing_GC.__proj__Mkgc_state__item__abs_fields))

:named typing_GC.__proj__Mkgc_state__item__abs_fields))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! 
;; def=GC.fst(52,2-52,8); use=GC.fst(52,2-52,8)
(forall ((@x0 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
(GC.__proj__Mkgc_state__item__to_abs @x0))
 

:pattern ((ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0))
:qid token_correspondence_GC.__proj__Mkgc_state__item__to_abs))

:named token_correspondence_GC.__proj__Mkgc_state__item__to_abs))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! 
;; def=GC.fst(55,2-55,8); use=GC.fst(55,2-55,8)
(forall ((@x0 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x0)
(GC.__proj__Mkgc_state__item__fields @x0))
 

:pattern ((ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x0))
:qid token_correspondence_GC.__proj__Mkgc_state__item__fields))

:named token_correspondence_GC.__proj__Mkgc_state__item__fields))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! 
;; def=GC.fst(54,2-54,12); use=GC.fst(54,2-54,12)
(forall ((@x0 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x0)
(GC.__proj__Mkgc_state__item__abs_fields @x0))
 

:pattern ((ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x0))
:qid token_correspondence_GC.__proj__Mkgc_state__item__abs_fields))

:named token_correspondence_GC.__proj__Mkgc_state__item__abs_fields))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(GC.Mkgc_state @x1
@x2
@x3
@x4)
GC.gc_state)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(GC.Mkgc_state @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(GC.Mkgc_state @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(GC.Mkgc_state @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(GC.Mkgc_state @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(GC.Mkgc_state @x1
@x2
@x3
@x4)
GC.gc_state))
:qid subterm_ordering_GC.Mkgc_state))

:named subterm_ordering_GC.Mkgc_state))
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
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (GC.Mkgc_state_to_abs (GC.Mkgc_state @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((GC.Mkgc_state @x0
@x1
@x2
@x3))
:qid projection_inverse_GC.Mkgc_state_to_abs))

:named projection_inverse_GC.Mkgc_state_to_abs))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (GC.Mkgc_state_fields (GC.Mkgc_state @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((GC.Mkgc_state @x0
@x1
@x2
@x3))
:qid projection_inverse_GC.Mkgc_state_fields))

:named projection_inverse_GC.Mkgc_state_fields))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (GC.Mkgc_state_color (GC.Mkgc_state @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((GC.Mkgc_state @x0
@x1
@x2
@x3))
:qid projection_inverse_GC.Mkgc_state_color))

:named projection_inverse_GC.Mkgc_state_color))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (GC.Mkgc_state_abs_fields (GC.Mkgc_state @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((GC.Mkgc_state @x0
@x1
@x2
@x3))
:qid projection_inverse_GC.Mkgc_state_abs_fields))

:named projection_inverse_GC.Mkgc_state_abs_fields))
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
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! 
;; def=GC.fst(52,2-52,8); use=GC.fst(52,2-52,8)
(forall ((@x0 Term))
 (! (= (GC.__proj__Mkgc_state__item__to_abs @x0)
(GC.Mkgc_state_to_abs @x0))
 

:pattern ((GC.__proj__Mkgc_state__item__to_abs @x0))
:qid proj_equation_GC.Mkgc_state_to_abs))

:named proj_equation_GC.Mkgc_state_to_abs))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! 
;; def=GC.fst(55,2-55,8); use=GC.fst(55,2-55,8)
(forall ((@x0 Term))
 (! (= (GC.__proj__Mkgc_state__item__fields @x0)
(GC.Mkgc_state_fields @x0))
 

:pattern ((GC.__proj__Mkgc_state__item__fields @x0))
:qid proj_equation_GC.Mkgc_state_fields))

:named proj_equation_GC.Mkgc_state_fields))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! 
;; def=GC.fst(54,2-54,12); use=GC.fst(54,2-54,12)
(forall ((@x0 Term))
 (! (= (GC.__proj__Mkgc_state__item__abs_fields @x0)
(GC.Mkgc_state_abs_fields @x0))
 

:pattern ((GC.__proj__Mkgc_state__item__abs_fields @x0))
:qid proj_equation_GC.Mkgc_state_abs_fields))

:named proj_equation_GC.Mkgc_state_abs_fields))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5
;;; Fact-ids: Name GC.color_map; Namespace GC
(assert (! (HasType Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5
Tm_type)
:named kinding_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791
;;; Fact-ids: Name GC.field_map; Namespace GC
(assert (! (HasType Tm_arrow_5d846e8dc8d50e58c30aadcda1836791
Tm_type)
:named kinding_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! (HasType Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c
Tm_type)
:named kinding_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3e83f5278aec4c2201106bf98084ce36
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! (HasType Tm_arrow_3e83f5278aec4c2201106bf98084ce36
Tm_type)
:named kinding_Tm_arrow_3e83f5278aec4c2201106bf98084ce36))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c
;;; Fact-ids: Name GC.abs_field_map; Namespace GC
(assert (! (HasType Tm_arrow_305f25c9c866bff8516b56dc030d0f8c
Tm_type)
:named kinding_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! (HasType Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5
Tm_type)
:named kinding_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! (HasType GC.gc_state
Tm_type)
:named kinding_GC.gc_state@tok))
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (HasType GC.field
Tm_type)
:named kinding_GC.field@tok))
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (HasType GC.color
Tm_type)
:named kinding_GC.color@tok))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.field_map; Namespace GC
(assert (! (HasType GC.field_map
Tm_type)
:named function_token_typing_GC.field_map))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.color_map; Namespace GC
(assert (! (HasType GC.color_map
Tm_type)
:named function_token_typing_GC.color_map))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.abs_field_map; Namespace GC
(assert (! (HasType GC.abs_field_map
Tm_type)
:named function_token_typing_GC.abs_field_map))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! 
;; def=GC.fst(52,2-52,8); use=GC.fst(52,2-52,8)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType GC.__proj__Mkgc_state__item__to_abs@tok
Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))

;; def=GC.fst(52,2-52,8); use=GC.fst(52,2-52,8)
(forall ((@x1 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x1)
(GC.__proj__Mkgc_state__item__to_abs @x1))
 

:pattern ((GC.__proj__Mkgc_state__item__to_abs @x1))
:qid function_token_typing_GC.__proj__Mkgc_state__item__to_abs.1))
)
 

:pattern ((ApplyTT @x0
GC.__proj__Mkgc_state__item__to_abs@tok))
:qid function_token_typing_GC.__proj__Mkgc_state__item__to_abs))

:named function_token_typing_GC.__proj__Mkgc_state__item__to_abs))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! 
;; def=GC.fst(55,2-55,8); use=GC.fst(55,2-55,8)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType GC.__proj__Mkgc_state__item__fields@tok
Tm_arrow_3e83f5278aec4c2201106bf98084ce36))

;; def=GC.fst(55,2-55,8); use=GC.fst(55,2-55,8)
(forall ((@x1 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x1)
(GC.__proj__Mkgc_state__item__fields @x1))
 

:pattern ((GC.__proj__Mkgc_state__item__fields @x1))
:qid function_token_typing_GC.__proj__Mkgc_state__item__fields.1))
)
 

:pattern ((ApplyTT @x0
GC.__proj__Mkgc_state__item__fields@tok))
:qid function_token_typing_GC.__proj__Mkgc_state__item__fields))

:named function_token_typing_GC.__proj__Mkgc_state__item__fields))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! 
;; def=GC.fst(54,2-54,12); use=GC.fst(54,2-54,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType GC.__proj__Mkgc_state__item__abs_fields@tok
Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))

;; def=GC.fst(54,2-54,12); use=GC.fst(54,2-54,12)
(forall ((@x1 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x1)
(GC.__proj__Mkgc_state__item__abs_fields @x1))
 

:pattern ((GC.__proj__Mkgc_state__item__abs_fields @x1))
:qid function_token_typing_GC.__proj__Mkgc_state__item__abs_fields.1))
)
 

:pattern ((ApplyTT @x0
GC.__proj__Mkgc_state__item__abs_fields@tok))
:qid function_token_typing_GC.__proj__Mkgc_state__item__abs_fields))

:named function_token_typing_GC.__proj__Mkgc_state__item__abs_fields))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
GC.gc_state)
(is-GC.Mkgc_state @x1))
 

:pattern ((HasTypeFuel @u0
@x1
GC.gc_state))
:qid fuel_guarded_inversion_GC.gc_state))

:named fuel_guarded_inversion_GC.gc_state))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! 
;; def=GC.fst(24,5-24,10); use=GC.fst(24,5-24,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
GC.field)
(or (is-GC.F1 @x1)
(is-GC.F2 @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
GC.field))
:qid fuel_guarded_inversion_GC.field))

:named fuel_guarded_inversion_GC.field))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! 
;; def=GC.fst(14,5-14,10); use=GC.fst(14,5-14,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
GC.color)
(or (is-GC.Unalloc @x1)
(is-GC.White @x1)
(is-GC.Gray @x1)
(is-GC.Black @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
GC.color))
:qid fuel_guarded_inversion_GC.color))

:named fuel_guarded_inversion_GC.color))
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
;;;;;;;;;;;;;;;;Equation for GC.to_abs_inj
;;; Fact-ids: Name GC.to_abs_inj; Namespace GC
(assert (! 
;; def=GC.fst(42,5-42,15); use=GC.fst(42,5-42,15)
(forall ((@x0 Term))
 (! (= (Valid (GC.to_abs_inj @x0))

;; def=GC.fst(43,2-49,30); use=GC.fst(43,2-49,30)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
GC.mem_addr)
(HasType @x2
GC.mem_addr)

;; def=GC.fst(44,4-44,14); use=GC.fst(44,4-44,14)
(Valid 
;; def=GC.fst(44,4-44,14); use=GC.fst(44,4-44,14)
(GC.trigger @x1)
)


;; def=GC.fst(45,4-45,14); use=GC.fst(45,4-45,14)
(Valid 
;; def=GC.fst(45,4-45,14); use=GC.fst(45,4-45,14)
(GC.trigger @x2)
)


;; def=GC.fst(46,7-46,24); use=GC.fst(46,7-46,24)
(BoxBool_proj_0 (GC.valid (ApplyTT @x0
@x1)))


;; def=GC.fst(47,7-47,24); use=GC.fst(47,7-47,24)
(BoxBool_proj_0 (GC.valid (ApplyTT @x0
@x2)))


;; def=GC.fst(48,7-48,15); use=GC.fst(48,7-48,15)
(not (= @x1
@x2))
)

;; def=GC.fst(49,8-49,30); use=GC.fst(49,8-49,30)
(not (= (ApplyTT @x0
@x1)
(ApplyTT @x0
@x2)))
)
 

:pattern ((GC.trigger @x1) (GC.trigger @x2))
:qid equation_GC.to_abs_inj.1))
)
 

:pattern ((GC.to_abs_inj @x0))
:qid equation_GC.to_abs_inj))

:named equation_GC.to_abs_inj))
;;;;;;;;;;;;;;;;Equation for GC.ptr_lifts_to
;;; Fact-ids: Name GC.ptr_lifts_to; Namespace GC
(assert (! 
;; def=GC.fst(61,5-61,17); use=GC.fst(61,5-61,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (GC.ptr_lifts_to @x0
@x1
@x2))

;; def=GC.fst(62,2-63,30); use=GC.fst(62,2-63,30)
(and 
;; def=GC.fst(62,2-62,11); use=GC.fst(62,2-62,11)
(BoxBool_proj_0 (GC.valid @x2))


;; def=GC.fst(63,5-63,30); use=GC.fst(63,5-63,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x1)
@x2)
)
)
 

:pattern ((GC.ptr_lifts_to @x0
@x1
@x2))
:qid equation_GC.ptr_lifts_to))

:named equation_GC.ptr_lifts_to))
;;;;;;;;;;;;;;;;Equation for GC.obj_inv
;;; Fact-ids: Name GC.obj_inv; Namespace GC
(assert (! 
;; def=GC.fst(65,5-65,12); use=GC.fst(65,5-65,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (GC.obj_inv @x0
@x1))

;; def=GC.fst(66,2-67,109); use=GC.fst(66,2-67,109)
(implies 
;; def=GC.fst(66,2-66,27); use=GC.fst(66,2-66,27)
(BoxBool_proj_0 (GC.valid (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x1)))


;; def=GC.fst(67,6-67,109); use=GC.fst(67,6-67,109)
(forall ((@x2 Term))
 (! (implies (HasType @x2
GC.field)

;; def=GC.fst(67,17-67,108); use=GC.fst(67,17-67,108)
(Valid 
;; def=GC.fst(67,17-67,108); use=GC.fst(67,17-67,108)
(GC.ptr_lifts_to @x0
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x0)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x1
@x2))
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x0)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x1)
@x2)))
)
)
 
;;no pats
:qid equation_GC.obj_inv.1))
)
)
 

:pattern ((GC.obj_inv @x0
@x1))
:qid equation_GC.obj_inv))

:named equation_GC.obj_inv))
;;;;;;;;;;;;;;;;Equation for GC.field_map
;;; Fact-ids: Name GC.field_map; Namespace GC
(assert (! (= GC.field_map
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791)
:named equation_GC.field_map))
;;;;;;;;;;;;;;;;Equation for GC.color_map
;;; Fact-ids: Name GC.color_map; Namespace GC
(assert (! (= GC.color_map
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)
:named equation_GC.color_map))
;;;;;;;;;;;;;;;;Equation for GC.abs_field_map
;;; Fact-ids: Name GC.abs_field_map; Namespace GC
(assert (! (= GC.abs_field_map
Tm_arrow_305f25c9c866bff8516b56dc030d0f8c)
:named equation_GC.abs_field_map))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= GC.White@tok
GC.White)
:named equality_tok_GC.White@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= GC.Unalloc@tok
GC.Unalloc)
:named equality_tok_GC.Unalloc@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= GC.Gray@tok
GC.Gray)
:named equality_tok_GC.Gray@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (= GC.F2@tok
GC.F2)
:named equality_tok_GC.F2@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (= GC.F1@tok
GC.F1)
:named equality_tok_GC.F1@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= GC.Black@tok
GC.Black)
:named equality_tok_GC.Black@tok))
;;;;;;;;;;;;;;;;Prop-typing for GC.to_abs_inj
;;; Fact-ids: Name GC.to_abs_inj; Namespace GC
(assert (! 
;; def=GC.fst(42,5-42,15); use=GC.fst(42,5-42,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.abs_map)
(Valid (Prims.subtype_of (GC.to_abs_inj @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.to_abs_inj @x0)
Prims.unit))
:qid defn_equation_GC.to_abs_inj))

:named defn_equation_GC.to_abs_inj))
;;;;;;;;;;;;;;;;Prop-typing for GC.ptr_lifts_to
;;; Fact-ids: Name GC.ptr_lifts_to; Namespace GC
(assert (! 
;; def=GC.fst(61,5-61,17); use=GC.fst(61,5-61,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
GC.mem_addr)
(HasType @x2
(GC.abs_node Dummy_value)))
(Valid (Prims.subtype_of (GC.ptr_lifts_to @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.ptr_lifts_to @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_GC.ptr_lifts_to))

:named defn_equation_GC.ptr_lifts_to))
;;;;;;;;;;;;;;;;Prop-typing for GC.obj_inv
;;; Fact-ids: Name GC.obj_inv; Namespace GC
(assert (! 
;; def=GC.fst(65,5-65,12); use=GC.fst(65,5-65,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
GC.mem_addr))
(Valid (Prims.subtype_of (GC.obj_inv @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.obj_inv @x0
@x1)
Prims.unit))
:qid defn_equation_GC.obj_inv))

:named defn_equation_GC.obj_inv))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! 
;; def=GC.fst(16,3-16,8); use=GC.fst(16,3-16,8)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
GC.White
GC.color)
 

:pattern ((HasTypeFuel @u0
GC.White
GC.color))
:qid data_typing_intro_GC.White@tok))

:named data_typing_intro_GC.White@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! 
;; def=GC.fst(15,3-15,10); use=GC.fst(15,3-15,10)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
GC.Unalloc
GC.color)
 

:pattern ((HasTypeFuel @u0
GC.Unalloc
GC.color))
:qid data_typing_intro_GC.Unalloc@tok))

:named data_typing_intro_GC.Unalloc@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
GC.abs_map)
(HasTypeFuel @u0
@x2
GC.color_map)
(HasTypeFuel @u0
@x3
GC.abs_field_map)
(HasTypeFuel @u0
@x4
GC.field_map))
(HasTypeFuel @u0
(GC.Mkgc_state @x1
@x2
@x3
@x4)
GC.gc_state))
 

:pattern ((HasTypeFuel @u0
(GC.Mkgc_state @x1
@x2
@x3
@x4)
GC.gc_state))
:qid data_typing_intro_GC.Mkgc_state@tok))

:named data_typing_intro_GC.Mkgc_state@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! 
;; def=GC.fst(17,3-17,7); use=GC.fst(17,3-17,7)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
GC.Gray
GC.color)
 

:pattern ((HasTypeFuel @u0
GC.Gray
GC.color))
:qid data_typing_intro_GC.Gray@tok))

:named data_typing_intro_GC.Gray@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! 
;; def=GC.fst(26,4-26,6); use=GC.fst(26,4-26,6)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
GC.F2
GC.field)
 

:pattern ((HasTypeFuel @u0
GC.F2
GC.field))
:qid data_typing_intro_GC.F2@tok))

:named data_typing_intro_GC.F2@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! 
;; def=GC.fst(25,4-25,6); use=GC.fst(25,4-25,6)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
GC.F1
GC.field)
 

:pattern ((HasTypeFuel @u0
GC.F1
GC.field))
:qid data_typing_intro_GC.F1@tok))

:named data_typing_intro_GC.F1@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! 
;; def=GC.fst(18,3-18,8); use=GC.fst(18,3-18,8)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
GC.Black
GC.color)
 

:pattern ((HasTypeFuel @u0
GC.Black
GC.color))
:qid data_typing_intro_GC.Black@tok))

:named data_typing_intro_GC.Black@tok))
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
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(GC.Mkgc_state @x1
@x2
@x3
@x4)
GC.gc_state)
(and (HasTypeFuel @u0
@x1
GC.abs_map)
(HasTypeFuel @u0
@x2
GC.color_map)
(HasTypeFuel @u0
@x3
GC.abs_field_map)
(HasTypeFuel @u0
@x4
GC.field_map)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(GC.Mkgc_state @x1
@x2
@x3
@x4)
GC.gc_state))
:qid data_elim_GC.Mkgc_state))

:named data_elim_GC.Mkgc_state))
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
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! (= 206
(Term_constr_id GC.gc_state))
:named constructor_distinct_GC.gc_state))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (= 175
(Term_constr_id GC.field))
:named constructor_distinct_GC.field))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= 130
(Term_constr_id GC.color))
:named constructor_distinct_GC.color))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= 138
(Term_constr_id GC.White))
:named constructor_distinct_GC.White))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= 136
(Term_constr_id GC.Unalloc))
:named constructor_distinct_GC.Unalloc))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 212
(Term_constr_id (GC.Mkgc_state @x0
@x1
@x2
@x3)))
 

:pattern ((GC.Mkgc_state @x0
@x1
@x2
@x3))
:qid constructor_distinct_GC.Mkgc_state))

:named constructor_distinct_GC.Mkgc_state))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= 140
(Term_constr_id GC.Gray))
:named constructor_distinct_GC.Gray))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (= 183
(Term_constr_id GC.F2))
:named constructor_distinct_GC.F2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! (= 181
(Term_constr_id GC.F1))
:named constructor_distinct_GC.F1))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! (= 142
(Term_constr_id GC.Black))
:named constructor_distinct_GC.Black))
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
;;;;;;;;;;;;;;;;Assumption: GC.field__uu___haseq
;;; Fact-ids: Name GC.field__uu___haseq; Namespace GC
(assert (! (Valid (Prims.hasEq GC.field))
:named assumption_GC.field__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: GC.color__uu___haseq
;;; Fact-ids: Name GC.color__uu___haseq; Namespace GC
(assert (! (Valid (Prims.hasEq GC.color))
:named assumption_GC.color__uu___haseq))
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
;;; Fact-ids: Name GC.field; Namespace GC; Name GC.F1; Namespace GC; Name GC.F2; Namespace GC
(assert (! 
;; def=GC.fst(24,5-24,10); use=GC.fst(24,5-24,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
GC.field)
(= GC.field
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
GC.field))
:qid GC_pretyping_ab0ffb7fae1c8ce581a4f6505251cb9c))

:named GC_pretyping_ab0ffb7fae1c8ce581a4f6505251cb9c))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name GC.gc_state; Namespace GC; Name GC.Mkgc_state; Namespace GC
(assert (! 
;; def=GC.fst(51,10-51,18); use=GC.fst(51,10-51,18)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
GC.gc_state)
(= GC.gc_state
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
GC.gc_state))
:qid GC_pretyping_a533f368358fdb323ab3d296484acc80))

:named GC_pretyping_a533f368358fdb323ab3d296484acc80))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name GC.color; Namespace GC; Name GC.Unalloc; Namespace GC; Name GC.White; Namespace GC; Name GC.Gray; Namespace GC; Name GC.Black; Namespace GC
(assert (! 
;; def=GC.fst(14,5-14,10); use=GC.fst(14,5-14,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
GC.color)
(= GC.color
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
GC.color))
:qid GC_pretyping_27e56dec3f0cf9a6af115223c7bb363f))

:named GC_pretyping_27e56dec3f0cf9a6af115223c7bb363f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.color_map; Namespace GC
(assert (! 
;; def=GC.fst(34,17-34,38); use=GC.fst(34,17-34,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))
:qid GC_pre_typing_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))

:named GC_pre_typing_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.field_map; Namespace GC
(assert (! 
;; def=GC.fst(37,21-37,53); use=GC.fst(37,21-37,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))
:qid GC_pre_typing_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))

:named GC_pre_typing_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! 
;; def=GC.fst(51,10-52,17); use=GC.fst(51,10-52,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))
:qid GC_pre_typing_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))

:named GC_pre_typing_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! 
;; def=GC.fst(51,10-55,19); use=GC.fst(51,10-55,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_3e83f5278aec4c2201106bf98084ce36)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_3e83f5278aec4c2201106bf98084ce36))
:qid GC_pre_typing_Tm_arrow_3e83f5278aec4c2201106bf98084ce36))

:named GC_pre_typing_Tm_arrow_3e83f5278aec4c2201106bf98084ce36))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.abs_field_map; Namespace GC
(assert (! 
;; def=GC.fst(38,21-38,53); use=GC.fst(38,21-38,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_305f25c9c866bff8516b56dc030d0f8c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))
:qid GC_pre_typing_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))

:named GC_pre_typing_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! 
;; def=GC.fst(51,10-54,27); use=GC.fst(51,10-54,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))
:qid GC_pre_typing_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))

:named GC_pre_typing_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5
;;; Fact-ids: Name GC.color_map; Namespace GC
(assert (! 
;; def=GC.fst(34,17-34,38); use=GC.fst(34,17-34,38)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)
(and 
;; def=GC.fst(34,17-34,38); use=GC.fst(34,17-34,38)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)
(HasType (ApplyTT @x0
@x1)
GC.color))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))
:qid GC_interpretation_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))

:named GC_interpretation_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791
;;; Fact-ids: Name GC.field_map; Namespace GC
(assert (! 
;; def=GC.fst(37,21-37,53); use=GC.fst(37,21-37,53)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791)
(and 
;; def=GC.fst(37,21-37,53); use=GC.fst(37,21-37,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
(HasType (ApplyTT @x0
@x1)
GC.mem_addr))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))
:qid GC_interpretation_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))

:named GC_interpretation_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__to_abs; Namespace GC
(assert (! 
;; def=GC.fst(51,10-52,17); use=GC.fst(51,10-52,17)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c)
(and 
;; def=GC.fst(51,10-52,17); use=GC.fst(51,10-52,17)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.gc_state)
(HasType (ApplyTT @x0
@x1)
GC.abs_map))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))
:qid GC_interpretation_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))

:named GC_interpretation_Tm_arrow_5b730ae7b1a5cb9c8c709fbf51ad781c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3e83f5278aec4c2201106bf98084ce36
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__fields; Namespace GC
(assert (! 
;; def=GC.fst(51,10-55,19); use=GC.fst(51,10-55,19)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_3e83f5278aec4c2201106bf98084ce36)
(and 
;; def=GC.fst(51,10-55,19); use=GC.fst(51,10-55,19)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.gc_state)
(HasType (ApplyTT @x0
@x1)
GC.field_map))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_3e83f5278aec4c2201106bf98084ce36.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_3e83f5278aec4c2201106bf98084ce36))
:qid GC_interpretation_Tm_arrow_3e83f5278aec4c2201106bf98084ce36))

:named GC_interpretation_Tm_arrow_3e83f5278aec4c2201106bf98084ce36))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c
;;; Fact-ids: Name GC.abs_field_map; Namespace GC
(assert (! 
;; def=GC.fst(38,21-38,53); use=GC.fst(38,21-38,53)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_305f25c9c866bff8516b56dc030d0f8c)
(and 
;; def=GC.fst(38,21-38,53); use=GC.fst(38,21-38,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(FStar.Pervasives.Native.tuple2 (GC.abs_node Dummy_value)
GC.field))
(HasType (ApplyTT @x0
@x1)
(GC.abs_node Dummy_value)))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))
:qid GC_interpretation_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))

:named GC_interpretation_Tm_arrow_305f25c9c866bff8516b56dc030d0f8c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__abs_fields; Namespace GC
(assert (! 
;; def=GC.fst(51,10-54,27); use=GC.fst(51,10-54,27)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5)
(and 
;; def=GC.fst(51,10-54,27); use=GC.fst(51,10-54,27)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.gc_state)
(HasType (ApplyTT @x0
@x1)
GC.abs_field_map))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))
:qid GC_interpretation_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))

:named GC_interpretation_Tm_arrow_202b178acaaec5fcf75d2d4dde4629d5))
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
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name GC.obj_inv; Namespace GC
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.__proj__Mkgc_state__item__fields@tok))
:named @kick_partial_app_8ac8f111dc69f70525ff9a5698747604))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name GC.obj_inv; Namespace GC
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.__proj__Mkgc_state__item__abs_fields@tok))
:named @kick_partial_app_7f4bddece5469f7ba34514f0fba06778))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name GC.ptr_lifts; Namespace GC
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.__proj__Mkgc_state__item__to_abs@tok))
:named @kick_partial_app_351c4a5dba307d168a407b5da2f2ac58))
(push) ;; push{2

; Starting query at GC.fst(70,4-75,76)

(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: mem_addr -> Type
(declare-fun Tm_arrow_677d63d26b593ea784a0851b5435f387 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_677d63d26b593ea784a0851b5435f387
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_677d63d26b593ea784a0851b5435f387
Tm_type)
:named kinding_Tm_arrow_677d63d26b593ea784a0851b5435f387))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(69,42-69,58); use=GC.fst(69,42-69,58)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_677d63d26b593ea784a0851b5435f387)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_677d63d26b593ea784a0851b5435f387))
:qid GC_pre_typing_Tm_arrow_677d63d26b593ea784a0851b5435f387))

:named GC_pre_typing_Tm_arrow_677d63d26b593ea784a0851b5435f387))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(69,42-69,58); use=GC.fst(69,42-69,58)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_677d63d26b593ea784a0851b5435f387)
(and 
;; def=GC.fst(69,42-69,58); use=GC.fst(69,42-69,58)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_677d63d26b593ea784a0851b5435f387))
:qid GC_interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387))

:named GC_interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387))

; Encoding query formula : forall (gc_state: GC.gc_state) (color_invariant: (_: GC.mem_addr -> Type)).
;   (*  - Could not prove post-condition
; *)
;   GC.to_abs_inj gc_state.to_abs ==>
;   (forall (i: GC.mem_addr).
;       GC.trigger i ==> GC.obj_inv gc_state i /\ color_invariant i ==> Prims.hasEq GC.color)


; Context: While encoding a query
; While typechecking the top-level declaration `let inv`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
Tm_arrow_677d63d26b593ea784a0851b5435f387)

;; def=GC.fst(70,4-70,30); use=GC.fst(70,4-70,30)
(Valid 
;; def=GC.fst(70,4-70,30); use=GC.fst(70,4-70,30)
(GC.to_abs_inj (GC.__proj__Mkgc_state__item__to_abs @x0))
)
)

;; def=dummy(0,0-0,0); use=GC.fst(70,4-75,76)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
GC.mem_addr)

;; def=GC.fst(72,1-72,10); use=GC.fst(72,1-72,10)
(Valid 
;; def=GC.fst(72,1-72,10); use=GC.fst(72,1-72,10)
(GC.trigger @x2)
)


;; def=GC.fst(73,10-73,28); use=GC.fst(73,10-73,28)
(Valid 
;; def=GC.fst(73,10-73,28); use=GC.fst(73,10-73,28)
(GC.obj_inv @x0
@x2)
)


;; def=GC.fst(74,10-74,27); use=GC.fst(74,10-74,27)
(Valid 
;; def=GC.fst(74,10-74,27); use=GC.fst(74,10-74,27)
(ApplyTT @x1
@x2)
)
)

;; def=Prims.fst(73,23-73,30); use=GC.fst(75,67-75,74)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(75,67-75,74)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(75,67-75,74)
(Prims.hasEq GC.color)
)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (GC.inv, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let inv


; <Start encoding let inv>

;;;;;;;;;;;;;;;;_: mem_addr -> Type
(declare-fun Tm_arrow_677d63d26b593ea784a0851b5435f387 () Term)
(declare-fun GC.inv (Term Term) Term)

;;;;;;;;;;;;;;;;gc_state: gc_state -> color_invariant: (_: mem_addr -> Type) -> Prims.logical
(declare-fun Tm_arrow_25c7f08568bdf3a028ae7989e6dbf622 () Term)
(declare-fun GC.inv@tok () Term)



; </end encoding let inv>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! 
;; def=GC.fst(53,2-53,7); use=GC.fst(53,2-53,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (GC.__proj__Mkgc_state__item__color @x0)
GC.color_map))
 

:pattern ((GC.__proj__Mkgc_state__item__color @x0))
:qid typing_GC.__proj__Mkgc_state__item__color))

:named typing_GC.__proj__Mkgc_state__item__color))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! 
;; def=GC.fst(53,2-53,7); use=GC.fst(53,2-53,7)
(forall ((@x0 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
(GC.__proj__Mkgc_state__item__color @x0))
 

:pattern ((ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0))
:qid token_correspondence_GC.__proj__Mkgc_state__item__color))

:named token_correspondence_GC.__proj__Mkgc_state__item__color))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! 
;; def=GC.fst(53,2-53,7); use=GC.fst(53,2-53,7)
(forall ((@x0 Term))
 (! (= (GC.__proj__Mkgc_state__item__color @x0)
(GC.Mkgc_state_color @x0))
 

:pattern ((GC.__proj__Mkgc_state__item__color @x0))
:qid proj_equation_GC.Mkgc_state_color))

:named proj_equation_GC.Mkgc_state_color))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! (HasType Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc
Tm_type)
:named kinding_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! 
;; def=GC.fst(53,2-53,7); use=GC.fst(53,2-53,7)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType GC.__proj__Mkgc_state__item__color@tok
Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))

;; def=GC.fst(53,2-53,7); use=GC.fst(53,2-53,7)
(forall ((@x1 Term))
 (! (= (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x1)
(GC.__proj__Mkgc_state__item__color @x1))
 

:pattern ((GC.__proj__Mkgc_state__item__color @x1))
:qid function_token_typing_GC.__proj__Mkgc_state__item__color.1))
)
 

:pattern ((ApplyTT @x0
GC.__proj__Mkgc_state__item__color@tok))
:qid function_token_typing_GC.__proj__Mkgc_state__item__color))

:named function_token_typing_GC.__proj__Mkgc_state__item__color))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! 
;; def=GC.fst(51,10-53,18); use=GC.fst(51,10-53,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))
:qid GC_pre_typing_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))

:named GC_pre_typing_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc
;;; Fact-ids: Name GC.__proj__Mkgc_state__item__color; Namespace GC
(assert (! 
;; def=GC.fst(51,10-53,18); use=GC.fst(51,10-53,18)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc)
(and 
;; def=GC.fst(51,10-53,18); use=GC.fst(51,10-53,18)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.gc_state)
(HasType (ApplyTT @x0
@x1)
GC.color_map))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))
:qid GC_interpretation_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))

:named GC_interpretation_Tm_arrow_24639e51c7f5e1cc2a60735b86c048fc))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name GC.inv; Namespace GC
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.__proj__Mkgc_state__item__color@tok))
:named @kick_partial_app_b9b91fb89a03af22c7ede9c3d232f1f3))
(push) ;; push{2

; Starting query at GC.fst(78,2-80,74)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (gc_state: GC.gc_state).
;   (*  - Could not prove post-condition
; *)
;   forall (i: GC.mem_addr).
;     (*  - Could not prove post-condition
; *)
;     Prims.hasEq GC.color /\
;     (gc_state.color i = GC.Black ==>
;       (forall (f: GC.field).
;           (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;           Prims.hasEq GC.color))


; Context: While encoding a query
; While typechecking the top-level declaration `let gc_inv`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)

;; def=dummy(0,0-0,0); use=GC.fst(78,2-80,74)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)

;; def=dummy(0,0-0,0); use=GC.fst(79,6-80,73)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(79,6-80,73)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(79,6-80,73)
(Prims.hasEq GC.color)
)
)

(implies 
;; def=GC.fst(79,7-79,31); use=GC.fst(79,7-79,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Black@tok)


;; def=dummy(0,0-0,0); use=GC.fst(79,6-80,73)
(forall ((@x2 Term))
 (! (implies (HasType @x2
GC.field)

;; def=Prims.fst(73,23-73,30); use=GC.fst(80,66-80,71)
(or label_2

;; def=Prims.fst(73,23-73,30); use=GC.fst(80,66-80,71)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(80,66-80,71)
(Prims.hasEq GC.color)
)
)
)
 
;;no pats
:qid @query.2))
))
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
; QUERY ID: (GC.gc_inv, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let gc_inv


; <Start encoding let gc_inv>

(declare-fun GC.gc_inv (Term) Term)
;;;;;;;;;;;;;;;;gc_state: gc_state -> Prims.logical
(declare-fun Tm_arrow_c5b7d0a8f304f64fc0cd02ac54583165 () Term)
(declare-fun GC.gc_inv@tok () Term)






; </end encoding let gc_inv>

(push) ;; push{2

; Starting query at GC.fst(83,2-83,80)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (gc_state: GC.gc_state).
;   (*  - Could not prove post-condition
; *)
;   forall (i: GC.mem_addr).
;     (*  - Could not prove post-condition
; *)
;     Prims.hasEq GC.color /\ (~(gc_state.color i = GC.Unalloc) ==> Prims.hasEq GC.color)


; Context: While encoding a query
; While typechecking the top-level declaration `let mutator_inv`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)

;; def=dummy(0,0-0,0); use=GC.fst(83,2-83,80)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)

;; def=GC.fst(34,33-83,79); use=GC.fst(83,25-83,79)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(83,25-83,79)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(83,25-83,79)
(Prims.hasEq GC.color)
)
)

(implies 
;; def=GC.fst(83,25-83,51); use=GC.fst(83,25-83,51)
(not 
;; def=GC.fst(83,25-83,51); use=GC.fst(83,25-83,51)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Unalloc@tok)
)


;; def=Prims.fst(73,23-73,30); use=GC.fst(83,74-83,79)
(or label_2

;; def=Prims.fst(73,23-73,30); use=GC.fst(83,74-83,79)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(83,74-83,79)
(Prims.hasEq GC.color)
)
)
))
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
; QUERY ID: (GC.mutator_inv, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let mutator_inv


; <Start encoding let mutator_inv>

(declare-fun GC.mutator_inv (Term) Term)

(declare-fun GC.mutator_inv@tok () Term)





; </end encoding let mutator_inv>


; encoding sigelt new_effect { GC_STATE ... }


; <Skipped new_effect { GC_STATE ... }/>


; encoding sigelt let gc_post


; <Start encoding let gc_post>

(declare-fun GC.gc_post (Term) Term)

(declare-fun GC.gc_post@tok () Term)
;;;;;;;;;;;;;;;;_: a -> _: gc_state -> Type
(declare-fun Tm_arrow_cd4c5ba25392e448bb81779a1b484415 (Term) Term)

; </end encoding let gc_post>


; encoding sigelt sub_effect DIV ~> GC_STATE


; <Skipped sub_effect DIV ~> GC_STATE/>


; encoding sigelt effect GC a pre post = GC.GC_STATE a


; <Skipped effect GC a pre post = GC.GC_STATE a/>


; encoding sigelt effect GCMut res req ens = GC.GC res


; <Skipped effect GCMut res req ens = GC.GC res/>


; encoding sigelt val GC.get


; <Start encoding val GC.get>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.get (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.get@tok () Term)

; </end encoding val GC.get>


; encoding sigelt val GC.set


; <Start encoding val GC.set>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.set (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.set@tok () Term)

; </end encoding val GC.set>

(push) ;; push{2

; Starting query at GC.fst(103,2-105,32)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_de0b2ced8c60ecfc378f030298f31d2b () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_de0b2ced8c60ecfc378f030298f31d2b
Tm_type)
:named refinement_kinding_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(33,17-33,36); use=GC.fst(103,9-103,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_de0b2ced8c60ecfc378f030298f31d2b)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=GC.fst(33,23-33,36); use=GC.fst(103,9-103,10)
(BoxBool_proj_0 (GC.is_mem_addr @x1))


;; def=GC.fst(33,23-33,36); use=GC.fst(103,9-103,10)
(BoxBool_proj_0 (GC.is_mem_addr @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
:qid refinement_interpretation_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))

:named refinement_interpretation_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_de0b2ced8c60ecfc378f030298f31d2b
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_de0b2ced8c60ecfc378f030298f31d2b))


; Encoding query formula : forall (ptr: GC.mem_addr) (gc: GC.gc_state).
;   (*  - Could not prove post-condition
; *)
;   forall (i: Prims.int{GC.is_mem_addr i /\ GC.is_mem_addr i}).
;     GC.mem_lo <= i /\ i < ptr ==>
;     (GC.is_mem_addr i /\ GC.is_mem_addr i ==> GC.is_mem_addr i) /\
;     (Prims.op_Negation (GC.valid (gc.to_abs i)) ==>
;       Prims.hasEq GC.color /\
;       (forall (any_result: Type0).
;           GC.color == any_result ==> GC.is_mem_addr i /\ GC.is_mem_addr i ==> GC.is_mem_addr i))


; Context: While encoding a query
; While typechecking the top-level declaration `let init_invariant`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
GC.gc_state))

;; def=dummy(0,0-0,0); use=GC.fst(103,2-105,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_refine_de0b2ced8c60ecfc378f030298f31d2b)

;; def=GC.fst(103,12-103,23); use=GC.fst(103,12-103,23)
(<= (BoxInt_proj_0 (GC.mem_lo Dummy_value))
(BoxInt_proj_0 @x2))


;; def=GC.fst(103,27-103,34); use=GC.fst(103,27-103,34)
(< (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x0))
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(104,12-105,32)
(and (implies 
;; def=GC.fst(33,23-33,36); use=GC.fst(104,33-104,34)
(and 
;; def=GC.fst(33,23-33,36); use=GC.fst(104,33-104,34)
(BoxBool_proj_0 (GC.is_mem_addr @x2))


;; def=GC.fst(33,23-33,36); use=GC.fst(104,33-104,34)
(BoxBool_proj_0 (GC.is_mem_addr @x2))
)


;; def=GC.fst(33,23-33,36); use=GC.fst(104,33-104,34)
(or label_1

;; def=GC.fst(33,23-33,36); use=GC.fst(104,33-104,34)
(BoxBool_proj_0 (GC.is_mem_addr @x2))
)
)
(implies (not (BoxBool_proj_0 (GC.valid (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x1)
@x2))))

;; def=Prims.fst(459,77-459,89); use=GC.fst(104,12-105,32)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(105,25-105,32)
(or label_2

;; def=Prims.fst(73,23-73,30); use=GC.fst(105,25-105,32)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(105,25-105,32)
(Prims.hasEq GC.color)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(104,12-105,32)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(588,31-588,32); use=GC.fst(104,12-105,32)
(= GC.color
@x3)


;; def=GC.fst(33,23-33,36); use=GC.fst(105,21-105,22)
(BoxBool_proj_0 (GC.is_mem_addr @x2))


;; def=GC.fst(33,23-33,36); use=GC.fst(105,21-105,22)
(BoxBool_proj_0 (GC.is_mem_addr @x2))
)

;; def=GC.fst(33,23-33,36); use=GC.fst(105,21-105,22)
(or label_3

;; def=GC.fst(33,23-33,36); use=GC.fst(105,21-105,22)
(BoxBool_proj_0 (GC.is_mem_addr @x2))
)
)
 
;;no pats
:qid @query.2))
)
))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (GC.init_invariant, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let init_invariant


; <Start encoding let init_invariant>

(declare-fun GC.init_invariant (Term Term) Term)
;;;;;;;;;;;;;;;;ptr: mem_addr -> gc: gc_state -> Prims.logical
(declare-fun Tm_arrow_a145acc42a8473027bd9b9f5bb1bf1c3 () Term)
(declare-fun GC.init_invariant@tok () Term)
(declare-fun Tm_refine_de0b2ced8c60ecfc378f030298f31d2b () Term)



; </end encoding let init_invariant>


; encoding sigelt val GC.upd_map


; <Skipped val GC.upd_map/>


; encoding sigelt let upd_map


; <Start encoding let upd_map>

;;;;;;;;;;;;;;;;_: a -> b
(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun GC.upd_map (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;f: (_: a -> b) -> i: a -> v: b -> j: a -> b
(declare-fun Tm_arrow_000a180d19b73c1ee6709364d3437df0 () Term)
(declare-fun GC.upd_map@tok () Term)


; </end encoding let upd_map>


; encoding sigelt val GC.upd_map2


; <Skipped val GC.upd_map2/>

(push) ;; push{2

; Starting query at GC.fst(111,43-111,75)

(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: a -> _: b -> c
(declare-fun Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a (Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(111,14-111,21); use=GC.fst(111,14-111,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a))

:named kinding_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(111,14-111,21); use=GC.fst(111,14-111,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x2
@x3
@x4)))
:qid GC_pre_typing_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a))

:named GC_pre_typing_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(111,14-111,21); use=GC.fst(111,14-111,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x1
@x2
@x3))
(and 
;; def=GC.fst(111,14-111,21); use=GC.fst(111,14-111,21)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
@x3)
(HasType @x5
@x2))
(HasType (ApplyTT (ApplyTT @x0
@x4)
@x5)
@x1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x4)
@x5))
:qid GC_interpretation_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a.1))

(IsTotFun @x0)

;; def=GC.fst(111,14-111,21); use=GC.fst(111,14-111,21)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(IsTotFun (ApplyTT @x0
@x4)))
 

:pattern ((ApplyTT @x0
@x4))
:qid GC_interpretation_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x1
@x2
@x3)))
:qid GC_interpretation_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a))

:named GC_interpretation_Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a))

; Encoding query formula : forall (a: Prims.eqtype)
;   (b: Prims.eqtype)
;   (c: Type)
;   (m: (_: a -> _: b -> c))
;   (i: a)
;   (f: b)
;   (v: c)
;   (j: a)
;   (g: b).
;   (*  - Could not prove post-condition
; *) Prims.hasEq (a & b)


; Context: While encoding a query
; While typechecking the top-level declaration `let upd_map2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a @x2
@x1
@x0))
(HasType @x4
@x0)
(HasType @x5
@x1)
(HasType @x6
@x2)
(HasType @x7
@x0)
(HasType @x8
@x1))

;; def=Prims.fst(73,23-73,30); use=GC.fst(111,53-111,56)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(111,53-111,56)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(111,53-111,56)
(Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
@x1))
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (GC.upd_map2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_FStar.Pervasives.Native.tuple2__uu___haseq, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let upd_map2


; <Start encoding let upd_map2>

;;;;;;;;;;;;;;;;_: a -> _: b -> c
(declare-fun Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a (Term Term Term) Term)
(declare-fun GC.upd_map2 (Term Term Term Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;m: (_: a -> _: b -> c) -> i: a -> f: b -> v: c -> j: a -> g: b -> c
(declare-fun Tm_arrow_a5fdec78e1b4a33098dc3a304b47a3cf () Term)
(declare-fun GC.upd_map2@tok () Term)


; </end encoding let upd_map2>


; encoding sigelt val GC.initialize


; <Skipped val GC.initialize/>

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
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (HasType Prims.l_True
Prims.logical)
:named typing_Prims.l_True))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(108,4-108,11); use=GC.fst(108,4-108,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x0))
(HasType @x3
@x0)
(HasType @x4
@x1)
(HasType @x5
@x0))
(HasType (GC.upd_map @x0
@x1
@x2
@x3
@x4
@x5)
@x1))
 

:pattern ((GC.upd_map @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_GC.upd_map))

:named typing_GC.upd_map))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.mutator_inv; Namespace GC
(assert (! 
;; def=GC.fst(82,5-82,16); use=GC.fst(82,5-82,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (GC.mutator_inv @x0)
Prims.logical))
 

:pattern ((GC.mutator_inv @x0))
:qid typing_GC.mutator_inv))

:named typing_GC.mutator_inv))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.init_invariant; Namespace GC
(assert (! 
;; def=GC.fst(102,5-102,19); use=GC.fst(102,5-102,19)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
GC.gc_state))
(HasType (GC.init_invariant @x0
@x1)
Prims.logical))
 

:pattern ((GC.init_invariant @x0
@x1))
:qid typing_GC.init_invariant))

:named typing_GC.init_invariant))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.st_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(442,4-442,14); use=FStar.Pervasives.fsti(442,4-442,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type))
(HasType (FStar.Pervasives.st_post_h_ @x0
@x1
@x2)
Tm_type))
 

:pattern ((FStar.Pervasives.st_post_h_ @x0
@x1
@x2))
:qid typing_FStar.Pervasives.st_post_h_))

:named typing_FStar.Pervasives.st_post_h_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.st_post_h; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(445,4-445,13); use=FStar.Pervasives.fsti(445,4-445,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (FStar.Pervasives.st_post_h @x0
@x1)
Tm_type))
 

:pattern ((FStar.Pervasives.st_post_h @x0
@x1))
:qid typing_FStar.Pervasives.st_post_h))

:named typing_FStar.Pervasives.st_post_h))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(108,4-108,11); use=GC.fst(108,4-108,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
(GC.upd_map @x0
@x1
@x2
@x3
@x4
@x5))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5))
:qid token_correspondence_GC.upd_map))

:named token_correspondence_GC.upd_map))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name GC.init_invariant; Namespace GC
(assert (! (HasType Tm_refine_de0b2ced8c60ecfc378f030298f31d2b
Tm_type)
:named refinement_kinding_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
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
;;; Fact-ids: Name GC.init_invariant; Namespace GC
(assert (! 
;; def=GC.fst(33,17-33,36); use=GC.fst(103,9-103,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_de0b2ced8c60ecfc378f030298f31d2b)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=GC.fst(33,23-33,36); use=GC.fst(103,9-103,10)
(BoxBool_proj_0 (GC.is_mem_addr @x1))


;; def=GC.fst(33,23-33,36); use=GC.fst(103,9-103,10)
(BoxBool_proj_0 (GC.is_mem_addr @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
:qid refinement_interpretation_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))

:named refinement_interpretation_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
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
;;; Fact-ids: Name Prims.op_Addition; Namespace Prims
(assert (! 
;; def=Prims.fst(552,4-552,15); use=Prims.fst(552,4-552,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_Addition @x0
@x1)
(BoxInt (+ (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_Addition @x0
@x1))
:qid primitive_Prims.op_Addition))

:named primitive_Prims.op_Addition))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(107,14-107,28); use=GC.fst(107,38-107,48)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_14435f7112db17792f8cd33f8f7ea859
;;; Fact-ids: Name FStar.Pervasives.st_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(442,21-442,67); use=FStar.Pervasives.fsti(442,36-442,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_14435f7112db17792f8cd33f8f7ea859))

:named kinding_Tm_arrow_14435f7112db17792f8cd33f8f7ea859))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_000a180d19b73c1ee6709364d3437df0
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! (HasType Tm_arrow_000a180d19b73c1ee6709364d3437df0
Tm_type)
:named kinding_Tm_arrow_000a180d19b73c1ee6709364d3437df0))
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_de0b2ced8c60ecfc378f030298f31d2b
;;; Fact-ids: Name GC.init_invariant; Namespace GC
(assert (! (iff (Valid (Prims.hasEq Tm_refine_de0b2ced8c60ecfc378f030298f31d2b))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_de0b2ced8c60ecfc378f030298f31d2b))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(108,4-108,11); use=GC.fst(108,4-108,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType GC.upd_map@tok
Tm_arrow_000a180d19b73c1ee6709364d3437df0))

;; def=GC.fst(108,4-108,11); use=GC.fst(108,4-108,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
(GC.upd_map @x1
@x2
@x3
@x4
@x5
@x6))
 

:pattern ((GC.upd_map @x1
@x2
@x3
@x4
@x5
@x6))
:qid function_token_typing_GC.upd_map.1))
)
 

:pattern ((ApplyTT @x0
GC.upd_map@tok))
:qid function_token_typing_GC.upd_map))

:named function_token_typing_GC.upd_map))
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
;;;;;;;;;;;;;;;;Equation for Prims.l_True
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (= Prims.l_True
(Prims.squash Prims.trivial))
:named equation_Prims.l_True))
;;;;;;;;;;;;;;;;Equation for GC.upd_map
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(108,4-108,11); use=GC.fst(108,4-108,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (GC.upd_map @x0
@x1
@x2
@x3
@x4
@x5)
(let ((@lb6 (Prims.op_Equality @x0
@x3
@x5)))
(ite (= @lb6
(BoxBool true))
@x4
(ApplyTT @x2
@x5))))
 

:pattern ((GC.upd_map @x0
@x1
@x2
@x3
@x4
@x5))
:qid equation_GC.upd_map))

:named equation_GC.upd_map))
;;;;;;;;;;;;;;;;Equation for GC.mutator_inv
;;; Fact-ids: Name GC.mutator_inv; Namespace GC
(assert (! 
;; def=GC.fst(82,5-82,16); use=GC.fst(82,5-82,16)
(forall ((@x0 Term))
 (! (= (Valid (GC.mutator_inv @x0))

;; def=GC.fst(70,4-75,76); use=GC.fst(83,2-83,5)
(and 
;; def=GC.fst(70,4-70,30); use=GC.fst(83,2-83,5)
(Valid 
;; def=GC.fst(70,4-70,30); use=GC.fst(83,2-83,5)
(GC.to_abs_inj (GC.__proj__Mkgc_state__item__to_abs @x0))
)


;; def=GC.fst(71,7-75,76); use=GC.fst(83,2-83,5)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
GC.mem_addr)

;; def=GC.fst(72,1-72,10); use=GC.fst(83,2-83,5)
(Valid 
;; def=GC.fst(72,1-72,10); use=GC.fst(83,2-83,5)
(GC.trigger @x1)
)
)

;; def=GC.fst(73,10-75,75); use=GC.fst(83,2-83,5)
(and 
;; def=GC.fst(73,10-73,28); use=GC.fst(83,2-83,5)
(Valid 
;; def=GC.fst(73,10-73,28); use=GC.fst(83,2-83,5)
(GC.obj_inv @x0
@x1)
)


;; def=GC.fst(83,25-83,79); use=GC.fst(83,25-83,79)
(or 
;; def=GC.fst(83,25-83,51); use=GC.fst(83,25-83,51)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Unalloc@tok)


;; def=GC.fst(83,55-83,79); use=GC.fst(83,55-83,79)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.White@tok)
)


;; def=GC.fst(75,10-75,75); use=GC.fst(83,2-83,5)
(iff (not (BoxBool_proj_0 (GC.valid (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x1))))

;; def=GC.fst(75,48-75,74); use=GC.fst(83,2-83,5)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Unalloc@tok)
)
)
)
 

:pattern ((GC.trigger @x1))
:qid equation_GC.mutator_inv.1))
)
)
 

:pattern ((GC.mutator_inv @x0))
:qid equation_GC.mutator_inv))

:named equation_GC.mutator_inv))
;;;;;;;;;;;;;;;;Equation for GC.init_invariant
;;; Fact-ids: Name GC.init_invariant; Namespace GC
(assert (! 
;; def=GC.fst(102,5-102,19); use=GC.fst(102,5-102,19)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (GC.init_invariant @x0
@x1))

;; def=GC.fst(103,2-105,32); use=GC.fst(103,2-105,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_refine_de0b2ced8c60ecfc378f030298f31d2b)

;; def=GC.fst(103,12-103,23); use=GC.fst(103,12-103,23)
(<= (BoxInt_proj_0 (GC.mem_lo Dummy_value))
(BoxInt_proj_0 @x2))


;; def=GC.fst(103,27-103,34); use=GC.fst(103,27-103,34)
(< (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x0))
)

;; def=GC.fst(104,12-105,32); use=GC.fst(104,12-105,32)
(and (not (BoxBool_proj_0 (GC.valid (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x1)
@x2))))

;; def=GC.fst(105,12-105,32); use=GC.fst(105,12-105,32)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x1)
@x2)
GC.Unalloc@tok)
)
)
 
;;no pats
:qid equation_GC.init_invariant.1))
)
 

:pattern ((GC.init_invariant @x0
@x1))
:qid equation_GC.init_invariant))

:named equation_GC.init_invariant))
;;;;;;;;;;;;;;;;Equation for FStar.Pervasives.st_post_h'
;;; Fact-ids: Name FStar.Pervasives.st_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(442,4-442,14); use=FStar.Pervasives.fsti(442,4-442,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Pervasives.st_post_h_ @x0
@x1
@x2)
(Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x2
@x0
@x1))
 

:pattern ((FStar.Pervasives.st_post_h_ @x0
@x1
@x2))
:qid equation_FStar.Pervasives.st_post_h_))

:named equation_FStar.Pervasives.st_post_h_))
;;;;;;;;;;;;;;;;Equation for FStar.Pervasives.st_post_h
;;; Fact-ids: Name FStar.Pervasives.st_post_h; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(445,4-445,13); use=FStar.Pervasives.fsti(445,4-445,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.st_post_h @x0
@x1)
(FStar.Pervasives.st_post_h_ @x0
@x1
Prims.l_True))
 

:pattern ((FStar.Pervasives.st_post_h @x0
@x1))
:qid equation_FStar.Pervasives.st_post_h))

:named equation_FStar.Pervasives.st_post_h))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Prop-typing for GC.mutator_inv
;;; Fact-ids: Name GC.mutator_inv; Namespace GC
(assert (! 
;; def=GC.fst(82,5-82,16); use=GC.fst(82,5-82,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(Valid (Prims.subtype_of (GC.mutator_inv @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.mutator_inv @x0)
Prims.unit))
:qid defn_equation_GC.mutator_inv))

:named defn_equation_GC.mutator_inv))
;;;;;;;;;;;;;;;;Prop-typing for GC.init_invariant
;;; Fact-ids: Name GC.init_invariant; Namespace GC
(assert (! 
;; def=GC.fst(102,5-102,19); use=GC.fst(102,5-102,19)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
GC.gc_state))
(Valid (Prims.subtype_of (GC.init_invariant @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.init_invariant @x0
@x1)
Prims.unit))
:qid defn_equation_GC.init_invariant))

:named defn_equation_GC.init_invariant))
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
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(107,14-107,28); use=GC.fst(107,38-107,48)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x3)))
:qid GC_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named GC_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_000a180d19b73c1ee6709364d3437df0)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_000a180d19b73c1ee6709364d3437df0))
:qid GC_pre_typing_Tm_arrow_000a180d19b73c1ee6709364d3437df0))

:named GC_pre_typing_Tm_arrow_000a180d19b73c1ee6709364d3437df0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(107,14-107,28); use=GC.fst(107,38-107,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2))
(and 
;; def=GC.fst(107,14-107,28); use=GC.fst(107,38-107,48)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
@x1))
 

:pattern ((ApplyTT @x0
@x3))
:qid GC_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2)))
:qid GC_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named GC_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0
;;; Fact-ids: Name GC.upd_map; Namespace GC
(assert (! 
;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_000a180d19b73c1ee6709364d3437df0)
(and 
;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType @x4
@x1)
(HasType @x5
@x2)
(HasType @x6
@x1))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6))
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0.1))

(IsTotFun @x0)

;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0.2))


;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
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
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0.3))


;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0.4))


;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
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
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0.5))


;; def=GC.fst(107,14-107,33); use=GC.fst(107,38-108,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType @x4
@x1)
(HasType @x5
@x2))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0.6))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_000a180d19b73c1ee6709364d3437df0))
:qid GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0))

:named GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Pervasives.st_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(442,21-442,67); use=FStar.Pervasives.fsti(442,36-442,67)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x2
@x3
@x4)))
:qid FStar.Pervasives_pre_typing_Tm_arrow_14435f7112db17792f8cd33f8f7ea859))

:named FStar.Pervasives_pre_typing_Tm_arrow_14435f7112db17792f8cd33f8f7ea859))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_14435f7112db17792f8cd33f8f7ea859
;;; Fact-ids: Name FStar.Pervasives.st_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(442,21-442,67); use=FStar.Pervasives.fsti(442,36-442,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x1
@x2
@x3))
(and 
;; def=FStar.Pervasives.fsti(442,21-442,67); use=FStar.Pervasives.fsti(442,36-442,67)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
@x3)
(HasType @x5
(Tm_refine_8d65e998a07dd53ec478e27017d9dba5 @x2
@x1)))
(HasType (ApplyTT (ApplyTT @x0
@x4)
@x5)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x4)
@x5))
:qid FStar.Pervasives_interpretation_Tm_arrow_14435f7112db17792f8cd33f8f7ea859.1))

(IsTotFun @x0)

;; def=FStar.Pervasives.fsti(442,21-442,67); use=FStar.Pervasives.fsti(442,36-442,67)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(IsTotFun (ApplyTT @x0
@x4)))
 

:pattern ((ApplyTT @x0
@x4))
:qid FStar.Pervasives_interpretation_Tm_arrow_14435f7112db17792f8cd33f8f7ea859.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_14435f7112db17792f8cd33f8f7ea859 @x1
@x2
@x3)))
:qid FStar.Pervasives_interpretation_Tm_arrow_14435f7112db17792f8cd33f8f7ea859))

:named FStar.Pervasives_interpretation_Tm_arrow_14435f7112db17792f8cd33f8f7ea859))
(push) ;; push{2

; Starting query at GC.fst(116,19-128,17)

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


;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.upd_map@tok))
:named @kick_partial_app_2e63e359d2270bb84fc5e0cff78bf752))





(declare-fun Non_total_Tm_arrow_e4fef6b0246de48d3ee5b3a3bff886bc () Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! (HasType Non_total_Tm_arrow_e4fef6b0246de48d3ee5b3a3bff886bc
Tm_type)
:named non_total_function_typing_Non_total_Tm_arrow_e4fef6b0246de48d3ee5b3a3bff886bc))


; Encoding query formula : forall (_: Prims.unit).
;   (forall (ptr: GC.mem_addr).
;       (*  - Could not prove post-condition
; *)
;       forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;         GC.init_invariant ptr h /\
;         (forall (a: Prims.unit) (gc': GC.gc_state).
;             GC.init_invariant ptr h /\ GC.mutator_inv gc' ==> p a gc') ==>
;         (forall (a: GC.gc_state) (gc': GC.gc_state).
;             h == gc' /\ a == gc' ==>
;             Prims.hasEq GC.mem_addr /\
;             (forall (any_result: Type0).
;                 GC.mem_addr == any_result ==>
;                 (forall (any_result: (j: GC.mem_addr -> GC.abs_node)).
;                     GC.upd_map a.to_abs ptr GC.no_abs == any_result ==>
;                     Prims.hasEq GC.mem_addr /\
;                     (forall (any_result: Type0).
;                         GC.mem_addr == any_result ==>
;                         (forall (any_result: (j: GC.mem_addr -> GC.color)).
;                             GC.upd_map a.color ptr GC.Unalloc == any_result ==>
;                             (forall (any_result: GC.gc_state).
;                                 GC.Mkgc_state (GC.upd_map a.to_abs ptr GC.no_abs)
;                                   (GC.upd_map a.color ptr GC.Unalloc)
;                                   a.abs_fields
;                                   a.fields ==
;                                 any_result ==>
;                                 (forall (a: Prims.unit) (gc': GC.gc_state).
;                                     GC.Mkgc_state (GC.upd_map a.to_abs ptr GC.no_abs)
;                                       (GC.upd_map a.color ptr GC.Unalloc)
;                                       a.abs_fields
;                                       a.fields ==
;                                     gc' ==>
;                                     (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.unit).
;                                         (forall (x: Prims.unit) (h: GC.gc_state).
;                                             {:pattern Prims.guard_free (k x h)}
;                                             p x h ==> k x h) ==>
;                                         (ptr + 1 < GC.mem_hi == true ==>
;                                           GC.is_mem_addr (ptr + 1) /\
;                                           (forall (return_val: GC.mem_addr).
;                                               return_val == ptr + 1 ==>
;                                               GC.init_invariant (ptr + 1) gc' /\
;                                               (forall (a: Prims.unit) (gc': GC.gc_state).
;                                                   GC.init_invariant (ptr + 1) gc' /\
;                                                   GC.mutator_inv gc' ==>
;                                                   k a gc'))) /\
;                                         (~(ptr + 1 < GC.mem_hi = true) ==>
;                                           (forall (b: Prims.bool).
;                                               ptr + 1 < GC.mem_hi == b ==>
;                                               (forall (any_result: Prims.unit). k any_result gc'))))
;                                 )))))))) /\
;   (forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;       (forall (a: Prims.unit) (gc': GC.gc_state). GC.mutator_inv gc' ==> p a gc') ==>
;       (forall (b: (ptr: GC.mem_addr -> GC.GC Prims.unit)).
;           (0 < GC.mem_lo ==> GC.is_mem_addr GC.mem_lo) /\
;           (forall (any_result: x: Prims.int{0 < x}).
;               GC.mem_lo == any_result ==>
;               GC.init_invariant GC.mem_lo h /\
;               (forall (a: Prims.unit) (gc': GC.gc_state).
;                   GC.init_invariant GC.mem_lo h /\ GC.mutator_inv gc' ==> p a gc'))))


; Context: While encoding a query
; While typechecking the top-level declaration `let initialize`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(and 
;; def=dummy(0,0-0,0); use=GC.fst(116,19-128,17)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=GC.fst(116,19-128,17)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x3
GC.gc_state)

;; def=GC.fst(93,18-93,24); use=GC.fst(120,17-127,53)
(Valid 
;; def=GC.fst(93,18-93,24); use=GC.fst(120,17-127,53)
(GC.init_invariant @x1
@x3)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(120,17-127,53)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_1
(HasType @x4
Prims.unit))
(or label_2
(HasType @x5
GC.gc_state))

;; def=GC.fst(93,44-93,50); use=GC.fst(120,17-127,53)
(or label_3

;; def=GC.fst(93,44-93,50); use=GC.fst(120,17-127,53)
(Valid 
;; def=GC.fst(93,44-93,50); use=GC.fst(120,17-127,53)
(GC.init_invariant @x1
@x3)
)
)


;; def=GC.fst(119,56-119,71); use=GC.fst(120,17-127,53)
(or label_4

;; def=GC.fst(119,56-119,71); use=GC.fst(120,17-127,53)
(Valid 
;; def=GC.fst(119,56-119,71); use=GC.fst(120,17-127,53)
(GC.mutator_inv @x5)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(120,17-127,53)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(120,17-127,53)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(120,17-127,53)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(120,17-127,53)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.3))
)

;; def=GC.fst(93,28-93,81); use=GC.fst(121,19-121,22)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
GC.gc_state)
(HasType @x5
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(121,19-121,22)
(= @x3
@x5)


;; def=GC.fst(99,84-99,92); use=GC.fst(121,19-121,22)
(= @x4
@x5)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(120,17-127,53)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(35,17-35,25)
(or label_5

;; def=Prims.fst(73,23-73,30); use=GC.fst(120,17-127,53)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(120,17-127,53)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(120,17-127,53)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_type)

;; def=GC.fst(35,17-107,15); use=GC.fst(120,17-127,53)
(= GC.mem_addr
@x6)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(120,17-127,53)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346)

;; def=GC.fst(52,2-124,49); use=GC.fst(120,17-127,53)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x4))
@x1)
(GC.no_abs Dummy_value))
@x7)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(120,17-127,53)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,17-34,25)
(or label_6

;; def=Prims.fst(73,23-73,30); use=GC.fst(120,17-127,53)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(120,17-127,53)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(120,17-127,53)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Tm_type)

;; def=GC.fst(34,17-107,15); use=GC.fst(120,17-127,53)
(= GC.mem_addr
@x8)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(120,17-127,53)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)

;; def=GC.fst(53,2-123,48); use=GC.fst(120,17-127,53)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x4))
@x1)
GC.Unalloc@tok)
@x9)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(120,17-127,53)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
GC.gc_state)

;; def=GC.fst(122,14-124,49); use=GC.fst(122,14-124,49)
(= (GC.Mkgc_state (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x4))
@x1)
(GC.no_abs Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x4))
@x1)
GC.Unalloc@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x4)
(GC.__proj__Mkgc_state__item__fields @x4))
@x10)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(126,10-126,13)
(forall ((@x11 Term) (@x12 Term))
 (! (implies (and (HasType @x11
Prims.unit)
(HasType @x12
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(126,10-126,13)
(= (GC.Mkgc_state (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x4))
@x1)
(GC.no_abs Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x4))
@x1)
GC.Unalloc@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x4)
(GC.__proj__Mkgc_state__item__fields @x4))
@x12)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(120,17-127,53)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(120,17-127,53)
(forall ((@x14 Term) (@x15 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(120,17-127,53)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(120,17-127,53)
(ApplyTT (ApplyTT @x2
@x14)
@x15)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(120,17-127,53)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(120,17-127,53)
(ApplyTT (ApplyTT @x13
@x14)
@x15)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x13
@x14)
@x15))
:qid @query.12))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(120,17-127,53)
(and (implies 
;; def=GC.fst(127,13-127,29); use=GC.fst(127,13-127,29)
(= (Prims.op_LessThan (Prims.op_Addition @x1
(BoxInt 1))
(GC.mem_hi Dummy_value))
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(120,17-127,53)
(and 
;; def=GC.fst(33,23-33,36); use=GC.fst(127,44-127,53)
(or label_7

;; def=GC.fst(33,23-33,36); use=GC.fst(127,44-127,53)
(BoxBool_proj_0 (GC.is_mem_addr (Prims.op_Addition @x1
(BoxInt 1))))
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(120,17-127,53)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
GC.mem_addr)

;; def=Prims.fst(356,26-356,41); use=GC.fst(120,17-127,53)
(= @x14
(Prims.op_Addition @x1
(BoxInt 1)))
)

;; def=GC.fst(93,18-93,81); use=GC.fst(127,35-127,43)
(and 
;; def=GC.fst(93,18-93,24); use=GC.fst(127,35-127,43)
(or label_8

;; def=GC.fst(93,18-93,24); use=GC.fst(127,35-127,43)
(Valid 
;; def=GC.fst(93,18-93,24); use=GC.fst(127,35-127,43)
(GC.init_invariant (Prims.op_Addition @x1
(BoxInt 1))
@x12)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(127,35-127,43)
(forall ((@x15 Term) (@x16 Term))
 (! (implies (and (HasType @x15
Prims.unit)
(HasType @x16
GC.gc_state)

;; def=GC.fst(93,44-93,50); use=GC.fst(127,35-127,43)
(Valid 
;; def=GC.fst(93,44-93,50); use=GC.fst(127,35-127,43)
(GC.init_invariant (Prims.op_Addition @x1
(BoxInt 1))
@x12)
)


;; def=GC.fst(119,56-119,71); use=GC.fst(127,35-127,43)
(Valid 
;; def=GC.fst(119,56-119,71); use=GC.fst(127,35-127,43)
(GC.mutator_inv @x16)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(127,35-127,43)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(127,35-127,43)
(ApplyTT (ApplyTT @x13
@x15)
@x16)
)
)
 
;;no pats
:qid @query.14))
)
)
 
;;no pats
:qid @query.13))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(120,17-127,53)
(not 
;; def=GC.fst(127,13-127,29); use=GC.fst(127,13-127,29)
(= (Prims.op_LessThan (Prims.op_Addition @x1
(BoxInt 1))
(GC.mem_hi Dummy_value))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=GC.fst(120,17-127,53)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Prims.bool)

;; def=GC.fst(127,10-127,53); use=GC.fst(127,10-127,53)
(= (Prims.op_LessThan (Prims.op_Addition @x1
(BoxInt 1))
(GC.mem_hi Dummy_value))
@x14)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(120,17-127,53)
(forall ((@x15 Term))
 (! (implies (HasType @x15
Prims.unit)

;; def=GC.fst(88,94-88,100); use=GC.fst(120,17-127,53)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(120,17-127,53)
(ApplyTT (ApplyTT @x13
@x15)
@x12)
)
)
 
;;no pats
:qid @query.16))
)
 
;;no pats
:qid @query.15))
))
)
 
;;no pats
:qid @query.11))
)
 
;;no pats
:qid @query.10))
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
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))


;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x2
GC.gc_state)

;; def=GC.fst(93,28-93,81); use=GC.fst(116,19-128,17)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (or label_9
(HasType @x3
Prims.unit))
(or label_10
(HasType @x4
GC.gc_state))

;; def=GC.fst(115,28-115,42); use=GC.fst(116,19-128,17)
(or label_11

;; def=GC.fst(115,28-115,42); use=GC.fst(116,19-128,17)
(Valid 
;; def=GC.fst(115,28-115,42); use=GC.fst(116,19-128,17)
(GC.mutator_inv @x4)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(116,19-128,17)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(116,19-128,17)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(116,19-128,17)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(116,19-128,17)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
:qid @query.18))
)

;; def=FStar.Pervasives.fsti(489,2-489,27); use=GC.fst(116,19-128,17)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Non_total_Tm_arrow_e4fef6b0246de48d3ee5b3a3bff886bc)

;; def=Prims.fst(459,77-459,89); use=GC.fst(116,19-128,17)
(and (implies 
;; def=GC.fst(20,26-20,31); use=GC.fst(128,11-128,17)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (GC.mem_lo Dummy_value)))


;; def=GC.fst(33,23-33,36); use=GC.fst(128,11-128,17)
(or label_12

;; def=GC.fst(33,23-33,36); use=GC.fst(128,11-128,17)
(BoxBool_proj_0 (GC.is_mem_addr (GC.mem_lo Dummy_value)))
)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(116,19-128,17)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Tm_refine_6faaaf327b122a7307a5bdd1f21b4925)

;; def=GC.fst(117,21-128,17); use=GC.fst(117,21-128,17)
(= (GC.mem_lo Dummy_value)
@x4)
)

;; def=GC.fst(93,18-93,81); use=GC.fst(128,2-128,10)
(and 
;; def=GC.fst(93,18-93,24); use=GC.fst(128,2-128,10)
(or label_13

;; def=GC.fst(93,18-93,24); use=GC.fst(128,2-128,10)
(Valid 
;; def=GC.fst(93,18-93,24); use=GC.fst(128,2-128,10)
(GC.init_invariant (GC.mem_lo Dummy_value)
@x2)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(128,2-128,10)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
Prims.unit)
(HasType @x6
GC.gc_state)

;; def=GC.fst(93,44-93,50); use=GC.fst(128,2-128,10)
(Valid 
;; def=GC.fst(93,44-93,50); use=GC.fst(128,2-128,10)
(GC.init_invariant (GC.mem_lo Dummy_value)
@x2)
)


;; def=GC.fst(119,56-119,71); use=GC.fst(128,2-128,10)
(Valid 
;; def=GC.fst(119,56-119,71); use=GC.fst(128,2-128,10)
(GC.mutator_inv @x6)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(128,2-128,10)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(128,2-128,10)
(ApplyTT (ApplyTT @x1
@x5)
@x6)
)
)
 
;;no pats
:qid @query.21))
)
)
 
;;no pats
:qid @query.20))
)
)
 
;;no pats
:qid @query.19))
)
 
;;no pats
:qid @query.17))
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
; QUERY ID: (GC.initialize, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346, GC_pretyping_27e56dec3f0cf9a6af115223c7bb363f, bool_inversion, equality_tok_GC.Unalloc@tok, equality_tok_GC.White@tok, equation_GC.init_invariant, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.obj_inv, equation_GC.to_abs_inj, equation_GC.upd_map, equation_GC.valid, equation_Prims.eqtype, fuel_guarded_inversion_GC.gc_state, function_token_typing_GC.__proj__Mkgc_state__item__color, function_token_typing_GC.__proj__Mkgc_state__item__to_abs, haseqTm_refine_5248130f0b0d7223b3b6331b13742bec, int_inversion, primitive_Prims.op_Addition, primitive_Prims.op_AmpAmp, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_disEquality, proj_equation_GC.Mkgc_state_color, proj_equation_GC.Mkgc_state_to_abs, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_GC.Mkgc_state_color, projection_inverse_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925, refinement_interpretation_Tm_refine_de0b2ced8c60ecfc378f030298f31d2b, refinement_interpretation_Tm_refine_ebe8d554029941ff856db931e680cc38, token_correspondence_GC.__proj__Mkgc_state__item__color, token_correspondence_GC.__proj__Mkgc_state__item__to_abs, token_correspondence_GC.upd_map, typing_GC.is_mem_addr, typing_GC.mem_hi, typing_GC.mem_lo, typing_GC.valid, typing_Prims.int, typing_tok_GC.White@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let initialize


; <Start encoding let initialize>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.initialize (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.initialize@tok () Term)

; </end encoding let initialize>


; encoding sigelt val GC.read_field


; <Skipped val GC.read_field/>

(push) ;; push{2

; Starting query at GC.fst(135,2-137,20)

(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)






; Encoding query formula : forall (ptr: GC.mem_addr) (f: GC.field).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.st_post_h GC.gc_state GC.mem_addr) (h: GC.gc_state).
;     GC.ptr_lifts_to h ptr (h.to_abs ptr) /\ GC.mutator_inv h /\
;     (forall (a: GC.mem_addr) (gc': GC.gc_state).
;         GC.ptr_lifts_to h ptr (h.to_abs ptr) /\ GC.mutator_inv h /\
;         (h == gc') /\ GC.ptr_lifts_to gc' a (h.abs_fields (h.to_abs ptr, f)) /\ GC.mutator_inv gc' ==>
;         p a gc') ==>
;     GC.trigger ptr /\
;     (forall (pure_result: Prims.unit).
;         GC.trigger ptr ==>
;         (forall (a: GC.gc_state) (gc': GC.gc_state).
;             h == gc' /\ a == gc' ==> p (a.fields (ptr, f)) gc'))


; Context: While encoding a query
; While typechecking the top-level declaration `let read_field`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
GC.field))

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.st_post_h GC.gc_state
GC.mem_addr))
(HasType @x3
GC.gc_state)

;; def=GC.fst(131,23-131,58); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(131,23-131,58); use=GC.fst(135,2-137,20)
(GC.ptr_lifts_to @x3
@x0
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x0))
)


;; def=GC.fst(96,35-96,49); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(135,2-137,20)
(GC.mutator_inv @x3)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(135,2-137,20)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_1
(HasType @x4
GC.mem_addr))
(or label_2
(HasType @x5
GC.gc_state))

;; def=GC.fst(131,23-131,58); use=GC.fst(135,2-137,20)
(or label_3

;; def=GC.fst(131,23-131,58); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(131,23-131,58); use=GC.fst(135,2-137,20)
(GC.ptr_lifts_to @x3
@x0
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x0))
)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(135,2-137,20)
(or label_4

;; def=GC.fst(96,35-96,49); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(135,2-137,20)
(GC.mutator_inv @x3)
)
)


;; def=GC.fst(132,28-132,35); use=GC.fst(135,2-137,20)
(or label_5

;; def=GC.fst(132,28-132,35); use=GC.fst(135,2-137,20)
(= @x3
@x5)
)


;; def=GC.fst(133,15-133,68); use=GC.fst(135,2-137,20)
(or label_6

;; def=GC.fst(133,15-133,68); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(133,15-133,68); use=GC.fst(135,2-137,20)
(GC.ptr_lifts_to @x5
@x4
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x0)
@x1)))
)
)


;; def=GC.fst(97,51-97,66); use=GC.fst(135,2-137,20)
(or label_7

;; def=GC.fst(97,51-97,66); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(135,2-137,20)
(GC.mutator_inv @x5)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(135,2-137,20)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(135,2-137,20)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(135,2-137,20)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=GC.fst(135,2-135,5)
(and 
;; def=GC.fst(135,6-135,19); use=GC.fst(135,2-135,5)
(or label_8

;; def=GC.fst(135,6-135,19); use=GC.fst(135,2-135,5)
(Valid 
;; def=GC.fst(135,6-135,19); use=GC.fst(135,2-135,5)
(GC.trigger @x0)
)
)


;; def=Prims.fst(441,36-441,97); use=GC.fst(135,2-135,5)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=GC.fst(135,6-135,19); use=GC.fst(135,2-135,5)
(Valid 
;; def=GC.fst(135,6-135,19); use=GC.fst(135,2-135,5)
(GC.trigger @x0)
)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(136,11-136,14)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
GC.gc_state)
(HasType @x6
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(136,11-136,14)
(= @x3
@x6)


;; def=GC.fst(99,84-99,92); use=GC.fst(136,11-136,14)
(= @x5
@x6)
)

;; def=FStar.Pervasives.fsti(463,24-463,34); use=GC.fst(135,2-137,20)
(Valid 
;; def=FStar.Pervasives.fsti(463,24-463,34); use=GC.fst(135,2-137,20)
(ApplyTT (ApplyTT @x2
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x5)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
@x1)))
@x6)
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
)
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
; QUERY ID: (GC.read_field, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_interpretation_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791, GC_pretyping_ab0ffb7fae1c8ce581a4f6505251cb9c, data_elim_GC.Mkgc_state, data_typing_intro_FStar.Pervasives.Native.Mktuple2@tok, equality_tok_GC.F2@tok, equation_GC.field_map, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.obj_inv, equation_GC.ptr_lifts_to, equation_GC.trigger, equation_GC.valid, fuel_guarded_inversion_GC.gc_state, int_inversion, kinding_GC.field@tok, proj_equation_GC.Mkgc_state_fields, proj_equation_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_kinding_Tm_refine_5248130f0b0d7223b3b6331b13742bec, token_correspondence_GC.__proj__Mkgc_state__item__fields, typing_tok_GC.F2@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let read_field


; <Start encoding let read_field>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.read_field (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.read_field@tok () Term)

; </end encoding let read_field>


; encoding sigelt val GC.write_field


; <Skipped val GC.write_field/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.ptr_lifts; Namespace GC
(assert (! 
;; def=GC.fst(58,5-58,14); use=GC.fst(58,5-58,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
GC.mem_addr))
(HasType (GC.ptr_lifts @x0
@x1)
Tm_type))
 

:pattern ((GC.ptr_lifts @x0
@x1))
:qid typing_GC.ptr_lifts))

:named typing_GC.ptr_lifts))
;;;;;;;;;;;;;;;;Equation for GC.ptr_lifts
;;; Fact-ids: Name GC.ptr_lifts; Namespace GC
(assert (! 
;; def=GC.fst(58,5-58,14); use=GC.fst(58,5-58,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (GC.ptr_lifts @x0
@x1)
(Prims.b2t (GC.valid (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x1))))
 

:pattern ((GC.ptr_lifts @x0
@x1))
:qid equation_GC.ptr_lifts))

:named equation_GC.ptr_lifts))
;;;;;;;;;;;;;;;;b2t typing
;;; Fact-ids: Name Prims.b2t; Namespace Prims
(assert (! 
;; def=Prims.fst(180,5-180,8); use=Prims.fst(180,5-180,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.bool)
(HasType (Prims.b2t @x0)
Tm_type))
 

:pattern ((Prims.b2t @x0))
:qid b2t_typing))

:named b2t_typing))
;;;;;;;;;;;;;;;;b2t def
;;; Fact-ids: Name Prims.b2t; Namespace Prims
(assert (! 
;; def=Prims.fst(180,5-180,8); use=Prims.fst(180,5-180,8)
(forall ((@x0 Term))
 (! (= (Valid (Prims.b2t @x0))
(BoxBool_proj_0 @x0))
 

:pattern ((Prims.b2t @x0))
:qid b2t_def))

:named b2t_def))
(push) ;; push{2

; Starting query at GC.fst(143,2-149,9)

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




;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.upd_map@tok))
:named @kick_partial_app_2e63e359d2270bb84fc5e0cff78bf752))










; Encoding query formula : forall (ptr: GC.mem_addr) (f: GC.field) (v: GC.mem_addr).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;     GC.ptr_lifts h ptr /\ GC.ptr_lifts h v /\ GC.mutator_inv h /\
;     (forall (a: Prims.unit) (gc': GC.gc_state).
;         GC.ptr_lifts h ptr /\ GC.ptr_lifts h v /\ GC.mutator_inv h /\
;         (gc'.color == h.color) /\ GC.mutator_inv gc' ==>
;         p a gc') ==>
;     GC.trigger ptr /\ GC.trigger v /\
;     (forall (pure_result: Prims.unit).
;         GC.trigger ptr /\ GC.trigger v ==>
;         (forall (a: GC.gc_state) (gc': GC.gc_state).
;             h == gc' /\ a == gc' ==>
;             Prims.hasEq (GC.abs_node & GC.field) /\
;             (forall (return_val: Prims.eqtype).
;                 return_val == GC.abs_node & GC.field ==>
;                 (forall (any_result: (j: GC.abs_node & GC.field -> GC.abs_node)).
;                     GC.upd_map a.abs_fields (a.to_abs ptr, f) (a.to_abs v) == any_result ==>
;                     Prims.hasEq (GC.mem_addr & GC.field) /\
;                     (forall (return_val: Prims.eqtype).
;                         return_val == GC.mem_addr & GC.field ==>
;                         (forall (any_result: (j: GC.mem_addr & GC.field -> GC.mem_addr)).
;                             GC.upd_map a.fields (ptr, f) v == any_result ==>
;                             (forall (any_result: GC.gc_state).
;                                 GC.Mkgc_state a.to_abs
;                                   a.color
;                                   (GC.upd_map a.abs_fields (a.to_abs ptr, f) (a.to_abs v))
;                                   (GC.upd_map a.fields (ptr, f) v) ==
;                                 any_result ==>
;                                 (forall (a: Prims.unit) (gc': GC.gc_state).
;                                     GC.Mkgc_state a.to_abs
;                                       a.color
;                                       (GC.upd_map a.abs_fields (a.to_abs ptr, f) (a.to_abs v))
;                                       (GC.upd_map a.fields (ptr, f) v) ==
;                                     gc' ==>
;                                     p a gc'))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let write_field`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
GC.field)
(HasType @x2
GC.mem_addr))

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x4
GC.gc_state)

;; def=GC.fst(140,23-140,39); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(140,23-140,39); use=GC.fst(143,2-149,9)
(GC.ptr_lifts @x4
@x0)
)


;; def=GC.fst(140,43-140,57); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(140,43-140,57); use=GC.fst(143,2-149,9)
(GC.ptr_lifts @x4
@x2)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(143,2-149,9)
(GC.mutator_inv @x4)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(143,2-149,9)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (or label_1
(HasType @x5
Prims.unit))
(or label_2
(HasType @x6
GC.gc_state))

;; def=GC.fst(140,23-140,39); use=GC.fst(143,2-149,9)
(or label_3

;; def=GC.fst(140,23-140,39); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(140,23-140,39); use=GC.fst(143,2-149,9)
(GC.ptr_lifts @x4
@x0)
)
)


;; def=GC.fst(140,43-140,57); use=GC.fst(143,2-149,9)
(or label_4

;; def=GC.fst(140,43-140,57); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(140,43-140,57); use=GC.fst(143,2-149,9)
(GC.ptr_lifts @x4
@x2)
)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(143,2-149,9)
(or label_5

;; def=GC.fst(96,35-96,49); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(143,2-149,9)
(GC.mutator_inv @x4)
)
)


;; def=GC.fst(141,28-141,47); use=GC.fst(143,2-149,9)
(or label_6

;; def=GC.fst(141,28-141,47); use=GC.fst(143,2-149,9)
(= (GC.__proj__Mkgc_state__item__color @x6)
(GC.__proj__Mkgc_state__item__color @x4))
)


;; def=GC.fst(97,51-97,66); use=GC.fst(143,2-149,9)
(or label_7

;; def=GC.fst(97,51-97,66); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(143,2-149,9)
(GC.mutator_inv @x6)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(143,2-149,9)
(ApplyTT (ApplyTT @x3
@x5)
@x6)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(143,2-149,9)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(143,2-149,9)
(ApplyTT (ApplyTT @x3
@x5)
@x6)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=GC.fst(143,2-143,5)
(and 
;; def=GC.fst(143,7-143,18); use=GC.fst(143,2-143,5)
(or label_8

;; def=GC.fst(143,7-143,18); use=GC.fst(143,2-143,5)
(Valid 
;; def=GC.fst(143,7-143,18); use=GC.fst(143,2-143,5)
(GC.trigger @x0)
)
)


;; def=GC.fst(143,22-143,31); use=GC.fst(143,2-143,5)
(or label_9

;; def=GC.fst(143,22-143,31); use=GC.fst(143,2-143,5)
(Valid 
;; def=GC.fst(143,22-143,31); use=GC.fst(143,2-143,5)
(GC.trigger @x2)
)
)


;; def=Prims.fst(441,36-441,97); use=GC.fst(143,2-143,5)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=GC.fst(143,7-143,18); use=GC.fst(143,2-143,5)
(Valid 
;; def=GC.fst(143,7-143,18); use=GC.fst(143,2-143,5)
(GC.trigger @x0)
)


;; def=GC.fst(143,22-143,31); use=GC.fst(143,2-143,5)
(Valid 
;; def=GC.fst(143,22-143,31); use=GC.fst(143,2-143,5)
(GC.trigger @x2)
)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(144,11-144,14)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
GC.gc_state)
(HasType @x7
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(144,11-144,14)
(= @x4
@x7)


;; def=GC.fst(99,84-99,92); use=GC.fst(144,11-144,14)
(= @x6
@x7)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(143,2-149,9)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(38,21-38,37)
(or label_10

;; def=Prims.fst(73,23-73,30); use=GC.fst(143,2-149,9)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(143,2-149,9)
(Prims.hasEq (FStar.Pervasives.Native.tuple2 (GC.abs_node Dummy_value)
GC.field))
)
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(143,2-149,9)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.eqtype)

;; def=Prims.fst(356,26-356,41); use=GC.fst(143,2-149,9)
(= @x8
(FStar.Pervasives.Native.tuple2 (GC.abs_node Dummy_value)
GC.field))
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(143,2-149,9)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Tm_arrow_305f25c9c866bff8516b56dc030d0f8c)

;; def=GC.fst(54,2-147,69); use=GC.fst(143,2-149,9)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 (GC.abs_node Dummy_value)
GC.field))
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__abs_fields @x6))
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x0)
@x1))
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x2))
@x9)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(143,2-149,9)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(37,21-37,37)
(or label_11

;; def=Prims.fst(73,23-73,30); use=GC.fst(143,2-149,9)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(143,2-149,9)
(Prims.hasEq (FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
)
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(143,2-149,9)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.eqtype)

;; def=Prims.fst(356,26-356,41); use=GC.fst(143,2-149,9)
(= @x10
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(143,2-149,9)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791)

;; def=GC.fst(55,2-146,39); use=GC.fst(143,2-149,9)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
@x1))
@x2)
@x11)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(143,2-149,9)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
GC.gc_state)

;; def=GC.fst(145,6-147,70); use=GC.fst(145,6-147,70)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x6)
(GC.__proj__Mkgc_state__item__color @x6)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 (GC.abs_node Dummy_value)
GC.field))
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__abs_fields @x6))
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x0)
@x1))
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x2))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
@x1))
@x2))
@x12)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(149,2-149,5)
(forall ((@x13 Term) (@x14 Term))
 (! (implies (and (HasType @x13
Prims.unit)
(HasType @x14
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(149,2-149,5)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x6)
(GC.__proj__Mkgc_state__item__color @x6)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 (GC.abs_node Dummy_value)
GC.field))
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__abs_fields @x6))
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x0)
@x1))
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x2))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
@x1))
@x2))
@x14)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(149,2-149,5)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(149,2-149,5)
(ApplyTT (ApplyTT @x3
@x13)
@x14)
)
)
 
;;no pats
:qid @query.10))
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
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
)
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
; QUERY ID: (GC.write_field, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_pretyping_ab0ffb7fae1c8ce581a4f6505251cb9c, assumption_FStar.Pervasives.Native.tuple2__uu___haseq, assumption_GC.field__uu___haseq, b2t_def, equality_tok_GC.F2@tok, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.obj_inv, equation_GC.ptr_lifts, equation_GC.ptr_lifts_to, equation_GC.to_abs_inj, equation_GC.trigger, equation_GC.upd_map, equation_GC.valid, equation_Prims.eqtype, fuel_guarded_inversion_GC.field, fuel_guarded_inversion_GC.gc_state, haseqTm_refine_5248130f0b0d7223b3b6331b13742bec, int_inversion, kinding_GC.field@tok, primitive_Prims.op_Equality, primitive_Prims.op_disEquality, proj_equation_GC.Mkgc_state_abs_fields, proj_equation_GC.Mkgc_state_color, proj_equation_GC.Mkgc_state_fields, proj_equation_GC.Mkgc_state_to_abs, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_GC.Mkgc_state_abs_fields, projection_inverse_GC.Mkgc_state_color, projection_inverse_GC.Mkgc_state_fields, projection_inverse_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_kinding_Tm_refine_5248130f0b0d7223b3b6331b13742bec, token_correspondence_GC.__proj__Mkgc_state__item__abs_fields, token_correspondence_GC.__proj__Mkgc_state__item__color, token_correspondence_GC.__proj__Mkgc_state__item__fields, token_correspondence_GC.__proj__Mkgc_state__item__to_abs, token_correspondence_GC.upd_map, typing_GC.abs_node, typing_Prims.int, typing_tok_GC.F2@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let write_field


; <Start encoding let write_field>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.write_field (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.write_field@tok () Term)

; </end encoding let write_field>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.gc_inv; Namespace GC
(assert (! 
;; def=GC.fst(77,5-77,11); use=GC.fst(77,5-77,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (GC.gc_inv @x0)
Prims.logical))
 

:pattern ((GC.gc_inv @x0))
:qid typing_GC.gc_inv))

:named typing_GC.gc_inv))
;;;;;;;;;;;;;;;;Equation for GC.gc_inv
;;; Fact-ids: Name GC.gc_inv; Namespace GC
(assert (! 
;; def=GC.fst(77,5-77,11); use=GC.fst(77,5-77,11)
(forall ((@x0 Term))
 (! (= (Valid (GC.gc_inv @x0))

;; def=GC.fst(70,4-75,76); use=GC.fst(78,2-78,5)
(and 
;; def=GC.fst(70,4-70,30); use=GC.fst(78,2-78,5)
(Valid 
;; def=GC.fst(70,4-70,30); use=GC.fst(78,2-78,5)
(GC.to_abs_inj (GC.__proj__Mkgc_state__item__to_abs @x0))
)


;; def=GC.fst(71,7-75,76); use=GC.fst(78,2-78,5)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
GC.mem_addr)

;; def=GC.fst(72,1-72,10); use=GC.fst(78,2-78,5)
(Valid 
;; def=GC.fst(72,1-72,10); use=GC.fst(78,2-78,5)
(GC.trigger @x1)
)
)

;; def=GC.fst(73,10-75,75); use=GC.fst(78,2-78,5)
(and 
;; def=GC.fst(73,10-73,28); use=GC.fst(78,2-78,5)
(Valid 
;; def=GC.fst(73,10-73,28); use=GC.fst(78,2-78,5)
(GC.obj_inv @x0
@x1)
)


;; def=GC.fst(79,6-80,73); use=GC.fst(79,6-80,73)
(implies 
;; def=GC.fst(79,7-79,31); use=GC.fst(79,7-79,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Black@tok)


;; def=GC.fst(80,12-80,72); use=GC.fst(80,12-80,72)
(forall ((@x2 Term))
 (! (implies (HasType @x2
GC.field)

;; def=GC.fst(80,23-80,71); use=GC.fst(80,23-80,71)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x0)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x1
@x2)))
GC.White@tok))
)
 
;;no pats
:qid equation_GC.gc_inv.2))
)


;; def=GC.fst(75,10-75,75); use=GC.fst(78,2-78,5)
(iff (not (BoxBool_proj_0 (GC.valid (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x1))))

;; def=GC.fst(75,48-75,74); use=GC.fst(78,2-78,5)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Unalloc@tok)
)
)
)
 

:pattern ((GC.trigger @x1))
:qid equation_GC.gc_inv.1))
)
)
 

:pattern ((GC.gc_inv @x0))
:qid equation_GC.gc_inv))

:named equation_GC.gc_inv))
;;;;;;;;;;;;;;;;Prop-typing for GC.gc_inv
;;; Fact-ids: Name GC.gc_inv; Namespace GC
(assert (! 
;; def=GC.fst(77,5-77,11); use=GC.fst(77,5-77,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(Valid (Prims.subtype_of (GC.gc_inv @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.gc_inv @x0)
Prims.unit))
:qid defn_equation_GC.gc_inv))

:named defn_equation_GC.gc_inv))
(push) ;; push{2

; Starting query at GC.fst(151,0-159,65)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)





; Encoding query formula : forall (ptr: GC.mem_addr) (gc: GC.gc_state) (_: Prims.unit) (gc': GC.gc_state).
;   (*  - Could not prove post-condition
; *)
;   (GC.gc_inv gc' ==>
;     (forall (i: GC.mem_addr).
;         GC.trigger i ==> Prims.hasEq GC.color /\ (gc'.color i <> GC.Black ==> Prims.hasEq GC.color))
;   ) /\
;   (GC.gc_inv gc' /\
;     (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;         GC.trigger i ==> gc'.color i <> GC.Black ==> gc.color i = gc'.color i) ==>
;     Prims.hasEq GC.color)


; Context: While encoding a query
; While typechecking the top-level declaration `val GC.mark`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=dummy(0,0-0,0); use=GC.fst(151,0-159,65)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
GC.gc_state)
(HasType @x2
Prims.unit)
(HasType @x3
GC.gc_state))

;; def=GC.fst(34,33-157,63); use=GC.fst(151,15-151,34)
(and (implies 
;; def=GC.fst(153,28-153,38); use=GC.fst(151,15-151,34)
(Valid 
;; def=GC.fst(153,28-153,38); use=GC.fst(151,15-151,34)
(GC.gc_inv @x3)
)


;; def=dummy(0,0-0,0); use=GC.fst(151,15-151,34)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.mem_addr)

;; def=GC.fst(155,35-155,44); use=GC.fst(151,15-151,34)
(Valid 
;; def=GC.fst(155,35-155,44); use=GC.fst(151,15-151,34)
(GC.trigger @x4)
)
)

;; def=GC.fst(34,33-156,56); use=GC.fst(151,15-151,34)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(151,15-151,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(151,15-151,34)
(Prims.hasEq GC.color)
)
)

(implies 
;; def=GC.fst(156,36-156,56); use=GC.fst(151,15-151,34)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x4)
GC.Black@tok))


;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_2

;; def=Prims.fst(73,23-73,30); use=GC.fst(151,15-151,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(151,15-151,34)
(Prims.hasEq GC.color)
)
)
))
)
 
;;no pats
:qid @query.1))
)
(implies 
;; def=GC.fst(153,28-157,63); use=GC.fst(151,15-151,34)
(and 
;; def=GC.fst(153,28-153,38); use=GC.fst(151,15-151,34)
(Valid 
;; def=GC.fst(153,28-153,38); use=GC.fst(151,15-151,34)
(GC.gc_inv @x3)
)


;; def=GC.fst(154,28-157,63); use=GC.fst(151,15-151,34)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.mem_addr)

;; def=GC.fst(155,35-155,44); use=GC.fst(151,15-151,34)
(Valid 
;; def=GC.fst(155,35-155,44); use=GC.fst(151,15-151,34)
(GC.trigger @x4)
)


;; def=GC.fst(156,36-156,56); use=GC.fst(151,15-151,34)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x4)
GC.Black@tok))
)

;; def=GC.fst(157,37-157,61); use=GC.fst(151,15-151,34)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x1)
@x4)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x4))
)
 

:pattern ((GC.trigger @x4))
:qid @query.2))
)


;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_3

;; def=Prims.fst(73,23-73,30); use=GC.fst(151,15-151,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(151,15-151,34)
(Prims.hasEq GC.color)
)
)
))
)
 
;;no pats
:qid @query))
)
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
; QUERY ID: (GC.mark, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val GC.mark


; <Skipped val GC.mark/>

(push) ;; push{2

; Starting query at GC.fst(160,18-170,5)

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.mark (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.mark@tok () Term)
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

;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.upd_map@tok))
:named @kick_partial_app_2e63e359d2270bb84fc5e0cff78bf752))











































; Encoding query formula : forall (ptr: GC.mem_addr).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;     GC.gc_inv h /\ GC.trigger ptr /\ GC.ptr_lifts h ptr /\
;     (forall (a: Prims.unit) (gc': GC.gc_state).
;         GC.gc_inv h /\ GC.trigger ptr /\ GC.ptr_lifts h ptr /\
;         GC.gc_inv gc' /\
;         (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;             GC.trigger i ==> gc'.color i <> GC.Black ==> h.color i = gc'.color i) /\
;         (gc'.color ptr <> GC.White) /\
;         (exists (c: GC.color_map). gc' == GC.Mkgc_state h.to_abs c h.abs_fields h.fields) ==>
;         p a gc') ==>
;     (forall (a: GC.gc_state) (gc': GC.gc_state).
;         h == gc' /\ a == gc' ==>
;         Prims.hasEq GC.color /\
;         (forall (any_result: Type0).
;             GC.color == any_result ==>
;             (forall (any_result: Prims.bool).
;                 a.color ptr = GC.White == any_result ==>
;                 (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.unit).
;                     (forall (x: Prims.unit) (h: GC.gc_state). {:pattern Prims.guard_free (k x h)}
;                         p x h ==> k x h) ==>
;                     (a.color ptr = GC.White == true ==>
;                       Prims.hasEq GC.mem_addr /\
;                       (forall (any_result: Type0).
;                           GC.mem_addr == any_result ==>
;                           (forall (any_result: (j: GC.mem_addr -> GC.color)).
;                               GC.upd_map a.color ptr GC.Gray == any_result ==>
;                               (forall (any_result: GC.gc_state).
;                                   GC.Mkgc_state a.to_abs
;                                     (GC.upd_map a.color ptr GC.Gray)
;                                     a.abs_fields
;                                     a.fields ==
;                                   any_result ==>
;                                   (forall (a: Prims.unit) (gc': GC.gc_state).
;                                       GC.Mkgc_state a.to_abs
;                                         (GC.upd_map a.color ptr GC.Gray)
;                                         a.abs_fields
;                                         a.fields ==
;                                       gc' ==>
;                                       GC.gc_inv gc' /\
;                                       GC.trigger ((GC.Mkgc_state a.to_abs
;                                               (GC.upd_map a.color ptr GC.Gray)
;                                               a.abs_fields
;                                               a.fields)
;                                             .fields (ptr,
;                                             GC.F1)) /\
;                                       GC.ptr_lifts gc'
;                                         ((GC.Mkgc_state a.to_abs
;                                               (GC.upd_map a.color ptr GC.Gray)
;                                               a.abs_fields
;                                               a.fields)
;                                             .fields (ptr,
;                                             GC.F1)) /\
;                                       (forall (a: Prims.unit) (gc': GC.gc_state).
;                                           GC.gc_inv gc' /\
;                                           GC.trigger ((GC.Mkgc_state a.to_abs
;                                                   (GC.upd_map a.color ptr GC.Gray)
;                                                   a.abs_fields
;                                                   a.fields)
;                                                 .fields (ptr,
;                                                 GC.F1)) /\
;                                           GC.ptr_lifts gc'
;                                             ((GC.Mkgc_state a.to_abs
;                                                   (GC.upd_map a.color ptr GC.Gray)
;                                                   a.abs_fields
;                                                   a.fields)
;                                                 .fields (ptr,
;                                                 GC.F1)) /\
;                                           GC.gc_inv gc' /\
;                                           (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                                               GC.trigger i ==>
;                                               gc'.color i <> GC.Black ==> gc'.color i = gc'.color i) /\
;                                           (gc'.color ((GC.Mkgc_state a.to_abs
;                                                     (GC.upd_map a.color ptr GC.Gray)
;                                                     a.abs_fields
;                                                     a.fields)
;                                                   .fields (ptr,
;                                                   GC.F1)) <>
;                                             GC.White) /\
;                                           (exists (c: GC.color_map).
;                                               gc' ==
;                                               GC.Mkgc_state gc'.to_abs c gc'.abs_fields gc'.fields) ==>
;                                           GC.gc_inv gc' /\
;                                           GC.trigger ((GC.Mkgc_state a.to_abs
;                                                   (GC.upd_map a.color ptr GC.Gray)
;                                                   a.abs_fields
;                                                   a.fields)
;                                                 .fields (ptr,
;                                                 GC.F2)) /\
;                                           GC.ptr_lifts gc'
;                                             ((GC.Mkgc_state a.to_abs
;                                                   (GC.upd_map a.color ptr GC.Gray)
;                                                   a.abs_fields
;                                                   a.fields)
;                                                 .fields (ptr,
;                                                 GC.F2)) /\
;                                           (forall (a: Prims.unit) (gc': GC.gc_state).
;                                               GC.gc_inv gc' /\
;                                               GC.trigger ((GC.Mkgc_state a.to_abs
;                                                       (GC.upd_map a.color ptr GC.Gray)
;                                                       a.abs_fields
;                                                       a.fields)
;                                                     .fields (ptr,
;                                                     GC.F2)) /\
;                                               GC.ptr_lifts gc'
;                                                 ((GC.Mkgc_state a.to_abs
;                                                       (GC.upd_map a.color ptr GC.Gray)
;                                                       a.abs_fields
;                                                       a.fields)
;                                                     .fields (ptr,
;                                                     GC.F2)) /\
;                                               GC.gc_inv gc' /\
;                                               (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                                                   GC.trigger i ==>
;                                                   gc'.color i <> GC.Black ==>
;                                                   gc'.color i = gc'.color i) /\
;                                               (gc'.color ((GC.Mkgc_state a.to_abs
;                                                         (GC.upd_map a.color ptr GC.Gray)
;                                                         a.abs_fields
;                                                         a.fields)
;                                                       .fields (ptr,
;                                                       GC.F2)) <>
;                                                 GC.White) /\
;                                               (exists (c: GC.color_map).
;                                                   gc' ==
;                                                   GC.Mkgc_state gc'.to_abs
;                                                     c
;                                                     gc'.abs_fields
;                                                     gc'.fields) ==>
;                                               (forall (a: GC.gc_state) (gc': GC.gc_state).
;                                                   gc' == gc' /\ a == gc' ==>
;                                                   Prims.hasEq GC.mem_addr /\
;                                                   (forall (any_result: Type0).
;                                                       GC.mem_addr == any_result ==>
;                                                       (forall (any_result:
;                                                           (j: GC.mem_addr -> GC.color)).
;                                                           GC.upd_map a.color ptr GC.Black ==
;                                                           any_result ==>
;                                                           (forall (any_result: GC.gc_state).
;                                                               GC.Mkgc_state a.to_abs
;                                                                 (GC.upd_map a.color ptr GC.Black)
;                                                                 a.abs_fields
;                                                                 a.fields ==
;                                                               any_result ==>
;                                                               (forall (a: Prims.unit)
;                                                                   (gc': GC.gc_state).
;                                                                   GC.Mkgc_state a.to_abs
;                                                                     (GC.upd_map a.color ptr GC.Black
;                                                                     )
;                                                                     a.abs_fields
;                                                                     a.fields ==
;                                                                   gc' ==>
;                                                                   k a gc')))))))))))) /\
;                     (~(a.color ptr = GC.White = true) ==>
;                       (forall (b: Prims.bool).
;                           a.color ptr = GC.White == b ==>
;                           (forall (any_result: Prims.unit). k any_result gc')))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec mark`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
GC.mem_addr)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x2
GC.gc_state)

;; def=GC.fst(152,23-152,32); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(160,18-170,5)
(GC.gc_inv @x2)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(160,18-170,5)
(GC.trigger @x0)
)


;; def=GC.fst(152,51-152,67); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(160,18-170,5)
(GC.ptr_lifts @x2
@x0)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(160,18-170,5)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))
(or label_2
(HasType @x4
GC.gc_state))

;; def=GC.fst(152,23-152,32); use=GC.fst(160,18-170,5)
(or label_3

;; def=GC.fst(152,23-152,32); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(160,18-170,5)
(GC.gc_inv @x2)
)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(160,18-170,5)
(or label_4

;; def=GC.fst(152,36-152,47); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(160,18-170,5)
(GC.trigger @x0)
)
)


;; def=GC.fst(152,51-152,67); use=GC.fst(160,18-170,5)
(or label_5

;; def=GC.fst(152,51-152,67); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(160,18-170,5)
(GC.ptr_lifts @x2
@x0)
)
)


;; def=GC.fst(153,28-153,38); use=GC.fst(160,18-170,5)
(or label_6

;; def=GC.fst(153,28-153,38); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(153,28-153,38); use=GC.fst(160,18-170,5)
(GC.gc_inv @x4)
)
)


;; def=GC.fst(154,28-157,63); use=GC.fst(160,18-170,5)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
GC.mem_addr)

;; def=GC.fst(155,35-155,44); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(155,35-155,44); use=GC.fst(160,18-170,5)
(GC.trigger @x5)
)


;; def=GC.fst(156,36-156,56); use=GC.fst(160,18-170,5)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x4)
@x5)
GC.Black@tok))
)

;; def=GC.fst(157,37-157,61); use=GC.fst(160,18-170,5)
(or label_7

;; def=GC.fst(157,37-157,61); use=GC.fst(160,18-170,5)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x5)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x4)
@x5))
)
)
 

:pattern ((GC.trigger @x5))
:qid @query.3))


;; def=GC.fst(158,27-158,49); use=GC.fst(160,18-170,5)
(or label_8

;; def=GC.fst(158,27-158,49); use=GC.fst(160,18-170,5)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x4)
@x0)
GC.White@tok))
)


;; def=GC.fst(159,27-159,63); use=GC.fst(160,18-170,5)
(or label_9

;; def=GC.fst(159,27-159,63); use=GC.fst(160,18-170,5)
(exists ((@x5 Term))
 (! (and (HasType @x5
GC.color_map)

;; def=GC.fst(159,38-159,62); use=GC.fst(160,18-170,5)
(= @x4
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x2)
@x5
(GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__fields @x2)))
)
 
;;no pats
:qid @query.4))
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(160,18-170,5)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(160,18-170,5)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
:qid @query.2))
)

;; def=GC.fst(93,28-93,81); use=GC.fst(161,11-161,14)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
GC.gc_state)
(HasType @x4
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(161,11-161,14)
(= @x2
@x4)


;; def=GC.fst(99,84-99,92); use=GC.fst(161,11-161,14)
(= @x3
@x4)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(160,18-170,5)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_10

;; def=Prims.fst(73,23-73,30); use=GC.fst(160,18-170,5)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(160,18-170,5)
(Prims.hasEq GC.color)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_type)

;; def=Prims.fst(588,31-588,32); use=GC.fst(160,18-170,5)
(= GC.color
@x5)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=GC.fst(162,5-162,25); use=GC.fst(162,5-162,25)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x0)
GC.White@tok)
@x6)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(160,18-170,5)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(160,18-170,5)
(forall ((@x8 Term) (@x9 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(160,18-170,5)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(160,18-170,5)
(ApplyTT (ApplyTT @x1
@x8)
@x9)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(160,18-170,5)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(160,18-170,5)
(ApplyTT (ApplyTT @x7
@x8)
@x9)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x7
@x8)
@x9))
:qid @query.9))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(160,18-170,5)
(and (implies 
;; def=GC.fst(162,5-162,25); use=GC.fst(162,5-162,25)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x0)
GC.White@tok)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(160,18-170,5)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,17-34,25)
(or label_11

;; def=Prims.fst(73,23-73,30); use=GC.fst(160,18-170,5)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(160,18-170,5)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Tm_type)

;; def=GC.fst(34,17-107,15); use=GC.fst(160,18-170,5)
(= GC.mem_addr
@x8)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)

;; def=GC.fst(53,2-164,54); use=GC.fst(160,18-170,5)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
@x9)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
GC.gc_state)

;; def=GC.fst(164,8-164,54); use=GC.fst(164,8-164,54)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3))
@x10)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(165,4-165,7)
(forall ((@x11 Term) (@x12 Term))
 (! (implies (and (HasType @x11
Prims.unit)
(HasType @x12
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(165,4-165,7)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3))
@x12)
)

;; def=GC.fst(93,18-93,81); use=GC.fst(166,4-166,8)
(and 
;; def=GC.fst(152,23-152,32); use=GC.fst(166,4-166,8)
(or label_12

;; def=GC.fst(152,23-152,32); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(166,4-166,8)
(GC.gc_inv @x12)
)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(166,4-166,8)
(or label_13

;; def=GC.fst(152,36-152,47); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(166,4-166,8)
(GC.trigger (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F1@tok)))
)
)


;; def=GC.fst(152,51-152,67); use=GC.fst(166,4-166,8)
(or label_14

;; def=GC.fst(152,51-152,67); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(166,4-166,8)
(GC.ptr_lifts @x12
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F1@tok)))
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(166,4-166,8)
(forall ((@x13 Term) (@x14 Term))
 (! (implies (and (HasType @x13
Prims.unit)
(HasType @x14
GC.gc_state)

;; def=GC.fst(152,23-152,32); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(166,4-166,8)
(GC.gc_inv @x12)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(166,4-166,8)
(GC.trigger (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F1@tok)))
)


;; def=GC.fst(152,51-152,67); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(166,4-166,8)
(GC.ptr_lifts @x12
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F1@tok)))
)


;; def=GC.fst(153,28-153,38); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(153,28-153,38); use=GC.fst(166,4-166,8)
(GC.gc_inv @x14)
)


;; def=GC.fst(154,28-157,63); use=GC.fst(166,4-166,8)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
GC.mem_addr)

;; def=GC.fst(155,35-155,44); use=GC.fst(166,4-166,8)
(Valid 
;; def=GC.fst(155,35-155,44); use=GC.fst(166,4-166,8)
(GC.trigger @x15)
)


;; def=GC.fst(156,36-156,56); use=GC.fst(166,4-166,8)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x14)
@x15)
GC.Black@tok))
)

;; def=GC.fst(157,37-157,61); use=GC.fst(166,4-166,8)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x12)
@x15)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x14)
@x15))
)
 

:pattern ((GC.trigger @x15))
:qid @query.15))


;; def=GC.fst(158,27-158,49); use=GC.fst(166,4-166,8)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x14)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F1@tok)))
GC.White@tok))


;; def=GC.fst(159,27-159,63); use=GC.fst(166,4-166,8)
(exists ((@x15 Term))
 (! (and (HasType @x15
GC.color_map)

;; def=GC.fst(159,38-159,62); use=GC.fst(166,4-166,8)
(= @x14
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x12)
@x15
(GC.__proj__Mkgc_state__item__abs_fields @x12)
(GC.__proj__Mkgc_state__item__fields @x12)))
)
 
;;no pats
:qid @query.16))
)

;; def=GC.fst(93,18-93,81); use=GC.fst(167,4-167,8)
(and 
;; def=GC.fst(152,23-152,32); use=GC.fst(167,4-167,8)
(or label_15

;; def=GC.fst(152,23-152,32); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(167,4-167,8)
(GC.gc_inv @x14)
)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(167,4-167,8)
(or label_16

;; def=GC.fst(152,36-152,47); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(167,4-167,8)
(GC.trigger (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F2@tok)))
)
)


;; def=GC.fst(152,51-152,67); use=GC.fst(167,4-167,8)
(or label_17

;; def=GC.fst(152,51-152,67); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(167,4-167,8)
(GC.ptr_lifts @x14
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F2@tok)))
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(167,4-167,8)
(forall ((@x15 Term) (@x16 Term))
 (! (implies (and (HasType @x15
Prims.unit)
(HasType @x16
GC.gc_state)

;; def=GC.fst(152,23-152,32); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(167,4-167,8)
(GC.gc_inv @x14)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(167,4-167,8)
(GC.trigger (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F2@tok)))
)


;; def=GC.fst(152,51-152,67); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(167,4-167,8)
(GC.ptr_lifts @x14
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F2@tok)))
)


;; def=GC.fst(153,28-153,38); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(153,28-153,38); use=GC.fst(167,4-167,8)
(GC.gc_inv @x16)
)


;; def=GC.fst(154,28-157,63); use=GC.fst(167,4-167,8)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
GC.mem_addr)

;; def=GC.fst(155,35-155,44); use=GC.fst(167,4-167,8)
(Valid 
;; def=GC.fst(155,35-155,44); use=GC.fst(167,4-167,8)
(GC.trigger @x17)
)


;; def=GC.fst(156,36-156,56); use=GC.fst(167,4-167,8)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x16)
@x17)
GC.Black@tok))
)

;; def=GC.fst(157,37-157,61); use=GC.fst(167,4-167,8)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x14)
@x17)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x16)
@x17))
)
 

:pattern ((GC.trigger @x17))
:qid @query.18))


;; def=GC.fst(158,27-158,49); use=GC.fst(167,4-167,8)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x16)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x3))
@x0)
GC.Gray@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x3)
(GC.__proj__Mkgc_state__item__fields @x3)))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x0
GC.F2@tok)))
GC.White@tok))


;; def=GC.fst(159,27-159,63); use=GC.fst(167,4-167,8)
(exists ((@x17 Term))
 (! (and (HasType @x17
GC.color_map)

;; def=GC.fst(159,38-159,62); use=GC.fst(167,4-167,8)
(= @x16
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x14)
@x17
(GC.__proj__Mkgc_state__item__abs_fields @x14)
(GC.__proj__Mkgc_state__item__fields @x14)))
)
 
;;no pats
:qid @query.19))
)

;; def=GC.fst(93,28-93,81); use=GC.fst(168,15-168,18)
(forall ((@x17 Term) (@x18 Term))
 (! (implies (and (HasType @x17
GC.gc_state)
(HasType @x18
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(168,15-168,18)
(= @x16
@x18)


;; def=GC.fst(99,84-99,92); use=GC.fst(168,15-168,18)
(= @x17
@x18)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(160,18-170,5)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,17-34,25)
(or label_18

;; def=Prims.fst(73,23-73,30); use=GC.fst(160,18-170,5)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(160,18-170,5)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
Tm_type)

;; def=GC.fst(34,17-107,15); use=GC.fst(160,18-170,5)
(= GC.mem_addr
@x19)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)

;; def=GC.fst(53,2-169,56); use=GC.fst(160,18-170,5)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x17))
@x0)
GC.Black@tok)
@x20)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
GC.gc_state)

;; def=GC.fst(100,17-169,58); use=GC.fst(160,18-170,5)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x17))
@x0)
GC.Black@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x17)
(GC.__proj__Mkgc_state__item__fields @x17))
@x21)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(169,4-169,7)
(forall ((@x22 Term) (@x23 Term))
 (! (implies (and (HasType @x22
Prims.unit)
(HasType @x23
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(169,4-169,7)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x17))
@x0)
GC.Black@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x17)
(GC.__proj__Mkgc_state__item__fields @x17))
@x23)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(169,4-169,7)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(169,4-169,7)
(ApplyTT (ApplyTT @x7
@x22)
@x23)
)
)
 
;;no pats
:qid @query.24))
)
 
;;no pats
:qid @query.23))
)
 
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
:qid @query.17))
)
)
 
;;no pats
:qid @query.14))
)
)
 
;;no pats
:qid @query.13))
)
 
;;no pats
:qid @query.12))
)
 
;;no pats
:qid @query.11))
)
 
;;no pats
:qid @query.10))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(160,18-170,5)
(not 
;; def=GC.fst(162,5-162,25); use=GC.fst(162,5-162,25)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x0)
GC.White@tok)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=GC.fst(160,18-170,5)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.bool)

;; def=GC.fst(162,2-170,5); use=GC.fst(162,2-170,5)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x0)
GC.White@tok)
@x8)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(160,18-170,5)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Prims.unit)

;; def=GC.fst(88,94-88,100); use=GC.fst(160,18-170,5)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(160,18-170,5)
(ApplyTT (ApplyTT @x7
@x9)
@x4)
)
)
 
;;no pats
:qid @query.26))
)
 
;;no pats
:qid @query.25))
))
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
)
 
;;no pats
:qid @query.5))
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
; QUERY ID: (GC.mark, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_interpretation_Tm_arrow_5d846e8dc8d50e58c30aadcda1836791, GC_interpretation_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5, GC_pretyping_ab0ffb7fae1c8ce581a4f6505251cb9c, assumption_GC.color__uu___haseq, b2t_def, bool_inversion, constructor_distinct_GC.Black, constructor_distinct_GC.Gray, constructor_distinct_GC.Unalloc, constructor_distinct_GC.White, data_elim_GC.Mkgc_state, data_typing_intro_FStar.Pervasives.Native.Mktuple2@tok, equality_tok_GC.Black@tok, equality_tok_GC.F1@tok, equality_tok_GC.F2@tok, equality_tok_GC.Gray@tok, equality_tok_GC.Unalloc@tok, equality_tok_GC.White@tok, equation_GC.color_map, equation_GC.field_map, equation_GC.gc_inv, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.obj_inv, equation_GC.ptr_lifts, equation_GC.ptr_lifts_to, equation_GC.trigger, equation_GC.upd_map, equation_GC.valid, equation_Prims.eqtype, fuel_guarded_inversion_GC.color, fuel_guarded_inversion_GC.field, fuel_guarded_inversion_GC.gc_state, function_token_typing_GC.__proj__Mkgc_state__item__abs_fields, function_token_typing_GC.__proj__Mkgc_state__item__fields, function_token_typing_GC.__proj__Mkgc_state__item__to_abs, haseqTm_refine_5248130f0b0d7223b3b6331b13742bec, int_inversion, kinding_GC.field@tok, primitive_Prims.op_Equality, primitive_Prims.op_disEquality, proj_equation_GC.Mkgc_state_abs_fields, proj_equation_GC.Mkgc_state_color, proj_equation_GC.Mkgc_state_fields, proj_equation_GC.Mkgc_state_to_abs, projection_inverse_BoxBool_proj_0, projection_inverse_GC.Mkgc_state_abs_fields, projection_inverse_GC.Mkgc_state_color, projection_inverse_GC.Mkgc_state_fields, projection_inverse_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_kinding_Tm_refine_5248130f0b0d7223b3b6331b13742bec, token_correspondence_GC.__proj__Mkgc_state__item__abs_fields, token_correspondence_GC.__proj__Mkgc_state__item__color, token_correspondence_GC.__proj__Mkgc_state__item__fields, token_correspondence_GC.__proj__Mkgc_state__item__to_abs, token_correspondence_GC.upd_map, typing_GC.__proj__Mkgc_state__item__color, typing_GC.is_mem_addr, typing_Prims.int, typing_tok_GC.F1@tok, typing_tok_GC.F2@tok, unit_inversion, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec mark


; <Start encoding let rec mark>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.mark (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.mark@tok () Term)

; </end encoding let rec mark>

(push) ;; push{2

; Starting query at GC.fst(174,2-189,6)

(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)









































; Encoding query formula : forall (old: GC.gc_state) (ptr: Prims.int) (st: GC.gc_state).
;   (*  - Could not prove post-condition
; *)
;   GC.gc_inv old /\ (st.fields == old.fields) /\ (st.abs_fields == old.abs_fields) /\
;   GC.to_abs_inj st.to_abs ==>
;   (forall (i: GC.mem_addr).
;       GC.trigger i ==>
;       Prims.hasEq GC.color /\
;       (st.color i <> GC.Gray ==>
;         Prims.hasEq GC.color /\
;         (old.color i = GC.Black ==>
;           GC.ptr_lifts st i /\ GC.obj_inv st i ==>
;           (forall (f: GC.field). st.fields (i, f) >= ptr ==> Prims.hasEq GC.color))) /\
;       (st.color i <> GC.Gray /\
;         (old.color i = GC.Black ==>
;           GC.ptr_lifts st i /\ GC.obj_inv st i /\
;           (forall (f: GC.field). st.fields (i, f) >= ptr ==> st.color (st.fields (i, f)) <> GC.White
;           )) ==>
;         Prims.hasEq GC.color) /\
;       (st.color i <> GC.Gray /\
;         (old.color i = GC.Black ==>
;           GC.ptr_lifts st i /\ GC.obj_inv st i /\
;           (forall (f: GC.field). st.fields (i, f) >= ptr ==> st.color (st.fields (i, f)) <> GC.White
;           )) /\ (~(GC.ptr_lifts st i) <==> st.color i = GC.Unalloc) /\
;         (GC.ptr_lifts st i ==> old.to_abs i = st.to_abs i) ==>
;         ptr <= i ==> Prims.hasEq GC.color) /\
;       (st.color i <> GC.Gray /\
;         (old.color i = GC.Black ==>
;           GC.ptr_lifts st i /\ GC.obj_inv st i /\
;           (forall (f: GC.field). st.fields (i, f) >= ptr ==> st.color (st.fields (i, f)) <> GC.White
;           )) /\ (~(GC.ptr_lifts st i) <==> st.color i = GC.Unalloc) /\
;         (GC.ptr_lifts st i ==> old.to_abs i = st.to_abs i) /\
;         (ptr <= i ==> old.color i = st.color i) ==>
;         i < ptr ==> Prims.hasEq GC.color /\ (~(st.color i = GC.Unalloc) ==> Prims.hasEq GC.color)) /\
;       (st.color i <> GC.Gray /\
;         (old.color i = GC.Black ==>
;           GC.ptr_lifts st i /\ GC.obj_inv st i /\
;           (forall (f: GC.field). st.fields (i, f) >= ptr ==> st.color (st.fields (i, f)) <> GC.White
;           )) /\ (~(GC.ptr_lifts st i) <==> st.color i = GC.Unalloc) /\
;         (GC.ptr_lifts st i ==> old.to_abs i = st.to_abs i) /\
;         (ptr <= i ==> old.color i = st.color i) /\
;         (i < ptr ==> st.color i = GC.Unalloc \/ st.color i = GC.White) ==>
;         (i < ptr ==> Prims.hasEq GC.color) /\
;         (i < ptr /\ st.color i = GC.White ==> Prims.hasEq GC.color)))


; Context: While encoding a query
; While typechecking the top-level declaration `let sweep_aux_inv`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
Prims.int)
(HasType @x2
GC.gc_state)

;; def=GC.fst(174,2-174,12); use=GC.fst(174,2-174,12)
(Valid 
;; def=GC.fst(174,2-174,12); use=GC.fst(174,2-174,12)
(GC.gc_inv @x0)
)


;; def=GC.fst(175,6-175,29); use=GC.fst(175,6-175,29)
(= (GC.__proj__Mkgc_state__item__fields @x2)
(GC.__proj__Mkgc_state__item__fields @x0))


;; def=GC.fst(175,33-175,64); use=GC.fst(175,33-175,64)
(= (GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__abs_fields @x0))


;; def=GC.fst(176,5-176,25); use=GC.fst(176,5-176,25)
(Valid 
;; def=GC.fst(176,5-176,25); use=GC.fst(176,5-176,25)
(GC.to_abs_inj (GC.__proj__Mkgc_state__item__to_abs @x2))
)
)

;; def=dummy(0,0-0,0); use=GC.fst(174,2-189,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
GC.mem_addr)

;; def=GC.fst(178,11-178,20); use=GC.fst(178,11-178,20)
(Valid 
;; def=GC.fst(178,11-178,20); use=GC.fst(178,11-178,20)
(GC.trigger @x3)
)
)

;; def=GC.fst(34,33-188,64); use=GC.fst(179,11-188,64)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(179,11-183,96)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(179,11-183,96)
(Prims.hasEq GC.color)
)
)

(implies 
;; def=GC.fst(179,11-179,29); use=GC.fst(179,11-179,29)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))


;; def=dummy(0,0-0,0); use=GC.fst(179,11-183,96)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_2

;; def=Prims.fst(73,23-73,30); use=GC.fst(180,10-183,96)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(180,10-183,96)
(Prims.hasEq GC.color)
)
)

(implies 
;; def=dummy(0,0-0,0); use=GC.fst(180,11-183,95)
(and 
;; def=GC.fst(180,11-180,30); use=GC.fst(180,11-180,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)


;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(Valid 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(Valid 
;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(GC.obj_inv @x2
@x3)
)
)


;; def=dummy(0,0-0,0); use=GC.fst(181,15-183,95)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.field)

;; def=GC.fst(183,29-183,52); use=GC.fst(183,29-183,52)
(>= (BoxInt_proj_0 (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
(BoxInt_proj_0 @x1))
)

;; def=Prims.fst(73,23-73,30); use=GC.fst(183,88-183,93)
(or label_3

;; def=Prims.fst(73,23-73,30); use=GC.fst(183,88-183,93)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(183,88-183,93)
(Prims.hasEq GC.color)
)
)
)
 
;;no pats
:qid @query.2))
))
)
(implies 
;; def=GC.fst(179,11-183,96); use=GC.fst(179,11-183,96)
(and 
;; def=GC.fst(179,11-179,29); use=GC.fst(179,11-179,29)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))


;; def=GC.fst(180,10-183,96); use=GC.fst(180,10-183,96)
(implies 
;; def=GC.fst(180,11-180,30); use=GC.fst(180,11-180,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)


;; def=GC.fst(181,15-183,95); use=GC.fst(181,15-183,95)
(and 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(Valid 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(Valid 
;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(GC.obj_inv @x2
@x3)
)


;; def=GC.fst(183,18-183,94); use=GC.fst(183,18-183,94)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.field)

;; def=GC.fst(183,29-183,52); use=GC.fst(183,29-183,52)
(>= (BoxInt_proj_0 (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
(BoxInt_proj_0 @x1))
)

;; def=GC.fst(183,57-183,93); use=GC.fst(183,57-183,93)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
GC.White@tok))
)
 
;;no pats
:qid @query.3))
)
)
)


;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_4

;; def=Prims.fst(73,23-73,30); use=GC.fst(179,11-184,53)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(179,11-184,53)
(Prims.hasEq GC.color)
)
)
)
(implies 
;; def=GC.fst(34,33-186,19); use=GC.fst(179,11-186,49)
(and 
;; def=GC.fst(179,11-179,29); use=GC.fst(179,11-179,29)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))


;; def=GC.fst(180,10-183,96); use=GC.fst(180,10-183,96)
(implies 
;; def=GC.fst(180,11-180,30); use=GC.fst(180,11-180,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)


;; def=GC.fst(181,15-183,95); use=GC.fst(181,15-183,95)
(and 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(Valid 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(Valid 
;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(GC.obj_inv @x2
@x3)
)


;; def=GC.fst(183,18-183,94); use=GC.fst(183,18-183,94)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.field)

;; def=GC.fst(183,29-183,52); use=GC.fst(183,29-183,52)
(>= (BoxInt_proj_0 (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
(BoxInt_proj_0 @x1))
)

;; def=GC.fst(183,57-183,93); use=GC.fst(183,57-183,93)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
GC.White@tok))
)
 
;;no pats
:qid @query.4))
)
)


;; def=GC.fst(184,10-184,53); use=GC.fst(184,10-184,53)
(iff 
;; def=GC.fst(184,11-184,28); use=GC.fst(184,11-184,28)
(not 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(Valid 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(GC.ptr_lifts @x2
@x3)
)
)


;; def=GC.fst(184,34-184,52); use=GC.fst(184,34-184,52)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)
)


;; def=GC.fst(185,10-185,57); use=GC.fst(185,10-185,57)
(implies 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(Valid 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(185,30-185,56); use=GC.fst(185,30-185,56)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x3))
)


;; def=GC.fst(186,11-186,19); use=GC.fst(186,11-186,19)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x3))
)


;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_5

;; def=Prims.fst(73,23-73,30); use=GC.fst(186,10-186,49)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(186,10-186,49)
(Prims.hasEq GC.color)
)
)
)
(implies 
;; def=GC.fst(179,11-187,66); use=GC.fst(179,11-187,66)
(and 
;; def=GC.fst(179,11-179,29); use=GC.fst(179,11-179,29)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))


;; def=GC.fst(180,10-183,96); use=GC.fst(180,10-183,96)
(implies 
;; def=GC.fst(180,11-180,30); use=GC.fst(180,11-180,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)


;; def=GC.fst(181,15-183,95); use=GC.fst(181,15-183,95)
(and 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(Valid 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(Valid 
;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(GC.obj_inv @x2
@x3)
)


;; def=GC.fst(183,18-183,94); use=GC.fst(183,18-183,94)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.field)

;; def=GC.fst(183,29-183,52); use=GC.fst(183,29-183,52)
(>= (BoxInt_proj_0 (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
(BoxInt_proj_0 @x1))
)

;; def=GC.fst(183,57-183,93); use=GC.fst(183,57-183,93)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
GC.White@tok))
)
 
;;no pats
:qid @query.5))
)
)


;; def=GC.fst(184,10-184,53); use=GC.fst(184,10-184,53)
(iff 
;; def=GC.fst(184,11-184,28); use=GC.fst(184,11-184,28)
(not 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(Valid 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(GC.ptr_lifts @x2
@x3)
)
)


;; def=GC.fst(184,34-184,52); use=GC.fst(184,34-184,52)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)
)


;; def=GC.fst(185,10-185,57); use=GC.fst(185,10-185,57)
(implies 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(Valid 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(185,30-185,56); use=GC.fst(185,30-185,56)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x3))
)


;; def=GC.fst(186,10-186,49); use=GC.fst(186,10-186,49)
(implies 
;; def=GC.fst(186,11-186,19); use=GC.fst(186,11-186,19)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x3))


;; def=GC.fst(186,24-186,48); use=GC.fst(186,24-186,48)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3))
)


;; def=GC.fst(187,11-187,18); use=GC.fst(187,11-187,18)
(< (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x1))
)


;; def=GC.fst(187,24-187,66); use=GC.fst(187,24-187,66)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(187,37-187,44)
(or label_6

;; def=Prims.fst(73,23-73,30); use=GC.fst(187,37-187,44)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(187,37-187,44)
(Prims.hasEq GC.color)
)
)

(implies 
;; def=GC.fst(187,24-187,44); use=GC.fst(187,24-187,44)
(not 
;; def=GC.fst(187,24-187,44); use=GC.fst(187,24-187,44)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)
)


;; def=Prims.fst(73,23-73,30); use=GC.fst(187,61-187,66)
(or label_7

;; def=Prims.fst(73,23-73,30); use=GC.fst(187,61-187,66)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(187,61-187,66)
(Prims.hasEq GC.color)
)
)
))
)
(implies 
;; def=GC.fst(179,11-187,68); use=GC.fst(179,11-187,68)
(and 
;; def=GC.fst(179,11-179,29); use=GC.fst(179,11-179,29)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))


;; def=GC.fst(180,10-183,96); use=GC.fst(180,10-183,96)
(implies 
;; def=GC.fst(180,11-180,30); use=GC.fst(180,11-180,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)


;; def=GC.fst(181,15-183,95); use=GC.fst(181,15-183,95)
(and 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(Valid 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(Valid 
;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(GC.obj_inv @x2
@x3)
)


;; def=GC.fst(183,18-183,94); use=GC.fst(183,18-183,94)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.field)

;; def=GC.fst(183,29-183,52); use=GC.fst(183,29-183,52)
(>= (BoxInt_proj_0 (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
(BoxInt_proj_0 @x1))
)

;; def=GC.fst(183,57-183,93); use=GC.fst(183,57-183,93)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
GC.White@tok))
)
 
;;no pats
:qid @query.6))
)
)


;; def=GC.fst(184,10-184,53); use=GC.fst(184,10-184,53)
(iff 
;; def=GC.fst(184,11-184,28); use=GC.fst(184,11-184,28)
(not 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(Valid 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(GC.ptr_lifts @x2
@x3)
)
)


;; def=GC.fst(184,34-184,52); use=GC.fst(184,34-184,52)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)
)


;; def=GC.fst(185,10-185,57); use=GC.fst(185,10-185,57)
(implies 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(Valid 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(185,30-185,56); use=GC.fst(185,30-185,56)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x3))
)


;; def=GC.fst(186,10-186,49); use=GC.fst(186,10-186,49)
(implies 
;; def=GC.fst(186,11-186,19); use=GC.fst(186,11-186,19)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x3))


;; def=GC.fst(186,24-186,48); use=GC.fst(186,24-186,48)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3))
)


;; def=GC.fst(187,10-187,68); use=GC.fst(187,10-187,68)
(implies 
;; def=GC.fst(187,11-187,18); use=GC.fst(187,11-187,18)
(< (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x1))


;; def=GC.fst(187,23-187,67); use=GC.fst(187,23-187,67)
(or 
;; def=GC.fst(187,24-187,44); use=GC.fst(187,24-187,44)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)


;; def=GC.fst(187,48-187,66); use=GC.fst(187,48-187,66)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.White@tok)
)
)
)


;; def=GC.fst(188,11-188,64); use=GC.fst(188,11-188,64)
(and (implies 
;; def=GC.fst(188,11-188,18); use=GC.fst(188,11-188,18)
(< (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x1))


;; def=Prims.fst(73,23-73,30); use=GC.fst(188,35-188,40)
(or label_8

;; def=Prims.fst(73,23-73,30); use=GC.fst(188,35-188,40)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(188,35-188,40)
(Prims.hasEq GC.color)
)
)
)
(implies 
;; def=GC.fst(188,11-188,40); use=GC.fst(188,11-188,40)
(and 
;; def=GC.fst(188,11-188,18); use=GC.fst(188,11-188,18)
(< (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x1))


;; def=GC.fst(188,22-188,40); use=GC.fst(188,22-188,40)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.White@tok)
)


;; def=Prims.fst(73,23-73,30); use=GC.fst(188,59-188,64)
(or label_9

;; def=Prims.fst(73,23-73,30); use=GC.fst(188,59-188,64)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(188,59-188,64)
(Prims.hasEq GC.color)
)
)
))
))
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
; QUERY ID: (GC.sweep_aux_inv, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let sweep_aux_inv


; <Start encoding let sweep_aux_inv>

(declare-fun GC.sweep_aux_inv (Term Term Term) Term)
;;;;;;;;;;;;;;;;old: gc_state -> ptr: Prims.int -> st: gc_state -> Prims.logical
(declare-fun Tm_arrow_5d0f45ea34266dfcd0978e2fa22e61a2 () Term)
(declare-fun GC.sweep_aux_inv@tok () Term)















; </end encoding let sweep_aux_inv>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.sweep_aux_inv; Namespace GC
(assert (! 
;; def=GC.fst(173,6-173,19); use=GC.fst(173,6-173,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
Prims.int)
(HasType @x2
GC.gc_state))
(HasType (GC.sweep_aux_inv @x0
@x1
@x2)
Prims.logical))
 

:pattern ((GC.sweep_aux_inv @x0
@x1
@x2))
:qid typing_GC.sweep_aux_inv))

:named typing_GC.sweep_aux_inv))
;;;;;;;;;;;;;;;;Equation for GC.sweep_aux_inv
;;; Fact-ids: Name GC.sweep_aux_inv; Namespace GC
(assert (! 
;; def=GC.fst(173,6-173,19); use=GC.fst(173,6-173,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (GC.sweep_aux_inv @x0
@x1
@x2))

;; def=GC.fst(174,2-189,6); use=GC.fst(174,2-189,6)
(and 
;; def=GC.fst(174,2-174,12); use=GC.fst(174,2-174,12)
(Valid 
;; def=GC.fst(174,2-174,12); use=GC.fst(174,2-174,12)
(GC.gc_inv @x0)
)


;; def=GC.fst(175,6-175,29); use=GC.fst(175,6-175,29)
(= (GC.__proj__Mkgc_state__item__fields @x2)
(GC.__proj__Mkgc_state__item__fields @x0))


;; def=GC.fst(175,33-175,64); use=GC.fst(175,33-175,64)
(= (GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__abs_fields @x0))


;; def=GC.fst(176,5-176,25); use=GC.fst(176,5-176,25)
(Valid 
;; def=GC.fst(176,5-176,25); use=GC.fst(176,5-176,25)
(GC.to_abs_inj (GC.__proj__Mkgc_state__item__to_abs @x2))
)


;; def=GC.fst(177,5-189,6); use=GC.fst(177,5-189,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
GC.mem_addr)

;; def=GC.fst(178,11-178,20); use=GC.fst(178,11-178,20)
(Valid 
;; def=GC.fst(178,11-178,20); use=GC.fst(178,11-178,20)
(GC.trigger @x3)
)
)

;; def=GC.fst(179,11-188,65); use=GC.fst(179,11-188,65)
(and 
;; def=GC.fst(179,11-179,29); use=GC.fst(179,11-179,29)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))


;; def=GC.fst(180,10-183,96); use=GC.fst(180,10-183,96)
(implies 
;; def=GC.fst(180,11-180,30); use=GC.fst(180,11-180,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)


;; def=GC.fst(181,15-183,95); use=GC.fst(181,15-183,95)
(and 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(Valid 
;; def=GC.fst(181,16-181,30); use=GC.fst(181,16-181,30)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(Valid 
;; def=GC.fst(182,18-182,30); use=GC.fst(182,18-182,30)
(GC.obj_inv @x2
@x3)
)


;; def=GC.fst(183,18-183,94); use=GC.fst(183,18-183,94)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.field)

;; def=GC.fst(183,29-183,52); use=GC.fst(183,29-183,52)
(>= (BoxInt_proj_0 (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
(BoxInt_proj_0 @x1))
)

;; def=GC.fst(183,57-183,93); use=GC.fst(183,57-183,93)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__fields@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x3
@x4)))
GC.White@tok))
)
 
;;no pats
:qid equation_GC.sweep_aux_inv.2))
)
)


;; def=GC.fst(184,10-184,53); use=GC.fst(184,10-184,53)
(iff 
;; def=GC.fst(184,11-184,28); use=GC.fst(184,11-184,28)
(not 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(Valid 
;; def=GC.fst(184,12-184,28); use=GC.fst(184,12-184,28)
(GC.ptr_lifts @x2
@x3)
)
)


;; def=GC.fst(184,34-184,52); use=GC.fst(184,34-184,52)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)
)


;; def=GC.fst(185,10-185,57); use=GC.fst(185,10-185,57)
(implies 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(Valid 
;; def=GC.fst(185,11-185,25); use=GC.fst(185,11-185,25)
(GC.ptr_lifts @x2
@x3)
)


;; def=GC.fst(185,30-185,56); use=GC.fst(185,30-185,56)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x3))
)


;; def=GC.fst(186,10-186,49); use=GC.fst(186,10-186,49)
(implies 
;; def=GC.fst(186,11-186,19); use=GC.fst(186,11-186,19)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x3))


;; def=GC.fst(186,24-186,48); use=GC.fst(186,24-186,48)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3))
)


;; def=GC.fst(187,10-187,68); use=GC.fst(187,10-187,68)
(implies 
;; def=GC.fst(187,11-187,18); use=GC.fst(187,11-187,18)
(< (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x1))


;; def=GC.fst(187,23-187,67); use=GC.fst(187,23-187,67)
(or 
;; def=GC.fst(187,24-187,44); use=GC.fst(187,24-187,44)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Unalloc@tok)


;; def=GC.fst(187,48-187,66); use=GC.fst(187,48-187,66)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.White@tok)
)
)


;; def=GC.fst(188,10-188,65); use=GC.fst(188,10-188,65)
(implies 
;; def=GC.fst(188,11-188,40); use=GC.fst(188,11-188,40)
(and 
;; def=GC.fst(188,11-188,18); use=GC.fst(188,11-188,18)
(< (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x1))


;; def=GC.fst(188,22-188,40); use=GC.fst(188,22-188,40)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.White@tok)
)


;; def=GC.fst(188,45-188,64); use=GC.fst(188,45-188,64)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x3)
GC.Black@tok)
)
)
)
 

:pattern ((GC.trigger @x3))
:qid equation_GC.sweep_aux_inv.1))
)
)
 

:pattern ((GC.sweep_aux_inv @x0
@x1
@x2))
:qid equation_GC.sweep_aux_inv))

:named equation_GC.sweep_aux_inv))
;;;;;;;;;;;;;;;;Prop-typing for GC.sweep_aux_inv
;;; Fact-ids: Name GC.sweep_aux_inv; Namespace GC
(assert (! 
;; def=GC.fst(173,6-173,19); use=GC.fst(173,6-173,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
Prims.int)
(HasType @x2
GC.gc_state))
(Valid (Prims.subtype_of (GC.sweep_aux_inv @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.sweep_aux_inv @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_GC.sweep_aux_inv))

:named defn_equation_GC.sweep_aux_inv))
(push) ;; push{2

; Starting query at GC.fst(191,18-192,45)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (old: GC.gc_state) (n: GC.gc_state).
;   (*  - Could not prove post-condition
; *) GC.sweep_aux_inv old GC.mem_hi n ==> GC.mutator_inv n


; Context: While encoding a query
; While typechecking the top-level declaration `let test1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.gc_state)
(HasType @x1
GC.gc_state)

;; def=GC.fst(191,26-191,52); use=GC.fst(191,26-191,52)
(Valid 
;; def=GC.fst(191,26-191,52); use=GC.fst(191,26-191,52)
(GC.sweep_aux_inv @x0
(GC.mem_hi Dummy_value)
@x1)
)
)

;; def=GC.fst(192,31-192,44); use=GC.fst(192,31-192,44)
(or label_1

;; def=GC.fst(192,31-192,44); use=GC.fst(192,31-192,44)
(Valid 
;; def=GC.fst(192,31-192,44); use=GC.fst(192,31-192,44)
(GC.mutator_inv @x1)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (GC.test1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, b2t_def, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.obj_inv, equation_GC.ptr_lifts, equation_GC.sweep_aux_inv, fuel_guarded_inversion_GC.gc_state, int_inversion, primitive_Prims.op_AmpAmp, primitive_Prims.op_LessThan, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_ebe8d554029941ff856db931e680cc38, typing_GC.mem_hi

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test1


; <Start encoding let test1>

(declare-fun GC.test1 (Term Term) Term)
;;;;;;;;;;;;;;;;old: gc_state -> n: gc_state -> Prims.unit
(declare-fun Tm_arrow_838b5d2d263011ed6884c6e0c268bc3c () Term)
(declare-fun GC.test1@tok () Term)

; </end encoding let test1>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_imp; Namespace Prims
(assert (! 
;; def=Prims.fst(204,5-204,10); use=Prims.fst(204,5-204,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.logical)
(HasType @x1
Prims.logical))
(HasType (Prims.l_imp @x0
@x1)
Prims.logical))
 

:pattern ((Prims.l_imp @x0
@x1))
:qid typing_Prims.l_imp))

:named typing_Prims.l_imp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_and; Namespace Prims
(assert (! 
;; def=Prims.fst(188,5-188,10); use=Prims.fst(188,5-188,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.logical)
(HasType @x1
Prims.logical))
(HasType (Prims.l_and @x0
@x1)
Prims.logical))
 

:pattern ((Prims.l_and @x0
@x1))
:qid typing_Prims.l_and))

:named typing_Prims.l_and))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,5-286,13); use=Prims.fst(286,5-286,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0)))
(HasType (Prims.l_Forall @x0
@x1)
Prims.logical))
 

:pattern ((Prims.l_Forall @x0
@x1))
:qid typing_Prims.l_Forall))

:named typing_Prims.l_Forall))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,5-183,9); use=Prims.fst(183,5-183,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Prims.pair@tok
@x0)
@x1)
(Prims.pair @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Prims.pair@tok
@x0)
@x1))

:pattern ((Prims.pair @x0
@x1))
:qid token_correspondence_Prims.pair@tok))

:named token_correspondence_Prims.pair@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Pair @x1
@x2
@x3
@x4)
(Prims.pair @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Prims.Pair @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(Prims.Pair @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Pair @x1
@x2
@x3
@x4)
(Prims.pair @x5
@x6)))
:qid subterm_ordering_Prims.Pair))

:named subterm_ordering_Prims.Pair))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Pair_q (Prims.Pair @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((Prims.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Pair_q))

:named projection_inverse_Prims.Pair_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Pair_p (Prims.Pair @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((Prims.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Pair_p))

:named projection_inverse_Prims.Pair_p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Pair__2 (Prims.Pair @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((Prims.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Pair__2))

:named projection_inverse_Prims.Pair__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Pair__1 (Prims.Pair @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((Prims.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Pair__1))

:named projection_inverse_Prims.Pair__1))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.pair@tok))
:named pre_kinding_Prims.pair@tok))
;;;;;;;;;;;;;;;;==> interpretation
;;; Fact-ids: Name Prims.l_imp; Namespace Prims
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (iff (implies (Valid @x0)
(Valid @x1))
(Valid (Prims.l_imp @x0
@x1)))
 

:pattern ((Prims.l_imp @x0
@x1))
:qid l_imp-interp))
:named l_imp-interp))
;;;;;;;;;;;;;;;;/\ interpretation
;;; Fact-ids: Name Prims.l_and; Namespace Prims
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (iff (and (Valid @x0)
(Valid @x1))
(Valid (Prims.l_and @x0
@x1)))
 

:pattern ((Prims.l_and @x0
@x1))
:qid l_and-interp))
:named l_and-interp))
;;;;;;;;;;;;;;;;kinding_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,16-286,86); use=Prims.fst(286,71-286,86)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x0
@x1)
Tm_type))
:qid kinding_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f))

:named kinding_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f))
;;;;;;;;;;;;;;;;kinding_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a
;;; Fact-ids: Name Prims.l_imp; Namespace Prims
(assert (! 
;; def=Prims.fst(204,12-204,26); use=Prims.fst(204,57-204,68)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x0
@x1)
Tm_type))
:qid kinding_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a))

:named kinding_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_677d63d26b593ea784a0851b5435f387
;;; Fact-ids: Name GC.inv; Namespace GC
(assert (! (HasType Tm_arrow_677d63d26b593ea784a0851b5435f387
Tm_type)
:named kinding_Tm_arrow_677d63d26b593ea784a0851b5435f387))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,16-286,45); use=Prims.fst(286,30-286,45)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0)
Tm_type))
:qid kinding_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da))

:named kinding_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da))
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (and (IsTotFun Prims.pair@tok)

;; def=Prims.fst(183,5-183,9); use=Prims.fst(183,5-183,9)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT Prims.pair@tok
@x0))
 

:pattern ((ApplyTT Prims.pair@tok
@x0))
:qid kinding_Prims.pair@tok))


;; def=Prims.fst(183,5-183,9); use=Prims.fst(183,5-183,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (Prims.pair @x0
@x1)
Tm_type))
 

:pattern ((Prims.pair @x0
@x1))
:qid kinding_Prims.pair@tok.1))
)
:named kinding_Prims.pair@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,5-183,9); use=Prims.fst(183,5-183,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Prims.pair @x2
@x3))
(and (is-Prims.Pair @x1)
(= @x2
(Prims.Pair_p @x1))
(= @x3
(Prims.Pair_q @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(Prims.pair @x2
@x3)))
:qid fuel_guarded_inversion_Prims.pair))

:named fuel_guarded_inversion_Prims.pair))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (= 151
(Term_constr_id Prims.pair@tok))
:named fresh_token_Prims.pair@tok))
;;;;;;;;;;;;;;;;Equation for Prims.l_imp
;;; Fact-ids: Name Prims.l_imp; Namespace Prims
(assert (! 
;; def=Prims.fst(204,5-204,10); use=Prims.fst(204,5-204,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.l_imp @x0
@x1)
(Prims.squash (Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x1
@x0)))
 

:pattern ((Prims.l_imp @x0
@x1))
:qid equation_Prims.l_imp))

:named equation_Prims.l_imp))
;;;;;;;;;;;;;;;;Equation for Prims.l_and
;;; Fact-ids: Name Prims.l_and; Namespace Prims
(assert (! 
;; def=Prims.fst(188,5-188,10); use=Prims.fst(188,5-188,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.l_and @x0
@x1)
(Prims.squash (Prims.pair @x0
@x1)))
 

:pattern ((Prims.l_and @x0
@x1))
:qid equation_Prims.l_and))

:named equation_Prims.l_and))
;;;;;;;;;;;;;;;;Equation for Prims.l_Forall
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,5-286,13); use=Prims.fst(286,5-286,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.l_Forall @x0
@x1)
(Prims.squash (Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x1
@x0)))
 

:pattern ((Prims.l_Forall @x0
@x1))
:qid equation_Prims.l_Forall))

:named equation_Prims.l_Forall))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
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
(Prims.Pair @x1
@x2
@x3
@x4)
(Prims.pair @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(Prims.Pair @x1
@x2
@x3
@x4)
(Prims.pair @x1
@x2)))
:qid data_typing_intro_Prims.Pair@tok))

:named data_typing_intro_Prims.Pair@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Pair @x1
@x2
@x3
@x4)
(Prims.pair @x5
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
(Prims.Pair @x1
@x2
@x3
@x4)
(Prims.pair @x5
@x6)))
:qid data_elim_Prims.Pair))

:named data_elim_Prims.Pair))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,5-183,9); use=Prims.fst(183,5-183,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 150
(Term_constr_id (Prims.pair @x0
@x1)))
 

:pattern ((Prims.pair @x0
@x1))
:qid constructor_distinct_Prims.pair))

:named constructor_distinct_Prims.pair))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,34-183,38); use=Prims.fst(183,34-183,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 157
(Term_constr_id (Prims.Pair @x0
@x1
@x2
@x3)))
 

:pattern ((Prims.Pair @x0
@x1
@x2
@x3))
:qid constructor_distinct_Prims.Pair))

:named constructor_distinct_Prims.Pair))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! 
;; def=Prims.fst(183,5-183,9); use=Prims.fst(183,5-183,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Prims.pair @x2
@x3))
(= (Prims.pair @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(Prims.pair @x2
@x3)))
:qid Prims_pretyping_b7882067459c08225ce8e64864e7b31f))

:named Prims_pretyping_b7882067459c08225ce8e64864e7b31f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,16-286,86); use=Prims.fst(286,71-286,86)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x2
@x3)))
:qid Prims_pre_typing_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f))

:named Prims_pre_typing_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.l_imp; Namespace Prims
(assert (! 
;; def=Prims.fst(204,12-204,26); use=Prims.fst(204,57-204,68)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x2
@x3)))
:qid Prims_pre_typing_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a))

:named Prims_pre_typing_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,16-286,45); use=Prims.fst(286,30-286,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x2)))
:qid Prims_pre_typing_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da))

:named Prims_pre_typing_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da))
;;;;;;;;;;;;;;;;interpretation_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,16-286,86); use=Prims.fst(286,71-286,86)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x1
@x2))

;; def=Prims.fst(286,16-286,86); use=Prims.fst(286,71-286,86)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(ApplyTT @x1
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid Prims_interpretation_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f.1))
)
 

:pattern ((HasTypeZ @x0
(Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f @x1
@x2)))
:qid Prims_interpretation_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f))

:named Prims_interpretation_Tm_ghost_arrow_3aa447697277bb40c9738c9125c3e80f))
;;;;;;;;;;;;;;;;interpretation_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a
;;; Fact-ids: Name Prims.l_imp; Namespace Prims
(assert (! 
;; def=Prims.fst(204,12-204,26); use=Prims.fst(204,57-204,68)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x1
@x2))

;; def=Prims.fst(204,12-204,26); use=Prims.fst(204,57-204,68)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
@x1))
 

:pattern ((ApplyTT @x0
@x3))
:qid Prims_interpretation_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a.1))
)
 

:pattern ((HasTypeZ @x0
(Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a @x1
@x2)))
:qid Prims_interpretation_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a))

:named Prims_interpretation_Tm_ghost_arrow_0283b8a2a36bbec52abac4e3d837674a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da
;;; Fact-ids: Name Prims.l_Forall; Namespace Prims
(assert (! 
;; def=Prims.fst(286,16-286,45); use=Prims.fst(286,30-286,45)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1))
(and 
;; def=Prims.fst(286,16-286,45); use=Prims.fst(286,30-286,45)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid Prims_interpretation_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1)))
:qid Prims_interpretation_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da))

:named Prims_interpretation_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name GC.inv; Namespace GC
(assert (! 
;; def=GC.fst(69,42-69,58); use=GC.fst(69,42-69,58)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_677d63d26b593ea784a0851b5435f387)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_677d63d26b593ea784a0851b5435f387))
:qid GC_pre_typing_Tm_arrow_677d63d26b593ea784a0851b5435f387))

:named GC_pre_typing_Tm_arrow_677d63d26b593ea784a0851b5435f387))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387
;;; Fact-ids: Name GC.inv; Namespace GC
(assert (! 
;; def=GC.fst(69,42-69,58); use=GC.fst(69,42-69,58)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_677d63d26b593ea784a0851b5435f387)
(and 
;; def=GC.fst(69,42-69,58); use=GC.fst(69,42-69,58)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_677d63d26b593ea784a0851b5435f387))
:qid GC_interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387))

:named GC_interpretation_Tm_arrow_677d63d26b593ea784a0851b5435f387))
(push) ;; push{2

; Starting query at GC.fst(194,16-194,103)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



(declare-fun Tm_abs_ad71fd0a4754de775a70bb709954227f (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_ad71fd0a4754de775a70bb709954227f
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(194,38-194,69); use=GC.fst(194,38-194,69)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_ad71fd0a4754de775a70bb709954227f @x0)
Tm_arrow_677d63d26b593ea784a0851b5435f387)
 

:pattern ((Tm_abs_ad71fd0a4754de775a70bb709954227f @x0))
:qid typing_Tm_abs_ad71fd0a4754de775a70bb709954227f))

:named typing_Tm_abs_ad71fd0a4754de775a70bb709954227f))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_ad71fd0a4754de775a70bb709954227f
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(194,38-194,69); use=GC.fst(194,38-194,69)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_ad71fd0a4754de775a70bb709954227f @x1)
@x0)
(Prims.b2t (Prims.op_disEquality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x1)
@x0)
GC.Gray@tok)))
 

:pattern ((ApplyTT (Tm_abs_ad71fd0a4754de775a70bb709954227f @x1)
@x0))
:qid interpretation_Tm_abs_ad71fd0a4754de775a70bb709954227f))

:named interpretation_Tm_abs_ad71fd0a4754de775a70bb709954227f))

;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(194,38-194,69); use=GC.fst(194,38-194,69)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.l_Forall GC.mem_addr
(Tm_abs_ad71fd0a4754de775a70bb709954227f @x0)))

;; def=GC.fst(194,38-194,69); use=GC.fst(194,38-194,69)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)

;; def=GC.fst(194,49-194,68); use=GC.fst(194,49-194,68)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Gray@tok))
)
 
;;no pats
:qid l_quant_interp_667c13faa02d200879562beca63c2a6a.1))
)
 

:pattern ((Valid (Prims.l_Forall GC.mem_addr
(Tm_abs_ad71fd0a4754de775a70bb709954227f @x0))))
:qid l_quant_interp_667c13faa02d200879562beca63c2a6a))

:named l_quant_interp_667c13faa02d200879562beca63c2a6a))

; Encoding query formula : forall (old: GC.gc_state).
;   (*  - Could not prove post-condition
; *)
;   (GC.gc_inv old ==>
;     (forall (i: GC.mem_addr).
;         (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;         Prims.hasEq GC.color)) /\
;   (forall (any_result: Prims.logical).
;       (GC.gc_inv old /\ (forall (i: GC.mem_addr). old.color i <> GC.Gray) ==>
;         GC.sweep_aux_inv old GC.mem_lo old) ==
;       any_result ==>
;       GC.gc_inv old /\ (forall (i: GC.mem_addr). old.color i <> GC.Gray) ==>
;       GC.sweep_aux_inv old GC.mem_lo old)


; Context: While encoding a query
; While typechecking the top-level declaration `let test2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)

;; def=Prims.fst(459,77-459,89); use=GC.fst(194,16-194,103)
(and (implies 
;; def=GC.fst(194,24-194,34); use=GC.fst(194,24-194,34)
(Valid 
;; def=GC.fst(194,24-194,34); use=GC.fst(194,24-194,34)
(GC.gc_inv @x0)
)


;; def=dummy(0,0-0,0); use=GC.fst(194,24-194,69)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.mem_addr)

;; def=Prims.fst(73,23-73,30); use=GC.fst(194,64-194,68)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(194,64-194,68)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(194,64-194,68)
(Prims.hasEq GC.color)
)
)
)
 
;;no pats
:qid @query.1))
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(194,16-194,103)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.logical)

;; def=Prims.fst(672,13-672,14); use=GC.fst(194,16-194,103)
(= (Prims.l_imp (Prims.l_and (GC.gc_inv @x0)
(Prims.l_Forall GC.mem_addr
(Tm_abs_ad71fd0a4754de775a70bb709954227f @x0)))
(GC.sweep_aux_inv @x0
(GC.mem_lo Dummy_value)
@x0))
@x1)


;; def=GC.fst(194,24-194,34); use=GC.fst(194,16-194,22)
(Valid 
;; def=GC.fst(194,24-194,34); use=GC.fst(194,16-194,22)
(GC.gc_inv @x0)
)


;; def=GC.fst(194,38-194,69); use=GC.fst(194,16-194,22)
(forall ((@x2 Term))
 (! (implies (HasType @x2
GC.mem_addr)

;; def=GC.fst(194,49-194,68); use=GC.fst(194,16-194,22)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x2)
GC.Gray@tok))
)
 
;;no pats
:qid @query.3))
)

;; def=GC.fst(194,74-194,102); use=GC.fst(194,16-194,22)
(or label_2

;; def=GC.fst(194,74-194,102); use=GC.fst(194,16-194,22)
(Valid 
;; def=GC.fst(194,74-194,102); use=GC.fst(194,16-194,22)
(GC.sweep_aux_inv @x0
(GC.mem_lo Dummy_value)
@x0)
)
)
)
 
;;no pats
:qid @query.2))
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (GC.test2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_GC.color__uu___haseq, b2t_def, constructor_distinct_GC.Black, constructor_distinct_GC.Unalloc, equality_tok_GC.Black@tok, equality_tok_GC.Unalloc@tok, equation_GC.gc_inv, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.ptr_lifts, equation_GC.sweep_aux_inv, equation_GC.valid, fuel_guarded_inversion_GC.gc_state, int_inversion, primitive_Prims.op_AmpAmp, primitive_Prims.op_LessThanOrEqual, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925, typing_GC.mem_lo

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test2


; <Start encoding let test2>

(declare-fun GC.test2 (Term) Term)
;;;;;;;;;;;;;;;;old: gc_state -> Prims.unit
(declare-fun Tm_arrow_9d7c79011b44adf32ff7c7033a50bf5e () Term)
(declare-fun GC.test2@tok () Term)

; </end encoding let test2>

(push) ;; push{2

; Starting query at GC.fst(196,0-206,89)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: gc_state -> Type
(declare-fun Tm_arrow_5506fdc9179af917d1f154a486cc41f6 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5506fdc9179af917d1f154a486cc41f6
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_5506fdc9179af917d1f154a486cc41f6
Tm_type)
:named kinding_Tm_arrow_5506fdc9179af917d1f154a486cc41f6))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(90,24-90,41); use=GC.fst(196,11-196,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_5506fdc9179af917d1f154a486cc41f6)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_5506fdc9179af917d1f154a486cc41f6))
:qid GC_pre_typing_Tm_arrow_5506fdc9179af917d1f154a486cc41f6))

:named GC_pre_typing_Tm_arrow_5506fdc9179af917d1f154a486cc41f6))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5506fdc9179af917d1f154a486cc41f6
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(90,24-90,41); use=GC.fst(196,11-196,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_5506fdc9179af917d1f154a486cc41f6)
(and 
;; def=GC.fst(90,24-90,41); use=GC.fst(196,11-196,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
GC.gc_state)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid GC_interpretation_Tm_arrow_5506fdc9179af917d1f154a486cc41f6.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_5506fdc9179af917d1f154a486cc41f6))
:qid GC_interpretation_Tm_arrow_5506fdc9179af917d1f154a486cc41f6))

:named GC_interpretation_Tm_arrow_5506fdc9179af917d1f154a486cc41f6))


(declare-fun Tm_abs_8a4c715f431e5906fec5699c5b80d84f (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_8a4c715f431e5906fec5699c5b80d84f
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(198,23-200,49); use=GC.fst(196,11-196,26)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x0)
Tm_arrow_677d63d26b593ea784a0851b5435f387)
 

:pattern ((Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x0))
:qid typing_Tm_abs_8a4c715f431e5906fec5699c5b80d84f))

:named typing_Tm_abs_8a4c715f431e5906fec5699c5b80d84f))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8a4c715f431e5906fec5699c5b80d84f
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(198,23-200,49); use=GC.fst(196,11-196,26)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x1)
@x0)
(Prims.l_imp (GC.trigger @x0)
(Prims.b2t (Prims.op_disEquality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x1)
@x0)
GC.Gray@tok))))
 

:pattern ((ApplyTT (Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x1)
@x0))
:qid interpretation_Tm_abs_8a4c715f431e5906fec5699c5b80d84f))

:named interpretation_Tm_abs_8a4c715f431e5906fec5699c5b80d84f))

;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(198,23-200,49); use=GC.fst(196,11-196,26)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.l_Forall GC.mem_addr
(Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x0)))

;; def=GC.fst(198,23-200,49); use=GC.fst(196,11-196,26)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
GC.mem_addr)

;; def=GC.fst(199,29-199,38); use=GC.fst(196,11-196,26)
(Valid 
;; def=GC.fst(199,29-199,38); use=GC.fst(196,11-196,26)
(GC.trigger @x1)
)
)

;; def=GC.fst(200,30-200,48); use=GC.fst(196,11-196,26)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x0)
@x1)
GC.Gray@tok))
)
 

:pattern ((GC.trigger @x1))
:qid l_quant_interp_6c328d0425a8c69b28874e8c4d5d0858.1))
)
 

:pattern ((Valid (Prims.l_Forall GC.mem_addr
(Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x0))))
:qid l_quant_interp_6c328d0425a8c69b28874e8c4d5d0858))

:named l_quant_interp_6c328d0425a8c69b28874e8c4d5d0858))

(declare-fun Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2
;;; Fact-ids: 
(assert (! (HasType Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2
Tm_arrow_5506fdc9179af917d1f154a486cc41f6)
:named typing_Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(197,23-200,49); use=GC.fst(196,11-196,26)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2
@x0)
(Prims.l_and (GC.gc_inv @x0)
(Prims.l_Forall GC.mem_addr
(Tm_abs_8a4c715f431e5906fec5699c5b80d84f @x0))))
 

:pattern ((ApplyTT Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2
@x0))
:qid interpretation_Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2))

:named interpretation_Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2))

; Encoding query formula : forall (_: Prims.unit).
;   (forall (gc: GC.gc_state).
;       (*  - Could not prove post-condition
; *)
;       GC.gc_inv gc ==> (forall (i: GC.mem_addr). GC.trigger i ==> Prims.hasEq GC.color)) /\
;   (forall (any_result: (_: GC.gc_state -> Type0)).
;       (fun gc ->
;           GC.gc_inv gc /\
;           (forall (i: GC.mem_addr). {:pattern GC.trigger i} GC.trigger i ==> gc.color i <> GC.Gray)) ==
;       any_result ==>
;       (forall (gc: GC.gc_state) (_: Prims.unit) (gc': GC.gc_state).
;           (*  - Could not prove post-condition
; *)
;           forall (c: GC.color_map).
;             (*  - Could not prove post-condition
; *)
;             forall (a: GC.abs_map).
;               gc' == GC.Mkgc_state a c gc.abs_fields gc.fields /\ GC.mutator_inv gc' ==>
;               (forall (i: GC.mem_addr). GC.trigger i ==> Prims.hasEq GC.color)))


; Context: While encoding a query
; While typechecking the top-level declaration `val GC.sweep`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=dummy(0,0-0,0); use=GC.fst(196,0-206,89)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(459,77-459,89); use=GC.fst(196,11-196,26)
(and 
;; def=dummy(0,0-0,0); use=GC.fst(196,11-196,26)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
GC.gc_state)

;; def=GC.fst(197,23-197,32); use=GC.fst(196,11-196,26)
(Valid 
;; def=GC.fst(197,23-197,32); use=GC.fst(196,11-196,26)
(GC.gc_inv @x1)
)
)

;; def=dummy(0,0-0,0); use=GC.fst(196,11-196,26)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
GC.mem_addr)

;; def=GC.fst(199,29-199,38); use=GC.fst(196,11-196,26)
(Valid 
;; def=GC.fst(199,29-199,38); use=GC.fst(196,11-196,26)
(GC.trigger @x2)
)
)

;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_1

;; def=Prims.fst(73,23-73,30); use=GC.fst(196,11-196,26)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(196,11-196,26)
(Prims.hasEq GC.color)
)
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))


;; def=Prims.fst(451,66-451,102); use=GC.fst(196,11-196,26)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Tm_arrow_5506fdc9179af917d1f154a486cc41f6)

;; def=GC.fst(90,20-200,49); use=GC.fst(196,11-196,26)
(= Tm_abs_4f0390fa6d8c86b1978d1eae38fd8df2
@x1)
)

;; def=dummy(0,0-0,0); use=GC.fst(196,11-196,26)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
GC.gc_state)
(HasType @x3
Prims.unit)
(HasType @x4
GC.gc_state))

;; def=dummy(0,0-0,0); use=GC.fst(196,11-196,26)
(forall ((@x5 Term))
 (! (implies (HasType @x5
GC.color_map)

;; def=dummy(0,0-0,0); use=GC.fst(196,11-196,26)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
GC.abs_map)

;; def=GC.fst(201,41-201,75); use=GC.fst(196,11-196,26)
(= @x4
(GC.Mkgc_state @x6
@x5
(GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__fields @x2)))


;; def=GC.fst(202,27-202,42); use=GC.fst(196,11-196,26)
(Valid 
;; def=GC.fst(202,27-202,42); use=GC.fst(196,11-196,26)
(GC.mutator_inv @x4)
)
)

;; def=dummy(0,0-0,0); use=GC.fst(196,11-196,26)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
GC.mem_addr)

;; def=GC.fst(204,33-204,42); use=GC.fst(196,11-196,26)
(Valid 
;; def=GC.fst(204,33-204,42); use=GC.fst(196,11-196,26)
(GC.trigger @x7)
)
)

;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_2

;; def=Prims.fst(73,23-73,30); use=GC.fst(196,11-196,26)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(196,11-196,26)
(Prims.hasEq GC.color)
)
)
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
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
)
)
 
;;no pats
:qid @query))
)
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
; QUERY ID: (GC.sweep, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_GC.color__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val GC.sweep


; <Skipped val GC.sweep/>

(push) ;; push{2

; Starting query at GC.fst(207,14-234,18)

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


;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.upd_map@tok))
:named @kick_partial_app_2e63e359d2270bb84fc5e0cff78bf752))























(declare-fun Non_total_Tm_arrow_c21f46f10b7427a9de8048116e903471 (Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=GC.fst(209,26-209,45); use=GC.fst(209,26-209,45)
(forall ((@x0 Term))
 (! (implies (HasType @x0
GC.gc_state)
(HasType (Non_total_Tm_arrow_c21f46f10b7427a9de8048116e903471 @x0)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_c21f46f10b7427a9de8048116e903471 @x0)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_c21f46f10b7427a9de8048116e903471))

:named non_total_function_typing_Non_total_Tm_arrow_c21f46f10b7427a9de8048116e903471))










; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;     GC.gc_inv h /\
;     (forall (i: GC.mem_addr). {:pattern GC.trigger i} GC.trigger i ==> h.color i <> GC.Gray) /\
;     (forall (a: Prims.unit) (gc': GC.gc_state).
;         GC.gc_inv h /\
;         (forall (i: GC.mem_addr). {:pattern GC.trigger i} GC.trigger i ==> h.color i <> GC.Gray) /\
;         (exists (c: GC.color_map) (a: GC.abs_map).
;             gc' == GC.Mkgc_state a c h.abs_fields h.fields /\ GC.mutator_inv gc' /\
;             (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                 GC.trigger i ==>
;                 (h.color i = GC.Black ==> GC.ptr_lifts gc' i) /\
;                 (GC.ptr_lifts gc' i ==> h.to_abs i = gc'.to_abs i))) ==>
;         p a gc') ==>
;     (forall (a: GC.gc_state) (gc': GC.gc_state).
;         h == gc' /\ a == gc' ==>
;         (forall (ptr: GC.mem_addr).
;             (*  - Could not prove post-condition
; *)
;             forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;               GC.sweep_aux_inv a ptr h /\
;               (forall (a: Prims.unit) (gc': GC.gc_state).
;                   GC.sweep_aux_inv a ptr h /\
;                   (gc'.abs_fields == a.abs_fields) /\ (gc'.fields == a.fields) /\ GC.mutator_inv gc' /\
;                   (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                       GC.trigger i ==>
;                       (a.color i = GC.Black ==> GC.ptr_lifts gc' i) /\
;                       (GC.ptr_lifts gc' i ==> a.to_abs i = gc'.to_abs i)) ==>
;                   p a gc') ==>
;               GC.trigger ptr /\
;               (forall (pure_result: Prims.unit).
;                   GC.trigger ptr ==>
;                   (forall (a: GC.gc_state) (gc': GC.gc_state).
;                       h == gc' /\ a == gc' ==>
;                       Prims.hasEq GC.color /\
;                       (forall (any_result: Type0).
;                           GC.color == any_result ==>
;                           (forall (any_result: Prims.bool).
;                               a.color ptr = GC.White == any_result ==>
;                               (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.unit).
;                                   (forall (x: Prims.unit) (h: GC.gc_state).
;                                       {:pattern Prims.guard_free (k x h)}
;                                       (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.unit)
;                                         .
;                                           (forall (x: Prims.unit) (h: GC.gc_state).
;                                               {:pattern Prims.guard_free (k x h)}
;                                               p x h ==> k x h) ==>
;                                           (ptr + 1 < GC.mem_hi == true ==>
;                                             GC.is_mem_addr (ptr + 1) /\
;                                             (forall (return_val: GC.mem_addr).
;                                                 return_val == ptr + 1 ==>
;                                                 GC.sweep_aux_inv a (ptr + 1) h /\
;                                                 (forall (a: Prims.unit) (gc': GC.gc_state).
;                                                     GC.sweep_aux_inv a (ptr + 1) h /\
;                                                     (gc'.abs_fields == a.abs_fields) /\
;                                                     (gc'.fields == a.fields) /\
;                                                     GC.mutator_inv gc' /\
;                                                     (forall (i: GC.mem_addr).
;                                                         {:pattern GC.trigger i}
;                                                         GC.trigger i ==>
;                                                         (a.color i = GC.Black ==> GC.ptr_lifts gc' i
;                                                         ) /\
;                                                         (GC.ptr_lifts gc' i ==>
;                                                           a.to_abs i = gc'.to_abs i)) ==>
;                                                     k a gc'))) /\
;                                           (~(ptr + 1 < GC.mem_hi = true) ==>
;                                             (forall (b: Prims.bool).
;                                                 ptr + 1 < GC.mem_hi == b ==>
;                                                 (forall (any_result: Prims.unit). k any_result h)))) ==>
;                                       k x h) ==>
;                                   (a.color ptr = GC.White == true ==>
;                                     Prims.hasEq GC.mem_addr /\
;                                     (forall (any_result: Type0).
;                                         GC.mem_addr == any_result ==>
;                                         (forall (any_result: (j: GC.mem_addr -> GC.abs_node)).
;                                             GC.upd_map a.to_abs ptr GC.no_abs == any_result ==>
;                                             Prims.hasEq GC.mem_addr /\
;                                             (forall (any_result: Type0).
;                                                 GC.mem_addr == any_result ==>
;                                                 (forall (any_result: (j: GC.mem_addr -> GC.color)).
;                                                     GC.upd_map a.color ptr GC.Unalloc == any_result ==>
;                                                     (forall (any_result: GC.gc_state).
;                                                         GC.Mkgc_state
;                                                           (GC.upd_map a.to_abs ptr GC.no_abs)
;                                                           (GC.upd_map a.color ptr GC.Unalloc)
;                                                           a.abs_fields
;                                                           a.fields ==
;                                                         any_result ==>
;                                                         (forall (a: Prims.unit) (gc': GC.gc_state).
;                                                             GC.Mkgc_state
;                                                               (GC.upd_map a.to_abs ptr GC.no_abs)
;                                                               (GC.upd_map a.color ptr GC.Unalloc)
;                                                               a.abs_fields
;                                                               a.fields ==
;                                                             gc' ==>
;                                                             k a gc'))))))) /\
;                                   (~(a.color ptr = GC.White = true) ==>
;                                     (forall (b: Prims.bool).
;                                         a.color ptr = GC.White == b ==>
;                                         Prims.hasEq GC.color /\
;                                         (forall (any_result: Type0).
;                                             GC.color == any_result ==>
;                                             (forall (any_result: Prims.bool).
;                                                 a.color ptr = GC.Black == any_result ==>
;                                                 (forall (k:
;                                                     FStar.Pervasives.st_post_h GC.gc_state
;                                                       Prims.unit).
;                                                     (forall (x: Prims.unit) (h: GC.gc_state).
;                                                         {:pattern Prims.guard_free (k x h)}
;                                                         k x h ==> k x h) ==>
;                                                     (a.color ptr = GC.Black == true ==>
;                                                       Prims.hasEq GC.mem_addr /\
;                                                       (forall (any_result: Type0).
;                                                           GC.mem_addr == any_result ==>
;                                                           (forall (any_result:
;                                                               (j: GC.mem_addr -> GC.color)).
;                                                               GC.upd_map a.color ptr GC.White ==
;                                                               any_result ==>
;                                                               (forall (any_result: GC.gc_state).
;                                                                   GC.Mkgc_state a.to_abs
;                                                                     (GC.upd_map a.color ptr GC.White
;                                                                     )
;                                                                     a.abs_fields
;                                                                     a.fields ==
;                                                                   any_result ==>
;                                                                   (forall (a: Prims.unit)
;                                                                       (gc': GC.gc_state).
;                                                                       GC.Mkgc_state a.to_abs
;                                                                         (GC.upd_map a.color
;                                                                             ptr
;                                                                             GC.White)
;                                                                         a.abs_fields
;                                                                         a.fields ==
;                                                                       gc' ==>
;                                                                       k a gc'))))) /\
;                                                     (~(a.color ptr = GC.Black = true) ==>
;                                                       (forall (b: Prims.bool).
;                                                           a.color ptr = GC.Black == b ==>
;                                                           (forall (any_result: Prims.unit).
;                                                               k any_result gc')))))))))))))) /\
;         (forall (b: (ptr: GC.mem_addr -> GC.GC Prims.unit)).
;             (0 < GC.mem_lo ==> GC.is_mem_addr GC.mem_lo) /\
;             (forall (any_result: x: Prims.int{0 < x}).
;                 GC.mem_lo == any_result ==>
;                 GC.sweep_aux_inv a GC.mem_lo gc' /\
;                 (forall (a: Prims.unit) (gc': GC.gc_state).
;                     GC.sweep_aux_inv a GC.mem_lo gc' /\
;                     (gc'.abs_fields == a.abs_fields) /\ (gc'.fields == a.fields) /\
;                     GC.mutator_inv gc' /\
;                     (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                         GC.trigger i ==>
;                         (a.color i = GC.Black ==> GC.ptr_lifts gc' i) /\
;                         (GC.ptr_lifts gc' i ==> a.to_abs i = gc'.to_abs i)) ==>
;                     p a gc'))))


; Context: While encoding a query
; While typechecking the top-level declaration `let sweep`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x2
GC.gc_state)

;; def=GC.fst(197,23-197,32); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(197,23-197,32); use=GC.fst(207,14-234,18)
(GC.gc_inv @x2)
)


;; def=GC.fst(198,23-200,49); use=GC.fst(207,14-234,18)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
GC.mem_addr)

;; def=GC.fst(199,29-199,38); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(199,29-199,38); use=GC.fst(207,14-234,18)
(GC.trigger @x3)
)
)

;; def=GC.fst(200,30-200,48); use=GC.fst(207,14-234,18)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x3)
GC.Gray@tok))
)
 

:pattern ((GC.trigger @x3))
:qid @query.2))


;; def=GC.fst(93,28-93,81); use=GC.fst(207,14-234,18)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))
(or label_2
(HasType @x4
GC.gc_state))

;; def=GC.fst(197,23-197,32); use=GC.fst(207,14-234,18)
(or label_3

;; def=GC.fst(197,23-197,32); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(197,23-197,32); use=GC.fst(207,14-234,18)
(GC.gc_inv @x2)
)
)


;; def=GC.fst(198,23-200,49); use=GC.fst(207,14-234,18)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
GC.mem_addr)

;; def=GC.fst(199,29-199,38); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(199,29-199,38); use=GC.fst(207,14-234,18)
(GC.trigger @x5)
)
)

;; def=GC.fst(200,30-200,48); use=GC.fst(207,14-234,18)
(or label_4

;; def=GC.fst(200,30-200,48); use=GC.fst(207,14-234,18)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x5)
GC.Gray@tok))
)
)
 

:pattern ((GC.trigger @x5))
:qid @query.4))


;; def=GC.fst(201,28-206,87); use=GC.fst(207,14-234,18)
(or label_5

;; def=GC.fst(201,28-206,87); use=GC.fst(207,14-234,18)
(exists ((@x5 Term) (@x6 Term))
 (! (and (HasType @x5
GC.color_map)
(HasType @x6
GC.abs_map)

;; def=GC.fst(201,41-201,75); use=GC.fst(207,14-234,18)
(= @x4
(GC.Mkgc_state @x6
@x5
(GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__fields @x2)))


;; def=GC.fst(202,27-202,42); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(202,27-202,42); use=GC.fst(207,14-234,18)
(GC.mutator_inv @x4)
)


;; def=GC.fst(203,27-206,86); use=GC.fst(207,14-234,18)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
GC.mem_addr)

;; def=GC.fst(204,33-204,42); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(204,33-204,42); use=GC.fst(207,14-234,18)
(GC.trigger @x7)
)
)

;; def=GC.fst(205,34-206,85); use=GC.fst(207,14-234,18)
(and 
;; def=GC.fst(205,34-205,72); use=GC.fst(207,14-234,18)
(implies 
;; def=GC.fst(205,35-205,51); use=GC.fst(207,14-234,18)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x7)
GC.Black@tok)


;; def=GC.fst(205,56-205,71); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(205,56-205,71); use=GC.fst(207,14-234,18)
(GC.ptr_lifts @x4
@x7)
)
)


;; def=GC.fst(206,37-206,85); use=GC.fst(207,14-234,18)
(implies 
;; def=GC.fst(206,38-206,53); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(206,38-206,53); use=GC.fst(207,14-234,18)
(GC.ptr_lifts @x4
@x7)
)


;; def=GC.fst(206,58-206,84); use=GC.fst(207,14-234,18)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x7)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x4)
@x7))
)
)
)
 

:pattern ((GC.trigger @x7))
:qid @query.6))
)
 
;;no pats
:qid @query.5))
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(207,14-234,18)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(207,14-234,18)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(207,14-234,18)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
:qid @query.3))
)

;; def=GC.fst(93,28-93,81); use=GC.fst(208,12-208,15)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
GC.gc_state)
(HasType @x4
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(208,12-208,15)
(= @x2
@x4)


;; def=GC.fst(99,84-99,92); use=GC.fst(208,12-208,15)
(= @x3
@x4)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(207,14-234,18)
(and 
;; def=dummy(0,0-0,0); use=GC.fst(208,21-234,18)
(forall ((@x5 Term))
 (! (implies (HasType @x5
GC.mem_addr)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=GC.fst(208,21-234,18)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x7
GC.gc_state)

;; def=GC.fst(210,27-210,51); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(210,27-210,51); use=GC.fst(220,10-233,34)
(GC.sweep_aux_inv @x3
@x5
@x7)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(220,10-233,34)
(forall ((@x8 Term) (@x9 Term))
 (! (implies (and (or label_6
(HasType @x8
Prims.unit))
(or label_7
(HasType @x9
GC.gc_state))

;; def=GC.fst(210,27-210,51); use=GC.fst(220,10-233,34)
(or label_8

;; def=GC.fst(210,27-210,51); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(210,27-210,51); use=GC.fst(220,10-233,34)
(GC.sweep_aux_inv @x3
@x5
@x7)
)
)


;; def=GC.fst(212,23-212,54); use=GC.fst(220,10-233,34)
(or label_9

;; def=GC.fst(212,23-212,54); use=GC.fst(220,10-233,34)
(= (GC.__proj__Mkgc_state__item__abs_fields @x9)
(GC.__proj__Mkgc_state__item__abs_fields @x3))
)


;; def=GC.fst(213,26-213,49); use=GC.fst(220,10-233,34)
(or label_10

;; def=GC.fst(213,26-213,49); use=GC.fst(220,10-233,34)
(= (GC.__proj__Mkgc_state__item__fields @x9)
(GC.__proj__Mkgc_state__item__fields @x3))
)


;; def=GC.fst(214,26-214,40); use=GC.fst(220,10-233,34)
(or label_11

;; def=GC.fst(214,26-214,40); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(214,26-214,40); use=GC.fst(220,10-233,34)
(GC.mutator_inv @x9)
)
)


;; def=GC.fst(215,26-218,83); use=GC.fst(220,10-233,34)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
GC.mem_addr)

;; def=GC.fst(216,31-216,40); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(216,31-216,40); use=GC.fst(220,10-233,34)
(GC.trigger @x10)
)
)

;; def=GC.fst(217,32-218,82); use=GC.fst(220,10-233,34)
(and (implies 
;; def=GC.fst(217,33-217,50); use=GC.fst(220,10-233,34)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x10)
GC.Black@tok)


;; def=GC.fst(217,55-217,69); use=GC.fst(220,10-233,34)
(or label_12

;; def=GC.fst(217,55-217,69); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(217,55-217,69); use=GC.fst(220,10-233,34)
(GC.ptr_lifts @x9
@x10)
)
)
)
(implies 
;; def=GC.fst(218,36-218,50); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(218,36-218,50); use=GC.fst(220,10-233,34)
(GC.ptr_lifts @x9
@x10)
)


;; def=GC.fst(218,55-218,81); use=GC.fst(220,10-233,34)
(or label_13

;; def=GC.fst(218,55-218,81); use=GC.fst(220,10-233,34)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x10)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x9)
@x10))
)
))
)
 

:pattern ((GC.trigger @x10))
:qid @query.11))
)

;; def=GC.fst(93,73-93,80); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x6
@x8)
@x9)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x6
@x8)
@x9)
)
)
:qid @query.10))
)

;; def=Prims.fst(441,29-441,97); use=GC.fst(220,10-220,13)
(and 
;; def=GC.fst(220,14-220,27); use=GC.fst(220,10-220,13)
(or label_14

;; def=GC.fst(220,14-220,27); use=GC.fst(220,10-220,13)
(Valid 
;; def=GC.fst(220,14-220,27); use=GC.fst(220,10-220,13)
(GC.trigger @x5)
)
)


;; def=Prims.fst(441,36-441,97); use=GC.fst(220,10-220,13)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=GC.fst(220,14-220,27); use=GC.fst(220,10-220,13)
(Valid 
;; def=GC.fst(220,14-220,27); use=GC.fst(220,10-220,13)
(GC.trigger @x5)
)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(221,19-221,22)
(forall ((@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x9
GC.gc_state)
(HasType @x10
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(221,19-221,22)
(= @x7
@x10)


;; def=GC.fst(99,84-99,92); use=GC.fst(221,19-221,22)
(= @x9
@x10)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(220,10-233,34)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_15

;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Prims.hasEq GC.color)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Tm_type)

;; def=Prims.fst(588,31-588,32); use=GC.fst(220,10-233,34)
(= GC.color
@x11)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Prims.bool)

;; def=GC.fst(222,13-222,33); use=GC.fst(222,13-222,33)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.White@tok)
@x12)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(220,10-233,34)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(220,10-233,34)
(forall ((@x14 Term) (@x15 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(220,10-233,34)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(220,10-233,34)
(forall ((@x17 Term) (@x18 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(220,10-233,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x6
@x17)
@x18)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(220,10-233,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x16
@x17)
@x18)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x16
@x17)
@x18))
:qid @query.19))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(220,10-233,34)
(and (implies 
;; def=GC.fst(232,13-232,29); use=GC.fst(232,13-232,29)
(= (Prims.op_LessThan (Prims.op_Addition @x5
(BoxInt 1))
(GC.mem_hi Dummy_value))
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(220,10-233,34)
(and 
;; def=GC.fst(33,23-33,36); use=GC.fst(233,25-233,34)
(or label_16

;; def=GC.fst(33,23-33,36); use=GC.fst(233,25-233,34)
(BoxBool_proj_0 (GC.is_mem_addr (Prims.op_Addition @x5
(BoxInt 1))))
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(220,10-233,34)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
GC.mem_addr)

;; def=Prims.fst(356,26-356,41); use=GC.fst(220,10-233,34)
(= @x17
(Prims.op_Addition @x5
(BoxInt 1)))
)

;; def=GC.fst(93,18-93,81); use=GC.fst(233,15-233,24)
(and 
;; def=GC.fst(210,27-210,51); use=GC.fst(233,15-233,24)
(or label_17

;; def=GC.fst(210,27-210,51); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(210,27-210,51); use=GC.fst(233,15-233,24)
(GC.sweep_aux_inv @x3
(Prims.op_Addition @x5
(BoxInt 1))
@x15)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(233,15-233,24)
(forall ((@x18 Term) (@x19 Term))
 (! (implies (and (HasType @x18
Prims.unit)
(HasType @x19
GC.gc_state)

;; def=GC.fst(210,27-210,51); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(210,27-210,51); use=GC.fst(233,15-233,24)
(GC.sweep_aux_inv @x3
(Prims.op_Addition @x5
(BoxInt 1))
@x15)
)


;; def=GC.fst(212,23-212,54); use=GC.fst(233,15-233,24)
(= (GC.__proj__Mkgc_state__item__abs_fields @x19)
(GC.__proj__Mkgc_state__item__abs_fields @x3))


;; def=GC.fst(213,26-213,49); use=GC.fst(233,15-233,24)
(= (GC.__proj__Mkgc_state__item__fields @x19)
(GC.__proj__Mkgc_state__item__fields @x3))


;; def=GC.fst(214,26-214,40); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(214,26-214,40); use=GC.fst(233,15-233,24)
(GC.mutator_inv @x19)
)


;; def=GC.fst(215,26-218,83); use=GC.fst(233,15-233,24)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
GC.mem_addr)

;; def=GC.fst(216,31-216,40); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(216,31-216,40); use=GC.fst(233,15-233,24)
(GC.trigger @x20)
)
)

;; def=GC.fst(217,32-218,82); use=GC.fst(233,15-233,24)
(and 
;; def=GC.fst(217,32-217,70); use=GC.fst(233,15-233,24)
(implies 
;; def=GC.fst(217,33-217,50); use=GC.fst(233,15-233,24)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x20)
GC.Black@tok)


;; def=GC.fst(217,55-217,69); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(217,55-217,69); use=GC.fst(233,15-233,24)
(GC.ptr_lifts @x19
@x20)
)
)


;; def=GC.fst(218,35-218,82); use=GC.fst(233,15-233,24)
(implies 
;; def=GC.fst(218,36-218,50); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(218,36-218,50); use=GC.fst(233,15-233,24)
(GC.ptr_lifts @x19
@x20)
)


;; def=GC.fst(218,55-218,81); use=GC.fst(233,15-233,24)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x20)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x19)
@x20))
)
)
)
 

:pattern ((GC.trigger @x20))
:qid @query.22))
)

;; def=GC.fst(93,73-93,80); use=GC.fst(233,15-233,24)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(233,15-233,24)
(ApplyTT (ApplyTT @x16
@x18)
@x19)
)
)
 
;;no pats
:qid @query.21))
)
)
 
;;no pats
:qid @query.20))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(220,10-233,34)
(not 
;; def=GC.fst(232,13-232,29); use=GC.fst(232,13-232,29)
(= (Prims.op_LessThan (Prims.op_Addition @x5
(BoxInt 1))
(GC.mem_hi Dummy_value))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=GC.fst(220,10-233,34)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Prims.bool)

;; def=GC.fst(232,10-233,34); use=GC.fst(232,10-233,34)
(= (Prims.op_LessThan (Prims.op_Addition @x5
(BoxInt 1))
(GC.mem_hi Dummy_value))
@x17)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x18 Term))
 (! (implies (HasType @x18
Prims.unit)

;; def=GC.fst(88,94-88,100); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x16
@x18)
@x15)
)
)
 
;;no pats
:qid @query.24))
)
 
;;no pats
:qid @query.23))
))
)
 
;;no pats
:qid @query.18))


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(220,10-233,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x13
@x14)
@x15)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x13
@x14)
@x15))
:qid @query.17))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(220,10-233,34)
(and (implies 
;; def=GC.fst(222,13-222,33); use=GC.fst(222,13-222,33)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.White@tok)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(220,10-233,34)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(35,17-35,25)
(or label_18

;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Tm_type)

;; def=GC.fst(35,17-107,15); use=GC.fst(220,10-233,34)
(= GC.mem_addr
@x14)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346)

;; def=GC.fst(52,2-225,65); use=GC.fst(220,10-233,34)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x9))
@x5)
(GC.no_abs Dummy_value))
@x15)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(220,10-233,34)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,17-34,25)
(or label_19

;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=GC.fst(34,17-107,15); use=GC.fst(220,10-233,34)
(= GC.mem_addr
@x16)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)

;; def=GC.fst(53,2-224,64); use=GC.fst(220,10-233,34)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x9))
@x5)
GC.Unalloc@tok)
@x17)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
GC.gc_state)

;; def=GC.fst(223,20-225,65); use=GC.fst(223,20-225,65)
(= (GC.Mkgc_state (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x9))
@x5)
(GC.no_abs Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x9))
@x5)
GC.Unalloc@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x9)
(GC.__proj__Mkgc_state__item__fields @x9))
@x18)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(226,16-226,19)
(forall ((@x19 Term) (@x20 Term))
 (! (implies (and (HasType @x19
Prims.unit)
(HasType @x20
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(226,16-226,19)
(= (GC.Mkgc_state (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x9))
@x5)
(GC.no_abs Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x9))
@x5)
GC.Unalloc@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x9)
(GC.__proj__Mkgc_state__item__fields @x9))
@x20)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(226,16-226,19)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(226,16-226,19)
(ApplyTT (ApplyTT @x13
@x19)
@x20)
)
)
 
;;no pats
:qid @query.30))
)
 
;;no pats
:qid @query.29))
)
 
;;no pats
:qid @query.28))
)
 
;;no pats
:qid @query.27))
)
)
 
;;no pats
:qid @query.26))
)
 
;;no pats
:qid @query.25))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(220,10-233,34)
(not 
;; def=GC.fst(222,13-222,33); use=GC.fst(222,13-222,33)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.White@tok)
(BoxBool true))
)


;; def=FStar.Pervasives.fsti(489,2-489,27); use=GC.fst(220,10-233,34)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Prims.bool)

;; def=GC.fst(222,13-231,13); use=GC.fst(222,13-231,13)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.White@tok)
@x14)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(220,10-233,34)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(227,33-227,38)
(or label_20

;; def=Prims.fst(73,23-73,30); use=GC.fst(227,33-227,38)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(227,33-227,38)
(Prims.hasEq GC.color)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=Prims.fst(588,31-588,32); use=GC.fst(220,10-233,34)
(= GC.color
@x15)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Prims.bool)

;; def=GC.fst(227,18-227,38); use=GC.fst(227,18-227,38)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.Black@tok)
@x16)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(220,10-233,34)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(220,10-233,34)
(forall ((@x18 Term) (@x19 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(220,10-233,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x13
@x18)
@x19)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(220,10-233,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x17
@x18)
@x19)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x17
@x18)
@x19))
:qid @query.35))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(220,10-233,34)
(and (implies 
;; def=GC.fst(227,18-227,38); use=GC.fst(227,18-227,38)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.Black@tok)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(220,10-233,34)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,17-34,25)
(or label_21

;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(220,10-233,34)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Tm_type)

;; def=GC.fst(34,17-107,15); use=GC.fst(220,10-233,34)
(= GC.mem_addr
@x18)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)

;; def=GC.fst(53,2-229,67); use=GC.fst(220,10-233,34)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x9))
@x5)
GC.White@tok)
@x19)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
GC.gc_state)

;; def=GC.fst(229,20-229,67); use=GC.fst(229,20-229,67)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x9)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x9))
@x5)
GC.White@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x9)
(GC.__proj__Mkgc_state__item__fields @x9))
@x20)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(230,16-230,19)
(forall ((@x21 Term) (@x22 Term))
 (! (implies (and (HasType @x21
Prims.unit)
(HasType @x22
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(230,16-230,19)
(= (GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x9)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x9))
@x5)
GC.White@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x9)
(GC.__proj__Mkgc_state__item__fields @x9))
@x22)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(230,16-230,19)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(230,16-230,19)
(ApplyTT (ApplyTT @x17
@x21)
@x22)
)
)
 
;;no pats
:qid @query.39))
)
 
;;no pats
:qid @query.38))
)
 
;;no pats
:qid @query.37))
)
 
;;no pats
:qid @query.36))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(220,10-233,34)
(not 
;; def=GC.fst(227,18-227,38); use=GC.fst(227,18-227,38)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.Black@tok)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=GC.fst(220,10-233,34)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Prims.bool)

;; def=GC.fst(227,15-231,13); use=GC.fst(227,15-231,13)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x9)
@x5)
GC.Black@tok)
@x18)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(220,10-233,34)
(forall ((@x19 Term))
 (! (implies (HasType @x19
Prims.unit)

;; def=GC.fst(88,94-88,100); use=GC.fst(220,10-233,34)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(220,10-233,34)
(ApplyTT (ApplyTT @x17
@x19)
@x10)
)
)
 
;;no pats
:qid @query.41))
)
 
;;no pats
:qid @query.40))
))
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
:qid @query.31))
))
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
:qid @query.13))
)
 
;;no pats
:qid @query.12))
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.8))


;; def=FStar.Pervasives.fsti(489,2-489,27); use=GC.fst(207,14-234,18)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(Non_total_Tm_arrow_c21f46f10b7427a9de8048116e903471 @x3))

;; def=Prims.fst(459,77-459,89); use=GC.fst(207,14-234,18)
(and (implies 
;; def=GC.fst(20,26-20,31); use=GC.fst(234,12-234,18)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (GC.mem_lo Dummy_value)))


;; def=GC.fst(33,23-33,36); use=GC.fst(234,12-234,18)
(or label_22

;; def=GC.fst(33,23-33,36); use=GC.fst(234,12-234,18)
(BoxBool_proj_0 (GC.is_mem_addr (GC.mem_lo Dummy_value)))
)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(207,14-234,18)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_refine_6faaaf327b122a7307a5bdd1f21b4925)

;; def=GC.fst(209,22-234,18); use=GC.fst(209,22-234,18)
(= (GC.mem_lo Dummy_value)
@x6)
)

;; def=GC.fst(93,18-93,81); use=GC.fst(234,2-234,11)
(and 
;; def=GC.fst(210,27-210,51); use=GC.fst(234,2-234,11)
(or label_23

;; def=GC.fst(210,27-210,51); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(210,27-210,51); use=GC.fst(234,2-234,11)
(GC.sweep_aux_inv @x3
(GC.mem_lo Dummy_value)
@x4)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(234,2-234,11)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
Prims.unit)
(HasType @x8
GC.gc_state)

;; def=GC.fst(210,27-210,51); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(210,27-210,51); use=GC.fst(234,2-234,11)
(GC.sweep_aux_inv @x3
(GC.mem_lo Dummy_value)
@x4)
)


;; def=GC.fst(212,23-212,54); use=GC.fst(234,2-234,11)
(= (GC.__proj__Mkgc_state__item__abs_fields @x8)
(GC.__proj__Mkgc_state__item__abs_fields @x3))


;; def=GC.fst(213,26-213,49); use=GC.fst(234,2-234,11)
(= (GC.__proj__Mkgc_state__item__fields @x8)
(GC.__proj__Mkgc_state__item__fields @x3))


;; def=GC.fst(214,26-214,40); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(214,26-214,40); use=GC.fst(234,2-234,11)
(GC.mutator_inv @x8)
)


;; def=GC.fst(215,26-218,83); use=GC.fst(234,2-234,11)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
GC.mem_addr)

;; def=GC.fst(216,31-216,40); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(216,31-216,40); use=GC.fst(234,2-234,11)
(GC.trigger @x9)
)
)

;; def=GC.fst(217,32-218,82); use=GC.fst(234,2-234,11)
(and 
;; def=GC.fst(217,32-217,70); use=GC.fst(234,2-234,11)
(implies 
;; def=GC.fst(217,33-217,50); use=GC.fst(234,2-234,11)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x3)
@x9)
GC.Black@tok)


;; def=GC.fst(217,55-217,69); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(217,55-217,69); use=GC.fst(234,2-234,11)
(GC.ptr_lifts @x8
@x9)
)
)


;; def=GC.fst(218,35-218,82); use=GC.fst(234,2-234,11)
(implies 
;; def=GC.fst(218,36-218,50); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(218,36-218,50); use=GC.fst(234,2-234,11)
(GC.ptr_lifts @x8
@x9)
)


;; def=GC.fst(218,55-218,81); use=GC.fst(234,2-234,11)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x9)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x8)
@x9))
)
)
)
 

:pattern ((GC.trigger @x9))
:qid @query.45))
)

;; def=GC.fst(93,73-93,80); use=GC.fst(234,2-234,11)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(234,2-234,11)
(ApplyTT (ApplyTT @x1
@x7)
@x8)
)
)
 
;;no pats
:qid @query.44))
)
)
 
;;no pats
:qid @query.43))
)
)
 
;;no pats
:qid @query.42))
)
)
 
;;no pats
:qid @query.7))
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
; QUERY ID: (GC.sweep, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_interpretation_Tm_arrow_000a180d19b73c1ee6709364d3437df0, GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346, GC_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe, GC_interpretation_Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5, GC_pretyping_27e56dec3f0cf9a6af115223c7bb363f, assumption_GC.color__uu___haseq, b2t_def, bool_inversion, constructor_distinct_GC.Black, constructor_distinct_GC.Gray, constructor_distinct_GC.Unalloc, constructor_distinct_GC.White, data_elim_GC.Mkgc_state, equality_tok_GC.Black@tok, equality_tok_GC.Gray@tok, equality_tok_GC.Unalloc@tok, equality_tok_GC.White@tok, equation_GC.abs_map, equation_GC.color_map, equation_GC.gc_inv, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.obj_inv, equation_GC.ptr_lifts, equation_GC.ptr_lifts_to, equation_GC.sweep_aux_inv, equation_GC.to_abs_inj, equation_GC.trigger, equation_GC.upd_map, equation_GC.valid, equation_Prims.eqtype, fuel_guarded_inversion_GC.color, fuel_guarded_inversion_GC.gc_state, function_token_typing_GC.__proj__Mkgc_state__item__abs_fields, function_token_typing_GC.__proj__Mkgc_state__item__fields, function_token_typing_GC.__proj__Mkgc_state__item__to_abs, function_token_typing_GC.upd_map, haseqTm_refine_5248130f0b0d7223b3b6331b13742bec, int_inversion, int_typing, primitive_Prims.op_Addition, primitive_Prims.op_AmpAmp, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_disEquality, proj_equation_GC.Mkgc_state_abs_fields, proj_equation_GC.Mkgc_state_color, proj_equation_GC.Mkgc_state_fields, proj_equation_GC.Mkgc_state_to_abs, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_GC.Mkgc_state_abs_fields, projection_inverse_GC.Mkgc_state_color, projection_inverse_GC.Mkgc_state_fields, projection_inverse_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925, refinement_interpretation_Tm_refine_ebe8d554029941ff856db931e680cc38, refinement_kinding_Tm_refine_5248130f0b0d7223b3b6331b13742bec, token_correspondence_GC.__proj__Mkgc_state__item__abs_fields, token_correspondence_GC.__proj__Mkgc_state__item__color, token_correspondence_GC.__proj__Mkgc_state__item__fields, token_correspondence_GC.__proj__Mkgc_state__item__to_abs, token_correspondence_GC.upd_map, typing_GC.__proj__Mkgc_state__item__to_abs, typing_GC.abs_node, typing_GC.mem_hi, typing_GC.mem_lo, typing_GC.no_abs, typing_GC.valid, typing_Prims.int, typing_tok_GC.White@tok, unit_inversion

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let sweep


; <Start encoding let sweep>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.sweep (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.sweep@tok () Term)

; </end encoding let sweep>


; encoding sigelt val GC.gc


; <Skipped val GC.gc/>

(push) ;; push{2

; Starting query at GC.fst(244,2-247,10)

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














; Encoding query formula : forall (root: GC.mem_addr).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.unit) (h: GC.gc_state).
;     (root <> 0 ==> GC.ptr_lifts h root) /\ GC.mutator_inv h /\
;     (forall (a: Prims.unit) (gc': GC.gc_state).
;         (root <> 0 ==> GC.ptr_lifts h root) /\ GC.mutator_inv h /\
;         (exists (c: GC.color_map) (a: GC.abs_map). gc' == GC.Mkgc_state a c h.abs_fields h.fields) /\
;         (root <> 0 ==> GC.ptr_lifts gc' root) /\
;         (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;             GC.trigger i ==> GC.ptr_lifts gc' i ==> h.to_abs i = gc'.to_abs i) /\
;         (root <> 0 ==> h.to_abs root = gc'.to_abs root) /\
;         GC.mutator_inv gc' ==>
;         p a gc') ==>
;     GC.trigger root /\
;     (forall (pure_result: Prims.unit).
;         GC.trigger root ==>
;         (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.unit).
;             (forall (x: Prims.unit) (h: GC.gc_state). {:pattern Prims.guard_free (k x h)}
;                 GC.gc_inv h /\
;                 (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                     GC.trigger i ==> h.color i <> GC.Gray) /\
;                 (forall (a: Prims.unit) (gc': GC.gc_state).
;                     GC.gc_inv h /\
;                     (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                         GC.trigger i ==> h.color i <> GC.Gray) /\
;                     (exists (c: GC.color_map) (a: GC.abs_map).
;                         gc' == GC.Mkgc_state a c h.abs_fields h.fields /\ GC.mutator_inv gc' /\
;                         (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                             GC.trigger i ==>
;                             (h.color i = GC.Black ==> GC.ptr_lifts gc' i) /\
;                             (GC.ptr_lifts gc' i ==> h.to_abs i = gc'.to_abs i))) ==>
;                     p a gc') ==>
;                 k x h) ==>
;             (root <> 0 == true ==>
;               GC.gc_inv h /\ GC.trigger root /\ GC.ptr_lifts h root /\
;               (forall (a: Prims.unit) (gc': GC.gc_state).
;                   GC.gc_inv h /\ GC.trigger root /\ GC.ptr_lifts h root /\
;                   GC.gc_inv gc' /\
;                   (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                       GC.trigger i ==> gc'.color i <> GC.Black ==> h.color i = gc'.color i) /\
;                   (gc'.color root <> GC.White) /\
;                   (exists (c: GC.color_map). gc' == GC.Mkgc_state h.to_abs c h.abs_fields h.fields) ==>
;                   k a gc')) /\
;             (~(root <> 0 = true) ==>
;               (forall (b: Prims.bool).
;                   root <> 0 == b ==> (forall (any_result: Prims.unit). k any_result h)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let gc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
GC.mem_addr)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))
(HasType @x2
GC.gc_state)

;; def=GC.fst(237,23-237,52); use=GC.fst(244,2-247,10)
(implies 
;; def=GC.fst(237,23-237,30); use=GC.fst(244,2-247,10)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(237,35-237,52); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(237,35-237,52); use=GC.fst(244,2-247,10)
(GC.ptr_lifts @x2
@x0)
)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(244,2-247,10)
(GC.mutator_inv @x2)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(244,2-247,10)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))
(or label_2
(HasType @x4
GC.gc_state))
(implies 
;; def=GC.fst(237,23-237,30); use=GC.fst(244,2-247,10)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(237,35-237,52); use=GC.fst(244,2-247,10)
(or label_3

;; def=GC.fst(237,35-237,52); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(237,35-237,52); use=GC.fst(244,2-247,10)
(GC.ptr_lifts @x2
@x0)
)
)
)

;; def=GC.fst(96,35-96,49); use=GC.fst(244,2-247,10)
(or label_4

;; def=GC.fst(96,35-96,49); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(244,2-247,10)
(GC.mutator_inv @x2)
)
)


;; def=GC.fst(238,28-238,76); use=GC.fst(244,2-247,10)
(or label_5

;; def=GC.fst(238,28-238,76); use=GC.fst(244,2-247,10)
(exists ((@x5 Term) (@x6 Term))
 (! (and (HasType @x5
GC.color_map)
(HasType @x6
GC.abs_map)

;; def=GC.fst(238,41-238,75); use=GC.fst(244,2-247,10)
(= @x4
(GC.Mkgc_state @x6
@x5
(GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__fields @x2)))
)
 
;;no pats
:qid @query.3))
)

(implies 
;; def=GC.fst(239,24-239,31); use=GC.fst(244,2-247,10)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(239,36-239,54); use=GC.fst(244,2-247,10)
(or label_6

;; def=GC.fst(239,36-239,54); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(239,36-239,54); use=GC.fst(244,2-247,10)
(GC.ptr_lifts @x4
@x0)
)
)
)

;; def=GC.fst(240,23-241,95); use=GC.fst(244,2-247,10)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
GC.mem_addr)

;; def=GC.fst(241,32-241,41); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(241,32-241,41); use=GC.fst(244,2-247,10)
(GC.trigger @x5)
)


;; def=GC.fst(241,47-241,62); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(241,47-241,62); use=GC.fst(244,2-247,10)
(GC.ptr_lifts @x4
@x5)
)
)

;; def=GC.fst(241,67-241,93); use=GC.fst(244,2-247,10)
(or label_7

;; def=GC.fst(241,67-241,93); use=GC.fst(244,2-247,10)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x5)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x4)
@x5))
)
)
 

:pattern ((GC.trigger @x5))
:qid @query.4))

(implies 
;; def=GC.fst(242,24-242,33); use=GC.fst(244,2-247,10)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(242,38-242,70); use=GC.fst(244,2-247,10)
(or label_8

;; def=GC.fst(242,38-242,70); use=GC.fst(244,2-247,10)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x0)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x4)
@x0))
)
)

;; def=GC.fst(97,51-97,66); use=GC.fst(244,2-247,10)
(or label_9

;; def=GC.fst(97,51-97,66); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(244,2-247,10)
(GC.mutator_inv @x4)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(244,2-247,10)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(244,2-247,10)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=GC.fst(244,2-244,5)
(and 
;; def=GC.fst(244,6-244,20); use=GC.fst(244,2-244,5)
(or label_10

;; def=GC.fst(244,6-244,20); use=GC.fst(244,2-244,5)
(Valid 
;; def=GC.fst(244,6-244,20); use=GC.fst(244,2-244,5)
(GC.trigger @x0)
)
)


;; def=Prims.fst(441,36-441,97); use=GC.fst(244,2-244,5)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=GC.fst(244,6-244,20); use=GC.fst(244,2-244,5)
(Valid 
;; def=GC.fst(244,6-244,20); use=GC.fst(244,2-244,5)
(GC.trigger @x0)
)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(244,2-247,10)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.st_post_h GC.gc_state
Prims.unit))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(244,2-247,10)
(forall ((@x5 Term) (@x6 Term))
 (! (implies 
;; def=GC.fst(93,18-93,81); use=GC.fst(247,2-247,7)
(and 
;; def=GC.fst(197,23-197,32); use=GC.fst(247,2-247,7)
(or label_11

;; def=GC.fst(197,23-197,32); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(197,23-197,32); use=GC.fst(247,2-247,7)
(GC.gc_inv @x6)
)
)


;; def=GC.fst(198,23-200,49); use=GC.fst(247,2-247,7)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
GC.mem_addr)

;; def=GC.fst(199,29-199,38); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(199,29-199,38); use=GC.fst(247,2-247,7)
(GC.trigger @x7)
)
)

;; def=GC.fst(200,30-200,48); use=GC.fst(247,2-247,7)
(or label_12

;; def=GC.fst(200,30-200,48); use=GC.fst(247,2-247,7)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x7)
GC.Gray@tok))
)
)
 

:pattern ((GC.trigger @x7))
:qid @query.8))


;; def=GC.fst(93,28-93,81); use=GC.fst(247,2-247,7)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
Prims.unit)
(HasType @x8
GC.gc_state)

;; def=GC.fst(197,23-197,32); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(197,23-197,32); use=GC.fst(247,2-247,7)
(GC.gc_inv @x6)
)


;; def=GC.fst(198,23-200,49); use=GC.fst(247,2-247,7)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
GC.mem_addr)

;; def=GC.fst(199,29-199,38); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(199,29-199,38); use=GC.fst(247,2-247,7)
(GC.trigger @x9)
)
)

;; def=GC.fst(200,30-200,48); use=GC.fst(247,2-247,7)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x9)
GC.Gray@tok))
)
 

:pattern ((GC.trigger @x9))
:qid @query.10))


;; def=GC.fst(201,28-206,87); use=GC.fst(247,2-247,7)
(exists ((@x9 Term) (@x10 Term))
 (! (and (HasType @x9
GC.color_map)
(HasType @x10
GC.abs_map)

;; def=GC.fst(201,41-201,75); use=GC.fst(247,2-247,7)
(= @x8
(GC.Mkgc_state @x10
@x9
(GC.__proj__Mkgc_state__item__abs_fields @x6)
(GC.__proj__Mkgc_state__item__fields @x6)))


;; def=GC.fst(202,27-202,42); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(202,27-202,42); use=GC.fst(247,2-247,7)
(GC.mutator_inv @x8)
)


;; def=GC.fst(203,27-206,86); use=GC.fst(247,2-247,7)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
GC.mem_addr)

;; def=GC.fst(204,33-204,42); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(204,33-204,42); use=GC.fst(247,2-247,7)
(GC.trigger @x11)
)
)

;; def=GC.fst(205,34-206,85); use=GC.fst(247,2-247,7)
(and 
;; def=GC.fst(205,34-205,72); use=GC.fst(247,2-247,7)
(implies 
;; def=GC.fst(205,35-205,51); use=GC.fst(247,2-247,7)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x11)
GC.Black@tok)


;; def=GC.fst(205,56-205,71); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(205,56-205,71); use=GC.fst(247,2-247,7)
(GC.ptr_lifts @x8
@x11)
)
)


;; def=GC.fst(206,37-206,85); use=GC.fst(247,2-247,7)
(implies 
;; def=GC.fst(206,38-206,53); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(206,38-206,53); use=GC.fst(247,2-247,7)
(GC.ptr_lifts @x8
@x11)
)


;; def=GC.fst(206,58-206,84); use=GC.fst(247,2-247,7)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x6)
@x11)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x8)
@x11))
)
)
)
 

:pattern ((GC.trigger @x11))
:qid @query.12))
)
 
;;no pats
:qid @query.11))
)

;; def=GC.fst(93,73-93,80); use=GC.fst(247,2-247,7)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(247,2-247,7)
(ApplyTT (ApplyTT @x1
@x7)
@x8)
)
)
 
;;no pats
:qid @query.9))
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(244,2-247,10)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(244,2-247,10)
(ApplyTT (ApplyTT @x4
@x5)
@x6)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x4
@x5)
@x6))
:qid @query.7))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(244,2-247,10)
(and (implies 
;; def=GC.fst(245,5-245,16); use=GC.fst(245,5-245,16)
(= (Prims.op_disEquality Prims.int
@x0
(BoxInt 0))
(BoxBool true))


;; def=GC.fst(93,18-93,81); use=GC.fst(246,7-246,11)
(and 
;; def=GC.fst(152,23-152,32); use=GC.fst(246,7-246,11)
(or label_13

;; def=GC.fst(152,23-152,32); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(246,7-246,11)
(GC.gc_inv @x2)
)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(246,7-246,11)
(or label_14

;; def=GC.fst(152,36-152,47); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(246,7-246,11)
(GC.trigger @x0)
)
)


;; def=GC.fst(152,51-152,67); use=GC.fst(246,7-246,11)
(or label_15

;; def=GC.fst(152,51-152,67); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(246,7-246,11)
(GC.ptr_lifts @x2
@x0)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(246,7-246,11)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
Prims.unit)
(HasType @x6
GC.gc_state)

;; def=GC.fst(152,23-152,32); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(152,23-152,32); use=GC.fst(246,7-246,11)
(GC.gc_inv @x2)
)


;; def=GC.fst(152,36-152,47); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(152,36-152,47); use=GC.fst(246,7-246,11)
(GC.trigger @x0)
)


;; def=GC.fst(152,51-152,67); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(152,51-152,67); use=GC.fst(246,7-246,11)
(GC.ptr_lifts @x2
@x0)
)


;; def=GC.fst(153,28-153,38); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(153,28-153,38); use=GC.fst(246,7-246,11)
(GC.gc_inv @x6)
)


;; def=GC.fst(154,28-157,63); use=GC.fst(246,7-246,11)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
GC.mem_addr)

;; def=GC.fst(155,35-155,44); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(155,35-155,44); use=GC.fst(246,7-246,11)
(GC.trigger @x7)
)


;; def=GC.fst(156,36-156,56); use=GC.fst(246,7-246,11)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x7)
GC.Black@tok))
)

;; def=GC.fst(157,37-157,61); use=GC.fst(246,7-246,11)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x2)
@x7)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x7))
)
 

:pattern ((GC.trigger @x7))
:qid @query.14))


;; def=GC.fst(158,27-158,49); use=GC.fst(246,7-246,11)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x0)
GC.White@tok))


;; def=GC.fst(159,27-159,63); use=GC.fst(246,7-246,11)
(exists ((@x7 Term))
 (! (and (HasType @x7
GC.color_map)

;; def=GC.fst(159,38-159,62); use=GC.fst(246,7-246,11)
(= @x6
(GC.Mkgc_state (GC.__proj__Mkgc_state__item__to_abs @x2)
@x7
(GC.__proj__Mkgc_state__item__abs_fields @x2)
(GC.__proj__Mkgc_state__item__fields @x2)))
)
 
;;no pats
:qid @query.15))
)

;; def=GC.fst(93,73-93,80); use=GC.fst(246,7-246,11)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(246,7-246,11)
(ApplyTT (ApplyTT @x4
@x5)
@x6)
)
)
 
;;no pats
:qid @query.13))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(244,2-247,10)
(not 
;; def=GC.fst(245,5-245,16); use=GC.fst(245,5-245,16)
(= (Prims.op_disEquality Prims.int
@x0
(BoxInt 0))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=GC.fst(244,2-247,10)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=GC.fst(245,2-246,16); use=GC.fst(245,2-246,16)
(= (Prims.op_disEquality Prims.int
@x0
(BoxInt 0))
@x5)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(244,2-247,10)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=GC.fst(88,94-88,100); use=GC.fst(244,2-247,10)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(244,2-247,10)
(ApplyTT (ApplyTT @x4
@x6)
@x2)
)
)
 
;;no pats
:qid @query.17))
)
 
;;no pats
:qid @query.16))
))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
)
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
; QUERY ID: (GC.gc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346, Prims_pretyping_ae567c2fb75be05905677af440075565, b2t_def, bool_inversion, constructor_distinct_GC.Black, constructor_distinct_GC.Gray, constructor_distinct_GC.Unalloc, constructor_distinct_GC.White, equality_tok_GC.Black@tok, equality_tok_GC.Gray@tok, equality_tok_GC.Unalloc@tok, equality_tok_GC.White@tok, equation_GC.abs_map, equation_GC.gc_inv, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.ptr_lifts, equation_GC.trigger, equation_GC.valid, fuel_guarded_inversion_GC.gc_state, function_token_typing_GC.__proj__Mkgc_state__item__to_abs, function_token_typing_Prims.__cache_version_number__, int_inversion, primitive_Prims.op_AmpAmp, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_disEquality, proj_equation_GC.Mkgc_state_abs_fields, proj_equation_GC.Mkgc_state_fields, proj_equation_GC.Mkgc_state_to_abs, projection_inverse_BoxBool_proj_0, projection_inverse_GC.Mkgc_state_abs_fields, projection_inverse_GC.Mkgc_state_fields, projection_inverse_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925, typing_GC.__proj__Mkgc_state__item__to_abs, typing_GC.is_mem_addr, typing_GC.mem_lo, typing_GC.valid

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let gc


; <Start encoding let gc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.gc (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.gc@tok () Term)

; </end encoding let gc>


; encoding sigelt let try_alloc_invariant


; <Start encoding let try_alloc_invariant>

(declare-fun GC.try_alloc_invariant (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;root: mem_addr -> abs: abs_node -> gc: gc_state -> gc': gc_state -> Prims.logical
(declare-fun Tm_arrow_293a326f4e9fa16e59618420d41a582c () Term)
(declare-fun GC.try_alloc_invariant@tok () Term)





; </end encoding let try_alloc_invariant>


; encoding sigelt val GC.alloc


; <Skipped val GC.alloc/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name GC.try_alloc_invariant; Namespace GC
(assert (! 
;; def=GC.fst(249,5-249,24); use=GC.fst(249,5-249,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
(GC.abs_node Dummy_value))
(HasType @x2
GC.gc_state)
(HasType @x3
GC.gc_state))
(HasType (GC.try_alloc_invariant @x0
@x1
@x2
@x3)
Prims.logical))
 

:pattern ((GC.try_alloc_invariant @x0
@x1
@x2
@x3))
:qid typing_GC.try_alloc_invariant))

:named typing_GC.try_alloc_invariant))
;;;;;;;;;;;;;;;;Equation for GC.try_alloc_invariant
;;; Fact-ids: Name GC.try_alloc_invariant; Namespace GC
(assert (! 
;; def=GC.fst(249,5-249,24); use=GC.fst(249,5-249,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (GC.try_alloc_invariant @x0
@x1
@x2
@x3))

;; def=GC.fst(250,5-256,47); use=GC.fst(250,5-256,47)
(and 
;; def=GC.fst(250,5-250,59); use=GC.fst(250,5-250,59)
(implies 
;; def=GC.fst(250,6-250,15); use=GC.fst(250,6-250,15)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(250,20-250,58); use=GC.fst(250,20-250,58)
(Valid 
;; def=GC.fst(250,20-250,58); use=GC.fst(250,20-250,58)
(GC.ptr_lifts_to @x3
@x0
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x2)
@x0))
)
)


;; def=GC.fst(251,5-251,35); use=GC.fst(251,5-251,35)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x1
GC.F1@tok))
@x1)


;; def=GC.fst(252,5-252,35); use=GC.fst(252,5-252,35)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x1
GC.F2@tok))
@x1)


;; def=GC.fst(253,5-256,47); use=GC.fst(253,5-256,47)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.mem_addr)

;; def=GC.fst(254,25-254,34); use=GC.fst(254,25-254,34)
(Valid 
;; def=GC.fst(254,25-254,34); use=GC.fst(254,25-254,34)
(GC.trigger @x4)
)


;; def=GC.fst(255,27-255,41); use=GC.fst(255,27-255,41)
(Valid 
;; def=GC.fst(255,27-255,41); use=GC.fst(255,27-255,41)
(GC.ptr_lifts @x2
@x4)
)
)

;; def=GC.fst(256,26-256,45); use=GC.fst(256,26-256,45)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x4)
@x1))
)
 

:pattern ((GC.trigger @x4))
:qid equation_GC.try_alloc_invariant.1))
)
)
 

:pattern ((GC.try_alloc_invariant @x0
@x1
@x2
@x3))
:qid equation_GC.try_alloc_invariant))

:named equation_GC.try_alloc_invariant))
;;;;;;;;;;;;;;;;Prop-typing for GC.try_alloc_invariant
;;; Fact-ids: Name GC.try_alloc_invariant; Namespace GC
(assert (! 
;; def=GC.fst(249,5-249,24); use=GC.fst(249,5-249,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
(GC.abs_node Dummy_value))
(HasType @x2
GC.gc_state)
(HasType @x3
GC.gc_state))
(Valid (Prims.subtype_of (GC.try_alloc_invariant @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (GC.try_alloc_invariant @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_GC.try_alloc_invariant))

:named defn_equation_GC.try_alloc_invariant))
(push) ;; push{2

; Starting query at GC.fst(266,24-301,34)

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun GC.alloc (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun GC.alloc@tok () Term)
(declare-fun label_51 () Bool)
(declare-fun label_50 () Bool)
(declare-fun label_49 () Bool)
(declare-fun label_48 () Bool)
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




;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
GC.upd_map@tok))
:named @kick_partial_app_2e63e359d2270bb84fc5e0cff78bf752))
































(declare-fun Non_total_Tm_arrow_0ee502242a32b24a6ce567a595890e58 () Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! (HasType Non_total_Tm_arrow_0ee502242a32b24a6ce567a595890e58
Tm_type)
:named non_total_function_typing_Non_total_Tm_arrow_0ee502242a32b24a6ce567a595890e58))




















; Encoding query formula : forall (root: GC.mem_addr) (abs: GC.abs_node).
;   (forall (ptr: GC.mem_addr) (abs: GC.abs_node).
;       (*  - Could not prove post-condition
; *)
;       forall (p: FStar.Pervasives.st_post_h GC.gc_state Prims.int) (h: GC.gc_state).
;         abs <> GC.no_abs /\ GC.trigger ptr /\
;         (forall (i: GC.mem_addr). GC.trigger i /\ GC.ptr_lifts h i ==> h.to_abs i <> abs) /\
;         h.abs_fields (abs, GC.F1) = abs /\ h.abs_fields (abs, GC.F2) = abs /\ GC.mutator_inv h /\
;         (forall (a: Prims.int) (gc': GC.gc_state).
;             abs <> GC.no_abs /\ GC.trigger ptr /\
;             (forall (i: GC.mem_addr). GC.trigger i /\ GC.ptr_lifts h i ==> h.to_abs i <> abs) /\
;             h.abs_fields (abs, GC.F1) = abs /\ h.abs_fields (abs, GC.F2) = abs /\ GC.mutator_inv h /\
;             (gc'.abs_fields == h.abs_fields) /\ (GC.is_mem_addr a \/ a = GC.mem_hi) /\
;             (GC.is_mem_addr a ==>
;               ~(GC.ptr_lifts h a) /\ GC.ptr_lifts gc' a /\
;               (forall (j: GC.mem_addr). a <> j ==> gc'.to_abs j = h.to_abs j)) /\
;             (a = GC.mem_hi ==> h == gc') /\
;             GC.mutator_inv gc' ==>
;             p a gc') ==>
;         (forall (a: GC.gc_state) (gc': GC.gc_state).
;             h == gc' /\ a == gc' ==>
;             Prims.hasEq GC.color /\
;             (forall (any_result: Type0).
;                 GC.color == any_result ==>
;                 (forall (any_result: Prims.bool).
;                     a.color ptr = GC.Unalloc == any_result ==>
;                     (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.int).
;                         (forall (x: Prims.int) (h: GC.gc_state). {:pattern Prims.guard_free (k x h)}
;                             p x h ==> k x h) ==>
;                         (a.color ptr = GC.Unalloc == true ==>
;                           Prims.hasEq (GC.mem_addr & GC.field) /\
;                           (forall (return_val: Prims.eqtype).
;                               return_val == GC.mem_addr & GC.field ==>
;                               (forall (any_result: (j: GC.mem_addr & GC.field -> GC.mem_addr)).
;                                   GC.upd_map a.fields (ptr, GC.F1) ptr == any_result ==>
;                                   Prims.hasEq (GC.mem_addr & GC.field) /\
;                                   (forall (return_val: Prims.eqtype).
;                                       return_val == GC.mem_addr & GC.field ==>
;                                       (forall (any_result:
;                                           (j: GC.mem_addr & GC.field -> GC.mem_addr)).
;                                           GC.upd_map (GC.upd_map a.fields (ptr, GC.F1) ptr)
;                                             (ptr,
;                                             GC.F2)
;                                             ptr ==
;                                           any_result ==>
;                                           Prims.hasEq GC.mem_addr /\
;                                           (forall (any_result: Type0).
;                                               GC.mem_addr == any_result ==>
;                                               (forall (any_result: (j: GC.mem_addr -> GC.abs_node)).
;                                                   GC.upd_map a.to_abs ptr abs == any_result ==>
;                                                   Prims.hasEq GC.mem_addr /\
;                                                   (forall (any_result: Type0).
;                                                       GC.mem_addr == any_result ==>
;                                                       (forall (any_result:
;                                                           (j: GC.mem_addr -> GC.color)).
;                                                           GC.upd_map a.color ptr GC.White ==
;                                                           any_result ==>
;                                                           (forall (any_result: GC.gc_state).
;                                                               GC.Mkgc_state
;                                                                 (GC.upd_map a.to_abs ptr abs)
;                                                                 (GC.upd_map a.color ptr GC.White)
;                                                                 a.abs_fields
;                                                                 (GC.upd_map (GC.upd_map a.fields
;                                                                         (ptr,
;                                                                         GC.F1)
;                                                                         ptr)
;                                                                     (ptr,
;                                                                     GC.F2)
;                                                                     ptr) ==
;                                                               any_result ==>
;                                                               (forall (a: Prims.unit)
;                                                                   (gc': GC.gc_state).
;                                                                   GC.Mkgc_state
;                                                                     (GC.upd_map a.to_abs ptr abs)
;                                                                     (GC.upd_map a.color ptr GC.White
;                                                                     )
;                                                                     a.abs_fields
;                                                                     (GC.upd_map (GC.upd_map a.fields
;                                                                             (ptr,
;                                                                             GC.F1)
;                                                                             ptr)
;                                                                         (ptr,
;                                                                         GC.F2)
;                                                                         ptr) ==
;                                                                   gc' ==>
;                                                                   k ptr gc'))))))))))) /\
;                         (~(a.color ptr = GC.Unalloc = true) ==>
;                           (forall (b: Prims.bool).
;                               a.color ptr = GC.Unalloc == b ==>
;                               (forall (k: FStar.Pervasives.st_post_h GC.gc_state Prims.int).
;                                   (forall (x: Prims.int) (h: GC.gc_state).
;                                       {:pattern Prims.guard_free (k x h)}
;                                       k x h ==> k x h) ==>
;                                   (ptr + 1 < GC.mem_hi == true ==>
;                                     GC.is_mem_addr (ptr + 1) /\
;                                     (forall (return_val: GC.mem_addr).
;                                         return_val == ptr + 1 ==>
;                                         abs <> GC.no_abs /\ GC.trigger (ptr + 1) /\
;                                         (forall (i: GC.mem_addr).
;                                             GC.trigger i /\ GC.ptr_lifts gc' i ==>
;                                             gc'.to_abs i <> abs) /\
;                                         gc'.abs_fields (abs, GC.F1) = abs /\
;                                         gc'.abs_fields (abs, GC.F2) = abs /\ GC.mutator_inv gc' /\
;                                         (forall (a: Prims.int) (gc': GC.gc_state).
;                                             abs <> GC.no_abs /\ GC.trigger (ptr + 1) /\
;                                             (forall (i: GC.mem_addr).
;                                                 GC.trigger i /\ GC.ptr_lifts gc' i ==>
;                                                 gc'.to_abs i <> abs) /\
;                                             gc'.abs_fields (abs, GC.F1) = abs /\
;                                             gc'.abs_fields (abs, GC.F2) = abs /\ GC.mutator_inv gc' /\
;                                             (gc'.abs_fields == gc'.abs_fields) /\
;                                             (GC.is_mem_addr a \/ a = GC.mem_hi) /\
;                                             (GC.is_mem_addr a ==>
;                                               ~(GC.ptr_lifts gc' a) /\ GC.ptr_lifts gc' a /\
;                                               (forall (j: GC.mem_addr).
;                                                   a <> j ==> gc'.to_abs j = gc'.to_abs j)) /\
;                                             (a = GC.mem_hi ==> gc' == gc') /\
;                                             GC.mutator_inv gc' ==>
;                                             k a gc'))) /\
;                                   (~(ptr + 1 < GC.mem_hi = true) ==>
;                                     (forall (b: Prims.bool).
;                                         ptr + 1 < GC.mem_hi == b ==>
;                                         (forall (any_result: Prims.int).
;                                             any_result == GC.mem_hi ==>
;                                             (forall (return_val: Prims.int).
;                                                 return_val == any_result ==> k return_val gc')))))))
;                     ))))) /\
;   (forall (p: FStar.Pervasives.st_post_h GC.gc_state GC.mem_addr) (h: GC.gc_state).
;       GC.try_alloc_invariant root abs h h /\ abs <> GC.no_abs /\
;       (forall (i: GC.mem_addr). GC.trigger i /\ GC.ptr_lifts h i ==> h.to_abs i <> abs) /\
;       GC.mutator_inv h /\
;       (forall (a: GC.mem_addr) (gc': GC.gc_state).
;           GC.try_alloc_invariant root abs h h /\ abs <> GC.no_abs /\
;           (forall (i: GC.mem_addr). GC.trigger i /\ GC.ptr_lifts h i ==> h.to_abs i <> abs) /\
;           GC.mutator_inv h /\
;           (root <> 0 ==> GC.ptr_lifts_to gc' root (h.to_abs root)) /\ GC.ptr_lifts gc' a /\
;           (gc'.abs_fields == h.abs_fields) /\
;           GC.mutator_inv gc' ==>
;           p a gc') ==>
;       (forall (b: (ptr: GC.mem_addr -> abs: GC.abs_node -> GC.GCMut Prims.int)).
;           (0 < GC.mem_lo ==> GC.is_mem_addr GC.mem_lo) /\
;           (forall (any_result: x: Prims.int{0 < x}).
;               GC.mem_lo == any_result ==>
;               abs <> GC.no_abs /\ GC.trigger GC.mem_lo /\
;               (forall (i: GC.mem_addr). GC.trigger i /\ GC.ptr_lifts h i ==> h.to_abs i <> abs) /\
;               h.abs_fields (abs, GC.F1) = abs /\ h.abs_fields (abs, GC.F2) = abs /\ GC.mutator_inv h /\
;               (forall (a: Prims.int) (gc': GC.gc_state).
;                   abs <> GC.no_abs /\ GC.trigger GC.mem_lo /\
;                   (forall (i: GC.mem_addr). GC.trigger i /\ GC.ptr_lifts h i ==> h.to_abs i <> abs) /\
;                   h.abs_fields (abs, GC.F1) = abs /\ h.abs_fields (abs, GC.F2) = abs /\
;                   GC.mutator_inv h /\
;                   (gc'.abs_fields == h.abs_fields) /\ (GC.is_mem_addr a \/ a = GC.mem_hi) /\
;                   (GC.is_mem_addr a ==>
;                     ~(GC.ptr_lifts h a) /\ GC.ptr_lifts gc' a /\
;                     (forall (j: GC.mem_addr). a <> j ==> gc'.to_abs j = h.to_abs j)) /\
;                   (a = GC.mem_hi ==> h == gc') /\
;                   GC.mutator_inv gc' ==>
;                   (forall (k: FStar.Pervasives.st_post_h GC.gc_state GC.mem_addr).
;                       (forall (x: GC.mem_addr) (h: GC.gc_state). {:pattern Prims.guard_free (k x h)}
;                           p x h ==> k x h) ==>
;                       (a < GC.mem_hi == true ==>
;                         GC.is_mem_addr a /\
;                         (forall (any_result: Prims.int).
;                             any_result == a ==>
;                             (forall (return_val: GC.mem_addr).
;                                 return_val == any_result ==> k return_val gc'))) /\
;                       (~(a < GC.mem_hi = true) ==>
;                         (forall (b: Prims.bool).
;                             a < GC.mem_hi == b ==>
;                             (root <> 0 ==> GC.ptr_lifts gc' root) /\ GC.mutator_inv gc' /\
;                             (forall (a: Prims.unit) (gc': GC.gc_state).
;                                 (root <> 0 ==> GC.ptr_lifts gc' root) /\ GC.mutator_inv gc' /\
;                                 (exists (c: GC.color_map) (a: GC.abs_map).
;                                     gc' == GC.Mkgc_state a c gc'.abs_fields gc'.fields) /\
;                                 (root <> 0 ==> GC.ptr_lifts gc' root) /\
;                                 (forall (i: GC.mem_addr). {:pattern GC.trigger i}
;                                     GC.trigger i ==>
;                                     GC.ptr_lifts gc' i ==> gc'.to_abs i = gc'.to_abs i) /\
;                                 (root <> 0 ==> gc'.to_abs root = gc'.to_abs root) /\
;                                 GC.mutator_inv gc' ==>
;                                 GC.try_alloc_invariant root abs gc' gc' /\ abs <> GC.no_abs /\
;                                 (forall (i: GC.mem_addr).
;                                     GC.trigger i /\ GC.ptr_lifts gc' i ==> gc'.to_abs i <> abs) /\
;                                 GC.mutator_inv gc' /\
;                                 (forall (a: GC.mem_addr) (gc': GC.gc_state).
;                                     GC.try_alloc_invariant root abs gc' gc' /\ abs <> GC.no_abs /\
;                                     (forall (i: GC.mem_addr).
;                                         GC.trigger i /\ GC.ptr_lifts gc' i ==> gc'.to_abs i <> abs) /\
;                                     GC.mutator_inv gc' /\
;                                     (root <> 0 ==> GC.ptr_lifts_to gc' root (gc'.to_abs root)) /\
;                                     GC.ptr_lifts gc' a /\
;                                     (gc'.abs_fields == gc'.abs_fields) /\
;                                     GC.mutator_inv gc' ==>
;                                     k a gc')))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec alloc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel ZFuel))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
GC.mem_addr)
(HasType @x1
(GC.abs_node Dummy_value)))

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(and 
;; def=dummy(0,0-0,0); use=GC.fst(266,24-301,34)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
GC.mem_addr)
(HasType @x3
(GC.abs_node Dummy_value)))

;; def=FStar.Pervasives.fsti(484,2-484,63); use=GC.fst(266,24-301,34)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.st_post_h GC.gc_state
Prims.int))
(HasType @x5
GC.gc_state)

;; def=GC.fst(269,18-269,31); use=GC.fst(282,22-297,21)
(not (= @x3
(GC.no_abs Dummy_value)))


;; def=GC.fst(270,18-270,29); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(270,18-270,29); use=GC.fst(282,22-297,21)
(GC.trigger @x2)
)


;; def=GC.fst(271,18-271,91); use=GC.fst(282,22-297,21)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
GC.mem_addr)

;; def=GC.fst(271,40-271,49); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(271,40-271,49); use=GC.fst(282,22-297,21)
(GC.trigger @x6)
)


;; def=GC.fst(271,53-271,67); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(271,53-271,67); use=GC.fst(282,22-297,21)
(GC.ptr_lifts @x5
@x6)
)
)

;; def=GC.fst(271,72-271,90); use=GC.fst(282,22-297,21)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x5)
@x6)
@x3))
)
 
;;no pats
:qid @query.3))


;; def=GC.fst(272,18-272,47); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x5)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F1@tok))
@x3)


;; def=GC.fst(273,18-273,47); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x5)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F2@tok))
@x3)


;; def=GC.fst(96,35-96,49); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(282,22-297,21)
(GC.mutator_inv @x5)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(282,22-297,21)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (or label_1
(HasType @x6
Prims.int))
(or label_2
(HasType @x7
GC.gc_state))

;; def=GC.fst(269,18-269,31); use=GC.fst(282,22-297,21)
(or label_3

;; def=GC.fst(269,18-269,31); use=GC.fst(282,22-297,21)
(not (= @x3
(GC.no_abs Dummy_value)))
)


;; def=GC.fst(270,18-270,29); use=GC.fst(282,22-297,21)
(or label_4

;; def=GC.fst(270,18-270,29); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(270,18-270,29); use=GC.fst(282,22-297,21)
(GC.trigger @x2)
)
)


;; def=GC.fst(271,18-271,91); use=GC.fst(282,22-297,21)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
GC.mem_addr)

;; def=GC.fst(271,40-271,49); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(271,40-271,49); use=GC.fst(282,22-297,21)
(GC.trigger @x8)
)


;; def=GC.fst(271,53-271,67); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(271,53-271,67); use=GC.fst(282,22-297,21)
(GC.ptr_lifts @x5
@x8)
)
)

;; def=GC.fst(271,72-271,90); use=GC.fst(282,22-297,21)
(or label_5

;; def=GC.fst(271,72-271,90); use=GC.fst(282,22-297,21)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x5)
@x8)
@x3))
)
)
 
;;no pats
:qid @query.5))


;; def=GC.fst(272,18-272,47); use=GC.fst(282,22-297,21)
(or label_6

;; def=GC.fst(272,18-272,47); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x5)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F1@tok))
@x3)
)


;; def=GC.fst(273,18-273,47); use=GC.fst(282,22-297,21)
(or label_7

;; def=GC.fst(273,18-273,47); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x5)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F2@tok))
@x3)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(282,22-297,21)
(or label_8

;; def=GC.fst(96,35-96,49); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(282,22-297,21)
(GC.mutator_inv @x5)
)
)


;; def=GC.fst(275,16-275,47); use=GC.fst(282,22-297,21)
(or label_9

;; def=GC.fst(275,16-275,47); use=GC.fst(282,22-297,21)
(= (GC.__proj__Mkgc_state__item__abs_fields @x7)
(GC.__proj__Mkgc_state__item__abs_fields @x5))
)


;; def=GC.fst(276,19-276,46); use=GC.fst(282,22-297,21)
(or label_10

;; def=GC.fst(276,20-276,33); use=GC.fst(282,22-297,21)
(BoxBool_proj_0 (GC.is_mem_addr @x6))


;; def=GC.fst(276,37-276,45); use=GC.fst(282,22-297,21)
(= @x6
(GC.mem_hi Dummy_value))
)

(implies 
;; def=GC.fst(277,20-277,33); use=GC.fst(282,22-297,21)
(BoxBool_proj_0 (GC.is_mem_addr @x6))


;; def=GC.fst(278,20-280,83); use=GC.fst(282,22-297,21)
(and 
;; def=GC.fst(278,20-278,37); use=GC.fst(282,22-297,21)
(or label_11

;; def=GC.fst(278,20-278,37); use=GC.fst(282,22-297,21)
(not 
;; def=GC.fst(278,21-278,37); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(278,21-278,37); use=GC.fst(282,22-297,21)
(GC.ptr_lifts @x5
@x6)
)
)
)


;; def=GC.fst(279,23-279,38); use=GC.fst(282,22-297,21)
(or label_12

;; def=GC.fst(279,23-279,38); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(279,23-279,38); use=GC.fst(282,22-297,21)
(GC.ptr_lifts @x7
@x6)
)
)


;; def=GC.fst(280,23-280,83); use=GC.fst(282,22-297,21)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
GC.mem_addr)

;; def=GC.fst(280,45-280,51); use=GC.fst(282,22-297,21)
(not (= @x6
@x8))
)

;; def=GC.fst(280,56-280,82); use=GC.fst(282,22-297,21)
(or label_13

;; def=GC.fst(280,56-280,82); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x8)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x5)
@x8))
)
)
 
;;no pats
:qid @query.6))
)
)
(implies 
;; def=GC.fst(281,20-281,28); use=GC.fst(282,22-297,21)
(= @x6
(GC.mem_hi Dummy_value))


;; def=GC.fst(281,33-281,40); use=GC.fst(282,22-297,21)
(or label_14

;; def=GC.fst(281,33-281,40); use=GC.fst(282,22-297,21)
(= @x5
@x7)
)
)

;; def=GC.fst(97,51-97,66); use=GC.fst(282,22-297,21)
(or label_15

;; def=GC.fst(97,51-97,66); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(282,22-297,21)
(GC.mutator_inv @x7)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x4
@x6)
@x7)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x4
@x6)
@x7)
)
)
:qid @query.4))
)

;; def=GC.fst(93,28-93,81); use=GC.fst(283,19-283,22)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
GC.gc_state)
(HasType @x7
GC.gc_state)

;; def=GC.fst(99,73-99,80); use=GC.fst(283,19-283,22)
(= @x5
@x7)


;; def=GC.fst(99,84-99,92); use=GC.fst(283,19-283,22)
(= @x6
@x7)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(282,22-297,21)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,33-34,38)
(or label_16

;; def=Prims.fst(73,23-73,30); use=GC.fst(282,22-297,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(282,22-297,21)
(Prims.hasEq GC.color)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Tm_type)

;; def=Prims.fst(588,31-588,32); use=GC.fst(282,22-297,21)
(= GC.color
@x8)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.bool)

;; def=GC.fst(284,13-284,35); use=GC.fst(284,13-284,35)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x2)
GC.Unalloc@tok)
@x9)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(282,22-297,21)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(FStar.Pervasives.st_post_h GC.gc_state
Prims.int))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(282,22-297,21)
(forall ((@x11 Term) (@x12 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(282,22-297,21)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x4
@x11)
@x12)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(282,22-297,21)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x10
@x11)
@x12)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x10
@x11)
@x12))
:qid @query.11))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(282,22-297,21)
(and (implies 
;; def=GC.fst(284,13-284,35); use=GC.fst(284,13-284,35)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x2)
GC.Unalloc@tok)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(282,22-297,21)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(286,38-286,56)
(or label_17

;; def=Prims.fst(73,23-73,30); use=GC.fst(286,38-286,56)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(286,38-286,56)
(Prims.hasEq (FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
)
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(282,22-297,21)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.eqtype)

;; def=Prims.fst(356,26-356,41); use=GC.fst(282,22-297,21)
(= @x11
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791)

;; def=GC.fst(286,20-286,90); use=GC.fst(286,20-286,90)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F1@tok))
@x2)
@x12)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(282,22-297,21)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(287,38-287,56)
(or label_18

;; def=Prims.fst(73,23-73,30); use=GC.fst(287,38-287,56)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(287,38-287,56)
(Prims.hasEq (FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
)
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(282,22-297,21)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Prims.eqtype)

;; def=Prims.fst(356,26-356,41); use=GC.fst(282,22-297,21)
(= @x13
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Tm_arrow_5d846e8dc8d50e58c30aadcda1836791)

;; def=GC.fst(287,20-287,87); use=GC.fst(287,20-287,87)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F1@tok))
@x2))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F2@tok))
@x2)
@x14)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(282,22-297,21)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(35,17-35,25)
(or label_19

;; def=Prims.fst(73,23-73,30); use=GC.fst(282,22-297,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(282,22-297,21)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=GC.fst(35,17-107,15); use=GC.fst(282,22-297,21)
(= GC.mem_addr
@x15)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346)

;; def=GC.fst(52,2-289,62); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x6))
@x2)
@x3)
@x16)
)

;; def=Prims.fst(459,77-459,89); use=GC.fst(282,22-297,21)
(and 
;; def=Prims.fst(73,23-73,30); use=GC.fst(34,17-34,25)
(or label_20

;; def=Prims.fst(73,23-73,30); use=GC.fst(282,22-297,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=GC.fst(282,22-297,21)
(Prims.hasEq GC.mem_addr)
)
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=GC.fst(34,17-107,15); use=GC.fst(282,22-297,21)
(= GC.mem_addr
@x17)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Tm_arrow_8a489a1ce9a7529b6a3d787337d565d5)

;; def=GC.fst(53,2-290,63); use=GC.fst(282,22-297,21)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x6))
@x2)
GC.White@tok)
@x18)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
GC.gc_state)

;; def=GC.fst(288,20-291,43); use=GC.fst(288,20-291,43)
(= (GC.Mkgc_state (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x6))
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x6))
@x2)
GC.White@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x6)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F1@tok))
@x2))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F2@tok))
@x2))
@x19)
)

;; def=GC.fst(93,28-93,81); use=GC.fst(292,16-292,19)
(forall ((@x20 Term) (@x21 Term))
 (! (implies (and (HasType @x20
Prims.unit)
(HasType @x21
GC.gc_state)

;; def=GC.fst(100,72-100,78); use=GC.fst(292,16-292,19)
(= (GC.Mkgc_state (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
(GC.abs_node Dummy_value))
(GC.__proj__Mkgc_state__item__to_abs @x6))
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
GC.mem_addr)
GC.color)
(GC.__proj__Mkgc_state__item__color @x6))
@x2)
GC.White@tok)
(GC.__proj__Mkgc_state__item__abs_fields @x6)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT GC.upd_map@tok
(FStar.Pervasives.Native.tuple2 GC.mem_addr
GC.field))
GC.mem_addr)
(GC.__proj__Mkgc_state__item__fields @x6))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F1@tok))
@x2))
(FStar.Pervasives.Native.Mktuple2 GC.mem_addr
GC.field
@x2
GC.F2@tok))
@x2))
@x21)
)

;; def=FStar.Pervasives.fsti(463,24-463,34); use=GC.fst(282,22-297,21)
(Valid 
;; def=FStar.Pervasives.fsti(463,24-463,34); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x10
@x2)
@x21)
)
)
 
;;no pats
:qid @query.21))
)
 
;;no pats
:qid @query.20))
)
 
;;no pats
:qid @query.19))
)
 
;;no pats
:qid @query.18))
)
)
 
;;no pats
:qid @query.17))
)
 
;;no pats
:qid @query.16))
)
)
 
;;no pats
:qid @query.15))
)
 
;;no pats
:qid @query.14))
)
)
 
;;no pats
:qid @query.13))
)
 
;;no pats
:qid @query.12))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(282,22-297,21)
(not 
;; def=GC.fst(284,13-284,35); use=GC.fst(284,13-284,35)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x2)
GC.Unalloc@tok)
(BoxBool true))
)


;; def=FStar.Pervasives.fsti(489,2-489,27); use=GC.fst(282,22-297,21)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.bool)

;; def=GC.fst(284,13-297,21); use=GC.fst(284,13-297,21)
(= (Prims.op_Equality GC.color
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__color@tok
@x6)
@x2)
GC.Unalloc@tok)
@x11)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(282,22-297,21)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(FStar.Pervasives.st_post_h GC.gc_state
Prims.int))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(282,22-297,21)
(forall ((@x13 Term) (@x14 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(282,22-297,21)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x10
@x13)
@x14)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(282,22-297,21)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x12
@x13)
@x14)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x12
@x13)
@x14))
:qid @query.24))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(282,22-297,21)
(and (implies 
;; def=GC.fst(295,18-295,34); use=GC.fst(295,18-295,34)
(= (Prims.op_LessThan (Prims.op_Addition @x2
(BoxInt 1))
(GC.mem_hi Dummy_value))
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(282,22-297,21)
(and 
;; def=GC.fst(33,23-33,36); use=GC.fst(296,32-296,41)
(or label_21

;; def=GC.fst(33,23-33,36); use=GC.fst(296,32-296,41)
(BoxBool_proj_0 (GC.is_mem_addr (Prims.op_Addition @x2
(BoxInt 1))))
)


;; def=Prims.fst(356,2-356,58); use=GC.fst(282,22-297,21)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
GC.mem_addr)

;; def=Prims.fst(356,26-356,41); use=GC.fst(282,22-297,21)
(= @x13
(Prims.op_Addition @x2
(BoxInt 1)))
)

;; def=GC.fst(93,18-93,81); use=GC.fst(296,15-296,31)
(and 
;; def=GC.fst(269,18-269,31); use=GC.fst(296,15-296,31)
(or label_22

;; def=GC.fst(269,18-269,31); use=GC.fst(296,15-296,31)
(not (= @x3
(GC.no_abs Dummy_value)))
)


;; def=GC.fst(270,18-270,29); use=GC.fst(296,15-296,31)
(or label_23

;; def=GC.fst(270,18-270,29); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(270,18-270,29); use=GC.fst(296,15-296,31)
(GC.trigger (Prims.op_Addition @x2
(BoxInt 1)))
)
)


;; def=GC.fst(271,18-271,91); use=GC.fst(296,15-296,31)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
GC.mem_addr)

;; def=GC.fst(271,40-271,49); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(271,40-271,49); use=GC.fst(296,15-296,31)
(GC.trigger @x14)
)


;; def=GC.fst(271,53-271,67); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(271,53-271,67); use=GC.fst(296,15-296,31)
(GC.ptr_lifts @x7
@x14)
)
)

;; def=GC.fst(271,72-271,90); use=GC.fst(296,15-296,31)
(or label_24

;; def=GC.fst(271,72-271,90); use=GC.fst(296,15-296,31)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x14)
@x3))
)
)
 
;;no pats
:qid @query.26))


;; def=GC.fst(272,18-272,47); use=GC.fst(296,15-296,31)
(or label_25

;; def=GC.fst(272,18-272,47); use=GC.fst(296,15-296,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x7)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F1@tok))
@x3)
)


;; def=GC.fst(273,18-273,47); use=GC.fst(296,15-296,31)
(or label_26

;; def=GC.fst(273,18-273,47); use=GC.fst(296,15-296,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x7)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F2@tok))
@x3)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(296,15-296,31)
(or label_27

;; def=GC.fst(96,35-96,49); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(296,15-296,31)
(GC.mutator_inv @x7)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(296,15-296,31)
(forall ((@x14 Term) (@x15 Term))
 (! (implies (and (HasType @x14
Prims.int)
(HasType @x15
GC.gc_state)

;; def=GC.fst(269,18-269,31); use=GC.fst(296,15-296,31)
(not (= @x3
(GC.no_abs Dummy_value)))


;; def=GC.fst(270,18-270,29); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(270,18-270,29); use=GC.fst(296,15-296,31)
(GC.trigger (Prims.op_Addition @x2
(BoxInt 1)))
)


;; def=GC.fst(271,18-271,91); use=GC.fst(296,15-296,31)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
GC.mem_addr)

;; def=GC.fst(271,40-271,49); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(271,40-271,49); use=GC.fst(296,15-296,31)
(GC.trigger @x16)
)


;; def=GC.fst(271,53-271,67); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(271,53-271,67); use=GC.fst(296,15-296,31)
(GC.ptr_lifts @x7
@x16)
)
)

;; def=GC.fst(271,72-271,90); use=GC.fst(296,15-296,31)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x16)
@x3))
)
 
;;no pats
:qid @query.28))


;; def=GC.fst(272,18-272,47); use=GC.fst(296,15-296,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x7)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F1@tok))
@x3)


;; def=GC.fst(273,18-273,47); use=GC.fst(296,15-296,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x7)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x3
GC.F2@tok))
@x3)


;; def=GC.fst(96,35-96,49); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(296,15-296,31)
(GC.mutator_inv @x7)
)


;; def=GC.fst(275,16-275,47); use=GC.fst(296,15-296,31)
(= (GC.__proj__Mkgc_state__item__abs_fields @x15)
(GC.__proj__Mkgc_state__item__abs_fields @x7))


;; def=GC.fst(276,19-276,46); use=GC.fst(296,15-296,31)
(or 
;; def=GC.fst(276,20-276,33); use=GC.fst(296,15-296,31)
(BoxBool_proj_0 (GC.is_mem_addr @x14))


;; def=GC.fst(276,37-276,45); use=GC.fst(296,15-296,31)
(= @x14
(GC.mem_hi Dummy_value))
)


;; def=GC.fst(277,19-280,84); use=GC.fst(296,15-296,31)
(implies 
;; def=GC.fst(277,20-277,33); use=GC.fst(296,15-296,31)
(BoxBool_proj_0 (GC.is_mem_addr @x14))


;; def=GC.fst(278,20-280,83); use=GC.fst(296,15-296,31)
(and 
;; def=GC.fst(278,20-278,37); use=GC.fst(296,15-296,31)
(not 
;; def=GC.fst(278,21-278,37); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(278,21-278,37); use=GC.fst(296,15-296,31)
(GC.ptr_lifts @x7
@x14)
)
)


;; def=GC.fst(279,23-279,38); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(279,23-279,38); use=GC.fst(296,15-296,31)
(GC.ptr_lifts @x15
@x14)
)


;; def=GC.fst(280,23-280,83); use=GC.fst(296,15-296,31)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
GC.mem_addr)

;; def=GC.fst(280,45-280,51); use=GC.fst(296,15-296,31)
(not (= @x14
@x16))
)

;; def=GC.fst(280,56-280,82); use=GC.fst(296,15-296,31)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x15)
@x16)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x16))
)
 
;;no pats
:qid @query.29))
)
)


;; def=GC.fst(281,19-281,41); use=GC.fst(296,15-296,31)
(implies 
;; def=GC.fst(281,20-281,28); use=GC.fst(296,15-296,31)
(= @x14
(GC.mem_hi Dummy_value))


;; def=GC.fst(281,33-281,40); use=GC.fst(296,15-296,31)
(= @x7
@x15)
)


;; def=GC.fst(97,51-97,66); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(296,15-296,31)
(GC.mutator_inv @x15)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(296,15-296,31)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(296,15-296,31)
(ApplyTT (ApplyTT @x12
@x14)
@x15)
)
)
 
;;no pats
:qid @query.27))
)
)
 
;;no pats
:qid @query.25))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(282,22-297,21)
(not 
;; def=GC.fst(295,18-295,34); use=GC.fst(295,18-295,34)
(= (Prims.op_LessThan (Prims.op_Addition @x2
(BoxInt 1))
(GC.mem_hi Dummy_value))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=GC.fst(282,22-297,21)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Prims.bool)

;; def=GC.fst(295,18-297,21); use=GC.fst(295,18-297,21)
(= (Prims.op_LessThan (Prims.op_Addition @x2
(BoxInt 1))
(GC.mem_hi Dummy_value))
@x13)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(282,22-297,21)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Prims.int)

;; def=GC.fst(267,69-297,21); use=GC.fst(282,22-297,21)
(= @x14
(GC.mem_hi Dummy_value))
)

;; def=Prims.fst(356,2-356,58); use=GC.fst(282,22-297,21)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Prims.int)

;; def=Prims.fst(356,26-356,41); use=GC.fst(282,22-297,21)
(= @x15
@x14)
)

;; def=GC.fst(88,94-88,100); use=GC.fst(282,22-297,21)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(282,22-297,21)
(ApplyTT (ApplyTT @x12
@x15)
@x7)
)
)
 
;;no pats
:qid @query.32))
)
 
;;no pats
:qid @query.31))
)
 
;;no pats
:qid @query.30))
))
)
 
;;no pats
:qid @query.23))
)
 
;;no pats
:qid @query.22))
))
)
 
;;no pats
:qid @query.10))
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.8))
)
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))


;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.st_post_h GC.gc_state
GC.mem_addr))
(HasType @x3
GC.gc_state)

;; def=GC.fst(260,14-260,48); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(260,14-260,48); use=GC.fst(266,24-301,34)
(GC.try_alloc_invariant @x0
@x1
@x3
@x3)
)


;; def=GC.fst(261,17-261,30); use=GC.fst(266,24-301,34)
(not (= @x1
(GC.no_abs Dummy_value)))


;; def=GC.fst(262,17-262,90); use=GC.fst(266,24-301,34)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
GC.mem_addr)

;; def=GC.fst(262,39-262,48); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(262,39-262,48); use=GC.fst(266,24-301,34)
(GC.trigger @x4)
)


;; def=GC.fst(262,52-262,66); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(262,52-262,66); use=GC.fst(266,24-301,34)
(GC.ptr_lifts @x3
@x4)
)
)

;; def=GC.fst(262,71-262,89); use=GC.fst(266,24-301,34)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x4)
@x1))
)
 
;;no pats
:qid @query.34))


;; def=GC.fst(96,35-96,49); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(266,24-301,34)
(GC.mutator_inv @x3)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(266,24-301,34)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_28
(HasType @x4
GC.mem_addr))
(or label_29
(HasType @x5
GC.gc_state))

;; def=GC.fst(260,14-260,48); use=GC.fst(266,24-301,34)
(or label_30

;; def=GC.fst(260,14-260,48); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(260,14-260,48); use=GC.fst(266,24-301,34)
(GC.try_alloc_invariant @x0
@x1
@x3
@x3)
)
)


;; def=GC.fst(261,17-261,30); use=GC.fst(266,24-301,34)
(or label_31

;; def=GC.fst(261,17-261,30); use=GC.fst(266,24-301,34)
(not (= @x1
(GC.no_abs Dummy_value)))
)


;; def=GC.fst(262,17-262,90); use=GC.fst(266,24-301,34)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
GC.mem_addr)

;; def=GC.fst(262,39-262,48); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(262,39-262,48); use=GC.fst(266,24-301,34)
(GC.trigger @x6)
)


;; def=GC.fst(262,52-262,66); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(262,52-262,66); use=GC.fst(266,24-301,34)
(GC.ptr_lifts @x3
@x6)
)
)

;; def=GC.fst(262,71-262,89); use=GC.fst(266,24-301,34)
(or label_32

;; def=GC.fst(262,71-262,89); use=GC.fst(266,24-301,34)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x6)
@x1))
)
)
 
;;no pats
:qid @query.36))


;; def=GC.fst(96,35-96,49); use=GC.fst(266,24-301,34)
(or label_33

;; def=GC.fst(96,35-96,49); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(266,24-301,34)
(GC.mutator_inv @x3)
)
)

(implies 
;; def=GC.fst(263,31-263,40); use=GC.fst(266,24-301,34)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(263,45-263,83); use=GC.fst(266,24-301,34)
(or label_34

;; def=GC.fst(263,45-263,83); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(263,45-263,83); use=GC.fst(266,24-301,34)
(GC.ptr_lifts_to @x5
@x0
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x0))
)
)
)

;; def=GC.fst(264,31-264,48); use=GC.fst(266,24-301,34)
(or label_35

;; def=GC.fst(264,31-264,48); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(264,31-264,48); use=GC.fst(266,24-301,34)
(GC.ptr_lifts @x5
@x4)
)
)


;; def=GC.fst(265,31-265,62); use=GC.fst(266,24-301,34)
(or label_36

;; def=GC.fst(265,31-265,62); use=GC.fst(266,24-301,34)
(= (GC.__proj__Mkgc_state__item__abs_fields @x5)
(GC.__proj__Mkgc_state__item__abs_fields @x3))
)


;; def=GC.fst(97,51-97,66); use=GC.fst(266,24-301,34)
(or label_37

;; def=GC.fst(97,51-97,66); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(266,24-301,34)
(GC.mutator_inv @x5)
)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(266,24-301,34)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=GC.fst(93,73-93,80); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(266,24-301,34)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.35))
)

;; def=FStar.Pervasives.fsti(489,2-489,27); use=GC.fst(266,24-301,34)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Non_total_Tm_arrow_0ee502242a32b24a6ce567a595890e58)

;; def=Prims.fst(459,77-459,89); use=GC.fst(266,24-301,34)
(and (implies 
;; def=GC.fst(20,26-20,31); use=GC.fst(298,31-298,37)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (GC.mem_lo Dummy_value)))


;; def=GC.fst(33,23-33,36); use=GC.fst(298,31-298,37)
(or label_38

;; def=GC.fst(33,23-33,36); use=GC.fst(298,31-298,37)
(BoxBool_proj_0 (GC.is_mem_addr (GC.mem_lo Dummy_value)))
)
)

;; def=Prims.fst(451,66-451,102); use=GC.fst(266,24-301,34)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_refine_6faaaf327b122a7307a5bdd1f21b4925)

;; def=GC.fst(267,31-298,37); use=GC.fst(267,31-298,37)
(= (GC.mem_lo Dummy_value)
@x5)
)

;; def=GC.fst(93,18-93,81); use=GC.fst(298,14-298,30)
(and 
;; def=GC.fst(269,18-269,31); use=GC.fst(298,14-298,30)
(or label_39

;; def=GC.fst(269,18-269,31); use=GC.fst(298,14-298,30)
(not (= @x1
(GC.no_abs Dummy_value)))
)


;; def=GC.fst(270,18-270,29); use=GC.fst(298,14-298,30)
(or label_40

;; def=GC.fst(270,18-270,29); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(270,18-270,29); use=GC.fst(298,14-298,30)
(GC.trigger (GC.mem_lo Dummy_value))
)
)


;; def=GC.fst(271,18-271,91); use=GC.fst(298,14-298,30)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
GC.mem_addr)

;; def=GC.fst(271,40-271,49); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(271,40-271,49); use=GC.fst(298,14-298,30)
(GC.trigger @x6)
)


;; def=GC.fst(271,53-271,67); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(271,53-271,67); use=GC.fst(298,14-298,30)
(GC.ptr_lifts @x3
@x6)
)
)

;; def=GC.fst(271,72-271,90); use=GC.fst(298,14-298,30)
(or label_41

;; def=GC.fst(271,72-271,90); use=GC.fst(298,14-298,30)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x6)
@x1))
)
)
 
;;no pats
:qid @query.39))


;; def=GC.fst(272,18-272,47); use=GC.fst(298,14-298,30)
(or label_42

;; def=GC.fst(272,18-272,47); use=GC.fst(298,14-298,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x1
GC.F1@tok))
@x1)
)


;; def=GC.fst(273,18-273,47); use=GC.fst(298,14-298,30)
(or label_43

;; def=GC.fst(273,18-273,47); use=GC.fst(298,14-298,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x1
GC.F2@tok))
@x1)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(298,14-298,30)
(or label_44

;; def=GC.fst(96,35-96,49); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(298,14-298,30)
(GC.mutator_inv @x3)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(298,14-298,30)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
Prims.int)
(HasType @x7
GC.gc_state)

;; def=GC.fst(269,18-269,31); use=GC.fst(298,14-298,30)
(not (= @x1
(GC.no_abs Dummy_value)))


;; def=GC.fst(270,18-270,29); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(270,18-270,29); use=GC.fst(298,14-298,30)
(GC.trigger (GC.mem_lo Dummy_value))
)


;; def=GC.fst(271,18-271,91); use=GC.fst(298,14-298,30)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
GC.mem_addr)

;; def=GC.fst(271,40-271,49); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(271,40-271,49); use=GC.fst(298,14-298,30)
(GC.trigger @x8)
)


;; def=GC.fst(271,53-271,67); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(271,53-271,67); use=GC.fst(298,14-298,30)
(GC.ptr_lifts @x3
@x8)
)
)

;; def=GC.fst(271,72-271,90); use=GC.fst(298,14-298,30)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x8)
@x1))
)
 
;;no pats
:qid @query.41))


;; def=GC.fst(272,18-272,47); use=GC.fst(298,14-298,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x1
GC.F1@tok))
@x1)


;; def=GC.fst(273,18-273,47); use=GC.fst(298,14-298,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__abs_fields@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 (GC.abs_node Dummy_value)
GC.field
@x1
GC.F2@tok))
@x1)


;; def=GC.fst(96,35-96,49); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(298,14-298,30)
(GC.mutator_inv @x3)
)


;; def=GC.fst(275,16-275,47); use=GC.fst(298,14-298,30)
(= (GC.__proj__Mkgc_state__item__abs_fields @x7)
(GC.__proj__Mkgc_state__item__abs_fields @x3))


;; def=GC.fst(276,19-276,46); use=GC.fst(298,14-298,30)
(or 
;; def=GC.fst(276,20-276,33); use=GC.fst(298,14-298,30)
(BoxBool_proj_0 (GC.is_mem_addr @x6))


;; def=GC.fst(276,37-276,45); use=GC.fst(298,14-298,30)
(= @x6
(GC.mem_hi Dummy_value))
)


;; def=GC.fst(277,19-280,84); use=GC.fst(298,14-298,30)
(implies 
;; def=GC.fst(277,20-277,33); use=GC.fst(298,14-298,30)
(BoxBool_proj_0 (GC.is_mem_addr @x6))


;; def=GC.fst(278,20-280,83); use=GC.fst(298,14-298,30)
(and 
;; def=GC.fst(278,20-278,37); use=GC.fst(298,14-298,30)
(not 
;; def=GC.fst(278,21-278,37); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(278,21-278,37); use=GC.fst(298,14-298,30)
(GC.ptr_lifts @x3
@x6)
)
)


;; def=GC.fst(279,23-279,38); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(279,23-279,38); use=GC.fst(298,14-298,30)
(GC.ptr_lifts @x7
@x6)
)


;; def=GC.fst(280,23-280,83); use=GC.fst(298,14-298,30)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
GC.mem_addr)

;; def=GC.fst(280,45-280,51); use=GC.fst(298,14-298,30)
(not (= @x6
@x8))
)

;; def=GC.fst(280,56-280,82); use=GC.fst(298,14-298,30)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x8)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x3)
@x8))
)
 
;;no pats
:qid @query.42))
)
)


;; def=GC.fst(281,19-281,41); use=GC.fst(298,14-298,30)
(implies 
;; def=GC.fst(281,20-281,28); use=GC.fst(298,14-298,30)
(= @x6
(GC.mem_hi Dummy_value))


;; def=GC.fst(281,33-281,40); use=GC.fst(298,14-298,30)
(= @x3
@x7)
)


;; def=GC.fst(97,51-97,66); use=GC.fst(298,14-298,30)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(298,14-298,30)
(GC.mutator_inv @x7)
)
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(266,24-301,34)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(FStar.Pervasives.st_post_h GC.gc_state
GC.mem_addr))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=GC.fst(266,24-301,34)
(forall ((@x9 Term) (@x10 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(266,24-301,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=GC.fst(266,24-301,34)
(ApplyTT (ApplyTT @x2
@x9)
@x10)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(266,24-301,34)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=GC.fst(266,24-301,34)
(ApplyTT (ApplyTT @x8
@x9)
@x10)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x8
@x9)
@x10))
:qid @query.44))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=GC.fst(266,24-301,34)
(and (implies 
;; def=GC.fst(299,7-299,19); use=GC.fst(299,7-299,19)
(= (Prims.op_LessThan @x6
(GC.mem_hi Dummy_value))
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=GC.fst(266,24-301,34)
(and 
;; def=GC.fst(33,23-33,36); use=GC.fst(300,9-300,12)
(or label_45

;; def=GC.fst(33,23-33,36); use=GC.fst(300,9-300,12)
(BoxBool_proj_0 (GC.is_mem_addr @x6))
)


;; def=Prims.fst(451,66-451,102); use=GC.fst(266,24-301,34)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.int)

;; def=GC.fst(258,50-298,11); use=GC.fst(266,24-301,34)
(= @x9
@x6)
)

;; def=Prims.fst(356,2-356,58); use=GC.fst(266,24-301,34)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
GC.mem_addr)

;; def=Prims.fst(356,26-356,41); use=GC.fst(266,24-301,34)
(= @x10
@x9)
)

;; def=GC.fst(88,94-88,100); use=GC.fst(266,24-301,34)
(Valid 
;; def=GC.fst(88,94-88,100); use=GC.fst(266,24-301,34)
(ApplyTT (ApplyTT @x8
@x10)
@x7)
)
)
 
;;no pats
:qid @query.46))
)
 
;;no pats
:qid @query.45))
)
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=GC.fst(266,24-301,34)
(not 
;; def=GC.fst(299,7-299,19); use=GC.fst(299,7-299,19)
(= (Prims.op_LessThan @x6
(GC.mem_hi Dummy_value))
(BoxBool true))
)


;; def=FStar.Pervasives.fsti(489,2-489,27); use=GC.fst(266,24-301,34)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.bool)

;; def=GC.fst(299,7-301,34); use=GC.fst(299,7-301,34)
(= (Prims.op_LessThan @x6
(GC.mem_hi Dummy_value))
@x9)
)

;; def=GC.fst(93,18-93,81); use=GC.fst(301,10-301,12)
(and (implies 
;; def=GC.fst(237,23-237,30); use=GC.fst(301,10-301,12)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(237,35-237,52); use=GC.fst(301,10-301,12)
(or label_46

;; def=GC.fst(237,35-237,52); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(237,35-237,52); use=GC.fst(301,10-301,12)
(GC.ptr_lifts @x7
@x0)
)
)
)

;; def=GC.fst(96,35-96,49); use=GC.fst(301,10-301,12)
(or label_47

;; def=GC.fst(96,35-96,49); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(301,10-301,12)
(GC.mutator_inv @x7)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(301,10-301,12)
(forall ((@x10 Term) (@x11 Term))
 (! (implies (and (HasType @x10
Prims.unit)
(HasType @x11
GC.gc_state)

;; def=GC.fst(237,23-237,52); use=GC.fst(301,10-301,12)
(implies 
;; def=GC.fst(237,23-237,30); use=GC.fst(301,10-301,12)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(237,35-237,52); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(237,35-237,52); use=GC.fst(301,10-301,12)
(GC.ptr_lifts @x7
@x0)
)
)


;; def=GC.fst(96,35-96,49); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(301,10-301,12)
(GC.mutator_inv @x7)
)


;; def=GC.fst(238,28-238,76); use=GC.fst(301,10-301,12)
(exists ((@x12 Term) (@x13 Term))
 (! (and (HasType @x12
GC.color_map)
(HasType @x13
GC.abs_map)

;; def=GC.fst(238,41-238,75); use=GC.fst(301,10-301,12)
(= @x11
(GC.Mkgc_state @x13
@x12
(GC.__proj__Mkgc_state__item__abs_fields @x7)
(GC.__proj__Mkgc_state__item__fields @x7)))
)
 
;;no pats
:qid @query.49))


;; def=GC.fst(239,23-239,55); use=GC.fst(301,10-301,12)
(implies 
;; def=GC.fst(239,24-239,31); use=GC.fst(301,10-301,12)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(239,36-239,54); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(239,36-239,54); use=GC.fst(301,10-301,12)
(GC.ptr_lifts @x11
@x0)
)
)


;; def=GC.fst(240,23-241,95); use=GC.fst(301,10-301,12)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
GC.mem_addr)

;; def=GC.fst(241,32-241,41); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(241,32-241,41); use=GC.fst(301,10-301,12)
(GC.trigger @x12)
)


;; def=GC.fst(241,47-241,62); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(241,47-241,62); use=GC.fst(301,10-301,12)
(GC.ptr_lifts @x11
@x12)
)
)

;; def=GC.fst(241,67-241,93); use=GC.fst(301,10-301,12)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x12)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x11)
@x12))
)
 

:pattern ((GC.trigger @x12))
:qid @query.50))


;; def=GC.fst(242,23-242,71); use=GC.fst(301,10-301,12)
(implies 
;; def=GC.fst(242,24-242,33); use=GC.fst(301,10-301,12)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(242,38-242,70); use=GC.fst(301,10-301,12)
(= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x7)
@x0)
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x11)
@x0))
)


;; def=GC.fst(97,51-97,66); use=GC.fst(301,10-301,12)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(301,10-301,12)
(GC.mutator_inv @x11)
)
)

;; def=GC.fst(93,18-93,81); use=GC.fst(301,19-301,24)
(and 
;; def=GC.fst(260,14-260,48); use=GC.fst(301,19-301,24)
(or label_48

;; def=GC.fst(260,14-260,48); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(260,14-260,48); use=GC.fst(301,19-301,24)
(GC.try_alloc_invariant @x0
@x1
@x11
@x11)
)
)


;; def=GC.fst(261,17-261,30); use=GC.fst(301,19-301,24)
(or label_49

;; def=GC.fst(261,17-261,30); use=GC.fst(301,19-301,24)
(not (= @x1
(GC.no_abs Dummy_value)))
)


;; def=GC.fst(262,17-262,90); use=GC.fst(301,19-301,24)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
GC.mem_addr)

;; def=GC.fst(262,39-262,48); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(262,39-262,48); use=GC.fst(301,19-301,24)
(GC.trigger @x12)
)


;; def=GC.fst(262,52-262,66); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(262,52-262,66); use=GC.fst(301,19-301,24)
(GC.ptr_lifts @x11
@x12)
)
)

;; def=GC.fst(262,71-262,89); use=GC.fst(301,19-301,24)
(or label_50

;; def=GC.fst(262,71-262,89); use=GC.fst(301,19-301,24)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x11)
@x12)
@x1))
)
)
 
;;no pats
:qid @query.51))


;; def=GC.fst(96,35-96,49); use=GC.fst(301,19-301,24)
(or label_51

;; def=GC.fst(96,35-96,49); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(301,19-301,24)
(GC.mutator_inv @x11)
)
)


;; def=GC.fst(93,28-93,81); use=GC.fst(301,19-301,24)
(forall ((@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x12
GC.mem_addr)
(HasType @x13
GC.gc_state)

;; def=GC.fst(260,14-260,48); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(260,14-260,48); use=GC.fst(301,19-301,24)
(GC.try_alloc_invariant @x0
@x1
@x11
@x11)
)


;; def=GC.fst(261,17-261,30); use=GC.fst(301,19-301,24)
(not (= @x1
(GC.no_abs Dummy_value)))


;; def=GC.fst(262,17-262,90); use=GC.fst(301,19-301,24)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
GC.mem_addr)

;; def=GC.fst(262,39-262,48); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(262,39-262,48); use=GC.fst(301,19-301,24)
(GC.trigger @x14)
)


;; def=GC.fst(262,52-262,66); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(262,52-262,66); use=GC.fst(301,19-301,24)
(GC.ptr_lifts @x11
@x14)
)
)

;; def=GC.fst(262,71-262,89); use=GC.fst(301,19-301,24)
(not (= (ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x11)
@x14)
@x1))
)
 
;;no pats
:qid @query.53))


;; def=GC.fst(96,35-96,49); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(96,35-96,49); use=GC.fst(301,19-301,24)
(GC.mutator_inv @x11)
)


;; def=GC.fst(263,30-263,84); use=GC.fst(301,19-301,24)
(implies 
;; def=GC.fst(263,31-263,40); use=GC.fst(301,19-301,24)
(not (= @x0
(BoxInt 0)))


;; def=GC.fst(263,45-263,83); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(263,45-263,83); use=GC.fst(301,19-301,24)
(GC.ptr_lifts_to @x13
@x0
(ApplyTT (ApplyTT GC.__proj__Mkgc_state__item__to_abs@tok
@x11)
@x0))
)
)


;; def=GC.fst(264,31-264,48); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(264,31-264,48); use=GC.fst(301,19-301,24)
(GC.ptr_lifts @x13
@x12)
)


;; def=GC.fst(265,31-265,62); use=GC.fst(301,19-301,24)
(= (GC.__proj__Mkgc_state__item__abs_fields @x13)
(GC.__proj__Mkgc_state__item__abs_fields @x11))


;; def=GC.fst(97,51-97,66); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(97,51-97,66); use=GC.fst(301,19-301,24)
(GC.mutator_inv @x13)
)
)

;; def=GC.fst(93,73-93,80); use=GC.fst(301,19-301,24)
(Valid 
;; def=GC.fst(93,73-93,80); use=GC.fst(301,19-301,24)
(ApplyTT (ApplyTT @x8
@x12)
@x13)
)
)
 
;;no pats
:qid @query.52))
)
)
 
;;no pats
:qid @query.48))
)
)
 
;;no pats
:qid @query.47))
))
)
 
;;no pats
:qid @query.43))
)
 
;;no pats
:qid @query.40))
)
)
 
;;no pats
:qid @query.38))
)
)
 
;;no pats
:qid @query.37))
)
 
;;no pats
:qid @query.33))
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
(echo "label_51")
(eval label_51)
(echo "label_50")
(eval label_50)
(echo "label_49")
(eval label_49)
(echo "label_48")
(eval label_48)
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
; QUERY ID: (GC.alloc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, GC_interpretation_Tm_arrow_4a7f36b0bf2a2668069bf870c5d90346, GC_pretyping_27e56dec3f0cf9a6af115223c7bb363f, GC_pretyping_ab0ffb7fae1c8ce581a4f6505251cb9c, assumption_FStar.Pervasives.Native.tuple2__uu___haseq, assumption_GC.color__uu___haseq, assumption_GC.field__uu___haseq, b2t_def, bool_inversion, bool_typing, constructor_distinct_GC.Unalloc, constructor_distinct_GC.White, equality_tok_GC.F1@tok, equality_tok_GC.F2@tok, equality_tok_GC.Unalloc@tok, equality_tok_GC.White@tok, equation_GC.abs_map, equation_GC.is_mem_addr, equation_GC.mem_addr, equation_GC.mutator_inv, equation_GC.obj_inv, equation_GC.ptr_lifts, equation_GC.ptr_lifts_to, equation_GC.to_abs_inj, equation_GC.trigger, equation_GC.try_alloc_invariant, equation_GC.upd_map, equation_GC.valid, equation_Prims.eqtype, fuel_guarded_inversion_GC.field, fuel_guarded_inversion_GC.gc_state, function_token_typing_GC.__proj__Mkgc_state__item__abs_fields, function_token_typing_GC.__proj__Mkgc_state__item__to_abs, function_token_typing_GC.upd_map, haseqTm_refine_5248130f0b0d7223b3b6331b13742bec, int_inversion, int_typing, kinding_GC.field@tok, primitive_Prims.op_Addition, primitive_Prims.op_AmpAmp, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_disEquality, proj_equation_GC.Mkgc_state_abs_fields, proj_equation_GC.Mkgc_state_color, proj_equation_GC.Mkgc_state_fields, proj_equation_GC.Mkgc_state_to_abs, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_GC.Mkgc_state_abs_fields, projection_inverse_GC.Mkgc_state_color, projection_inverse_GC.Mkgc_state_fields, projection_inverse_GC.Mkgc_state_to_abs, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_5248130f0b0d7223b3b6331b13742bec, refinement_interpretation_Tm_refine_6faaaf327b122a7307a5bdd1f21b4925, refinement_interpretation_Tm_refine_ebe8d554029941ff856db931e680cc38, refinement_kinding_Tm_refine_5248130f0b0d7223b3b6331b13742bec, token_correspondence_GC.__proj__Mkgc_state__item__abs_fields, token_correspondence_GC.__proj__Mkgc_state__item__color, token_correspondence_GC.__proj__Mkgc_state__item__fields, token_correspondence_GC.upd_map, typing_GC.__proj__Mkgc_state__item__to_abs, typing_GC.is_mem_addr, typing_GC.mem_hi, typing_GC.mem_lo, typing_GC.valid, typing_Prims.int, typing_tok_GC.F2@tok, typing_tok_GC.White@tok
