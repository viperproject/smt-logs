
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


; Externals for interface FStar.Ghost


; <Start encoding val FStar.Ghost.erased>

(declare-fun FStar.Ghost.erased (Term) Term)

(declare-fun FStar.Ghost.erased@tok () Term)

; </end encoding val FStar.Ghost.erased>


; <Start encoding val FStar.Ghost.reveal>

(declare-fun FStar.Ghost.reveal (Term Term) Term)
(declare-fun Tm_ghost_arrow_e2f4c1991753137c5a80c115428d0cef () Term)
(declare-fun FStar.Ghost.reveal@tok () Term)

; </end encoding val FStar.Ghost.reveal>


; <Start encoding val FStar.Ghost.hide>

(declare-fun FStar.Ghost.hide (Term Term) Term)
(declare-fun Tm_arrow_643f1030585ddc96db34fbedd5533726 () Term)
(declare-fun FStar.Ghost.hide@tok () Term)

; </end encoding val FStar.Ghost.hide>


; <Start encoding val FStar.Ghost.hide_reveal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Ghost.hide_reveal (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Ghost.hide_reveal@tok () Term)

; </end encoding val FStar.Ghost.hide_reveal>


; <Start encoding val FStar.Ghost.reveal_hide>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Ghost.reveal_hide (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Ghost.reveal_hide@tok () Term)

; </end encoding val FStar.Ghost.reveal_hide>


; <Start encoding let tot_to_gtot>

(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun FStar.Ghost.tot_to_gtot (Term Term Term Term) Term)

(declare-fun Tm_ghost_arrow_c9fd3b742fd348c1f0aa2b7131578f3e () Term)
(declare-fun FStar.Ghost.tot_to_gtot@tok () Term)


; </end encoding let tot_to_gtot>


; <Start encoding let return>

(declare-fun FStar.Ghost.return (Term Term) Term)

(declare-fun FStar.Ghost.return@tok () Term)

; </end encoding let return>


; <Start encoding let bind>

(declare-fun Tm_arrow_5716b68879f92aa07a25325dea2a598d (Term Term) Term)
(declare-fun FStar.Ghost.bind (Term Term Term Term) Term)

(declare-fun Tm_arrow_744e10832c82c923706888158b99b0fe () Term)
(declare-fun FStar.Ghost.bind@tok () Term)


; </end encoding let bind>


; <Start encoding let op_let_At>


(declare-fun FStar.Ghost.op_let_At (Term Term Term Term) Term)


(declare-fun FStar.Ghost.op_let_At@tok () Term)


; </end encoding let op_let_At>


; <Start encoding let elift1>


(declare-fun FStar.Ghost.elift1 (Term Term Term Term) Term)

(declare-fun Tm_refine_785b445c1ccb59eaa8c666ff5bddec28 (Term Term Term Term) Term)
(declare-fun Tm_arrow_da89250ece049a2244626f93975cd557 () Term)
(declare-fun FStar.Ghost.elift1@tok () Term)


; </end encoding let elift1>


; <Start encoding let elift2>

(declare-fun Tm_ghost_arrow_44164f5e759c8937bc211b53dca29861 (Term Term Term) Term)
(declare-fun FStar.Ghost.elift2 (Term Term Term Term Term Term) Term)

(declare-fun Tm_refine_65079789b5ee069d4dcb71b5d5562419 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_3bc5977a48f4c4aa4cd3ebcf331fe3f9 () Term)
(declare-fun FStar.Ghost.elift2@tok () Term)


; </end encoding let elift2>


; <Start encoding let elift3>

(declare-fun Tm_ghost_arrow_c3cf725ad58bf27e304b88d311d2ef4d (Term Term Term Term) Term)
(declare-fun FStar.Ghost.elift3 (Term Term Term Term Term Term Term Term) Term)

(declare-fun Tm_refine_f701336f04214efabf1dc8fb653177ef (Term Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_d597747eb30e55a029a57bb56ae3576b () Term)
(declare-fun FStar.Ghost.elift3@tok () Term)


; </end encoding let elift3>


; <Start encoding let push_refinement>


(declare-fun Tm_refine_4861ff30b18822886452f698558931e8 (Term Term) Term)
(declare-fun FStar.Ghost.push_refinement (Term Term Term) Term)


(declare-fun Tm_refine_36af295866c873249daf08f8d623a269 (Term Term Term) Term)
(declare-fun Tm_arrow_08d120582cc4dfdc7e90cb9038e8f6b8 () Term)
(declare-fun FStar.Ghost.push_refinement@tok () Term)





; </end encoding let push_refinement>


; <Start encoding let elift1_p>


(declare-fun Tm_refine_9f8cb5a84b67f50c9d5f87a914037545 (Term Term) Term)
(declare-fun Tm_ghost_arrow_8f538917cb02d75c44bfd86ed6834262 (Term Term Term) Term)

(declare-fun FStar.Ghost.elift1_p (Term Term Term Term Term) Term)





(declare-fun Tm_arrow_2f2f081c9c2a272e83f647cd86440766 () Term)
(declare-fun FStar.Ghost.elift1_p@tok () Term)


; </end encoding let elift1_p>


; <Start encoding let elift2_p>


(declare-fun Tm_refine_08698b4b6e166624b5bf789ac071b4cf (Term Term Term) Term)
(declare-fun Tm_ghost_arrow_4f9eac2d0622ae1c34d05baa5f6854c6 (Term Term Term Term) Term)
(declare-fun Tm_refine_50e552dc638ed7dac9f2492d99576667 (Term Term Term Term) Term)
(declare-fun FStar.Ghost.elift2_p (Term Term Term Term Term Term Term) Term)





(declare-fun Tm_arrow_4243a3f87827ef2e8c38dd30c5e8518d () Term)
(declare-fun FStar.Ghost.elift2_p@tok () Term)


; </end encoding let elift2_p>


; <Start encoding let elift1_pq>



(declare-fun Tm_arrow_b9b0980b05721a41304c20e612f3108f (Term Term Term) Term)


(declare-fun Tm_ghost_arrow_3f0c334c27896d01c2e72f45e6fcb67c (Term Term Term Term) Term)

(declare-fun FStar.Ghost.elift1_pq (Term Term Term Term Term Term) Term)








(declare-fun Tm_arrow_b8eadba0211443ca5c59668f6aa4b6c9 () Term)
(declare-fun FStar.Ghost.elift1_pq@tok () Term)


; </end encoding let elift1_pq>


; <Start encoding let elift2_pq>



(declare-fun Tm_arrow_747965e95d1386c22f52f977256a903b (Term Term Term Term) Term)

(declare-fun Tm_refine_f9e3dab5c1ea39d2741639e0fe40e216 (Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_00838c3d276d7476d6679b97a2aa247c (Term Term Term Term Term) Term)

(declare-fun FStar.Ghost.elift2_pq (Term Term Term Term Term Term Term Term) Term)








(declare-fun Tm_arrow_b7e390954ec59dc663763c956d66957b () Term)
(declare-fun FStar.Ghost.elift2_pq@tok () Term)


; </end encoding let elift2_pq>


; End Externals for interface FStar.Ghost


; Externals for interface FStar.IndefiniteDescription


; <Start encoding val FStar.IndefiniteDescription.elim_squash>

(declare-fun FStar.IndefiniteDescription.elim_squash (Term Term) Term)
(declare-fun Tm_ghost_arrow_c6842219f247b61822e21d8f892190b3 () Term)
(declare-fun FStar.IndefiniteDescription.elim_squash@tok () Term)

; </end encoding val FStar.IndefiniteDescription.elim_squash>


; <Start encoding val FStar.IndefiniteDescription.indefinite_description_ghost>

(declare-fun Tm_arrow_81e65de2755319ee661cc1adc7d951e3 (Term) Term)
(declare-fun Tm_refine_4cc89ae73e7128e43010e5aba0ff060c (Term) Term)
(declare-fun FStar.IndefiniteDescription.indefinite_description_ghost (Term Term) Term)



(declare-fun Tm_ghost_arrow_feddccf07264e14202821ef1d50468a8 () Term)
(declare-fun FStar.IndefiniteDescription.indefinite_description_ghost@tok () Term)


; </end encoding val FStar.IndefiniteDescription.indefinite_description_ghost>


; <Start encoding val FStar.IndefiniteDescription.indefinite_description_tot>



(declare-fun FStar.IndefiniteDescription.indefinite_description_tot (Term Term) Term)



(declare-fun Tm_arrow_913328739865ec1d7344ba2324047e94 () Term)
(declare-fun FStar.IndefiniteDescription.indefinite_description_tot@tok () Term)


; </end encoding val FStar.IndefiniteDescription.indefinite_description_tot>


; <Start encoding val FStar.IndefiniteDescription.strong_excluded_middle>

(declare-fun FStar.IndefiniteDescription.strong_excluded_middle (Term) Term)
(declare-fun Tm_refine_2c7ecebd8a41d0890aab4251b61d6458 (Term) Term)
(declare-fun Tm_ghost_arrow_13b822d9f45311e725609e40f68f39a1 () Term)
(declare-fun FStar.IndefiniteDescription.strong_excluded_middle@tok () Term)


; </end encoding val FStar.IndefiniteDescription.strong_excluded_middle>


; <Start encoding val FStar.IndefiniteDescription.stronger_markovs_principle>

(declare-fun Tm_ghost_arrow_eaf0e881316979a10a835f9aef894ea3 () Term)
(declare-fun FStar.IndefiniteDescription.stronger_markovs_principle (Term) Term)

(declare-fun Tm_refine_ce62cc380d030e5cd8dfd1cf0ea19b01 (Term) Term)
(declare-fun Tm_ghost_arrow_0ecc4bb7783229ca7ca7edd38b0bab8d () Term)
(declare-fun FStar.IndefiniteDescription.stronger_markovs_principle@tok () Term)


; </end encoding val FStar.IndefiniteDescription.stronger_markovs_principle>


; <Start encoding val FStar.IndefiniteDescription.stronger_markovs_principle_prop>

(declare-fun Tm_arrow_1742ee5bbc9c9e74913cc041d85062b6 () Term)
(declare-fun FStar.IndefiniteDescription.stronger_markovs_principle_prop (Term) Term)

(declare-fun Tm_refine_e76bd1e3fcd1369d7232ec3854a8c984 (Term) Term)
(declare-fun Tm_ghost_arrow_c21c60a4b8d9409191eea9e22a1b37db () Term)
(declare-fun FStar.IndefiniteDescription.stronger_markovs_principle_prop@tok () Term)


; </end encoding val FStar.IndefiniteDescription.stronger_markovs_principle_prop>


; End Externals for interface FStar.IndefiniteDescription


; Externals for module FStar.StrongExcludedMiddle


; <Start encoding let strong_excluded_middle>

(declare-fun FStar.StrongExcludedMiddle.strong_excluded_middle (Term) Term)


(declare-fun FStar.StrongExcludedMiddle.strong_excluded_middle@tok () Term)


; </end encoding let strong_excluded_middle>


; End Externals for module FStar.StrongExcludedMiddle


; Externals for interface FStar.Classical.Sugar


; <Start encoding val FStar.Classical.Sugar.forall_elim>


(declare-fun Tm_refine_eee646ed2c0261b2e37307734e5990b8 (Term Term) Term)
(declare-fun FStar.Classical.Sugar.forall_elim (Term Term Term Term) Term)


(declare-fun Tm_arrow_6fad81cdc8376c5921e448133045a0b5 () Term)
(declare-fun FStar.Classical.Sugar.forall_elim@tok () Term)

; </end encoding val FStar.Classical.Sugar.forall_elim>


; <Start encoding val FStar.Classical.Sugar.exists_elim>


(declare-fun Tm_refine_df2d65c00128265e81a98d1694fa32db (Term Term) Term)
(declare-fun Tm_arrow_757abf2ff34845ceba7272f2bf4c779d (Term Term Term) Term)
(declare-fun FStar.Classical.Sugar.exists_elim (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_8a831fa0f832c0a8df6d5207189d1bd6 () Term)
(declare-fun FStar.Classical.Sugar.exists_elim@tok () Term)

; </end encoding val FStar.Classical.Sugar.exists_elim>


; <Start encoding let implies_elim>

(declare-fun Tm_refine_913239c2cf9dc8a14e1f047e0206138d (Term Term) Term)
(declare-fun Tm_arrow_e5bf96e6b202d44baf035cb07df2da84 (Term) Term)
(declare-fun FStar.Classical.Sugar.implies_elim (Term Term Term Term) Term)


(declare-fun Tm_arrow_08b9f1333754078ddc08d25d2c8efab0 () Term)
(declare-fun FStar.Classical.Sugar.implies_elim@tok () Term)



; </end encoding let implies_elim>


; <Start encoding val FStar.Classical.Sugar.or_elim>

(declare-fun Tm_refine_953a6e4e702e848a7213bd619baaa22d (Term) Term)
(declare-fun Tm_arrow_0e4b9f46020ce2f098f1971a515a22d9 (Term) Term)
(declare-fun Tm_refine_044452ce08fa2077b813992baef379a7 (Term Term) Term)
(declare-fun Tm_arrow_9d84457d1c8d2a3cb1cecf47a390b833 (Term Term) Term)

(declare-fun Tm_arrow_3cd50b91a1a8ff7ae2a33f725c49ca25 (Term Term Term) Term)
(declare-fun FStar.Classical.Sugar.or_elim (Term Term Term Term Term Term) Term)






(declare-fun Tm_arrow_cd3704184434b709df08ad54743b9ddc () Term)
(declare-fun FStar.Classical.Sugar.or_elim@tok () Term)

; </end encoding val FStar.Classical.Sugar.or_elim>


; <Start encoding val FStar.Classical.Sugar.and_elim>

(declare-fun Tm_arrow_e617226e5c485cfca90836a8d37dc422 (Term) Term)
(declare-fun Tm_refine_0e6764ea7cf9747bf338120e46774802 (Term Term) Term)
(declare-fun Tm_arrow_9cf3fa74bead5ce84576f320b610d107 (Term Term Term) Term)
(declare-fun FStar.Classical.Sugar.and_elim (Term Term Term Term Term) Term)



(declare-fun Tm_arrow_46e93521f3e2b84feb3b4c45d4b82427 () Term)
(declare-fun FStar.Classical.Sugar.and_elim@tok () Term)

; </end encoding val FStar.Classical.Sugar.and_elim>


; <Start encoding val FStar.Classical.Sugar.forall_intro>


(declare-fun Tm_arrow_e44b1a1960e76c65248b9976ee453bf1 (Term Term) Term)
(declare-fun FStar.Classical.Sugar.forall_intro (Term Term Term) Term)



(declare-fun Tm_arrow_810fc5a930eab84e2e1c9bc10e65f526 () Term)
(declare-fun FStar.Classical.Sugar.forall_intro@tok () Term)


; </end encoding val FStar.Classical.Sugar.forall_intro>


; <Start encoding val FStar.Classical.Sugar.exists_intro>


(declare-fun Tm_arrow_1f559753133c819dcbab21eb87f04504 (Term Term) Term)
(declare-fun FStar.Classical.Sugar.exists_intro (Term Term Term Term) Term)



(declare-fun Tm_arrow_98a6ce57193d862f12aa770d807de2d6 () Term)
(declare-fun FStar.Classical.Sugar.exists_intro@tok () Term)


; </end encoding val FStar.Classical.Sugar.exists_intro>


; <Start encoding val FStar.Classical.Sugar.implies_intro>


(declare-fun Tm_arrow_8cc28639983f141a2c2b513a3b9f2226 (Term Term) Term)
(declare-fun FStar.Classical.Sugar.implies_intro (Term Term Term) Term)


(declare-fun Tm_refine_210741fcd012f6981d2132fb47059ae4 (Term Term) Term)
(declare-fun Tm_arrow_16ed35ee40b45e5834d942fa129fc7a5 () Term)
(declare-fun FStar.Classical.Sugar.implies_intro@tok () Term)


; </end encoding val FStar.Classical.Sugar.implies_intro>


; <Start encoding val FStar.Classical.Sugar.or_intro_left>




(declare-fun FStar.Classical.Sugar.or_intro_left (Term Term Term) Term)




(declare-fun Tm_arrow_ba201b0aaffa8c92349bb033309546c6 () Term)
(declare-fun FStar.Classical.Sugar.or_intro_left@tok () Term)


; </end encoding val FStar.Classical.Sugar.or_intro_left>


; <Start encoding val FStar.Classical.Sugar.or_intro_right>




(declare-fun Tm_arrow_c1f46761cba190a64ceda9e0b423d73a (Term Term) Term)
(declare-fun FStar.Classical.Sugar.or_intro_right (Term Term Term) Term)





(declare-fun Tm_arrow_820ce98d2bc904183444162411ef4873 () Term)
(declare-fun FStar.Classical.Sugar.or_intro_right@tok () Term)


; </end encoding val FStar.Classical.Sugar.or_intro_right>


; <Start encoding val FStar.Classical.Sugar.and_intro>




(declare-fun FStar.Classical.Sugar.and_intro (Term Term Term Term) Term)




(declare-fun Tm_arrow_74dd2a70fe5b8eefc42b899233f1e113 () Term)
(declare-fun FStar.Classical.Sugar.and_intro@tok () Term)


; </end encoding val FStar.Classical.Sugar.and_intro>


; End Externals for interface FStar.Classical.Sugar


; Externals for module FStar.List.Tot.Base


; <Skipped val FStar.List.Tot.Base.isEmpty/>


; <Start encoding let isEmpty>

(declare-fun FStar.List.Tot.Base.isEmpty (Term Term) Term)

(declare-fun FStar.List.Tot.Base.isEmpty@tok () Term)

; </end encoding let isEmpty>


; <Skipped val FStar.List.Tot.Base.hd/>


; <Start encoding let hd>


(declare-fun FStar.List.Tot.Base.hd (Term Term) Term)


(declare-fun FStar.List.Tot.Base.hd@tok () Term)


; </end encoding let hd>


; <Skipped val FStar.List.Tot.Base.tail/>


; <Start encoding let tail>


(declare-fun FStar.List.Tot.Base.tail (Term Term) Term)


(declare-fun FStar.List.Tot.Base.tail@tok () Term)


; </end encoding let tail>


; <Skipped val FStar.List.Tot.Base.tl/>


; <Start encoding let tl>


(declare-fun FStar.List.Tot.Base.tl (Term Term) Term)


(declare-fun FStar.List.Tot.Base.tl@tok () Term)


; </end encoding let tl>


; <Skipped val FStar.List.Tot.Base.last/>


; <Start encoding let rec last>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.last.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.last.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.last (Term Term) Term)
(declare-fun FStar.List.Tot.Base.last@tok () Term)





; </end encoding let rec last>


; <Skipped val FStar.List.Tot.Base.init/>


; <Start encoding let rec init>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.init.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.init.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.init (Term Term) Term)
(declare-fun FStar.List.Tot.Base.init@tok () Term)





; </end encoding let rec init>


; <Skipped val FStar.List.Tot.Base.length/>


; <Start encoding let rec length>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.length.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.length.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.length (Term Term) Term)
(declare-fun FStar.List.Tot.Base.length@tok () Term)
(declare-fun Tm_arrow_5adbd6bc13eabd8f92e79f380e1498f0 () Term)

; </end encoding let rec length>


; <Skipped val FStar.List.Tot.Base.nth/>


; <Start encoding let rec nth>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.nth.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.nth.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.nth (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.nth@tok () Term)
(declare-fun Tm_arrow_c96efec76dd44fb4c1c29ca8a004927d () Term)

; </end encoding let rec nth>


; <Skipped val FStar.List.Tot.Base.index/>


; <Start encoding let rec index>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.index.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.index.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.index (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.index@tok () Term)
(declare-fun Tm_refine_c86aba5c6243e6b7f9a4b0ad41b4e9a0 (Term Term) Term)


(declare-fun Tm_arrow_87330224a075c52374b0ca2b4b909772 () Term)

; </end encoding let rec index>


; <Skipped val FStar.List.Tot.Base.count/>


; <Start encoding let rec count>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.count.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.count.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.count (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.count@tok () Term)
(declare-fun Tm_arrow_d7494a533e0c3edea69ad484d93aa0e5 () Term)

; </end encoding let rec count>


; <Skipped val FStar.List.Tot.Base.rev_acc/>


; <Start encoding let rec rev_acc>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.rev_acc.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.rev_acc.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.rev_acc (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.rev_acc@tok () Term)
(declare-fun Tm_arrow_54e38bdd456bab4cdb32b5d540c2274c () Term)

; </end encoding let rec rev_acc>


; <Skipped val FStar.List.Tot.Base.rev/>


; <Start encoding let rev>

(declare-fun FStar.List.Tot.Base.rev (Term Term) Term)
(declare-fun Tm_arrow_f9ba16c6212a483d195bbb8ceec3eef1 () Term)
(declare-fun FStar.List.Tot.Base.rev@tok () Term)

; </end encoding let rev>


; <Skipped val FStar.List.Tot.Base.append/>


; <Start encoding let rec append>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.append.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.append.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.append (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.append@tok () Term)


; </end encoding let rec append>


; <Start encoding let op_At>

(declare-fun FStar.List.Tot.Base.op_At (Term Term Term) Term)

(declare-fun FStar.List.Tot.Base.op_At@tok () Term)

; </end encoding let op_At>


; <Skipped val FStar.List.Tot.Base.snoc/>


; <Start encoding let snoc>

(declare-fun FStar.List.Tot.Base.snoc (Term Term) Term)
(declare-fun Tm_arrow_07ff48a1c7b541b0963ce508064e29fb () Term)
(declare-fun FStar.List.Tot.Base.snoc@tok () Term)

; </end encoding let snoc>


; <Skipped val FStar.List.Tot.Base.flatten/>


; <Start encoding let rec flatten>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.flatten.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.flatten.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.flatten (Term Term) Term)
(declare-fun FStar.List.Tot.Base.flatten@tok () Term)
(declare-fun Tm_arrow_7e18fd6b36805c1f1c9a77e024fdec2e () Term)

; </end encoding let rec flatten>


; <Skipped val FStar.List.Tot.Base.map/>


; <Start encoding let rec map>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.map.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.map.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.map (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.map@tok () Term)



(declare-fun Tm_arrow_28431dcf5044bcdd56dbe625f9e3df4e () Term)

; </end encoding let rec map>


; <Skipped val FStar.List.Tot.Base.mapi_init/>


; <Start encoding let rec mapi_init>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.mapi_init.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.mapi_init.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.mapi_init (Term Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.mapi_init@tok () Term)
(declare-fun Tm_arrow_010f318679809a99aeced42f5ba95505 (Term Term) Term)


(declare-fun Tm_arrow_9a89e146e4bb6b361bc4526b891ed1f1 () Term)

; </end encoding let rec mapi_init>


; <Skipped val FStar.List.Tot.Base.mapi/>


; <Start encoding let mapi>


(declare-fun FStar.List.Tot.Base.mapi (Term Term Term Term) Term)

(declare-fun Tm_arrow_b2a07f422fceebd0f3ee3abd5e4aeed2 () Term)
(declare-fun FStar.List.Tot.Base.mapi@tok () Term)


; </end encoding let mapi>


; <Skipped val FStar.List.Tot.Base.concatMap/>


; <Start encoding let rec concatMap>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.concatMap.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.concatMap.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.concatMap (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.concatMap@tok () Term)
(declare-fun Tm_arrow_121fa5bc200f7b3946a5e35040f266b9 (Term Term) Term)


(declare-fun Tm_arrow_c35dd4e5f8c08f94183bf93963fac92f () Term)

; </end encoding let rec concatMap>


; <Skipped val FStar.List.Tot.Base.fold_left/>


; <Start encoding let rec fold_left>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.fold_left.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.fold_left.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.fold_left (Term Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.fold_left@tok () Term)
(declare-fun Tm_arrow_f0225aaf6b987d44876e7f498390aa39 (Term Term) Term)


(declare-fun Tm_arrow_230697841c1116c0d5f3958097856e6e () Term)

; </end encoding let rec fold_left>


; <Skipped val FStar.List.Tot.Base.fold_right/>


; <Start encoding let rec fold_right>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.fold_right.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.fold_right.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.fold_right (Term Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.fold_right@tok () Term)
(declare-fun Tm_arrow_3c1d21b8f6dcc5e202b4ff1cafbaba81 (Term Term) Term)


(declare-fun Tm_arrow_105b39eeae3a464c82e64975ac399cdb () Term)

; </end encoding let rec fold_right>


; <Start encoding let rec fold_right_gtot>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.fold_right_gtot.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.fold_right_gtot.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.fold_right_gtot (Term Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.fold_right_gtot@tok () Term)
(declare-fun Tm_ghost_arrow_d7e9834b8fd0407a723f5f3f4b012fdd (Term Term) Term)


(declare-fun Tm_ghost_arrow_fab043b8cdd2296e8d98a06066e4b2d2 () Term)

; </end encoding let rec fold_right_gtot>


; <Start encoding let map_gtot>


(declare-fun FStar.List.Tot.Base.map_gtot (Term Term Term Term) Term)

(declare-fun Tm_ghost_arrow_d0c7be07105bf8d5ad60b7f603c725f3 () Term)
(declare-fun FStar.List.Tot.Base.map_gtot@tok () Term)

(declare-fun Tm_ghost_arrow_21583233c98863da294c5e5d657cf78a (Term Term) Term)
(declare-fun Tm_abs_469cd3853c3ff3e8cd408b5521fdbd9d (Term Term Term) Term)

; </end encoding let map_gtot>


; <Skipped val FStar.List.Tot.Base.fold_left2/>


; <Start encoding let rec fold_left2>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.fold_left2.fuel_instrumented (Fuel Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.fold_left2.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.fold_left2 (Term Term Term Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.fold_left2@tok () Term)
(declare-fun Tm_arrow_40dd30796dd695d143ec6ed01d322177 (Term Term Term) Term)
(declare-fun Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b (Term) Term)



(declare-fun Tm_arrow_3f28d1abbd43ddded682cbec516ea7bb () Term)


; </end encoding let rec fold_left2>


; <Start encoding let rec memP>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.memP.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.memP.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.memP (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.memP@tok () Term)
(declare-fun Tm_arrow_9a5de17321abf8ec257671c9a474c08a () Term)

; </end encoding let rec memP>


; <Skipped val FStar.List.Tot.Base.mem/>


; <Start encoding let rec mem>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.mem.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.mem.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.mem (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.mem@tok () Term)
(declare-fun Tm_arrow_8b16b79a9f8fab7cb6911016a8022992 () Term)

; </end encoding let rec mem>


; <Start encoding let contains>

(declare-fun FStar.List.Tot.Base.contains (Term Term Term) Term)

(declare-fun FStar.List.Tot.Base.contains@tok () Term)

; </end encoding let contains>


; <Skipped val FStar.List.Tot.Base.existsb/>


; <Start encoding let rec existsb>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.existsb.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.existsb.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.existsb (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.existsb@tok () Term)
(declare-fun Tm_arrow_84543425b818e2d10a976186b8e8c250 (Term) Term)


(declare-fun Tm_arrow_98dbecc64760e6a41f037a6881cd5df8 () Term)

; </end encoding let rec existsb>


; <Skipped val FStar.List.Tot.Base.find/>


; <Start encoding let rec find>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.find.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.find.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.find (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.find@tok () Term)

(declare-fun Tm_refine_3b1cb9ec3355fed185c658f53954b3fa (Term Term) Term)





(declare-fun Tm_arrow_286c509b12b9a2bb9bf1025c6fd97451 () Term)


; </end encoding let rec find>


; <Skipped val FStar.List.Tot.Base.filter/>


; <Start encoding let rec filter>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.filter.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.filter.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.filter (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.filter@tok () Term)



(declare-fun Tm_arrow_7c3df353a3c3ca9bc0a8454788aa9ad1 () Term)

; </end encoding let rec filter>


; <Start encoding let rec mem_filter>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Base.mem_filter (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Base.mem_filter@tok () Term)

; </end encoding let rec mem_filter>


; <Start encoding let mem_filter_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Base.mem_filter_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Base.mem_filter_forall@tok () Term)


; </end encoding let mem_filter_forall>


; <Skipped val FStar.List.Tot.Base.for_all/>


; <Start encoding let rec for_all>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.for_all.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.for_all.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.for_all (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.for_all@tok () Term)





; </end encoding let rec for_all>


; <Start encoding let rec for_all_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Base.for_all_mem (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Base.for_all_mem@tok () Term)

; </end encoding let rec for_all_mem>


; <Skipped val FStar.List.Tot.Base.collect/>


; <Start encoding let rec collect>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.collect.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.collect.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.collect (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.collect@tok () Term)





; </end encoding let rec collect>


; <Skipped val FStar.List.Tot.Base.tryFind/>


; <Start encoding let rec tryFind>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.tryFind.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.tryFind.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.tryFind (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.tryFind@tok () Term)



(declare-fun Tm_arrow_4ae6bca87a611585312b8b0d0d66fefe () Term)

; </end encoding let rec tryFind>


; <Skipped val FStar.List.Tot.Base.tryPick/>


; <Start encoding let rec tryPick>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.tryPick.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.tryPick.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.tryPick (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.tryPick@tok () Term)
(declare-fun Tm_arrow_4b0c7cc34485afa5854ebe5c95023d4c (Term Term) Term)


(declare-fun Tm_arrow_7fbbe8a710b97b9ed9c0d2dfb00b1641 () Term)

; </end encoding let rec tryPick>


; <Skipped val FStar.List.Tot.Base.choose/>


; <Start encoding let rec choose>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.choose.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.choose.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.choose (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.choose@tok () Term)



(declare-fun Tm_arrow_ee03a7411b6d8975b285ea6c772c4d89 () Term)

; </end encoding let rec choose>


; <Skipped val FStar.List.Tot.Base.partition/>


; <Start encoding let rec partition>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.partition.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.partition.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.partition (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.partition@tok () Term)



(declare-fun Tm_arrow_706f575815ce8a3bbd962da035d8aa14 () Term)

; </end encoding let rec partition>


; <Skipped val FStar.List.Tot.Base.subset/>


; <Start encoding let rec subset>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.subset.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.subset.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.subset (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.subset@tok () Term)
(declare-fun Tm_arrow_8d819a995fc33b4cb6aa699af88e8d32 () Term)

; </end encoding let rec subset>


; <Skipped val FStar.List.Tot.Base.noRepeats/>


; <Start encoding let rec noRepeats>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.noRepeats.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.noRepeats.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.noRepeats (Term Term) Term)
(declare-fun FStar.List.Tot.Base.noRepeats@tok () Term)
(declare-fun Tm_arrow_0dd285b24907a2f8b15dedffef61afa6 () Term)

; </end encoding let rec noRepeats>


; <Skipped val FStar.List.Tot.Base.no_repeats_p/>


; <Start encoding let rec no_repeats_p>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.no_repeats_p.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.no_repeats_p.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.no_repeats_p (Term Term) Term)
(declare-fun FStar.List.Tot.Base.no_repeats_p@tok () Term)
(declare-fun Tm_arrow_79c2442eab9e49d1108d2b7a240dc76e () Term)

; </end encoding let rec no_repeats_p>


; <Skipped val FStar.List.Tot.Base.assoc/>


; <Start encoding let rec assoc>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.assoc.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.assoc.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.assoc (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.assoc@tok () Term)
(declare-fun Tm_arrow_d77cf796c5b72d2c2316c0fcdad1dd79 () Term)

; </end encoding let rec assoc>


; <Skipped val FStar.List.Tot.Base.split/>


; <Start encoding let rec split>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.split.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.split.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.split (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.split@tok () Term)
(declare-fun Tm_arrow_1c3cb31b4ffa47bc6454f5b8a25e2407 () Term)

; </end encoding let rec split>


; <Start encoding let unzip>

(declare-fun FStar.List.Tot.Base.unzip (Term Term Term) Term)

(declare-fun FStar.List.Tot.Base.unzip@tok () Term)

; </end encoding let unzip>


; <Skipped val FStar.List.Tot.Base.unzip3/>


; <Start encoding let rec unzip3>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.unzip3.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.unzip3.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.unzip3 (Term Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.unzip3@tok () Term)
(declare-fun Tm_arrow_d40be6b496fedb6f7a46205c5824b732 () Term)

; </end encoding let rec unzip3>


; <Start encoding let rec splitAt>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.splitAt.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.splitAt.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.splitAt (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.splitAt@tok () Term)
(declare-fun Tm_arrow_e36bd078e08c2ac2f1324fef6e0a4a22 () Term)

; </end encoding let rec splitAt>


; <Start encoding let rec lemma_splitAt_snd_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Base.lemma_splitAt_snd_length (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Base.lemma_splitAt_snd_length@tok () Term)

; </end encoding let rec lemma_splitAt_snd_length>


; <Skipped val FStar.List.Tot.Base.unsnoc/>


; <Start encoding let unsnoc>

(declare-fun Tm_refine_3f6b38b2852708f36615f9b4db0f9ff1 (Term) Term)
(declare-fun FStar.List.Tot.Base.unsnoc (Term Term) Term)

(declare-fun Tm_arrow_f4bc61622db0c39a751170734a140783 () Term)
(declare-fun FStar.List.Tot.Base.unsnoc@tok () Term)


; </end encoding let unsnoc>


; <Skipped val FStar.List.Tot.Base.split3/>


; <Start encoding let split3>


(declare-fun FStar.List.Tot.Base.split3 (Term Term Term) Term)

(declare-fun Tm_arrow_07dcb44faa0fb6172673970868e7ecff () Term)
(declare-fun FStar.List.Tot.Base.split3@tok () Term)


; </end encoding let split3>


; <Skipped val FStar.List.Tot.Base.partition_length/>


; <Start encoding let rec partition_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Base.partition_length (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Base.partition_length@tok () Term)

; </end encoding let rec partition_length>


; <Skipped val FStar.List.Tot.Base.bool_of_compare/>


; <Start encoding let bool_of_compare>

(declare-fun Tm_arrow_9877f854fbaabbcfda94f6c19b32ae3f (Term) Term)
(declare-fun FStar.List.Tot.Base.bool_of_compare (Term Term Term Term) Term)

(declare-fun Tm_arrow_a2f219461d35e20b7bc771538ca96429 () Term)
(declare-fun FStar.List.Tot.Base.bool_of_compare@tok () Term)


; </end encoding let bool_of_compare>


; <Skipped val FStar.List.Tot.Base.compare_of_bool/>


; <Start encoding let compare_of_bool>

(declare-fun Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e (Term) Term)
(declare-fun FStar.List.Tot.Base.compare_of_bool (Term Term Term Term) Term)

(declare-fun Tm_arrow_8b54d4820d055c327440d0d4811d3a33 () Term)
(declare-fun FStar.List.Tot.Base.compare_of_bool@tok () Term)


; </end encoding let compare_of_bool>


; <Start encoding let compare_of_bool_of_compare>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Base.compare_of_bool_of_compare (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Base.compare_of_bool_of_compare@tok () Term)

; </end encoding let compare_of_bool_of_compare>


; <Skipped val FStar.List.Tot.Base.sortWith/>


; <Start encoding let rec sortWith>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.sortWith.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.sortWith.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.sortWith (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.sortWith@tok () Term)



(declare-fun Tm_arrow_d29fb5884447b657cb725f9be68c5ba6 () Term)

; </end encoding let rec sortWith>


; <Start encoding let rec strict_suffix_of>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.strict_suffix_of (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.strict_suffix_of@tok () Term)
(declare-fun Tm_refine_da3062322c9bea8d5b2058386775b91a () Term)

(declare-fun Tm_arrow_1d91178a138c1826d6a199b1613394f1 () Term)


; </end encoding let rec strict_suffix_of>


; <Start encoding let strict_prefix_of>

(declare-fun FStar.List.Tot.Base.strict_prefix_of (Term) Term)

(declare-fun Tm_arrow_0dd65914dd84642f7849df5d67086aa0 (Term) Term)
(declare-fun Tm_arrow_25d975ae357f14f725a8d52a81f8be72 () Term)
(declare-fun FStar.List.Tot.Base.strict_prefix_of@tok () Term)



; </end encoding let strict_prefix_of>


; <Skipped val FStar.List.Tot.Base.list_unref/>


; <Start encoding let rec list_unref>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.list_unref.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.list_unref.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.list_unref (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.list_unref@tok () Term)






(declare-fun Tm_arrow_6b3a7706fc085133138f00ee506ef176 () Term)

; </end encoding let rec list_unref>


; <Skipped val FStar.List.Tot.Base.list_refb/>


; <Start encoding let rec list_refb>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.list_refb.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.list_refb.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.list_refb (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.list_refb@tok () Term)

(declare-fun Tm_refine_3dfaece5a1f8e27ecb1367ff50145048 (Term Term) Term)





(declare-fun Tm_refine_b3daba88e15ae8a9be9dd341522270b2 (Term Term Term Term) Term)

(declare-fun Tm_refine_1d1ddbacd892e41ad4ba585e87296d2e (Term Term Term) Term)










(declare-fun Tm_arrow_73c684a5823f2875fcceead4ce671ea8 () Term)







; </end encoding let rec list_refb>


; <Skipped val FStar.List.Tot.Base.list_ref/>


; <Start encoding let rec list_ref>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Base.list_ref.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Base.list_ref.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Base.list_ref (Term Term Term) Term)
(declare-fun FStar.List.Tot.Base.list_ref@tok () Term)

(declare-fun Tm_refine_751cc4d3e845537c495f9d7e1deb8aa9 (Term Term) Term)





(declare-fun Tm_refine_f61b92c00df29b87346e52dcf7670926 (Term Term Term Term) Term)

(declare-fun Tm_refine_16f0c42812e28aba7e30bc8c275306fb (Term Term Term) Term)










(declare-fun Tm_arrow_73f29356f974e35d230fb85375ad3965 () Term)







; </end encoding let rec list_ref>


; End Externals for module FStar.List.Tot.Base


; Externals for interface FStar.List.Tot.Properties


; <Start encoding let llist>

(declare-fun FStar.List.Tot.Properties.llist (Term Term) Term)
(declare-fun Tm_arrow_67c7b2626869cb316f118144000415b9 () Term)
(declare-fun FStar.List.Tot.Properties.llist@tok () Term)
(declare-fun Tm_refine_fbb3412f12fd58a91571022d7c9fa36d (Term Term) Term)

; </end encoding let llist>


; <Start encoding val FStar.List.Tot.Properties.mem_memP>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.mem_memP (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.mem_memP@tok () Term)

; </end encoding val FStar.List.Tot.Properties.mem_memP>


; <Start encoding val FStar.List.Tot.Properties.lemma_index_memP>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_index_memP (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_index_memP@tok () Term)
(declare-fun Tm_refine_bf2fa1226f2c9a0f6671df3e80ddcb8e (Term Term) Term)

; </end encoding val FStar.List.Tot.Properties.lemma_index_memP>


; <Start encoding val FStar.List.Tot.Properties.memP_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.memP_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.memP_empty@tok () Term)

; </end encoding val FStar.List.Tot.Properties.memP_empty>


; <Start encoding val FStar.List.Tot.Properties.memP_existsb>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.memP_existsb (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.memP_existsb@tok () Term)

; </end encoding val FStar.List.Tot.Properties.memP_existsb>


; <Start encoding val FStar.List.Tot.Properties.memP_map_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.memP_map_intro (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.memP_map_intro@tok () Term)

; </end encoding val FStar.List.Tot.Properties.memP_map_intro>


; <Start encoding val FStar.List.Tot.Properties.memP_map_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.memP_map_elim (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.memP_map_elim@tok () Term)

; </end encoding val FStar.List.Tot.Properties.memP_map_elim>


; <Start encoding val FStar.List.Tot.Properties.mem_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.mem_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.mem_empty@tok () Term)

; </end encoding val FStar.List.Tot.Properties.mem_empty>


; <Start encoding val FStar.List.Tot.Properties.mem_existsb>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.mem_existsb (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.mem_existsb@tok () Term)

; </end encoding val FStar.List.Tot.Properties.mem_existsb>


; <Start encoding val FStar.List.Tot.Properties.mem_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.mem_count (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.mem_count@tok () Term)

; </end encoding val FStar.List.Tot.Properties.mem_count>


; <Start encoding val FStar.List.Tot.Properties.rev_acc_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_acc_length (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_acc_length@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_acc_length>


; <Start encoding val FStar.List.Tot.Properties.rev_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_length@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_length>


; <Start encoding val FStar.List.Tot.Properties.rev_acc_memP>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_acc_memP (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_acc_memP@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_acc_memP>


; <Start encoding val FStar.List.Tot.Properties.rev_memP>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_memP (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_memP@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_memP>


; <Start encoding val FStar.List.Tot.Properties.rev_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_mem (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_mem@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_mem>


; <Start encoding val FStar.List.Tot.Properties.append_nil_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_nil_l (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_nil_l@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_nil_l>


; <Start encoding val FStar.List.Tot.Properties.append_l_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_l_nil (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_l_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_l_nil>


; <Start encoding val FStar.List.Tot.Properties.append_cons_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_cons_l (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_cons_l@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_cons_l>


; <Start encoding val FStar.List.Tot.Properties.append_l_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_l_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_l_cons@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_l_cons>


; <Start encoding val FStar.List.Tot.Properties.append_assoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_assoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_assoc@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_assoc>


; <Start encoding val FStar.List.Tot.Properties.append_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_length (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_length@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_length>


; <Start encoding val FStar.List.Tot.Properties.append_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_mem (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_mem@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_mem>


; <Start encoding val FStar.List.Tot.Properties.append_memP>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_memP (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_memP@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_memP>


; <Start encoding val FStar.List.Tot.Properties.append_mem_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_mem_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_mem_forall@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_mem_forall>


; <Start encoding val FStar.List.Tot.Properties.append_memP_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_memP_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_memP_forall@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_memP_forall>


; <Start encoding val FStar.List.Tot.Properties.append_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_count (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_count@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_count>


; <Start encoding val FStar.List.Tot.Properties.append_count_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_count_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_count_forall@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_count_forall>


; <Start encoding val FStar.List.Tot.Properties.append_eq_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_eq_nil (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_eq_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_eq_nil>


; <Start encoding val FStar.List.Tot.Properties.append_eq_singl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_eq_singl (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_eq_singl@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_eq_singl>


; <Start encoding val FStar.List.Tot.Properties.append_inv_head>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_inv_head (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_inv_head@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_inv_head>


; <Start encoding val FStar.List.Tot.Properties.append_inv_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_inv_tail (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_inv_tail@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_inv_tail>


; <Start encoding val FStar.List.Tot.Properties.append_length_inv_head>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_length_inv_head (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_length_inv_head@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_length_inv_head>


; <Start encoding val FStar.List.Tot.Properties.append_length_inv_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_length_inv_tail (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_length_inv_tail@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_length_inv_tail>


; <Start encoding val FStar.List.Tot.Properties.append_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_injective (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_injective@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_injective>


; <Start encoding val FStar.List.Tot.Properties.lemma_append_last>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_append_last (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_append_last@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_append_last>


; <Start encoding let rec rev'>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Properties.rev_.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Properties.rev_.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Properties.rev_ (Term Term) Term)
(declare-fun FStar.List.Tot.Properties.rev_@tok () Term)


; </end encoding let rec rev'>


; <Start encoding let rev'T>

(declare-fun FStar.List.Tot.Properties.rev_T (Term) Term)
(declare-fun Tm_arrow_f34ce2ad5441b4bd300fa100b397737d (Term) Term)
(declare-fun Tm_arrow_42c6b27a859866d5307ff94c9f459cb1 () Term)
(declare-fun FStar.List.Tot.Properties.rev_T@tok () Term)


; </end encoding let rev'T>


; <Start encoding val FStar.List.Tot.Properties.rev_acc_rev'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_acc_rev_ (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_acc_rev_@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_acc_rev'>


; <Start encoding val FStar.List.Tot.Properties.rev_rev'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_rev_ (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_rev_@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_rev'>


; <Start encoding val FStar.List.Tot.Properties.rev'_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev__append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev__append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev'_append>


; <Start encoding val FStar.List.Tot.Properties.rev_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_append>


; <Start encoding val FStar.List.Tot.Properties.rev'_involutive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev__involutive (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev__involutive@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev'_involutive>


; <Start encoding val FStar.List.Tot.Properties.rev_involutive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_involutive (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_involutive@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_involutive>


; <Start encoding val FStar.List.Tot.Properties.lemma_snoc_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_snoc_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_snoc_length@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_snoc_length>


; <Start encoding val FStar.List.Tot.Properties.rev'_list_ind>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev__list_ind (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev__list_ind@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev'_list_ind>


; <Start encoding val FStar.List.Tot.Properties.rev_ind>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.rev_ind (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.rev_ind@tok () Term)

; </end encoding val FStar.List.Tot.Properties.rev_ind>


; <Start encoding val FStar.List.Tot.Properties.map_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.map_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.map_lemma@tok () Term)


; </end encoding val FStar.List.Tot.Properties.map_lemma>


; <Start encoding val FStar.List.Tot.Properties.lemma_unsnoc_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_snoc (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_snoc@tok () Term)
(declare-fun Tm_refine_e88aba6d4c79a5625ab4330932edf7ed (Term) Term)

; </end encoding val FStar.List.Tot.Properties.lemma_unsnoc_snoc>


; <Start encoding val FStar.List.Tot.Properties.lemma_snoc_unsnoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_snoc_unsnoc (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_snoc_unsnoc@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_snoc_unsnoc>


; <Start encoding val FStar.List.Tot.Properties.lemma_unsnoc_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_length@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_unsnoc_length>


; <Start encoding val FStar.List.Tot.Properties.lemma_unsnoc_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_unsnoc_append>


; <Start encoding val FStar.List.Tot.Properties.lemma_unsnoc_is_last>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_is_last (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_is_last@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_unsnoc_is_last>


; <Start encoding val FStar.List.Tot.Properties.lemma_unsnoc_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_unsnoc_index@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_unsnoc_index>


; <Start encoding let rec split_using>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Properties.split_using.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Properties.split_using.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Properties.split_using (Term Term Term) Term)
(declare-fun FStar.List.Tot.Properties.split_using@tok () Term)
(declare-fun Tm_refine_ca5b6dc4e0a851997703798a1ffc5f70 (Term Term) Term)


(declare-fun Tm_ghost_arrow_583c096a402961cd40d8b718fb07bacc () Term)

; </end encoding let rec split_using>


; <Start encoding val FStar.List.Tot.Properties.lemma_split_using>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.lemma_split_using (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.lemma_split_using@tok () Term)

; </end encoding val FStar.List.Tot.Properties.lemma_split_using>


; <Start encoding let rec index_of>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Properties.index_of.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Properties.index_of.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Properties.index_of (Term Term Term) Term)
(declare-fun FStar.List.Tot.Properties.index_of@tok () Term)

(declare-fun Tm_refine_cd45ecc9daf74409c394004efbaa3338 (Term Term Term) Term)



(declare-fun Tm_ghost_arrow_d9cd5e48f458f8c211c59f9048af3929 () Term)


; </end encoding let rec index_of>


; <Start encoding val FStar.List.Tot.Properties.partition_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.partition_mem (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.partition_mem@tok () Term)

; </end encoding val FStar.List.Tot.Properties.partition_mem>


; <Start encoding val FStar.List.Tot.Properties.partition_mem_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.partition_mem_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.partition_mem_forall@tok () Term)

; </end encoding val FStar.List.Tot.Properties.partition_mem_forall>


; <Start encoding val FStar.List.Tot.Properties.partition_mem_p_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.partition_mem_p_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.partition_mem_p_forall@tok () Term)

; </end encoding val FStar.List.Tot.Properties.partition_mem_p_forall>


; <Start encoding val FStar.List.Tot.Properties.partition_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.partition_count (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.partition_count@tok () Term)

; </end encoding val FStar.List.Tot.Properties.partition_count>


; <Start encoding val FStar.List.Tot.Properties.partition_count_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.partition_count_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.partition_count_forall@tok () Term)

; </end encoding val FStar.List.Tot.Properties.partition_count_forall>


; <Start encoding val FStar.List.Tot.Properties.mem_subset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.mem_subset (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.mem_subset@tok () Term)

; </end encoding val FStar.List.Tot.Properties.mem_subset>


; <Start encoding val FStar.List.Tot.Properties.subset_reflexive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.subset_reflexive (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.subset_reflexive@tok () Term)

; </end encoding val FStar.List.Tot.Properties.subset_reflexive>


; <Start encoding val FStar.List.Tot.Properties.sortWith_permutation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.sortWith_permutation (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.sortWith_permutation@tok () Term)

; </end encoding val FStar.List.Tot.Properties.sortWith_permutation>


; <Start encoding let rec sorted>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.List.Tot.Properties.sorted.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.List.Tot.Properties.sorted.fuel_instrumented_token () Term)
(declare-fun FStar.List.Tot.Properties.sorted (Term Term) Term)
(declare-fun FStar.List.Tot.Properties.sorted@tok () Term)

(declare-fun Tm_arrow_9cabe840930f95fd18f81c0a913ddb25 (Term) Term)
(declare-fun Tm_abs_4bfb53c1305d6fe7222f07cf49f467b6 (Term Term Fuel Term) Term)




(declare-fun Tm_arrow_af42ab660b7a2cfc6caea649532e5867 () Term)


; </end encoding let rec sorted>


; <Start encoding let total_order>


(declare-fun FStar.List.Tot.Properties.total_order (Term Term) Term)

(declare-fun Tm_arrow_92649d42e4d7df07b51f92b06355903e () Term)
(declare-fun FStar.List.Tot.Properties.total_order@tok () Term)


; </end encoding let total_order>


; <Start encoding val FStar.List.Tot.Properties.append_sorted>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_sorted (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_sorted@tok () Term)

(declare-fun Tm_refine_a928c26e721d07631e5f0d63f521a37e (Term Term) Term)


; </end encoding val FStar.List.Tot.Properties.append_sorted>


; <Start encoding val FStar.List.Tot.Properties.sortWith_sorted>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.sortWith_sorted (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.sortWith_sorted@tok () Term)

; </end encoding val FStar.List.Tot.Properties.sortWith_sorted>


; <Start encoding val FStar.List.Tot.Properties.noRepeats_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_nil (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.noRepeats_nil>


; <Start encoding val FStar.List.Tot.Properties.noRepeats_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_cons@tok () Term)

; </end encoding val FStar.List.Tot.Properties.noRepeats_cons>


; <Start encoding val FStar.List.Tot.Properties.noRepeats_append_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_append_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_append_elim@tok () Term)

; </end encoding val FStar.List.Tot.Properties.noRepeats_append_elim>


; <Start encoding val FStar.List.Tot.Properties.noRepeats_append_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_append_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.noRepeats_append_intro@tok () Term)

; </end encoding val FStar.List.Tot.Properties.noRepeats_append_intro>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_nil (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_nil>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_cons@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_cons>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_append_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_elim@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_append_elim>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_append_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_intro@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_append_intro>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_append>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_append_swap>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_swap (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_swap@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_append_swap>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_append_permut>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_permut (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_append_permut@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_append_permut>


; <Start encoding val FStar.List.Tot.Properties.no_repeats_p_false_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_false_intro (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.no_repeats_p_false_intro@tok () Term)

; </end encoding val FStar.List.Tot.Properties.no_repeats_p_false_intro>


; <Start encoding val FStar.List.Tot.Properties.assoc_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_nil (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_nil>


; <Start encoding val FStar.List.Tot.Properties.assoc_cons_eq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_cons_eq (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_cons_eq@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_cons_eq>


; <Start encoding val FStar.List.Tot.Properties.assoc_cons_not_eq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_cons_not_eq (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_cons_not_eq@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_cons_not_eq>


; <Start encoding val FStar.List.Tot.Properties.assoc_append_elim_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_append_elim_r (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_append_elim_r@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_append_elim_r>


; <Start encoding val FStar.List.Tot.Properties.assoc_append_elim_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_append_elim_l (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_append_elim_l@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_append_elim_l>


; <Start encoding val FStar.List.Tot.Properties.assoc_memP_some>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_memP_some (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_memP_some@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_memP_some>


; <Start encoding val FStar.List.Tot.Properties.assoc_memP_none>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_memP_none (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_memP_none@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_memP_none>


; <Start encoding val FStar.List.Tot.Properties.assoc_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_mem (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_mem@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_mem>


; <Start encoding val FStar.List.Tot.Properties.fold_left_invar>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_invar (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_invar@tok () Term)

; </end encoding val FStar.List.Tot.Properties.fold_left_invar>


; <Start encoding val FStar.List.Tot.Properties.fold_left_map>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_map (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_map@tok () Term)

; </end encoding val FStar.List.Tot.Properties.fold_left_map>


; <Start encoding val FStar.List.Tot.Properties.map_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.map_append (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.map_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.map_append>


; <Start encoding val FStar.List.Tot.Properties.fold_left_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_append (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.fold_left_append>


; <Start encoding val FStar.List.Tot.Properties.fold_left_monoid>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_monoid (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_monoid@tok () Term)

; </end encoding val FStar.List.Tot.Properties.fold_left_monoid>


; <Start encoding val FStar.List.Tot.Properties.fold_left_append_monoid>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_append_monoid (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.fold_left_append_monoid@tok () Term)

; </end encoding val FStar.List.Tot.Properties.fold_left_append_monoid>


; <Start encoding val FStar.List.Tot.Properties.index_extensionality>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.index_extensionality (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.index_extensionality@tok () Term)

; </end encoding val FStar.List.Tot.Properties.index_extensionality>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_nil (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_nil>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_or_eq_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_or_eq_nil (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_or_eq_nil@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_or_eq_nil>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_cons@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_cons>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_trans>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_trans (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_trans@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_trans>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_correct>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_correct (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_correct@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_correct>


; <Start encoding val FStar.List.Tot.Properties.map_strict_suffix_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.map_strict_suffix_of (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.map_strict_suffix_of@tok () Term)

; </end encoding val FStar.List.Tot.Properties.map_strict_suffix_of>


; <Start encoding val FStar.List.Tot.Properties.mem_strict_suffix_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.mem_strict_suffix_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.mem_strict_suffix_of@tok () Term)

; </end encoding val FStar.List.Tot.Properties.mem_strict_suffix_of>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_exists_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_exists_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_exists_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_exists_append>


; <Start encoding val FStar.List.Tot.Properties.strict_suffix_of_or_eq_exists_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_or_eq_exists_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.strict_suffix_of_or_eq_exists_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.strict_suffix_of_or_eq_exists_append>


; <Start encoding val FStar.List.Tot.Properties.precedes_tl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.precedes_tl (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.precedes_tl@tok () Term)

; </end encoding val FStar.List.Tot.Properties.precedes_tl>


; <Start encoding val FStar.List.Tot.Properties.precedes_append_cons_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.precedes_append_cons_r (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.precedes_append_cons_r@tok () Term)

; </end encoding val FStar.List.Tot.Properties.precedes_append_cons_r>


; <Start encoding val FStar.List.Tot.Properties.precedes_append_cons_prod_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.precedes_append_cons_prod_r (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.precedes_append_cons_prod_r@tok () Term)

; </end encoding val FStar.List.Tot.Properties.precedes_append_cons_prod_r>


; <Start encoding val FStar.List.Tot.Properties.memP_precedes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.memP_precedes (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.memP_precedes@tok () Term)

; </end encoding val FStar.List.Tot.Properties.memP_precedes>


; <Start encoding val FStar.List.Tot.Properties.assoc_precedes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.assoc_precedes (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.assoc_precedes@tok () Term)

; </end encoding val FStar.List.Tot.Properties.assoc_precedes>


; <Start encoding val FStar.List.Tot.Properties.find_none>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.find_none (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.find_none@tok () Term)

; </end encoding val FStar.List.Tot.Properties.find_none>


; <Start encoding val FStar.List.Tot.Properties.append_init_last>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.append_init_last (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.append_init_last@tok () Term)

; </end encoding val FStar.List.Tot.Properties.append_init_last>


; <Start encoding val FStar.List.Tot.Properties.init_last_def>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.init_last_def (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.init_last_def@tok () Term)

; </end encoding val FStar.List.Tot.Properties.init_last_def>


; <Start encoding val FStar.List.Tot.Properties.init_last_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.init_last_inj (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.init_last_inj@tok () Term)

; </end encoding val FStar.List.Tot.Properties.init_last_inj>


; <Start encoding val FStar.List.Tot.Properties.for_all_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.Tot.Properties.for_all_append (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.Tot.Properties.for_all_append@tok () Term)

; </end encoding val FStar.List.Tot.Properties.for_all_append>


; End Externals for interface FStar.List.Tot.Properties


; Externals for module FStar.List.Tot


; End Externals for module FStar.List.Tot


; Externals for interface FStar.Seq.Base


; <Start encoding val FStar.Seq.Base.seq>

(declare-fun FStar.Seq.Base.seq (Term) Term)

(declare-fun FStar.Seq.Base.seq@tok () Term)

; </end encoding val FStar.Seq.Base.seq>


; <Start encoding val FStar.Seq.Base.length>

(declare-fun FStar.Seq.Base.length (Term Term) Term)
(declare-fun Tm_arrow_d2c01593e1ccf972aadc4bced72f8166 () Term)
(declare-fun FStar.Seq.Base.length@tok () Term)

; </end encoding val FStar.Seq.Base.length>


; <Start encoding val FStar.Seq.Base.seq_to_list>

(declare-fun FStar.Seq.Base.seq_to_list (Term Term) Term)
(declare-fun Tm_refine_c4e3a92f9bd1d01a07e4fb66c5de2e7e (Term Term) Term)
(declare-fun Tm_arrow_7d1aeb9cf9244f8c50e0ad901486a03b () Term)
(declare-fun FStar.Seq.Base.seq_to_list@tok () Term)


; </end encoding val FStar.Seq.Base.seq_to_list>


; <Start encoding val FStar.Seq.Base.seq_of_list>

(declare-fun FStar.Seq.Base.seq_of_list (Term Term) Term)
(declare-fun Tm_refine_d2d1ea66f2b3a92c2deb42edcbb784ce (Term Term) Term)
(declare-fun Tm_arrow_4966fa2986a35d9c0803c863a2768cbd () Term)
(declare-fun FStar.Seq.Base.seq_of_list@tok () Term)


; </end encoding val FStar.Seq.Base.seq_of_list>


; <Start encoding val FStar.Seq.Base.index>

(declare-fun Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 (Term Term) Term)
(declare-fun FStar.Seq.Base.index (Term Term Term) Term)

(declare-fun Tm_arrow_1910ef5262f2ee8e712b6609a232b1ea () Term)
(declare-fun FStar.Seq.Base.index@tok () Term)

; </end encoding val FStar.Seq.Base.index>


; <Start encoding val FStar.Seq.Base.create>

(declare-fun FStar.Seq.Base.create (Term Term Term) Term)
(declare-fun Tm_arrow_b5b3d4fcc48eb666a8878550e50df9fb () Term)
(declare-fun FStar.Seq.Base.create@tok () Term)

; </end encoding val FStar.Seq.Base.create>


; <Start encoding val FStar.Seq.Base.init_aux>

(declare-fun Tm_refine_c1424615841f28cac7fc34e92b7ff33c (Term) Term)

(declare-fun Tm_arrow_44bb45ed5c2534b346e0f58ea5033251 (Term Term) Term)
(declare-fun FStar.Seq.Base.init_aux (Term Term Term Term) Term)



(declare-fun Tm_arrow_da6bbab10714c064205223f9990745bd () Term)
(declare-fun FStar.Seq.Base.init_aux@tok () Term)

; </end encoding val FStar.Seq.Base.init_aux>


; <Start encoding val FStar.Seq.Base.init>



(declare-fun FStar.Seq.Base.init (Term Term Term) Term)


(declare-fun Tm_arrow_d638d84259a58eff38c91944355ac313 () Term)
(declare-fun FStar.Seq.Base.init@tok () Term)

; </end encoding val FStar.Seq.Base.init>


; <Start encoding val FStar.Seq.Base.init_aux_ghost>



(declare-fun Tm_ghost_arrow_b7c239afcc620812134a759b53cafcc7 (Term Term) Term)
(declare-fun FStar.Seq.Base.init_aux_ghost (Term Term Term Term) Term)



(declare-fun Tm_ghost_arrow_90c084cce85ad5fa9b6789a83ba7b9d5 () Term)
(declare-fun FStar.Seq.Base.init_aux_ghost@tok () Term)

; </end encoding val FStar.Seq.Base.init_aux_ghost>


; <Start encoding val FStar.Seq.Base.init_ghost>



(declare-fun FStar.Seq.Base.init_ghost (Term Term Term) Term)


(declare-fun Tm_ghost_arrow_dc3e2497ae3914facc1bb3cecddbafe4 () Term)
(declare-fun FStar.Seq.Base.init_ghost@tok () Term)

; </end encoding val FStar.Seq.Base.init_ghost>


; <Start encoding val FStar.Seq.Base.empty>

(declare-fun FStar.Seq.Base.empty (Term) Term)
(declare-fun Tm_refine_b913a3f691ca99086652e0a655e72f17 (Term) Term)
(declare-fun Tm_arrow_c39fb4e3e203a822394c714f70ec2d2c () Term)
(declare-fun FStar.Seq.Base.empty@tok () Term)


; </end encoding val FStar.Seq.Base.empty>


; <Start encoding let createEmpty>

(declare-fun FStar.Seq.Base.createEmpty (Term) Term)


(declare-fun FStar.Seq.Base.createEmpty@tok () Term)


; </end encoding let createEmpty>


; <Start encoding val FStar.Seq.Base.lemma_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_empty@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_empty>


; <Start encoding val FStar.Seq.Base.upd>


(declare-fun FStar.Seq.Base.upd (Term Term Term Term) Term)

(declare-fun Tm_arrow_12766e98f50c8b91e296bbc369061265 () Term)
(declare-fun FStar.Seq.Base.upd@tok () Term)

; </end encoding val FStar.Seq.Base.upd>


; <Start encoding val FStar.Seq.Base.append>

(declare-fun FStar.Seq.Base.append (Term Term Term) Term)
(declare-fun Tm_arrow_22c1b165cc91e8aafbceb8b36244be8e () Term)
(declare-fun FStar.Seq.Base.append@tok () Term)

; </end encoding val FStar.Seq.Base.append>


; <Start encoding let cons>

(declare-fun FStar.Seq.Base.cons (Term Term Term) Term)
(declare-fun Tm_arrow_62ad6018b578ef7ed3c0e74bdebff729 () Term)
(declare-fun FStar.Seq.Base.cons@tok () Term)

; </end encoding let cons>


; <Start encoding let op_At_Bar>

(declare-fun FStar.Seq.Base.op_At_Bar (Term Term Term) Term)

(declare-fun FStar.Seq.Base.op_At_Bar@tok () Term)

; </end encoding let op_At_Bar>


; <Start encoding val FStar.Seq.Base.slice>

(declare-fun Tm_refine_81407705a0828c2c1b1976675443f647 (Term Term Term) Term)
(declare-fun FStar.Seq.Base.slice (Term Term Term Term) Term)

(declare-fun Tm_arrow_f59809c98fadf275c00ce819f5868628 () Term)
(declare-fun FStar.Seq.Base.slice@tok () Term)

; </end encoding val FStar.Seq.Base.slice>


; <Start encoding val FStar.Seq.Base.lemma_seq_of_seq_to_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_seq_to_list (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_seq_to_list@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_of_seq_to_list>


; <Start encoding val FStar.Seq.Base.lemma_seq_to_seq_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_seq_of_list (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_seq_of_list@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_to_seq_of_list>


; <Start encoding val FStar.Seq.Base.lemma_seq_of_list_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_list_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_list_cons@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_of_list_cons>


; <Start encoding val FStar.Seq.Base.lemma_seq_to_list_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_list_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_list_cons@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_to_list_cons>


; <Start encoding val FStar.Seq.Base.lemma_create_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_create_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_create_len@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_create_len>


; <Start encoding val FStar.Seq.Base.lemma_init_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_len@tok () Term)



; </end encoding val FStar.Seq.Base.lemma_init_len>


; <Start encoding val FStar.Seq.Base.lemma_init_aux_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_aux_len (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_aux_len@tok () Term)




; </end encoding val FStar.Seq.Base.lemma_init_aux_len>


; <Start encoding val FStar.Seq.Base.lemma_init_ghost_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_len@tok () Term)



; </end encoding val FStar.Seq.Base.lemma_init_ghost_len>


; <Start encoding val FStar.Seq.Base.lemma_init_ghost_aux_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_aux_len (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_aux_len@tok () Term)




; </end encoding val FStar.Seq.Base.lemma_init_ghost_aux_len>


; <Start encoding val FStar.Seq.Base.lemma_len_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_len_upd (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_len_upd@tok () Term)
(declare-fun Tm_refine_2ca062977a42c36634b89c1c4f193f79 (Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_len_upd>


; <Start encoding val FStar.Seq.Base.lemma_len_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_len_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_len_append@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_len_append>


; <Start encoding val FStar.Seq.Base.lemma_len_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_len_slice (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_len_slice@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_len_slice>


; <Start encoding val FStar.Seq.Base.lemma_index_create>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_create (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_create@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_index_create>


; <Start encoding val FStar.Seq.Base.lemma_index_upd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd1@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_index_upd1>


; <Start encoding val FStar.Seq.Base.lemma_index_upd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd2@tok () Term)

(declare-fun Tm_refine_df81b3f17797c6f405c1dbb191651292 (Term Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_index_upd2>


; <Start encoding val FStar.Seq.Base.lemma_index_app1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_app1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_app1@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_index_app1>


; <Start encoding val FStar.Seq.Base.lemma_index_app2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_app2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_app2@tok () Term)
(declare-fun Tm_refine_ac201cf927190d39c033967b63cb957b (Term Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_index_app2>


; <Start encoding val FStar.Seq.Base.lemma_index_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_slice (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_slice@tok () Term)
(declare-fun Tm_refine_d3d07693cd71377864ef84dc97d10ec1 (Term Term Term) Term)
(declare-fun Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 (Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_index_slice>


; <Start encoding val FStar.Seq.Base.hasEq_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.hasEq_lemma (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.hasEq_lemma@tok () Term)

; </end encoding val FStar.Seq.Base.hasEq_lemma>


; <Start encoding val FStar.Seq.Base.equal>

(declare-fun FStar.Seq.Base.equal (Term Term Term) Term)
(declare-fun Tm_arrow_c2c0a5f39eee7a5a92db8bac6fe4fb3b () Term)
(declare-fun FStar.Seq.Base.equal@tok () Term)

; </end encoding val FStar.Seq.Base.equal>


; <Start encoding val FStar.Seq.Base.eq_i>

(declare-fun Tm_refine_4639d389381bee5cf8cf77b7a6585074 (Term Term) Term)
(declare-fun Tm_refine_b361ba8089a6e963921008d537e799a1 (Term Term) Term)
(declare-fun FStar.Seq.Base.eq_i (Term Term Term Term) Term)


(declare-fun Tm_refine_331c14d442c5ee89a4fce6ea305c920f (Term Term Term) Term)
(declare-fun Tm_refine_51f956555266662f5f0ed4aac81d10bc (Term Term Term Term) Term)
(declare-fun Tm_arrow_e5286e13b5c071949ebc5146fbef7d7f () Term)
(declare-fun FStar.Seq.Base.eq_i@tok () Term)



; </end encoding val FStar.Seq.Base.eq_i>


; <Start encoding val FStar.Seq.Base.eq>

(declare-fun FStar.Seq.Base.eq (Term Term Term) Term)
(declare-fun Tm_refine_1c0effbdef48f9b00a1efb7b571fbb69 (Term Term Term) Term)
(declare-fun Tm_arrow_70ef1e4b9388d8aa6e0d17c5aeed02a7 () Term)
(declare-fun FStar.Seq.Base.eq@tok () Term)


; </end encoding val FStar.Seq.Base.eq>


; <Start encoding val FStar.Seq.Base.lemma_eq_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_eq_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_eq_intro@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_eq_intro>


; <Start encoding val FStar.Seq.Base.lemma_eq_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_eq_refl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_eq_refl@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_eq_refl>


; <Start encoding val FStar.Seq.Base.lemma_eq_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_eq_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_eq_elim@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_eq_elim>


; <Start encoding val FStar.Seq.Base.append_assoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.append_assoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.append_assoc@tok () Term)

; </end encoding val FStar.Seq.Base.append_assoc>


; <Start encoding val FStar.Seq.Base.append_empty_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.append_empty_l (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.append_empty_l@tok () Term)

; </end encoding val FStar.Seq.Base.append_empty_l>


; <Start encoding val FStar.Seq.Base.append_empty_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.append_empty_r (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.append_empty_r@tok () Term)

; </end encoding val FStar.Seq.Base.append_empty_r>


; <Start encoding val FStar.Seq.Base.init_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_index@tok () Term)

; </end encoding val FStar.Seq.Base.init_index>


; <Start encoding val FStar.Seq.Base.init_index_>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_index_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_index_@tok () Term)



; </end encoding val FStar.Seq.Base.init_index_>


; <Start encoding val FStar.Seq.Base.init_ghost_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_ghost_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_ghost_index@tok () Term)

; </end encoding val FStar.Seq.Base.init_ghost_index>


; <Start encoding val FStar.Seq.Base.init_ghost_index_>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_ghost_index_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_ghost_index_@tok () Term)



; </end encoding val FStar.Seq.Base.init_ghost_index_>


; <Start encoding val FStar.Seq.Base.lemma_equal_instances_implies_equal_types>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_equal_instances_implies_equal_types (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_equal_instances_implies_equal_types@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_equal_instances_implies_equal_types>


; End Externals for interface FStar.Seq.Base


; Externals for interface FStar.Seq.Properties


; <Start encoding let lseq>

(declare-fun FStar.Seq.Properties.lseq (Term Term) Term)

(declare-fun FStar.Seq.Properties.lseq@tok () Term)
(declare-fun Tm_refine_a0cd7d06c5da6444b6b51b319febde8e (Term Term) Term)

; </end encoding let lseq>


; <Start encoding let indexable>

(declare-fun FStar.Seq.Properties.indexable (Term Term Term) Term)
(declare-fun Tm_arrow_2c0367dd991d12c77178c7fe63f076c5 () Term)
(declare-fun FStar.Seq.Properties.indexable@tok () Term)

; </end encoding let indexable>


; <Start encoding val FStar.Seq.Properties.lemma_append_inj_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_l (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_l@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_inj_l>


; <Start encoding val FStar.Seq.Properties.lemma_append_inj_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_r (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_r@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_inj_r>


; <Start encoding val FStar.Seq.Properties.lemma_append_len_disj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_len_disj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_len_disj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_len_disj>


; <Start encoding val FStar.Seq.Properties.lemma_append_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_inj>


; <Start encoding let head>

(declare-fun Tm_refine_167ef714932ec832fb671890fc3eee6c (Term) Term)
(declare-fun FStar.Seq.Properties.head (Term Term) Term)

(declare-fun Tm_arrow_fde6b9111cb8aaf87a1b6689af62ed69 () Term)
(declare-fun FStar.Seq.Properties.head@tok () Term)


; </end encoding let head>


; <Start encoding let tail>


(declare-fun FStar.Seq.Properties.tail (Term Term) Term)

(declare-fun Tm_arrow_3db93b3d63ab329f9ab58ee76fda4c87 () Term)
(declare-fun FStar.Seq.Properties.tail@tok () Term)


; </end encoding let tail>


; <Start encoding val FStar.Seq.Properties.lemma_head_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_head_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_head_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_head_append>


; <Start encoding val FStar.Seq.Properties.lemma_tail_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_tail_append>


; <Start encoding let last>


(declare-fun FStar.Seq.Properties.last (Term Term) Term)


(declare-fun FStar.Seq.Properties.last@tok () Term)


; </end encoding let last>


; <Start encoding val FStar.Seq.Properties.lemma_cons_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_inj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_inj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_cons_inj>


; <Start encoding let split>

(declare-fun Tm_refine_17631fa6304dcc08d028bd475a6dd078 (Term Term) Term)
(declare-fun FStar.Seq.Properties.split (Term Term Term) Term)

(declare-fun Tm_arrow_e8094a245058e1a3364fcb54e52c4b61 () Term)
(declare-fun FStar.Seq.Properties.split@tok () Term)


; </end encoding let split>


; <Start encoding val FStar.Seq.Properties.lemma_split>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_split (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_split@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_split>


; <Start encoding let split_eq>


(declare-fun FStar.Seq.Properties.split_eq (Term Term Term) Term)

(declare-fun Tm_refine_78d42c5dbba01ee594272daa6bb0579c (Term Term) Term)
(declare-fun Tm_arrow_b88932abf1506cfe956c7a113bc65f4b () Term)
(declare-fun FStar.Seq.Properties.split_eq@tok () Term)



; </end encoding let split_eq>


; <Start encoding let rec count>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.count.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.count.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.count (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.count@tok () Term)
(declare-fun Tm_arrow_b68daf91c98458f9ea85290d85674a2e () Term)

; </end encoding let rec count>


; <Start encoding let mem>

(declare-fun FStar.Seq.Properties.mem (Term Term Term) Term)
(declare-fun Tm_arrow_8b9021eb78c56c0f1820182c3a3e44b5 () Term)
(declare-fun FStar.Seq.Properties.mem@tok () Term)

; </end encoding let mem>


; <Start encoding val FStar.Seq.Properties.mem_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.mem_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.mem_index@tok () Term)

; </end encoding val FStar.Seq.Properties.mem_index>


; <Start encoding let rec index_mem>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.index_mem.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.index_mem.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.index_mem (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.index_mem@tok () Term)
(declare-fun Tm_refine_7c92df3cf71635bc41483532e738d828 (Term Term Term) Term)

(declare-fun Tm_arrow_12def5646e9a05cc547dd67c2eeaec45 () Term)


; </end encoding let rec index_mem>


; <Start encoding let swap>



(declare-fun FStar.Seq.Properties.swap (Term Term Term Term) Term)


(declare-fun Tm_arrow_ed5530d89236443143d2d084ddc97069 () Term)
(declare-fun FStar.Seq.Properties.swap@tok () Term)



; </end encoding let swap>


; <Start encoding val FStar.Seq.Properties.lemma_slice_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_append>


; <Start encoding val FStar.Seq.Properties.lemma_slice_first_in_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_first_in_append (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_first_in_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_first_in_append>


; <Start encoding val FStar.Seq.Properties.slice_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_upd (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_upd@tok () Term)



; </end encoding val FStar.Seq.Properties.slice_upd>


; <Start encoding val FStar.Seq.Properties.upd_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.upd_slice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.upd_slice@tok () Term)



; </end encoding val FStar.Seq.Properties.upd_slice>


; <Start encoding val FStar.Seq.Properties.lemma_append_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_cons>


; <Start encoding val FStar.Seq.Properties.lemma_tl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tl@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_tl>


; <Start encoding let rec sorted>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.sorted.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.sorted.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.sorted (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.sorted@tok () Term)



(declare-fun Tm_arrow_28685b742721099a6ab3847e4434a96d () Term)

; </end encoding let rec sorted>


; <Start encoding val FStar.Seq.Properties.sorted_feq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.sorted_feq (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.sorted_feq@tok () Term)

; </end encoding val FStar.Seq.Properties.sorted_feq>


; <Start encoding val FStar.Seq.Properties.lemma_append_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_count>


; <Start encoding val FStar.Seq.Properties.lemma_append_count_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count_aux (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count_aux@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_count_aux>


; <Start encoding val FStar.Seq.Properties.lemma_mem_inversion>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_inversion (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_inversion@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_inversion>


; <Start encoding val FStar.Seq.Properties.lemma_mem_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_count (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_count@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_count>


; <Start encoding val FStar.Seq.Properties.lemma_count_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_count_slice (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_count_slice@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_count_slice>


; <Start encoding let total_order>


(declare-fun FStar.Seq.Properties.total_order (Term Term) Term)

(declare-fun Tm_arrow_1118b25cace7451b1e5dfdfe482dbb64 () Term)
(declare-fun FStar.Seq.Properties.total_order@tok () Term)


; </end encoding let total_order>


; <Start encoding let tot_ord>

(declare-fun FStar.Seq.Properties.tot_ord (Term) Term)

(declare-fun FStar.Seq.Properties.tot_ord@tok () Term)

(declare-fun Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 (Term) Term)

; </end encoding let tot_ord>


; <Start encoding val FStar.Seq.Properties.sorted_concat_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.sorted_concat_lemma (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.sorted_concat_lemma@tok () Term)

; </end encoding val FStar.Seq.Properties.sorted_concat_lemma>


; <Start encoding val FStar.Seq.Properties.split_5>

(declare-fun Tm_refine_55108d29d63192475ca95f591039cc18 (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.split_5 (Term Term Term Term) Term)

(declare-fun Tm_refine_03fdfb031367b218884098aa9d386676 (Term Term Term Term) Term)
(declare-fun Tm_arrow_1ab34f107de5525c681399e3c671c330 () Term)
(declare-fun FStar.Seq.Properties.split_5@tok () Term)


; </end encoding val FStar.Seq.Properties.split_5>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes_aux>


; <Start encoding let permutation>

(declare-fun FStar.Seq.Properties.permutation (Term Term Term) Term)
(declare-fun Tm_arrow_05517904f5779069bb79d90a352f1386 () Term)
(declare-fun FStar.Seq.Properties.permutation@tok () Term)

; </end encoding let permutation>


; <Start encoding val FStar.Seq.Properties.append_permutations>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_permutations (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_permutations@tok () Term)

; </end encoding val FStar.Seq.Properties.append_permutations>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes>


; <Start encoding val FStar.Seq.Properties.perm_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.perm_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.perm_len@tok () Term)

; </end encoding val FStar.Seq.Properties.perm_len>


; <Start encoding val FStar.Seq.Properties.cons_perm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.cons_perm (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.cons_perm@tok () Term)

; </end encoding val FStar.Seq.Properties.cons_perm>


; <Start encoding val FStar.Seq.Properties.lemma_mem_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_append>


; <Start encoding val FStar.Seq.Properties.lemma_slice_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_cons>


; <Start encoding val FStar.Seq.Properties.lemma_slice_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_ordering_lo_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_lo_snoc (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_lo_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_ordering_lo_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_ordering_hi_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_hi_cons (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_hi_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_ordering_hi_cons>


; <Start encoding val FStar.Seq.Properties.swap_frame_lo>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo@tok () Term)

; </end encoding val FStar.Seq.Properties.swap_frame_lo>


; <Start encoding val FStar.Seq.Properties.swap_frame_lo'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo_ (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo_@tok () Term)

; </end encoding val FStar.Seq.Properties.swap_frame_lo'>


; <Start encoding val FStar.Seq.Properties.swap_frame_hi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.swap_frame_hi (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.swap_frame_hi@tok () Term)

; </end encoding val FStar.Seq.Properties.swap_frame_hi>


; <Start encoding val FStar.Seq.Properties.lemma_swap_slice_commute>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_slice_commute (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_slice_commute@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_slice_commute>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_slice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_slice@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes_slice>


; <Start encoding let splice>



(declare-fun FStar.Seq.Properties.splice (Term Term Term Term Term) Term)


(declare-fun Tm_arrow_c43a25ef505b9db21532cdb95f3c9f68 () Term)
(declare-fun FStar.Seq.Properties.splice@tok () Term)



; </end encoding let splice>


; <Start encoding let replace_subseq>


(declare-fun Tm_refine_5542011d20872a6178aad9a072f1b686 (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.replace_subseq (Term Term Term Term Term) Term)


(declare-fun Tm_arrow_9fa775abc8f8f9c4e6df626212cddc6a () Term)
(declare-fun FStar.Seq.Properties.replace_subseq@tok () Term)



; </end encoding let replace_subseq>


; <Start encoding val FStar.Seq.Properties.splice_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.splice_refl (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.splice_refl@tok () Term)

; </end encoding val FStar.Seq.Properties.splice_refl>


; <Start encoding val FStar.Seq.Properties.lemma_swap_splice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_splice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_splice@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_splice>


; <Start encoding val FStar.Seq.Properties.lemma_seq_frame_hi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_hi (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_hi@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_frame_hi>


; <Start encoding val FStar.Seq.Properties.lemma_seq_frame_lo>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_lo (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_lo@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_frame_lo>


; <Start encoding val FStar.Seq.Properties.lemma_tail_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_slice (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_slice@tok () Term)
(declare-fun Tm_refine_b138bd5848d4184f7632587e6e4bcf9f (Term Term Term) Term)

; </end encoding val FStar.Seq.Properties.lemma_tail_slice>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_frame_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_right (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_right@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_frame_right>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_frame_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_left (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_left@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_frame_left>


; <Start encoding val FStar.Seq.Properties.lemma_trans_frame>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_frame (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_frame@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_trans_frame>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_perm_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_left (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_left@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_perm_left>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_perm_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_right (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_right@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_perm_right>


; <Start encoding val FStar.Seq.Properties.lemma_trans_perm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_perm (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_perm@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_trans_perm>


; <Start encoding let snoc>

(declare-fun FStar.Seq.Properties.snoc (Term Term Term) Term)
(declare-fun Tm_arrow_f9b27de7c4505538c6110afe14403cc8 () Term)
(declare-fun FStar.Seq.Properties.snoc@tok () Term)

; </end encoding let snoc>


; <Start encoding val FStar.Seq.Properties.lemma_cons_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_cons_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_tail_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_tail_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_snoc_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_snoc_inj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_snoc_inj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_snoc_inj>


; <Start encoding val FStar.Seq.Properties.lemma_mem_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_snoc>


; <Start encoding let rec find_l>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.find_l.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.find_l.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.find_l (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.find_l@tok () Term)

(declare-fun Tm_refine_aba7638072c8f1ba6a01b95ec6f9a485 (Term Term) Term)



(declare-fun Tm_arrow_fd183dc9552028fd54abfbe4a84f515a () Term)


; </end encoding let rec find_l>


; <Start encoding let rec ghost_find_l>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.ghost_find_l.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.ghost_find_l.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.ghost_find_l (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.ghost_find_l@tok () Term)
(declare-fun Tm_ghost_arrow_9a34a9deaac3ca72ad48c3ec79b6656c (Term) Term)




(declare-fun Tm_ghost_arrow_3f8a537d0d54200d690f80a370cf9031 () Term)


; </end encoding let rec ghost_find_l>


; <Start encoding val FStar.Seq.Properties.find_append_some>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_append_some (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_append_some@tok () Term)

; </end encoding val FStar.Seq.Properties.find_append_some>


; <Start encoding val FStar.Seq.Properties.find_append_none>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_append_none (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_append_none@tok () Term)

; </end encoding val FStar.Seq.Properties.find_append_none>


; <Start encoding val FStar.Seq.Properties.find_append_none_s2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_append_none_s2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_append_none_s2@tok () Term)

; </end encoding val FStar.Seq.Properties.find_append_none_s2>


; <Start encoding val FStar.Seq.Properties.find_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.find_snoc>


; <Start encoding let un_snoc>

(declare-fun Tm_refine_5739deb21d8cba89243fec27b35b7ef0 (Term) Term)
(declare-fun FStar.Seq.Properties.un_snoc (Term Term) Term)

(declare-fun Tm_refine_16326afaeb5f4d93ab294cc4a965de3e (Term Term) Term)
(declare-fun Tm_arrow_30c2910b2510bbce2598a79ba00a0209 () Term)
(declare-fun FStar.Seq.Properties.un_snoc@tok () Term)



; </end encoding let un_snoc>


; <Start encoding val FStar.Seq.Properties.un_snoc_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.un_snoc_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.un_snoc_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.un_snoc_snoc>


; <Start encoding let rec find_r>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.find_r.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.find_r.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.find_r (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.find_r@tok () Term)








; </end encoding let rec find_r>


; <Start encoding let found>

(declare-fun FStar.Seq.Properties.found (Term) Term)
(declare-fun Tm_arrow_591bcdc53dc583ecc77b1bc5436f9a59 () Term)
(declare-fun FStar.Seq.Properties.found@tok () Term)

; </end encoding let found>


; <Start encoding let rec seq_find_aux>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.seq_find_aux.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.seq_find_aux.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.seq_find_aux (Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.seq_find_aux@tok () Term)


(declare-fun Tm_refine_564e05c43cb7c1f4e1de1a4fb2fd28c8 (Term Term Term) Term)


(declare-fun Tm_refine_5e8ab89510578a938a38bd5dfb813b93 (Term Term Term) Term)









(declare-fun Tm_arrow_c2dc7826f3281f473541797eb2d714b7 () Term)




; </end encoding let rec seq_find_aux>


; <Start encoding let seq_find>


(declare-fun FStar.Seq.Properties.seq_find (Term Term Term) Term)




(declare-fun Tm_arrow_fa1508f34cdf614c6772d290f5ddf827 () Term)
(declare-fun FStar.Seq.Properties.seq_find@tok () Term)





; </end encoding let seq_find>


; <Start encoding val FStar.Seq.Properties.find_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_mem (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_mem@tok () Term)

; </end encoding val FStar.Seq.Properties.find_mem>


; <Start encoding let for_all>


(declare-fun FStar.Seq.Properties.for_all (Term Term Term) Term)


(declare-fun Tm_refine_307fd373d8b3749096cf164b41cf1984 (Term Term Term) Term)
(declare-fun Tm_arrow_098d0ddce18f722cb743337c9d7dd0b9 () Term)
(declare-fun FStar.Seq.Properties.for_all@tok () Term)




(declare-fun Tm_abs_e818836335067047224d0c19c4cabb2d (Term Term) Term)

; </end encoding let for_all>


; <Start encoding val FStar.Seq.Properties.seq_mem_k>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.seq_mem_k (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.seq_mem_k@tok () Term)


; </end encoding val FStar.Seq.Properties.seq_mem_k>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_induction>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_induction (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_induction@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_induction>


; <Start encoding val FStar.Seq.Properties.lemma_seq_list_bij>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_list_bij (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_list_bij@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_list_bij>


; <Start encoding val FStar.Seq.Properties.lemma_list_seq_bij>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_list_seq_bij (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_list_seq_bij@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_list_seq_bij>


; <Start encoding let createL_post>

(declare-fun FStar.Seq.Properties.createL_post (Term Term Term) Term)
(declare-fun Tm_arrow_befeea9093c61a572da65bfe7ce35cff () Term)
(declare-fun FStar.Seq.Properties.createL_post@tok () Term)
(declare-fun Tm_refine_1780a0fddfda88c43d203b562c6d3f5b () Term)

; </end encoding let createL_post>


; <Start encoding let createL>

(declare-fun FStar.Seq.Properties.createL (Term Term) Term)

(declare-fun Tm_refine_21ffdca6c0b13e0caadadae84ae105ad (Term Term) Term)
(declare-fun Tm_arrow_fe4a88707901fac19b8a27ed4097cad8 () Term)
(declare-fun FStar.Seq.Properties.createL@tok () Term)



; </end encoding let createL>


; <Start encoding val FStar.Seq.Properties.lemma_index_is_nth>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_index_is_nth (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_index_is_nth@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_index_is_nth>


; <Start encoding val FStar.Seq.Properties.contains>

(declare-fun FStar.Seq.Properties.contains (Term Term Term) Term)
(declare-fun Tm_arrow_65d0102b1211a5d233193433129106a1 () Term)
(declare-fun FStar.Seq.Properties.contains@tok () Term)

; </end encoding val FStar.Seq.Properties.contains>


; <Start encoding val FStar.Seq.Properties.contains_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_intro (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_intro@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_intro>


; <Start encoding val FStar.Seq.Properties.contains_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_elim@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_elim>


; <Start encoding val FStar.Seq.Properties.lemma_contains_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_empty (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_empty@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_contains_empty>


; <Start encoding val FStar.Seq.Properties.lemma_contains_singleton>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_singleton (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_singleton@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_contains_singleton>


; <Start encoding val FStar.Seq.Properties.append_contains_equiv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_contains_equiv (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_contains_equiv@tok () Term)

; </end encoding val FStar.Seq.Properties.append_contains_equiv>


; <Start encoding val FStar.Seq.Properties.contains_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_find_l_contains>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_find_l_contains (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_find_l_contains@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_find_l_contains>


; <Start encoding val FStar.Seq.Properties.contains_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_cons>


; <Start encoding val FStar.Seq.Properties.append_cons_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_cons_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_cons_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.append_cons_snoc>


; <Start encoding val FStar.Seq.Properties.append_slices>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_slices (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_slices@tok () Term)

; </end encoding val FStar.Seq.Properties.append_slices>


; <Start encoding val FStar.Seq.Properties.find_l_none_no_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_l_none_no_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_l_none_no_index@tok () Term)

; </end encoding val FStar.Seq.Properties.find_l_none_no_index>


; <Start encoding let suffix_of>

(declare-fun FStar.Seq.Properties.suffix_of (Term Term Term) Term)
(declare-fun Tm_arrow_2ed6082b86d605508c94c4b8a46966f5 () Term)
(declare-fun FStar.Seq.Properties.suffix_of@tok () Term)

; </end encoding let suffix_of>


; <Start encoding val FStar.Seq.Properties.cons_head_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.cons_head_tail (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.cons_head_tail@tok () Term)


; </end encoding val FStar.Seq.Properties.cons_head_tail>


; <Start encoding val FStar.Seq.Properties.head_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.head_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.head_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.head_cons>


; <Start encoding val FStar.Seq.Properties.suffix_of_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.suffix_of_tail (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.suffix_of_tail@tok () Term)


; </end encoding val FStar.Seq.Properties.suffix_of_tail>


; <Start encoding val FStar.Seq.Properties.index_cons_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.index_cons_l (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.index_cons_l@tok () Term)

; </end encoding val FStar.Seq.Properties.index_cons_l>


; <Start encoding val FStar.Seq.Properties.index_cons_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.index_cons_r (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.index_cons_r@tok () Term)

; </end encoding val FStar.Seq.Properties.index_cons_r>


; <Start encoding val FStar.Seq.Properties.append_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.append_cons>


; <Start encoding val FStar.Seq.Properties.index_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.index_tail (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.index_tail@tok () Term)

; </end encoding val FStar.Seq.Properties.index_tail>


; <Start encoding val FStar.Seq.Properties.mem_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.mem_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.mem_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.mem_cons>


; <Start encoding val FStar.Seq.Properties.snoc_slice_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.snoc_slice_index (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.snoc_slice_index@tok () Term)
(declare-fun Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 (Term Term Term) Term)

; </end encoding val FStar.Seq.Properties.snoc_slice_index>


; <Start encoding val FStar.Seq.Properties.cons_index_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.cons_index_slice (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.cons_index_slice@tok () Term)
(declare-fun Tm_refine_09d2e9ab3b9c121b24316d151747e281 (Term Term Term) Term)
(declare-fun Tm_refine_ddd44b85040d1947cca83550b7e21966 (Term) Term)

; </end encoding val FStar.Seq.Properties.cons_index_slice>


; <Start encoding val FStar.Seq.Properties.slice_is_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_is_empty (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_is_empty@tok () Term)


; </end encoding val FStar.Seq.Properties.slice_is_empty>


; <Start encoding val FStar.Seq.Properties.slice_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_length@tok () Term)

; </end encoding val FStar.Seq.Properties.slice_length>


; <Start encoding val FStar.Seq.Properties.slice_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_slice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_slice@tok () Term)

(declare-fun Tm_refine_1ba8fd8bb363097813064c67740b2de5 (Term Term Term) Term)

; </end encoding val FStar.Seq.Properties.slice_slice>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_index@tok () Term)


; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_index>


; <Start encoding let of_list>

(declare-fun FStar.Seq.Properties.of_list (Term Term) Term)
(declare-fun Tm_arrow_474463878fff5c7c9c02e4f0b8b84aa8 () Term)
(declare-fun FStar.Seq.Properties.of_list@tok () Term)

; </end encoding let of_list>


; <Start encoding val FStar.Seq.Properties.seq_of_list_tl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.seq_of_list_tl (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.seq_of_list_tl@tok () Term)

; </end encoding val FStar.Seq.Properties.seq_of_list_tl>


; <Start encoding val FStar.Seq.Properties.mem_seq_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.mem_seq_of_list (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.mem_seq_of_list@tok () Term)

; </end encoding val FStar.Seq.Properties.mem_seq_of_list>


; <Start encoding let rec explode_and>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.explode_and.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.explode_and.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.explode_and (Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.explode_and@tok () Term)
(declare-fun Tm_refine_5885c715bf599d471c43c6b7dcb2413b (Term Term) Term)
(declare-fun Tm_refine_c731267dd71b747abfd9fc75f6f2da81 (Term Term Term) Term)




(declare-fun Tm_arrow_62bce6f622c5bc90fd46048dee6dae55 () Term)

; </end encoding let rec explode_and>


; <Start encoding let pointwise_and>

(declare-fun Tm_refine_9f068c7f6ce275579028a195ac18485b (Term) Term)
(declare-fun Tm_refine_1ad818e6438a897337e89a3053cb2002 (Term Term) Term)
(declare-fun FStar.Seq.Properties.pointwise_and (Term Term Term) Term)


(declare-fun Tm_arrow_1d69c34f503e87805d9fa1b40bc9b696 () Term)
(declare-fun FStar.Seq.Properties.pointwise_and@tok () Term)



; </end encoding let pointwise_and>


; <Start encoding val FStar.Seq.Properties.intro_of_list'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.intro_of_list_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.intro_of_list_@tok () Term)

; </end encoding val FStar.Seq.Properties.intro_of_list'>


; <Start encoding val FStar.Seq.Properties.intro_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.intro_of_list (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.intro_of_list@tok () Term)

; </end encoding val FStar.Seq.Properties.intro_of_list>


; <Start encoding val FStar.Seq.Properties.elim_of_list'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.elim_of_list_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.elim_of_list_@tok () Term)

; </end encoding val FStar.Seq.Properties.elim_of_list'>


; <Start encoding val FStar.Seq.Properties.elim_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.elim_of_list (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.elim_of_list@tok () Term)

; </end encoding val FStar.Seq.Properties.elim_of_list>


; <Start encoding let sortWith>


(declare-fun FStar.Seq.Properties.sortWith (Term Term Term) Term)

(declare-fun Tm_arrow_783d577ed6adadfd234f2ce68178463f () Term)
(declare-fun FStar.Seq.Properties.sortWith@tok () Term)


; </end encoding let sortWith>


; <Start encoding val FStar.Seq.Properties.lemma_seq_to_list_permutation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_to_list_permutation (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_to_list_permutation@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_to_list_permutation>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_permutation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_permutation (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_permutation@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_permutation>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_sorted>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_sorted (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_sorted@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_sorted>


; <Start encoding val FStar.Seq.Properties.lemma_seq_sortwith_correctness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_sortwith_correctness (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_sortwith_correctness@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_sortwith_correctness>


; <Start encoding let sort_lseq>

(declare-fun FStar.Seq.Properties.sort_lseq (Term Term Term Term) Term)
(declare-fun Tm_refine_896d0573468d5c87de125067e75d7d47 (Term Term Term Term) Term)
(declare-fun Tm_arrow_3fb7de3746e0ee65d4a1a51ab385c639 () Term)
(declare-fun FStar.Seq.Properties.sort_lseq@tok () Term)


; </end encoding let sort_lseq>


; <Start encoding let rec foldr>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.foldr.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.foldr.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.foldr (Term Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.foldr@tok () Term)



(declare-fun Tm_arrow_d44e7807ff692a4b5f624a4c31f6a34b () Term)

; </end encoding let rec foldr>


; <Start encoding let rec foldr_snoc>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.foldr_snoc.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.foldr_snoc.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.foldr_snoc (Term Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.foldr_snoc@tok () Term)





; </end encoding let rec foldr_snoc>


; <Start encoding val FStar.Seq.Properties.map_seq>


(declare-fun FStar.Seq.Properties.map_seq (Term Term Term Term) Term)

(declare-fun Tm_arrow_5f9288474a8f301ac883b79bab9ed39c () Term)
(declare-fun FStar.Seq.Properties.map_seq@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq>


; <Start encoding val FStar.Seq.Properties.map_seq_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.map_seq_len (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.map_seq_len@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq_len>


; <Start encoding val FStar.Seq.Properties.map_seq_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.map_seq_index (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.map_seq_index@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq_index>


; <Start encoding val FStar.Seq.Properties.map_seq_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.map_seq_append (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.map_seq_append@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq_append>


; End Externals for interface FStar.Seq.Properties


; Externals for module FStar.Seq


; End Externals for module FStar.Seq

(push) ;; push{1

; Internals for QuickSort.Seq


; encoding sigelt #reset-options "--z3rlimit 100 --max_fuel 0 --initial_fuel 0 --initial_ifuel 0 --max_ifuel 0"


; <Skipped #reset-options "--z3rlimit 100 --max_fuel 0 --initial_fuel 0 --initial_ifuel 0 --max_ifuel 0"/>

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
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Prims.nat
Tm_type)
:named typing_Prims.nat))
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
;;; Fact-ids: Name FStar.Seq.Properties.total_order; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(155,5-155,16); use=FStar.Seq.Properties.fsti(155,5-155,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x0)))
(HasType (FStar.Seq.Properties.total_order @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Seq.Properties.total_order @x0
@x1))
:qid typing_FStar.Seq.Properties.total_order))

:named typing_FStar.Seq.Properties.total_order))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.seq; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(23,8-23,11); use=FStar.Seq.Base.fsti(23,8-23,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Seq.Base.seq @x0)
Tm_type))
 

:pattern ((FStar.Seq.Base.seq @x0))
:qid typing_FStar.Seq.Base.seq))

:named typing_FStar.Seq.Base.seq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.length; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(26,4-26,10); use=FStar.Seq.Base.fsti(26,4-26,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Base.length @x0
@x1)
Prims.nat))
 

:pattern ((FStar.Seq.Base.length @x0
@x1))
:qid typing_FStar.Seq.Base.length))

:named typing_FStar.Seq.Base.length))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.index; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(32,4-32,9); use=FStar.Seq.Base.fsti(32,4-32,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)))
(HasType (FStar.Seq.Base.index @x0
@x1
@x2)
@x0))
 

:pattern ((FStar.Seq.Base.index @x0
@x1
@x2))
:qid typing_FStar.Seq.Base.index))

:named typing_FStar.Seq.Base.index))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.snd; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(63,4-63,7); use=FStar.Pervasives.Native.fst(63,4-63,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Pervasives.Native.tuple2 @x0
@x1)))
(HasType (FStar.Pervasives.Native.snd @x0
@x1
@x2)
@x1))
 

:pattern ((FStar.Pervasives.Native.snd @x0
@x1
@x2))
:qid typing_FStar.Pervasives.Native.snd))

:named typing_FStar.Pervasives.Native.snd))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.fst; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(62,4-62,7); use=FStar.Pervasives.Native.fst(62,4-62,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Pervasives.Native.tuple2 @x0
@x1)))
(HasType (FStar.Pervasives.Native.fst @x0
@x1
@x2)
@x0))
 

:pattern ((FStar.Pervasives.Native.fst @x0
@x1
@x2))
:qid typing_FStar.Pervasives.Native.fst))

:named typing_FStar.Pervasives.Native.fst))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Mktuple2__item___2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,43-59,45); use=FStar.Pervasives.Native.fst(59,43-59,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Pervasives.Native.tuple2 @x0
@x1)))
(HasType (FStar.Pervasives.Native.__proj__Mktuple2__item___2 @x0
@x1
@x2)
@x1))
 

:pattern ((FStar.Pervasives.Native.__proj__Mktuple2__item___2 @x0
@x1
@x2))
:qid typing_FStar.Pervasives.Native.__proj__Mktuple2__item___2))

:named typing_FStar.Pervasives.Native.__proj__Mktuple2__item___2))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Mktuple2__item___1; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,33-59,35); use=FStar.Pervasives.Native.fst(59,33-59,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Pervasives.Native.tuple2 @x0
@x1)))
(HasType (FStar.Pervasives.Native.__proj__Mktuple2__item___1 @x0
@x1
@x2)
@x0))
 

:pattern ((FStar.Pervasives.Native.__proj__Mktuple2__item___1 @x0
@x1
@x2))
:qid typing_FStar.Pervasives.Native.__proj__Mktuple2__item___1))

:named typing_FStar.Pervasives.Native.__proj__Mktuple2__item___1))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (HasType Tm_refine_da3062322c9bea8d5b2058386775b91a
Tm_type)
:named refinement_kinding_Tm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.index; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(32,34-32,53); use=FStar.Seq.Base.fsti(32,34-32,53)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55))

:named refinement_kinding_Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.tot_ord; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(159,26-159,65); use=FStar.Seq.Properties.fsti(159,26-159,65)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8))

:named refinement_kinding_Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8))
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
;;; Fact-ids: Name FStar.Seq.Properties.createL_post; Namespace FStar.Seq.Properties
(assert (! (HasType Tm_refine_1780a0fddfda88c43d203b562c6d3f5b
Tm_type)
:named refinement_kinding_Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.snoc_slice_index; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(585,2-585,36); use=FStar.Seq.Properties.fsti(585,2-585,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5))

:named refinement_kinding_Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5))
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
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(533,7-533,12); use=FStar.List.Tot.Base.fst(533,7-533,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_da3062322c9bea8d5b2058386775b91a)
(HasTypeFuel @u0
@x1
Tm_type))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_da3062322c9bea8d5b2058386775b91a))
:qid refinement_interpretation_Tm_refine_da3062322c9bea8d5b2058386775b91a))

:named refinement_interpretation_Tm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.index; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(32,34-32,53); use=FStar.Seq.Base.fsti(32,34-32,53)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(32,40-32,52); use=FStar.Seq.Base.fsti(32,40-32,52)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55))

:named refinement_interpretation_Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.tot_ord; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(159,26-159,65); use=FStar.Seq.Properties.fsti(159,26-159,65)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x2))
(and (HasTypeFuel @u0
@x1
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x2))

;; def=FStar.Seq.Properties.fsti(159,49-159,64); use=FStar.Seq.Properties.fsti(159,49-159,64)
(Valid 
;; def=FStar.Seq.Properties.fsti(159,49-159,64); use=FStar.Seq.Properties.fsti(159,49-159,64)
(FStar.Seq.Properties.total_order @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x2)))
:qid refinement_interpretation_Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8))

:named refinement_interpretation_Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8))
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
;;; Fact-ids: Name FStar.Seq.Properties.createL_post; Namespace FStar.Seq.Properties
(assert (! 
;; def=Prims.fst(680,11-680,25); use=Prims.fst(680,11-680,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_1780a0fddfda88c43d203b562c6d3f5b)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(180,31-180,42); use=Prims.fst(180,31-180,42)
(= (Prims.op_GreaterThanOrEqual @x1
(BoxInt 0))
(BoxBool true))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
:qid refinement_interpretation_Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))

:named refinement_interpretation_Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.snoc_slice_index; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(585,2-585,36); use=FStar.Seq.Properties.fsti(585,2-585,36)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(585,11-585,17); use=FStar.Seq.Properties.fsti(585,11-585,17)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=FStar.Seq.Properties.fsti(585,21-585,33); use=FStar.Seq.Properties.fsti(585,21-585,33)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5))

:named refinement_interpretation_Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5))
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
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Mktuple2__item___2; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,43-59,45); use=FStar.Pervasives.Native.fst(59,43-59,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Pervasives.Native.__proj__Mktuple2__item___2 @x0
@x1
@x2)
(FStar.Pervasives.Native.Mktuple2__2 @x2))
 

:pattern ((FStar.Pervasives.Native.__proj__Mktuple2__item___2 @x0
@x1
@x2))
:qid proj_equation_FStar.Pervasives.Native.Mktuple2__2))

:named proj_equation_FStar.Pervasives.Native.Mktuple2__2))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Mktuple2__item___1; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(59,33-59,35); use=FStar.Pervasives.Native.fst(59,33-59,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Pervasives.Native.__proj__Mktuple2__item___1 @x0
@x1
@x2)
(FStar.Pervasives.Native.Mktuple2__1 @x2))
 

:pattern ((FStar.Pervasives.Native.__proj__Mktuple2__item___1 @x0
@x1
@x2))
:qid proj_equation_FStar.Pervasives.Native.Mktuple2__1))

:named proj_equation_FStar.Pervasives.Native.Mktuple2__1))
;;; Fact-ids: Name Prims.op_GreaterThanOrEqual; Namespace Prims
(assert (! 
;; def=Prims.fst(576,4-576,25); use=Prims.fst(576,4-576,25)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_GreaterThanOrEqual @x0
@x1)
(BoxBool (>= (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_GreaterThanOrEqual @x0
@x1))
:qid primitive_Prims.op_GreaterThanOrEqual))

:named primitive_Prims.op_GreaterThanOrEqual))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.hasEq_lemma
;;; Fact-ids: Name FStar.Seq.Base.hasEq_lemma; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)

;; def=FStar.Seq.Base.fsti(163,43-163,52); use=FStar.Seq.Base.fsti(163,43-163,52)
(Valid 
;; def=FStar.Seq.Base.fsti(163,43-163,52); use=FStar.Seq.Base.fsti(163,43-163,52)
(Prims.hasEq @x0)
)
)

;; def=FStar.Seq.Base.fsti(163,63-163,78); use=FStar.Seq.Base.fsti(163,63-163,78)
(Valid 
;; def=FStar.Seq.Base.fsti(163,63-163,78); use=FStar.Seq.Base.fsti(163,63-163,78)
(Prims.hasEq (FStar.Seq.Base.seq @x0))
)
)
 

:pattern ((Prims.hasEq (FStar.Seq.Base.seq @x0)))
:qid lemma_FStar.Seq.Base.hasEq_lemma))
:named lemma_FStar.Seq.Base.hasEq_lemma))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e
;;; Fact-ids: Name FStar.List.Tot.Base.compare_of_bool; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(509,23-509,54); use=FStar.List.Tot.Base.fst(509,36-510,19)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x0)
Tm_type))
:qid kinding_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e))

:named kinding_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_da3062322c9bea8d5b2058386775b91a
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (iff (Valid (Prims.hasEq Tm_refine_da3062322c9bea8d5b2058386775b91a))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55
;;; Fact-ids: Name FStar.Seq.Base.index; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(32,34-32,53); use=FStar.Seq.Base.fsti(32,34-32,53)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1))))
:qid haseqTm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55))

:named haseqTm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8
;;; Fact-ids: Name FStar.Seq.Properties.tot_ord; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(159,26-159,65); use=FStar.Seq.Properties.fsti(159,26-159,65)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0)))
(Valid (Prims.hasEq (Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0))))
:qid haseqTm_refine_a01e88865b4bbd2f0a4bcb261b6760a8))

:named haseqTm_refine_a01e88865b4bbd2f0a4bcb261b6760a8))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_1780a0fddfda88c43d203b562c6d3f5b
;;; Fact-ids: Name FStar.Seq.Properties.createL_post; Namespace FStar.Seq.Properties
(assert (! (iff (Valid (Prims.hasEq Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_1780a0fddfda88c43d203b562c6d3f5b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5
;;; Fact-ids: Name FStar.Seq.Properties.snoc_slice_index; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(585,2-585,36); use=FStar.Seq.Properties.fsti(585,2-585,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x0
@x1
@x2))))
:qid haseqTm_refine_095c5722edf0f79bcd7dce7bd084c7b5))

:named haseqTm_refine_095c5722edf0f79bcd7dce7bd084c7b5))
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
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Prims.nat
Tm_type)
:named function_token_typing_Prims.nat))
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
;;;;;;;;;;;;;;;;Equation for Prims.nat
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (= Prims.nat
Tm_refine_542f9d4f129664613f2483a6c88bc7c2)
:named equation_Prims.nat))
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
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Properties.total_order
;;; Fact-ids: Name FStar.Seq.Properties.total_order; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(155,5-155,16); use=FStar.Seq.Properties.fsti(155,5-155,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Seq.Properties.total_order @x0
@x1))

;; def=FStar.Seq.Properties.fsti(156,4-158,56); use=FStar.Seq.Properties.fsti(156,4-158,56)
(and 
;; def=FStar.Seq.Properties.fsti(156,4-156,21); use=FStar.Seq.Properties.fsti(156,4-156,21)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x0)

;; def=FStar.Seq.Properties.fsti(156,15-156,20); use=FStar.Seq.Properties.fsti(156,15-156,20)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
@x2)
@x2))
)
 
;;no pats
:qid equation_FStar.Seq.Properties.total_order.1))


;; def=FStar.Seq.Properties.fsti(157,7-157,62); use=FStar.Seq.Properties.fsti(157,7-157,62)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x0))

;; def=FStar.Seq.Properties.fsti(157,22-157,61); use=FStar.Seq.Properties.fsti(157,22-157,61)
(iff 
;; def=FStar.Seq.Properties.fsti(157,22-157,41); use=FStar.Seq.Properties.fsti(157,22-157,41)
(and 
;; def=FStar.Seq.Properties.fsti(157,23-157,30); use=FStar.Seq.Properties.fsti(157,23-157,30)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
@x2)
@x3))


;; def=FStar.Seq.Properties.fsti(157,34-157,40); use=FStar.Seq.Properties.fsti(157,34-157,40)
(not (= @x2
@x3))
)

(not (BoxBool_proj_0 (ApplyTT (ApplyTT @x1
@x3)
@x2))))
)
 
;;no pats
:qid equation_FStar.Seq.Properties.total_order.2))


;; def=FStar.Seq.Properties.fsti(158,7-158,56); use=FStar.Seq.Properties.fsti(158,7-158,56)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x0)
(HasType @x4
@x0)

;; def=FStar.Seq.Properties.fsti(158,25-158,32); use=FStar.Seq.Properties.fsti(158,25-158,32)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
@x2)
@x3))


;; def=FStar.Seq.Properties.fsti(158,36-158,43); use=FStar.Seq.Properties.fsti(158,36-158,43)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
@x3)
@x4))
)

;; def=FStar.Seq.Properties.fsti(158,48-158,55); use=FStar.Seq.Properties.fsti(158,48-158,55)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
@x2)
@x4))
)
 
;;no pats
:qid equation_FStar.Seq.Properties.total_order.3))
)
)
 

:pattern ((FStar.Seq.Properties.total_order @x0
@x1))
:qid equation_FStar.Seq.Properties.total_order))

:named equation_FStar.Seq.Properties.total_order))
;;;;;;;;;;;;;;;;Equation for FStar.Pervasives.Native.snd
;;; Fact-ids: Name FStar.Pervasives.Native.snd; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(63,4-63,7); use=FStar.Pervasives.Native.fst(63,4-63,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Pervasives.Native.snd @x0
@x1
@x2)
(FStar.Pervasives.Native.__proj__Mktuple2__item___2 @x0
@x1
@x2))
 

:pattern ((FStar.Pervasives.Native.snd @x0
@x1
@x2))
:qid equation_FStar.Pervasives.Native.snd))

:named equation_FStar.Pervasives.Native.snd))
;;;;;;;;;;;;;;;;Equation for FStar.Pervasives.Native.fst
;;; Fact-ids: Name FStar.Pervasives.Native.fst; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(62,4-62,7); use=FStar.Pervasives.Native.fst(62,4-62,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Pervasives.Native.fst @x0
@x1
@x2)
(FStar.Pervasives.Native.__proj__Mktuple2__item___1 @x0
@x1
@x2))
 

:pattern ((FStar.Pervasives.Native.fst @x0
@x1
@x2))
:qid equation_FStar.Pervasives.Native.fst))

:named equation_FStar.Pervasives.Native.fst))
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
;;;;;;;;;;;;;;;;Prop-typing for FStar.Seq.Properties.total_order
;;; Fact-ids: Name FStar.Seq.Properties.total_order; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(155,5-155,16); use=FStar.Seq.Properties.fsti(155,5-155,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x0)))
(Valid (Prims.subtype_of (FStar.Seq.Properties.total_order @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Seq.Properties.total_order @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Seq.Properties.total_order))

:named defn_equation_FStar.Seq.Properties.total_order))
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
;;; Fact-ids: Name FStar.Seq.Base.seq; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(23,8-23,11); use=FStar.Seq.Base.fsti(23,8-23,11)
(forall ((@x0 Term))
 (! (= 103
(Term_constr_id (FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.seq @x0))
:qid constructor_distinct_FStar.Seq.Base.seq))

:named constructor_distinct_FStar.Seq.Base.seq))
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
;;; Fact-ids: Name FStar.Seq.Base.seq; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(23,8-23,11); use=FStar.Seq.Base.fsti(23,8-23,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Seq.Base.seq @x2))
(= (FStar.Seq.Base.seq @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Seq.Base.seq @x2)))
:qid FStar.Seq.Base_pretyping_7efa52b424e80c83ad68a652aa3561e4))

:named FStar.Seq.Base_pretyping_7efa52b424e80c83ad68a652aa3561e4))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.List.Tot.Base.compare_of_bool; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(509,23-509,54); use=FStar.List.Tot.Base.fst(509,36-510,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x2)))
:qid FStar.List.Tot.Base_pre_typing_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e))

:named FStar.List.Tot.Base_pre_typing_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e
;;; Fact-ids: Name FStar.List.Tot.Base.compare_of_bool; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(509,23-509,54); use=FStar.List.Tot.Base.fst(509,36-510,19)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x1))
(and 
;; def=FStar.List.Tot.Base.fst(509,23-509,54); use=FStar.List.Tot.Base.fst(509,36-510,19)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x1)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e.1))

(IsTotFun @x0)

;; def=FStar.List.Tot.Base.fst(509,23-509,54); use=FStar.List.Tot.Base.fst(509,36-510,19)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x1)))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e))

:named FStar.List.Tot.Base_interpretation_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e))
(push) ;; push{2

; Starting query at QuickSort.Seq.fst(26,0-43,35)

(declare-fun label_1 () Bool)





(declare-fun Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickSort.Seq.fst(26,18-28,27)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

:named refinement_kinding_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickSort.Seq.fst(26,18-28,27)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)))

;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(28,7-28,11)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x2
@x3))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(28,7-28,11)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(28,7-28,11)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(28,7-28,11)
(<= (BoxInt_proj_0 @x7)
(BoxInt_proj_0 @x4))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(28,7-28,11)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
(FStar.Seq.Base.index @x2
@x3
@x7))
(FStar.Seq.Base.index @x2
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(28,7-28,11)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(28,7-28,11)
(< (BoxInt_proj_0 @x6)
(BoxInt_proj_0 @x7))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(28,7-28,11)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
(FStar.Seq.Base.index @x2
@x3
@x4))
(FStar.Seq.Base.index @x2
@x3
@x7)))
)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

:named refinement_interpretation_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickSort.Seq.fst(26,18-28,27)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

:named haseqTm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

; Encoding query formula : forall (a: Prims.eqtype)
;   (f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f})
;   (s: FStar.Seq.Base.seq a)
;   (pivot: Prims.nat{pivot < FStar.Seq.Base.length s})
;   (back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s})
;   (res:
;   _:
;   (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a)
;     { forall (i: Prims.nat{i < FStar.Seq.Base.length s}).
;         (i <= pivot ==> f (FStar.Seq.Base.index s i) (FStar.Seq.Base.index s pivot)) /\
;         (back < i ==> f (FStar.Seq.Base.index s pivot) (FStar.Seq.Base.index s i)) }).
;   (*  - Could not prove post-condition
; *)
;   FStar.Seq.Base.length (FStar.Pervasives.Native.fst res) +
;   FStar.Seq.Base.length (FStar.Pervasives.Native.snd res) =
;   FStar.Seq.Base.length s /\ FStar.Seq.Base.length (FStar.Pervasives.Native.snd res) > 0 ==>
;   0 < FStar.Seq.Base.length (FStar.Pervasives.Native.snd res)


; Context: While encoding a query
; While typechecking the top-level declaration `val QuickSort.Seq.partition`

(push) ;; push{0

; <fuel='0' ifuel='0'>

;;; Fact-ids: 
(assert (! (= MaxFuel
ZFuel)
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
ZFuel)
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=dummy(0,0-0,0); use=QuickSort.Seq.fst(26,0-43,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0))
(HasType @x3
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x2))
(HasType @x4
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x3
@x0
@x2))
(HasType @x5
(Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x2
@x3
@x1
@x4))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(26,18-28,27)
(= (Prims.op_Addition (FStar.Seq.Base.length @x0
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)
@x5))
(FStar.Seq.Base.length @x0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)
@x5)))
(FStar.Seq.Base.length @x0
@x2))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(26,18-28,27)
(> (BoxInt_proj_0 (FStar.Seq.Base.length @x0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)
@x5)))
(BoxInt_proj_0 (BoxInt 0)))
)

;; def=FStar.Seq.Base.fsti(32,40-32,52); use=QuickSort.Seq.fst(36,35-36,36)
(or label_1

;; def=FStar.Seq.Base.fsti(32,40-32,52); use=QuickSort.Seq.fst(26,18-28,27)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (FStar.Seq.Base.length @x0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)
@x5))))
)
)
 
;;no pats
:qid @query))
)
:named @query))
(set-option :rlimit 54465600)
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
; QUERY ID: (QuickSort.Seq.partition, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val QuickSort.Seq.partition


; <Skipped val QuickSort.Seq.partition/>

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
;;; Fact-ids: Name FStar.Seq.Properties.tail; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(42,4-42,8); use=FStar.Seq.Properties.fsti(42,4-42,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_167ef714932ec832fb671890fc3eee6c @x0)))
(HasType (FStar.Seq.Properties.tail @x0
@x1)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Properties.tail @x0
@x1))
:qid typing_FStar.Seq.Properties.tail))

:named typing_FStar.Seq.Properties.tail))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Properties.swap; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(94,4-94,8); use=FStar.Seq.Properties.fsti(94,4-94,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1))
(HasType @x3
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)))
(HasType (FStar.Seq.Properties.swap @x0
@x1
@x2
@x3)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Properties.swap @x0
@x1
@x2
@x3))
:qid typing_FStar.Seq.Properties.swap))

:named typing_FStar.Seq.Properties.swap))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Properties.permutation; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(195,5-195,16); use=FStar.Seq.Properties.fsti(195,5-195,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Properties.permutation @x0
@x1
@x2)
Prims.logical))
 

:pattern ((FStar.Seq.Properties.permutation @x0
@x1
@x2))
:qid typing_FStar.Seq.Properties.permutation))

:named typing_FStar.Seq.Properties.permutation))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Properties.mem; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(77,4-77,7); use=FStar.Seq.Properties.fsti(77,4-77,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Properties.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.Seq.Properties.mem @x0
@x1
@x2))
:qid typing_FStar.Seq.Properties.mem))

:named typing_FStar.Seq.Properties.mem))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Properties.head; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(40,4-40,8); use=FStar.Seq.Properties.fsti(40,4-40,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_167ef714932ec832fb671890fc3eee6c @x0)))
(HasType (FStar.Seq.Properties.head @x0
@x1)
@x0))
 

:pattern ((FStar.Seq.Properties.head @x0
@x1))
:qid typing_FStar.Seq.Properties.head))

:named typing_FStar.Seq.Properties.head))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Properties.count; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(71,8-71,13); use=FStar.Seq.Properties.fsti(71,8-71,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Properties.count @x0
@x1
@x2)
Prims.nat))
 

:pattern ((FStar.Seq.Properties.count @x0
@x1
@x2))
:qid typing_FStar.Seq.Properties.count))

:named typing_FStar.Seq.Properties.count))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.upd; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(56,4-56,7); use=FStar.Seq.Base.fsti(56,4-56,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1))
(HasType @x3
@x0))
(HasType (FStar.Seq.Base.upd @x0
@x1
@x2
@x3)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.upd @x0
@x1
@x2
@x3))
:qid typing_FStar.Seq.Base.upd))

:named typing_FStar.Seq.Base.upd))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,4-64,9); use=FStar.Seq.Base.fsti(64,4-64,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x0
@x1)))
(HasType (FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
:qid typing_FStar.Seq.Base.slice))

:named typing_FStar.Seq.Base.slice))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,4-46,9); use=FStar.Seq.Base.fsti(46,4-46,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Seq.Base.empty @x0)
(Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)))
 

:pattern ((FStar.Seq.Base.empty @x0))
:qid typing_FStar.Seq.Base.empty))

:named typing_FStar.Seq.Base.empty))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name FStar.Seq.Properties.count; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(71,8-71,13); use=FStar.Seq.Properties.fsti(71,8-71,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(FStar.Seq.Base.seq @x1)))
(HasType (FStar.Seq.Properties.count.fuel_instrumented @u0
@x1
@x2
@x3)
Prims.nat))
 

:pattern ((FStar.Seq.Properties.count.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.Seq.Properties.count.fuel_instrumented))

:named token_correspondence_FStar.Seq.Properties.count.fuel_instrumented))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_upd2; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(143,74-143,101); use=FStar.Seq.Base.fsti(143,74-143,101)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_df81b3f17797c6f405c1dbb191651292 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_df81b3f17797c6f405c1dbb191651292 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_df81b3f17797c6f405c1dbb191651292))

:named refinement_kinding_Tm_refine_df81b3f17797c6f405c1dbb191651292))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,54-158,84); use=FStar.Seq.Base.fsti(158,54-158,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))

:named refinement_kinding_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,26-46,49); use=FStar.Seq.Base.fsti(46,26-46,49)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_b913a3f691ca99086652e0a655e72f17))

:named refinement_kinding_Tm_refine_b913a3f691ca99086652e0a655e72f17))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.eq_i; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(171,5-171,26); use=FStar.Seq.Base.fsti(171,5-171,26)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_b361ba8089a6e963921008d537e799a1))

:named refinement_kinding_Tm_refine_b361ba8089a6e963921008d537e799a1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.lemma_tail_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(276,53-276,82); use=FStar.Seq.Properties.fsti(276,53-276,82)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_b138bd5848d4184f7632587e6e4bcf9f))

:named refinement_kinding_Tm_refine_b138bd5848d4184f7632587e6e4bcf9f))
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
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=FStar.Seq.Base.fsti(64,43-64,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_81407705a0828c2c1b1976675443f647))

:named refinement_kinding_Tm_refine_81407705a0828c2c1b1976675443f647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,88-158,104); use=FStar.Seq.Base.fsti(158,88-158,104)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8))

:named refinement_kinding_Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_upd; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(117,46-117,67); use=FStar.Seq.Base.fsti(117,46-117,67)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_2ca062977a42c36634b89c1c4f193f79))

:named refinement_kinding_Tm_refine_2ca062977a42c36634b89c1c4f193f79))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(625,2-625,40); use=FStar.Seq.Properties.fsti(625,2-625,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_1ba8fd8bb363097813064c67740b2de5))

:named refinement_kinding_Tm_refine_1ba8fd8bb363097813064c67740b2de5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.head; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(40,19-40,42); use=FStar.Seq.Properties.fsti(40,19-40,42)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_167ef714932ec832fb671890fc3eee6c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_167ef714932ec832fb671890fc3eee6c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_167ef714932ec832fb671890fc3eee6c))

:named refinement_kinding_Tm_refine_167ef714932ec832fb671890fc3eee6c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_upd2; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(143,74-143,101); use=FStar.Seq.Base.fsti(143,74-143,101)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_df81b3f17797c6f405c1dbb191651292 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(143,80-143,84); use=FStar.Seq.Base.fsti(143,80-143,84)
(not (= @x1
@x2))


;; def=FStar.Seq.Base.fsti(143,88-143,100); use=FStar.Seq.Base.fsti(143,88-143,100)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_df81b3f17797c6f405c1dbb191651292 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_df81b3f17797c6f405c1dbb191651292))

:named refinement_interpretation_Tm_refine_df81b3f17797c6f405c1dbb191651292))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,54-158,84); use=FStar.Seq.Base.fsti(158,54-158,84)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(158,60-158,66); use=FStar.Seq.Base.fsti(158,60-158,66)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=FStar.Seq.Base.fsti(158,70-158,83); use=FStar.Seq.Base.fsti(158,70-158,83)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))

:named refinement_interpretation_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,26-46,49); use=FStar.Seq.Base.fsti(46,26-46,49)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b913a3f691ca99086652e0a655e72f17 @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq @x2))

;; def=FStar.Seq.Base.fsti(46,37-46,47); use=FStar.Seq.Base.fsti(46,37-46,47)
(= (FStar.Seq.Base.length @x2
@x1)
(BoxInt 0))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b913a3f691ca99086652e0a655e72f17 @x2)))
:qid refinement_interpretation_Tm_refine_b913a3f691ca99086652e0a655e72f17))

:named refinement_interpretation_Tm_refine_b913a3f691ca99086652e0a655e72f17))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.eq_i; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(171,5-171,26); use=FStar.Seq.Base.fsti(171,5-171,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b361ba8089a6e963921008d537e799a1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(171,11-171,25); use=FStar.Seq.Base.fsti(171,11-171,25)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b361ba8089a6e963921008d537e799a1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_b361ba8089a6e963921008d537e799a1))

:named refinement_interpretation_Tm_refine_b361ba8089a6e963921008d537e799a1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.lemma_tail_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(276,53-276,82); use=FStar.Seq.Properties.fsti(276,53-276,82)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)
(BoxBool_proj_0 (Prims.op_LessThan @x2
@x1))
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x1
(FStar.Seq.Base.length @x3
@x4)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_b138bd5848d4184f7632587e6e4bcf9f))

:named refinement_interpretation_Tm_refine_b138bd5848d4184f7632587e6e4bcf9f))
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
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=FStar.Seq.Base.fsti(64,43-64,73)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x2
@x1))
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x1
(FStar.Seq.Base.length @x3
@x4)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_81407705a0828c2c1b1976675443f647))

:named refinement_interpretation_Tm_refine_81407705a0828c2c1b1976675443f647))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,88-158,104); use=FStar.Seq.Base.fsti(158,88-158,104)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(158,94-158,103); use=FStar.Seq.Base.fsti(158,94-158,103)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction @x2
@x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8))

:named refinement_interpretation_Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8))
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
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_upd; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(117,46-117,67); use=FStar.Seq.Base.fsti(117,46-117,67)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq @x3))

;; def=FStar.Seq.Base.fsti(117,54-117,66); use=FStar.Seq.Base.fsti(117,54-117,66)
(< (BoxInt_proj_0 @x2)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_2ca062977a42c36634b89c1c4f193f79))

:named refinement_interpretation_Tm_refine_2ca062977a42c36634b89c1c4f193f79))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(625,2-625,40); use=FStar.Seq.Properties.fsti(625,2-625,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(625,12-625,20); use=FStar.Seq.Properties.fsti(625,12-625,20)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=FStar.Seq.Properties.fsti(625,24-625,37); use=FStar.Seq.Properties.fsti(625,24-625,37)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_1ba8fd8bb363097813064c67740b2de5))

:named refinement_interpretation_Tm_refine_1ba8fd8bb363097813064c67740b2de5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.head; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(40,19-40,42); use=FStar.Seq.Properties.fsti(40,19-40,42)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_167ef714932ec832fb671890fc3eee6c @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq @x2))

;; def=FStar.Seq.Properties.fsti(40,28-40,40); use=FStar.Seq.Properties.fsti(40,28-40,40)
(> (BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x1))
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_167ef714932ec832fb671890fc3eee6c @x2)))
:qid refinement_interpretation_Tm_refine_167ef714932ec832fb671890fc3eee6c))

:named refinement_interpretation_Tm_refine_167ef714932ec832fb671890fc3eee6c))
;;; Fact-ids: Name Prims.op_Subtraction; Namespace Prims
(assert (! 
;; def=Prims.fst(546,4-546,18); use=Prims.fst(546,4-546,18)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_Subtraction @x0
@x1)
(BoxInt (- (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_Subtraction @x0
@x1))
:qid primitive_Prims.op_Subtraction))

:named primitive_Prims.op_Subtraction))
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
;;; Fact-ids: Name Prims.op_GreaterThan; Namespace Prims
(assert (! 
;; def=Prims.fst(570,4-570,18); use=Prims.fst(570,4-570,18)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_GreaterThan @x0
@x1)
(BoxBool (> (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_GreaterThan @x0
@x1))
:qid primitive_Prims.op_GreaterThan))

:named primitive_Prims.op_GreaterThan))
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
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.upd_slice
;;; Fact-ids: Name FStar.Seq.Properties.upd_slice; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x0
@x1))
(HasType @x4
(Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x3
@x2))
(HasType @x5
@x0)

;; def=FStar.Seq.Properties.fsti(111,12-111,21); use=FStar.Seq.Properties.fsti(111,12-111,21)
(< (BoxInt_proj_0 (Prims.op_Addition @x2
@x4))
(BoxInt_proj_0 @x3))
)

;; def=FStar.Seq.Properties.fsti(112,12-112,64); use=FStar.Seq.Properties.fsti(112,12-112,64)
(= (FStar.Seq.Base.upd @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4
@x5)
(FStar.Seq.Base.slice @x0
(FStar.Seq.Base.upd @x0
@x1
(Prims.op_Addition @x2
@x4)
@x5)
@x2
@x3))
)
 

:pattern ((FStar.Seq.Base.upd @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4
@x5))
:qid lemma_FStar.Seq.Properties.upd_slice))
:named lemma_FStar.Seq.Properties.upd_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_upd
;;; Fact-ids: Name FStar.Seq.Properties.slice_upd; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x0
@x1))
(HasType @x4
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1))
(HasType @x5
@x0)

;; def=FStar.Seq.Properties.fsti(105,12-105,27); use=FStar.Seq.Properties.fsti(105,12-105,27)
(or 
;; def=FStar.Seq.Properties.fsti(105,12-105,17); use=FStar.Seq.Properties.fsti(105,12-105,17)
(< (BoxInt_proj_0 @x4)
(BoxInt_proj_0 @x2))


;; def=FStar.Seq.Properties.fsti(105,21-105,27); use=FStar.Seq.Properties.fsti(105,21-105,27)
(<= (BoxInt_proj_0 @x3)
(BoxInt_proj_0 @x4))
)
)

;; def=FStar.Seq.Properties.fsti(106,12-106,48); use=FStar.Seq.Properties.fsti(106,12-106,48)
(= (FStar.Seq.Base.slice @x0
(FStar.Seq.Base.upd @x0
@x1
@x4
@x5)
@x2
@x3)
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
)
 

:pattern ((FStar.Seq.Base.slice @x0
(FStar.Seq.Base.upd @x0
@x1
@x4
@x5)
@x2
@x3))
:qid lemma_FStar.Seq.Properties.slice_upd))
:named lemma_FStar.Seq.Properties.slice_upd))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_slice
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x0
@x1))
(HasType @x4
Prims.nat)
(HasType @x5
(Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x4
@x3
@x2)))

;; def=FStar.Seq.Properties.fsti(628,11-628,71); use=FStar.Seq.Properties.fsti(628,11-628,71)
(= (FStar.Seq.Base.slice @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4
@x5)
(FStar.Seq.Base.slice @x0
@x1
(Prims.op_Addition @x2
@x4)
(Prims.op_Addition @x2
@x5)))
)
 

:pattern ((FStar.Seq.Base.slice @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4
@x5))
:qid lemma_FStar.Seq.Properties.slice_slice))
:named lemma_FStar.Seq.Properties.slice_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_length
;;; Fact-ids: Name FStar.Seq.Properties.slice_length; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0)))

;; def=FStar.Seq.Properties.fsti(616,11-616,38); use=FStar.Seq.Properties.fsti(616,11-616,38)
(= (FStar.Seq.Base.slice @x0
@x1
(BoxInt 0)
(FStar.Seq.Base.length @x0
@x1))
@x1)
)
 

:pattern ((FStar.Seq.Base.slice @x0
@x1
(BoxInt 0)
(FStar.Seq.Base.length @x0
@x1)))
:qid lemma_FStar.Seq.Properties.slice_length))
:named lemma_FStar.Seq.Properties.slice_length))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_is_empty
;;; Fact-ids: Name FStar.Seq.Properties.slice_is_empty; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)))

;; def=FStar.Seq.Properties.fsti(608,11-608,37); use=FStar.Seq.Properties.fsti(608,11-608,37)
(= (FStar.Seq.Base.slice @x0
@x1
@x2
@x2)
(FStar.Seq.Base.empty @x0))
)
 

:pattern ((FStar.Seq.Base.slice @x0
@x1
@x2
@x2))
:qid lemma_FStar.Seq.Properties.slice_is_empty))
:named lemma_FStar.Seq.Properties.slice_is_empty))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.seq_mem_k
;;; Fact-ids: Name FStar.Seq.Properties.seq_mem_k; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)))

;; def=FStar.Seq.Properties.fsti(423,19-423,42); use=FStar.Seq.Properties.fsti(423,19-423,42)
(BoxBool_proj_0 (FStar.Seq.Properties.mem @x0
(FStar.Seq.Base.index @x0
@x1
@x2)
@x1))
)
 

:pattern ((FStar.Seq.Properties.mem @x0
(FStar.Seq.Base.index @x0
@x1
@x2)
@x1))
:qid lemma_FStar.Seq.Properties.seq_mem_k))
:named lemma_FStar.Seq.Properties.seq_mem_k))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.lemma_tail_slice
;;; Fact-ids: Name FStar.Seq.Properties.lemma_tail_slice; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x2
@x0
@x1)))

;; def=FStar.Seq.Properties.fsti(279,11-279,52); use=FStar.Seq.Properties.fsti(279,11-279,52)
(= (FStar.Seq.Properties.tail @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
(FStar.Seq.Base.slice @x0
@x1
(Prims.op_Addition @x2
(BoxInt 1))
@x3))
)
 

:pattern ((FStar.Seq.Properties.tail @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)))
:qid lemma_FStar.Seq.Properties.lemma_tail_slice))
:named lemma_FStar.Seq.Properties.lemma_tail_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_len_upd
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_upd; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Prims.nat)
(HasType @x2
@x0)
(HasType @x3
(Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x1
@x0)))

;; def=FStar.Seq.Base.fsti(119,11-119,42); use=FStar.Seq.Base.fsti(119,11-119,42)
(= (FStar.Seq.Base.length @x0
(FStar.Seq.Base.upd @x0
@x3
@x1
@x2))
(FStar.Seq.Base.length @x0
@x3))
)
 

:pattern ((FStar.Seq.Base.length @x0
(FStar.Seq.Base.upd @x0
@x3
@x1
@x2)))
:qid lemma_FStar.Seq.Base.lemma_len_upd))
:named lemma_FStar.Seq.Base.lemma_len_upd))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_len_slice
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_slice; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x0
@x1)))

;; def=FStar.Seq.Base.fsti(129,11-129,41); use=FStar.Seq.Base.fsti(129,11-129,41)
(= (FStar.Seq.Base.length @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
(Prims.op_Subtraction @x3
@x2))
)
 

:pattern ((FStar.Seq.Base.length @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)))
:qid lemma_FStar.Seq.Base.lemma_len_slice))
:named lemma_FStar.Seq.Base.lemma_len_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_index_upd2
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_upd2; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
(Tm_refine_df81b3f17797c6f405c1dbb191651292 @x2
@x0
@x1)))

;; def=FStar.Seq.Base.fsti(145,11-145,45); use=FStar.Seq.Base.fsti(145,11-145,45)
(= (FStar.Seq.Base.index @x0
(FStar.Seq.Base.upd @x0
@x1
@x2
@x3)
@x4)
(FStar.Seq.Base.index @x0
@x1
@x4))
)
 

:pattern ((FStar.Seq.Base.index @x0
(FStar.Seq.Base.upd @x0
@x1
@x2
@x3)
@x4))
:qid lemma_FStar.Seq.Base.lemma_index_upd2))
:named lemma_FStar.Seq.Base.lemma_index_upd2))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_index_upd1
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_upd1; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1))
(HasType @x3
@x0))

;; def=FStar.Seq.Base.fsti(140,11-140,37); use=FStar.Seq.Base.fsti(140,11-140,37)
(= (FStar.Seq.Base.index @x0
(FStar.Seq.Base.upd @x0
@x1
@x2
@x3)
@x2)
@x3)
)
 

:pattern ((FStar.Seq.Base.index @x0
(FStar.Seq.Base.upd @x0
@x1
@x2
@x3)
@x2))
:qid lemma_FStar.Seq.Base.lemma_index_upd1))
:named lemma_FStar.Seq.Base.lemma_index_upd1))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_index_slice
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x0
@x1))
(HasType @x4
(Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x3
@x2)))

;; def=FStar.Seq.Base.fsti(160,11-160,53); use=FStar.Seq.Base.fsti(160,11-160,53)
(= (FStar.Seq.Base.index @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4)
(FStar.Seq.Base.index @x0
@x1
(Prims.op_Addition @x4
@x2)))
)
 

:pattern ((FStar.Seq.Base.index @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4))
:qid lemma_FStar.Seq.Base.lemma_index_slice))
:named lemma_FStar.Seq.Base.lemma_index_slice))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_df81b3f17797c6f405c1dbb191651292
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_upd2; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(143,74-143,101); use=FStar.Seq.Base.fsti(143,74-143,101)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_df81b3f17797c6f405c1dbb191651292 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_df81b3f17797c6f405c1dbb191651292 @x0
@x1
@x2))))
:qid haseqTm_refine_df81b3f17797c6f405c1dbb191651292))

:named haseqTm_refine_df81b3f17797c6f405c1dbb191651292))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d3d07693cd71377864ef84dc97d10ec1
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,54-158,84); use=FStar.Seq.Base.fsti(158,54-158,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2))))
:qid haseqTm_refine_d3d07693cd71377864ef84dc97d10ec1))

:named haseqTm_refine_d3d07693cd71377864ef84dc97d10ec1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b913a3f691ca99086652e0a655e72f17
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,26-46,49); use=FStar.Seq.Base.fsti(46,26-46,49)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0))))
:qid haseqTm_refine_b913a3f691ca99086652e0a655e72f17))

:named haseqTm_refine_b913a3f691ca99086652e0a655e72f17))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b361ba8089a6e963921008d537e799a1
;;; Fact-ids: Name FStar.Seq.Base.eq_i; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(171,5-171,26); use=FStar.Seq.Base.fsti(171,5-171,26)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1))))
:qid haseqTm_refine_b361ba8089a6e963921008d537e799a1))

:named haseqTm_refine_b361ba8089a6e963921008d537e799a1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b138bd5848d4184f7632587e6e4bcf9f
;;; Fact-ids: Name FStar.Seq.Properties.lemma_tail_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(276,53-276,82); use=FStar.Seq.Properties.fsti(276,53-276,82)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b138bd5848d4184f7632587e6e4bcf9f @x0
@x1
@x2))))
:qid haseqTm_refine_b138bd5848d4184f7632587e6e4bcf9f))

:named haseqTm_refine_b138bd5848d4184f7632587e6e4bcf9f))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_81407705a0828c2c1b1976675443f647
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=FStar.Seq.Base.fsti(64,43-64,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2))))
:qid haseqTm_refine_81407705a0828c2c1b1976675443f647))

:named haseqTm_refine_81407705a0828c2c1b1976675443f647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,88-158,104); use=FStar.Seq.Base.fsti(158,88-158,104)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x0
@x1)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 @x0
@x1))))
:qid haseqTm_refine_35a0739c434508f48d0bb1d5cd5df9e8))

:named haseqTm_refine_35a0739c434508f48d0bb1d5cd5df9e8))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_2ca062977a42c36634b89c1c4f193f79
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_upd; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(117,46-117,67); use=FStar.Seq.Base.fsti(117,46-117,67)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x0
@x1)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq @x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2ca062977a42c36634b89c1c4f193f79 @x0
@x1))))
:qid haseqTm_refine_2ca062977a42c36634b89c1c4f193f79))

:named haseqTm_refine_2ca062977a42c36634b89c1c4f193f79))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1ba8fd8bb363097813064c67740b2de5
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(625,2-625,40); use=FStar.Seq.Properties.fsti(625,2-625,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2))))
:qid haseqTm_refine_1ba8fd8bb363097813064c67740b2de5))

:named haseqTm_refine_1ba8fd8bb363097813064c67740b2de5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_167ef714932ec832fb671890fc3eee6c
;;; Fact-ids: Name FStar.Seq.Properties.head; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(40,19-40,42); use=FStar.Seq.Properties.fsti(40,19-40,42)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_167ef714932ec832fb671890fc3eee6c @x0)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_167ef714932ec832fb671890fc3eee6c @x0))))
:qid haseqTm_refine_167ef714932ec832fb671890fc3eee6c))

:named haseqTm_refine_167ef714932ec832fb671890fc3eee6c))
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
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.Seq.Properties.count
;;; Fact-ids: Name FStar.Seq.Properties.count; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(71,8-71,13); use=FStar.Seq.Properties.fsti(71,8-71,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(FStar.Seq.Base.seq @x1)))
(= (FStar.Seq.Properties.count.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 (Prims.op_Equality Prims.int
(FStar.Seq.Base.length @x1
@x3)
(BoxInt 0))))
(ite (= @lb4
(BoxBool true))
(BoxInt 0)
(let ((@lb5 (Prims.op_Equality @x1
(FStar.Seq.Properties.head @x1
@x3)
@x2)))
(ite (= @lb5
(BoxBool true))
(Prims.op_Addition (BoxInt 1)
(FStar.Seq.Properties.count.fuel_instrumented @u0
@x1
@x2
(FStar.Seq.Properties.tail @x1
@x3)))
(FStar.Seq.Properties.count.fuel_instrumented @u0
@x1
@x2
(FStar.Seq.Properties.tail @x1
@x3))))))))
 :weight 0


:pattern ((FStar.Seq.Properties.count.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.Seq.Properties.count.fuel_instrumented))

:named equation_with_fuel_FStar.Seq.Properties.count.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Properties.tail
;;; Fact-ids: Name FStar.Seq.Properties.tail; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(42,4-42,8); use=FStar.Seq.Properties.fsti(42,4-42,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Seq.Properties.tail @x0
@x1)
(FStar.Seq.Base.slice @x0
@x1
(BoxInt 1)
(FStar.Seq.Base.length @x0
@x1)))
 

:pattern ((FStar.Seq.Properties.tail @x0
@x1))
:qid equation_FStar.Seq.Properties.tail))

:named equation_FStar.Seq.Properties.tail))
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Properties.swap
;;; Fact-ids: Name FStar.Seq.Properties.swap; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(94,4-94,8); use=FStar.Seq.Properties.fsti(94,4-94,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Seq.Properties.swap @x0
@x1
@x2
@x3)
(FStar.Seq.Base.upd @x0
(FStar.Seq.Base.upd @x0
@x1
@x3
(FStar.Seq.Base.index @x0
@x1
@x2))
@x2
(FStar.Seq.Base.index @x0
@x1
@x3)))
 

:pattern ((FStar.Seq.Properties.swap @x0
@x1
@x2
@x3))
:qid equation_FStar.Seq.Properties.swap))

:named equation_FStar.Seq.Properties.swap))
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Properties.permutation
;;; Fact-ids: Name FStar.Seq.Properties.permutation; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(195,5-195,16); use=FStar.Seq.Properties.fsti(195,5-195,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (FStar.Seq.Properties.permutation @x0
@x1
@x2))

;; def=FStar.Seq.Properties.fsti(196,7-196,42); use=FStar.Seq.Properties.fsti(196,7-196,42)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x0)

;; def=FStar.Seq.Properties.fsti(196,18-196,41); use=FStar.Seq.Properties.fsti(196,18-196,41)
(= (FStar.Seq.Properties.count @x0
@x3
@x1)
(FStar.Seq.Properties.count @x0
@x3
@x2))
)
 
;;no pats
:qid equation_FStar.Seq.Properties.permutation.1))
)
 

:pattern ((FStar.Seq.Properties.permutation @x0
@x1
@x2))
:qid equation_FStar.Seq.Properties.permutation))

:named equation_FStar.Seq.Properties.permutation))
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Properties.mem
;;; Fact-ids: Name FStar.Seq.Properties.mem; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(77,4-77,7); use=FStar.Seq.Properties.fsti(77,4-77,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Seq.Properties.mem @x0
@x1
@x2)
(Prims.op_GreaterThan (FStar.Seq.Properties.count @x0
@x1
@x2)
(BoxInt 0)))
 

:pattern ((FStar.Seq.Properties.mem @x0
@x1
@x2))
:qid equation_FStar.Seq.Properties.mem))

:named equation_FStar.Seq.Properties.mem))
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Properties.head
;;; Fact-ids: Name FStar.Seq.Properties.head; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(40,4-40,8); use=FStar.Seq.Properties.fsti(40,4-40,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Seq.Properties.head @x0
@x1)
(FStar.Seq.Base.index @x0
@x1
(BoxInt 0)))
 

:pattern ((FStar.Seq.Properties.head @x0
@x1))
:qid equation_FStar.Seq.Properties.head))

:named equation_FStar.Seq.Properties.head))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Seq.Properties.permutation
;;; Fact-ids: Name FStar.Seq.Properties.permutation; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(195,5-195,16); use=FStar.Seq.Properties.fsti(195,5-195,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(Valid (Prims.subtype_of (FStar.Seq.Properties.permutation @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Seq.Properties.permutation @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_FStar.Seq.Properties.permutation))

:named defn_equation_FStar.Seq.Properties.permutation))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.Seq.Properties.count; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(71,8-71,13); use=FStar.Seq.Properties.fsti(71,8-71,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Seq.Properties.count.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.Seq.Properties.count.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.Seq.Properties.count.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.Seq.Properties.count.fuel_instrumented))

:named @fuel_irrelevance_FStar.Seq.Properties.count.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.Seq.Properties.count; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(71,8-71,13); use=FStar.Seq.Properties.fsti(71,8-71,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Seq.Properties.count @x0
@x1
@x2)
(FStar.Seq.Properties.count.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.Seq.Properties.count @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.Seq.Properties.count.fuel_instrumented))

:named @fuel_correspondence_FStar.Seq.Properties.count.fuel_instrumented))
(push) ;; push{2

; Starting query at QuickSort.Seq.fst(45,2-61,15)

;;;;;;;;;;;;;;;;a : Prims.eqtype (Prims.eqtype)
(declare-fun x_9cd1733a5204f989dbb2f01d5984df93_0 () Term)
;;;;;;;;;;;;;;;;binder_x_9cd1733a5204f989dbb2f01d5984df93_0
;;; Fact-ids: 
(assert (! (HasType x_9cd1733a5204f989dbb2f01d5984df93_0
Prims.eqtype)
:named binder_x_9cd1733a5204f989dbb2f01d5984df93_0))
;;;;;;;;;;;;;;;;f : f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f} (f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f})
(declare-fun x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1 () Term)
;;;;;;;;;;;;;;;;_: a -> _: a -> Prims.bool
(declare-fun Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931
Tm_type)
:named kinding_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(26,45-44,20); use=QuickSort.Seq.fst(44,8-44,20)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
:qid QuickSort.Seq_pre_typing_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))

:named QuickSort.Seq_pre_typing_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(26,45-44,20); use=QuickSort.Seq.fst(44,8-44,20)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)
(and 
;; def=QuickSort.Seq.fst(26,45-44,20); use=QuickSort.Seq.fst(44,8-44,20)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
x_9cd1733a5204f989dbb2f01d5984df93_0)
(HasType @x2
x_9cd1733a5204f989dbb2f01d5984df93_0))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931.1))

(IsTotFun @x0)

;; def=QuickSort.Seq.fst(26,45-44,20); use=QuickSort.Seq.fst(44,8-44,20)
(forall ((@x1 Term))
 (! (implies (HasType @x1
x_9cd1733a5204f989dbb2f01d5984df93_0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
:qid QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))

:named QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
(declare-fun Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b
Tm_type)
:named refinement_kinding_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(26,28-26,67); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b)
(and (HasTypeFuel @u0
@x1
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)

;; def=QuickSort.Seq.fst(26,51-26,66); use=QuickSort.Seq.fst(44,8-44,17)
(Valid 
;; def=QuickSort.Seq.fst(26,51-26,66); use=QuickSort.Seq.fst(44,8-44,17)
(FStar.Seq.Properties.total_order x_9cd1733a5204f989dbb2f01d5984df93_0
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
:qid refinement_interpretation_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))

:named refinement_interpretation_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
(Valid (Prims.hasEq Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)))
:named haseqTm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
;;;;;;;;;;;;;;;;binder_x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
;;; Fact-ids: 
(assert (! (HasType x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b)
:named binder_x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1))
;;;;;;;;;;;;;;;;s : FStar.Seq.Base.seq a (FStar.Seq.Base.seq a)
(declare-fun x_0f213a493b460394312187ae1ccaa1bb_2 () Term)
;;;;;;;;;;;;;;;;binder_x_0f213a493b460394312187ae1ccaa1bb_2
;;; Fact-ids: 
(assert (! (HasType x_0f213a493b460394312187ae1ccaa1bb_2
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))
:named binder_x_0f213a493b460394312187ae1ccaa1bb_2))
;;;;;;;;;;;;;;;;pivot : pivot: Prims.nat{pivot < FStar.Seq.Base.length s} (pivot: Prims.nat{pivot < FStar.Seq.Base.length s})
(declare-fun x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3 () Term)
(declare-fun Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9
Tm_type)
:named refinement_kinding_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,18-27,45); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
:qid refinement_interpretation_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))

:named refinement_interpretation_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
;;;;;;;;;;;;;;;;binder_x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
;;; Fact-ids: 
(assert (! (HasType x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)
:named binder_x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
;;;;;;;;;;;;;;;;back : back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s} (back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s})
(declare-fun x_13651351701aa0233fa7c0a4f518c2b0_4 () Term)
(declare-fun Tm_refine_5d345a713b49e47c27bb613e775710b3 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_5d345a713b49e47c27bb613e775710b3
Tm_type)
:named refinement_kinding_Tm_refine_5d345a713b49e47c27bb613e775710b3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-27,91); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_5d345a713b49e47c27bb613e775710b3)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_5d345a713b49e47c27bb613e775710b3))
:qid refinement_interpretation_Tm_refine_5d345a713b49e47c27bb613e775710b3))

:named refinement_interpretation_Tm_refine_5d345a713b49e47c27bb613e775710b3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5d345a713b49e47c27bb613e775710b3
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_5d345a713b49e47c27bb613e775710b3))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_5d345a713b49e47c27bb613e775710b3))
;;;;;;;;;;;;;;;;binder_x_13651351701aa0233fa7c0a4f518c2b0_4
;;; Fact-ids: 
(assert (! (HasType x_13651351701aa0233fa7c0a4f518c2b0_4
Tm_refine_5d345a713b49e47c27bb613e775710b3)
:named binder_x_13651351701aa0233fa7c0a4f518c2b0_4))



(declare-fun Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff))

:named refinement_kinding_Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))


;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)

;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)
(Prims.precedes Prims.int
Prims.int
(Prims.op_Subtraction @x1
@x2)
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff))

:named refinement_interpretation_Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x0
@x1
@x2))))
:qid haseqTm_refine_d2bb05f4426cc94ddfbc28c1e85eadff))

:named haseqTm_refine_d2bb05f4426cc94ddfbc28c1e85eadff))

(declare-fun QuickSort.Seq.partition (Term Term Term Term Term) Term)




(declare-fun Tm_refine_5e25be0317470973813e1b1aedda3087 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(28,12-28,27); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_5e25be0317470973813e1b1aedda3087))

:named refinement_kinding_Tm_refine_5e25be0317470973813e1b1aedda3087))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(28,12-28,27); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(44,8-44,17)
(= (Prims.op_Addition (FStar.Seq.Base.length @x2
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1))
(FStar.Seq.Base.length @x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))
(FStar.Seq.Base.length @x2
@x3))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(44,8-44,17)
(> (BoxInt_proj_0 (FStar.Seq.Base.length @x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))
(BoxInt_proj_0 (BoxInt 0)))


;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(44,8-44,17)
(= (FStar.Seq.Base.index @x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)
(BoxInt 0))
(FStar.Seq.Base.index @x2
@x3
@x4))


;; def=QuickSort.Seq.fst(37,25-39,74); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
@x2)

;; def=QuickSort.Seq.fst(37,36-39,73); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(37,36-37,56); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(37,37-37,45); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (FStar.Seq.Properties.mem @x2
@x6
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))


;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
(FStar.Seq.Base.index @x2
@x3
@x4))
@x6))
)


;; def=QuickSort.Seq.fst(38,36-38,56); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(38,37-38,45); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (FStar.Seq.Properties.mem @x2
@x6
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))


;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
@x6)
(FStar.Seq.Base.index @x2
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(44,8-44,17)
(= (FStar.Seq.Properties.count @x2
@x6
@x3)
(Prims.op_Addition (FStar.Seq.Properties.count @x2
@x6
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1))
(FStar.Seq.Properties.count @x2
@x6
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1))))
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_5e25be0317470973813e1b1aedda3087.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_5e25be0317470973813e1b1aedda3087))

:named refinement_interpretation_Tm_refine_5e25be0317470973813e1b1aedda3087))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5e25be0317470973813e1b1aedda3087
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(28,12-28,27); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_5e25be0317470973813e1b1aedda3087))

:named haseqTm_refine_5e25be0317470973813e1b1aedda3087))

;;;;;;;;;;;;;;;;f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f} ->     s: FStar.Seq.Base.seq a ->     pivot: Prims.nat{pivot < FStar.Seq.Base.length s} ->     back:       (back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s})         {back - pivot << back - pivot}   -> Prims.Pure (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a)
(declare-fun Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938
Tm_type)
:named kinding_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))
:qid QuickSort.Seq_pre_typing_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))

:named QuickSort.Seq_pre_typing_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938)
(and 
;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and 
;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x6)
(BoxInt_proj_0 @x4))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
@x6))
(FStar.Seq.Base.index @x1
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x5)
(BoxInt_proj_0 @x6))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
@x4))
(FStar.Seq.Base.index @x1
@x3
@x6)))
)
)
)
 
;;no pats
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938.2))

(HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1))
(HasType @x4
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3))
(HasType @x5
(Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x4
@x1
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x1
@x3
@x4
@x2)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938.1))

(IsTotFun @x0)

;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938.3))


;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938.4))


;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938.5))


;; def=QuickSort.Seq.fst(26,18-61,15); use=QuickSort.Seq.fst(27,49-61,15)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1))
(HasType @x4
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3)))
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
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938.6))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))
:qid QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))

:named QuickSort.Seq_interpretation_Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))
(declare-fun QuickSort.Seq.partition@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickSort.Seq.partition@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickSort.Seq.partition@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_QuickSort.Seq.partition))

:named token_correspondence_QuickSort.Seq.partition))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType QuickSort.Seq.partition@tok
Tm_arrow_ee706b0e3bf82480cf9d4eaa5b071938))

;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickSort.Seq.partition@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(QuickSort.Seq.partition @x1
@x2
@x3
@x4
@x5))
 

:pattern ((QuickSort.Seq.partition @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_QuickSort.Seq.partition.1))
)
 

:pattern ((ApplyTT @x0
QuickSort.Seq.partition@tok))
:qid function_token_typing_QuickSort.Seq.partition))

:named function_token_typing_QuickSort.Seq.partition))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x2))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x5)
(BoxInt_proj_0 @x3))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
(FStar.Seq.Base.index @x0
@x2
@x5))
(FStar.Seq.Base.index @x0
@x2
@x3)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x4)
(BoxInt_proj_0 @x5))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
(FStar.Seq.Base.index @x0
@x2
@x3))
(FStar.Seq.Base.index @x0
@x2
@x5)))
)
)
)
 
;;no pats
:qid typing_QuickSort.Seq.partition.1))

(HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0))
(HasType @x3
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x2))
(HasType @x4
(Tm_refine_d2bb05f4426cc94ddfbc28c1e85eadff @x3
@x0
@x2)))
(HasType (QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4)
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x2
@x3
@x1)))
 

:pattern ((QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4))
:qid typing_QuickSort.Seq.partition))

:named typing_QuickSort.Seq.partition))
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




(declare-fun Tm_refine_84699a40669c17a30198aef949853324 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_84699a40669c17a30198aef949853324
Tm_type)
:named refinement_kinding_Tm_refine_84699a40669c17a30198aef949853324))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=QuickSort.Seq.fst(48,17-48,22)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_84699a40669c17a30198aef949853324)
(and (HasTypeFuel @u0
@x1
Prims.nat)
(BoxBool_proj_0 (Prims.op_LessThanOrEqual x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
@x1))
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x1
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_84699a40669c17a30198aef949853324))
:qid refinement_interpretation_Tm_refine_84699a40669c17a30198aef949853324))

:named refinement_interpretation_Tm_refine_84699a40669c17a30198aef949853324))
;;;;;;;;;;;;;;;;haseq for Tm_refine_84699a40669c17a30198aef949853324
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_84699a40669c17a30198aef949853324))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_84699a40669c17a30198aef949853324))
(declare-fun Tm_refine_058137dd29c2e401b0f27de4958bbd74 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_058137dd29c2e401b0f27de4958bbd74
Tm_type)
:named refinement_kinding_Tm_refine_058137dd29c2e401b0f27de4958bbd74))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Properties.fsti(148,20-148,39); use=QuickSort.Seq.fst(49,8-49,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_058137dd29c2e401b0f27de4958bbd74)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(148,27-148,37); use=QuickSort.Seq.fst(49,8-49,23)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_058137dd29c2e401b0f27de4958bbd74))
:qid refinement_interpretation_Tm_refine_058137dd29c2e401b0f27de4958bbd74))

:named refinement_interpretation_Tm_refine_058137dd29c2e401b0f27de4958bbd74))
;;;;;;;;;;;;;;;;haseq for Tm_refine_058137dd29c2e401b0f27de4958bbd74
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_058137dd29c2e401b0f27de4958bbd74))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_058137dd29c2e401b0f27de4958bbd74))
(declare-fun Tm_refine_154a3e1da37d50b0a132fae533c5de4c () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_154a3e1da37d50b0a132fae533c5de4c
Tm_type)
:named refinement_kinding_Tm_refine_154a3e1da37d50b0a132fae533c5de4c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Properties.fsti(148,20-148,39); use=QuickSort.Seq.fst(50,8-50,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_154a3e1da37d50b0a132fae533c5de4c)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(148,27-148,37); use=QuickSort.Seq.fst(50,8-50,23)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_154a3e1da37d50b0a132fae533c5de4c))
:qid refinement_interpretation_Tm_refine_154a3e1da37d50b0a132fae533c5de4c))

:named refinement_interpretation_Tm_refine_154a3e1da37d50b0a132fae533c5de4c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_154a3e1da37d50b0a132fae533c5de4c
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_154a3e1da37d50b0a132fae533c5de4c))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_154a3e1da37d50b0a132fae533c5de4c))
(declare-fun Tm_refine_5eb46b6c50003806a6d48ac88db75a43 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_5eb46b6c50003806a6d48ac88db75a43
Tm_type)
:named refinement_kinding_Tm_refine_5eb46b6c50003806a6d48ac88db75a43))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,18-27,90); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_5eb46b6c50003806a6d48ac88db75a43)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,28-27,90); use=QuickSort.Seq.fst(45,5-45,15)
(or 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(45,5-45,10)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(45,11-45,15)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_5eb46b6c50003806a6d48ac88db75a43))
:qid refinement_interpretation_Tm_refine_5eb46b6c50003806a6d48ac88db75a43))

:named refinement_interpretation_Tm_refine_5eb46b6c50003806a6d48ac88db75a43))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5eb46b6c50003806a6d48ac88db75a43
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_5eb46b6c50003806a6d48ac88db75a43))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_5eb46b6c50003806a6d48ac88db75a43))


(declare-fun Tm_refine_34050cecb47b7274a659a296a955d5a6 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_34050cecb47b7274a659a296a955d5a6
Tm_type)
:named refinement_kinding_Tm_refine_34050cecb47b7274a659a296a955d5a6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Properties.fsti(202,66-202,95); use=QuickSort.Seq.fst(56,20-56,39)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_34050cecb47b7274a659a296a955d5a6)
(and (HasTypeFuel @u0
@x1
Prims.nat)
(BoxBool_proj_0 (Prims.op_LessThanOrEqual x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
@x1))
(BoxBool_proj_0 (Prims.op_LessThan @x1
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_34050cecb47b7274a659a296a955d5a6))
:qid refinement_interpretation_Tm_refine_34050cecb47b7274a659a296a955d5a6))

:named refinement_interpretation_Tm_refine_34050cecb47b7274a659a296a955d5a6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_34050cecb47b7274a659a296a955d5a6
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_34050cecb47b7274a659a296a955d5a6))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_34050cecb47b7274a659a296a955d5a6))
(declare-fun Tm_refine_5b90164ae6054083792006082ff347d9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_5b90164ae6054083792006082ff347d9
Tm_type)
:named refinement_kinding_Tm_refine_5b90164ae6054083792006082ff347d9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,18-27,45); use=QuickSort.Seq.fst(57,12-57,21)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_5b90164ae6054083792006082ff347d9)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(57,12-57,21)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_5b90164ae6054083792006082ff347d9))
:qid refinement_interpretation_Tm_refine_5b90164ae6054083792006082ff347d9))

:named refinement_interpretation_Tm_refine_5b90164ae6054083792006082ff347d9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5b90164ae6054083792006082ff347d9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_5b90164ae6054083792006082ff347d9))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_5b90164ae6054083792006082ff347d9))







(declare-fun Tm_refine_f4a3d845840488929bcdc452e5f43750 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_f4a3d845840488929bcdc452e5f43750
Tm_type)
:named refinement_kinding_Tm_refine_f4a3d845840488929bcdc452e5f43750))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(60,36-60,45)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f4a3d845840488929bcdc452e5f43750)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(60,36-60,45)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(60,36-60,45)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4))))


;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(60,36-60,45)

;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(60,36-60,45)
(Valid 
;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(60,36-60,45)
(Prims.precedes Prims.int
Prims.int
(Prims.op_Subtraction @x1
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f4a3d845840488929bcdc452e5f43750))
:qid refinement_interpretation_Tm_refine_f4a3d845840488929bcdc452e5f43750))

:named refinement_interpretation_Tm_refine_f4a3d845840488929bcdc452e5f43750))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f4a3d845840488929bcdc452e5f43750
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f4a3d845840488929bcdc452e5f43750))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_f4a3d845840488929bcdc452e5f43750))
(declare-fun Tm_refine_d776e1ca9b781ace328f8cdd42b24350 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_d776e1ca9b781ace328f8cdd42b24350
Tm_type)
:named refinement_kinding_Tm_refine_d776e1ca9b781ace328f8cdd42b24350))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(29,27-29,48); use=QuickSort.Seq.fst(60,36-60,45)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_d776e1ca9b781ace328f8cdd42b24350)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(29,34-29,46); use=QuickSort.Seq.fst(60,36-60,45)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_d776e1ca9b781ace328f8cdd42b24350))
:qid refinement_interpretation_Tm_refine_d776e1ca9b781ace328f8cdd42b24350))

:named refinement_interpretation_Tm_refine_d776e1ca9b781ace328f8cdd42b24350))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d776e1ca9b781ace328f8cdd42b24350
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_d776e1ca9b781ace328f8cdd42b24350))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_d776e1ca9b781ace328f8cdd42b24350))







; Encoding query formula : forall (p: Prims.pure_post (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a)).
;   (forall (i: Prims.nat{i < FStar.Seq.Base.length s}).
;       (i <= pivot ==> f (FStar.Seq.Base.index s i) (FStar.Seq.Base.index s pivot)) /\
;       (back < i ==> f (FStar.Seq.Base.index s pivot) (FStar.Seq.Base.index s i))) /\
;   (forall (pure_result: FStar.Seq.Base.seq a & FStar.Seq.Base.seq a).
;       FStar.Seq.Base.length (FStar.Pervasives.Native.fst pure_result) +
;       FStar.Seq.Base.length (FStar.Pervasives.Native.snd pure_result) =
;       FStar.Seq.Base.length s /\ FStar.Seq.Base.length (FStar.Pervasives.Native.snd pure_result) > 0 /\
;       FStar.Seq.Base.index (FStar.Pervasives.Native.snd pure_result) 0 =
;       FStar.Seq.Base.index s pivot /\
;       (forall (x: a).
;           (FStar.Seq.Properties.mem x (FStar.Pervasives.Native.snd pure_result) ==>
;             f (FStar.Seq.Base.index s pivot) x) /\
;           (FStar.Seq.Properties.mem x (FStar.Pervasives.Native.fst pure_result) ==>
;             f x (FStar.Seq.Base.index s pivot)) /\
;           FStar.Seq.Properties.count x s =
;           FStar.Seq.Properties.count x (FStar.Pervasives.Native.snd pure_result) +
;           FStar.Seq.Properties.count x (FStar.Pervasives.Native.fst pure_result)) ==>
;       p pure_result) ==>
;   Prims.hasEq Prims.nat /\
;   (forall (any_result: Type0).
;       pivot:
;       Prims.nat
;         {pivot < FStar.Seq.Base.length s \/ pivot <= pivot /\ pivot < FStar.Seq.Base.length s} ==
;       any_result ==>
;       (pivot < FStar.Seq.Base.length s ==>
;         pivot < FStar.Seq.Base.length s \/ pivot <= pivot /\ pivot < FStar.Seq.Base.length s) /\
;       (forall (any_result: pivot: Prims.nat{pivot < FStar.Seq.Base.length s}).
;           pivot == any_result ==>
;           (pivot <= back /\ back < FStar.Seq.Base.length s ==>
;             back < FStar.Seq.Base.length s \/ pivot <= back /\ back < FStar.Seq.Base.length s) /\
;           (forall (any_result: back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s}).
;               back == any_result ==>
;               (forall (any_result: Prims.bool).
;                   pivot = back == any_result ==>
;                   (forall (k: Prims.pure_post (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a)).
;                       (forall (x: FStar.Seq.Base.seq a & FStar.Seq.Base.seq a).
;                           {:pattern Prims.guard_free (k x)}
;                           (x ==
;                             (match pivot = back with
;                               | true ->
;                                 FStar.Seq.Base.slice s 0 pivot,
;                                 FStar.Seq.Base.slice s pivot (FStar.Seq.Base.length s)
;                               | _ ->
;                                 (match
;                                     f (FStar.Seq.Base.index s (pivot + 1))
;                                       (FStar.Seq.Base.index s pivot)
;                                   with
;                                   | true ->
;                                     QuickSort.Seq.partition f
;                                       (FStar.Seq.Properties.swap s pivot (pivot + 1))
;                                       (pivot + 1)
;                                       back
;                                   | _ ->
;                                     QuickSort.Seq.partition f
;                                       (FStar.Seq.Properties.swap s (pivot + 1) back)
;                                       pivot
;                                       (back - 1))
;                                 <:
;                                 FStar.Seq.Base.seq a & FStar.Seq.Base.seq a) ==>
;                             (forall (return_val: FStar.Seq.Base.seq a & FStar.Seq.Base.seq a).
;                                 return_val == x ==> p return_val)) ==>
;                           k x) ==>
;                       (pivot = back == true ==>
;                         (pivot < FStar.Seq.Base.length s ==> pivot <= FStar.Seq.Base.length s) /\
;                         (forall (any_result: pivot: Prims.nat{pivot < FStar.Seq.Base.length s}).
;                             pivot == any_result ==>
;                             (forall (pure_result: Prims.unit).
;                                 (forall (x: a).
;                                     FStar.Seq.Properties.count x s =
;                                     FStar.Seq.Properties.count x (FStar.Seq.Base.slice s 0 pivot) +
;                                     FStar.Seq.Properties.count x
;                                       (FStar.Seq.Base.slice s pivot (FStar.Seq.Base.length s))) ==>
;                                 (pivot < FStar.Seq.Base.length s ==>
;                                   0 <= pivot && pivot <= FStar.Seq.Base.length s) /\
;                                 (forall (any_result:
;                                     pivot: Prims.nat{pivot < FStar.Seq.Base.length s}).
;                                     pivot == any_result ==>
;                                     (forall (any_result: FStar.Seq.Base.seq a).
;                                         FStar.Seq.Base.slice s 0 pivot == any_result ==>
;                                         pivot <= FStar.Seq.Base.length s &&
;                                         FStar.Seq.Base.length s <= FStar.Seq.Base.length s /\
;                                         (forall (return_val:
;                                             j: Prims.nat{pivot <= j && j <= FStar.Seq.Base.length s})
;                                           .
;                                             return_val == FStar.Seq.Base.length s ==>
;                                             (forall (any_result: FStar.Seq.Base.seq a).
;                                                 FStar.Seq.Base.slice s
;                                                   pivot
;                                                   (FStar.Seq.Base.length s) ==
;                                                 any_result ==>
;                                                 (forall (i:
;                                                     Prims.nat
;                                                       { i <
;                                                         FStar.Seq.Base.length (FStar.Seq.Base.slice s
;                                                               0
;                                                               pivot) }).
;                                                     f (FStar.Seq.Base.index (FStar.Seq.Base.slice s
;                                                               0
;                                                               pivot)
;                                                           i)
;                                                       (FStar.Seq.Base.index s pivot)) /\
;                                                 (forall (pure_result: Prims.unit).
;                                                     (forall (x: a).
;                                                         FStar.Seq.Properties.mem x
;                                                           (FStar.Seq.Base.slice s 0 pivot) ==>
;                                                         f x (FStar.Seq.Base.index s pivot)) ==>
;                                                     (forall (i:
;                                                         Prims.nat
;                                                           { i <
;                                                             FStar.Seq.Base.length (FStar.Seq.Base.slice
;                                                                   s
;                                                                   pivot
;                                                                   (FStar.Seq.Base.length s)) }).
;                                                         f (FStar.Seq.Base.index s pivot)
;                                                           (FStar.Seq.Base.index (FStar.Seq.Base.slice
;                                                                   s
;                                                                   pivot
;                                                                   (FStar.Seq.Base.length s))
;                                                               i)) /\
;                                                     (forall (pure_result: Prims.unit).
;                                                         (forall (x: a).
;                                                             FStar.Seq.Properties.mem x
;                                                               (FStar.Seq.Base.slice s
;                                                                   pivot
;                                                                   (FStar.Seq.Base.length s)) ==>
;                                                             f (FStar.Seq.Base.index s pivot) x) ==>
;                                                         (forall (any_result:
;                                                             FStar.Seq.Base.seq a &
;                                                             FStar.Seq.Base.seq a).
;                                                             k any_result)))))))))) /\
;                       (~(pivot = back = true) ==>
;                         (forall (b: Prims.bool).
;                             pivot = back == b ==>
;                             pivot + 1 >= 0 /\ pivot + 1 < FStar.Seq.Base.length s /\
;                             (forall (return_val: i: Prims.nat{i < FStar.Seq.Base.length s}).
;                                 return_val == pivot + 1 ==>
;                                 (forall (any_result: a).
;                                     FStar.Seq.Base.index s (pivot + 1) == any_result ==>
;                                     (forall (k:
;                                         Prims.pure_post (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a
;                                           )).
;                                         (forall (x: FStar.Seq.Base.seq a & FStar.Seq.Base.seq a).
;                                             {:pattern Prims.guard_free (k x)}
;                                             k x ==> k x) ==>
;                                         (f (FStar.Seq.Base.index s (pivot + 1))
;                                             (FStar.Seq.Base.index s pivot) ==
;                                           true ==>
;                                           pivot + 1 >= 0 /\ pivot + 1 < FStar.Seq.Base.length s /\
;                                           (forall (return_val:
;                                               j: Prims.nat{j < FStar.Seq.Base.length s}).
;                                               return_val == pivot + 1 ==>
;                                               (forall (any_result: FStar.Seq.Base.seq a).
;                                                   FStar.Seq.Properties.swap s pivot (pivot + 1) ==
;                                                   any_result ==>
;                                                   pivot + 1 >= 0 /\
;                                                   pivot <= pivot + 1 &&
;                                                   pivot + 1 < FStar.Seq.Base.length s /\
;                                                   (forall (return_val:
;                                                       j:
;                                                       Prims.nat
;                                                         {pivot <= j && j < FStar.Seq.Base.length s})
;                                                     .
;                                                       return_val == pivot + 1 ==>
;                                                       (forall (pure_result: Prims.unit).
;                                                           FStar.Seq.Properties.permutation a
;                                                             s
;                                                             (FStar.Seq.Properties.swap s
;                                                                 pivot
;                                                                 (pivot + 1)) ==>
;                                                           pivot + 1 >= 0 /\
;                                                           pivot + 1 <
;                                                           FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                 s
;                                                                 pivot
;                                                                 (pivot + 1)) /\
;                                                           (forall (return_val:
;                                                               pivot:
;                                                               Prims.nat
;                                                                 { pivot <
;                                                                   FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                         s
;                                                                         pivot
;                                                                         (pivot + 1)) }).
;                                                               return_val == pivot + 1 ==>
;                                                               (pivot <= back /\
;                                                                 back < FStar.Seq.Base.length s ==>
;                                                                 pivot + 1 <= back /\
;                                                                 back <
;                                                                 FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                       s
;                                                                       pivot
;                                                                       (pivot + 1)) /\
;                                                                 back - (pivot + 1) << back - pivot) /\
;                                                               (forall (any_result:
;                                                                   back:
;                                                                   Prims.nat
;                                                                     { pivot <= back /\
;                                                                       back < FStar.Seq.Base.length s
;                                                                     }).
;                                                                   back == any_result ==>
;                                                                   (forall (i:
;                                                                       Prims.nat
;                                                                         { i <
;                                                                           FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                                 s
;                                                                                 pivot
;                                                                                 (pivot + 1)) }).
;                                                                       (i <= pivot + 1 ==>
;                                                                         f (FStar.Seq.Base.index (FStar.Seq.Properties.swap
;                                                                                   s
;                                                                                   pivot
;                                                                                   (pivot + 1))
;                                                                               i)
;                                                                           (FStar.Seq.Base.index (FStar.Seq.Properties.swap
;                                                                                   s
;                                                                                   pivot
;                                                                                   (pivot + 1))
;                                                                               (pivot + 1))) /\
;                                                                       (back < i ==>
;                                                                         f (FStar.Seq.Base.index (FStar.Seq.Properties.swap
;                                                                                   s
;                                                                                   pivot
;                                                                                   (pivot + 1))
;                                                                               (pivot + 1))
;                                                                           (FStar.Seq.Base.index (FStar.Seq.Properties.swap
;                                                                                   s
;                                                                                   pivot
;                                                                                   (pivot + 1))
;                                                                               i))) /\
;                                                                   (forall (pure_result:
;                                                                       FStar.Seq.Base.seq a &
;                                                                       FStar.Seq.Base.seq a).
;                                                                       FStar.Seq.Base.length (FStar.Pervasives.Native.fst
;                                                                             pure_result) +
;                                                                       FStar.Seq.Base.length (FStar.Pervasives.Native.snd
;                                                                             pure_result) =
;                                                                       FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                             s
;                                                                             pivot
;                                                                             (pivot + 1)) /\
;                                                                       FStar.Seq.Base.length (FStar.Pervasives.Native.snd
;                                                                             pure_result) >
;                                                                       0 /\
;                                                                       FStar.Seq.Base.index (FStar.Pervasives.Native.snd
;                                                                             pure_result)
;                                                                         0 =
;                                                                       FStar.Seq.Base.index (FStar.Seq.Properties.swap
;                                                                             s
;                                                                             pivot
;                                                                             (pivot + 1))
;                                                                         (pivot + 1) /\
;                                                                       (forall (x: a).
;                                                                           (FStar.Seq.Properties.mem x
;                                                                               (FStar.Pervasives.Native.snd
;                                                                                   pure_result) ==>
;                                                                             f (FStar.Seq.Base.index (
;                                                                                     FStar.Seq.Properties.swap
;                                                                                       s
;                                                                                       pivot
;                                                                                       (pivot + 1))
;                                                                                   (pivot + 1))
;                                                                               x) /\
;                                                                           (FStar.Seq.Properties.mem x
;                                                                               (FStar.Pervasives.Native.fst
;                                                                                   pure_result) ==>
;                                                                             f x
;                                                                               (FStar.Seq.Base.index (
;                                                                                     FStar.Seq.Properties.swap
;                                                                                       s
;                                                                                       pivot
;                                                                                       (pivot + 1))
;                                                                                   (pivot + 1))) /\
;                                                                           FStar.Seq.Properties.count
;                                                                             x
;                                                                             (FStar.Seq.Properties.swap
;                                                                                 s
;                                                                                 pivot
;                                                                                 (pivot + 1)) =
;                                                                           FStar.Seq.Properties.count
;                                                                             x
;                                                                             (FStar.Pervasives.Native.snd
;                                                                                 pure_result) +
;                                                                           FStar.Seq.Properties.count
;                                                                             x
;                                                                             (FStar.Pervasives.Native.fst
;                                                                                 pure_result)) ==>
;                                                                       k pure_result)))))))) /\
;                                         (~(f (FStar.Seq.Base.index s (pivot + 1))
;                                               (FStar.Seq.Base.index s pivot) =
;                                             true) ==>
;                                           (forall (b: Prims.bool).
;                                               f (FStar.Seq.Base.index s (pivot + 1))
;                                                 (FStar.Seq.Base.index s pivot) ==
;                                               b ==>
;                                               pivot + 1 >= 0 /\ pivot + 1 < FStar.Seq.Base.length s /\
;                                               (forall (return_val:
;                                                   i: Prims.nat{i < FStar.Seq.Base.length s}).
;                                                   return_val == pivot + 1 ==>
;                                                   (pivot <= back /\ back < FStar.Seq.Base.length s ==>
;                                                     back < FStar.Seq.Base.length s) /\
;                                                   (forall (any_result:
;                                                       back:
;                                                       Prims.nat
;                                                         { pivot <= back /\
;                                                           back < FStar.Seq.Base.length s }).
;                                                       back == any_result ==>
;                                                       (forall (any_result: FStar.Seq.Base.seq a).
;                                                           FStar.Seq.Properties.swap s
;                                                             (pivot + 1)
;                                                             back ==
;                                                           any_result ==>
;                                                           pivot + 1 >= 0 /\
;                                                           pivot + 1 < FStar.Seq.Base.length s /\
;                                                           (forall (return_val:
;                                                               i:
;                                                               Prims.nat{i < FStar.Seq.Base.length s})
;                                                             .
;                                                               return_val == pivot + 1 ==>
;                                                               (pivot <= back /\
;                                                                 back < FStar.Seq.Base.length s ==>
;                                                                 pivot + 1 <= back &&
;                                                                 back < FStar.Seq.Base.length s) /\
;                                                               (forall (any_result:
;                                                                   back:
;                                                                   Prims.nat
;                                                                     { pivot <= back /\
;                                                                       back < FStar.Seq.Base.length s
;                                                                     }).
;                                                                   back == any_result ==>
;                                                                   (forall (pure_result: Prims.unit).
;                                                                       FStar.Seq.Properties.permutation
;                                                                         a
;                                                                         s
;                                                                         (FStar.Seq.Properties.swap s
;                                                                             (pivot + 1)
;                                                                             back) ==>
;                                                                       (pivot <
;                                                                         FStar.Seq.Base.length s ==>
;                                                                         pivot <
;                                                                         FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                               s
;                                                                               (pivot + 1)
;                                                                               back)) /\
;                                                                       (forall (any_result:
;                                                                           pivot:
;                                                                           Prims.nat
;                                                                             { pivot <
;                                                                               FStar.Seq.Base.length s
;                                                                                }).
;                                                                           pivot == any_result ==>
;                                                                           back - 1 >= 0 /\
;                                                                           (pivot <= back - 1) /\
;                                                                           (back - 1 <
;                                                                             FStar.Seq.Base.length (FStar.Seq.Properties.swap
;                                                                                   s
;                                                                                   (pivot + 1)
;                                                                                   back)) /\
;                                                                           back - 1 - pivot <<
;                                                                           back - pivot /\
;                                                                           (forall (return_val:
;                                                                               back:
;                                                                               (back:
;                                                                                 Prims.nat
;                                                                                   { pivot <= back /\
;                                                                                     back <
;                                                                                     FStar.Seq.Base.length
;                                                                                       (FStar.Seq.Properties.swap
;                                                                                           s
;                                                                                           (pivot + 1
;                                                                                           )
;                                                                                           back) })
;                                                                                 { back - pivot <<
;                                                                                   back - pivot }).
;                                                                               return_val == back - 1 ==>
;                                                                               (forall (i:
;                                                                                   Prims.nat
;                                                                                     { i <
;                                                                                       FStar.Seq.Base.length
;                                                                                         (FStar.Seq.Properties.swap
;                                                                                             s
;                                                                                             (pivot +
;                                                                                               1)
;                                                                                             back) })
;                                                                                 .
;                                                                                   (i <= pivot ==>
;                                                                                     f (FStar.Seq.Base.index
;                                                                                           (FStar.Seq.Properties.swap
;                                                                                               s
;                                                                                               (pivot +
;                                                                                                 1)
;                                                                                               back)
;                                                                                           i)
;                                                                                       (FStar.Seq.Base.index
;                                                                                           (FStar.Seq.Properties.swap
;                                                                                               s
;                                                                                               (pivot +
;                                                                                                 1)
;                                                                                               back)
;                                                                                           pivot)) /\
;                                                                                   (back - 1 < i ==>
;                                                                                     f (FStar.Seq.Base.index
;                                                                                           (FStar.Seq.Properties.swap
;                                                                                               s
;                                                                                               (pivot +
;                                                                                                 1)
;                                                                                               back)
;                                                                                           pivot)
;                                                                                       (FStar.Seq.Base.index
;                                                                                           (FStar.Seq.Properties.swap
;                                                                                               s
;                                                                                               (pivot +
;                                                                                                 1)
;                                                                                               back)
;                                                                                           i))) /\
;                                                                               (forall (pure_result:
;                                                                                   FStar.Seq.Base.seq
;                                                                                     a &
;                                                                                   FStar.Seq.Base.seq
;                                                                                     a).
;                                                                                   FStar.Seq.Base.length
;                                                                                     (FStar.Pervasives.Native.fst
;                                                                                         pure_result) +
;                                                                                   FStar.Seq.Base.length
;                                                                                     (FStar.Pervasives.Native.snd
;                                                                                         pure_result) =
;                                                                                   FStar.Seq.Base.length
;                                                                                     (FStar.Seq.Properties.swap
;                                                                                         s
;                                                                                         (pivot + 1)
;                                                                                         back) /\
;                                                                                   FStar.Seq.Base.length
;                                                                                     (FStar.Pervasives.Native.snd
;                                                                                         pure_result) >
;                                                                                   0 /\
;                                                                                   FStar.Seq.Base.index
;                                                                                     (FStar.Pervasives.Native.snd
;                                                                                         pure_result)
;                                                                                     0 =
;                                                                                   FStar.Seq.Base.index
;                                                                                     (FStar.Seq.Properties.swap
;                                                                                         s
;                                                                                         (pivot + 1)
;                                                                                         back)
;                                                                                     pivot /\
;                                                                                   (forall (x: a).
;                                                                                       (FStar.Seq.Properties.mem
;                                                                                           x
;                                                                                           (FStar.Pervasives.Native.snd
;                                                                                               pure_result
;                                                                                             ) ==>
;                                                                                         f (FStar.Seq.Base.index
;                                                                                               (FStar.Seq.Properties.swap
;                                                                                                   s
;                                                                                                   (pivot +
;                                                                                                     1
;                                                                                                   )
;                                                                                                   back
;                                                                                                 )
;                                                                                               pivot)
;                                                                                           x) /\
;                                                                                       (FStar.Seq.Properties.mem
;                                                                                           x
;                                                                                           (FStar.Pervasives.Native.fst
;                                                                                               pure_result
;                                                                                             ) ==>
;                                                                                         f x
;                                                                                           (FStar.Seq.Base.index
;                                                                                               (FStar.Seq.Properties.swap
;                                                                                                   s
;                                                                                                   (pivot +
;                                                                                                     1
;                                                                                                   )
;                                                                                                   back
;                                                                                                 )
;                                                                                               pivot)
;                                                                                       ) /\
;                                                                                       FStar.Seq.Properties.count
;                                                                                         x
;                                                                                         (FStar.Seq.Properties.swap
;                                                                                             s
;                                                                                             (pivot +
;                                                                                               1)
;                                                                                             back) =
;                                                                                       FStar.Seq.Properties.count
;                                                                                         x
;                                                                                         (FStar.Pervasives.Native.snd
;                                                                                             pure_result
;                                                                                           ) +
;                                                                                       FStar.Seq.Properties.count
;                                                                                         x
;                                                                                         (FStar.Pervasives.Native.fst
;                                                                                             pure_result
;                                                                                           )) ==>
;                                                                                   QuickSort.Seq.partition
;                                                                                     f
;                                                                                     (FStar.Seq.Properties.swap
;                                                                                         s
;                                                                                         (pivot + 1)
;                                                                                         back)
;                                                                                     pivot
;                                                                                     (back - 1) ==
;                                                                                   pure_result ==>
;                                                                                   (forall (any_result:
;                                                                                       FStar.Seq.Base.seq
;                                                                                         a &
;                                                                                       FStar.Seq.Base.seq
;                                                                                         a).
;                                                                                       k any_result))
;                                                                           ))))))))))))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec partition`

(push) ;; push{0

; <fuel='0' ifuel='0'>

;;; Fact-ids: 
(assert (! (= MaxFuel
ZFuel)
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
ZFuel)
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))

;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(45,2-61,15)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(45,2-61,15)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(45,2-61,15)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
@x1))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(45,2-61,15)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(45,2-61,15)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(45,2-61,15)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
@x1)))
)
)
)
 
;;no pats
:qid @query.1))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(45,2-61,15)
(or label_2

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(45,2-61,15)
(= (Prims.op_Addition (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1)))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
)


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(45,2-61,15)
(or label_3

;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(45,2-61,15)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(45,2-61,15)
(or label_4

;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(45,2-61,15)
(= (FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1)
(BoxInt 0))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
)


;; def=QuickSort.Seq.fst(37,25-39,74); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x2 Term))
 (! (implies (HasType @x2
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=QuickSort.Seq.fst(37,36-39,73); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(37,37-37,45); use=QuickSort.Seq.fst(45,2-61,15)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1)))


;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(45,2-61,15)
(or label_5

;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(45,2-61,15)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
@x2))
)
)
(implies 
;; def=QuickSort.Seq.fst(38,37-38,45); use=QuickSort.Seq.fst(45,2-61,15)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x2
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1)))


;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(45,2-61,15)
(or label_6

;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(45,2-61,15)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x2)
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)
)

;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(45,2-61,15)
(or label_7

;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(45,2-61,15)
(= (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x2
x_0f213a493b460394312187ae1ccaa1bb_2)
(Prims.op_Addition (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1))
(FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x2
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x1))))
)
)
)
 
;;no pats
:qid @query.3))
)

;; def=Prims.fst(441,83-441,96); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x0
@x1)
)
)
:qid @query.2))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=QuickSort.Seq.fst(27,24-27,27); use=QuickSort.Seq.fst(45,5-45,10)
(or label_8

;; def=QuickSort.Seq.fst(27,24-27,27); use=QuickSort.Seq.fst(45,5-45,10)
(Valid 
;; def=QuickSort.Seq.fst(27,24-27,27); use=QuickSort.Seq.fst(45,5-45,10)
(Prims.hasEq Prims.nat)
)
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Tm_type)

;; def=Prims.fst(588,31-588,32); use=QuickSort.Seq.fst(45,2-61,15)
(= Tm_refine_5eb46b6c50003806a6d48ac88db75a43
@x1)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(45,5-45,10)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=QuickSort.Seq.fst(27,28-27,90); use=QuickSort.Seq.fst(45,5-45,10)
(or label_9

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(45,5-45,10)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(45,5-45,10)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(45,5-45,10)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(45,5-45,10)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=dummy(0,0-0,0); use=QuickSort.Seq.fst(45,2-61,15)
(= x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
@x2)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(45,11-45,15)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=QuickSort.Seq.fst(27,28-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(or label_10

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(45,11-45,15)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(45,11-45,15)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_refine_5d345a713b49e47c27bb613e775710b3)

;; def=dummy(0,0-0,0); use=QuickSort.Seq.fst(45,2-61,15)
(= x_13651351701aa0233fa7c0a4f518c2b0_4
@x3)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=QuickSort.Seq.fst(45,5-45,15); use=QuickSort.Seq.fst(45,5-45,15)
(= (Prims.op_Equality Tm_refine_5eb46b6c50003806a6d48ac88db75a43
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
x_13651351701aa0233fa7c0a4f518c2b0_4)
@x4)
)

;; def=Prims.fst(402,2-402,97); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))

;; def=Prims.fst(402,2-402,97); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x6 Term))
 (! (implies (implies 
;; def=QuickSort.Seq.fst(28,12-61,15); use=QuickSort.Seq.fst(45,2-61,15)
(= @x6
(let ((@lb7 (Prims.op_Equality Tm_refine_5eb46b6c50003806a6d48ac88db75a43
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
x_13651351701aa0233fa7c0a4f518c2b0_4)))
(ite (= @lb7
(BoxBool true))
(FStar.Pervasives.Native.Mktuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
(let ((@lb8 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))))
(ite (= @lb8
(BoxBool true))
(QuickSort.Seq.partition x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
(QuickSort.Seq.partition x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1))))))))


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x7
@x6)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x0
@x7)
)
)
 
;;no pats
:qid @query.10))
)

;; def=Prims.fst(402,84-402,87); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(402,84-402,87); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x5
@x6)
)
)
 :weight 0


:pattern ((ApplyTT @x5
@x6))
:qid @query.9))
)

;; def=Prims.fst(389,2-389,39); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(45,5-45,15); use=QuickSort.Seq.fst(45,5-45,15)
(= (Prims.op_Equality Tm_refine_5eb46b6c50003806a6d48ac88db75a43
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(46,28-46,33)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=FStar.Seq.Properties.fsti(151,53-151,64); use=QuickSort.Seq.fst(46,28-46,33)
(or label_11

;; def=FStar.Seq.Properties.fsti(151,53-151,64); use=QuickSort.Seq.fst(46,28-46,33)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=FStar.Seq.Properties.fsti(151,47-151,48); use=QuickSort.Seq.fst(45,2-61,15)
(= x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
@x6)
)

;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(46,8-46,25)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=FStar.Seq.Properties.fsti(153,11-153,89); use=QuickSort.Seq.fst(46,8-46,25)
(forall ((@x8 Term))
 (! (implies (HasType @x8
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=FStar.Seq.Properties.fsti(153,22-153,88); use=QuickSort.Seq.fst(46,8-46,25)
(= (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x8
x_0f213a493b460394312187ae1ccaa1bb_2)
(Prims.op_Addition (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x8
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
(FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x8
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))))
)
 
;;no pats
:qid @query.13))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(47,27-47,32)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=FStar.Seq.Base.fsti(64,49-64,72); use=QuickSort.Seq.fst(47,27-47,32)
(and 
;; def=QuickSort.Seq.fst(44,25-44,30); use=QuickSort.Seq.fst(47,27-47,32)
(or label_12
(BoxBool_proj_0 (Prims.op_LessThanOrEqual (BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))


;; def=QuickSort.Seq.fst(44,25-44,30); use=QuickSort.Seq.fst(47,27-47,32)
(or label_13
(BoxBool_proj_0 (Prims.op_LessThanOrEqual x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=FStar.Seq.Base.fsti(64,43-64,44); use=QuickSort.Seq.fst(45,2-61,15)
(= x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
@x8)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(47,12-47,32); use=QuickSort.Seq.fst(47,12-47,32)
(= (FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
@x9)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=QuickSort.Seq.fst(48,31-48,41); use=QuickSort.Seq.fst(48,31-48,41)
(or label_14
(BoxBool_proj_0 (Prims.op_LessThanOrEqual x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))))


;; def=QuickSort.Seq.fst(48,31-48,41); use=QuickSort.Seq.fst(48,31-48,41)
(or label_15
(BoxBool_proj_0 (Prims.op_LessThanOrEqual (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))))


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Tm_refine_84699a40669c17a30198aef949853324)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x10
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(48,12-48,41); use=QuickSort.Seq.fst(48,12-48,41)
(= (FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
@x11)
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(49,8-49,23)
(and 
;; def=FStar.Seq.Properties.fsti(148,12-148,55); use=QuickSort.Seq.fst(49,8-49,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_refine_058137dd29c2e401b0f27de4958bbd74)

;; def=FStar.Seq.Properties.fsti(148,41-148,54); use=QuickSort.Seq.fst(49,8-49,23)
(or label_16

;; def=FStar.Seq.Properties.fsti(148,41-148,54); use=QuickSort.Seq.fst(49,8-49,23)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
@x12))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)
)
 
;;no pats
:qid @query.18))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(49,8-49,23)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Prims.unit)

;; def=FStar.Seq.Properties.fsti(149,11-149,42); use=QuickSort.Seq.fst(49,8-49,23)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=FStar.Seq.Properties.fsti(149,26-149,33); use=QuickSort.Seq.fst(49,8-49,23)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x13
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)

;; def=FStar.Seq.Properties.fsti(149,38-149,41); use=QuickSort.Seq.fst(49,8-49,23)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x13)
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)
 
;;no pats
:qid @query.20))
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(50,8-50,23)
(and 
;; def=FStar.Seq.Properties.fsti(148,12-148,55); use=QuickSort.Seq.fst(50,8-50,23)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Tm_refine_154a3e1da37d50b0a132fae533c5de4c)

;; def=FStar.Seq.Properties.fsti(148,41-148,54); use=QuickSort.Seq.fst(50,8-50,23)
(or label_17

;; def=FStar.Seq.Properties.fsti(148,41-148,54); use=QuickSort.Seq.fst(50,8-50,23)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
@x13)))
)
)
 
;;no pats
:qid @query.21))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(50,8-50,23)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Prims.unit)

;; def=FStar.Seq.Properties.fsti(149,11-149,42); use=QuickSort.Seq.fst(50,8-50,23)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=FStar.Seq.Properties.fsti(149,26-149,33); use=QuickSort.Seq.fst(50,8-50,23)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x14
(FStar.Seq.Base.slice x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))))
)

;; def=FStar.Seq.Properties.fsti(149,38-149,41); use=QuickSort.Seq.fst(50,8-50,23)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
@x14))
)
 
;;no pats
:qid @query.23))
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)))

;; def=Prims.fst(451,90-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x5
@x14)
)
)
 
;;no pats
:qid @query.24))
)
 
;;no pats
:qid @query.22))
)
)
 
;;no pats
:qid @query.19))
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
:qid @query.12))
)
 
;;no pats
:qid @query.11))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=QuickSort.Seq.fst(45,2-61,15)
(not 
;; def=QuickSort.Seq.fst(45,5-45,15); use=QuickSort.Seq.fst(45,5-45,15)
(= (Prims.op_Equality Tm_refine_5eb46b6c50003806a6d48ac88db75a43
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=QuickSort.Seq.fst(45,5-61,15); use=QuickSort.Seq.fst(45,5-61,15)
(= (Prims.op_Equality Tm_refine_5eb46b6c50003806a6d48ac88db75a43
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
x_13651351701aa0233fa7c0a4f518c2b0_4)
@x6)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(52,26-52,37)
(or label_18

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(52,26-52,37)
(>= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=FStar.Seq.Base.fsti(32,40-32,52); use=QuickSort.Seq.fst(52,26-52,37)
(or label_19

;; def=FStar.Seq.Base.fsti(32,40-32,52); use=QuickSort.Seq.fst(52,26-52,37)
(< (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x7
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=QuickSort.Seq.fst(52,11-52,37); use=QuickSort.Seq.fst(52,11-52,37)
(= (FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
@x8)
)

;; def=Prims.fst(402,2-402,97); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))

;; def=Prims.fst(402,2-402,97); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x10 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(402,73-402,79); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x5
@x10)
)


;; def=Prims.fst(402,84-402,87); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(402,84-402,87); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x9
@x10)
)
)
 :weight 0


:pattern ((ApplyTT @x9
@x10))
:qid @query.29))
)

;; def=Prims.fst(389,2-389,39); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(54,10-54,18); use=QuickSort.Seq.fst(54,10-54,18)
(= (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(55,34-55,45)
(or label_20

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(55,34-55,45)
(>= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=FStar.Seq.Properties.fsti(94,56-94,66); use=QuickSort.Seq.fst(55,34-55,45)
(or label_21

;; def=FStar.Seq.Properties.fsti(94,56-94,66); use=QuickSort.Seq.fst(55,34-55,45)
(< (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x10
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(55,16-55,45); use=QuickSort.Seq.fst(55,16-55,45)
(= (FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
@x11)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(56,48-56,59)
(or label_22

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(56,48-56,59)
(>= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=QuickSort.Seq.fst(56,48-56,59); use=QuickSort.Seq.fst(56,48-56,59)
(or label_23
(BoxBool_proj_0 (Prims.op_LessThanOrEqual x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))))


;; def=QuickSort.Seq.fst(56,48-56,59); use=QuickSort.Seq.fst(56,48-56,59)
(or label_24
(BoxBool_proj_0 (Prims.op_LessThan (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))))


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Tm_refine_34050cecb47b7274a659a296a955d5a6)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x12
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
)

;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(56,20-56,39)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Prims.unit)

;; def=FStar.Seq.Properties.fsti(203,10-203,40); use=QuickSort.Seq.fst(56,20-56,39)
(Valid 
;; def=FStar.Seq.Properties.fsti(203,10-203,40); use=QuickSort.Seq.fst(56,20-56,39)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(57,27-57,38)
(or label_25

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(57,27-57,38)
(>= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(57,27-57,38)
(or label_26

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(57,27-57,38)
(< (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))))
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Tm_refine_5b90164ae6054083792006082ff347d9)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x14
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(57,39-57,43)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(57,39-57,43)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(57,39-57,43)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=QuickSort.Seq.fst(27,58-61,15); use=QuickSort.Seq.fst(57,39-57,43)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(57,39-57,43)
(or label_27

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(57,39-57,43)
(<= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4))
)


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(57,39-57,43)
(or label_28

;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(57,39-57,43)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))))
)


;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(57,39-57,43)
(or label_29

;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(57,39-57,43)
(Valid 
;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(57,39-57,43)
(Prims.precedes Prims.int
Prims.int
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
)
)
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_refine_5d345a713b49e47c27bb613e775710b3)

;; def=QuickSort.Seq.fst(27,49-44,35); use=QuickSort.Seq.fst(45,2-61,15)
(= x_13651351701aa0233fa7c0a4f518c2b0_4
@x15)
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(57,12-57,21)
(and 
;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(57,12-57,21)
(forall ((@x16 Term))
 (! (implies (HasType @x16
Tm_refine_5b90164ae6054083792006082ff347d9)

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(57,12-57,21)
(and (implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(57,12-57,21)
(<= (BoxInt_proj_0 @x16)
(BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(57,12-57,21)
(or label_30

;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(57,12-57,21)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
@x16))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))))
)
)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(57,12-57,21)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 @x16))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(57,12-57,21)
(or label_31

;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(57,12-57,21)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
@x16)))
)
))
)
 
;;no pats
:qid @query.36))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(57,12-57,21)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(57,12-57,21)
(= (Prims.op_Addition (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16)))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(57,12-57,21)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16)))
(BoxInt_proj_0 (BoxInt 0)))


;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(57,12-57,21)
(= (FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16)
(BoxInt 0))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))


;; def=QuickSort.Seq.fst(37,25-39,74); use=QuickSort.Seq.fst(57,12-57,21)
(forall ((@x17 Term))
 (! (implies (HasType @x17
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=QuickSort.Seq.fst(37,36-39,73); use=QuickSort.Seq.fst(57,12-57,21)
(and 
;; def=QuickSort.Seq.fst(37,36-37,56); use=QuickSort.Seq.fst(57,12-57,21)
(implies 
;; def=QuickSort.Seq.fst(37,37-37,45); use=QuickSort.Seq.fst(57,12-57,21)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16)))


;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(57,12-57,21)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
@x17))
)


;; def=QuickSort.Seq.fst(38,36-38,56); use=QuickSort.Seq.fst(57,12-57,21)
(implies 
;; def=QuickSort.Seq.fst(38,37-38,45); use=QuickSort.Seq.fst(57,12-57,21)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16)))


;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(57,12-57,21)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x17)
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))))
)


;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(57,12-57,21)
(= (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
(Prims.op_Addition (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16))
(FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x16))))
)
)
 
;;no pats
:qid @query.38))
)

;; def=Prims.fst(441,83-441,96); use=QuickSort.Seq.fst(57,12-57,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickSort.Seq.fst(57,12-57,21)
(ApplyTT @x9
@x16)
)
)
 
;;no pats
:qid @query.37))
)
)
 
;;no pats
:qid @query.35))
)
)
 
;;no pats
:qid @query.34))
)
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
)
 
;;no pats
:qid @query.30))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=QuickSort.Seq.fst(45,2-61,15)
(not 
;; def=QuickSort.Seq.fst(54,10-54,18); use=QuickSort.Seq.fst(54,10-54,18)
(= (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.bool)

;; def=QuickSort.Seq.fst(54,10-61,15); use=QuickSort.Seq.fst(54,10-61,15)
(= (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
@x10)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(58,28-58,39)
(or label_32

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(58,28-58,39)
(>= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=FStar.Seq.Properties.fsti(94,36-94,46); use=QuickSort.Seq.fst(58,28-58,39)
(or label_33

;; def=FStar.Seq.Properties.fsti(94,36-94,46); use=QuickSort.Seq.fst(58,28-58,39)
(< (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x11
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(58,40-58,44)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(58,40-58,44)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(58,40-58,44)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=FStar.Seq.Properties.fsti(94,56-94,66); use=QuickSort.Seq.fst(58,40-58,44)
(or label_34

;; def=FStar.Seq.Properties.fsti(94,56-94,66); use=QuickSort.Seq.fst(58,40-58,44)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Tm_refine_5d345a713b49e47c27bb613e775710b3)

;; def=FStar.Seq.Properties.fsti(94,50-94,51); use=QuickSort.Seq.fst(45,2-61,15)
(= x_13651351701aa0233fa7c0a4f518c2b0_4
@x12)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(58,16-58,44); use=QuickSort.Seq.fst(58,16-58,44)
(= (FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
@x13)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(59,42-59,53)
(or label_35

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(59,42-59,53)
(>= (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=FStar.Seq.Properties.fsti(202,53-202,63); use=QuickSort.Seq.fst(59,42-59,53)
(or label_36

;; def=FStar.Seq.Properties.fsti(202,53-202,63); use=QuickSort.Seq.fst(59,42-59,53)
(< (BoxInt_proj_0 (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x14
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(59,54-59,58)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(59,54-59,58)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(59,54-59,58)
(< (BoxInt_proj_0 x_13651351701aa0233fa7c0a4f518c2b0_4)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=FStar.Seq.Properties.fsti(202,73-202,93); use=QuickSort.Seq.fst(59,54-59,58)
(and 
;; def=QuickSort.Seq.fst(44,31-44,35); use=QuickSort.Seq.fst(59,54-59,58)
(or label_37
(BoxBool_proj_0 (Prims.op_LessThanOrEqual (Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)))


;; def=QuickSort.Seq.fst(44,31-44,35); use=QuickSort.Seq.fst(59,54-59,58)
(or label_38
(BoxBool_proj_0 (Prims.op_LessThan x_13651351701aa0233fa7c0a4f518c2b0_4
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_refine_5d345a713b49e47c27bb613e775710b3)

;; def=FStar.Seq.Properties.fsti(202,67-202,68); use=QuickSort.Seq.fst(45,2-61,15)
(= x_13651351701aa0233fa7c0a4f518c2b0_4
@x15)
)

;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(59,20-59,39)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Prims.unit)

;; def=FStar.Seq.Properties.fsti(203,10-203,40); use=QuickSort.Seq.fst(59,20-59,39)
(Valid 
;; def=FStar.Seq.Properties.fsti(203,10-203,40); use=QuickSort.Seq.fst(59,20-59,39)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4))
)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and (implies 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(60,51-60,56)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))


;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(60,51-60,56)
(or label_39

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(60,51-60,56)
(< (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4))))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=QuickSort.Seq.fst(27,18-44,30); use=QuickSort.Seq.fst(45,2-61,15)
(= x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
@x17)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(45,2-61,15)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(60,57-60,67)
(or label_40

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(60,57-60,67)
(>= (BoxInt_proj_0 (Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(60,57-60,67)
(or label_41

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(60,57-60,67)
(<= (BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(BoxInt_proj_0 (Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1))))
)


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(60,57-60,67)
(or label_42

;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(60,57-60,67)
(< (BoxInt_proj_0 (Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4))))
)


;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(60,57-60,67)
(or label_43

;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(60,57-60,67)
(Valid 
;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(60,57-60,67)
(Prims.precedes Prims.int
Prims.int
(Prims.op_Subtraction (Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1))
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
)
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Tm_refine_f4a3d845840488929bcdc452e5f43750)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(45,2-61,15)
(= @x18
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1)))
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(60,36-60,45)
(and 
;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(60,36-60,45)
(forall ((@x19 Term))
 (! (implies (HasType @x19
Tm_refine_d776e1ca9b781ace328f8cdd42b24350)

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(60,36-60,45)
(and (implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(60,36-60,45)
(<= (BoxInt_proj_0 @x19)
(BoxInt_proj_0 x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(60,36-60,45)
(or label_44

;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(60,36-60,45)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
@x19))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)
)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(60,36-60,45)
(< (BoxInt_proj_0 (Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1)))
(BoxInt_proj_0 @x19))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(60,36-60,45)
(or label_45

;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(60,36-60,45)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
@x19)))
)
))
)
 
;;no pats
:qid @query.48))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(60,36-60,45)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(60,36-60,45)
(= (Prims.op_Addition (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19)))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(60,36-60,45)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19)))
(BoxInt_proj_0 (BoxInt 0)))


;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(60,36-60,45)
(= (FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19)
(BoxInt 0))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))


;; def=QuickSort.Seq.fst(37,25-39,74); use=QuickSort.Seq.fst(60,36-60,45)
(forall ((@x20 Term))
 (! (implies (HasType @x20
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=QuickSort.Seq.fst(37,36-39,73); use=QuickSort.Seq.fst(60,36-60,45)
(and 
;; def=QuickSort.Seq.fst(37,36-37,56); use=QuickSort.Seq.fst(60,36-60,45)
(implies 
;; def=QuickSort.Seq.fst(37,37-37,45); use=QuickSort.Seq.fst(60,36-60,45)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x20
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19)))


;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(60,36-60,45)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3))
@x20))
)


;; def=QuickSort.Seq.fst(38,36-38,56); use=QuickSort.Seq.fst(60,36-60,45)
(implies 
;; def=QuickSort.Seq.fst(38,37-38,45); use=QuickSort.Seq.fst(60,36-60,45)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x20
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19)))


;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(60,36-60,45)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x20)
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3)))
)


;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(60,36-60,45)
(= (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x20
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4))
(Prims.op_Addition (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x20
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19))
(FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x20
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x19))))
)
)
 
;;no pats
:qid @query.50))


;; def=QuickSort.Seq.fst(60,16-60,67); use=QuickSort.Seq.fst(60,16-60,67)
(= (QuickSort.Seq.partition x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.swap x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(Prims.op_Addition x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(BoxInt 1))
x_13651351701aa0233fa7c0a4f518c2b0_4)
x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3
(Prims.op_Subtraction x_13651351701aa0233fa7c0a4f518c2b0_4
(BoxInt 1)))
@x19)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)))

;; def=Prims.fst(451,90-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=QuickSort.Seq.fst(45,2-61,15)
(ApplyTT @x9
@x20)
)
)
 
;;no pats
:qid @query.51))
)
 
;;no pats
:qid @query.49))
)
)
 
;;no pats
:qid @query.47))
)
)
 
;;no pats
:qid @query.46))
)
)
 
;;no pats
:qid @query.45))
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
 
;;no pats
:qid @query.41))
)
)
 
;;no pats
:qid @query.40))
)
)
 
;;no pats
:qid @query.39))
))
)
 
;;no pats
:qid @query.28))
)
 
;;no pats
:qid @query.27))
)
 
;;no pats
:qid @query.26))
)
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
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query))
)
:named @query))
(set-option :rlimit 54465600)
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
; QUERY ID: (QuickSort.Seq.partition, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @fuel_correspondence_FStar.Seq.Properties.count.fuel_instrumented, @query, FStar.Seq.Base_pretyping_7efa52b424e80c83ad68a652aa3561e4, Prims_pretyping_ae567c2fb75be05905677af440075565, QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931, binder_x_0f213a493b460394312187ae1ccaa1bb_2, binder_x_13651351701aa0233fa7c0a4f518c2b0_4, binder_x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1, binder_x_9cd1733a5204f989dbb2f01d5984df93_0, binder_x_f1f9afcb303c6d3e3e59f9c0ff4d6ea9_3, bool_inversion, equation_FStar.Pervasives.Native.fst, equation_FStar.Pervasives.Native.snd, equation_FStar.Seq.Properties.mem, equation_FStar.Seq.Properties.permutation, equation_FStar.Seq.Properties.swap, equation_FStar.Seq.Properties.total_order, equation_Prims.eqtype, equation_Prims.nat, function_token_typing_Prims.__cache_version_number__, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, int_typing, lemma_FStar.Seq.Base.lemma_index_slice, lemma_FStar.Seq.Base.lemma_index_upd1, lemma_FStar.Seq.Base.lemma_index_upd2, lemma_FStar.Seq.Base.lemma_len_slice, lemma_FStar.Seq.Base.lemma_len_upd, lemma_FStar.Seq.Properties.seq_mem_k, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_GreaterThan, primitive_Prims.op_LessThan, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_Subtraction, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, refinement_interpretation_Tm_refine_058137dd29c2e401b0f27de4958bbd74, refinement_interpretation_Tm_refine_154a3e1da37d50b0a132fae533c5de4c, refinement_interpretation_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9, refinement_interpretation_Tm_refine_2ca062977a42c36634b89c1c4f193f79, refinement_interpretation_Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_5b90164ae6054083792006082ff347d9, refinement_interpretation_Tm_refine_5d345a713b49e47c27bb613e775710b3, refinement_interpretation_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b, refinement_interpretation_Tm_refine_81407705a0828c2c1b1976675443f647, refinement_interpretation_Tm_refine_d3d07693cd71377864ef84dc97d10ec1, refinement_interpretation_Tm_refine_d776e1ca9b781ace328f8cdd42b24350, refinement_interpretation_Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55, refinement_interpretation_Tm_refine_df81b3f17797c6f405c1dbb191651292, typing_FStar.Seq.Base.index, typing_FStar.Seq.Base.length, typing_FStar.Seq.Base.upd, typing_FStar.Seq.Properties.count, typing_FStar.Seq.Properties.mem, typing_Prims.int, well-founded-ordering-on-nat

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at QuickSort.Seq.fst(44,0-61,15)

(declare-fun label_1 () Bool)







(declare-fun Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(44,0-61,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb))

:named refinement_kinding_Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(44,0-61,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))


;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)

;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)
(Valid 
;; def=QuickSort.Seq.fst(45,2-61,15); use=QuickSort.Seq.fst(45,2-61,15)
(Prims.precedes Prims.int
Prims.int
(Prims.op_Subtraction @x1
@x2)
(Prims.op_Subtraction @x5
@x6))
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb))

:named refinement_interpretation_Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-61,15); use=QuickSort.Seq.fst(44,0-61,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_ea9ddb60ce8a886e2cd7909367496dfb))

:named haseqTm_refine_ea9ddb60ce8a886e2cd7909367496dfb))

(declare-fun Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

:named refinement_kinding_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)))

;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x2
@x3))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x7)
(BoxInt_proj_0 @x4))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
(FStar.Seq.Base.index @x2
@x3
@x7))
(FStar.Seq.Base.index @x2
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x6)
(BoxInt_proj_0 @x7))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
(FStar.Seq.Base.index @x2
@x3
@x4))
(FStar.Seq.Base.index @x2
@x3
@x7)))
)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

:named refinement_interpretation_Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

:named haseqTm_refine_a707a6c3fcc7e8786f7179c800d3cdf7))

; Encoding query formula : forall (a: Prims.eqtype) (f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f})
;   (s: FStar.Seq.Base.seq a) (pivot: Prims.nat{pivot < FStar.Seq.Base.length s})
;   (back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s}) (a: Prims.eqtype)
;   (f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f}) (s: FStar.Seq.Base.seq a)
;   (pivot: Prims.nat{pivot < FStar.Seq.Base.length s})
;   (back:
;   (back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s}){back - pivot << back - pivot})
;   (res:
;   _:
;   (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a)
;     { forall (i: Prims.nat{i < FStar.Seq.Base.length s}).
;         (i <= pivot ==> f (FStar.Seq.Base.index s i) (FStar.Seq.Base.index s pivot)) /\
;         (back < i ==> f (FStar.Seq.Base.index s pivot) (FStar.Seq.Base.index s i)) }).
;   (*  - Could not prove post-condition
; *)
;   FStar.Seq.Base.length (FStar.Pervasives.Native.fst res) +
;   FStar.Seq.Base.length (FStar.Pervasives.Native.snd res) =
;   FStar.Seq.Base.length s /\ FStar.Seq.Base.length (FStar.Pervasives.Native.snd res) > 0 ==>
;   0 < FStar.Seq.Base.length (FStar.Pervasives.Native.snd res)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec partition`

(push) ;; push{0

; <fuel='0' ifuel='0'>

;;; Fact-ids: 
(assert (! (= MaxFuel
ZFuel)
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
ZFuel)
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=dummy(0,0-0,0); use=QuickSort.Seq.fst(44,0-61,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0))
(HasType @x3
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x2))
(HasType @x4
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x3
@x0
@x2))
(HasType @x5
Prims.eqtype)
(HasType @x6
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x5))
(HasType @x7
(FStar.Seq.Base.seq @x5))
(HasType @x8
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x5
@x7))
(HasType @x9
(Tm_refine_ea9ddb60ce8a886e2cd7909367496dfb @x8
@x5
@x7
@x4
@x3))
(HasType @x10
(Tm_refine_a707a6c3fcc7e8786f7179c800d3cdf7 @x5
@x7
@x8
@x6
@x9))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(44,8-44,17)
(= (Prims.op_Addition (FStar.Seq.Base.length @x5
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x5)
(FStar.Seq.Base.seq @x5)
@x10))
(FStar.Seq.Base.length @x5
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x5)
(FStar.Seq.Base.seq @x5)
@x10)))
(FStar.Seq.Base.length @x5
@x7))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(44,8-44,17)
(> (BoxInt_proj_0 (FStar.Seq.Base.length @x5
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x5)
(FStar.Seq.Base.seq @x5)
@x10)))
(BoxInt_proj_0 (BoxInt 0)))
)

;; def=FStar.Seq.Base.fsti(32,40-32,52); use=QuickSort.Seq.fst(44,8-44,17)
(or label_1

;; def=FStar.Seq.Base.fsti(32,40-32,52); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (FStar.Seq.Base.length @x5
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x5)
(FStar.Seq.Base.seq @x5)
@x10))))
)
)
 
;;no pats
:qid @query))
)
:named @query))
(set-option :rlimit 54465600)
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
; QUERY ID: (QuickSort.Seq.partition, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec partition


; <Start encoding let rec partition>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun QuickSort.Seq.partition.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun QuickSort.Seq.partition.fuel_instrumented_token () Term)
(declare-fun QuickSort.Seq.partition (Term Term Term Term Term) Term)
(declare-fun QuickSort.Seq.partition@tok () Term)





(declare-fun Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 (Term Term Term) Term)
(declare-fun Tm_refine_5e25be0317470973813e1b1aedda3087 (Term Term Term Term) Term)











;;;;;;;;;;;;;;;;f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f} ->     s: FStar.Seq.Base.seq a ->     pivot: Prims.nat{pivot < FStar.Seq.Base.length s} ->     back: Prims.nat{pivot <= back /\ back < FStar.Seq.Base.length s}   -> Prims.Pure (FStar.Seq.Base.seq a & FStar.Seq.Base.seq a)
(declare-fun Tm_arrow_be9f046564c965efce1faf98c2f1676d () Term)


; </end encoding let rec partition>


; encoding sigelt #reset-options


; <Skipped #reset-options/>


; encoding sigelt #set-options "--initial_fuel 1 --max_fuel 1 --initial_ifuel 1 --max_ifuel 1"


; <Skipped #set-options "--initial_fuel 1 --max_fuel 1 --initial_ifuel 1 --max_ifuel 1"/>


; encoding sigelt val QuickSort.Seq.sort


; <Skipped val QuickSort.Seq.sort/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x2))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x5)
(BoxInt_proj_0 @x3))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
(FStar.Seq.Base.index @x0
@x2
@x5))
(FStar.Seq.Base.index @x0
@x2
@x3)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x4)
(BoxInt_proj_0 @x5))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x1
(FStar.Seq.Base.index @x0
@x2
@x3))
(FStar.Seq.Base.index @x0
@x2
@x5)))
)
)
)
 
;;no pats
:qid typing_QuickSort.Seq.partition.1))

(HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0))
(HasType @x3
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x2))
(HasType @x4
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x3
@x0
@x2)))
(HasType (QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4)
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x2
@x3
@x1)))
 

:pattern ((QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4))
:qid typing_QuickSort.Seq.partition))

:named typing_QuickSort.Seq.partition))
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
;;; Fact-ids: Name FStar.Seq.Properties.sorted; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(123,8-123,14); use=FStar.Seq.Properties.fsti(123,8-123,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Properties.sorted @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.Seq.Properties.sorted @x0
@x1
@x2))
:qid typing_FStar.Seq.Properties.sorted))

:named typing_FStar.Seq.Properties.sorted))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.create; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(34,4-34,10); use=FStar.Seq.Base.fsti(34,4-34,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Prims.nat)
(HasType @x2
@x0))
(HasType (FStar.Seq.Base.create @x0
@x1
@x2)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.create @x0
@x1
@x2))
:qid typing_FStar.Seq.Base.create))

:named typing_FStar.Seq.Base.create))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.cons; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(60,4-60,8); use=FStar.Seq.Base.fsti(60,4-60,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0)
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Base.cons @x0
@x1
@x2)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.cons @x0
@x1
@x2))
:qid typing_FStar.Seq.Base.cons))

:named typing_FStar.Seq.Base.cons))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.append; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(58,4-58,10); use=FStar.Seq.Base.fsti(58,4-58,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Base.append @x0
@x1
@x2)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.append @x0
@x1
@x2))
:qid typing_FStar.Seq.Base.append))

:named typing_FStar.Seq.Base.append))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1))
(HasType @x4
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3))
(HasType @x5
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x4
@x1
@x3))

;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x6)
(BoxInt_proj_0 @x4))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
@x6))
(FStar.Seq.Base.index @x1
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x5)
(BoxInt_proj_0 @x6))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
@x4))
(FStar.Seq.Base.index @x1
@x3
@x6)))
)
)
)
 
;;no pats
:qid token_correspondence_QuickSort.Seq.partition.fuel_instrumented.1))
)
(HasType (QuickSort.Seq.partition.fuel_instrumented @u0
@x1
@x2
@x3
@x4
@x5)
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x1
@x3
@x4
@x2)))
 

:pattern ((QuickSort.Seq.partition.fuel_instrumented @u0
@x1
@x2
@x3
@x4
@x5))
:qid token_correspondence_QuickSort.Seq.partition.fuel_instrumented))

:named token_correspondence_QuickSort.Seq.partition.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name FStar.Seq.Properties.sorted; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(123,8-123,14); use=FStar.Seq.Properties.fsti(123,8-123,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1)))
(HasType (FStar.Seq.Properties.sorted.fuel_instrumented @u0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.Seq.Properties.sorted.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.Seq.Properties.sorted.fuel_instrumented))

:named token_correspondence_FStar.Seq.Properties.sorted.fuel_instrumented))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(596,2-596,19); use=FStar.Seq.Properties.fsti(596,2-596,19)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_ddd44b85040d1947cca83550b7e21966 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_ddd44b85040d1947cca83550b7e21966 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_ddd44b85040d1947cca83550b7e21966))

:named refinement_kinding_Tm_refine_ddd44b85040d1947cca83550b7e21966))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.init_aux; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(36,41-36,57); use=FStar.Seq.Base.fsti(36,41-36,57)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))

:named refinement_kinding_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_app2; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(153,57-153,107); use=FStar.Seq.Base.fsti(153,57-153,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_ac201cf927190d39c033967b63cb957b @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_ac201cf927190d39c033967b63cb957b @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_ac201cf927190d39c033967b63cb957b))

:named refinement_kinding_Tm_refine_ac201cf927190d39c033967b63cb957b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(28,12-28,27); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_5e25be0317470973813e1b1aedda3087))

:named refinement_kinding_Tm_refine_5e25be0317470973813e1b1aedda3087))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(27,18-27,90); use=QuickSort.Seq.fst(27,18-45,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7))

:named refinement_kinding_Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(595,2-595,36); use=FStar.Seq.Properties.fsti(595,2-595,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_09d2e9ab3b9c121b24316d151747e281))

:named refinement_kinding_Tm_refine_09d2e9ab3b9c121b24316d151747e281))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(596,2-596,19); use=FStar.Seq.Properties.fsti(596,2-596,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ddd44b85040d1947cca83550b7e21966 @x2))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(596,9-596,17); use=FStar.Seq.Properties.fsti(596,9-596,17)
(= @x1
(Prims.op_Addition @x2
(BoxInt 1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ddd44b85040d1947cca83550b7e21966 @x2)))
:qid refinement_interpretation_Tm_refine_ddd44b85040d1947cca83550b7e21966))

:named refinement_interpretation_Tm_refine_ddd44b85040d1947cca83550b7e21966))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.init_aux; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(36,41-36,57); use=FStar.Seq.Base.fsti(36,41-36,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x2))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(36,48-36,55); use=FStar.Seq.Base.fsti(36,48-36,55)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x2))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x2)))
:qid refinement_interpretation_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))

:named refinement_interpretation_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_app2; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(153,57-153,107); use=FStar.Seq.Base.fsti(153,57-153,107)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ac201cf927190d39c033967b63cb957b @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(153,63-153,88); use=FStar.Seq.Base.fsti(153,63-153,88)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Addition (FStar.Seq.Base.length @x2
@x3)
(FStar.Seq.Base.length @x2
@x4))))


;; def=FStar.Seq.Base.fsti(153,92-153,106); use=FStar.Seq.Base.fsti(153,92-153,106)
(<= (BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x3))
(BoxInt_proj_0 @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ac201cf927190d39c033967b63cb957b @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_ac201cf927190d39c033967b63cb957b))

:named refinement_interpretation_Tm_refine_ac201cf927190d39c033967b63cb957b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(28,12-28,27); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(44,8-44,17)
(= (Prims.op_Addition (FStar.Seq.Base.length @x2
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1))
(FStar.Seq.Base.length @x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))
(FStar.Seq.Base.length @x2
@x3))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(44,8-44,17)
(> (BoxInt_proj_0 (FStar.Seq.Base.length @x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))
(BoxInt_proj_0 (BoxInt 0)))


;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(44,8-44,17)
(= (FStar.Seq.Base.index @x2
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)
(BoxInt 0))
(FStar.Seq.Base.index @x2
@x3
@x4))


;; def=QuickSort.Seq.fst(37,25-39,74); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
@x2)

;; def=QuickSort.Seq.fst(37,36-39,73); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(37,36-37,56); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(37,37-37,45); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (FStar.Seq.Properties.mem @x2
@x6
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))


;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
(FStar.Seq.Base.index @x2
@x3
@x4))
@x6))
)


;; def=QuickSort.Seq.fst(38,36-38,56); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(38,37-38,45); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (FStar.Seq.Properties.mem @x2
@x6
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1)))


;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x5
@x6)
(FStar.Seq.Base.index @x2
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(44,8-44,17)
(= (FStar.Seq.Properties.count @x2
@x6
@x3)
(Prims.op_Addition (FStar.Seq.Properties.count @x2
@x6
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1))
(FStar.Seq.Properties.count @x2
@x6
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq @x2)
(FStar.Seq.Base.seq @x2)
@x1))))
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_5e25be0317470973813e1b1aedda3087.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_5e25be0317470973813e1b1aedda3087 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_5e25be0317470973813e1b1aedda3087))

:named refinement_interpretation_Tm_refine_5e25be0317470973813e1b1aedda3087))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(27,18-27,90); use=QuickSort.Seq.fst(27,18-45,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,28-27,90); use=QuickSort.Seq.fst(45,5-45,15)
(or 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(45,5-45,10)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x3)))


;; def=QuickSort.Seq.fst(27,58-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(and 
;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(45,11-45,15)
(<= (BoxInt_proj_0 @x4)
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(45,11-45,15)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x3)))
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7))

:named refinement_interpretation_Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(595,2-595,36); use=FStar.Seq.Properties.fsti(595,2-595,36)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(595,11-595,16); use=FStar.Seq.Properties.fsti(595,11-595,16)
(< (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=FStar.Seq.Properties.fsti(595,20-595,33); use=FStar.Seq.Properties.fsti(595,20-595,33)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_09d2e9ab3b9c121b24316d151747e281))

:named refinement_interpretation_Tm_refine_09d2e9ab3b9c121b24316d151747e281))
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
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.cons_index_slice
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x2
@x0
@x1))
(HasType @x4
(Tm_refine_ddd44b85040d1947cca83550b7e21966 @x2)))

;; def=FStar.Seq.Properties.fsti(599,11-599,58); use=FStar.Seq.Properties.fsti(599,11-599,58)
(= (FStar.Seq.Base.cons @x0
(FStar.Seq.Base.index @x0
@x1
@x2)
(FStar.Seq.Base.slice @x0
@x1
@x4
@x3))
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
)
 

:pattern ((FStar.Seq.Base.cons @x0
(FStar.Seq.Base.index @x0
@x1
@x2)
(FStar.Seq.Base.slice @x0
@x1
@x4
@x3)))
:qid lemma_FStar.Seq.Properties.cons_index_slice))
:named lemma_FStar.Seq.Properties.cons_index_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.cons_head_tail
;;; Fact-ids: Name FStar.Seq.Properties.cons_head_tail; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_167ef714932ec832fb671890fc3eee6c @x0)))

;; def=FStar.Seq.Properties.fsti(527,11-527,40); use=FStar.Seq.Properties.fsti(527,11-527,40)
(= @x1
(FStar.Seq.Base.cons @x0
(FStar.Seq.Properties.head @x0
@x1)
(FStar.Seq.Properties.tail @x0
@x1)))
)
 

:pattern ((FStar.Seq.Base.cons @x0
(FStar.Seq.Properties.head @x0
@x1)
(FStar.Seq.Properties.tail @x0
@x1)))
:qid lemma_FStar.Seq.Properties.cons_head_tail))
:named lemma_FStar.Seq.Properties.cons_head_tail))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_len_append
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_append; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0)))

;; def=FStar.Seq.Base.fsti(124,11-124,58); use=FStar.Seq.Base.fsti(124,11-124,58)
(= (FStar.Seq.Base.length @x0
(FStar.Seq.Base.append @x0
@x1
@x2))
(Prims.op_Addition (FStar.Seq.Base.length @x0
@x1)
(FStar.Seq.Base.length @x0
@x2)))
)
 

:pattern ((FStar.Seq.Base.length @x0
(FStar.Seq.Base.append @x0
@x1
@x2)))
:qid lemma_FStar.Seq.Base.lemma_len_append))
:named lemma_FStar.Seq.Base.lemma_len_append))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_index_create
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_create; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Prims.nat)
(HasType @x2
@x0)
(HasType @x3
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x1)))

;; def=FStar.Seq.Base.fsti(135,11-135,38); use=FStar.Seq.Base.fsti(135,11-135,38)
(= (FStar.Seq.Base.index @x0
(FStar.Seq.Base.create @x0
@x1
@x2)
@x3)
@x2)
)
 

:pattern ((FStar.Seq.Base.index @x0
(FStar.Seq.Base.create @x0
@x1
@x2)
@x3))
:qid lemma_FStar.Seq.Base.lemma_index_create))
:named lemma_FStar.Seq.Base.lemma_index_create))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_index_app2
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_app2; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0))
(HasType @x3
(Tm_refine_ac201cf927190d39c033967b63cb957b @x0
@x1
@x2)))

;; def=FStar.Seq.Base.fsti(155,11-155,63); use=FStar.Seq.Base.fsti(155,11-155,63)
(= (FStar.Seq.Base.index @x0
(FStar.Seq.Base.append @x0
@x1
@x2)
@x3)
(FStar.Seq.Base.index @x0
@x2
(Prims.op_Subtraction @x3
(FStar.Seq.Base.length @x0
@x1))))
)
 

:pattern ((FStar.Seq.Base.index @x0
(FStar.Seq.Base.append @x0
@x1
@x2)
@x3))
:qid lemma_FStar.Seq.Base.lemma_index_app2))
:named lemma_FStar.Seq.Base.lemma_index_app2))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_index_app1
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_app1; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(FStar.Seq.Base.seq @x0))
(HasType @x3
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x0
@x1)))

;; def=FStar.Seq.Base.fsti(150,11-150,49); use=FStar.Seq.Base.fsti(150,11-150,49)
(= (FStar.Seq.Base.index @x0
(FStar.Seq.Base.append @x0
@x1
@x2)
@x3)
(FStar.Seq.Base.index @x0
@x1
@x3))
)
 

:pattern ((FStar.Seq.Base.index @x0
(FStar.Seq.Base.append @x0
@x1
@x2)
@x3))
:qid lemma_FStar.Seq.Base.lemma_index_app1))
:named lemma_FStar.Seq.Base.lemma_index_app1))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_create_len
;;; Fact-ids: Name FStar.Seq.Base.lemma_create_len; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Prims.nat)
(HasType @x2
@x0))

;; def=FStar.Seq.Base.fsti(94,11-94,36); use=FStar.Seq.Base.fsti(94,11-94,36)
(= (FStar.Seq.Base.length @x0
(FStar.Seq.Base.create @x0
@x1
@x2))
@x1)
)
 

:pattern ((FStar.Seq.Base.length @x0
(FStar.Seq.Base.create @x0
@x1
@x2)))
:qid lemma_FStar.Seq.Base.lemma_create_len))
:named lemma_FStar.Seq.Base.lemma_create_len))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ddd44b85040d1947cca83550b7e21966
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(596,2-596,19); use=FStar.Seq.Properties.fsti(596,2-596,19)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ddd44b85040d1947cca83550b7e21966 @x0)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ddd44b85040d1947cca83550b7e21966 @x0))))
:qid haseqTm_refine_ddd44b85040d1947cca83550b7e21966))

:named haseqTm_refine_ddd44b85040d1947cca83550b7e21966))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c1424615841f28cac7fc34e92b7ff33c
;;; Fact-ids: Name FStar.Seq.Base.init_aux; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(36,41-36,57); use=FStar.Seq.Base.fsti(36,41-36,57)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0))))
:qid haseqTm_refine_c1424615841f28cac7fc34e92b7ff33c))

:named haseqTm_refine_c1424615841f28cac7fc34e92b7ff33c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ac201cf927190d39c033967b63cb957b
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_app2; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(153,57-153,107); use=FStar.Seq.Base.fsti(153,57-153,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ac201cf927190d39c033967b63cb957b @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ac201cf927190d39c033967b63cb957b @x0
@x1
@x2))))
:qid haseqTm_refine_ac201cf927190d39c033967b63cb957b))

:named haseqTm_refine_ac201cf927190d39c033967b63cb957b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5e25be0317470973813e1b1aedda3087
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(28,12-28,27); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq @x0)
(FStar.Seq.Base.seq @x0)))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_5e25be0317470973813e1b1aedda3087 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_5e25be0317470973813e1b1aedda3087))

:named haseqTm_refine_5e25be0317470973813e1b1aedda3087))
;;;;;;;;;;;;;;;;haseq for Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(27,18-27,90); use=QuickSort.Seq.fst(27,18-45,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x0
@x1
@x2))))
:qid haseqTm_refine_3e45b27914a0609e7c17dc72ba0eb0a7))

:named haseqTm_refine_3e45b27914a0609e7c17dc72ba0eb0a7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_09d2e9ab3b9c121b24316d151747e281
;;; Fact-ids: Name FStar.Seq.Properties.cons_index_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(595,2-595,36); use=FStar.Seq.Properties.fsti(595,2-595,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_09d2e9ab3b9c121b24316d151747e281 @x0
@x1
@x2))))
:qid haseqTm_refine_09d2e9ab3b9c121b24316d151747e281))

:named haseqTm_refine_09d2e9ab3b9c121b24316d151747e281))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: QuickSort.Seq.partition
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1))
(HasType @x4
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3))
(HasType @x5
(Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 @x4
@x1
@x3))

;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 @x1
@x3))

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(44,8-44,17)
(and 
;; def=QuickSort.Seq.fst(30,34-30,80); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(44,8-44,17)
(<= (BoxInt_proj_0 @x6)
(BoxInt_proj_0 @x4))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
@x6))
(FStar.Seq.Base.index @x1
@x3
@x4)))
)


;; def=QuickSort.Seq.fst(31,37-31,82); use=QuickSort.Seq.fst(44,8-44,17)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(44,8-44,17)
(< (BoxInt_proj_0 @x5)
(BoxInt_proj_0 @x6))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(44,8-44,17)
(BoxBool_proj_0 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
@x4))
(FStar.Seq.Base.index @x1
@x3
@x6)))
)
)
)
 
;;no pats
:qid equation_with_fuel_QuickSort.Seq.partition.fuel_instrumented.1))
)
(= (QuickSort.Seq.partition.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5)
(let ((@lb6 (Prims.op_Equality (Tm_refine_3e45b27914a0609e7c17dc72ba0eb0a7 @x1
@x3
@x4)
@x4
@x5)))
(ite (= @lb6
(BoxBool true))
(FStar.Pervasives.Native.Mktuple2 (FStar.Seq.Base.seq @x1)
(FStar.Seq.Base.seq @x1)
(FStar.Seq.Base.slice @x1
@x3
(BoxInt 0)
@x4)
(FStar.Seq.Base.slice @x1
@x3
@x4
(FStar.Seq.Base.length @x1
@x3)))
(let ((@lb7 (ApplyTT (ApplyTT @x2
(FStar.Seq.Base.index @x1
@x3
(Prims.op_Addition @x4
(BoxInt 1))))
(FStar.Seq.Base.index @x1
@x3
@x4))))
(ite (= @lb7
(BoxBool true))
(QuickSort.Seq.partition.fuel_instrumented @u0
@x1
@x2
(FStar.Seq.Properties.swap @x1
@x3
@x4
(Prims.op_Addition @x4
(BoxInt 1)))
(Prims.op_Addition @x4
(BoxInt 1))
@x5)
(QuickSort.Seq.partition.fuel_instrumented @u0
@x1
@x2
(FStar.Seq.Properties.swap @x1
@x3
(Prims.op_Addition @x4
(BoxInt 1))
@x5)
@x4
(Prims.op_Subtraction @x5
(BoxInt 1)))))))))
 :weight 0


:pattern ((QuickSort.Seq.partition.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5))
:qid equation_with_fuel_QuickSort.Seq.partition.fuel_instrumented))

:named equation_with_fuel_QuickSort.Seq.partition.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.Seq.Properties.sorted
;;; Fact-ids: Name FStar.Seq.Properties.sorted; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(123,8-123,14); use=FStar.Seq.Properties.fsti(123,8-123,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e @x1))
(HasType @x3
(FStar.Seq.Base.seq @x1)))
(= (FStar.Seq.Properties.sorted.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 (Prims.op_LessThanOrEqual (FStar.Seq.Base.length @x1
@x3)
(BoxInt 1))))
(ite (= @lb4
(BoxBool true))
(BoxBool true)
(Prims.op_AmpAmp (ApplyTT (ApplyTT @x2
(FStar.Seq.Properties.head @x1
@x3))
(FStar.Seq.Base.index @x1
@x3
(BoxInt 1)))
(FStar.Seq.Properties.sorted.fuel_instrumented @u0
@x1
@x2
(FStar.Seq.Properties.tail @x1
@x3)))))))
 :weight 0


:pattern ((FStar.Seq.Properties.sorted.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.Seq.Properties.sorted.fuel_instrumented))

:named equation_with_fuel_FStar.Seq.Properties.sorted.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for FStar.Seq.Base.cons
;;; Fact-ids: Name FStar.Seq.Base.cons; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(60,4-60,8); use=FStar.Seq.Base.fsti(60,4-60,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Seq.Base.cons @x0
@x1
@x2)
(FStar.Seq.Base.append @x0
(FStar.Seq.Base.create @x0
(BoxInt 1)
@x1)
@x2))
 

:pattern ((FStar.Seq.Base.cons @x0
@x1
@x2))
:qid equation_FStar.Seq.Base.cons))

:named equation_FStar.Seq.Base.cons))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickSort.Seq.partition.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5)
(QuickSort.Seq.partition.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4
@x5))
 

:pattern ((QuickSort.Seq.partition.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5))
:qid @fuel_irrelevance_QuickSort.Seq.partition.fuel_instrumented))

:named @fuel_irrelevance_QuickSort.Seq.partition.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.Seq.Properties.sorted; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(123,8-123,14); use=FStar.Seq.Properties.fsti(123,8-123,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Seq.Properties.sorted.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.Seq.Properties.sorted.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.Seq.Properties.sorted.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.Seq.Properties.sorted.fuel_instrumented))

:named @fuel_irrelevance_FStar.Seq.Properties.sorted.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name QuickSort.Seq.partition; Namespace QuickSort.Seq
(assert (! 
;; def=QuickSort.Seq.fst(44,8-44,17); use=QuickSort.Seq.fst(44,8-44,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4)
(QuickSort.Seq.partition.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3
@x4))
 

:pattern ((QuickSort.Seq.partition @x0
@x1
@x2
@x3
@x4))
:qid @fuel_correspondence_QuickSort.Seq.partition.fuel_instrumented))

:named @fuel_correspondence_QuickSort.Seq.partition.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.Seq.Properties.sorted; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(123,8-123,14); use=FStar.Seq.Properties.fsti(123,8-123,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Seq.Properties.sorted @x0
@x1
@x2)
(FStar.Seq.Properties.sorted.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.Seq.Properties.sorted @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.Seq.Properties.sorted.fuel_instrumented))

:named @fuel_correspondence_FStar.Seq.Properties.sorted.fuel_instrumented))
(push) ;; push{2

; Starting query at QuickSort.Seq.fst(71,2-85,13)

;;;;;;;;;;;;;;;;a : Prims.eqtype (Prims.eqtype)
(declare-fun x_9cd1733a5204f989dbb2f01d5984df93_0 () Term)
;;;;;;;;;;;;;;;;binder_x_9cd1733a5204f989dbb2f01d5984df93_0
;;; Fact-ids: 
(assert (! (HasType x_9cd1733a5204f989dbb2f01d5984df93_0
Prims.eqtype)
:named binder_x_9cd1733a5204f989dbb2f01d5984df93_0))
;;;;;;;;;;;;;;;;f : f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f} (f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f})
(declare-fun x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1 () Term)
;;;;;;;;;;;;;;;;_: a -> _: a -> Prims.bool
(declare-fun Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931
Tm_type)
:named kinding_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(66,40-70,15); use=QuickSort.Seq.fst(70,8-70,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
:qid QuickSort.Seq_pre_typing_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))

:named QuickSort.Seq_pre_typing_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(66,40-70,15); use=QuickSort.Seq.fst(70,8-70,15)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)
(and 
;; def=QuickSort.Seq.fst(66,40-70,15); use=QuickSort.Seq.fst(70,8-70,15)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
x_9cd1733a5204f989dbb2f01d5984df93_0)
(HasType @x2
x_9cd1733a5204f989dbb2f01d5984df93_0))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931.1))

(IsTotFun @x0)

;; def=QuickSort.Seq.fst(66,40-70,15); use=QuickSort.Seq.fst(70,8-70,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
x_9cd1733a5204f989dbb2f01d5984df93_0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
:qid QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))

:named QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931))
(declare-fun Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b
Tm_type)
:named refinement_kinding_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(66,23-66,62); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b)
(and (HasTypeFuel @u0
@x1
Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)

;; def=QuickSort.Seq.fst(66,46-66,61); use=QuickSort.Seq.fst(70,8-70,12)
(Valid 
;; def=QuickSort.Seq.fst(66,46-66,61); use=QuickSort.Seq.fst(70,8-70,12)
(FStar.Seq.Properties.total_order x_9cd1733a5204f989dbb2f01d5984df93_0
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
:qid refinement_interpretation_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))

:named refinement_interpretation_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
(Valid (Prims.hasEq Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931)))
:named haseqTm_refine_7945a5fb13c7ba499c9a3a023b23db9b))
;;;;;;;;;;;;;;;;binder_x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
;;; Fact-ids: 
(assert (! (HasType x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b)
:named binder_x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1))
;;;;;;;;;;;;;;;;s : FStar.Seq.Base.seq a (FStar.Seq.Base.seq a)
(declare-fun x_0f213a493b460394312187ae1ccaa1bb_2 () Term)
;;;;;;;;;;;;;;;;binder_x_0f213a493b460394312187ae1ccaa1bb_2
;;; Fact-ids: 
(assert (! (HasType x_0f213a493b460394312187ae1ccaa1bb_2
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))
:named binder_x_0f213a493b460394312187ae1ccaa1bb_2))


(declare-fun Tm_refine_66affffed23c98279d510c3eca8d5793 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(67,10-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_66affffed23c98279d510c3eca8d5793 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_66affffed23c98279d510c3eca8d5793 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_66affffed23c98279d510c3eca8d5793))

:named refinement_kinding_Tm_refine_66affffed23c98279d510c3eca8d5793))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(67,10-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_66affffed23c98279d510c3eca8d5793 @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq @x2))

;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(71,2-85,13)

;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(71,2-85,13)
(Valid 
;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(71,2-85,13)
(Prims.precedes Prims.nat
Prims.nat
(FStar.Seq.Base.length @x2
@x1)
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_66affffed23c98279d510c3eca8d5793 @x2)))
:qid refinement_interpretation_Tm_refine_66affffed23c98279d510c3eca8d5793))

:named refinement_interpretation_Tm_refine_66affffed23c98279d510c3eca8d5793))
;;;;;;;;;;;;;;;;haseq for Tm_refine_66affffed23c98279d510c3eca8d5793
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(67,10-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_66affffed23c98279d510c3eca8d5793 @x0)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_66affffed23c98279d510c3eca8d5793 @x0))))
:qid haseqTm_refine_66affffed23c98279d510c3eca8d5793))

:named haseqTm_refine_66affffed23c98279d510c3eca8d5793))
(declare-fun QuickSort.Seq.sort (Term Term Term) Term)



(declare-fun Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261))

:named refinement_kinding_Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq @x2))

;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(70,8-70,12)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted @x2
@x3
@x1))


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(70,8-70,12)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(70,8-70,12)
(FStar.Seq.Properties.permutation @x2
@x4
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261))

:named refinement_interpretation_Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x0
@x1
@x2))))
:qid haseqTm_refine_a3f5372bf9ef0ffab0ff642c35e76261))

:named haseqTm_refine_a3f5372bf9ef0ffab0ff642c35e76261))
;;;;;;;;;;;;;;;;f: (_: a -> _: a -> Prims.bool){FStar.Seq.Properties.total_order a f} ->     s1: FStar.Seq.Base.seq a {FStar.Seq.Base.length s1 << FStar.Seq.Base.length s}   -> Prims.Tot     (s2:       FStar.Seq.Base.seq a         {FStar.Seq.Properties.sorted f s2 /\ FStar.Seq.Properties.permutation a s1 s2})
(declare-fun Tm_arrow_db85229c7815c37cedd2d5b7638e9026 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_db85229c7815c37cedd2d5b7638e9026
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_db85229c7815c37cedd2d5b7638e9026
Tm_type)
:named kinding_Tm_arrow_db85229c7815c37cedd2d5b7638e9026))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(66,13-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_db85229c7815c37cedd2d5b7638e9026)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_db85229c7815c37cedd2d5b7638e9026))
:qid QuickSort.Seq_pre_typing_Tm_arrow_db85229c7815c37cedd2d5b7638e9026))

:named QuickSort.Seq_pre_typing_Tm_arrow_db85229c7815c37cedd2d5b7638e9026))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_db85229c7815c37cedd2d5b7638e9026
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(66,13-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_db85229c7815c37cedd2d5b7638e9026)
(and 
;; def=QuickSort.Seq.fst(66,13-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1))
(HasType @x3
(Tm_refine_66affffed23c98279d510c3eca8d5793 @x1)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
(Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid QuickSort.Seq_interpretation_Tm_arrow_db85229c7815c37cedd2d5b7638e9026.1))

(IsTotFun @x0)

;; def=QuickSort.Seq.fst(66,13-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.eqtype)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickSort.Seq_interpretation_Tm_arrow_db85229c7815c37cedd2d5b7638e9026.2))


;; def=QuickSort.Seq.fst(66,13-85,13); use=QuickSort.Seq.fst(67,10-85,13)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickSort.Seq_interpretation_Tm_arrow_db85229c7815c37cedd2d5b7638e9026.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_db85229c7815c37cedd2d5b7638e9026))
:qid QuickSort.Seq_interpretation_Tm_arrow_db85229c7815c37cedd2d5b7638e9026))

:named QuickSort.Seq_interpretation_Tm_arrow_db85229c7815c37cedd2d5b7638e9026))
(declare-fun QuickSort.Seq.sort@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(70,8-70,12); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT QuickSort.Seq.sort@tok
@x0)
@x1)
@x2)
(QuickSort.Seq.sort @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT QuickSort.Seq.sort@tok
@x0)
@x1)
@x2))
:qid token_correspondence_QuickSort.Seq.sort))

:named token_correspondence_QuickSort.Seq.sort))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(70,8-70,12); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType QuickSort.Seq.sort@tok
Tm_arrow_db85229c7815c37cedd2d5b7638e9026))

;; def=QuickSort.Seq.fst(70,8-70,12); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT QuickSort.Seq.sort@tok
@x1)
@x2)
@x3)
(QuickSort.Seq.sort @x1
@x2
@x3))
 

:pattern ((QuickSort.Seq.sort @x1
@x2
@x3))
:qid function_token_typing_QuickSort.Seq.sort.1))
)
 

:pattern ((ApplyTT @x0
QuickSort.Seq.sort@tok))
:qid function_token_typing_QuickSort.Seq.sort))

:named function_token_typing_QuickSort.Seq.sort))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(70,8-70,12); use=QuickSort.Seq.fst(70,8-70,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 @x0))
(HasType @x2
(Tm_refine_66affffed23c98279d510c3eca8d5793 @x0)))
(HasType (QuickSort.Seq.sort @x0
@x1
@x2)
(Tm_refine_a3f5372bf9ef0ffab0ff642c35e76261 @x0
@x1
@x2)))
 

:pattern ((QuickSort.Seq.sort @x0
@x1
@x2))
:qid typing_QuickSort.Seq.sort))

:named typing_QuickSort.Seq.sort))
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
(declare-fun Tm_refine_d240cd282795951bbd38b597f00192c4 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_d240cd282795951bbd38b597f00192c4
Tm_type)
:named refinement_kinding_Tm_refine_d240cd282795951bbd38b597f00192c4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_d240cd282795951bbd38b597f00192c4)
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(71,2-85,13)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x1))


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(71,2-85,13)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(71,2-85,13)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_d240cd282795951bbd38b597f00192c4))
:qid refinement_interpretation_Tm_refine_d240cd282795951bbd38b597f00192c4))

:named refinement_interpretation_Tm_refine_d240cd282795951bbd38b597f00192c4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d240cd282795951bbd38b597f00192c4
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_d240cd282795951bbd38b597f00192c4))
(Valid (Prims.hasEq (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))
:named haseqTm_refine_d240cd282795951bbd38b597f00192c4))
(declare-fun Tm_refine_490ac715dd597b37a653aee8f5e20993 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_490ac715dd597b37a653aee8f5e20993
Tm_type)
:named refinement_kinding_Tm_refine_490ac715dd597b37a653aee8f5e20993))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(27,49-27,91); use=QuickSort.Seq.fst(72,20-72,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_490ac715dd597b37a653aee8f5e20993)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(72,20-72,29)
(<= (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 @x1))


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(72,20-72,29)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_490ac715dd597b37a653aee8f5e20993))
:qid refinement_interpretation_Tm_refine_490ac715dd597b37a653aee8f5e20993))

:named refinement_interpretation_Tm_refine_490ac715dd597b37a653aee8f5e20993))
;;;;;;;;;;;;;;;;haseq for Tm_refine_490ac715dd597b37a653aee8f5e20993
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_490ac715dd597b37a653aee8f5e20993))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_490ac715dd597b37a653aee8f5e20993))
(declare-fun Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9
Tm_type)
:named refinement_kinding_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(29,27-29,48); use=QuickSort.Seq.fst(72,20-72,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=QuickSort.Seq.fst(29,34-29,46); use=QuickSort.Seq.fst(72,20-72,29)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
:qid refinement_interpretation_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))

:named refinement_interpretation_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_2024f3d60f1e162e9f0d26c9d17144c9))
(declare-fun Tm_refine_0257a2cf38666af5438185786e843f12 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(76,15-76,19)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_0257a2cf38666af5438185786e843f12 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_0257a2cf38666af5438185786e843f12 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_0257a2cf38666af5438185786e843f12))

:named refinement_kinding_Tm_refine_0257a2cf38666af5438185786e843f12))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(76,15-76,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0257a2cf38666af5438185786e843f12 @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(76,15-76,19)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x1))


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(76,15-76,19)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(76,15-76,19)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
@x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0257a2cf38666af5438185786e843f12 @x2)))
:qid refinement_interpretation_Tm_refine_0257a2cf38666af5438185786e843f12))

:named refinement_interpretation_Tm_refine_0257a2cf38666af5438185786e843f12))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0257a2cf38666af5438185786e843f12
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(76,15-76,19)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0257a2cf38666af5438185786e843f12 @x0)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0257a2cf38666af5438185786e843f12 @x0))))
:qid haseqTm_refine_0257a2cf38666af5438185786e843f12))

:named haseqTm_refine_0257a2cf38666af5438185786e843f12))
(declare-fun Tm_refine_0268b5741dc224757cd0476009a8991e (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(77,15-77,19)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_0268b5741dc224757cd0476009a8991e @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_0268b5741dc224757cd0476009a8991e @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_0268b5741dc224757cd0476009a8991e))

:named refinement_kinding_Tm_refine_0268b5741dc224757cd0476009a8991e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(77,15-77,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0268b5741dc224757cd0476009a8991e @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(77,15-77,19)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x1))


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(77,15-77,19)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(77,15-77,19)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x2)
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0268b5741dc224757cd0476009a8991e @x2)))
:qid refinement_interpretation_Tm_refine_0268b5741dc224757cd0476009a8991e))

:named refinement_interpretation_Tm_refine_0268b5741dc224757cd0476009a8991e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0268b5741dc224757cd0476009a8991e
;;; Fact-ids: 
(assert (! 
;; def=QuickSort.Seq.fst(68,14-68,60); use=QuickSort.Seq.fst(77,15-77,19)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0268b5741dc224757cd0476009a8991e @x0)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0268b5741dc224757cd0476009a8991e @x0))))
:qid haseqTm_refine_0268b5741dc224757cd0476009a8991e))

:named haseqTm_refine_0268b5741dc224757cd0476009a8991e))




; Encoding query formula : forall (k:
;   Prims.pure_post (s2:
;       FStar.Seq.Base.seq a
;         {FStar.Seq.Properties.sorted f s2 /\ FStar.Seq.Properties.permutation a s s2})).
;   (forall (x:
;       s2:
;       FStar.Seq.Base.seq a
;         {FStar.Seq.Properties.sorted f s2 /\ FStar.Seq.Properties.permutation a s s2}).
;       {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (FStar.Seq.Base.length s <= 1 == true ==>
;     FStar.Seq.Properties.sorted f s /\ FStar.Seq.Properties.permutation a s s) /\
;   (~(FStar.Seq.Base.length s <= 1 = true) ==>
;     (forall (b: Prims.bool).
;         FStar.Seq.Base.length s <= 1 == b ==>
;         0 < FStar.Seq.Base.length s /\
;         (forall (any_result: Prims.int).
;             0 == any_result ==>
;             FStar.Seq.Base.length s - 1 >= 0 /\
;             (0 <= FStar.Seq.Base.length s - 1) /\
;             (FStar.Seq.Base.length s - 1 < FStar.Seq.Base.length s) /\
;             (forall (return_val: back: Prims.nat{0 <= back /\ back < FStar.Seq.Base.length s}).
;                 return_val == FStar.Seq.Base.length s - 1 ==>
;                 (forall (i: Prims.nat{i < FStar.Seq.Base.length s}).
;                     (i <= 0 ==> f (FStar.Seq.Base.index s i) (FStar.Seq.Base.index s 0)) /\
;                     (FStar.Seq.Base.length s - 1 < i ==>
;                       f (FStar.Seq.Base.index s 0) (FStar.Seq.Base.index s i))) /\
;                 (forall (pure_result: FStar.Seq.Base.seq a & FStar.Seq.Base.seq a).
;                     FStar.Seq.Base.length (FStar.Pervasives.Native.fst pure_result) +
;                     FStar.Seq.Base.length (FStar.Pervasives.Native.snd pure_result) =
;                     FStar.Seq.Base.length s /\
;                     FStar.Seq.Base.length (FStar.Pervasives.Native.snd pure_result) > 0 /\
;                     FStar.Seq.Base.index (FStar.Pervasives.Native.snd pure_result) 0 =
;                     FStar.Seq.Base.index s 0 /\
;                     (forall (x: a).
;                         (FStar.Seq.Properties.mem x (FStar.Pervasives.Native.snd pure_result) ==>
;                           f (FStar.Seq.Base.index s 0) x) /\
;                         (FStar.Seq.Properties.mem x (FStar.Pervasives.Native.fst pure_result) ==>
;                           f x (FStar.Seq.Base.index s 0)) /\
;                         FStar.Seq.Properties.count x s =
;                         FStar.Seq.Properties.count x (FStar.Pervasives.Native.snd pure_result) +
;                         FStar.Seq.Properties.count x (FStar.Pervasives.Native.fst pure_result)) ==>
;                     QuickSort.Seq.partition f s 0 (FStar.Seq.Base.length s - 1) == pure_result ==>
;                     (forall (b: FStar.Seq.Base.seq a) (b: FStar.Seq.Base.seq a).
;                         QuickSort.Seq.partition f s 0 (FStar.Seq.Base.length s - 1) == (b, b) ==>
;                         FStar.Seq.Base.length b > 0 /\
;                         (forall (any_result: FStar.Seq.Base.seq a).
;                             b == any_result ==>
;                             (forall (any_result: a).
;                                 FStar.Seq.Properties.head b == any_result ==>
;                                 FStar.Seq.Base.length b > 0 /\
;                                 (forall (any_result: FStar.Seq.Base.seq a).
;                                     b == any_result ==>
;                                     (forall (any_result: FStar.Seq.Base.seq a).
;                                         FStar.Seq.Properties.tail b == any_result ==>
;                                         FStar.Seq.Base.length b << FStar.Seq.Base.length s /\
;                                         (forall (any_result: FStar.Seq.Base.seq a).
;                                             b == any_result ==>
;                                             (forall (any_result:
;                                                 s2:
;                                                 FStar.Seq.Base.seq a
;                                                   { FStar.Seq.Properties.sorted f s2 /\
;                                                     FStar.Seq.Properties.permutation a b s2 }).
;                                                 QuickSort.Seq.sort f b == any_result ==>
;                                                 FStar.Seq.Base.length (FStar.Seq.Properties.tail b) <<
;                                                 FStar.Seq.Base.length s /\
;                                                 (forall (any_result: FStar.Seq.Base.seq a).
;                                                     FStar.Seq.Properties.tail b == any_result ==>
;                                                     (forall (any_result:
;                                                         s2:
;                                                         FStar.Seq.Base.seq a
;                                                           { FStar.Seq.Properties.sorted f s2 /\
;                                                             FStar.Seq.Properties.permutation a
;                                                               (FStar.Seq.Properties.tail b)
;                                                               s2 }).
;                                                         QuickSort.Seq.sort f
;                                                           (FStar.Seq.Properties.tail b) ==
;                                                         any_result ==>
;                                                         (FStar.Seq.Properties.sorted f
;                                                             (QuickSort.Seq.sort f b) /\
;                                                           FStar.Seq.Properties.permutation a
;                                                             b
;                                                             (QuickSort.Seq.sort f b) ==>
;                                                           FStar.Seq.Properties.sorted f
;                                                             (QuickSort.Seq.sort f b)) /\
;                                                         (forall (any_result:
;                                                             s2:
;                                                             FStar.Seq.Base.seq a
;                                                               { FStar.Seq.Properties.sorted f s2 /\
;                                                                 FStar.Seq.Properties.permutation a
;                                                                   b
;                                                                   s2 }).
;                                                             QuickSort.Seq.sort f b == any_result ==>
;                                                             (FStar.Seq.Properties.sorted f
;                                                                 (QuickSort.Seq.sort f
;                                                                     (FStar.Seq.Properties.tail b)) /\
;                                                               FStar.Seq.Properties.permutation a
;                                                                 (FStar.Seq.Properties.tail b)
;                                                                 (QuickSort.Seq.sort f
;                                                                     (FStar.Seq.Properties.tail b)) ==>
;                                                               FStar.Seq.Properties.sorted f
;                                                                 (QuickSort.Seq.sort f
;                                                                     (FStar.Seq.Properties.tail b))) /\
;                                                             (forall (any_result:
;                                                                 s2:
;                                                                 FStar.Seq.Base.seq a
;                                                                   { FStar.Seq.Properties.sorted f s2 /\
;                                                                     FStar.Seq.Properties.permutation
;                                                                       a
;                                                                       (FStar.Seq.Properties.tail b)
;                                                                       s2 }).
;                                                                 QuickSort.Seq.sort f
;                                                                   (FStar.Seq.Properties.tail b) ==
;                                                                 any_result ==>
;                                                                 (forall (y: a).
;                                                                     (FStar.Seq.Properties.mem y
;                                                                         (QuickSort.Seq.sort f b) ==>
;                                                                       f y
;                                                                         (FStar.Seq.Properties.head b
;                                                                         )) /\
;                                                                     (FStar.Seq.Properties.mem y
;                                                                         (QuickSort.Seq.sort f
;                                                                             (FStar.Seq.Properties.tail
;                                                                                 b)) ==>
;                                                                       f (FStar.Seq.Properties.head b
;                                                                         )
;                                                                         y)) /\
;                                                                 (forall (pure_result: Prims.unit).
;                                                                     FStar.Seq.Properties.sorted f
;                                                                       (FStar.Seq.Base.append (QuickSort.Seq.sort
;                                                                               f
;                                                                               b)
;                                                                           (FStar.Seq.Base.cons (FStar.Seq.Properties.head
;                                                                                   b)
;                                                                               (QuickSort.Seq.sort f
;                                                                                   (FStar.Seq.Properties.tail
;                                                                                       b)))) ==>
;                                                                     (forall (pure_result:
;                                                                         Prims.unit).
;                                                                         (forall (x: a).
;                                                                             FStar.Seq.Properties.count
;                                                                               x
;                                                                               (FStar.Seq.Base.append
;                                                                                   (QuickSort.Seq.sort
;                                                                                       f
;                                                                                       b)
;                                                                                   (FStar.Seq.Base.cons
;                                                                                       (FStar.Seq.Properties.head
;                                                                                           b)
;                                                                                       (QuickSort.Seq.sort
;                                                                                           f
;                                                                                           (FStar.Seq.Properties.tail
;                                                                                               b)))) =
;                                                                             FStar.Seq.Properties.count
;                                                                               x
;                                                                               (QuickSort.Seq.sort f
;                                                                                   b) +
;                                                                             FStar.Seq.Properties.count
;                                                                               x
;                                                                               (FStar.Seq.Base.cons (FStar.Seq.Properties.head
;                                                                                       b)
;                                                                                   (QuickSort.Seq.sort
;                                                                                       f
;                                                                                       (FStar.Seq.Properties.tail
;                                                                                           b)))) ==>
;                                                                         FStar.Seq.Base.length b > 0 /\
;                                                                         (forall (any_result:
;                                                                             FStar.Seq.Base.seq a).
;                                                                             b == any_result ==>
;                                                                             FStar.Seq.Properties.permutation
;                                                                               a
;                                                                               (QuickSort.Seq.sort f
;                                                                                   (FStar.Seq.Properties.tail
;                                                                                       b))
;                                                                               (FStar.Seq.Properties.tail
;                                                                                   b) /\
;                                                                             (forall (pure_result:
;                                                                                 Prims.unit).
;                                                                                 FStar.Seq.Properties.permutation
;                                                                                   a
;                                                                                   (FStar.Seq.Base.cons
;                                                                                       (FStar.Seq.Properties.head
;                                                                                           b)
;                                                                                       (QuickSort.Seq.sort
;                                                                                           f
;                                                                                           (FStar.Seq.Properties.tail
;                                                                                               b)))
;                                                                                   b ==>
;                                                                                 FStar.Seq.Properties.sorted
;                                                                                   f
;                                                                                   (FStar.Seq.Base.append
;                                                                                       (QuickSort.Seq.sort
;                                                                                           f
;                                                                                           b)
;                                                                                       (FStar.Seq.Base.cons
;                                                                                           (FStar.Seq.Properties.head
;                                                                                               b)
;                                                                                           (QuickSort.Seq.sort
;                                                                                               f
;                                                                                               (FStar.Seq.Properties.tail
;                                                                                                   b)
;                                                                                           ))) /\
;                                                                                 FStar.Seq.Properties.permutation
;                                                                                   a
;                                                                                   s
;                                                                                   (FStar.Seq.Base.append
;                                                                                       (QuickSort.Seq.sort
;                                                                                           f
;                                                                                           b)
;                                                                                       (FStar.Seq.Base.cons
;                                                                                           (FStar.Seq.Properties.head
;                                                                                               b)
;                                                                                           (QuickSort.Seq.sort
;                                                                                               f
;                                                                                               (FStar.Seq.Properties.tail
;                                                                                                   b)
;                                                                                           ))))))))))
;                                                 )))))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec sort`

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
(Prims.pure_post Tm_refine_d240cd282795951bbd38b597f00192c4))

;; def=Prims.fst(402,27-402,88); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=QuickSort.Seq.fst(71,2-85,13)
(Valid 
;; def=Prims.fst(402,84-402,87); use=QuickSort.Seq.fst(71,2-85,13)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(389,2-389,39); use=QuickSort.Seq.fst(71,2-85,13)
(and (implies 
;; def=QuickSort.Seq.fst(71,5-71,18); use=QuickSort.Seq.fst(71,5-71,18)
(= (Prims.op_LessThanOrEqual (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1))
(BoxBool true))


;; def=QuickSort.Seq.fst(68,24-68,58); use=QuickSort.Seq.fst(71,24-71,25)
(and 
;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(71,24-71,25)
(or label_1

;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(71,24-71,25)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
x_0f213a493b460394312187ae1ccaa1bb_2))
)


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(71,24-71,25)
(or label_2

;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(71,24-71,25)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(71,24-71,25)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
x_0f213a493b460394312187ae1ccaa1bb_2)
)
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=QuickSort.Seq.fst(71,2-85,13)
(not 
;; def=QuickSort.Seq.fst(71,5-71,18); use=QuickSort.Seq.fst(71,5-71,18)
(= (Prims.op_LessThanOrEqual (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.bool)

;; def=QuickSort.Seq.fst(71,5-85,13); use=QuickSort.Seq.fst(71,5-85,13)
(= (Prims.op_LessThanOrEqual (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1))
@x1)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(72,34-72,35)
(or label_3

;; def=QuickSort.Seq.fst(27,28-27,44); use=QuickSort.Seq.fst(72,34-72,35)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Prims.int)

;; def=QuickSort.Seq.fst(27,18-72,35); use=QuickSort.Seq.fst(71,2-85,13)
(= (BoxInt 0)
@x2)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(72,36-72,50)
(or label_4

;; def=Prims.fst(680,18-680,24); use=QuickSort.Seq.fst(72,36-72,50)
(>= (BoxInt_proj_0 (Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(72,36-72,50)
(or label_5

;; def=QuickSort.Seq.fst(27,58-27,71); use=QuickSort.Seq.fst(72,36-72,50)
(<= (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1))))
)


;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(72,36-72,50)
(or label_6

;; def=QuickSort.Seq.fst(27,75-27,90); use=QuickSort.Seq.fst(72,36-72,50)
(< (BoxInt_proj_0 (Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1)))
(BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)))
)


;; def=Prims.fst(356,2-356,58); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_refine_490ac715dd597b37a653aee8f5e20993)

;; def=Prims.fst(356,26-356,41); use=QuickSort.Seq.fst(71,2-85,13)
(= @x3
(Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1)))
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(72,20-72,29)
(and 
;; def=QuickSort.Seq.fst(29,19-31,84); use=QuickSort.Seq.fst(72,20-72,29)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9)

;; def=QuickSort.Seq.fst(30,33-31,83); use=QuickSort.Seq.fst(72,20-72,29)
(and (implies 
;; def=QuickSort.Seq.fst(30,35-30,45); use=QuickSort.Seq.fst(72,20-72,29)
(<= (BoxInt_proj_0 @x4)
(BoxInt_proj_0 (BoxInt 0)))


;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(72,20-72,29)
(or label_7

;; def=QuickSort.Seq.fst(30,50-30,79); use=QuickSort.Seq.fst(72,20-72,29)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
@x4))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0))))
)
)
(implies 
;; def=QuickSort.Seq.fst(31,38-31,46); use=QuickSort.Seq.fst(72,20-72,29)
(< (BoxInt_proj_0 (Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1)))
(BoxInt_proj_0 @x4))


;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(72,20-72,29)
(or label_8

;; def=QuickSort.Seq.fst(31,52-31,81); use=QuickSort.Seq.fst(72,20-72,29)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
@x4)))
)
))
)
 
;;no pats
:qid @query.5))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(72,20-72,29)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.Native.tuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)))

;; def=QuickSort.Seq.fst(34,25-34,59); use=QuickSort.Seq.fst(72,20-72,29)
(= (Prims.op_Addition (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4)))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))


;; def=QuickSort.Seq.fst(35,25-35,40); use=QuickSort.Seq.fst(72,20-72,29)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4)))
(BoxInt_proj_0 (BoxInt 0)))


;; def=QuickSort.Seq.fst(36,25-36,41); use=QuickSort.Seq.fst(72,20-72,29)
(= (FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4)
(BoxInt 0))
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)))


;; def=QuickSort.Seq.fst(37,25-39,74); use=QuickSort.Seq.fst(72,20-72,29)
(forall ((@x5 Term))
 (! (implies (HasType @x5
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=QuickSort.Seq.fst(37,36-39,73); use=QuickSort.Seq.fst(72,20-72,29)
(and 
;; def=QuickSort.Seq.fst(37,36-37,56); use=QuickSort.Seq.fst(72,20-72,29)
(implies 
;; def=QuickSort.Seq.fst(37,37-37,45); use=QuickSort.Seq.fst(72,20-72,29)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x5
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4)))


;; def=QuickSort.Seq.fst(37,50-37,55); use=QuickSort.Seq.fst(72,20-72,29)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)))
@x5))
)


;; def=QuickSort.Seq.fst(38,36-38,56); use=QuickSort.Seq.fst(72,20-72,29)
(implies 
;; def=QuickSort.Seq.fst(38,37-38,45); use=QuickSort.Seq.fst(72,20-72,29)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x5
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4)))


;; def=QuickSort.Seq.fst(38,50-38,55); use=QuickSort.Seq.fst(72,20-72,29)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
(FStar.Seq.Base.index x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0))))
)


;; def=QuickSort.Seq.fst(39,36-39,73); use=QuickSort.Seq.fst(72,20-72,29)
(= (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x5
x_0f213a493b460394312187ae1ccaa1bb_2)
(Prims.op_Addition (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x5
(FStar.Pervasives.Native.snd (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4))
(FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x5
(FStar.Pervasives.Native.fst (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x4))))
)
)
 
;;no pats
:qid @query.7))


;; def=QuickSort.Seq.fst(72,11-72,50); use=QuickSort.Seq.fst(72,11-72,50)
(= (QuickSort.Seq.partition x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
(Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1)))
@x4)
)

;; def=Prims.fst(413,99-413,120); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=Prims.fst(413,99-413,120); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(72,11-72,17); use=QuickSort.Seq.fst(72,11-72,17)
(= (QuickSort.Seq.partition x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
x_0f213a493b460394312187ae1ccaa1bb_2
(BoxInt 0)
(Prims.op_Subtraction (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2)
(BoxInt 1)))
(FStar.Pervasives.Native.Mktuple2 (FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0)
@x5
@x6))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=FStar.Seq.Properties.fsti(40,28-40,40); use=QuickSort.Seq.fst(73,24-73,26)
(or label_9

;; def=FStar.Seq.Properties.fsti(40,28-40,40); use=QuickSort.Seq.fst(73,24-73,26)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=FStar.Seq.Properties.fsti(40,20-40,21); use=QuickSort.Seq.fst(71,2-85,13)
(= @x6
@x7)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=QuickSort.Seq.fst(73,11-73,26); use=QuickSort.Seq.fst(73,11-73,26)
(= (FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
@x8)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=FStar.Seq.Properties.fsti(42,28-42,40); use=QuickSort.Seq.fst(75,24-75,26)
(or label_10

;; def=FStar.Seq.Properties.fsti(42,28-42,40); use=QuickSort.Seq.fst(75,24-75,26)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=FStar.Seq.Properties.fsti(42,20-42,21); use=QuickSort.Seq.fst(71,2-85,13)
(= @x6
@x9)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(75,11-75,26); use=QuickSort.Seq.fst(75,11-75,26)
(= (FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
@x10)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(76,22-76,24)
(or label_11

;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(76,22-76,24)
(Valid 
;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(76,22-76,24)
(Prims.precedes Prims.nat
Prims.nat
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
@x5)
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
)
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(67,10-72,13); use=QuickSort.Seq.fst(71,2-85,13)
(= @x5
@x11)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Tm_refine_0257a2cf38666af5438185786e843f12 @x5))

;; def=QuickSort.Seq.fst(76,11-76,24); use=QuickSort.Seq.fst(76,11-76,24)
(= (QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
@x12)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(77,22-77,27)
(or label_12

;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(77,22-77,27)
(Valid 
;; def=QuickSort.Seq.fst(71,2-85,13); use=QuickSort.Seq.fst(77,22-77,27)
(Prims.precedes Prims.nat
Prims.nat
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
(FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2))
)
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=QuickSort.Seq.fst(67,10-75,16); use=QuickSort.Seq.fst(71,2-85,13)
(= (FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
@x13)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_0268b5741dc224757cd0476009a8991e @x6))

;; def=QuickSort.Seq.fst(77,11-77,27); use=QuickSort.Seq.fst(77,11-77,27)
(= (QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
@x14)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and (implies 
;; def=QuickSort.Seq.fst(68,24-68,58); use=QuickSort.Seq.fst(81,29-81,30)
(and 
;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(81,29-81,30)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)))


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(81,29-81,30)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(81,29-81,30)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
@x5
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5))
)
)


;; def=FStar.Seq.Properties.fsti(163,34-163,45); use=QuickSort.Seq.fst(81,29-81,30)
(or label_13

;; def=FStar.Seq.Properties.fsti(163,34-163,45); use=QuickSort.Seq.fst(81,29-81,30)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Tm_refine_0257a2cf38666af5438185786e843f12 @x5))

;; def=FStar.Seq.Properties.fsti(163,25-163,27); use=QuickSort.Seq.fst(71,2-85,13)
(= (QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
@x15)
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and (implies 
;; def=QuickSort.Seq.fst(68,24-68,58); use=QuickSort.Seq.fst(81,37-81,38)
(and 
;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(81,37-81,38)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))))


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(81,37-81,38)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(81,37-81,38)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)))
)
)


;; def=FStar.Seq.Properties.fsti(165,34-165,45); use=QuickSort.Seq.fst(81,37-81,38)
(or label_14

;; def=FStar.Seq.Properties.fsti(165,34-165,45); use=QuickSort.Seq.fst(81,37-81,38)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))))
)
)

;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Tm_refine_0268b5741dc224757cd0476009a8991e @x6))

;; def=FStar.Seq.Properties.fsti(165,25-165,27); use=QuickSort.Seq.fst(71,2-85,13)
(= (QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
@x16)
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(81,7-81,26)
(and 
;; def=FStar.Seq.Properties.fsti(166,41-167,77); use=QuickSort.Seq.fst(81,7-81,26)
(forall ((@x17 Term))
 (! (implies (HasType @x17
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=FStar.Seq.Properties.fsti(166,52-167,76); use=QuickSort.Seq.fst(81,7-81,26)
(and (implies 
;; def=FStar.Seq.Properties.fsti(166,53-166,61); use=QuickSort.Seq.fst(81,7-81,26)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)))


;; def=FStar.Seq.Properties.fsti(166,66-166,75); use=QuickSort.Seq.fst(81,7-81,26)
(or label_15

;; def=FStar.Seq.Properties.fsti(166,66-166,75); use=QuickSort.Seq.fst(81,7-81,26)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x17)
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)))
)
)
(implies 
;; def=FStar.Seq.Properties.fsti(167,53-167,61); use=QuickSort.Seq.fst(81,7-81,26)
(BoxBool_proj_0 (FStar.Seq.Properties.mem x_9cd1733a5204f989dbb2f01d5984df93_0
@x17
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))))


;; def=FStar.Seq.Properties.fsti(167,66-167,75); use=QuickSort.Seq.fst(81,7-81,26)
(or label_16

;; def=FStar.Seq.Properties.fsti(167,66-167,75); use=QuickSort.Seq.fst(81,7-81,26)
(BoxBool_proj_0 (ApplyTT (ApplyTT x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
@x17))
)
))
)
 
;;no pats
:qid @query.20))


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(81,7-81,26)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Prims.unit)

;; def=FStar.Seq.Properties.fsti(168,40-168,78); use=QuickSort.Seq.fst(81,7-81,26)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.append x_9cd1733a5204f989dbb2f01d5984df93_0
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
(FStar.Seq.Base.cons x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))))))
)

;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(82,7-82,25)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Prims.unit)

;; def=FStar.Seq.Properties.fsti(138,11-138,73); use=QuickSort.Seq.fst(82,7-82,25)
(forall ((@x19 Term))
 (! (implies (HasType @x19
x_9cd1733a5204f989dbb2f01d5984df93_0)

;; def=FStar.Seq.Properties.fsti(138,22-138,72); use=QuickSort.Seq.fst(82,7-82,25)
(= (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x19
(FStar.Seq.Base.append x_9cd1733a5204f989dbb2f01d5984df93_0
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
(FStar.Seq.Base.cons x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)))))
(Prims.op_Addition (FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x19
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5))
(FStar.Seq.Properties.count x_9cd1733a5204f989dbb2f01d5984df93_0
@x19
(FStar.Seq.Base.cons x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))))))
)
 
;;no pats
:qid @query.23))
)

;; def=Prims.fst(459,77-459,89); use=QuickSort.Seq.fst(71,2-85,13)
(and 
;; def=FStar.Seq.Properties.fsti(213,48-213,60); use=QuickSort.Seq.fst(83,19-83,21)
(or label_17

;; def=FStar.Seq.Properties.fsti(213,48-213,60); use=QuickSort.Seq.fst(83,19-83,21)
(> (BoxInt_proj_0 (FStar.Seq.Base.length x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(451,66-451,102); use=QuickSort.Seq.fst(71,2-85,13)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(FStar.Seq.Base.seq x_9cd1733a5204f989dbb2f01d5984df93_0))

;; def=FStar.Seq.Properties.fsti(213,40-213,41); use=QuickSort.Seq.fst(71,2-85,13)
(= @x6
@x19)
)

;; def=Prims.fst(441,29-441,97); use=QuickSort.Seq.fst(83,7-83,16)
(and 
;; def=FStar.Seq.Properties.fsti(214,25-214,52); use=QuickSort.Seq.fst(83,7-83,16)
(or label_18

;; def=FStar.Seq.Properties.fsti(214,25-214,52); use=QuickSort.Seq.fst(83,7-83,16)
(Valid 
;; def=FStar.Seq.Properties.fsti(214,25-214,52); use=QuickSort.Seq.fst(83,7-83,16)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))
)
)


;; def=Prims.fst(441,36-441,97); use=QuickSort.Seq.fst(83,7-83,16)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
Prims.unit)

;; def=FStar.Seq.Properties.fsti(215,24-215,60); use=QuickSort.Seq.fst(83,7-83,16)
(Valid 
;; def=FStar.Seq.Properties.fsti(215,24-215,60); use=QuickSort.Seq.fst(83,7-83,16)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Base.cons x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)))
@x6)
)
)

;; def=QuickSort.Seq.fst(68,24-68,58); use=QuickSort.Seq.fst(85,7-85,13)
(and 
;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(85,7-85,13)
(or label_19

;; def=QuickSort.Seq.fst(68,24-68,35); use=QuickSort.Seq.fst(85,7-85,13)
(BoxBool_proj_0 (FStar.Seq.Properties.sorted x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Base.append x_9cd1733a5204f989dbb2f01d5984df93_0
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
(FStar.Seq.Base.cons x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6))))))
)


;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(85,7-85,13)
(or label_20

;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(85,7-85,13)
(Valid 
;; def=QuickSort.Seq.fst(68,39-68,58); use=QuickSort.Seq.fst(85,7-85,13)
(FStar.Seq.Properties.permutation x_9cd1733a5204f989dbb2f01d5984df93_0
x_0f213a493b460394312187ae1ccaa1bb_2
(FStar.Seq.Base.append x_9cd1733a5204f989dbb2f01d5984df93_0
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
@x5)
(FStar.Seq.Base.cons x_9cd1733a5204f989dbb2f01d5984df93_0
(FStar.Seq.Properties.head x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)
(QuickSort.Seq.sort x_9cd1733a5204f989dbb2f01d5984df93_0
x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1
(FStar.Seq.Properties.tail x_9cd1733a5204f989dbb2f01d5984df93_0
@x6)))))
)
)
)
)
 
;;no pats
:qid @query.25))
)
)
 
;;no pats
:qid @query.24))
)
)
 
;;no pats
:qid @query.22))
)
 
;;no pats
:qid @query.21))
)
)
 
;;no pats
:qid @query.19))
)
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
 
;;no pats
:qid @query.11))
)
 
;;no pats
:qid @query.10))
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.6))
)
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query.3))
)
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
; QUERY ID: (QuickSort.Seq.sort, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_FStar.Seq.Properties.count.fuel_instrumented, @fuel_correspondence_FStar.Seq.Properties.sorted.fuel_instrumented, @fuel_irrelevance_FStar.Seq.Properties.count.fuel_instrumented, @query, FStar.List.Tot.Base_interpretation_Tm_arrow_c8126b87a2c25bb477df4a7a6b0eea9e, FStar.Seq.Base_pretyping_7efa52b424e80c83ad68a652aa3561e4, Prims_pretyping_ae567c2fb75be05905677af440075565, QuickSort.Seq_interpretation_Tm_arrow_d48383cd05cdf3cc99008ea5dbf37931, binder_x_0f213a493b460394312187ae1ccaa1bb_2, binder_x_5acdf52b9b8ff0c2493fd6f1c19a9c80_1, binder_x_9cd1733a5204f989dbb2f01d5984df93_0, bool_inversion, equation_FStar.Pervasives.Native.fst, equation_FStar.Pervasives.Native.snd, equation_FStar.Seq.Base.cons, equation_FStar.Seq.Properties.head, equation_FStar.Seq.Properties.mem, equation_FStar.Seq.Properties.permutation, equation_FStar.Seq.Properties.tail, equation_FStar.Seq.Properties.total_order, equation_Prims.eqtype, equation_Prims.nat, equation_with_fuel_FStar.Seq.Properties.count.fuel_instrumented, equation_with_fuel_FStar.Seq.Properties.sorted.fuel_instrumented, function_token_typing_Prims.__cache_version_number__, int_inversion, int_typing, lemma_FStar.Seq.Base.lemma_len_slice, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_GreaterThan, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_Subtraction, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, refinement_interpretation_Tm_refine_0257a2cf38666af5438185786e843f12, refinement_interpretation_Tm_refine_0268b5741dc224757cd0476009a8991e, refinement_interpretation_Tm_refine_2024f3d60f1e162e9f0d26c9d17144c9, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_7945a5fb13c7ba499c9a3a023b23db9b, refinement_interpretation_Tm_refine_81407705a0828c2c1b1976675443f647, refinement_interpretation_Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55, typing_FStar.Pervasives.Native.fst, typing_FStar.Pervasives.Native.snd, typing_FStar.Seq.Base.append, typing_FStar.Seq.Base.cons, typing_FStar.Seq.Base.index, typing_FStar.Seq.Base.length, typing_FStar.Seq.Base.seq, typing_FStar.Seq.Properties.count, typing_FStar.Seq.Properties.mem, well-founded-ordering-on-nat
