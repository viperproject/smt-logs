
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

; Internals for BinaryTrees

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type BinaryTrees.tree


; <Start encoding type BinaryTrees.tree>

;;;;;;;;;;;;;;;;Constructor
(declare-fun BinaryTrees.tree () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun BinaryTrees.Leaf () Term)
;;;;;;;;;;;;;;;;data constructor proxy: BinaryTrees.Leaf
(declare-fun BinaryTrees.Leaf@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun BinaryTrees.Node (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun BinaryTrees.Node_root (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun BinaryTrees.Node_left (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun BinaryTrees.Node_right (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: BinaryTrees.Node
(declare-fun BinaryTrees.Node@tok () Term)
;;;;;;;;;;;;;;;;root: Prims.int -> left: tree -> right: tree -> tree
(declare-fun Tm_arrow_55cc0ca0768ec9166d511faa170d5145 () Term)

; <start constructor BinaryTrees.tree>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BinaryTrees.tree ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
116)
(= __@x0
BinaryTrees.tree)))

; </end constructor BinaryTrees.tree>


; <start constructor BinaryTrees.Leaf>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BinaryTrees.Leaf ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
122)
(= __@x0
BinaryTrees.Leaf)))

; </end constructor BinaryTrees.Leaf>


; <start constructor BinaryTrees.Node>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BinaryTrees.Node ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
124)
(= __@x0
(BinaryTrees.Node (BinaryTrees.Node_root __@x0)
(BinaryTrees.Node_left __@x0)
(BinaryTrees.Node_right __@x0)))))

; </end constructor BinaryTrees.Node>


; </end encoding type BinaryTrees.tree>

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
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (HasType BinaryTrees.Leaf@tok
BinaryTrees.tree)
:named typing_tok_BinaryTrees.Leaf@tok))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(BinaryTrees.Node @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(BinaryTrees.Node @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(BinaryTrees.Node @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
:qid subterm_ordering_BinaryTrees.Node))

:named subterm_ordering_BinaryTrees.Node))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.Node_root (BinaryTrees.Node @x0
@x1
@x2))
@x0)
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid projection_inverse_BinaryTrees.Node_root))

:named projection_inverse_BinaryTrees.Node_root))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.Node_right (BinaryTrees.Node @x0
@x1
@x2))
@x2)
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid projection_inverse_BinaryTrees.Node_right))

:named projection_inverse_BinaryTrees.Node_right))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.Node_left (BinaryTrees.Node @x0
@x1
@x2))
@x1)
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid projection_inverse_BinaryTrees.Node_left))

:named projection_inverse_BinaryTrees.Node_left))
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (HasType BinaryTrees.tree
Tm_type)
:named kinding_BinaryTrees.tree@tok))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(18,5-18,9); use=BinaryTrees.fst(18,5-18,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
BinaryTrees.tree)
(or (is-BinaryTrees.Leaf @x1)
(is-BinaryTrees.Node @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
BinaryTrees.tree))
:qid fuel_guarded_inversion_BinaryTrees.tree))

:named fuel_guarded_inversion_BinaryTrees.tree))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (= BinaryTrees.Leaf@tok
BinaryTrees.Leaf)
:named equality_tok_BinaryTrees.Leaf@tok))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
BinaryTrees.tree)
(HasTypeFuel @u0
@x3
BinaryTrees.tree))
(HasTypeFuel @u0
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
 

:pattern ((HasTypeFuel @u0
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
:qid data_typing_intro_BinaryTrees.Node@tok))

:named data_typing_intro_BinaryTrees.Node@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(19,4-19,8); use=BinaryTrees.fst(19,4-19,8)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
BinaryTrees.Leaf
BinaryTrees.tree)
 

:pattern ((HasTypeFuel @u0
BinaryTrees.Leaf
BinaryTrees.tree))
:qid data_typing_intro_BinaryTrees.Leaf@tok))

:named data_typing_intro_BinaryTrees.Leaf@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
BinaryTrees.tree)
(HasTypeFuel @u0
@x3
BinaryTrees.tree)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
:qid data_elim_BinaryTrees.Node))

:named data_elim_BinaryTrees.Node))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (= 116
(Term_constr_id BinaryTrees.tree))
:named constructor_distinct_BinaryTrees.tree))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 124
(Term_constr_id (BinaryTrees.Node @x0
@x1
@x2)))
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid constructor_distinct_BinaryTrees.Node))

:named constructor_distinct_BinaryTrees.Node))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (= 122
(Term_constr_id BinaryTrees.Leaf))
:named constructor_distinct_BinaryTrees.Leaf))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(18,5-18,9); use=BinaryTrees.fst(18,5-18,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
BinaryTrees.tree)
(= BinaryTrees.tree
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
BinaryTrees.tree))
:qid BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379))

:named BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379))
(push) ;; push{4

; Starting query at BinaryTrees.fst(18,0-20,54)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq BinaryTrees.tree ==>
; (forall (root: Prims.int) (left: BinaryTrees.tree) (right: BinaryTrees.tree).
;     Prims.hasEq BinaryTrees.tree /\ Prims.hasEq BinaryTrees.tree)


; Context: While encoding a query
; While typechecking the top-level declaration `type BinaryTrees.tree`

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
(assert (! (not (implies 
;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(Valid 
;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(Prims.hasEq BinaryTrees.tree)
)


;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
BinaryTrees.tree))

;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(and 
;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(20,28-20,32)
(or label_1

;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(Valid 
;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(Prims.hasEq BinaryTrees.tree)
)
)


;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(20,42-20,46)
(or label_2

;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(Valid 
;; def=BinaryTrees.fst(18,0-20,54); use=BinaryTrees.fst(18,0-20,54)
(Prims.hasEq BinaryTrees.tree)
)
)
)
)
 
;;no pats
:qid @query))
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.tree, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type BinaryTrees.tree


; <Start encoding type BinaryTrees.tree>

;;;;;;;;;;;;;;;;Constructor
(declare-fun BinaryTrees.tree () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun BinaryTrees.Leaf () Term)
;;;;;;;;;;;;;;;;data constructor proxy: BinaryTrees.Leaf
(declare-fun BinaryTrees.Leaf@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun BinaryTrees.Node (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun BinaryTrees.Node_root (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun BinaryTrees.Node_left (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun BinaryTrees.Node_right (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: BinaryTrees.Node
(declare-fun BinaryTrees.Node@tok () Term)
;;;;;;;;;;;;;;;;root: Prims.int -> left: tree -> right: tree -> tree
(declare-fun Tm_arrow_55cc0ca0768ec9166d511faa170d5145 () Term)

; <start constructor BinaryTrees.tree>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BinaryTrees.tree ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
128)
(= __@x0
BinaryTrees.tree)))

; </end constructor BinaryTrees.tree>


; <start constructor BinaryTrees.Leaf>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BinaryTrees.Leaf ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
134)
(= __@x0
BinaryTrees.Leaf)))

; </end constructor BinaryTrees.Leaf>


; <start constructor BinaryTrees.Node>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-BinaryTrees.Node ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
136)
(= __@x0
(BinaryTrees.Node (BinaryTrees.Node_root __@x0)
(BinaryTrees.Node_left __@x0)
(BinaryTrees.Node_right __@x0)))))

; </end constructor BinaryTrees.Node>


; </end encoding type BinaryTrees.tree>


; encoding sigelt assume BinaryTrees.tree__uu___haseq


; <Start encoding assume BinaryTrees.tree__uu___haseq>


; </end encoding assume BinaryTrees.tree__uu___haseq>


; encoding sigelt val BinaryTrees.uu___is_Leaf


; <Start encoding val BinaryTrees.uu___is_Leaf>

(declare-fun BinaryTrees.uu___is_Leaf (Term) Term)
;;;;;;;;;;;;;;;;projectee: tree -> Prims.bool
(declare-fun Tm_arrow_f1dc185a0fb68c243559006aa0494445 () Term)
(declare-fun BinaryTrees.uu___is_Leaf@tok () Term)

; </end encoding val BinaryTrees.uu___is_Leaf>


; encoding sigelt let uu___is_Leaf


; <Skipped let uu___is_Leaf/>


; encoding sigelt val BinaryTrees.uu___is_Node


; <Start encoding val BinaryTrees.uu___is_Node>

(declare-fun BinaryTrees.uu___is_Node (Term) Term)

(declare-fun BinaryTrees.uu___is_Node@tok () Term)

; </end encoding val BinaryTrees.uu___is_Node>


; encoding sigelt let uu___is_Node


; <Skipped let uu___is_Node/>


; encoding sigelt val BinaryTrees.__proj__Node__item__root


; <Start encoding val BinaryTrees.__proj__Node__item__root>

(declare-fun Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185 () Term)
(declare-fun BinaryTrees.__proj__Node__item__root (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: tree{Node? _} -> Prims.int
(declare-fun Tm_arrow_64b45206a6324ff1f097d1f3f595e55f () Term)
(declare-fun BinaryTrees.__proj__Node__item__root@tok () Term)

; </end encoding val BinaryTrees.__proj__Node__item__root>

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
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (HasType BinaryTrees.Leaf@tok
BinaryTrees.tree)
:named typing_tok_BinaryTrees.Leaf@tok))
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
;;; Fact-ids: Name BinaryTrees.uu___is_Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
BinaryTrees.tree)
(HasType (BinaryTrees.uu___is_Node @x0)
Prims.bool))
 

:pattern ((BinaryTrees.uu___is_Node @x0))
:qid typing_BinaryTrees.uu___is_Node))

:named typing_BinaryTrees.uu___is_Node))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(BinaryTrees.Node @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(BinaryTrees.Node @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(BinaryTrees.Node @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
:qid subterm_ordering_BinaryTrees.Node))

:named subterm_ordering_BinaryTrees.Node))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name BinaryTrees.__proj__Node__item__root; Namespace BinaryTrees
(assert (! (HasType Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185
Tm_type)
:named refinement_kinding_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
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
;;; Fact-ids: Name BinaryTrees.__proj__Node__item__root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
:qid refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))

:named refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.Node_root (BinaryTrees.Node @x0
@x1
@x2))
@x0)
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid projection_inverse_BinaryTrees.Node_root))

:named projection_inverse_BinaryTrees.Node_root))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.Node_right (BinaryTrees.Node @x0
@x1
@x2))
@x2)
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid projection_inverse_BinaryTrees.Node_right))

:named projection_inverse_BinaryTrees.Node_right))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.Node_left (BinaryTrees.Node @x0
@x1
@x2))
@x1)
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid projection_inverse_BinaryTrees.Node_left))

:named projection_inverse_BinaryTrees.Node_left))
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (HasType BinaryTrees.tree
Tm_type)
:named kinding_BinaryTrees.tree@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185
;;; Fact-ids: Name BinaryTrees.__proj__Node__item__root; Namespace BinaryTrees
(assert (! (iff (Valid (Prims.hasEq Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(18,5-18,9); use=BinaryTrees.fst(18,5-18,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
BinaryTrees.tree)
(or (is-BinaryTrees.Leaf @x1)
(is-BinaryTrees.Node @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
BinaryTrees.tree))
:qid fuel_guarded_inversion_BinaryTrees.tree))

:named fuel_guarded_inversion_BinaryTrees.tree))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (= BinaryTrees.Leaf@tok
BinaryTrees.Leaf)
:named equality_tok_BinaryTrees.Leaf@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name BinaryTrees.uu___is_Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term))
 (! (= (BinaryTrees.uu___is_Node @x0)
(BoxBool (is-BinaryTrees.Node @x0)))
 

:pattern ((BinaryTrees.uu___is_Node @x0))
:qid disc_equation_BinaryTrees.Node))

:named disc_equation_BinaryTrees.Node))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
BinaryTrees.tree)
(HasTypeFuel @u0
@x3
BinaryTrees.tree))
(HasTypeFuel @u0
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
 

:pattern ((HasTypeFuel @u0
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
:qid data_typing_intro_BinaryTrees.Node@tok))

:named data_typing_intro_BinaryTrees.Node@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(19,4-19,8); use=BinaryTrees.fst(19,4-19,8)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
BinaryTrees.Leaf
BinaryTrees.tree)
 

:pattern ((HasTypeFuel @u0
BinaryTrees.Leaf
BinaryTrees.tree))
:qid data_typing_intro_BinaryTrees.Leaf@tok))

:named data_typing_intro_BinaryTrees.Leaf@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
BinaryTrees.tree)
(HasTypeFuel @u0
@x3
BinaryTrees.tree)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(BinaryTrees.Node @x1
@x2
@x3)
BinaryTrees.tree))
:qid data_elim_BinaryTrees.Node))

:named data_elim_BinaryTrees.Node))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (= 128
(Term_constr_id BinaryTrees.tree))
:named constructor_distinct_BinaryTrees.tree))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,4-20,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 136
(Term_constr_id (BinaryTrees.Node @x0
@x1
@x2)))
 

:pattern ((BinaryTrees.Node @x0
@x1
@x2))
:qid constructor_distinct_BinaryTrees.Node))

:named constructor_distinct_BinaryTrees.Node))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (= 134
(Term_constr_id BinaryTrees.Leaf))
:named constructor_distinct_BinaryTrees.Leaf))
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
;;;;;;;;;;;;;;;;Assumption: BinaryTrees.tree__uu___haseq
;;; Fact-ids: Name BinaryTrees.tree__uu___haseq; Namespace BinaryTrees
(assert (! (Valid (Prims.hasEq BinaryTrees.tree))
:named assumption_BinaryTrees.tree__uu___haseq))
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
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(18,5-18,9); use=BinaryTrees.fst(18,5-18,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
BinaryTrees.tree)
(= BinaryTrees.tree
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
BinaryTrees.tree))
:qid BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379))

:named BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379))
(push) ;; push{2

; Starting query at BinaryTrees.fst(20,11-20,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: BinaryTrees.tree{Node? _}).
;   (*  - Could not prove post-condition
; *) ~(Node? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Node__item__root`

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
 (! (implies (and (HasType @x0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)

;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,11-20,15)
(not 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,11-20,15)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x0))
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
; QUERY ID: (BinaryTrees.__proj__Node__item__root, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Node__item__root


; <Skipped let __proj__Node__item__root/>


; encoding sigelt val BinaryTrees.__proj__Node__item__left


; <Start encoding val BinaryTrees.__proj__Node__item__left>


(declare-fun BinaryTrees.__proj__Node__item__left (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: tree{Node? _} -> tree
(declare-fun Tm_arrow_a430a873bde9d70b4f47f79d1c5682b5 () Term)
(declare-fun BinaryTrees.__proj__Node__item__left@tok () Term)

; </end encoding val BinaryTrees.__proj__Node__item__left>

(push) ;; push{2

; Starting query at BinaryTrees.fst(20,23-20,27)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: BinaryTrees.tree{Node? _}).
;   (*  - Could not prove post-condition
; *) ~(Node? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Node__item__left`

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
 (! (implies (and (HasType @x0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)

;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,23-20,27)
(not 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,23-20,27)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x0))
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
; QUERY ID: (BinaryTrees.__proj__Node__item__left, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Node__item__left


; <Skipped let __proj__Node__item__left/>


; encoding sigelt val BinaryTrees.__proj__Node__item__right


; <Start encoding val BinaryTrees.__proj__Node__item__right>


(declare-fun BinaryTrees.__proj__Node__item__right (Term) Term)


(declare-fun BinaryTrees.__proj__Node__item__right@tok () Term)

; </end encoding val BinaryTrees.__proj__Node__item__right>

(push) ;; push{2

; Starting query at BinaryTrees.fst(20,36-20,41)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: BinaryTrees.tree{Node? _}).
;   (*  - Could not prove post-condition
; *) ~(Node? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Node__item__right`

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
 (! (implies (and (HasType @x0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)

;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,36-20,41)
(not 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(20,36-20,41)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x0))
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
; QUERY ID: (BinaryTrees.__proj__Node__item__right, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Node__item__right


; <Skipped let __proj__Node__item__right/>


; encoding sigelt val BinaryTrees.size


; <Skipped val BinaryTrees.size/>

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
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Prims.nat
Tm_type)
:named typing_Prims.nat))
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
;;; Fact-ids: Name BinaryTrees.uu___is_Leaf; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(19,4-19,8); use=BinaryTrees.fst(19,4-19,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
BinaryTrees.tree)
(HasType (BinaryTrees.uu___is_Leaf @x0)
Prims.bool))
 

:pattern ((BinaryTrees.uu___is_Leaf @x0))
:qid typing_BinaryTrees.uu___is_Leaf))

:named typing_BinaryTrees.uu___is_Leaf))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Prims.nat
Tm_type)
:named function_token_typing_Prims.nat))
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
;;;;;;;;;;;;;;;;Equation for Prims.nat
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (= Prims.nat
Tm_refine_542f9d4f129664613f2483a6c88bc7c2)
:named equation_Prims.nat))
;;;;;;;;;;;;;;;;Equation for Prims.l_True
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (= Prims.l_True
(Prims.squash Prims.trivial))
:named equation_Prims.l_True))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name BinaryTrees.uu___is_Leaf; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(19,4-19,8); use=BinaryTrees.fst(19,4-19,8)
(forall ((@x0 Term))
 (! (= (BinaryTrees.uu___is_Leaf @x0)
(BoxBool (is-BinaryTrees.Leaf @x0)))
 

:pattern ((BinaryTrees.uu___is_Leaf @x0))
:qid disc_equation_BinaryTrees.Leaf))

:named disc_equation_BinaryTrees.Leaf))
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
(push) ;; push{2

; Starting query at BinaryTrees.fst(24,2-26,41)

;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_0 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_0
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_0))
(declare-fun Tm_refine_93204016123e1635beddd6856a188890 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_93204016123e1635beddd6856a188890
Tm_type)
:named refinement_kinding_Tm_refine_93204016123e1635beddd6856a188890))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(24,2-26,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_93204016123e1635beddd6856a188890)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(24,2-26,41)

;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(24,2-26,41)
(Valid 
;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(24,2-26,41)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_93204016123e1635beddd6856a188890))
:qid refinement_interpretation_Tm_refine_93204016123e1635beddd6856a188890))

:named refinement_interpretation_Tm_refine_93204016123e1635beddd6856a188890))
;;;;;;;;;;;;;;;;haseq for Tm_refine_93204016123e1635beddd6856a188890
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_93204016123e1635beddd6856a188890))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_93204016123e1635beddd6856a188890))
(declare-fun BinaryTrees.size (Term) Term)

;;;;;;;;;;;;;;;;_: _: tree{_ << t} -> Prims.nat
(declare-fun Tm_arrow_b3724004af2b3532b74c597a0d76ac6c () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_b3724004af2b3532b74c597a0d76ac6c
Tm_type)
:named kinding_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(22,23-26,41); use=BinaryTrees.fst(23,8-26,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b3724004af2b3532b74c597a0d76ac6c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))
:qid BinaryTrees_pre_typing_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))

:named BinaryTrees_pre_typing_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(22,23-26,41); use=BinaryTrees.fst(23,8-26,41)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b3724004af2b3532b74c597a0d76ac6c)
(and 
;; def=BinaryTrees.fst(22,23-26,41); use=BinaryTrees.fst(23,8-26,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_93204016123e1635beddd6856a188890)
(HasType (ApplyTT @x0
@x1)
Prims.nat))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))
:qid BinaryTrees_interpretation_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))

:named BinaryTrees_interpretation_Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))
(declare-fun BinaryTrees.size@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@x0 Term))
 (! (= (ApplyTT BinaryTrees.size@tok
@x0)
(BinaryTrees.size @x0))
 

:pattern ((ApplyTT BinaryTrees.size@tok
@x0))
:qid token_correspondence_BinaryTrees.size))

:named token_correspondence_BinaryTrees.size))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.size@tok
Tm_arrow_b3724004af2b3532b74c597a0d76ac6c))

;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@x1 Term))
 (! (= (ApplyTT BinaryTrees.size@tok
@x1)
(BinaryTrees.size @x1))
 

:pattern ((BinaryTrees.size @x1))
:qid function_token_typing_BinaryTrees.size.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.size@tok))
:qid function_token_typing_BinaryTrees.size))

:named function_token_typing_BinaryTrees.size))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_93204016123e1635beddd6856a188890)
(HasType (BinaryTrees.size @x0)
Prims.nat))
 

:pattern ((BinaryTrees.size @x0))
:qid typing_BinaryTrees.size))

:named typing_BinaryTrees.size))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.nat).
;   (forall (x: Prims.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         b << t /\
;         (forall (any_result: BinaryTrees.tree).
;             b == any_result ==>
;             (forall (any_result: Prims.nat).
;                 BinaryTrees.size b == any_result ==>
;                 (forall (return_val: Prims.nat).
;                     return_val == BinaryTrees.size b ==>
;                     BinaryTrees.size b == return_val ==>
;                     (forall (any_result: Prims.int).
;                         1 + BinaryTrees.size b == any_result ==>
;                         b << t /\
;                         (forall (any_result: BinaryTrees.tree).
;                             b == any_result ==>
;                             (forall (any_result: Prims.nat).
;                                 BinaryTrees.size b == any_result ==>
;                                 (forall (return_val: Prims.nat).
;                                     return_val == BinaryTrees.size b ==>
;                                     BinaryTrees.size b == return_val ==>
;                                     (forall (any_result: Prims.int).
;                                         1 + BinaryTrees.size b + BinaryTrees.size b == any_result ==>
;                                         1 + BinaryTrees.size b + BinaryTrees.size b >= 0))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec size`

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
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.nat))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(24,2-26,41)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(24,2-26,41)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(24,2-26,41)
(and (implies 
;; def=BinaryTrees.fst(23,13-23,14); use=BinaryTrees.fst(24,8-24,9)
(and 
;; def=BinaryTrees.fst(23,13-23,14); use=BinaryTrees.fst(24,8-24,9)
(not 
;; def=BinaryTrees.fst(23,13-23,14); use=BinaryTrees.fst(24,8-24,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=BinaryTrees.fst(23,13-23,14); use=BinaryTrees.fst(24,8-24,9)
(not 
;; def=BinaryTrees.fst(23,13-23,14); use=BinaryTrees.fst(24,8-24,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(24,2-26,41)
(not 
;; def=BinaryTrees.fst(23,13-23,14); use=BinaryTrees.fst(24,8-24,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(23,13-26,16); use=BinaryTrees.fst(24,8-26,16)
(= x_1696252159950375ed27d3faba8e3379_0
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(24,2-26,41)
(and 
;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(26,29-26,31)
(or label_2

;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(26,29-26,31)
(Valid 
;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(26,29-26,31)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(24,2-26,41)
(= @x2
@x4)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.nat)

;; def=BinaryTrees.fst(22,23-26,31); use=BinaryTrees.fst(26,24-26,31)
(= (BinaryTrees.size @x2)
@x5)
)

;; def=Prims.fst(356,2-356,58); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=BinaryTrees.fst(24,2-26,41)
(= @x6
(BinaryTrees.size @x2))


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(24,2-26,41)
(= (BinaryTrees.size @x2)
@x6)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.int)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(24,2-26,41)
(= (Prims.op_Addition (BoxInt 1)
(BinaryTrees.size @x2))
@x7)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(24,2-26,41)
(and 
;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(26,39-26,41)
(or label_3

;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(26,39-26,41)
(Valid 
;; def=BinaryTrees.fst(24,2-26,41); use=BinaryTrees.fst(26,39-26,41)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
BinaryTrees.tree)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(24,2-26,41)
(= @x3
@x8)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.nat)

;; def=BinaryTrees.fst(22,23-26,41); use=BinaryTrees.fst(26,34-26,41)
(= (BinaryTrees.size @x3)
@x9)
)

;; def=Prims.fst(356,2-356,58); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=BinaryTrees.fst(24,2-26,41)
(= @x10
(BinaryTrees.size @x3))


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(24,2-26,41)
(= (BinaryTrees.size @x3)
@x10)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(24,2-26,41)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.int)

;; def=BinaryTrees.fst(22,23-26,41); use=BinaryTrees.fst(24,2-26,41)
(= (Prims.op_Addition (Prims.op_Addition (BoxInt 1)
(BinaryTrees.size @x2))
(BinaryTrees.size @x3))
@x11)
)

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(26,20-26,41)
(or label_4

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(26,20-26,41)
(>= (BoxInt_proj_0 (Prims.op_Addition (Prims.op_Addition (BoxInt 1)
(BinaryTrees.size @x2))
(BinaryTrees.size @x3)))
(BoxInt_proj_0 (BoxInt 0)))
)
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
 
;;no pats
:qid @query.9))
)
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
:qid @query.4))
)
 
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
; QUERY ID: (BinaryTrees.size, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_0, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.nat, fuel_guarded_inversion_BinaryTrees.tree, primitive_Prims.op_Addition, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec size


; <Start encoding let rec size>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.size.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.size.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.size (Term) Term)
(declare-fun BinaryTrees.size@tok () Term)
;;;;;;;;;;;;;;;;t: tree -> Prims.nat
(declare-fun Tm_arrow_0817f239f1a7ed544b496b82b35d9b94 () Term)

; </end encoding let rec size>


; encoding sigelt val BinaryTrees.map


; <Skipped val BinaryTrees.map/>

;;;;;;;;;;;;;;;;kinding_Tm_arrow_35447810753695c4fe25c93af1251992
;;; Fact-ids: Name Prims.abs; Namespace Prims
(assert (! (HasType Tm_arrow_35447810753695c4fe25c93af1251992
Tm_type)
:named kinding_Tm_arrow_35447810753695c4fe25c93af1251992))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.abs; Namespace Prims
(assert (! 
;; def=Prims.fst(717,12-717,26); use=Prims.fst(717,12-717,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_35447810753695c4fe25c93af1251992))
:qid Prims_pre_typing_Tm_arrow_35447810753695c4fe25c93af1251992))

:named Prims_pre_typing_Tm_arrow_35447810753695c4fe25c93af1251992))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_35447810753695c4fe25c93af1251992
;;; Fact-ids: Name Prims.abs; Namespace Prims
(assert (! 
;; def=Prims.fst(717,12-717,26); use=Prims.fst(717,12-717,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_35447810753695c4fe25c93af1251992)
(and 
;; def=Prims.fst(717,12-717,26); use=Prims.fst(717,12-717,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Prims.int))
 

:pattern ((ApplyTT @x0
@x1))
:qid Prims_interpretation_Tm_arrow_35447810753695c4fe25c93af1251992.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_35447810753695c4fe25c93af1251992))
:qid Prims_interpretation_Tm_arrow_35447810753695c4fe25c93af1251992))

:named Prims_interpretation_Tm_arrow_35447810753695c4fe25c93af1251992))
(push) ;; push{2

; Starting query at BinaryTrees.fst(30,2-32,52)

;;;;;;;;;;;;;;;;f : _: Prims.int -> Prims.int (_: Prims.int -> Prims.int)
(declare-fun x_87ac387399742bfb1341a669dfb6c913_0 () Term)

;;;;;;;;;;;;;;;;binder_x_87ac387399742bfb1341a669dfb6c913_0
;;; Fact-ids: 
(assert (! (HasType x_87ac387399742bfb1341a669dfb6c913_0
Tm_arrow_35447810753695c4fe25c93af1251992)
:named binder_x_87ac387399742bfb1341a669dfb6c913_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))

(declare-fun Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1
Tm_type)
:named refinement_kinding_Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(30,2-32,52)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(30,2-32,52)

;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(30,2-32,52)
(Valid 
;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(30,2-32,52)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
:qid refinement_interpretation_Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))

:named refinement_interpretation_Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
(declare-fun BinaryTrees.map (Term Term) Term)


;;;;;;;;;;;;;;;;f: (_: Prims.int -> Prims.int) -> _: _: tree{_ << t} -> tree
(declare-fun Tm_arrow_36510be44898c307992618b104a3fb61 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_36510be44898c307992618b104a3fb61
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_36510be44898c307992618b104a3fb61
Tm_type)
:named kinding_Tm_arrow_36510be44898c307992618b104a3fb61))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(28,13-32,52); use=BinaryTrees.fst(29,8-32,52)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_36510be44898c307992618b104a3fb61)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_36510be44898c307992618b104a3fb61))
:qid BinaryTrees_pre_typing_Tm_arrow_36510be44898c307992618b104a3fb61))

:named BinaryTrees_pre_typing_Tm_arrow_36510be44898c307992618b104a3fb61))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_36510be44898c307992618b104a3fb61
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(28,13-32,52); use=BinaryTrees.fst(29,8-32,52)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_36510be44898c307992618b104a3fb61)
(and 
;; def=BinaryTrees.fst(28,13-32,52); use=BinaryTrees.fst(29,8-32,52)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x2
Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
BinaryTrees.tree))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_36510be44898c307992618b104a3fb61.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(28,13-32,52); use=BinaryTrees.fst(29,8-32,52)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_36510be44898c307992618b104a3fb61.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_36510be44898c307992618b104a3fb61))
:qid BinaryTrees_interpretation_Tm_arrow_36510be44898c307992618b104a3fb61))

:named BinaryTrees_interpretation_Tm_arrow_36510be44898c307992618b104a3fb61))
(declare-fun BinaryTrees.map@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.map@tok
@x0)
@x1)
(BinaryTrees.map @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT BinaryTrees.map@tok
@x0)
@x1))
:qid token_correspondence_BinaryTrees.map))

:named token_correspondence_BinaryTrees.map))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.map@tok
Tm_arrow_36510be44898c307992618b104a3fb61))

;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.map@tok
@x1)
@x2)
(BinaryTrees.map @x1
@x2))
 

:pattern ((BinaryTrees.map @x1
@x2))
:qid function_token_typing_BinaryTrees.map.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.map@tok))
:qid function_token_typing_BinaryTrees.map))

:named function_token_typing_BinaryTrees.map))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x1
Tm_refine_55dbab1f11b2e7dd5cb72d5581a750b1))
(HasType (BinaryTrees.map @x0
@x1)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.map @x0
@x1))
:qid typing_BinaryTrees.map))

:named typing_BinaryTrees.map))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post BinaryTrees.tree).
;   (forall (x: BinaryTrees.tree). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         b << t /\
;         (forall (any_result: BinaryTrees.tree).
;             b == any_result ==>
;             (forall (any_result: BinaryTrees.tree). BinaryTrees.map f b == any_result ==> b << t))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec map`

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
 (! (implies (and (HasType @x0
(Prims.pure_post BinaryTrees.tree))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(30,2-32,52)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(30,2-32,52)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(30,2-32,52)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(30,2-32,52)
(and (implies 
;; def=BinaryTrees.fst(29,14-29,15); use=BinaryTrees.fst(30,8-30,9)
(and 
;; def=BinaryTrees.fst(29,14-29,15); use=BinaryTrees.fst(30,8-30,9)
(not 
;; def=BinaryTrees.fst(29,14-29,15); use=BinaryTrees.fst(30,8-30,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(29,14-29,15); use=BinaryTrees.fst(30,8-30,9)
(not 
;; def=BinaryTrees.fst(29,14-29,15); use=BinaryTrees.fst(30,8-30,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(30,2-32,52)
(not 
;; def=BinaryTrees.fst(29,14-29,15); use=BinaryTrees.fst(30,8-30,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(30,2-32,52)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(30,2-32,52)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(30,2-32,52)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(29,14-32,16); use=BinaryTrees.fst(30,8-32,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(30,2-32,52)
(and 
;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(32,38-32,40)
(or label_2

;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(32,38-32,40)
(Valid 
;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(32,38-32,40)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(30,2-32,52)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(30,2-32,52)
(= @x2
@x4)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(30,2-32,52)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(20,23-32,41); use=BinaryTrees.fst(30,2-32,52)
(= (BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
@x2)
@x5)
)

;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(32,49-32,51)
(or label_3

;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(32,49-32,51)
(Valid 
;; def=BinaryTrees.fst(30,2-32,52); use=BinaryTrees.fst(32,49-32,51)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
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
; QUERY ID: (BinaryTrees.map, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec map


; <Start encoding let rec map>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.map.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.map.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.map (Term Term) Term)
(declare-fun BinaryTrees.map@tok () Term)



;;;;;;;;;;;;;;;;f: (_: Prims.int -> Prims.int) -> t: tree -> tree
(declare-fun Tm_arrow_9ed36e57a91938ad21109548aa5b35b2 () Term)

; </end encoding let rec map>

(push) ;; push{2

; Starting query at BinaryTrees.fst(34,0-34,78)

(declare-fun label_1 () Bool)

(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(34,47-34,78); use=BinaryTrees.fst(34,47-34,52)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (f: (_: Prims.int -> Prims.int)) (t: BinaryTrees.tree) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq Prims.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.map_size`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(34,0-34,78)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(34,54-34,58)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(34,54-34,58)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(34,54-34,58)
(Prims.hasEq Prims.nat)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.map_size, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.map_size


; <Skipped val BinaryTrees.map_size/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.size; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
BinaryTrees.tree)
(HasType (BinaryTrees.size @x0)
Prims.nat))
 

:pattern ((BinaryTrees.size @x0))
:qid typing_BinaryTrees.size))

:named typing_BinaryTrees.size))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.map; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x1
BinaryTrees.tree))
(HasType (BinaryTrees.map @x0
@x1)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.map @x0
@x1))
:qid typing_BinaryTrees.map))

:named typing_BinaryTrees.map))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.size; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
BinaryTrees.tree)
(HasType (BinaryTrees.size.fuel_instrumented @u0
@x1)
Prims.nat))
 

:pattern ((BinaryTrees.size.fuel_instrumented @u0
@x1))
:qid token_correspondence_BinaryTrees.size.fuel_instrumented))

:named token_correspondence_BinaryTrees.size.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.map; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x2
BinaryTrees.tree))
(HasType (BinaryTrees.map.fuel_instrumented @u0
@x1
@x2)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.map.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_BinaryTrees.map.fuel_instrumented))

:named token_correspondence_BinaryTrees.map.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.size
;;; Fact-ids: Name BinaryTrees.size; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
BinaryTrees.tree)
(= (BinaryTrees.size.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-BinaryTrees.Leaf @lb2)
(BoxInt 0)
(ite (is-BinaryTrees.Node @lb2)
(Prims.op_Addition (Prims.op_Addition (BoxInt 1)
(BinaryTrees.size.fuel_instrumented @u0
(BinaryTrees.Node_left @lb2)))
(BinaryTrees.size.fuel_instrumented @u0
(BinaryTrees.Node_right @lb2)))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.size.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_BinaryTrees.size.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.size.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.map
;;; Fact-ids: Name BinaryTrees.map; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x2
BinaryTrees.tree))
(= (BinaryTrees.map.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-BinaryTrees.Leaf @lb3)
BinaryTrees.Leaf@tok
(ite (is-BinaryTrees.Node @lb3)
(BinaryTrees.Node (ApplyTT @x1
(BinaryTrees.Node_root @lb3))
(BinaryTrees.map.fuel_instrumented @u0
@x1
(BinaryTrees.Node_left @lb3))
(BinaryTrees.map.fuel_instrumented @u0
@x1
(BinaryTrees.Node_right @lb3)))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.map.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_BinaryTrees.map.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.map.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.size; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (BinaryTrees.size.fuel_instrumented (SFuel @u0)
@x1)
(BinaryTrees.size.fuel_instrumented ZFuel
@x1))
 

:pattern ((BinaryTrees.size.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_BinaryTrees.size.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.size.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.map; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.map.fuel_instrumented (SFuel @u0)
@x1
@x2)
(BinaryTrees.map.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((BinaryTrees.map.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_BinaryTrees.map.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.map.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.size; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(23,8-23,12); use=BinaryTrees.fst(23,8-23,12)
(forall ((@x0 Term))
 (! (= (BinaryTrees.size @x0)
(BinaryTrees.size.fuel_instrumented MaxFuel
@x0))
 

:pattern ((BinaryTrees.size @x0))
:qid @fuel_correspondence_BinaryTrees.size.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.size.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.map; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(29,8-29,11); use=BinaryTrees.fst(29,8-29,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (BinaryTrees.map @x0
@x1)
(BinaryTrees.map.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((BinaryTrees.map @x0
@x1))
:qid @fuel_correspondence_BinaryTrees.map.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.map.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(36,2-38,48)

;;;;;;;;;;;;;;;;f : _: Prims.int -> Prims.int (_: Prims.int -> Prims.int)
(declare-fun x_87ac387399742bfb1341a669dfb6c913_0 () Term)

;;;;;;;;;;;;;;;;binder_x_87ac387399742bfb1341a669dfb6c913_0
;;; Fact-ids: 
(assert (! (HasType x_87ac387399742bfb1341a669dfb6c913_0
Tm_arrow_35447810753695c4fe25c93af1251992)
:named binder_x_87ac387399742bfb1341a669dfb6c913_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.map_size (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.map_size@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.size (BinaryTrees.map f t) = BinaryTrees.size t ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.size (BinaryTrees.map f b) = BinaryTrees.size b ==>
;                     b << t /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.size (BinaryTrees.map f b) = BinaryTrees.size b ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec map_size`

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
;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(34,53-34,78); use=BinaryTrees.fst(36,2-38,48)
(or label_2

;; def=BinaryTrees.fst(34,53-34,78); use=BinaryTrees.fst(36,2-38,48)
(= (BinaryTrees.size (BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
x_1696252159950375ed27d3faba8e3379_1))
(BinaryTrees.size x_1696252159950375ed27d3faba8e3379_1))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(36,2-38,48)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(36,2-38,48)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(36,2-38,48)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(36,2-38,48)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(36,2-38,48)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(36,2-38,48)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(36,2-38,48)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(36,2-38,48)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(36,2-38,48)
(and (implies 
;; def=BinaryTrees.fst(35,19-35,20); use=BinaryTrees.fst(36,8-36,9)
(and 
;; def=BinaryTrees.fst(35,19-35,20); use=BinaryTrees.fst(36,8-36,9)
(not 
;; def=BinaryTrees.fst(35,19-35,20); use=BinaryTrees.fst(36,8-36,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(35,19-35,20); use=BinaryTrees.fst(36,8-36,9)
(not 
;; def=BinaryTrees.fst(35,19-35,20); use=BinaryTrees.fst(36,8-36,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(35,19-37,8); use=BinaryTrees.fst(36,8-37,8)
(= x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(36,2-38,48)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(36,2-38,48)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(36,2-38,48)
(not 
;; def=BinaryTrees.fst(35,19-35,20); use=BinaryTrees.fst(36,8-36,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(35,19-38,16); use=BinaryTrees.fst(36,8-38,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(36,2-38,48)
(and 
;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(38,31-38,33)
(or label_4

;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(38,31-38,33)
(Valid 
;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(38,31-38,33)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(34,37-38,13); use=BinaryTrees.fst(36,2-38,48)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(38,20-38,28)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(34,53-34,78); use=BinaryTrees.fst(38,20-38,28)
(= (BinaryTrees.size (BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
@x3))
(BinaryTrees.size @x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(36,2-38,48)
(and 
;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(38,46-38,48)
(or label_5

;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(38,46-38,48)
(Valid 
;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(38,46-38,48)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(36,2-38,48)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(34,37-38,16); use=BinaryTrees.fst(36,2-38,48)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(38,35-38,43)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(34,53-34,78); use=BinaryTrees.fst(38,35-38,43)
(= (BinaryTrees.size (BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
@x4))
(BinaryTrees.size @x4))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(38,35-38,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(38,35-38,43)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.map_size, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.map.fuel_instrumented, @fuel_correspondence_BinaryTrees.size.fuel_instrumented, @fuel_irrelevance_BinaryTrees.map.fuel_instrumented, @fuel_irrelevance_BinaryTrees.size.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, binder_x_87ac387399742bfb1341a669dfb6c913_0, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_with_fuel_BinaryTrees.map.fuel_instrumented, equation_with_fuel_BinaryTrees.size.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_BinaryTrees.map, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(35,0-38,48)

(declare-fun label_1 () Bool)


(declare-fun Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(34,37-38,48); use=BinaryTrees.fst(35,0-38,48)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_92a14f3b7a812ac4c7319513a27ffda7))

:named refinement_kinding_Tm_refine_92a14f3b7a812ac4c7319513a27ffda7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(34,37-38,48); use=BinaryTrees.fst(35,0-38,48)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(36,2-38,48)

;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(36,2-38,48)
(Valid 
;; def=BinaryTrees.fst(36,2-38,48); use=BinaryTrees.fst(36,2-38,48)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x2)))
:qid refinement_interpretation_Tm_refine_92a14f3b7a812ac4c7319513a27ffda7))

:named refinement_interpretation_Tm_refine_92a14f3b7a812ac4c7319513a27ffda7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_92a14f3b7a812ac4c7319513a27ffda7
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(34,37-38,48); use=BinaryTrees.fst(35,0-38,48)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x0))))
:qid haseqTm_refine_92a14f3b7a812ac4c7319513a27ffda7))

:named haseqTm_refine_92a14f3b7a812ac4c7319513a27ffda7))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(34,47-34,78); use=BinaryTrees.fst(35,8-35,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (f: (_: Prims.int -> Prims.int))
;   (t: BinaryTrees.tree)
;   (f: (_: Prims.int -> Prims.int))
;   (t: BinaryTrees.tree{t << t})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq Prims.nat


; Context: While encoding a query
; While typechecking the top-level declaration `let rec map_size`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(35,0-38,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x3
(Tm_refine_92a14f3b7a812ac4c7319513a27ffda7 @x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(35,8-35,16)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(35,8-35,16)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(35,8-35,16)
(Prims.hasEq Prims.nat)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.map_size, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec map_size


; <Start encoding let rec map_size>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.map_size (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.map_size@tok () Term)

; </end encoding let rec map_size>


; encoding sigelt val BinaryTrees.find


; <Skipped val BinaryTrees.find/>

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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! (= 102
(Term_constr_id FStar.Pervasives.Native.option@tok))
:named fresh_token_FStar.Pervasives.Native.option@tok))
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
(push) ;; push{2

; Starting query at BinaryTrees.fst(42,2-46,55)

;;;;;;;;;;;;;;;;p : _: Prims.int -> Prims.bool (_: Prims.int -> Prims.bool)
(declare-fun x_d572127907d518d641a8068497b9d6e8_0 () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> Prims.bool
(declare-fun Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
Tm_type)
:named kinding_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(40,14-40,29); use=BinaryTrees.fst(41,8-41,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid BinaryTrees_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named BinaryTrees_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(40,14-40,29); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(and 
;; def=BinaryTrees.fst(40,14-40,29); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Prims.bool))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;binder_x_d572127907d518d641a8068497b9d6e8_0
;;; Fact-ids: 
(assert (! (HasType x_d572127907d518d641a8068497b9d6e8_0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
:named binder_x_d572127907d518d641a8068497b9d6e8_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))

(declare-fun Tm_refine_a358a910f8846aedeabaf5a11e2c549c () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_a358a910f8846aedeabaf5a11e2c549c
Tm_type)
:named refinement_kinding_Tm_refine_a358a910f8846aedeabaf5a11e2c549c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(42,2-46,55)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a358a910f8846aedeabaf5a11e2c549c)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(42,2-46,55)

;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(42,2-46,55)
(Valid 
;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(42,2-46,55)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a358a910f8846aedeabaf5a11e2c549c))
:qid refinement_interpretation_Tm_refine_a358a910f8846aedeabaf5a11e2c549c))

:named refinement_interpretation_Tm_refine_a358a910f8846aedeabaf5a11e2c549c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a358a910f8846aedeabaf5a11e2c549c
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a358a910f8846aedeabaf5a11e2c549c))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_a358a910f8846aedeabaf5a11e2c549c))
(declare-fun BinaryTrees.find (Term Term) Term)


;;;;;;;;;;;;;;;;p: (_: Prims.int -> Prims.bool) -> _: _: tree{_ << t} -> FStar.Pervasives.Native.option Prims.int
(declare-fun Tm_arrow_704db9941b29b4d59945e814859de12a () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_704db9941b29b4d59945e814859de12a
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_704db9941b29b4d59945e814859de12a
Tm_type)
:named kinding_Tm_arrow_704db9941b29b4d59945e814859de12a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(40,14-46,55); use=BinaryTrees.fst(41,8-46,55)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_704db9941b29b4d59945e814859de12a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_704db9941b29b4d59945e814859de12a))
:qid BinaryTrees_pre_typing_Tm_arrow_704db9941b29b4d59945e814859de12a))

:named BinaryTrees_pre_typing_Tm_arrow_704db9941b29b4d59945e814859de12a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_704db9941b29b4d59945e814859de12a
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(40,14-46,55); use=BinaryTrees.fst(41,8-46,55)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_704db9941b29b4d59945e814859de12a)
(and 
;; def=BinaryTrees.fst(40,14-46,55); use=BinaryTrees.fst(41,8-46,55)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x2
Tm_refine_a358a910f8846aedeabaf5a11e2c549c))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(FStar.Pervasives.Native.option Prims.int)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_704db9941b29b4d59945e814859de12a.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(40,14-46,55); use=BinaryTrees.fst(41,8-46,55)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_704db9941b29b4d59945e814859de12a.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_704db9941b29b4d59945e814859de12a))
:qid BinaryTrees_interpretation_Tm_arrow_704db9941b29b4d59945e814859de12a))

:named BinaryTrees_interpretation_Tm_arrow_704db9941b29b4d59945e814859de12a))
(declare-fun BinaryTrees.find@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.find@tok
@x0)
@x1)
(BinaryTrees.find @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT BinaryTrees.find@tok
@x0)
@x1))
:qid token_correspondence_BinaryTrees.find))

:named token_correspondence_BinaryTrees.find))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.find@tok
Tm_arrow_704db9941b29b4d59945e814859de12a))

;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.find@tok
@x1)
@x2)
(BinaryTrees.find @x1
@x2))
 

:pattern ((BinaryTrees.find @x1
@x2))
:qid function_token_typing_BinaryTrees.find.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.find@tok))
:qid function_token_typing_BinaryTrees.find))

:named function_token_typing_BinaryTrees.find))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x1
Tm_refine_a358a910f8846aedeabaf5a11e2c549c))
(HasType (BinaryTrees.find @x0
@x1)
(FStar.Pervasives.Native.option Prims.int)))
 

:pattern ((BinaryTrees.find @x0
@x1))
:qid typing_BinaryTrees.find))

:named typing_BinaryTrees.find))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post (FStar.Pervasives.Native.option Prims.int)).
;   (forall (x: FStar.Pervasives.Native.option Prims.int). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         (forall (k: Prims.pure_post (FStar.Pervasives.Native.option Prims.int)).
;             (forall (x: FStar.Pervasives.Native.option Prims.int). {:pattern Prims.guard_free (k x)}
;                 Prims.auto_squash (k x)) ==>
;             ~(p b = true) ==>
;             (forall (b: Prims.bool).
;                 p b == b ==>
;                 b << t /\
;                 (forall (any_result: BinaryTrees.tree).
;                     b == any_result ==>
;                     (forall (any_result: FStar.Pervasives.Native.option Prims.int).
;                         BinaryTrees.find p b == any_result ==>
;                         (forall (any_result: Prims.bool).
;                             Some? (BinaryTrees.find p b) == any_result ==>
;                             (forall (k: Prims.pure_post (FStar.Pervasives.Native.option Prims.int)).
;                                 (forall (x: FStar.Pervasives.Native.option Prims.int).
;                                     {:pattern Prims.guard_free (k x)}
;                                     Prims.auto_squash (k x)) ==>
;                                 (Some? (BinaryTrees.find p b) == true ==> b << t) /\
;                                 (~(Some? (BinaryTrees.find p b) = true) ==>
;                                   (forall (b: Prims.bool).
;                                       Some? (BinaryTrees.find p b) == b ==> b << t))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec find`

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
 (! (implies (and (HasType @x0
(Prims.pure_post (FStar.Pervasives.Native.option Prims.int)))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(42,2-46,55)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(42,2-46,55)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(42,2-46,55)
(and (implies 
;; def=BinaryTrees.fst(41,15-41,16); use=BinaryTrees.fst(42,8-42,9)
(and 
;; def=BinaryTrees.fst(41,15-41,16); use=BinaryTrees.fst(42,8-42,9)
(not 
;; def=BinaryTrees.fst(41,15-41,16); use=BinaryTrees.fst(42,8-42,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(41,15-41,16); use=BinaryTrees.fst(42,8-42,9)
(not 
;; def=BinaryTrees.fst(41,15-41,16); use=BinaryTrees.fst(42,8-42,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(42,2-46,55)
(not 
;; def=BinaryTrees.fst(41,15-41,16); use=BinaryTrees.fst(42,8-42,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(41,15-44,16); use=BinaryTrees.fst(42,8-44,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x1
@x2
@x3))
)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.option Prims.int)))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x5 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(42,2-46,55)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(42,2-46,55)
(ApplyTT @x4
@x5)
)

 

:pattern ((ApplyTT @x4
@x5))
:qid @query.6))


;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(42,2-46,55)
(not 
;; def=BinaryTrees.fst(44,23-44,26); use=BinaryTrees.fst(44,23-44,26)
(= (ApplyTT x_d572127907d518d641a8068497b9d6e8_0
@x1)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=BinaryTrees.fst(44,23-46,55); use=BinaryTrees.fst(44,23-46,55)
(= (ApplyTT x_d572127907d518d641a8068497b9d6e8_0
@x1)
@x5)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(42,2-46,55)
(and 
;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(45,37-45,39)
(or label_2

;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(45,37-45,39)
(Valid 
;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(45,37-45,39)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
BinaryTrees.tree)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(42,2-46,55)
(= @x2
@x6)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.Native.option Prims.int))

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=BinaryTrees.fst(42,2-46,55)
(= (BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x2)
@x7)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.bool)

;; def=BinaryTrees.fst(45,23-45,40); use=BinaryTrees.fst(45,23-45,40)
(= (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x2))
@x8)
)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (FStar.Pervasives.Native.option Prims.int)))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x10 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(42,2-46,55)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(42,2-46,55)
(ApplyTT @x9
@x10)
)

 

:pattern ((ApplyTT @x9
@x10))
:qid @query.12))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(42,2-46,55)
(and (implies 
;; def=BinaryTrees.fst(45,23-45,40); use=BinaryTrees.fst(45,23-45,40)
(= (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x2))
(BoxBool true))


;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(45,53-45,55)
(or label_3

;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(45,53-45,55)
(Valid 
;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(45,53-45,55)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_1)
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(42,2-46,55)
(not 
;; def=BinaryTrees.fst(45,23-45,40); use=BinaryTrees.fst(45,23-45,40)
(= (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x2))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(42,2-46,55)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.bool)

;; def=BinaryTrees.fst(45,23-46,55); use=BinaryTrees.fst(45,23-46,55)
(= (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x2))
@x10)
)

;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(46,53-46,55)
(or label_4

;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(46,53-46,55)
(Valid 
;; def=BinaryTrees.fst(42,2-46,55); use=BinaryTrees.fst(46,53-46,55)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)
)
 
;;no pats
:qid @query.13))
))
)
 
;;no pats
:qid @query.11)))
 
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
:qid @query.5)))
 
;;no pats
:qid @query.4))
)
 
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
; QUERY ID: (BinaryTrees.find, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec find


; <Start encoding let rec find>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.find.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.find.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.find (Term Term) Term)
(declare-fun BinaryTrees.find@tok () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> Prims.bool
(declare-fun Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1 () Term)


;;;;;;;;;;;;;;;;p: (_: Prims.int -> Prims.bool) -> t: tree -> FStar.Pervasives.Native.option Prims.int
(declare-fun Tm_arrow_52e7a57434a8c20be65685deeeb0b0f2 () Term)

; </end encoding let rec find>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x1
BinaryTrees.tree))
(HasType (BinaryTrees.find @x0
@x1)
(FStar.Pervasives.Native.option Prims.int)))
 

:pattern ((BinaryTrees.find @x0
@x1))
:qid typing_BinaryTrees.find))

:named typing_BinaryTrees.find))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x2
BinaryTrees.tree))
(HasType (BinaryTrees.find.fuel_instrumented @u0
@x1
@x2)
(FStar.Pervasives.Native.option Prims.int)))
 

:pattern ((BinaryTrees.find.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_BinaryTrees.find.fuel_instrumented))

:named token_correspondence_BinaryTrees.find.fuel_instrumented))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! (HasType Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
Tm_type)
:named kinding_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.find
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x2
BinaryTrees.tree))
(= (BinaryTrees.find.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-BinaryTrees.Leaf @lb3)
(FStar.Pervasives.Native.None Prims.int)
(ite (is-BinaryTrees.Node @lb3)
(let ((@lb4 (ApplyTT @x1
(BinaryTrees.Node_root @lb3))))
(ite (= @lb4
(BoxBool true))
(FStar.Pervasives.Native.Some Prims.int
(BinaryTrees.Node_root @lb3))
(let ((@lb5 (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find.fuel_instrumented @u0
@x1
(BinaryTrees.Node_left @lb3)))))
(ite (= @lb5
(BoxBool true))
(BinaryTrees.find.fuel_instrumented @u0
@x1
(BinaryTrees.Node_left @lb3))
(BinaryTrees.find.fuel_instrumented @u0
@x1
(BinaryTrees.Node_right @lb3))))))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.find.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_BinaryTrees.find.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.find.fuel_instrumented))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(40,14-40,29); use=BinaryTrees.fst(41,8-41,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid BinaryTrees_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named BinaryTrees_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(40,14-40,29); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(and 
;; def=BinaryTrees.fst(40,14-40,29); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Prims.bool))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.find.fuel_instrumented (SFuel @u0)
@x1
@x2)
(BinaryTrees.find.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((BinaryTrees.find.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_BinaryTrees.find.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.find.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.find; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(41,8-41,12); use=BinaryTrees.fst(41,8-41,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (BinaryTrees.find @x0
@x1)
(BinaryTrees.find.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((BinaryTrees.find @x0
@x1))
:qid @fuel_correspondence_BinaryTrees.find.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.find.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(48,0-49,52)

(declare-fun label_1 () Bool)

(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(49,2-49,52); use=BinaryTrees.fst(49,2-49,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (p: (_: Prims.int -> Prims.bool)) (t: BinaryTrees.tree) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   ~(None? (BinaryTrees.find p t)) ==> Some? (BinaryTrees.find p t)


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.find_some`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(48,0-49,52)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)

;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(49,9-49,25)
(not 
;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(49,9-49,25)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Prims.int
(BinaryTrees.find @x0
@x1)))
)
)

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=BinaryTrees.fst(49,40-49,50)
(or label_1

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=BinaryTrees.fst(49,40-49,50)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find @x0
@x1)))
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.find_some, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.find.fuel_instrumented, @query, disc_equation_FStar.Pervasives.Native.None, disc_equation_FStar.Pervasives.Native.Some, equation_Prims.eqtype, equation_with_fuel_BinaryTrees.find.fuel_instrumented, lemma_FStar.Pervasives.invertOption, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_BinaryTrees.find, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.find_some


; <Skipped val BinaryTrees.find_some/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Some__item__v; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,11-33,12); use=FStar.Pervasives.Native.fst(33,11-33,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x0)))
(HasType (FStar.Pervasives.Native.__proj__Some__item__v @x0
@x1)
@x0))
 

:pattern ((FStar.Pervasives.Native.__proj__Some__item__v @x0
@x1))
:qid typing_FStar.Pervasives.Native.__proj__Some__item__v))

:named typing_FStar.Pervasives.Native.__proj__Some__item__v))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Some__item__v; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_4d5241eb6fe198666a8101195bbd4a2a))

:named refinement_kinding_Tm_refine_4d5241eb6fe198666a8101195bbd4a2a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Some__item__v; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.option @x2))

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x2)))
:qid refinement_interpretation_Tm_refine_4d5241eb6fe198666a8101195bbd4a2a))

:named refinement_interpretation_Tm_refine_4d5241eb6fe198666a8101195bbd4a2a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Some__item__v; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,11-33,12); use=FStar.Pervasives.Native.fst(33,11-33,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Native.__proj__Some__item__v @x0
@x1)
(FStar.Pervasives.Native.Some_v @x1))
 

:pattern ((FStar.Pervasives.Native.__proj__Some__item__v @x0
@x1))
:qid proj_equation_FStar.Pervasives.Native.Some_v))

:named proj_equation_FStar.Pervasives.Native.Some_v))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4d5241eb6fe198666a8101195bbd4a2a
;;; Fact-ids: Name FStar.Pervasives.Native.__proj__Some__item__v; Namespace FStar.Pervasives.Native
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=FStar.Pervasives.Native.fst(33,4-33,8)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x0)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.option @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4d5241eb6fe198666a8101195bbd4a2a @x0))))
:qid haseqTm_refine_4d5241eb6fe198666a8101195bbd4a2a))

:named haseqTm_refine_4d5241eb6fe198666a8101195bbd4a2a))
(push) ;; push{2

; Starting query at BinaryTrees.fst(51,2-53,50)

;;;;;;;;;;;;;;;;p : _: Prims.int -> Prims.bool (_: Prims.int -> Prims.bool)
(declare-fun x_d572127907d518d641a8068497b9d6e8_0 () Term)

;;;;;;;;;;;;;;;;binder_x_d572127907d518d641a8068497b9d6e8_0
;;; Fact-ids: 
(assert (! (HasType x_d572127907d518d641a8068497b9d6e8_0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
:named binder_x_d572127907d518d641a8068497b9d6e8_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.find_some (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.find_some@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       None? (BinaryTrees.find p t) \/ p (BinaryTrees.find p t).v ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     None? (BinaryTrees.find p b) \/ p (BinaryTrees.find p b).v ==>
;                     b << t /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             None? (BinaryTrees.find p b) \/ p (BinaryTrees.find p b).v ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec find_some`

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
;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(49,8-49,52); use=BinaryTrees.fst(51,2-53,50)
(or label_2

;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(51,2-53,50)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
x_1696252159950375ed27d3faba8e3379_1)))


;; def=BinaryTrees.fst(49,29-49,51); use=BinaryTrees.fst(51,2-53,50)
(BoxBool_proj_0 (ApplyTT x_d572127907d518d641a8068497b9d6e8_0
(FStar.Pervasives.Native.__proj__Some__item__v Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
x_1696252159950375ed27d3faba8e3379_1))))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(51,2-53,50)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(51,2-53,50)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(51,2-53,50)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(51,2-53,50)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(51,2-53,50)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(51,2-53,50)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(51,2-53,50)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(51,2-53,50)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(51,2-53,50)
(and (implies 
;; def=BinaryTrees.fst(50,20-50,21); use=BinaryTrees.fst(51,8-51,9)
(and 
;; def=BinaryTrees.fst(50,20-50,21); use=BinaryTrees.fst(51,8-51,9)
(not 
;; def=BinaryTrees.fst(50,20-50,21); use=BinaryTrees.fst(51,8-51,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(50,20-50,21); use=BinaryTrees.fst(51,8-51,9)
(not 
;; def=BinaryTrees.fst(50,20-50,21); use=BinaryTrees.fst(51,8-51,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(50,20-52,8); use=BinaryTrees.fst(51,8-52,8)
(= x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(51,2-53,50)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(51,2-53,50)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(51,2-53,50)
(not 
;; def=BinaryTrees.fst(50,20-50,21); use=BinaryTrees.fst(51,8-51,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(50,20-53,16); use=BinaryTrees.fst(51,8-53,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(51,2-53,50)
(and 
;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(53,32-53,34)
(or label_4

;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(53,32-53,34)
(Valid 
;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(53,32-53,34)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(48,39-53,13); use=BinaryTrees.fst(51,2-53,50)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(53,20-53,29)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(49,8-49,52); use=BinaryTrees.fst(53,20-53,29)
(or 
;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(53,20-53,29)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x3)))


;; def=BinaryTrees.fst(49,29-49,51); use=BinaryTrees.fst(53,20-53,29)
(BoxBool_proj_0 (ApplyTT x_d572127907d518d641a8068497b9d6e8_0
(FStar.Pervasives.Native.__proj__Some__item__v Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x3))))
)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(51,2-53,50)
(and 
;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(53,48-53,50)
(or label_5

;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(53,48-53,50)
(Valid 
;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(53,48-53,50)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(51,2-53,50)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(48,39-53,16); use=BinaryTrees.fst(51,2-53,50)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(53,36-53,45)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(49,8-49,52); use=BinaryTrees.fst(53,36-53,45)
(or 
;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(53,36-53,45)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x4)))


;; def=BinaryTrees.fst(49,29-49,51); use=BinaryTrees.fst(53,36-53,45)
(BoxBool_proj_0 (ApplyTT x_d572127907d518d641a8068497b9d6e8_0
(FStar.Pervasives.Native.__proj__Some__item__v Prims.int
(BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
@x4))))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(53,36-53,45)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(53,36-53,45)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.find_some, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.find.fuel_instrumented, @fuel_irrelevance_BinaryTrees.find.fuel_instrumented, @query, BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, Prims_pretyping_ae567c2fb75be05905677af440075565, binder_x_1696252159950375ed27d3faba8e3379_1, binder_x_d572127907d518d641a8068497b9d6e8_0, bool_inversion, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, constructor_distinct_FStar.Pervasives.Native.None, data_elim_FStar.Pervasives.Native.Some, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, disc_equation_FStar.Pervasives.Native.None, disc_equation_FStar.Pervasives.Native.Some, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.eqtype, equation_with_fuel_BinaryTrees.find.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, fuel_guarded_inversion_FStar.Pervasives.Native.option, function_token_typing_Prims.__cache_version_number__, int_inversion, int_typing, lemma_FStar.Pervasives.invertOption, proj_equation_FStar.Pervasives.Native.Some_v, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.None_a, projection_inverse_FStar.Pervasives.Native.Some_v, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, subterm_ordering_BinaryTrees.Node, token_correspondence_BinaryTrees.find.fuel_instrumented, typing_BinaryTrees.find, typing_FStar.Pervasives.Native.uu___is_Some, typing_Prims.int, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(50,0-53,50)

(declare-fun label_1 () Bool)


(declare-fun Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(48,39-53,50); use=BinaryTrees.fst(50,0-53,50)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279))

:named refinement_kinding_Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(48,39-53,50); use=BinaryTrees.fst(50,0-53,50)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(51,2-53,50)

;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(51,2-53,50)
(Valid 
;; def=BinaryTrees.fst(51,2-53,50); use=BinaryTrees.fst(51,2-53,50)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x2)))
:qid refinement_interpretation_Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279))

:named refinement_interpretation_Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(48,39-53,50); use=BinaryTrees.fst(50,0-53,50)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x0))))
:qid haseqTm_refine_6eca9e13e47bbb8a6c3983a034b7d279))

:named haseqTm_refine_6eca9e13e47bbb8a6c3983a034b7d279))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(49,2-49,52); use=BinaryTrees.fst(50,8-50,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (p: (_: Prims.int -> Prims.bool))
;   (t: BinaryTrees.tree)
;   (p: (_: Prims.int -> Prims.bool))
;   (t: BinaryTrees.tree{t << t})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   ~(None? (BinaryTrees.find p t)) ==> Some? (BinaryTrees.find p t)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec find_some`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(50,0-53,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x3
(Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279 @x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)

;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(50,8-50,17)
(not 
;; def=BinaryTrees.fst(49,9-49,25); use=BinaryTrees.fst(50,8-50,17)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None Prims.int
(BinaryTrees.find @x2
@x3)))
)
)

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=BinaryTrees.fst(50,8-50,17)
(or label_1

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=BinaryTrees.fst(50,8-50,17)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some Prims.int
(BinaryTrees.find @x2
@x3)))
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.find_some, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.find.fuel_instrumented, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, disc_equation_FStar.Pervasives.Native.None, disc_equation_FStar.Pervasives.Native.Some, equation_Prims.eqtype, function_token_typing_Prims.__cache_version_number__, lemma_FStar.Pervasives.invertOption, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_6eca9e13e47bbb8a6c3983a034b7d279, typing_BinaryTrees.find, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec find_some


; <Start encoding let rec find_some>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.find_some (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.find_some@tok () Term)

; </end encoding let rec find_some>

(push) ;; push{2

; Starting query at BinaryTrees.fst(55,21-57,36)

(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: _ -> _
(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
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
:qid BinaryTrees_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named BinaryTrees_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2))
(and 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
@x1))
 

:pattern ((ApplyTT @x0
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2)))
:qid BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

; Encoding query formula : forall (_: Type) (_: Type) (f: (_: _ -> _)) (o: FStar.Pervasives.Native.option _).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post (FStar.Pervasives.Native.option _)).
;     (forall (x: FStar.Pervasives.Native.option _). {:pattern Prims.guard_free (k x)}
;         Prims.auto_squash (k x)) ==>
;     ~(Some? o) /\ ~(None? o) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let map_option`

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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x0))
(HasType @x3
(FStar.Pervasives.Native.option @x0)))
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.option @x1)))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(55,21-57,36)
(forall ((@x5 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(55,21-57,36)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(55,21-57,36)
(ApplyTT @x4
@x5)
)

 

:pattern ((ApplyTT @x4
@x5))
:qid @query.2))


;; def=BinaryTrees.fst(55,17-55,18); use=BinaryTrees.fst(55,27-55,28)
(not 
;; def=BinaryTrees.fst(55,17-55,18); use=BinaryTrees.fst(55,27-55,28)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some @x0
@x3))
)


;; def=BinaryTrees.fst(55,17-55,18); use=BinaryTrees.fst(55,27-55,28)
(not 
;; def=BinaryTrees.fst(55,17-55,18); use=BinaryTrees.fst(55,27-55,28)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None @x0
@x3))
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
; QUERY ID: (BinaryTrees.map_option, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, lemma_FStar.Pervasives.invertOption

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let map_option


; <Start encoding let map_option>

;;;;;;;;;;;;;;;;_: _ -> _
(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun BinaryTrees.map_option (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;f: (_: _ -> _) -> o: FStar.Pervasives.Native.option _ -> FStar.Pervasives.Native.option _
(declare-fun Tm_arrow_5aa71f5e730df4e952780582419a00ef () Term)
(declare-fun BinaryTrees.map_option@tok () Term)


; </end encoding let map_option>


; encoding sigelt let compose


; <Start encoding let compose>



(declare-fun BinaryTrees.compose (Term Term Term Term Term Term) Term)


;;;;;;;;;;;;;;;;f1: (_: _ -> _) -> f2: (_: _ -> _) -> x: _ -> _
(declare-fun Tm_arrow_0e671300b027a382c3ad8af661e6bfe8 () Term)
(declare-fun BinaryTrees.compose@tok () Term)



; </end encoding let compose>

(push) ;; push{2

; Starting query at BinaryTrees.fst(61,0-62,64)

(declare-fun label_1 () Bool)


(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(62,2-62,64); use=BinaryTrees.fst(62,2-62,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (p: (_: Prims.int -> Prims.bool))
;   (f: (_: Prims.int -> Prims.int))
;   (t: BinaryTrees.tree)
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq (FStar.Pervasives.Native.option Prims.int)


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.map_find`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(61,0-62,64)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x2
BinaryTrees.tree)
(HasType @x3
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(62,28-62,38)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(62,28-62,38)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(62,28-62,38)
(Prims.hasEq (FStar.Pervasives.Native.option Prims.int))
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.map_find, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_FStar.Pervasives.Native.option__uu___haseq, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.map_find


; <Skipped val BinaryTrees.map_find/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.map_option; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(55,4-55,14); use=BinaryTrees.fst(55,4-55,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x0))
(HasType @x3
(FStar.Pervasives.Native.option @x0)))
(HasType (BinaryTrees.map_option @x0
@x1
@x2
@x3)
(FStar.Pervasives.Native.option @x1)))
 

:pattern ((BinaryTrees.map_option @x0
@x1
@x2
@x3))
:qid typing_BinaryTrees.map_option))

:named typing_BinaryTrees.map_option))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(59,4-59,11); use=BinaryTrees.fst(59,4-59,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x0))
(HasType @x4
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x2))
(HasType @x5
@x2))
(HasType (BinaryTrees.compose @x0
@x1
@x2
@x3
@x4
@x5)
@x1))
 

:pattern ((BinaryTrees.compose @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_BinaryTrees.compose))

:named typing_BinaryTrees.compose))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(59,4-59,11); use=BinaryTrees.fst(59,4-59,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
(BinaryTrees.compose @x0
@x1
@x2
@x3
@x4
@x5))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5))
:qid token_correspondence_BinaryTrees.compose))

:named token_correspondence_BinaryTrees.compose))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: Name BinaryTrees.map_option; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! (HasType Tm_arrow_0e671300b027a382c3ad8af661e6bfe8
Tm_type)
:named kinding_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(59,4-59,11); use=BinaryTrees.fst(59,4-59,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.compose@tok
Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))

;; def=BinaryTrees.fst(59,4-59,11); use=BinaryTrees.fst(59,4-59,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
(BinaryTrees.compose @x1
@x2
@x3
@x4
@x5
@x6))
 

:pattern ((BinaryTrees.compose @x1
@x2
@x3
@x4
@x5
@x6))
:qid function_token_typing_BinaryTrees.compose.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.compose@tok))
:qid function_token_typing_BinaryTrees.compose))

:named function_token_typing_BinaryTrees.compose))
;;;;;;;;;;;;;;;;Equation for BinaryTrees.map_option
;;; Fact-ids: Name BinaryTrees.map_option; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(55,4-55,14); use=BinaryTrees.fst(55,4-55,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (BinaryTrees.map_option @x0
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-FStar.Pervasives.Native.Some @lb4)
(FStar.Pervasives.Native.Some @x1
(ApplyTT @x2
(FStar.Pervasives.Native.Some_v @lb4)))
(ite (is-FStar.Pervasives.Native.None @lb4)
(FStar.Pervasives.Native.None @x1)
Tm_unit))))
 

:pattern ((BinaryTrees.map_option @x0
@x1
@x2
@x3))
:qid equation_BinaryTrees.map_option))

:named equation_BinaryTrees.map_option))
;;;;;;;;;;;;;;;;Equation for BinaryTrees.compose
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(59,4-59,11); use=BinaryTrees.fst(59,4-59,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (BinaryTrees.compose @x0
@x1
@x2
@x3
@x4
@x5)
(ApplyTT @x3
(ApplyTT @x4
@x5)))
 

:pattern ((BinaryTrees.compose @x0
@x1
@x2
@x3
@x4
@x5))
:qid equation_BinaryTrees.compose))

:named equation_BinaryTrees.compose))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name BinaryTrees.map_option; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
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
:qid BinaryTrees_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named BinaryTrees_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_0e671300b027a382c3ad8af661e6bfe8)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))
:qid BinaryTrees_pre_typing_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))

:named BinaryTrees_pre_typing_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: Name BinaryTrees.map_option; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2))
(and 
;; def=BinaryTrees.fst(55,0-57,36); use=BinaryTrees.fst(55,0-57,36)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
@x1))
 

:pattern ((ApplyTT @x0
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2)))
:qid BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8
;;; Fact-ids: Name BinaryTrees.compose; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_0e671300b027a382c3ad8af661e6bfe8)
(and 
;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType @x5
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x3))
(HasType @x6
@x3))
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
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8.2))


;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8.3))


;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
Tm_type))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8.4))


;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1)))
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
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8.5))


;; def=BinaryTrees.fst(59,0-59,31); use=BinaryTrees.fst(59,0-59,31)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType @x5
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x3)))
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
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8.6))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))
:qid BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))

:named BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8))
(push) ;; push{2

; Starting query at BinaryTrees.fst(64,2-66,52)

;;;;;;;;;;;;;;;;p : _: Prims.int -> Prims.bool (_: Prims.int -> Prims.bool)
(declare-fun x_d572127907d518d641a8068497b9d6e8_0 () Term)

;;;;;;;;;;;;;;;;binder_x_d572127907d518d641a8068497b9d6e8_0
;;; Fact-ids: 
(assert (! (HasType x_d572127907d518d641a8068497b9d6e8_0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
:named binder_x_d572127907d518d641a8068497b9d6e8_0))
;;;;;;;;;;;;;;;;f : _: Prims.int -> Prims.int (_: Prims.int -> Prims.int)
(declare-fun x_87ac387399742bfb1341a669dfb6c913_1 () Term)

;;;;;;;;;;;;;;;;binder_x_87ac387399742bfb1341a669dfb6c913_1
;;; Fact-ids: 
(assert (! (HasType x_87ac387399742bfb1341a669dfb6c913_1
Tm_arrow_35447810753695c4fe25c93af1251992)
:named binder_x_87ac387399742bfb1341a669dfb6c913_1))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_2 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_2
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_2
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_2))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.map_find (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.map_find@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
BinaryTrees.compose@tok))
:named @kick_partial_app_e08281b833730346d6e692a48740407a))



; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.find p (BinaryTrees.map f t) =
;       BinaryTrees.map_option f (BinaryTrees.find (BinaryTrees.compose p f) t) ==>
;       p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.find p (BinaryTrees.map f b) =
;                     BinaryTrees.map_option f (BinaryTrees.find (BinaryTrees.compose p f) b) ==>
;                     b << t /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.find p (BinaryTrees.map f b) =
;                             BinaryTrees.map_option f (BinaryTrees.find (BinaryTrees.compose p f) b) ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec map_find`

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
;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(62,8-62,64); use=BinaryTrees.fst(64,2-66,52)
(or label_2

;; def=BinaryTrees.fst(62,8-62,64); use=BinaryTrees.fst(64,2-66,52)
(= (BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
(BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_1
x_1696252159950375ed27d3faba8e3379_2))
(BinaryTrees.map_option Prims.int
Prims.int
x_87ac387399742bfb1341a669dfb6c913_1
(BinaryTrees.find (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
Prims.int)
Prims.bool)
Prims.int)
x_d572127907d518d641a8068497b9d6e8_0)
x_87ac387399742bfb1341a669dfb6c913_1)
x_1696252159950375ed27d3faba8e3379_2)))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(64,2-66,52)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(64,2-66,52)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(64,2-66,52)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(64,2-66,52)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(64,2-66,52)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(64,2-66,52)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(64,2-66,52)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(64,2-66,52)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(64,2-66,52)
(and (implies 
;; def=BinaryTrees.fst(63,21-63,22); use=BinaryTrees.fst(64,8-64,9)
(and 
;; def=BinaryTrees.fst(63,21-63,22); use=BinaryTrees.fst(64,8-64,9)
(not 
;; def=BinaryTrees.fst(63,21-63,22); use=BinaryTrees.fst(64,8-64,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_2))
)


;; def=BinaryTrees.fst(63,21-63,22); use=BinaryTrees.fst(64,8-64,9)
(not 
;; def=BinaryTrees.fst(63,21-63,22); use=BinaryTrees.fst(64,8-64,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_2))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(63,21-65,8); use=BinaryTrees.fst(64,8-65,8)
(= x_1696252159950375ed27d3faba8e3379_2
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(64,2-66,52)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(64,2-66,52)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(64,2-66,52)
(not 
;; def=BinaryTrees.fst(63,21-63,22); use=BinaryTrees.fst(64,8-64,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_2))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(63,21-66,16); use=BinaryTrees.fst(64,8-66,16)
(= x_1696252159950375ed27d3faba8e3379_2
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(64,2-66,52)
(and 
;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(66,33-66,35)
(or label_4

;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(66,33-66,35)
(Valid 
;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(66,33-66,35)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_2)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(61,60-66,13); use=BinaryTrees.fst(64,2-66,52)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(66,20-66,28)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(62,8-62,64); use=BinaryTrees.fst(66,20-66,28)
(= (BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
(BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_1
@x3))
(BinaryTrees.map_option Prims.int
Prims.int
x_87ac387399742bfb1341a669dfb6c913_1
(BinaryTrees.find (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
Prims.int)
Prims.bool)
Prims.int)
x_d572127907d518d641a8068497b9d6e8_0)
x_87ac387399742bfb1341a669dfb6c913_1)
@x3)))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(64,2-66,52)
(and 
;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(66,50-66,52)
(or label_5

;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(66,50-66,52)
(Valid 
;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(66,50-66,52)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_2)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(64,2-66,52)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(61,60-66,16); use=BinaryTrees.fst(64,2-66,52)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(66,37-66,45)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(62,8-62,64); use=BinaryTrees.fst(66,37-66,45)
(= (BinaryTrees.find x_d572127907d518d641a8068497b9d6e8_0
(BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_1
@x4))
(BinaryTrees.map_option Prims.int
Prims.int
x_87ac387399742bfb1341a669dfb6c913_1
(BinaryTrees.find (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
Prims.int)
Prims.bool)
Prims.int)
x_d572127907d518d641a8068497b9d6e8_0)
x_87ac387399742bfb1341a669dfb6c913_1)
@x4)))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(66,37-66,45)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(66,37-66,45)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.map_find, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.find.fuel_instrumented, @fuel_correspondence_BinaryTrees.map.fuel_instrumented, @fuel_irrelevance_BinaryTrees.find.fuel_instrumented, @fuel_irrelevance_BinaryTrees.map.fuel_instrumented, @query, BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8, BinaryTrees_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1, BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, FStar.Pervasives.Native_pretyping_b53dbd183c526bc5d0f20d7b966ae125, Prims_interpretation_Tm_arrow_35447810753695c4fe25c93af1251992, Prims_pretyping_ae567c2fb75be05905677af440075565, Prims_pretyping_f537159ed795b314b4e58c260361ae86, Prims_pretyping_f8666440faa91836cc5a13998af863fc, binder_x_1696252159950375ed27d3faba8e3379_2, binder_x_87ac387399742bfb1341a669dfb6c913_1, binder_x_d572127907d518d641a8068497b9d6e8_0, bool_inversion, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, constructor_distinct_FStar.Pervasives.Native.None, constructor_distinct_FStar.Pervasives.Native.Some, constructor_distinct_FStar.Pervasives.Native.option, constructor_distinct_Prims.unit, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, disc_equation_FStar.Pervasives.Native.Some, equality_tok_BinaryTrees.Leaf@tok, equation_BinaryTrees.compose, equation_BinaryTrees.map_option, equation_Prims.eqtype, equation_with_fuel_BinaryTrees.find.fuel_instrumented, equation_with_fuel_BinaryTrees.map.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, fuel_guarded_inversion_FStar.Pervasives.Native.option, function_token_typing_BinaryTrees.compose, function_token_typing_Prims.__cache_version_number__, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.None_a, projection_inverse_FStar.Pervasives.Native.Some_a, projection_inverse_FStar.Pervasives.Native.Some_v, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, subterm_ordering_BinaryTrees.Node, token_correspondence_BinaryTrees.compose, typing_BinaryTrees.find, typing_BinaryTrees.map, typing_BinaryTrees.uu___is_Leaf, typing_Prims.bool, typing_Prims.int, typing_tok_BinaryTrees.Leaf@tok, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(63,0-66,52)

(declare-fun label_1 () Bool)




(declare-fun Tm_refine_e3195a8297876ced03e25902cbcacacd (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(61,60-66,52); use=BinaryTrees.fst(63,0-66,52)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_e3195a8297876ced03e25902cbcacacd @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_e3195a8297876ced03e25902cbcacacd @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_e3195a8297876ced03e25902cbcacacd))

:named refinement_kinding_Tm_refine_e3195a8297876ced03e25902cbcacacd))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(61,60-66,52); use=BinaryTrees.fst(63,0-66,52)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e3195a8297876ced03e25902cbcacacd @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(64,2-66,52)

;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(64,2-66,52)
(Valid 
;; def=BinaryTrees.fst(64,2-66,52); use=BinaryTrees.fst(64,2-66,52)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e3195a8297876ced03e25902cbcacacd @x2)))
:qid refinement_interpretation_Tm_refine_e3195a8297876ced03e25902cbcacacd))

:named refinement_interpretation_Tm_refine_e3195a8297876ced03e25902cbcacacd))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e3195a8297876ced03e25902cbcacacd
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(61,60-66,52); use=BinaryTrees.fst(63,0-66,52)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e3195a8297876ced03e25902cbcacacd @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e3195a8297876ced03e25902cbcacacd @x0))))
:qid haseqTm_refine_e3195a8297876ced03e25902cbcacacd))

:named haseqTm_refine_e3195a8297876ced03e25902cbcacacd))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(62,2-62,64); use=BinaryTrees.fst(63,8-63,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (p: (_: Prims.int -> Prims.bool))
;   (f: (_: Prims.int -> Prims.int))
;   (t: BinaryTrees.tree)
;   (p: (_: Prims.int -> Prims.bool))
;   (f: (_: Prims.int -> Prims.int))
;   (t: BinaryTrees.tree{t << t})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq (FStar.Pervasives.Native.option Prims.int)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec map_find`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(63,0-66,52)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x1
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x2
BinaryTrees.tree)
(HasType @x3
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(HasType @x4
Tm_arrow_35447810753695c4fe25c93af1251992)
(HasType @x5
(Tm_refine_e3195a8297876ced03e25902cbcacacd @x2))
(HasType @x6
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(63,8-63,16)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(63,8-63,16)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(63,8-63,16)
(Prims.hasEq (FStar.Pervasives.Native.option Prims.int))
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.map_find, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_FStar.Pervasives.Native.option__uu___haseq, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec map_find


; <Start encoding let rec map_find>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.map_find (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.map_find@tok () Term)

; </end encoding let rec map_find>


; encoding sigelt val BinaryTrees.in_tree


; <Skipped val BinaryTrees.in_tree/>

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
(push) ;; push{2

; Starting query at BinaryTrees.fst(70,2-72,57)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
(declare-fun Tm_refine_9dc5a0b960285378753c58c3fa4a1582 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(69,16-72,57)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_9dc5a0b960285378753c58c3fa4a1582))

:named refinement_kinding_Tm_refine_9dc5a0b960285378753c58c3fa4a1582))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(69,16-72,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(69,16-72,57)

;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(69,16-72,57)
(or 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(70,2-72,57)
(Valid 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(70,2-72,57)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(69,16-72,57)
(and 
;; def=BinaryTrees.fst(69,16-69,17); use=BinaryTrees.fst(69,16-69,17)
(Valid 
;; def=BinaryTrees.fst(69,16-69,17); use=BinaryTrees.fst(69,16-69,17)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(70,2-72,57)
(Valid 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(70,2-72,57)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x2)))
:qid refinement_interpretation_Tm_refine_9dc5a0b960285378753c58c3fa4a1582))

:named refinement_interpretation_Tm_refine_9dc5a0b960285378753c58c3fa4a1582))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9dc5a0b960285378753c58c3fa4a1582
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(69,16-72,57)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x0))))
:qid haseqTm_refine_9dc5a0b960285378753c58c3fa4a1582))

:named haseqTm_refine_9dc5a0b960285378753c58c3fa4a1582))
(declare-fun BinaryTrees.in_tree (Term Term) Term)

;;;;;;;;;;;;;;;;_: Prims.int -> _: _: tree{_ << x \/ _ === x /\ _ << t} -> Prims.bool
(declare-fun Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8
Tm_type)
:named kinding_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(68,14-72,57); use=BinaryTrees.fst(69,8-72,57)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))
:qid BinaryTrees_pre_typing_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))

:named BinaryTrees_pre_typing_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(68,14-72,57); use=BinaryTrees.fst(69,8-72,57)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8)
(and 
;; def=BinaryTrees.fst(68,14-72,57); use=BinaryTrees.fst(69,8-72,57)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(68,14-72,57); use=BinaryTrees.fst(69,8-72,57)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))
:qid BinaryTrees_interpretation_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))

:named BinaryTrees_interpretation_Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))
(declare-fun BinaryTrees.in_tree@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.in_tree@tok
@x0)
@x1)
(BinaryTrees.in_tree @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT BinaryTrees.in_tree@tok
@x0)
@x1))
:qid token_correspondence_BinaryTrees.in_tree))

:named token_correspondence_BinaryTrees.in_tree))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.in_tree@tok
Tm_arrow_8d4ff8361b0dcf13c30907ed9f5135a8))

;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.in_tree@tok
@x1)
@x2)
(BinaryTrees.in_tree @x1
@x2))
 

:pattern ((BinaryTrees.in_tree @x1
@x2))
:qid function_token_typing_BinaryTrees.in_tree.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.in_tree@tok))
:qid function_token_typing_BinaryTrees.in_tree))

:named function_token_typing_BinaryTrees.in_tree))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_9dc5a0b960285378753c58c3fa4a1582 @x0)))
(HasType (BinaryTrees.in_tree @x0
@x1)
Prims.bool))
 

:pattern ((BinaryTrees.in_tree @x0
@x1))
:qid typing_BinaryTrees.in_tree))

:named typing_BinaryTrees.in_tree))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.bool).
;   (forall (x: Prims.bool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         (~(x = b) ==> x << x \/ b << t) /\
;         (~(x = b || BinaryTrees.in_tree x b) ==> x << x \/ b << t)))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec in_tree`

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
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.bool))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(70,2-72,57)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(70,2-72,57)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(70,2-72,57)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(70,2-72,57)
(and (implies 
;; def=BinaryTrees.fst(69,18-69,19); use=BinaryTrees.fst(70,8-70,9)
(and 
;; def=BinaryTrees.fst(69,18-69,19); use=BinaryTrees.fst(70,8-70,9)
(not 
;; def=BinaryTrees.fst(69,18-69,19); use=BinaryTrees.fst(70,8-70,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(69,18-69,19); use=BinaryTrees.fst(70,8-70,9)
(not 
;; def=BinaryTrees.fst(69,18-69,19); use=BinaryTrees.fst(70,8-70,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(70,2-72,57)
(not 
;; def=BinaryTrees.fst(69,18-69,19); use=BinaryTrees.fst(70,8-70,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(70,2-72,57)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(70,2-72,57)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(70,2-72,57)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(69,18-72,16); use=BinaryTrees.fst(70,8-72,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=BinaryTrees.fst(72,11-72,41); use=BinaryTrees.fst(72,20-72,57)
(and (implies 
;; def=BinaryTrees.fst(72,20-72,25); use=BinaryTrees.fst(72,20-72,25)
(not 
;; def=BinaryTrees.fst(72,20-72,25); use=BinaryTrees.fst(72,20-72,25)
(= x_ae567c2fb75be05905677af440075565_0
@x1)
)


;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(72,39-72,41)
(or label_2

;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,39-72,41)
(Valid 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,39-72,41)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,39-72,41)
(Valid 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,39-72,41)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_1)
)
)
)
(implies 
;; def=BinaryTrees.fst(72,20-72,41); use=BinaryTrees.fst(72,20-72,41)
(not 
;; def=BinaryTrees.fst(72,20-72,41); use=BinaryTrees.fst(72,20-72,41)
(or (BoxBool_proj_0 (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxBool_proj_0 (BinaryTrees.in_tree x_ae567c2fb75be05905677af440075565_0
@x2)))
)


;; def=BinaryTrees.fst(69,16-72,57); use=BinaryTrees.fst(72,55-72,57)
(or label_3

;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,55-72,57)
(Valid 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,55-72,57)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,55-72,57)
(Valid 
;; def=BinaryTrees.fst(70,2-72,57); use=BinaryTrees.fst(72,55-72,57)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)
))
)
 
;;no pats
:qid @query.4))
)
 
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
; QUERY ID: (BinaryTrees.in_tree, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec in_tree


; <Start encoding let rec in_tree>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.in_tree.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.in_tree.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.in_tree (Term Term) Term)
(declare-fun BinaryTrees.in_tree@tok () Term)
;;;;;;;;;;;;;;;;x: Prims.int -> t: tree -> Prims.bool
(declare-fun Tm_arrow_e45f243a0894a2b69697014f38b6d9fb () Term)

; </end encoding let rec in_tree>


; encoding sigelt val BinaryTrees.fold


; <Skipped val BinaryTrees.fold/>

(push) ;; push{2

; Starting query at BinaryTrees.fst(76,2-78,51)

;;;;;;;;;;;;;;;;'a : Type (Type)
(declare-fun x_fe28d8bcde588226b4e538b35321de05_1 () Term)
;;;;;;;;;;;;;;;;binder_x_fe28d8bcde588226b4e538b35321de05_1
;;; Fact-ids: 
(assert (! (HasType x_fe28d8bcde588226b4e538b35321de05_1
Tm_type)
:named binder_x_fe28d8bcde588226b4e538b35321de05_1))
;;;;;;;;;;;;;;;;f : _: Prims.int -> _: 'a -> _: 'a -> 'a (_: Prims.int -> _: 'a -> _: 'a -> 'a)
(declare-fun x_c3519ffe0c5a85b916dc6287a6219461_2 () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> _: 'a -> _: 'a -> 'a
(declare-fun Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e
Tm_type)
:named kinding_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))
:qid BinaryTrees_pre_typing_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))

:named BinaryTrees_pre_typing_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e)
(and 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
x_fe28d8bcde588226b4e538b35321de05_1)
(HasType @x3
x_fe28d8bcde588226b4e538b35321de05_1))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
x_fe28d8bcde588226b4e538b35321de05_1))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e.2))


;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
x_fe28d8bcde588226b4e538b35321de05_1))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))
:qid BinaryTrees_interpretation_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))

:named BinaryTrees_interpretation_Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e))
;;;;;;;;;;;;;;;;binder_x_c3519ffe0c5a85b916dc6287a6219461_2
;;; Fact-ids: 
(assert (! (HasType x_c3519ffe0c5a85b916dc6287a6219461_2
Tm_arrow_00da5a4aea3c3343092eefcf2e6dff3e)
:named binder_x_c3519ffe0c5a85b916dc6287a6219461_2))
;;;;;;;;;;;;;;;;a : 'a ('a)
(declare-fun x_e09860b75d8922ab497a3e5bc9347578_3 () Term)
;;;;;;;;;;;;;;;;binder_x_e09860b75d8922ab497a3e5bc9347578_3
;;; Fact-ids: 
(assert (! (HasType x_e09860b75d8922ab497a3e5bc9347578_3
x_fe28d8bcde588226b4e538b35321de05_1)
:named binder_x_e09860b75d8922ab497a3e5bc9347578_3))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_4 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_4
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_4
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_4))
;;;;;;;;;;;;;;;;_: Prims.int -> _: 'a -> _: 'a -> 'a
(declare-fun Tm_arrow_56142c37120331f4156166606be8c498 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_56142c37120331f4156166606be8c498
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-74,21); use=BinaryTrees.fst(74,19-75,12)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_56142c37120331f4156166606be8c498 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_56142c37120331f4156166606be8c498 @x0)
Tm_type))
:qid kinding_Tm_arrow_56142c37120331f4156166606be8c498))

:named kinding_Tm_arrow_56142c37120331f4156166606be8c498))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-74,21); use=BinaryTrees.fst(74,19-75,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_56142c37120331f4156166606be8c498 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_56142c37120331f4156166606be8c498 @x2)))
:qid BinaryTrees_pre_typing_Tm_arrow_56142c37120331f4156166606be8c498))

:named BinaryTrees_pre_typing_Tm_arrow_56142c37120331f4156166606be8c498))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_56142c37120331f4156166606be8c498
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-74,21); use=BinaryTrees.fst(74,19-75,12)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_56142c37120331f4156166606be8c498 @x1))
(and 
;; def=BinaryTrees.fst(74,12-74,21); use=BinaryTrees.fst(74,19-75,12)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
Prims.int)
(HasType @x3
@x1)
(HasType @x4
@x1))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4)
@x1))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(74,12-74,21); use=BinaryTrees.fst(74,19-75,12)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498.2))


;; def=BinaryTrees.fst(74,12-74,21); use=BinaryTrees.fst(74,19-75,12)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Prims.int)
(HasType @x3
@x1))
(IsTotFun (ApplyTT (ApplyTT @x0
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498.3))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_56142c37120331f4156166606be8c498 @x1)))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498))

:named BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498))
(declare-fun Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(75,15-78,51)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae))

:named refinement_kinding_Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(75,15-78,51)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x2
@x3))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(75,15-78,51)

;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(75,15-78,51)
(or 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(76,2-78,51)
(Valid 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(76,2-78,51)
(Prims.precedes @x2
x_fe28d8bcde588226b4e538b35321de05_1
@x3
x_e09860b75d8922ab497a3e5bc9347578_3)
)


;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(75,15-78,51)
(and 
;; def=BinaryTrees.fst(75,15-75,16); use=BinaryTrees.fst(75,15-75,16)
(Valid 
;; def=BinaryTrees.fst(75,15-75,16); use=BinaryTrees.fst(75,15-75,16)
(Prims.op_Equals_Equals_Equals @x2
x_fe28d8bcde588226b4e538b35321de05_1
@x3
x_e09860b75d8922ab497a3e5bc9347578_3)
)


;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(76,2-78,51)
(Valid 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(76,2-78,51)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x2
@x3)))
:qid refinement_interpretation_Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae))

:named refinement_interpretation_Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(75,15-78,51)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x0
@x1)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x0
@x1))))
:qid haseqTm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae))

:named haseqTm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae))
(declare-fun BinaryTrees.fold (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;_: (_: Prims.int -> _: 'a -> _: 'a -> 'a) -> _: 'a -> _: _: tree{_ << a \/ _ === a /\ _ << t} -> 'a
(declare-fun Tm_arrow_40987e2e7e56234484fc857efa44698c () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_40987e2e7e56234484fc857efa44698c
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_40987e2e7e56234484fc857efa44698c
Tm_type)
:named kinding_Tm_arrow_40987e2e7e56234484fc857efa44698c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-78,51); use=BinaryTrees.fst(74,19-78,51)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_40987e2e7e56234484fc857efa44698c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_40987e2e7e56234484fc857efa44698c))
:qid BinaryTrees_pre_typing_Tm_arrow_40987e2e7e56234484fc857efa44698c))

:named BinaryTrees_pre_typing_Tm_arrow_40987e2e7e56234484fc857efa44698c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-78,51); use=BinaryTrees.fst(74,19-78,51)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_40987e2e7e56234484fc857efa44698c)
(and 
;; def=BinaryTrees.fst(74,12-78,51); use=BinaryTrees.fst(74,19-78,51)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_56142c37120331f4156166606be8c498 @x1))
(HasType @x3
@x1)
(HasType @x4
(Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x1
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x1))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid BinaryTrees_interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(74,12-78,51); use=BinaryTrees.fst(74,19-78,51)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c.2))


;; def=BinaryTrees.fst(74,12-78,51); use=BinaryTrees.fst(74,19-78,51)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_56142c37120331f4156166606be8c498 @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c.3))


;; def=BinaryTrees.fst(74,12-78,51); use=BinaryTrees.fst(74,19-78,51)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_56142c37120331f4156166606be8c498 @x1))
(HasType @x3
@x1))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_40987e2e7e56234484fc857efa44698c))
:qid BinaryTrees_interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c))

:named BinaryTrees_interpretation_Tm_arrow_40987e2e7e56234484fc857efa44698c))
(declare-fun BinaryTrees.fold@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.fold@tok
@x0)
@x1)
@x2)
@x3)
(BinaryTrees.fold @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.fold@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_BinaryTrees.fold))

:named token_correspondence_BinaryTrees.fold))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.fold@tok
Tm_arrow_40987e2e7e56234484fc857efa44698c))

;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.fold@tok
@x1)
@x2)
@x3)
@x4)
(BinaryTrees.fold @x1
@x2
@x3
@x4))
 

:pattern ((BinaryTrees.fold @x1
@x2
@x3
@x4))
:qid function_token_typing_BinaryTrees.fold.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.fold@tok))
:qid function_token_typing_BinaryTrees.fold))

:named function_token_typing_BinaryTrees.fold))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_56142c37120331f4156166606be8c498 @x0))
(HasType @x2
@x0)
(HasType @x3
(Tm_refine_cd3b9642ef9b6e8a9fad54f8a1fa7fae @x0
@x2)))
(HasType (BinaryTrees.fold @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((BinaryTrees.fold @x0
@x1
@x2
@x3))
:qid typing_BinaryTrees.fold))

:named typing_BinaryTrees.fold))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post 'a).
;   (forall (x: 'a). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         (a << a \/ b << t) /\
;         (forall (any_result: BinaryTrees.tree).
;             b == any_result ==>
;             (forall (any_result: 'a). BinaryTrees.fold f a b == any_result ==> a << a \/ b << t))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec fold`

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
 (! (implies (and (HasType @x0
(Prims.pure_post x_fe28d8bcde588226b4e538b35321de05_1))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(76,2-78,51)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(76,2-78,51)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(76,2-78,51)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(76,2-78,51)
(and (implies 
;; def=BinaryTrees.fst(75,17-75,18); use=BinaryTrees.fst(76,8-76,9)
(and 
;; def=BinaryTrees.fst(75,17-75,18); use=BinaryTrees.fst(76,8-76,9)
(not 
;; def=BinaryTrees.fst(75,17-75,18); use=BinaryTrees.fst(76,8-76,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_4))
)


;; def=BinaryTrees.fst(75,17-75,18); use=BinaryTrees.fst(76,8-76,9)
(not 
;; def=BinaryTrees.fst(75,17-75,18); use=BinaryTrees.fst(76,8-76,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_4))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(76,2-78,51)
(not 
;; def=BinaryTrees.fst(75,17-75,18); use=BinaryTrees.fst(76,8-76,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_4))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(76,2-78,51)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(76,2-78,51)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(76,2-78,51)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(75,17-78,16); use=BinaryTrees.fst(76,8-78,16)
(= x_1696252159950375ed27d3faba8e3379_4
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(76,2-78,51)
(and 
;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(78,34-78,36)
(or label_2

;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,34-78,36)
(Valid 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,34-78,36)
(Prims.precedes x_fe28d8bcde588226b4e538b35321de05_1
x_fe28d8bcde588226b4e538b35321de05_1
x_e09860b75d8922ab497a3e5bc9347578_3
x_e09860b75d8922ab497a3e5bc9347578_3)
)


;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,34-78,36)
(Valid 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,34-78,36)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_4)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(76,2-78,51)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(76,2-78,51)
(= @x2
@x4)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(76,2-78,51)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
x_fe28d8bcde588226b4e538b35321de05_1)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(76,2-78,51)
(= (BinaryTrees.fold x_fe28d8bcde588226b4e538b35321de05_1
x_c3519ffe0c5a85b916dc6287a6219461_2
x_e09860b75d8922ab497a3e5bc9347578_3
@x2)
@x5)
)

;; def=BinaryTrees.fst(75,15-78,51); use=BinaryTrees.fst(78,48-78,50)
(or label_3

;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,48-78,50)
(Valid 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,48-78,50)
(Prims.precedes x_fe28d8bcde588226b4e538b35321de05_1
x_fe28d8bcde588226b4e538b35321de05_1
x_e09860b75d8922ab497a3e5bc9347578_3
x_e09860b75d8922ab497a3e5bc9347578_3)
)


;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,48-78,50)
(Valid 
;; def=BinaryTrees.fst(76,2-78,51); use=BinaryTrees.fst(78,48-78,50)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_4)
)
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
; QUERY ID: (BinaryTrees.fold, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_4, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec fold


; <Start encoding let rec fold>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.fold.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.fold.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.fold (Term Term Term Term) Term)
(declare-fun BinaryTrees.fold@tok () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> _: 'a -> _: 'a -> 'a
(declare-fun Tm_arrow_56142c37120331f4156166606be8c498 (Term) Term)


;;;;;;;;;;;;;;;;f: (_: Prims.int -> _: 'a -> _: 'a -> 'a) -> a: 'a -> t: tree -> 'a
(declare-fun Tm_arrow_1969a064ea14c6b5985c5a8acebd9ca6 () Term)

; </end encoding let rec fold>


; encoding sigelt val BinaryTrees.fold_map


; <Skipped val BinaryTrees.fold_map/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_56142c37120331f4156166606be8c498 @x0))
(HasType @x2
@x0)
(HasType @x3
BinaryTrees.tree))
(HasType (BinaryTrees.fold @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((BinaryTrees.fold @x0
@x1
@x2
@x3))
:qid typing_BinaryTrees.fold))

:named typing_BinaryTrees.fold))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_56142c37120331f4156166606be8c498 @x1))
(HasType @x3
@x1)
(HasType @x4
BinaryTrees.tree))
(HasType (BinaryTrees.fold.fuel_instrumented @u0
@x1
@x2
@x3
@x4)
@x1))
 

:pattern ((BinaryTrees.fold.fuel_instrumented @u0
@x1
@x2
@x3
@x4))
:qid token_correspondence_BinaryTrees.fold.fuel_instrumented))

:named token_correspondence_BinaryTrees.fold.fuel_instrumented))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_56142c37120331f4156166606be8c498
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_56142c37120331f4156166606be8c498 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_56142c37120331f4156166606be8c498 @x0)
Tm_type))
:qid kinding_Tm_arrow_56142c37120331f4156166606be8c498))

:named kinding_Tm_arrow_56142c37120331f4156166606be8c498))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623
;;; Fact-ids: Name Prims.min; Namespace Prims
(assert (! (HasType Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623
Tm_type)
:named kinding_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.fold
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_56142c37120331f4156166606be8c498 @x1))
(HasType @x3
@x1)
(HasType @x4
BinaryTrees.tree))
(= (BinaryTrees.fold.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(let ((@lb5 @x4))
(ite (is-BinaryTrees.Leaf @lb5)
@x3
(ite (is-BinaryTrees.Node @lb5)
(ApplyTT (ApplyTT (ApplyTT @x2
(BinaryTrees.Node_root @lb5))
(BinaryTrees.fold.fuel_instrumented @u0
@x1
@x2
@x3
(BinaryTrees.Node_left @lb5)))
(BinaryTrees.fold.fuel_instrumented @u0
@x1
@x2
@x3
(BinaryTrees.Node_right @lb5)))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.fold.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid equation_with_fuel_BinaryTrees.fold.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.fold.fuel_instrumented))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.min; Namespace Prims
(assert (! 
;; def=Prims.fst(564,24-564,34); use=Prims.fst(714,8-714,30)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))
:qid Prims_pre_typing_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))

:named Prims_pre_typing_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623
;;; Fact-ids: Name Prims.min; Namespace Prims
(assert (! 
;; def=Prims.fst(564,24-564,34); use=Prims.fst(714,8-714,30)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623)
(and 
;; def=Prims.fst(564,24-564,34); use=Prims.fst(714,8-714,30)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.int))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.int))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Prims_interpretation_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623.1))

(IsTotFun @x0)

;; def=Prims.fst(564,24-564,34); use=Prims.fst(714,8-714,30)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Prims_interpretation_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))
:qid Prims_interpretation_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))

:named Prims_interpretation_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_56142c37120331f4156166606be8c498 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_56142c37120331f4156166606be8c498 @x2)))
:qid BinaryTrees_pre_typing_Tm_arrow_56142c37120331f4156166606be8c498))

:named BinaryTrees_pre_typing_Tm_arrow_56142c37120331f4156166606be8c498))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_56142c37120331f4156166606be8c498
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_56142c37120331f4156166606be8c498 @x1))
(and 
;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
Prims.int)
(HasType @x3
@x1)
(HasType @x4
@x1))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4)
@x1))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498.2))


;; def=BinaryTrees.fst(74,12-75,14); use=BinaryTrees.fst(75,8-75,14)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Prims.int)
(HasType @x3
@x1))
(IsTotFun (ApplyTT (ApplyTT @x0
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498.3))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_56142c37120331f4156166606be8c498 @x1)))
:qid BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498))

:named BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (BinaryTrees.fold.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(BinaryTrees.fold.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4))
 

:pattern ((BinaryTrees.fold.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid @fuel_irrelevance_BinaryTrees.fold.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.fold.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.fold; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(75,8-75,12); use=BinaryTrees.fst(75,8-75,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (BinaryTrees.fold @x0
@x1
@x2
@x3)
(BinaryTrees.fold.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3))
 

:pattern ((BinaryTrees.fold @x0
@x1
@x2
@x3))
:qid @fuel_correspondence_BinaryTrees.fold.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.fold.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(83,2-85,60)

;;;;;;;;;;;;;;;;fm : _: Prims.int -> Prims.int (_: Prims.int -> Prims.int)
(declare-fun x_87ac387399742bfb1341a669dfb6c913_0 () Term)

;;;;;;;;;;;;;;;;binder_x_87ac387399742bfb1341a669dfb6c913_0
;;; Fact-ids: 
(assert (! (HasType x_87ac387399742bfb1341a669dfb6c913_0
Tm_arrow_35447810753695c4fe25c93af1251992)
:named binder_x_87ac387399742bfb1341a669dfb6c913_0))
;;;;;;;;;;;;;;;;ff : _: Prims.int -> _: Prims.int -> _: Prims.int -> Prims.int (_: Prims.int -> _: Prims.int -> _: Prims.int -> Prims.int)
(declare-fun x_52f19a9daef1bbba2f987dbcb0a3f0fd_1 () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> _: Prims.int -> _: Prims.int -> Prims.int
(declare-fun Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24
Tm_type)
:named kinding_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(80,38-80,62); use=BinaryTrees.fst(82,8-82,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))
:qid BinaryTrees_pre_typing_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))

:named BinaryTrees_pre_typing_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(80,38-80,62); use=BinaryTrees.fst(82,8-82,16)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24)
(and 
;; def=BinaryTrees.fst(80,38-80,62); use=BinaryTrees.fst(82,8-82,16)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.int)
(HasType @x3
Prims.int))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
Prims.int))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(80,38-80,62); use=BinaryTrees.fst(82,8-82,16)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24.2))


;; def=BinaryTrees.fst(80,38-80,62); use=BinaryTrees.fst(82,8-82,16)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.int))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))
:qid BinaryTrees_interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))

:named BinaryTrees_interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24))
;;;;;;;;;;;;;;;;binder_x_52f19a9daef1bbba2f987dbcb0a3f0fd_1
;;; Fact-ids: 
(assert (! (HasType x_52f19a9daef1bbba2f987dbcb0a3f0fd_1
Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24)
:named binder_x_52f19a9daef1bbba2f987dbcb0a3f0fd_1))
;;;;;;;;;;;;;;;;a : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_2 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_2
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_2
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_2))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_3 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_3
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_3
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_3))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.fold_map (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.fold_map@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
BinaryTrees.compose@tok))
:named @kick_partial_app_e08281b833730346d6e692a48740407a))





; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.fold ff a (BinaryTrees.map fm t) =
;       BinaryTrees.fold (BinaryTrees.compose ff fm) a t ==>
;       p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             (a << a \/ b << t) /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.fold ff a (BinaryTrees.map fm b) =
;                     BinaryTrees.fold (BinaryTrees.compose ff fm) a b ==>
;                     (a << a \/ b << t) /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.fold ff a (BinaryTrees.map fm b) =
;                             BinaryTrees.fold (BinaryTrees.compose ff fm) a b ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec fold_map`

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
;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(81,8-81,57); use=BinaryTrees.fst(83,2-85,60)
(or label_2

;; def=BinaryTrees.fst(81,8-81,57); use=BinaryTrees.fst(83,2-85,60)
(= (BinaryTrees.fold Prims.int
x_52f19a9daef1bbba2f987dbcb0a3f0fd_1
x_ae567c2fb75be05905677af440075565_2
(BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
x_1696252159950375ed27d3faba8e3379_3))
(BinaryTrees.fold Prims.int
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
Prims.int)
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623)
Prims.int)
x_52f19a9daef1bbba2f987dbcb0a3f0fd_1)
x_87ac387399742bfb1341a669dfb6c913_0)
x_ae567c2fb75be05905677af440075565_2
x_1696252159950375ed27d3faba8e3379_3))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(83,2-85,60)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(83,2-85,60)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(83,2-85,60)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(83,2-85,60)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(83,2-85,60)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(83,2-85,60)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(83,2-85,60)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(83,2-85,60)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(83,2-85,60)
(and (implies 
;; def=BinaryTrees.fst(82,25-82,26); use=BinaryTrees.fst(83,8-83,9)
(and 
;; def=BinaryTrees.fst(82,25-82,26); use=BinaryTrees.fst(83,8-83,9)
(not 
;; def=BinaryTrees.fst(82,25-82,26); use=BinaryTrees.fst(83,8-83,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_3))
)


;; def=BinaryTrees.fst(82,25-82,26); use=BinaryTrees.fst(83,8-83,9)
(not 
;; def=BinaryTrees.fst(82,25-82,26); use=BinaryTrees.fst(83,8-83,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_3))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(82,25-84,8); use=BinaryTrees.fst(83,8-84,8)
(= x_1696252159950375ed27d3faba8e3379_3
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(83,2-85,60)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(83,2-85,60)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(83,2-85,60)
(not 
;; def=BinaryTrees.fst(82,25-82,26); use=BinaryTrees.fst(83,8-83,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_3))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(82,25-85,16); use=BinaryTrees.fst(83,8-85,16)
(= x_1696252159950375ed27d3faba8e3379_3
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(83,2-85,60)
(and 
;; def=BinaryTrees.fst(80,67-85,60); use=BinaryTrees.fst(85,37-85,39)
(or label_4

;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,37-85,39)
(Valid 
;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,37-85,39)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_2
x_ae567c2fb75be05905677af440075565_2)
)


;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,37-85,39)
(Valid 
;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,37-85,39)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_3)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(80,76-85,13); use=BinaryTrees.fst(83,2-85,60)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(85,20-85,28)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(81,8-81,57); use=BinaryTrees.fst(85,20-85,28)
(= (BinaryTrees.fold Prims.int
x_52f19a9daef1bbba2f987dbcb0a3f0fd_1
x_ae567c2fb75be05905677af440075565_2
(BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
@x3))
(BinaryTrees.fold Prims.int
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
Prims.int)
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623)
Prims.int)
x_52f19a9daef1bbba2f987dbcb0a3f0fd_1)
x_87ac387399742bfb1341a669dfb6c913_0)
x_ae567c2fb75be05905677af440075565_2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(83,2-85,60)
(and 
;; def=BinaryTrees.fst(80,67-85,60); use=BinaryTrees.fst(85,58-85,60)
(or label_5

;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,58-85,60)
(Valid 
;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,58-85,60)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_2
x_ae567c2fb75be05905677af440075565_2)
)


;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,58-85,60)
(Valid 
;; def=BinaryTrees.fst(83,2-85,60); use=BinaryTrees.fst(85,58-85,60)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_3)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(83,2-85,60)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(80,76-85,16); use=BinaryTrees.fst(83,2-85,60)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(85,41-85,49)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(81,8-81,57); use=BinaryTrees.fst(85,41-85,49)
(= (BinaryTrees.fold Prims.int
x_52f19a9daef1bbba2f987dbcb0a3f0fd_1
x_ae567c2fb75be05905677af440075565_2
(BinaryTrees.map x_87ac387399742bfb1341a669dfb6c913_0
@x4))
(BinaryTrees.fold Prims.int
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT BinaryTrees.compose@tok
Prims.int)
Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623)
Prims.int)
x_52f19a9daef1bbba2f987dbcb0a3f0fd_1)
x_87ac387399742bfb1341a669dfb6c913_0)
x_ae567c2fb75be05905677af440075565_2
@x4))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(85,41-85,49)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(85,41-85,49)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.fold_map, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.fold.fuel_instrumented, @fuel_correspondence_BinaryTrees.map.fuel_instrumented, @fuel_irrelevance_BinaryTrees.fold.fuel_instrumented, @fuel_irrelevance_BinaryTrees.map.fuel_instrumented, @query, BinaryTrees_interpretation_Tm_arrow_0e671300b027a382c3ad8af661e6bfe8, BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498, BinaryTrees_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe, BinaryTrees_interpretation_Tm_arrow_ddaab270e9fdf46f80b29f3d5d5fdd24, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, Prims_interpretation_Tm_arrow_35447810753695c4fe25c93af1251992, Prims_interpretation_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623, Prims_pretyping_ae567c2fb75be05905677af440075565, binder_x_1696252159950375ed27d3faba8e3379_3, binder_x_52f19a9daef1bbba2f987dbcb0a3f0fd_1, binder_x_87ac387399742bfb1341a669dfb6c913_0, binder_x_ae567c2fb75be05905677af440075565_2, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_BinaryTrees.compose, equation_Prims.eqtype, equation_with_fuel_BinaryTrees.fold.fuel_instrumented, equation_with_fuel_BinaryTrees.map.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, function_token_typing_BinaryTrees.compose, function_token_typing_Prims.__cache_version_number__, int_inversion, kinding_Tm_arrow_47fc285d7b44e13bcb7e420cbfc55623, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, subterm_ordering_BinaryTrees.Node, token_correspondence_BinaryTrees.compose, typing_BinaryTrees.map, typing_Prims.int, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec fold_map


; <Start encoding let rec fold_map>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.fold_map (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.fold_map@tok () Term)

; </end encoding let rec fold_map>

(push) ;; push{2

; Starting query at BinaryTrees.fst(87,0-88,61)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(88,2-88,61); use=BinaryTrees.fst(88,2-88,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (t: BinaryTrees.tree) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   Prims.hasEq Prims.nat /\
;   (forall (any_result: Type0).
;       Prims.nat == any_result ==>
;       (forall (_: Prims.int) (s1: Prims.nat) (s2: Prims.nat).
;           (*  - Could not prove post-condition
; *) 1 + s1 + s2 >= 0))


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.size_fold`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(87,0-88,61)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(88,8-88,61)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(88,9-88,13)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(88,9-88,13)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(88,9-88,13)
(Prims.hasEq Prims.nat)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(88,8-88,61)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_type)

;; def=Prims.fst(588,31-588,32); use=BinaryTrees.fst(88,8-88,61)
(= Prims.nat
@x2)
)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(88,8-88,61)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
Prims.int)
(HasType @x4
Prims.nat)
(HasType @x5
Prims.nat))

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(88,44-88,55)
(or label_2

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(88,44-88,55)
(>= (BoxInt_proj_0 (Prims.op_Addition (Prims.op_Addition (BoxInt 1)
@x4)
@x5))
(BoxInt_proj_0 (BoxInt 0)))
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
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
; QUERY ID: (BinaryTrees.size_fold, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, primitive_Prims.op_Addition, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.size_fold


; <Skipped val BinaryTrees.size_fold/>

(push) ;; push{2

; Starting query at BinaryTrees.fst(90,2-92,46)

;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_0 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_0
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.size_fold (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.size_fold@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: Prims.int -> s1: Prims.nat -> s2: Prims.nat -> Prims.nat
(declare-fun Tm_arrow_978950ac417e406794c8cbb585eaec0b () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_978950ac417e406794c8cbb585eaec0b
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_978950ac417e406794c8cbb585eaec0b
Tm_type)
:named kinding_Tm_arrow_978950ac417e406794c8cbb585eaec0b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-88,27); use=BinaryTrees.fst(92,34-92,43)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_978950ac417e406794c8cbb585eaec0b)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_978950ac417e406794c8cbb585eaec0b))
:qid BinaryTrees_pre_typing_Tm_arrow_978950ac417e406794c8cbb585eaec0b))

:named BinaryTrees_pre_typing_Tm_arrow_978950ac417e406794c8cbb585eaec0b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(74,12-88,27); use=BinaryTrees.fst(92,34-92,43)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_978950ac417e406794c8cbb585eaec0b)
(and 
;; def=BinaryTrees.fst(74,12-88,27); use=BinaryTrees.fst(92,34-92,43)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.nat)
(HasType @x3
Prims.nat))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
Prims.nat))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(74,12-88,27); use=BinaryTrees.fst(92,34-92,43)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b.2))


;; def=BinaryTrees.fst(74,12-88,27); use=BinaryTrees.fst(92,34-92,43)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.nat))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_978950ac417e406794c8cbb585eaec0b))
:qid BinaryTrees_interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b))

:named BinaryTrees_interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b))
(declare-fun Tm_abs_0d875254b2545c6702b32b47d4286d1c () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_0d875254b2545c6702b32b47d4286d1c
;;; Fact-ids: 
(assert (! (HasType Tm_abs_0d875254b2545c6702b32b47d4286d1c
Tm_arrow_978950ac417e406794c8cbb585eaec0b)
:named typing_Tm_abs_0d875254b2545c6702b32b47d4286d1c))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_0d875254b2545c6702b32b47d4286d1c
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(88,44-88,55); use=BinaryTrees.fst(92,34-92,43)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Tm_abs_0d875254b2545c6702b32b47d4286d1c
@x0)
@x1)
@x2)
(Prims.op_Addition (Prims.op_Addition (BoxInt 1)
@x1)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT Tm_abs_0d875254b2545c6702b32b47d4286d1c
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_0d875254b2545c6702b32b47d4286d1c))

:named interpretation_Tm_abs_0d875254b2545c6702b32b47d4286d1c))





; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.size t = BinaryTrees.fold (fun _ s1 s2 -> 1 + s1 + s2) 0 t ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.size b = BinaryTrees.fold (fun _ s1 s2 -> 1 + s1 + s2) 0 b ==>
;                     b << t /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.size b = BinaryTrees.fold (fun _ s1 s2 -> 1 + s1 + s2) 0 b ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec size_fold`

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
;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(88,8-88,61); use=BinaryTrees.fst(90,2-92,46)
(or label_2

;; def=BinaryTrees.fst(88,8-88,61); use=BinaryTrees.fst(90,2-92,46)
(= (BinaryTrees.size x_1696252159950375ed27d3faba8e3379_0)
(BinaryTrees.fold Prims.nat
Tm_abs_0d875254b2545c6702b32b47d4286d1c
(BoxInt 0)
x_1696252159950375ed27d3faba8e3379_0))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(90,2-92,46)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(90,2-92,46)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(90,2-92,46)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(90,2-92,46)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(90,2-92,46)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(90,2-92,46)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(90,2-92,46)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(90,2-92,46)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(90,2-92,46)
(and (implies 
;; def=BinaryTrees.fst(89,18-89,19); use=BinaryTrees.fst(90,8-90,9)
(and 
;; def=BinaryTrees.fst(89,18-89,19); use=BinaryTrees.fst(90,8-90,9)
(not 
;; def=BinaryTrees.fst(89,18-89,19); use=BinaryTrees.fst(90,8-90,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=BinaryTrees.fst(89,18-89,19); use=BinaryTrees.fst(90,8-90,9)
(not 
;; def=BinaryTrees.fst(89,18-89,19); use=BinaryTrees.fst(90,8-90,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_0))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(89,18-91,8); use=BinaryTrees.fst(90,8-91,8)
(= x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(90,2-92,46)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(90,2-92,46)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(90,2-92,46)
(not 
;; def=BinaryTrees.fst(89,18-89,19); use=BinaryTrees.fst(90,8-90,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(89,18-92,16); use=BinaryTrees.fst(90,8-92,16)
(= x_1696252159950375ed27d3faba8e3379_0
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(90,2-92,46)
(and 
;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(92,30-92,32)
(or label_4

;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(92,30-92,32)
(Valid 
;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(92,30-92,32)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(87,16-92,13); use=BinaryTrees.fst(90,2-92,46)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(92,20-92,29)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(88,8-88,61); use=BinaryTrees.fst(92,20-92,29)
(= (BinaryTrees.size @x3)
(BinaryTrees.fold Prims.nat
Tm_abs_0d875254b2545c6702b32b47d4286d1c
(BoxInt 0)
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(90,2-92,46)
(and 
;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(92,44-92,46)
(or label_5

;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(92,44-92,46)
(Valid 
;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(92,44-92,46)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(90,2-92,46)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(87,16-92,16); use=BinaryTrees.fst(90,2-92,46)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(92,34-92,43)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(88,8-88,61); use=BinaryTrees.fst(92,34-92,43)
(= (BinaryTrees.size @x4)
(BinaryTrees.fold Prims.nat
Tm_abs_0d875254b2545c6702b32b47d4286d1c
(BoxInt 0)
@x4))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(92,34-92,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(92,34-92,43)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.size_fold, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.fold.fuel_instrumented, @fuel_correspondence_BinaryTrees.size.fuel_instrumented, @fuel_irrelevance_BinaryTrees.fold.fuel_instrumented, @fuel_irrelevance_BinaryTrees.size.fuel_instrumented, @query, BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498, BinaryTrees_interpretation_Tm_arrow_978950ac417e406794c8cbb585eaec0b, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_0, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.nat, equation_with_fuel_BinaryTrees.fold.fuel_instrumented, equation_with_fuel_BinaryTrees.size.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, int_typing, interpretation_Tm_abs_0d875254b2545c6702b32b47d4286d1c, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_BinaryTrees.Node, typing_BinaryTrees.size, typing_Tm_abs_0d875254b2545c6702b32b47d4286d1c, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(89,0-92,46)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_48382f5d6a9df71592a81609f21742b6 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(87,16-92,46); use=BinaryTrees.fst(89,0-92,46)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_48382f5d6a9df71592a81609f21742b6 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_48382f5d6a9df71592a81609f21742b6 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_48382f5d6a9df71592a81609f21742b6))

:named refinement_kinding_Tm_refine_48382f5d6a9df71592a81609f21742b6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(87,16-92,46); use=BinaryTrees.fst(89,0-92,46)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_48382f5d6a9df71592a81609f21742b6 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(90,2-92,46)

;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(90,2-92,46)
(Valid 
;; def=BinaryTrees.fst(90,2-92,46); use=BinaryTrees.fst(90,2-92,46)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_48382f5d6a9df71592a81609f21742b6 @x2)))
:qid refinement_interpretation_Tm_refine_48382f5d6a9df71592a81609f21742b6))

:named refinement_interpretation_Tm_refine_48382f5d6a9df71592a81609f21742b6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_48382f5d6a9df71592a81609f21742b6
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(87,16-92,46); use=BinaryTrees.fst(89,0-92,46)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_48382f5d6a9df71592a81609f21742b6 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_48382f5d6a9df71592a81609f21742b6 @x0))))
:qid haseqTm_refine_48382f5d6a9df71592a81609f21742b6))

:named haseqTm_refine_48382f5d6a9df71592a81609f21742b6))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(88,2-88,61); use=BinaryTrees.fst(89,8-89,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (t: BinaryTrees.tree) (t: BinaryTrees.tree{t << t}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   Prims.hasEq Prims.nat /\
;   (forall (any_result: Type0).
;       Prims.nat == any_result ==>
;       (forall (_: Prims.int) (s1: Prims.nat) (s2: Prims.nat).
;           (*  - Could not prove post-condition
; *) 1 + s1 + s2 >= 0))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec size_fold`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(89,0-92,46)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
(Tm_refine_48382f5d6a9df71592a81609f21742b6 @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(89,8-89,17)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(89,8-89,17)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(89,8-89,17)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(89,8-89,17)
(Prims.hasEq Prims.nat)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(89,8-89,17)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(588,31-588,32); use=BinaryTrees.fst(89,8-89,17)
(= Prims.nat
@x3)
)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(89,8-89,17)
(forall ((@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x4
Prims.int)
(HasType @x5
Prims.nat)
(HasType @x6
Prims.nat))

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(89,8-89,17)
(or label_2

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(89,8-89,17)
(>= (BoxInt_proj_0 (Prims.op_Addition (Prims.op_Addition (BoxInt 1)
@x5)
@x6))
(BoxInt_proj_0 (BoxInt 0)))
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
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
; QUERY ID: (BinaryTrees.size_fold, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, primitive_Prims.op_Addition, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec size_fold


; <Start encoding let rec size_fold>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.size_fold (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.size_fold@tok () Term)

; </end encoding let rec size_fold>


; encoding sigelt val BinaryTrees.in_tree_fold


; <Skipped val BinaryTrees.in_tree_fold/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.in_tree; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
BinaryTrees.tree))
(HasType (BinaryTrees.in_tree @x0
@x1)
Prims.bool))
 

:pattern ((BinaryTrees.in_tree @x0
@x1))
:qid typing_BinaryTrees.in_tree))

:named typing_BinaryTrees.in_tree))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.in_tree; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(HasType (BinaryTrees.in_tree.fuel_instrumented @u0
@x1
@x2)
Prims.bool))
 

:pattern ((BinaryTrees.in_tree.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_BinaryTrees.in_tree.fuel_instrumented))

:named token_correspondence_BinaryTrees.in_tree.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.in_tree
;;; Fact-ids: Name BinaryTrees.in_tree; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(= (BinaryTrees.in_tree.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-BinaryTrees.Leaf @lb3)
(BoxBool false)
(ite (is-BinaryTrees.Node @lb3)
(Prims.op_BarBar (Prims.op_BarBar (Prims.op_Equality Prims.int
@x1
(BinaryTrees.Node_root @lb3))
(BinaryTrees.in_tree.fuel_instrumented @u0
@x1
(BinaryTrees.Node_left @lb3)))
(BinaryTrees.in_tree.fuel_instrumented @u0
@x1
(BinaryTrees.Node_right @lb3)))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.in_tree.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_BinaryTrees.in_tree.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.in_tree.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.in_tree; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.in_tree.fuel_instrumented (SFuel @u0)
@x1
@x2)
(BinaryTrees.in_tree.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((BinaryTrees.in_tree.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_BinaryTrees.in_tree.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.in_tree.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.in_tree; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(69,8-69,15); use=BinaryTrees.fst(69,8-69,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (BinaryTrees.in_tree @x0
@x1)
(BinaryTrees.in_tree.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((BinaryTrees.in_tree @x0
@x1))
:qid @fuel_correspondence_BinaryTrees.in_tree.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.in_tree.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(97,2-99,56)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.in_tree_fold (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.in_tree_fold@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;n: Prims.int -> b1: Prims.bool -> b2: Prims.bool -> Prims.bool
(declare-fun Tm_arrow_030c76df9eb2e6504d36c81bb0d78521 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_030c76df9eb2e6504d36c81bb0d78521
Tm_type)
:named kinding_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(528,23-528,27); use=BinaryTrees.fst(99,39-99,51)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_030c76df9eb2e6504d36c81bb0d78521)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))
:qid BinaryTrees_pre_typing_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))

:named BinaryTrees_pre_typing_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(528,23-528,27); use=BinaryTrees.fst(99,39-99,51)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_030c76df9eb2e6504d36c81bb0d78521)
(and 
;; def=Prims.fst(528,23-528,27); use=BinaryTrees.fst(99,39-99,51)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.bool)
(HasType @x3
Prims.bool))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521.1))

(IsTotFun @x0)

;; def=Prims.fst(528,23-528,27); use=BinaryTrees.fst(99,39-99,51)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521.2))


;; def=Prims.fst(528,23-528,27); use=BinaryTrees.fst(99,39-99,51)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.bool))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))
:qid BinaryTrees_interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))

:named BinaryTrees_interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521))
(declare-fun Tm_abs_cd1cba08dfef61a04a33f38a4890113a () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_cd1cba08dfef61a04a33f38a4890113a
;;; Fact-ids: 
(assert (! (HasType Tm_abs_cd1cba08dfef61a04a33f38a4890113a
Tm_arrow_030c76df9eb2e6504d36c81bb0d78521)
:named typing_Tm_abs_cd1cba08dfef61a04a33f38a4890113a))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_cd1cba08dfef61a04a33f38a4890113a
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(95,44-95,61); use=BinaryTrees.fst(99,39-99,51)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Tm_abs_cd1cba08dfef61a04a33f38a4890113a
@x0)
@x1)
@x2)
(Prims.op_BarBar (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x0)
@x1)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT Tm_abs_cd1cba08dfef61a04a33f38a4890113a
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_cd1cba08dfef61a04a33f38a4890113a))

:named interpretation_Tm_abs_cd1cba08dfef61a04a33f38a4890113a))





; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.in_tree x t = BinaryTrees.fold (fun n b1 b2 -> x = n || b1 || b2) false t ==>
;       p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             (x << x \/ b << t) /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.in_tree x b =
;                     BinaryTrees.fold (fun n b1 b2 -> x = n || b1 || b2) false b ==>
;                     (x << x \/ b << t) /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.in_tree x b =
;                             BinaryTrees.fold (fun n b1 b2 -> x = n || b1 || b2) false b ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec in_tree_fold`

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
;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(95,8-95,71); use=BinaryTrees.fst(97,2-99,56)
(or label_2

;; def=BinaryTrees.fst(95,8-95,71); use=BinaryTrees.fst(97,2-99,56)
(= (BinaryTrees.in_tree x_ae567c2fb75be05905677af440075565_0
x_1696252159950375ed27d3faba8e3379_1)
(BinaryTrees.fold Prims.bool
Tm_abs_cd1cba08dfef61a04a33f38a4890113a
(BoxBool false)
x_1696252159950375ed27d3faba8e3379_1))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(97,2-99,56)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(97,2-99,56)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(97,2-99,56)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(97,2-99,56)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(97,2-99,56)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(97,2-99,56)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(97,2-99,56)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(97,2-99,56)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(97,2-99,56)
(and (implies 
;; def=BinaryTrees.fst(96,23-96,24); use=BinaryTrees.fst(97,8-97,9)
(and 
;; def=BinaryTrees.fst(96,23-96,24); use=BinaryTrees.fst(97,8-97,9)
(not 
;; def=BinaryTrees.fst(96,23-96,24); use=BinaryTrees.fst(97,8-97,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(96,23-96,24); use=BinaryTrees.fst(97,8-97,9)
(not 
;; def=BinaryTrees.fst(96,23-96,24); use=BinaryTrees.fst(97,8-97,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(96,23-98,8); use=BinaryTrees.fst(97,8-98,8)
(= x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(97,2-99,56)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(97,2-99,56)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(97,2-99,56)
(not 
;; def=BinaryTrees.fst(96,23-96,24); use=BinaryTrees.fst(97,8-97,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(96,23-99,16); use=BinaryTrees.fst(97,8-99,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(97,2-99,56)
(and 
;; def=BinaryTrees.fst(94,19-99,56); use=BinaryTrees.fst(99,35-99,37)
(or label_4

;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,35-99,37)
(Valid 
;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,35-99,37)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,35-99,37)
(Valid 
;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,35-99,37)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(94,28-99,13); use=BinaryTrees.fst(97,2-99,56)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(99,20-99,32)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(95,8-95,71); use=BinaryTrees.fst(99,20-99,32)
(= (BinaryTrees.in_tree x_ae567c2fb75be05905677af440075565_0
@x3)
(BinaryTrees.fold Prims.bool
Tm_abs_cd1cba08dfef61a04a33f38a4890113a
(BoxBool false)
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(97,2-99,56)
(and 
;; def=BinaryTrees.fst(94,19-99,56); use=BinaryTrees.fst(99,54-99,56)
(or label_5

;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,54-99,56)
(Valid 
;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,54-99,56)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,54-99,56)
(Valid 
;; def=BinaryTrees.fst(97,2-99,56); use=BinaryTrees.fst(99,54-99,56)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(97,2-99,56)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(94,28-99,16); use=BinaryTrees.fst(97,2-99,56)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(99,39-99,51)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(95,8-95,71); use=BinaryTrees.fst(99,39-99,51)
(= (BinaryTrees.in_tree x_ae567c2fb75be05905677af440075565_0
@x4)
(BinaryTrees.fold Prims.bool
Tm_abs_cd1cba08dfef61a04a33f38a4890113a
(BoxBool false)
@x4))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(99,39-99,51)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(99,39-99,51)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.in_tree_fold, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.fold.fuel_instrumented, @fuel_correspondence_BinaryTrees.in_tree.fuel_instrumented, @fuel_irrelevance_BinaryTrees.fold.fuel_instrumented, @fuel_irrelevance_BinaryTrees.in_tree.fuel_instrumented, @query, BinaryTrees_interpretation_Tm_arrow_030c76df9eb2e6504d36c81bb0d78521, BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, Prims_pretyping_f537159ed795b314b4e58c260361ae86, binder_x_1696252159950375ed27d3faba8e3379_1, binder_x_ae567c2fb75be05905677af440075565_0, bool_typing, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.eqtype, equation_with_fuel_BinaryTrees.fold.fuel_instrumented, equation_with_fuel_BinaryTrees.in_tree.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, int_inversion, interpretation_Tm_abs_cd1cba08dfef61a04a33f38a4890113a, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, subterm_ordering_BinaryTrees.Node, typing_BinaryTrees.uu___is_Leaf, typing_Prims.bool, typing_Tm_abs_cd1cba08dfef61a04a33f38a4890113a, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec in_tree_fold


; <Start encoding let rec in_tree_fold>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.in_tree_fold (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.in_tree_fold@tok () Term)

; </end encoding let rec in_tree_fold>


; encoding sigelt val BinaryTrees.find_fold


; <Skipped val BinaryTrees.find_fold/>

(push) ;; push{2

; Starting query at BinaryTrees.fst(102,18-104,73)

(declare-fun label_1 () Bool)

(declare-fun Tm_refine_d76997825d29de4cbd010416717bb926 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(102,32-102,44); use=BinaryTrees.fst(102,18-102,22)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_d76997825d29de4cbd010416717bb926 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_d76997825d29de4cbd010416717bb926 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_d76997825d29de4cbd010416717bb926))

:named refinement_kinding_Tm_refine_d76997825d29de4cbd010416717bb926))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(102,32-102,44); use=BinaryTrees.fst(102,18-102,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d76997825d29de4cbd010416717bb926 @x2))
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=BinaryTrees.fst(102,39-102,42); use=BinaryTrees.fst(102,18-102,22)
(BoxBool_proj_0 (ApplyTT @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d76997825d29de4cbd010416717bb926 @x2)))
:qid refinement_interpretation_Tm_refine_d76997825d29de4cbd010416717bb926))

:named refinement_interpretation_Tm_refine_d76997825d29de4cbd010416717bb926))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d76997825d29de4cbd010416717bb926
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(102,32-102,44); use=BinaryTrees.fst(102,18-102,22)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d76997825d29de4cbd010416717bb926 @x0)))
(Valid (Prims.hasEq Prims.int)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d76997825d29de4cbd010416717bb926 @x0))))
:qid haseqTm_refine_d76997825d29de4cbd010416717bb926))

:named haseqTm_refine_d76997825d29de4cbd010416717bb926))




; Encoding query formula : forall (f: (_: Prims.int -> Prims.bool)).
;   (*  - Could not prove post-condition
; *)
;   forall (n: Prims.int)
;     (o1: FStar.Pervasives.Native.option (x: Prims.int{f x}))
;     (o2: FStar.Pervasives.Native.option (x: Prims.int{f x})).
;     (*  - Could not prove post-condition
; *)
;     forall (k: Prims.pure_post (FStar.Pervasives.Native.option (x: Prims.int{f x}))).
;       (forall (x: FStar.Pervasives.Native.option (x: Prims.int{f x})).
;           {:pattern Prims.guard_free (k x)}
;           Prims.auto_squash (k x)) ==>
;       f n == true ==> f n


; Context: While encoding a query
; While typechecking the top-level declaration `let find_fold`

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
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(102,18-104,73)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(FStar.Pervasives.Native.option (Tm_refine_d76997825d29de4cbd010416717bb926 @x0)))
(HasType @x3
(FStar.Pervasives.Native.option (Tm_refine_d76997825d29de4cbd010416717bb926 @x0))))

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(102,18-104,73)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.option (Tm_refine_d76997825d29de4cbd010416717bb926 @x0))))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(103,40-104,67)
(forall ((@x5 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(103,40-104,67)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(103,40-104,67)
(ApplyTT @x4
@x5)
)

 

:pattern ((ApplyTT @x4
@x5))
:qid @query.3))


;; def=BinaryTrees.fst(103,43-103,46); use=BinaryTrees.fst(103,43-103,46)
(= (ApplyTT @x0
@x1)
(BoxBool true))
)

;; def=BinaryTrees.fst(102,39-102,42); use=BinaryTrees.fst(103,57-103,58)
(or label_1

;; def=BinaryTrees.fst(102,39-102,42); use=BinaryTrees.fst(103,57-103,58)
(BoxBool_proj_0 (ApplyTT @x0
@x1))
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
; QUERY ID: (BinaryTrees.find_fold, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let find_fold


; <Start encoding let find_fold>


(declare-fun BinaryTrees.find_fold (Term Term) Term)

(declare-fun Tm_refine_d76997825d29de4cbd010416717bb926 (Term) Term)
;;;;;;;;;;;;;;;;f: (_: Prims.int -> Prims.bool) -> _: tree -> FStar.Pervasives.Native.option (x: Prims.int{f x})
(declare-fun Tm_arrow_766cd24230d4c33781b839518710786a () Term)
(declare-fun BinaryTrees.find_fold@tok () Term)










;;;;;;;;;;;;;;;;n: Prims.int ->     o1: FStar.Pervasives.Native.option (x: Prims.int{f x}) ->     o2: FStar.Pervasives.Native.option (x: Prims.int{f x})   -> FStar.Pervasives.Native.option (x: Prims.int{f x})
(declare-fun Tm_arrow_98cc26f3df8bfb4ebb2e03d7219a647e (Term) Term)
(declare-fun Tm_abs_644a24ad9e39b774cd4e63700a4ee9a1 (Term) Term)


; </end encoding let find_fold>


; encoding sigelt val BinaryTrees.revert


; <Skipped val BinaryTrees.revert/>

(push) ;; push{2

; Starting query at BinaryTrees.fst(108,2-110,50)

;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_0 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_0
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_0))
(declare-fun Tm_refine_a4f4a29865b742161272c8c4a2bef89a () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_a4f4a29865b742161272c8c4a2bef89a
Tm_type)
:named refinement_kinding_Tm_refine_a4f4a29865b742161272c8c4a2bef89a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(108,2-110,50)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a4f4a29865b742161272c8c4a2bef89a)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(108,2-110,50)

;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(108,2-110,50)
(Valid 
;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(108,2-110,50)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a4f4a29865b742161272c8c4a2bef89a))
:qid refinement_interpretation_Tm_refine_a4f4a29865b742161272c8c4a2bef89a))

:named refinement_interpretation_Tm_refine_a4f4a29865b742161272c8c4a2bef89a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a4f4a29865b742161272c8c4a2bef89a
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a4f4a29865b742161272c8c4a2bef89a))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_a4f4a29865b742161272c8c4a2bef89a))
(declare-fun BinaryTrees.revert (Term) Term)

;;;;;;;;;;;;;;;;_: _: tree{_ << t} -> tree
(declare-fun Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd
Tm_type)
:named kinding_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(106,25-110,50); use=BinaryTrees.fst(107,8-110,50)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))
:qid BinaryTrees_pre_typing_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))

:named BinaryTrees_pre_typing_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(106,25-110,50); use=BinaryTrees.fst(107,8-110,50)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd)
(and 
;; def=BinaryTrees.fst(106,25-110,50); use=BinaryTrees.fst(107,8-110,50)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_a4f4a29865b742161272c8c4a2bef89a)
(HasType (ApplyTT @x0
@x1)
BinaryTrees.tree))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))
:qid BinaryTrees_interpretation_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))

:named BinaryTrees_interpretation_Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))
(declare-fun BinaryTrees.revert@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@x0 Term))
 (! (= (ApplyTT BinaryTrees.revert@tok
@x0)
(BinaryTrees.revert @x0))
 

:pattern ((ApplyTT BinaryTrees.revert@tok
@x0))
:qid token_correspondence_BinaryTrees.revert))

:named token_correspondence_BinaryTrees.revert))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.revert@tok
Tm_arrow_03f658748654a7dd2f1e3a0ed1e7fbbd))

;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@x1 Term))
 (! (= (ApplyTT BinaryTrees.revert@tok
@x1)
(BinaryTrees.revert @x1))
 

:pattern ((BinaryTrees.revert @x1))
:qid function_token_typing_BinaryTrees.revert.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.revert@tok))
:qid function_token_typing_BinaryTrees.revert))

:named function_token_typing_BinaryTrees.revert))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_a4f4a29865b742161272c8c4a2bef89a)
(HasType (BinaryTrees.revert @x0)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.revert @x0))
:qid typing_BinaryTrees.revert))

:named typing_BinaryTrees.revert))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post BinaryTrees.tree).
;   (forall (x: BinaryTrees.tree). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         b << t /\
;         (forall (any_result: BinaryTrees.tree).
;             b == any_result ==>
;             (forall (any_result: BinaryTrees.tree). BinaryTrees.revert b == any_result ==> b << t)))
;   )


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert`

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
 (! (implies (and (HasType @x0
(Prims.pure_post BinaryTrees.tree))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(108,2-110,50)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(108,2-110,50)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(108,2-110,50)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(108,2-110,50)
(and (implies 
;; def=BinaryTrees.fst(107,15-107,16); use=BinaryTrees.fst(108,8-108,9)
(and 
;; def=BinaryTrees.fst(107,15-107,16); use=BinaryTrees.fst(108,8-108,9)
(not 
;; def=BinaryTrees.fst(107,15-107,16); use=BinaryTrees.fst(108,8-108,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=BinaryTrees.fst(107,15-107,16); use=BinaryTrees.fst(108,8-108,9)
(not 
;; def=BinaryTrees.fst(107,15-107,16); use=BinaryTrees.fst(108,8-108,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(108,2-110,50)
(not 
;; def=BinaryTrees.fst(107,15-107,16); use=BinaryTrees.fst(108,8-108,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(108,2-110,50)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(108,2-110,50)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(108,2-110,50)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(107,15-110,16); use=BinaryTrees.fst(108,8-110,16)
(= x_1696252159950375ed27d3faba8e3379_0
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(108,2-110,50)
(and 
;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(110,35-110,37)
(or label_2

;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(110,35-110,37)
(Valid 
;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(110,35-110,37)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(108,2-110,50)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(108,2-110,50)
(= @x3
@x4)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(108,2-110,50)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(20,23-110,38); use=BinaryTrees.fst(108,2-110,50)
(= (BinaryTrees.revert @x3)
@x5)
)

;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(110,47-110,49)
(or label_3

;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(110,47-110,49)
(Valid 
;; def=BinaryTrees.fst(108,2-110,50); use=BinaryTrees.fst(110,47-110,49)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_0)
)
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
; QUERY ID: (BinaryTrees.revert, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_0, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec revert


; <Start encoding let rec revert>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.revert.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.revert.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.revert (Term) Term)
(declare-fun BinaryTrees.revert@tok () Term)
;;;;;;;;;;;;;;;;t: tree -> tree
(declare-fun Tm_arrow_be74e62180afbdf81e1207ecf08f0554 () Term)

; </end encoding let rec revert>

(push) ;; push{2

; Starting query at BinaryTrees.fst(113,0-113,63)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(113,34-113,63); use=BinaryTrees.fst(113,34-113,39)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (t: BinaryTrees.tree) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.revert_involutive`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(113,0-113,63)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(113,41-113,47)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(113,41-113,47)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(113,41-113,47)
(Prims.hasEq BinaryTrees.tree)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.revert_involutive, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.revert_involutive


; <Skipped val BinaryTrees.revert_involutive/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.revert; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
BinaryTrees.tree)
(HasType (BinaryTrees.revert @x0)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.revert @x0))
:qid typing_BinaryTrees.revert))

:named typing_BinaryTrees.revert))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.revert; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
BinaryTrees.tree)
(HasType (BinaryTrees.revert.fuel_instrumented @u0
@x1)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.revert.fuel_instrumented @u0
@x1))
:qid token_correspondence_BinaryTrees.revert.fuel_instrumented))

:named token_correspondence_BinaryTrees.revert.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.revert
;;; Fact-ids: Name BinaryTrees.revert; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
BinaryTrees.tree)
(= (BinaryTrees.revert.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-BinaryTrees.Leaf @lb2)
BinaryTrees.Leaf@tok
(ite (is-BinaryTrees.Node @lb2)
(BinaryTrees.Node (BinaryTrees.Node_root @lb2)
(BinaryTrees.revert.fuel_instrumented @u0
(BinaryTrees.Node_right @lb2))
(BinaryTrees.revert.fuel_instrumented @u0
(BinaryTrees.Node_left @lb2)))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.revert.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_BinaryTrees.revert.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.revert.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.revert; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (BinaryTrees.revert.fuel_instrumented (SFuel @u0)
@x1)
(BinaryTrees.revert.fuel_instrumented ZFuel
@x1))
 

:pattern ((BinaryTrees.revert.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_BinaryTrees.revert.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.revert.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.revert; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(107,8-107,14); use=BinaryTrees.fst(107,8-107,14)
(forall ((@x0 Term))
 (! (= (BinaryTrees.revert @x0)
(BinaryTrees.revert.fuel_instrumented MaxFuel
@x0))
 

:pattern ((BinaryTrees.revert @x0))
:qid @fuel_correspondence_BinaryTrees.revert.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.revert.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(115,2-117,62)

;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_0 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_0
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.revert_involutive (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.revert_involutive@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). BinaryTrees.revert (BinaryTrees.revert t) = t ==> p pure_result
;   ) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.revert (BinaryTrees.revert b) = b ==>
;                     b << t /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.revert (BinaryTrees.revert b) = b ==> k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert_involutive`

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
;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(113,40-113,63); use=BinaryTrees.fst(115,2-117,62)
(or label_2

;; def=BinaryTrees.fst(113,40-113,63); use=BinaryTrees.fst(115,2-117,62)
(= (BinaryTrees.revert (BinaryTrees.revert x_1696252159950375ed27d3faba8e3379_0))
x_1696252159950375ed27d3faba8e3379_0)
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(115,2-117,62)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(115,2-117,62)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(115,2-117,62)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(115,2-117,62)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(115,2-117,62)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(115,2-117,62)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(115,2-117,62)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(115,2-117,62)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(115,2-117,62)
(and (implies 
;; def=BinaryTrees.fst(114,26-114,27); use=BinaryTrees.fst(115,8-115,9)
(and 
;; def=BinaryTrees.fst(114,26-114,27); use=BinaryTrees.fst(115,8-115,9)
(not 
;; def=BinaryTrees.fst(114,26-114,27); use=BinaryTrees.fst(115,8-115,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=BinaryTrees.fst(114,26-114,27); use=BinaryTrees.fst(115,8-115,9)
(not 
;; def=BinaryTrees.fst(114,26-114,27); use=BinaryTrees.fst(115,8-115,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_0))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(114,26-116,8); use=BinaryTrees.fst(115,8-116,8)
(= x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(115,2-117,62)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(115,2-117,62)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(115,2-117,62)
(not 
;; def=BinaryTrees.fst(114,26-114,27); use=BinaryTrees.fst(115,8-115,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(114,26-117,16); use=BinaryTrees.fst(115,8-117,16)
(= x_1696252159950375ed27d3faba8e3379_0
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(115,2-117,62)
(and 
;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(117,38-117,40)
(or label_4

;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(117,38-117,40)
(Valid 
;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(117,38-117,40)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(113,24-117,13); use=BinaryTrees.fst(115,2-117,62)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(117,20-117,37)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(113,40-113,63); use=BinaryTrees.fst(117,20-117,37)
(= (BinaryTrees.revert (BinaryTrees.revert @x3))
@x3)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(115,2-117,62)
(and 
;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(117,60-117,62)
(or label_5

;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(117,60-117,62)
(Valid 
;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(117,60-117,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(115,2-117,62)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(113,24-117,16); use=BinaryTrees.fst(115,2-117,62)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(117,42-117,59)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(113,40-113,63); use=BinaryTrees.fst(117,42-117,59)
(= (BinaryTrees.revert (BinaryTrees.revert @x4))
@x4)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(117,42-117,59)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(117,42-117,59)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.revert_involutive, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.revert.fuel_instrumented, @fuel_irrelevance_BinaryTrees.revert.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_0, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_with_fuel_BinaryTrees.revert.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_BinaryTrees.revert, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(114,0-117,62)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_0cf0e42752299e4839654576ca38121f (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(113,24-117,62); use=BinaryTrees.fst(114,0-117,62)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_0cf0e42752299e4839654576ca38121f @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_0cf0e42752299e4839654576ca38121f @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_0cf0e42752299e4839654576ca38121f))

:named refinement_kinding_Tm_refine_0cf0e42752299e4839654576ca38121f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(113,24-117,62); use=BinaryTrees.fst(114,0-117,62)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0cf0e42752299e4839654576ca38121f @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(115,2-117,62)

;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(115,2-117,62)
(Valid 
;; def=BinaryTrees.fst(115,2-117,62); use=BinaryTrees.fst(115,2-117,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0cf0e42752299e4839654576ca38121f @x2)))
:qid refinement_interpretation_Tm_refine_0cf0e42752299e4839654576ca38121f))

:named refinement_interpretation_Tm_refine_0cf0e42752299e4839654576ca38121f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0cf0e42752299e4839654576ca38121f
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(113,24-117,62); use=BinaryTrees.fst(114,0-117,62)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0cf0e42752299e4839654576ca38121f @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0cf0e42752299e4839654576ca38121f @x0))))
:qid haseqTm_refine_0cf0e42752299e4839654576ca38121f))

:named haseqTm_refine_0cf0e42752299e4839654576ca38121f))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(113,34-113,63); use=BinaryTrees.fst(114,8-114,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (t: BinaryTrees.tree) (t: BinaryTrees.tree{t << t}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert_involutive`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(114,0-117,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
(Tm_refine_0cf0e42752299e4839654576ca38121f @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(114,8-114,25)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(114,8-114,25)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(114,8-114,25)
(Prims.hasEq BinaryTrees.tree)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.revert_involutive, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec revert_involutive


; <Start encoding let rec revert_involutive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.revert_involutive (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.revert_involutive@tok () Term)

; </end encoding let rec revert_involutive>

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

; Starting query at BinaryTrees.fst(120,0-121,62)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (t1: BinaryTrees.tree) (t2: BinaryTrees.tree).
;   Prims.hasEq BinaryTrees.tree /\
;   (forall (any_result: Type0).
;       BinaryTrees.tree == any_result ==>
;       (forall (any_result: Prims.bool).
;           BinaryTrees.revert t1 = BinaryTrees.revert t2 == any_result ==>
;           (forall (any_result: Prims.logical).
;               BinaryTrees.revert t1 = BinaryTrees.revert t2 == any_result ==>
;               Prims.hasEq BinaryTrees.tree /\
;               (forall (_: Prims.squash (BinaryTrees.revert t1 = BinaryTrees.revert t2)).
;                   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree))))


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.revert_injective`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(120,0-121,62)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
BinaryTrees.tree))

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(120,26-121,62)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,19-121,25)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,19-121,25)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,19-121,25)
(Prims.hasEq BinaryTrees.tree)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(120,26-121,62)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_type)

;; def=Prims.fst(588,31-588,32); use=BinaryTrees.fst(120,26-121,62)
(= BinaryTrees.tree
@x2)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(120,26-121,62)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=BinaryTrees.fst(120,26-121,62)
(= (Prims.op_Equality BinaryTrees.tree
(BinaryTrees.revert @x0)
(BinaryTrees.revert @x1))
@x3)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(120,26-121,62)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.logical)

;; def=FStar.Pervasives.fsti(112,28-112,31); use=BinaryTrees.fst(120,26-121,62)
(= (Prims.b2t (Prims.op_Equality BinaryTrees.tree
(BinaryTrees.revert @x0)
(BinaryTrees.revert @x1)))
@x4)
)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(120,26-121,62)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,2-121,7)
(or label_2

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,52-121,61)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,52-121,61)
(Prims.hasEq BinaryTrees.tree)
)
)


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(120,26-121,62)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(Prims.squash (Prims.b2t (Prims.op_Equality BinaryTrees.tree
(BinaryTrees.revert @x0)
(BinaryTrees.revert @x1)))))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,53-121,55)
(or label_3

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,53-121,55)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(121,53-121,55)
(Prims.hasEq BinaryTrees.tree)
)
)
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query.3))
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.revert_injective, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.revert_injective


; <Skipped val BinaryTrees.revert_injective/>

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
(push) ;; push{2

; Starting query at BinaryTrees.fst(123,2-126,62)

;;;;;;;;;;;;;;;;t1 : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_0 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_0
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_0))
;;;;;;;;;;;;;;;;t2 : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.revert_injective (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.revert_injective@tok () Term)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   BinaryTrees.revert t1 = BinaryTrees.revert t2 /\
;   (forall (pure_result: Prims.unit). t1 = t2 ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? (t1, t2)._1 && Leaf? (t1, t2)._2) /\ ~(Node? (t1, t2)._1 && Node? (t1, t2)._2) ==>
;         Prims.l_False) /\
;       ((t1, t2) == (BinaryTrees.Leaf, BinaryTrees.Leaf) ==>
;         (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? (t1, t2)._1 && Leaf? (t1, t2)._2) ==>
;         (forall (b: Prims.int)
;             (b: BinaryTrees.tree)
;             (b: BinaryTrees.tree)
;             (b: Prims.int)
;             (b: BinaryTrees.tree)
;             (b: BinaryTrees.tree).
;             (t1, t2) == (BinaryTrees.Node b b b, BinaryTrees.Node b b b) ==>
;             (b << t1 \/ b === t1 /\ b << t2) /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 BinaryTrees.revert b = BinaryTrees.revert b /\
;                 (forall (pure_result: Prims.unit).
;                     b = b ==>
;                     (b << t1 \/ b === t1 /\ b << t2) /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         BinaryTrees.revert b = BinaryTrees.revert b /\
;                         (forall (pure_result: Prims.unit). b = b ==> k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert_injective`

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
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=BinaryTrees.fst(121,18-121,41); use=BinaryTrees.fst(123,2-126,62)
(= (BinaryTrees.revert x_1696252159950375ed27d3faba8e3379_0)
(BinaryTrees.revert x_1696252159950375ed27d3faba8e3379_1))


;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(121,52-121,61); use=BinaryTrees.fst(123,2-126,62)
(or label_2

;; def=BinaryTrees.fst(121,52-121,61); use=BinaryTrees.fst(123,2-126,62)
(= x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1)
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(123,2-126,62)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(123,2-126,62)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(123,2-126,62)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(123,2-126,62)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(123,2-126,62)
(and (implies 
;; def=BinaryTrees.fst(124,4-125,36); use=BinaryTrees.fst(124,4-125,36)
(and 
;; def=BinaryTrees.fst(124,4-124,14); use=BinaryTrees.fst(124,4-124,14)
(not 
;; def=BinaryTrees.fst(124,4-124,14); use=BinaryTrees.fst(124,4-124,14)
(and (BoxBool_proj_0 (BinaryTrees.uu___is_Leaf (FStar.Pervasives.Native.__proj__Mktuple2__item___1 BinaryTrees.tree
BinaryTrees.tree
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1))))
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf (FStar.Pervasives.Native.__proj__Mktuple2__item___2 BinaryTrees.tree
BinaryTrees.tree
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1)))))
)


;; def=BinaryTrees.fst(125,4-125,36); use=BinaryTrees.fst(125,4-125,36)
(not 
;; def=BinaryTrees.fst(125,4-125,36); use=BinaryTrees.fst(125,4-125,36)
(and (BoxBool_proj_0 (BinaryTrees.uu___is_Node (FStar.Pervasives.Native.__proj__Mktuple2__item___1 BinaryTrees.tree
BinaryTrees.tree
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1))))
(BoxBool_proj_0 (BinaryTrees.uu___is_Node (FStar.Pervasives.Native.__proj__Mktuple2__item___2 BinaryTrees.tree
BinaryTrees.tree
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1)))))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(123,8-124,14); use=BinaryTrees.fst(123,8-124,14)
(= (FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1)
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
BinaryTrees.Leaf@tok
BinaryTrees.Leaf@tok))


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(123,2-126,62)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(123,2-126,62)
(not 
;; def=BinaryTrees.fst(124,4-124,14); use=BinaryTrees.fst(124,4-124,14)
(and (BoxBool_proj_0 (BinaryTrees.uu___is_Leaf (FStar.Pervasives.Native.__proj__Mktuple2__item___1 BinaryTrees.tree
BinaryTrees.tree
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1))))
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf (FStar.Pervasives.Native.__proj__Mktuple2__item___2 BinaryTrees.tree
BinaryTrees.tree
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1)))))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x4 Term))
 (! (implies (HasType @x4
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x6 Term))
 (! (implies (HasType @x6
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(123,8-125,36); use=BinaryTrees.fst(123,8-125,36)
(= (FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
x_1696252159950375ed27d3faba8e3379_0
x_1696252159950375ed27d3faba8e3379_1)
(FStar.Pervasives.Native.Mktuple2 BinaryTrees.tree
BinaryTrees.tree
(BinaryTrees.Node @x2
@x3
@x4)
(BinaryTrees.Node @x5
@x6
@x7)))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(123,2-126,62)
(and 
;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(125,61-125,64)
(or label_4

;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(125,61-125,64)
(Valid 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(125,61-125,64)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)


;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(125,61-125,64)
(and 
;; def=BinaryTrees.fst(120,23-122,27); use=BinaryTrees.fst(125,61-125,64)
(Valid 
;; def=BinaryTrees.fst(120,23-122,27); use=BinaryTrees.fst(125,61-125,64)
(Prims.op_Equals_Equals_Equals BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)


;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(125,61-125,64)
(Valid 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(125,61-125,64)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x6
x_1696252159950375ed27d3faba8e3379_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
BinaryTrees.tree)

;; def=BinaryTrees.fst(120,34-125,32); use=BinaryTrees.fst(123,2-126,62)
(= @x6
@x8)
)

;; def=Prims.fst(441,29-441,97); use=BinaryTrees.fst(125,40-125,56)
(and 
;; def=BinaryTrees.fst(121,18-121,41); use=BinaryTrees.fst(125,40-125,56)
(or label_5

;; def=BinaryTrees.fst(121,18-121,41); use=BinaryTrees.fst(125,40-125,56)
(= (BinaryTrees.revert @x3)
(BinaryTrees.revert @x6))
)


;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(125,40-125,56)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.unit)

;; def=BinaryTrees.fst(121,52-121,61); use=BinaryTrees.fst(125,40-125,56)
(= @x3
@x6)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(123,2-126,62)
(and 
;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(126,59-126,62)
(or label_6

;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(126,59-126,62)
(Valid 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(126,59-126,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_0)
)


;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(126,59-126,62)
(and 
;; def=BinaryTrees.fst(120,23-122,27); use=BinaryTrees.fst(126,59-126,62)
(Valid 
;; def=BinaryTrees.fst(120,23-122,27); use=BinaryTrees.fst(126,59-126,62)
(Prims.op_Equals_Equals_Equals BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_0)
)


;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(126,59-126,62)
(Valid 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(126,59-126,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x7
x_1696252159950375ed27d3faba8e3379_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(123,2-126,62)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
BinaryTrees.tree)

;; def=BinaryTrees.fst(120,34-125,36); use=BinaryTrees.fst(123,2-126,62)
(= @x7
@x10)
)

;; def=Prims.fst(441,29-441,97); use=BinaryTrees.fst(126,38-126,54)
(and 
;; def=BinaryTrees.fst(121,18-121,41); use=BinaryTrees.fst(126,38-126,54)
(or label_7

;; def=BinaryTrees.fst(121,18-121,41); use=BinaryTrees.fst(126,38-126,54)
(= (BinaryTrees.revert @x4)
(BinaryTrees.revert @x7))
)


;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(126,38-126,54)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.unit)

;; def=BinaryTrees.fst(121,52-121,61); use=BinaryTrees.fst(126,38-126,54)
(= @x4
@x7)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(126,38-126,54)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(126,38-126,54)
(ApplyTT @x1
@x11)
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
 
;;no pats
:qid @query.12))
)
)
 
;;no pats
:qid @query.11))
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
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.revert_injective, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.revert.fuel_instrumented, @fuel_irrelevance_BinaryTrees.revert.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_0, binder_x_1696252159950375ed27d3faba8e3379_1, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_with_fuel_BinaryTrees.revert.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(122,0-126,62)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_a9ee4503925b114019e26b0708f8f1a7 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_a9ee4503925b114019e26b0708f8f1a7))

:named refinement_kinding_Tm_refine_a9ee4503925b114019e26b0708f8f1a7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(122,0-126,62)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(122,0-126,62)

;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(122,0-126,62)
(or 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(123,2-126,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
@x3)
)


;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(122,0-126,62)
(and 
;; def=BinaryTrees.fst(120,23-122,27); use=BinaryTrees.fst(122,0-126,62)
(Valid 
;; def=BinaryTrees.fst(120,23-122,27); use=BinaryTrees.fst(122,0-126,62)
(Prims.op_Equals_Equals_Equals BinaryTrees.tree
BinaryTrees.tree
@x2
@x3)
)


;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(123,2-126,62)
(Valid 
;; def=BinaryTrees.fst(123,2-126,62); use=BinaryTrees.fst(123,2-126,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_a9ee4503925b114019e26b0708f8f1a7))

:named refinement_interpretation_Tm_refine_a9ee4503925b114019e26b0708f8f1a7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a9ee4503925b114019e26b0708f8f1a7
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(120,23-126,62); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x0
@x1
@x2)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x0
@x1
@x2))))
:qid haseqTm_refine_a9ee4503925b114019e26b0708f8f1a7))

:named haseqTm_refine_a9ee4503925b114019e26b0708f8f1a7))

; Encoding query formula : forall (t1: BinaryTrees.tree)
;   (t2: BinaryTrees.tree)
;   (t1: BinaryTrees.tree)
;   (t2: BinaryTrees.tree{t1 << t1 \/ t1 === t1 /\ t2 << t2}).
;   Prims.hasEq BinaryTrees.tree /\
;   (forall (any_result: Type0).
;       BinaryTrees.tree == any_result ==>
;       (forall (any_result: Prims.bool).
;           BinaryTrees.revert t1 = BinaryTrees.revert t2 == any_result ==>
;           (forall (any_result: Prims.logical).
;               BinaryTrees.revert t1 = BinaryTrees.revert t2 == any_result ==>
;               Prims.hasEq BinaryTrees.tree /\
;               (forall (_: Prims.squash (BinaryTrees.revert t1 = BinaryTrees.revert t2)).
;                   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert_injective`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
BinaryTrees.tree)
(HasType @x3
(Tm_refine_a9ee4503925b114019e26b0708f8f1a7 @x2
@x0
@x1)))

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(122,0-126,62)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(Prims.hasEq BinaryTrees.tree)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Tm_type)

;; def=Prims.fst(588,31-588,32); use=BinaryTrees.fst(122,0-126,62)
(= BinaryTrees.tree
@x4)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=BinaryTrees.fst(122,0-126,62)
(= (Prims.op_Equality BinaryTrees.tree
(BinaryTrees.revert @x2)
(BinaryTrees.revert @x3))
@x5)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.logical)

;; def=FStar.Pervasives.fsti(112,28-112,31); use=BinaryTrees.fst(122,0-126,62)
(= (Prims.b2t (Prims.op_Equality BinaryTrees.tree
(BinaryTrees.revert @x2)
(BinaryTrees.revert @x3)))
@x6)
)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(122,0-126,62)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(or label_2

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(Prims.hasEq BinaryTrees.tree)
)
)


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(122,0-126,62)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Prims.squash (Prims.b2t (Prims.op_Equality BinaryTrees.tree
(BinaryTrees.revert @x2)
(BinaryTrees.revert @x3)))))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(or label_3

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(122,8-122,24)
(Prims.hasEq BinaryTrees.tree)
)
)
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query.3))
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.revert_injective, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec revert_injective


; <Start encoding let rec revert_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.revert_injective (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.revert_injective@tok () Term)

; </end encoding let rec revert_injective>

(push) ;; push{2

; Starting query at BinaryTrees.fst(128,0-129,62)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(129,2-129,62); use=BinaryTrees.fst(129,2-129,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (t: BinaryTrees.tree) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.revert_fold`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(128,0-129,62)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(129,9-129,15)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(129,9-129,15)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(129,9-129,15)
(Prims.hasEq BinaryTrees.tree)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.revert_fold, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.revert_fold


; <Skipped val BinaryTrees.revert_fold/>

;;;;;;;;;;;;;;;;kinding_Tm_arrow_55cc0ca0768ec9166d511faa170d5145
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! (HasType Tm_arrow_55cc0ca0768ec9166d511faa170d5145
Tm_type)
:named kinding_Tm_arrow_55cc0ca0768ec9166d511faa170d5145))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,16-20,54); use=BinaryTrees.fst(20,16-20,54)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_55cc0ca0768ec9166d511faa170d5145)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_55cc0ca0768ec9166d511faa170d5145))
:qid BinaryTrees_pre_typing_Tm_arrow_55cc0ca0768ec9166d511faa170d5145))

:named BinaryTrees_pre_typing_Tm_arrow_55cc0ca0768ec9166d511faa170d5145))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145
;;; Fact-ids: Name BinaryTrees.tree; Namespace BinaryTrees; Name BinaryTrees.Leaf; Namespace BinaryTrees; Name BinaryTrees.Node; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,16-20,54); use=BinaryTrees.fst(20,16-20,54)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_55cc0ca0768ec9166d511faa170d5145)
(and 
;; def=BinaryTrees.fst(20,16-20,54); use=BinaryTrees.fst(20,16-20,54)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree)
(HasType @x3
BinaryTrees.tree))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
BinaryTrees.tree))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid BinaryTrees_interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(20,16-20,54); use=BinaryTrees.fst(20,16-20,54)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145.2))


;; def=BinaryTrees.fst(20,16-20,54); use=BinaryTrees.fst(20,16-20,54)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_55cc0ca0768ec9166d511faa170d5145))
:qid BinaryTrees_interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145))

:named BinaryTrees_interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145))
(push) ;; push{2

; Starting query at BinaryTrees.fst(131,2-133,50)

;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_0 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_0
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.revert_fold (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.revert_fold@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

(declare-fun Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
;;; Fact-ids: 
(assert (! (HasType Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
Tm_arrow_55cc0ca0768ec9166d511faa170d5145)
:named typing_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(129,41-129,53); use=BinaryTrees.fst(133,36-133,47)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
@x0)
@x1)
@x2)
(BinaryTrees.Node @x0
@x2
@x1))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c))

:named interpretation_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c))





; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.revert t =
;       BinaryTrees.fold (fun n t1 t2 -> BinaryTrees.Node n t2 t1) BinaryTrees.Leaf t ==>
;       p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.revert b =
;                     BinaryTrees.fold (fun n t1 t2 -> BinaryTrees.Node n t2 t1) BinaryTrees.Leaf b ==>
;                     b << t /\
;                     (forall (any_result: BinaryTrees.tree).
;                         b == any_result ==>
;                         (forall (pure_result: Prims.unit).
;                             BinaryTrees.revert b =
;                             BinaryTrees.fold (fun n t1 t2 -> BinaryTrees.Node n t2 t1)
;                               BinaryTrees.Leaf
;                               b ==>
;                             k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert_fold`

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
;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(129,8-129,62); use=BinaryTrees.fst(131,2-133,50)
(or label_2

;; def=BinaryTrees.fst(129,8-129,62); use=BinaryTrees.fst(131,2-133,50)
(= (BinaryTrees.revert x_1696252159950375ed27d3faba8e3379_0)
(BinaryTrees.fold BinaryTrees.tree
Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
BinaryTrees.Leaf@tok
x_1696252159950375ed27d3faba8e3379_0))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(131,2-133,50)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(131,2-133,50)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(131,2-133,50)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(131,2-133,50)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(131,2-133,50)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(131,2-133,50)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(131,2-133,50)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(131,2-133,50)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(131,2-133,50)
(and (implies 
;; def=BinaryTrees.fst(130,20-130,21); use=BinaryTrees.fst(131,8-131,9)
(and 
;; def=BinaryTrees.fst(130,20-130,21); use=BinaryTrees.fst(131,8-131,9)
(not 
;; def=BinaryTrees.fst(130,20-130,21); use=BinaryTrees.fst(131,8-131,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=BinaryTrees.fst(130,20-130,21); use=BinaryTrees.fst(131,8-131,9)
(not 
;; def=BinaryTrees.fst(130,20-130,21); use=BinaryTrees.fst(131,8-131,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_0))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(130,20-132,8); use=BinaryTrees.fst(131,8-132,8)
(= x_1696252159950375ed27d3faba8e3379_0
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(131,2-133,50)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(131,2-133,50)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(131,2-133,50)
(not 
;; def=BinaryTrees.fst(130,20-130,21); use=BinaryTrees.fst(131,8-131,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_0))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(130,20-133,16); use=BinaryTrees.fst(131,8-133,16)
(= x_1696252159950375ed27d3faba8e3379_0
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(131,2-133,50)
(and 
;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(133,32-133,34)
(or label_4

;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(133,32-133,34)
(Valid 
;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(133,32-133,34)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(128,18-133,13); use=BinaryTrees.fst(131,2-133,50)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(133,20-133,31)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(129,8-129,62); use=BinaryTrees.fst(133,20-133,31)
(= (BinaryTrees.revert @x3)
(BinaryTrees.fold BinaryTrees.tree
Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
BinaryTrees.Leaf@tok
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(131,2-133,50)
(and 
;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(133,48-133,50)
(or label_5

;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(133,48-133,50)
(Valid 
;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(133,48-133,50)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x4
x_1696252159950375ed27d3faba8e3379_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(131,2-133,50)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(128,18-133,16); use=BinaryTrees.fst(131,2-133,50)
(= @x4
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(133,36-133,47)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(129,8-129,62); use=BinaryTrees.fst(133,36-133,47)
(= (BinaryTrees.revert @x4)
(BinaryTrees.fold BinaryTrees.tree
Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c
BinaryTrees.Leaf@tok
@x4))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(133,36-133,47)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(133,36-133,47)
(ApplyTT @x1
@x8)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.revert_fold, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.fold.fuel_instrumented, @fuel_correspondence_BinaryTrees.revert.fuel_instrumented, @fuel_irrelevance_BinaryTrees.fold.fuel_instrumented, @fuel_irrelevance_BinaryTrees.revert.fuel_instrumented, @query, BinaryTrees_interpretation_Tm_arrow_55cc0ca0768ec9166d511faa170d5145, BinaryTrees_interpretation_Tm_arrow_56142c37120331f4156166606be8c498, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_0, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_with_fuel_BinaryTrees.fold.fuel_instrumented, equation_with_fuel_BinaryTrees.revert.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, interpretation_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c, kinding_BinaryTrees.tree@tok, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_Tm_abs_2b5744c286c6b8bddb70ebbfb9ada83c, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(130,0-133,50)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(128,18-133,50); use=BinaryTrees.fst(130,0-133,50)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_0a6261f61152b42e278aee7c3d34b1d2))

:named refinement_kinding_Tm_refine_0a6261f61152b42e278aee7c3d34b1d2))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(128,18-133,50); use=BinaryTrees.fst(130,0-133,50)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(131,2-133,50)

;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(131,2-133,50)
(Valid 
;; def=BinaryTrees.fst(131,2-133,50); use=BinaryTrees.fst(131,2-133,50)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x2)))
:qid refinement_interpretation_Tm_refine_0a6261f61152b42e278aee7c3d34b1d2))

:named refinement_interpretation_Tm_refine_0a6261f61152b42e278aee7c3d34b1d2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0a6261f61152b42e278aee7c3d34b1d2
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(128,18-133,50); use=BinaryTrees.fst(130,0-133,50)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x0))))
:qid haseqTm_refine_0a6261f61152b42e278aee7c3d34b1d2))

:named haseqTm_refine_0a6261f61152b42e278aee7c3d34b1d2))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(129,2-129,62); use=BinaryTrees.fst(130,8-130,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (t: BinaryTrees.tree) (t: BinaryTrees.tree{t << t}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree


; Context: While encoding a query
; While typechecking the top-level declaration `let rec revert_fold`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(130,0-133,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
BinaryTrees.tree)
(HasType @x1
(Tm_refine_0a6261f61152b42e278aee7c3d34b1d2 @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(130,8-130,19)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(130,8-130,19)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(130,8-130,19)
(Prims.hasEq BinaryTrees.tree)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.revert_fold, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec revert_fold


; <Start encoding let rec revert_fold>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.revert_fold (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.revert_fold@tok () Term)

; </end encoding let rec revert_fold>


; encoding sigelt val BinaryTrees.remove_root


; <Skipped val BinaryTrees.remove_root/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.__proj__Node__item__root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,11-20,15); use=BinaryTrees.fst(20,11-20,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
(HasType (BinaryTrees.__proj__Node__item__root @x0)
Prims.int))
 

:pattern ((BinaryTrees.__proj__Node__item__root @x0))
:qid typing_BinaryTrees.__proj__Node__item__root))

:named typing_BinaryTrees.__proj__Node__item__root))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name BinaryTrees.__proj__Node__item__root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(20,11-20,15); use=BinaryTrees.fst(20,11-20,15)
(forall ((@x0 Term))
 (! (= (BinaryTrees.__proj__Node__item__root @x0)
(BinaryTrees.Node_root @x0))
 

:pattern ((BinaryTrees.__proj__Node__item__root @x0))
:qid proj_equation_BinaryTrees.Node_root))

:named proj_equation_BinaryTrees.Node_root))
(push) ;; push{2

; Starting query at BinaryTrees.fst(142,2-144,65)

;;;;;;;;;;;;;;;;t : t: BinaryTrees.tree{Node? t} (t: BinaryTrees.tree{Node? t})
(declare-fun x_4f12cf247a1f2a0cd3974332a65f3b77_0 () Term)

;;;;;;;;;;;;;;;;binder_x_4f12cf247a1f2a0cd3974332a65f3b77_0
;;; Fact-ids: 
(assert (! (HasType x_4f12cf247a1f2a0cd3974332a65f3b77_0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
:named binder_x_4f12cf247a1f2a0cd3974332a65f3b77_0))
(declare-fun Tm_refine_3aa07b3704c91a83ad45e53647bedcca () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_3aa07b3704c91a83ad45e53647bedcca
Tm_type)
:named refinement_kinding_Tm_refine_3aa07b3704c91a83ad45e53647bedcca))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(140,18-144,65); use=BinaryTrees.fst(140,18-144,65)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_3aa07b3704c91a83ad45e53647bedcca)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(141,8-141,19)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))


;; def=BinaryTrees.fst(142,2-144,65); use=BinaryTrees.fst(142,2-144,65)

;; def=BinaryTrees.fst(142,2-144,65); use=BinaryTrees.fst(142,2-144,65)
(Valid 
;; def=BinaryTrees.fst(142,2-144,65); use=BinaryTrees.fst(142,2-144,65)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_4f12cf247a1f2a0cd3974332a65f3b77_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_3aa07b3704c91a83ad45e53647bedcca))
:qid refinement_interpretation_Tm_refine_3aa07b3704c91a83ad45e53647bedcca))

:named refinement_interpretation_Tm_refine_3aa07b3704c91a83ad45e53647bedcca))
;;;;;;;;;;;;;;;;haseq for Tm_refine_3aa07b3704c91a83ad45e53647bedcca
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_3aa07b3704c91a83ad45e53647bedcca))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_3aa07b3704c91a83ad45e53647bedcca))
(declare-fun BinaryTrees.remove_root (Term) Term)

;;;;;;;;;;;;;;;;t: (t: tree{Node? t}){t << t} -> tree
(declare-fun Tm_arrow_bdad475ceabaad106a834cee588c8644 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_bdad475ceabaad106a834cee588c8644
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_bdad475ceabaad106a834cee588c8644
Tm_type)
:named kinding_Tm_arrow_bdad475ceabaad106a834cee588c8644))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(140,18-144,65); use=BinaryTrees.fst(140,18-144,65)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_bdad475ceabaad106a834cee588c8644)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_bdad475ceabaad106a834cee588c8644))
:qid BinaryTrees_pre_typing_Tm_arrow_bdad475ceabaad106a834cee588c8644))

:named BinaryTrees_pre_typing_Tm_arrow_bdad475ceabaad106a834cee588c8644))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_bdad475ceabaad106a834cee588c8644
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(140,18-144,65); use=BinaryTrees.fst(140,18-144,65)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_bdad475ceabaad106a834cee588c8644)
(and 
;; def=BinaryTrees.fst(140,18-144,65); use=BinaryTrees.fst(140,18-144,65)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_3aa07b3704c91a83ad45e53647bedcca)
(HasType (ApplyTT @x0
@x1)
BinaryTrees.tree))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_bdad475ceabaad106a834cee588c8644.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_bdad475ceabaad106a834cee588c8644))
:qid BinaryTrees_interpretation_Tm_arrow_bdad475ceabaad106a834cee588c8644))

:named BinaryTrees_interpretation_Tm_arrow_bdad475ceabaad106a834cee588c8644))
(declare-fun BinaryTrees.remove_root@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@x0 Term))
 (! (= (ApplyTT BinaryTrees.remove_root@tok
@x0)
(BinaryTrees.remove_root @x0))
 

:pattern ((ApplyTT BinaryTrees.remove_root@tok
@x0))
:qid token_correspondence_BinaryTrees.remove_root))

:named token_correspondence_BinaryTrees.remove_root))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.remove_root@tok
Tm_arrow_bdad475ceabaad106a834cee588c8644))

;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@x1 Term))
 (! (= (ApplyTT BinaryTrees.remove_root@tok
@x1)
(BinaryTrees.remove_root @x1))
 

:pattern ((BinaryTrees.remove_root @x1))
:qid function_token_typing_BinaryTrees.remove_root.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.remove_root@tok))
:qid function_token_typing_BinaryTrees.remove_root))

:named function_token_typing_BinaryTrees.remove_root))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_3aa07b3704c91a83ad45e53647bedcca)
(HasType (BinaryTrees.remove_root @x0)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.remove_root @x0))
:qid typing_BinaryTrees.remove_root))

:named typing_BinaryTrees.remove_root))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : (~(Node? t) ==> Prims.l_False) /\
; (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;     t == BinaryTrees.Node b b b ==>
;     (forall (k: Prims.pure_post BinaryTrees.tree).
;         (forall (x: BinaryTrees.tree). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;         ~(Leaf? b = true) ==>
;         (forall (b: Prims.bool).
;             Leaf? b == b ==>
;             Node? b /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (any_result: Prims.int). b.root == any_result ==> Node? b /\ b << t)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec remove_root`

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
;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(142,2-144,65)
(and (implies 
;; def=BinaryTrees.fst(141,20-141,21); use=BinaryTrees.fst(142,8-142,9)
(not 
;; def=BinaryTrees.fst(141,20-141,21); use=BinaryTrees.fst(142,8-142,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_4f12cf247a1f2a0cd3974332a65f3b77_0))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x1 Term))
 (! (implies (HasType @x1
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
BinaryTrees.tree)

;; def=BinaryTrees.fst(141,20-143,16); use=BinaryTrees.fst(142,8-143,16)
(= x_4f12cf247a1f2a0cd3974332a65f3b77_0
(BinaryTrees.Node @x0
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post BinaryTrees.tree))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(142,2-144,65)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(142,2-144,65)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.4))


;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(142,2-144,65)
(not 
;; def=BinaryTrees.fst(143,23-143,31); use=BinaryTrees.fst(143,23-143,31)
(= (BinaryTrees.uu___is_Leaf @x1)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=BinaryTrees.fst(143,23-144,65); use=BinaryTrees.fst(143,23-144,65)
(= (BinaryTrees.uu___is_Leaf @x1)
@x4)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(142,2-144,65)
(and 
;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(144,42-144,44)
(or label_2

;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(144,42-144,44)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(20,4-143,13); use=BinaryTrees.fst(142,2-144,65)
(= @x1
@x5)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(142,2-144,65)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.int)

;; def=BinaryTrees.fst(20,11-144,45); use=BinaryTrees.fst(142,2-144,65)
(= (BinaryTrees.__proj__Node__item__root @x1)
@x6)
)

;; def=BinaryTrees.fst(140,25-144,65); use=BinaryTrees.fst(144,59-144,61)
(and 
;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(144,59-144,61)
(or label_3

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(144,59-144,61)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))
)


;; def=BinaryTrees.fst(142,2-144,65); use=BinaryTrees.fst(144,59-144,61)
(or label_4

;; def=BinaryTrees.fst(142,2-144,65); use=BinaryTrees.fst(144,59-144,61)
(Valid 
;; def=BinaryTrees.fst(142,2-144,65); use=BinaryTrees.fst(144,59-144,61)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_4f12cf247a1f2a0cd3974332a65f3b77_0)
)
)
)
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
:qid @query.3)))
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
)
 
;;no pats
:qid @query))
)
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
; QUERY ID: (BinaryTrees.remove_root, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_4f12cf247a1f2a0cd3974332a65f3b77_0, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec remove_root


; <Start encoding let rec remove_root>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.remove_root.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.remove_root.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.remove_root (Term) Term)
(declare-fun BinaryTrees.remove_root@tok () Term)





; </end encoding let rec remove_root>


; encoding sigelt val BinaryTrees.add_root


; <Skipped val BinaryTrees.add_root/>

(push) ;; push{2

; Starting query at BinaryTrees.fst(149,2-151,45)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
(declare-fun Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5
Tm_type)
:named refinement_kinding_Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(147,24-151,45); use=BinaryTrees.fst(147,24-151,45)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(149,2-151,45); use=BinaryTrees.fst(149,2-151,45)

;; def=BinaryTrees.fst(149,2-151,45); use=BinaryTrees.fst(149,2-151,45)
(Valid 
;; def=BinaryTrees.fst(149,2-151,45); use=BinaryTrees.fst(149,2-151,45)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
:qid refinement_interpretation_Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))

:named refinement_interpretation_Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
(declare-fun BinaryTrees.add_root (Term Term) Term)


;;;;;;;;;;;;;;;;x: Prims.int -> t: tree{t << t} -> Prims.Tot (t': tree{Node? t'})
(declare-fun Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1
Tm_type)
:named kinding_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(147,17-151,45); use=BinaryTrees.fst(147,24-151,45)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))
:qid BinaryTrees_pre_typing_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))

:named BinaryTrees_pre_typing_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(147,17-151,45); use=BinaryTrees.fst(147,24-151,45)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1)
(and 
;; def=BinaryTrees.fst(147,17-151,45); use=BinaryTrees.fst(147,24-151,45)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(147,17-151,45); use=BinaryTrees.fst(147,24-151,45)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))
:qid BinaryTrees_interpretation_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))

:named BinaryTrees_interpretation_Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))
(declare-fun BinaryTrees.add_root@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.add_root@tok
@x0)
@x1)
(BinaryTrees.add_root @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT BinaryTrees.add_root@tok
@x0)
@x1))
:qid token_correspondence_BinaryTrees.add_root))

:named token_correspondence_BinaryTrees.add_root))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.add_root@tok
Tm_arrow_b66c9d28cca0cbe045bbb77ebec9eee1))

;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.add_root@tok
@x1)
@x2)
(BinaryTrees.add_root @x1
@x2))
 

:pattern ((BinaryTrees.add_root @x1
@x2))
:qid function_token_typing_BinaryTrees.add_root.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.add_root@tok))
:qid function_token_typing_BinaryTrees.add_root))

:named function_token_typing_BinaryTrees.add_root))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
Tm_refine_dfbaecc6b44582927b24cd31b3ec16c5))
(HasType (BinaryTrees.add_root @x0
@x1)
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
 

:pattern ((BinaryTrees.add_root @x0
@x1))
:qid typing_BinaryTrees.add_root))

:named typing_BinaryTrees.add_root))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)





; Encoding query formula : forall (k: Prims.pure_post (t': BinaryTrees.tree{Node? t'})).
;   (forall (x: t': BinaryTrees.tree{Node? t'}). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (t == BinaryTrees.Leaf ==> Node? (BinaryTrees.Node x BinaryTrees.Leaf BinaryTrees.Leaf)) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         b << t /\
;         (forall (any_result: BinaryTrees.tree).
;             b == any_result ==>
;             (forall (any_result: t': BinaryTrees.tree{Node? t'}).
;                 BinaryTrees.add_root b b == any_result ==>
;                 (forall (return_val: t': BinaryTrees.tree{Node? t'}).
;                     return_val == BinaryTrees.add_root b b ==>
;                     BinaryTrees.add_root b b == return_val ==>
;                     (forall (any_result: BinaryTrees.tree).
;                         BinaryTrees.Node x (BinaryTrees.add_root b b) b == any_result ==>
;                         Node? (BinaryTrees.Node x (BinaryTrees.add_root b b) b)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec add_root`

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
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(149,2-151,45)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(149,2-151,45)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(149,2-151,45)
(and (implies 
;; def=BinaryTrees.fst(148,19-148,20); use=BinaryTrees.fst(149,8-149,9)
(and 
;; def=BinaryTrees.fst(148,19-148,20); use=BinaryTrees.fst(149,8-149,9)
(not 
;; def=BinaryTrees.fst(148,19-148,20); use=BinaryTrees.fst(149,8-149,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(148,19-148,20); use=BinaryTrees.fst(149,8-149,9)
(not 
;; def=BinaryTrees.fst(148,19-148,20); use=BinaryTrees.fst(149,8-149,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_1)
(implies 
;; def=BinaryTrees.fst(148,19-150,8); use=BinaryTrees.fst(149,8-150,8)
(= x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.Leaf@tok)


;; def=BinaryTrees.fst(147,47-147,55); use=BinaryTrees.fst(150,12-150,28)
(or label_2

;; def=BinaryTrees.fst(147,47-147,55); use=BinaryTrees.fst(150,12-150,28)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node (BinaryTrees.Node x_ae567c2fb75be05905677af440075565_0
BinaryTrees.Leaf@tok
BinaryTrees.Leaf@tok)))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(149,2-151,45)
(not 
;; def=BinaryTrees.fst(148,19-148,20); use=BinaryTrees.fst(149,8-149,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(148,19-151,16); use=BinaryTrees.fst(149,8-151,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(149,2-151,45)
(and 
;; def=BinaryTrees.fst(149,2-151,45); use=BinaryTrees.fst(151,39-151,41)
(or label_3

;; def=BinaryTrees.fst(149,2-151,45); use=BinaryTrees.fst(151,39-151,41)
(Valid 
;; def=BinaryTrees.fst(149,2-151,45); use=BinaryTrees.fst(151,39-151,41)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(147,24-151,13); use=BinaryTrees.fst(149,2-151,45)
(= @x2
@x4)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)

;; def=BinaryTrees.fst(147,38-151,42); use=BinaryTrees.fst(149,2-151,45)
(= (BinaryTrees.add_root @x1
@x2)
@x5)
)

;; def=Prims.fst(356,2-356,58); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)

;; def=Prims.fst(356,26-356,41); use=BinaryTrees.fst(149,2-151,45)
(= @x6
(BinaryTrees.add_root @x1
@x2))


;; def=BinaryTrees.fst(20,23-151,42); use=BinaryTrees.fst(149,2-151,45)
(= (BinaryTrees.add_root @x1
@x2)
@x6)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(149,2-151,45)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(147,38-151,45); use=BinaryTrees.fst(149,2-151,45)
(= (BinaryTrees.Node x_ae567c2fb75be05905677af440075565_0
(BinaryTrees.add_root @x1
@x2)
@x3)
@x7)
)

;; def=BinaryTrees.fst(147,47-147,55); use=BinaryTrees.fst(151,20-151,45)
(or label_4

;; def=BinaryTrees.fst(147,47-147,55); use=BinaryTrees.fst(151,20-151,45)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node (BinaryTrees.Node x_ae567c2fb75be05905677af440075565_0
(BinaryTrees.add_root @x1
@x2)
@x3)))
)
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
:qid @query.4))
)
 
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
; QUERY ID: (BinaryTrees.add_root, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, binder_x_ae567c2fb75be05905677af440075565_0, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, fuel_guarded_inversion_BinaryTrees.tree, int_inversion, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec add_root


; <Start encoding let rec add_root>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.add_root.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.add_root.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.add_root (Term Term) Term)
(declare-fun BinaryTrees.add_root@tok () Term)


;;;;;;;;;;;;;;;;x: Prims.int -> t: tree -> Prims.Tot (t': tree{Node? t'})
(declare-fun Tm_arrow_93cd017574a32b3adf547f3823645654 () Term)


; </end encoding let rec add_root>

(push) ;; push{2

; Starting query at BinaryTrees.fst(154,0-156,21)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(155,18-155,22); use=BinaryTrees.fst(155,2-155,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (x: Prims.int) (t: BinaryTrees.tree) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree


; Context: While encoding a query
; While typechecking the top-level declaration `val BinaryTrees.remove_add_root`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(154,0-156,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(155,34-155,45)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(155,34-155,45)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(155,34-155,45)
(Prims.hasEq BinaryTrees.tree)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.remove_add_root, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val BinaryTrees.remove_add_root


; <Skipped val BinaryTrees.remove_add_root/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.remove_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
(HasType (BinaryTrees.remove_root @x0)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.remove_root @x0))
:qid typing_BinaryTrees.remove_root))

:named typing_BinaryTrees.remove_root))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.add_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
BinaryTrees.tree))
(HasType (BinaryTrees.add_root @x0
@x1)
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
 

:pattern ((BinaryTrees.add_root @x0
@x1))
:qid typing_BinaryTrees.add_root))

:named typing_BinaryTrees.add_root))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.remove_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
(HasType (BinaryTrees.remove_root.fuel_instrumented @u0
@x1)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.remove_root.fuel_instrumented @u0
@x1))
:qid token_correspondence_BinaryTrees.remove_root.fuel_instrumented))

:named token_correspondence_BinaryTrees.remove_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.add_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(HasType (BinaryTrees.add_root.fuel_instrumented @u0
@x1
@x2)
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185))
 

:pattern ((BinaryTrees.add_root.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_BinaryTrees.add_root.fuel_instrumented))

:named token_correspondence_BinaryTrees.add_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.remove_root
;;; Fact-ids: Name BinaryTrees.remove_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
(= (BinaryTrees.remove_root.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-BinaryTrees.Node @lb2)
(let ((@lb3 (BinaryTrees.uu___is_Leaf (BinaryTrees.Node_left @lb2))))
(ite (= @lb3
(BoxBool true))
(BinaryTrees.Node_right @lb2)
(BinaryTrees.Node (BinaryTrees.__proj__Node__item__root (BinaryTrees.Node_left @lb2))
(BinaryTrees.remove_root.fuel_instrumented @u0
(BinaryTrees.Node_left @lb2))
(BinaryTrees.Node_right @lb2))))
Tm_unit))))
 :weight 0


:pattern ((BinaryTrees.remove_root.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_BinaryTrees.remove_root.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.remove_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.add_root
;;; Fact-ids: Name BinaryTrees.add_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(= (BinaryTrees.add_root.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-BinaryTrees.Leaf @lb3)
(BinaryTrees.Node @x1
BinaryTrees.Leaf@tok
BinaryTrees.Leaf@tok)
(ite (is-BinaryTrees.Node @lb3)
(BinaryTrees.Node @x1
(BinaryTrees.add_root.fuel_instrumented @u0
(BinaryTrees.Node_root @lb3)
(BinaryTrees.Node_left @lb3))
(BinaryTrees.Node_right @lb3))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.add_root.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_BinaryTrees.add_root.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.add_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.remove_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (BinaryTrees.remove_root.fuel_instrumented (SFuel @u0)
@x1)
(BinaryTrees.remove_root.fuel_instrumented ZFuel
@x1))
 

:pattern ((BinaryTrees.remove_root.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_BinaryTrees.remove_root.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.remove_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.add_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.add_root.fuel_instrumented (SFuel @u0)
@x1
@x2)
(BinaryTrees.add_root.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((BinaryTrees.add_root.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_BinaryTrees.add_root.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.add_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.remove_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(141,8-141,19); use=BinaryTrees.fst(141,8-141,19)
(forall ((@x0 Term))
 (! (= (BinaryTrees.remove_root @x0)
(BinaryTrees.remove_root.fuel_instrumented MaxFuel
@x0))
 

:pattern ((BinaryTrees.remove_root @x0))
:qid @fuel_correspondence_BinaryTrees.remove_root.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.remove_root.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.add_root; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(148,8-148,16); use=BinaryTrees.fst(148,8-148,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (BinaryTrees.add_root @x0
@x1)
(BinaryTrees.add_root.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((BinaryTrees.add_root @x0
@x1))
:qid @fuel_correspondence_BinaryTrees.add_root.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.add_root.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(158,2-160,40)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.remove_add_root (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.remove_add_root@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.remove_root (BinaryTrees.add_root x t) = t ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;       (t == BinaryTrees.Leaf ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Leaf? t) ==>
;         (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;             t == BinaryTrees.Node b b b ==>
;             b << t /\
;             (forall (any_result: BinaryTrees.tree).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.remove_root (BinaryTrees.add_root x b) = b ==> k pure_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec remove_add_root`

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
;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(155,33-155,65); use=BinaryTrees.fst(158,2-160,40)
(or label_2

;; def=BinaryTrees.fst(155,33-155,65); use=BinaryTrees.fst(158,2-160,40)
(= (BinaryTrees.remove_root (BinaryTrees.add_root x_ae567c2fb75be05905677af440075565_0
x_1696252159950375ed27d3faba8e3379_1))
x_1696252159950375ed27d3faba8e3379_1)
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(158,2-160,40)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(158,2-160,40)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(158,2-160,40)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(158,2-160,40)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(158,2-160,40)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(158,2-160,40)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(158,2-160,40)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(158,2-160,40)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(158,2-160,40)
(and (implies 
;; def=BinaryTrees.fst(157,26-157,27); use=BinaryTrees.fst(158,8-158,9)
(and 
;; def=BinaryTrees.fst(157,26-157,27); use=BinaryTrees.fst(158,8-158,9)
(not 
;; def=BinaryTrees.fst(157,26-157,27); use=BinaryTrees.fst(158,8-158,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(157,26-157,27); use=BinaryTrees.fst(158,8-158,9)
(not 
;; def=BinaryTrees.fst(157,26-157,27); use=BinaryTrees.fst(158,8-158,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_3)
(implies 
;; def=BinaryTrees.fst(157,26-159,8); use=BinaryTrees.fst(158,8-159,8)
(= x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.Leaf@tok)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(158,2-160,40)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(158,2-160,40)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(158,2-160,40)
(not 
;; def=BinaryTrees.fst(157,26-157,27); use=BinaryTrees.fst(158,8-158,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x3 Term))
 (! (implies (HasType @x3
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
BinaryTrees.tree)

;; def=BinaryTrees.fst(157,26-160,16); use=BinaryTrees.fst(158,8-160,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(158,2-160,40)
(and 
;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(160,38-160,40)
(or label_4

;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(160,38-160,40)
(Valid 
;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(160,38-160,40)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(158,2-160,40)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
BinaryTrees.tree)

;; def=BinaryTrees.fst(154,31-160,13); use=BinaryTrees.fst(158,2-160,40)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(160,20-160,35)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(155,33-155,65); use=BinaryTrees.fst(160,20-160,35)
(= (BinaryTrees.remove_root (BinaryTrees.add_root x_ae567c2fb75be05905677af440075565_0
@x3))
@x3)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(160,20-160,35)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(160,20-160,35)
(ApplyTT @x1
@x6)
)
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
:qid @query.6))
)
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.remove_add_root, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.add_root.fuel_instrumented, @fuel_correspondence_BinaryTrees.remove_root.fuel_instrumented, @fuel_irrelevance_BinaryTrees.add_root.fuel_instrumented, @fuel_irrelevance_BinaryTrees.remove_root.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, binder_x_ae567c2fb75be05905677af440075565_0, constructor_distinct_BinaryTrees.Leaf, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_with_fuel_BinaryTrees.add_root.fuel_instrumented, equation_with_fuel_BinaryTrees.remove_root.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, int_inversion, proj_equation_BinaryTrees.Node_root, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185, subterm_ordering_BinaryTrees.Node, token_correspondence_BinaryTrees.add_root.fuel_instrumented, typing_BinaryTrees.add_root, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(157,0-160,40)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_b5fed28953bad259291ca0b42241cefc (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(154,31-160,40); use=BinaryTrees.fst(157,0-160,40)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_b5fed28953bad259291ca0b42241cefc @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_b5fed28953bad259291ca0b42241cefc @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_b5fed28953bad259291ca0b42241cefc))

:named refinement_kinding_Tm_refine_b5fed28953bad259291ca0b42241cefc))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(154,31-160,40); use=BinaryTrees.fst(157,0-160,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b5fed28953bad259291ca0b42241cefc @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(158,2-160,40)

;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(158,2-160,40)
(Valid 
;; def=BinaryTrees.fst(158,2-160,40); use=BinaryTrees.fst(158,2-160,40)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b5fed28953bad259291ca0b42241cefc @x2)))
:qid refinement_interpretation_Tm_refine_b5fed28953bad259291ca0b42241cefc))

:named refinement_interpretation_Tm_refine_b5fed28953bad259291ca0b42241cefc))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b5fed28953bad259291ca0b42241cefc
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(154,31-160,40); use=BinaryTrees.fst(157,0-160,40)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b5fed28953bad259291ca0b42241cefc @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b5fed28953bad259291ca0b42241cefc @x0))))
:qid haseqTm_refine_b5fed28953bad259291ca0b42241cefc))

:named haseqTm_refine_b5fed28953bad259291ca0b42241cefc))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(155,18-155,22); use=BinaryTrees.fst(157,8-157,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (x: Prims.int)
;   (t: BinaryTrees.tree)
;   (x: Prims.int)
;   (t: BinaryTrees.tree{t << t})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq BinaryTrees.tree


; Context: While encoding a query
; While typechecking the top-level declaration `let rec remove_add_root`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(157,0-160,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
BinaryTrees.tree)
(HasType @x2
Prims.int)
(HasType @x3
(Tm_refine_b5fed28953bad259291ca0b42241cefc @x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(157,8-157,23)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(157,8-157,23)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(157,8-157,23)
(Prims.hasEq BinaryTrees.tree)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.remove_add_root, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_BinaryTrees.tree__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec remove_add_root


; <Start encoding let rec remove_add_root>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.remove_add_root (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.remove_add_root@tok () Term)

; </end encoding let rec remove_add_root>

(push) ;; push{2

; Starting query at BinaryTrees.fst(163,2-165,70)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : BinaryTrees.tree (BinaryTrees.tree)
(declare-fun x_1696252159950375ed27d3faba8e3379_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1696252159950375ed27d3faba8e3379_1
;;; Fact-ids: 
(assert (! (HasType x_1696252159950375ed27d3faba8e3379_1
BinaryTrees.tree)
:named binder_x_1696252159950375ed27d3faba8e3379_1))
(declare-fun Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b))

:named refinement_kinding_Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)

;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(or 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(163,2-165,70)
(Valid 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(163,2-165,70)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(and 
;; def=BinaryTrees.fst(162,15-162,16); use=BinaryTrees.fst(162,15-162,16)
(Valid 
;; def=BinaryTrees.fst(162,15-162,16); use=BinaryTrees.fst(162,15-162,16)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(163,2-165,70)
(Valid 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(163,2-165,70)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_1696252159950375ed27d3faba8e3379_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x2)))
:qid refinement_interpretation_Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b))

:named refinement_interpretation_Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x0))))
:qid haseqTm_refine_65cc29ee3f494b5bf69ec22e1362f54b))

:named haseqTm_refine_65cc29ee3f494b5bf69ec22e1362f54b))
(declare-fun BinaryTrees.count (Term Term) Term)

;;;;;;;;;;;;;;;;x: Prims.int -> t: tree{x << x \/ x === x /\ t << t} -> Prims.nat
(declare-fun Tm_arrow_fb358500877e73f76d8140b3d0e340b0 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fb358500877e73f76d8140b3d0e340b0
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_fb358500877e73f76d8140b3d0e340b0
Tm_type)
:named kinding_Tm_arrow_fb358500877e73f76d8140b3d0e340b0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fb358500877e73f76d8140b3d0e340b0)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fb358500877e73f76d8140b3d0e340b0))
:qid BinaryTrees_pre_typing_Tm_arrow_fb358500877e73f76d8140b3d0e340b0))

:named BinaryTrees_pre_typing_Tm_arrow_fb358500877e73f76d8140b3d0e340b0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fb358500877e73f76d8140b3d0e340b0
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fb358500877e73f76d8140b3d0e340b0)
(and 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.nat))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_fb358500877e73f76d8140b3d0e340b0.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(162,15-165,70)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_fb358500877e73f76d8140b3d0e340b0.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fb358500877e73f76d8140b3d0e340b0))
:qid BinaryTrees_interpretation_Tm_arrow_fb358500877e73f76d8140b3d0e340b0))

:named BinaryTrees_interpretation_Tm_arrow_fb358500877e73f76d8140b3d0e340b0))
(declare-fun BinaryTrees.count@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.count@tok
@x0)
@x1)
(BinaryTrees.count @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT BinaryTrees.count@tok
@x0)
@x1))
:qid token_correspondence_BinaryTrees.count))

:named token_correspondence_BinaryTrees.count))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.count@tok
Tm_arrow_fb358500877e73f76d8140b3d0e340b0))

;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.count@tok
@x1)
@x2)
(BinaryTrees.count @x1
@x2))
 

:pattern ((BinaryTrees.count @x1
@x2))
:qid function_token_typing_BinaryTrees.count.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.count@tok))
:qid function_token_typing_BinaryTrees.count))

:named function_token_typing_BinaryTrees.count))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_65cc29ee3f494b5bf69ec22e1362f54b @x0)))
(HasType (BinaryTrees.count @x0
@x1)
Prims.nat))
 

:pattern ((BinaryTrees.count @x0
@x1))
:qid typing_BinaryTrees.count))

:named typing_BinaryTrees.count))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.nat).
;   (forall (x: Prims.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Leaf? t) /\ ~(Node? t) ==> Prims.l_False) /\
;   (~(Leaf? t) ==>
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         (forall (k: Prims.pure_post Prims.int).
;             (forall (x: Prims.int). {:pattern Prims.guard_free (k x)}
;                 ((match b = x with
;                     | true -> 1
;                     | _ -> 0) ==
;                   x ==>
;                   (x << x \/ b << t) /\
;                   (forall (any_result: BinaryTrees.tree).
;                       b == any_result ==>
;                       (forall (any_result: Prims.nat).
;                           BinaryTrees.count x b == any_result ==>
;                           (forall (return_val: Prims.nat).
;                               return_val == BinaryTrees.count x b ==>
;                               BinaryTrees.count x b == return_val ==>
;                               (forall (any_result: Prims.int).
;                                   (match b = x with
;                                     | true -> 1
;                                     | _ -> 0) +
;                                   BinaryTrees.count x b ==
;                                   any_result ==>
;                                   (x << x \/ b << t) /\
;                                   (forall (any_result: BinaryTrees.tree).
;                                       b == any_result ==>
;                                       (forall (any_result: Prims.nat).
;                                           BinaryTrees.count x b == any_result ==>
;                                           (forall (return_val: Prims.nat).
;                                               return_val == BinaryTrees.count x b ==>
;                                               BinaryTrees.count x b == return_val ==>
;                                               (forall (any_result: Prims.int).
;                                                   (match b = x with
;                                                     | true -> 1
;                                                     | _ -> 0) +
;                                                   BinaryTrees.count x b +
;                                                   BinaryTrees.count x b ==
;                                                   any_result ==>
;                                                   (match b = x with
;                                                     | true -> 1
;                                                     | _ -> 0) +
;                                                   BinaryTrees.count x b +
;                                                   BinaryTrees.count x b >=
;                                                   0))))))))) ==>
;                 k x) ==>
;             (b = x == true ==> (forall (any_result: Prims.int). k any_result)) /\
;             (~(b = x = true) ==>
;               (forall (b: Prims.bool). b = x == b ==> (forall (any_result: Prims.int). k any_result)
;               )))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec count`

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
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.nat))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(163,2-165,70)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(163,2-165,70)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(163,2-165,70)
(and (implies 
;; def=BinaryTrees.fst(162,23-162,24); use=BinaryTrees.fst(163,8-163,9)
(and 
;; def=BinaryTrees.fst(162,23-162,24); use=BinaryTrees.fst(163,8-163,9)
(not 
;; def=BinaryTrees.fst(162,23-162,24); use=BinaryTrees.fst(163,8-163,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=BinaryTrees.fst(162,23-162,24); use=BinaryTrees.fst(163,8-163,9)
(not 
;; def=BinaryTrees.fst(162,23-162,24); use=BinaryTrees.fst(163,8-163,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_1696252159950375ed27d3faba8e3379_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(163,2-165,70)
(not 
;; def=BinaryTrees.fst(162,23-162,24); use=BinaryTrees.fst(163,8-163,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Leaf x_1696252159950375ed27d3faba8e3379_1))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(162,23-165,16); use=BinaryTrees.fst(163,8-165,16)
(= x_1696252159950375ed27d3faba8e3379_1
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.int))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x5 Term))
 (! (implies (implies 
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(163,2-165,70)
(= (let ((@lb6 (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)))
(ite (= @lb6
(BoxBool true))
(BoxInt 1)
(BoxInt 0)))
@x5)


;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(163,2-165,70)
(and 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(165,55-165,57)
(or label_2

;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,55-165,57)
(Valid 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,55-165,57)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,55-165,57)
(Valid 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,55-165,57)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
BinaryTrees.tree)

;; def=BinaryTrees.fst(162,23-165,13); use=BinaryTrees.fst(163,2-165,70)
(= @x2
@x6)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.nat)

;; def=BinaryTrees.fst(162,37-165,57); use=BinaryTrees.fst(165,47-165,57)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2)
@x7)
)

;; def=Prims.fst(356,2-356,58); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=BinaryTrees.fst(163,2-165,70)
(= @x8
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2))


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(163,2-165,70)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2)
@x8)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.int)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(163,2-165,70)
(= (Prims.op_Addition (let ((@lb10 (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)))
(ite (= @lb10
(BoxBool true))
(BoxInt 1)
(BoxInt 0)))
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2))
@x9)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(163,2-165,70)
(and 
;; def=BinaryTrees.fst(162,15-165,70); use=BinaryTrees.fst(165,68-165,70)
(or label_3

;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,68-165,70)
(Valid 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,68-165,70)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,68-165,70)
(Valid 
;; def=BinaryTrees.fst(163,2-165,70); use=BinaryTrees.fst(165,68-165,70)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_1696252159950375ed27d3faba8e3379_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
BinaryTrees.tree)

;; def=BinaryTrees.fst(162,23-165,16); use=BinaryTrees.fst(163,2-165,70)
(= @x3
@x10)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.nat)

;; def=BinaryTrees.fst(162,37-165,70); use=BinaryTrees.fst(165,60-165,70)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3)
@x11)
)

;; def=Prims.fst(356,2-356,58); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=BinaryTrees.fst(163,2-165,70)
(= @x12
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3))


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(163,2-165,70)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3)
@x12)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Prims.int)

;; def=BinaryTrees.fst(162,37-165,70); use=BinaryTrees.fst(163,2-165,70)
(= (Prims.op_Addition (Prims.op_Addition (let ((@lb14 (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)))
(ite (= @lb14
(BoxBool true))
(BoxInt 1)
(BoxInt 0)))
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2))
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3))
@x13)
)

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(165,20-165,70)
(or label_4

;; def=Prims.fst(680,18-680,24); use=BinaryTrees.fst(165,20-165,70)
(>= (BoxInt_proj_0 (Prims.op_Addition (Prims.op_Addition (let ((@lb14 (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)))
(ite (= @lb14
(BoxBool true))
(BoxInt 1)
(BoxInt 0)))
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2))
(BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3)))
(BoxInt_proj_0 (BoxInt 0)))
)
)
 
;;no pats
:qid @query.14))
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

;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(163,2-165,70)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(163,2-165,70)
(ApplyTT @x4
@x5)
)
)
 :weight 0


:pattern ((ApplyTT @x4
@x5))
:qid @query.6))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(163,2-165,70)
(and (implies 
;; def=BinaryTrees.fst(165,24-165,29); use=BinaryTrees.fst(165,24-165,29)
(= (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)
(BoxBool true))


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.int)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(163,2-165,70)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(163,2-165,70)
(ApplyTT @x4
@x5)
)
)
 
;;no pats
:qid @query.15))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(163,2-165,70)
(not 
;; def=BinaryTrees.fst(165,24-165,29); use=BinaryTrees.fst(165,24-165,29)
(= (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=BinaryTrees.fst(165,24-165,43); use=BinaryTrees.fst(165,24-165,43)
(= (Prims.op_Equality Prims.int
@x1
x_ae567c2fb75be05905677af440075565_0)
@x5)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(163,2-165,70)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.int)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(163,2-165,70)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(163,2-165,70)
(ApplyTT @x4
@x6)
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
:qid @query.5))
)
 
;;no pats
:qid @query.4))
)
 
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
; QUERY ID: (BinaryTrees.count, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, binder_x_1696252159950375ed27d3faba8e3379_1, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.nat, fuel_guarded_inversion_BinaryTrees.tree, primitive_Prims.op_Addition, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec count


; <Start encoding let rec count>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.count.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.count.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.count (Term Term) Term)
(declare-fun BinaryTrees.count@tok () Term)
;;;;;;;;;;;;;;;;x: Prims.int -> t: tree -> Prims.nat
(declare-fun Tm_arrow_1295582b4002c216a43cad28188a6201 () Term)

; </end encoding let rec count>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.count; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
BinaryTrees.tree))
(HasType (BinaryTrees.count @x0
@x1)
Prims.nat))
 

:pattern ((BinaryTrees.count @x0
@x1))
:qid typing_BinaryTrees.count))

:named typing_BinaryTrees.count))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.count; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(HasType (BinaryTrees.count.fuel_instrumented @u0
@x1
@x2)
Prims.nat))
 

:pattern ((BinaryTrees.count.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_BinaryTrees.count.fuel_instrumented))

:named token_correspondence_BinaryTrees.count.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.count
;;; Fact-ids: Name BinaryTrees.count; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
BinaryTrees.tree))
(= (BinaryTrees.count.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-BinaryTrees.Leaf @lb3)
(BoxInt 0)
(ite (is-BinaryTrees.Node @lb3)
(Prims.op_Addition (Prims.op_Addition (let ((@lb4 (Prims.op_Equality Prims.int
(BinaryTrees.Node_root @lb3)
@x1)))
(ite (= @lb4
(BoxBool true))
(BoxInt 1)
(BoxInt 0)))
(BinaryTrees.count.fuel_instrumented @u0
@x1
(BinaryTrees.Node_left @lb3)))
(BinaryTrees.count.fuel_instrumented @u0
@x1
(BinaryTrees.Node_right @lb3)))
Tm_unit)))))
 :weight 0


:pattern ((BinaryTrees.count.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_BinaryTrees.count.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.count.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.count; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.count.fuel_instrumented (SFuel @u0)
@x1
@x2)
(BinaryTrees.count.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((BinaryTrees.count.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_BinaryTrees.count.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.count.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.count; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(162,8-162,13); use=BinaryTrees.fst(162,8-162,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (BinaryTrees.count @x0
@x1)
(BinaryTrees.count.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((BinaryTrees.count @x0
@x1))
:qid @fuel_correspondence_BinaryTrees.count.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.count.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(168,2-171,66)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : t: BinaryTrees.tree{BinaryTrees.count x t > 0} (t: BinaryTrees.tree{BinaryTrees.count x t > 0})
(declare-fun x_d1cff3104716498542a69f317fa52b6b_1 () Term)
(declare-fun Tm_refine_148e968f8a93041c3de772ced753082c () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_148e968f8a93041c3de772ced753082c
Tm_type)
:named refinement_kinding_Tm_refine_148e968f8a93041c3de772ced753082c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,23-167,46); use=BinaryTrees.fst(167,23-167,46)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_148e968f8a93041c3de772ced753082c)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(167,31-167,44)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_148e968f8a93041c3de772ced753082c))
:qid refinement_interpretation_Tm_refine_148e968f8a93041c3de772ced753082c))

:named refinement_interpretation_Tm_refine_148e968f8a93041c3de772ced753082c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_148e968f8a93041c3de772ced753082c
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_148e968f8a93041c3de772ced753082c))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_148e968f8a93041c3de772ced753082c))
;;;;;;;;;;;;;;;;binder_x_d1cff3104716498542a69f317fa52b6b_1
;;; Fact-ids: 
(assert (! (HasType x_d1cff3104716498542a69f317fa52b6b_1
Tm_refine_148e968f8a93041c3de772ced753082c)
:named binder_x_d1cff3104716498542a69f317fa52b6b_1))
(declare-fun Tm_refine_bc33cd752e07620c014b172500d99ddf (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,24-171,66); use=BinaryTrees.fst(167,24-171,66)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_bc33cd752e07620c014b172500d99ddf @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_bc33cd752e07620c014b172500d99ddf @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_bc33cd752e07620c014b172500d99ddf))

:named refinement_kinding_Tm_refine_bc33cd752e07620c014b172500d99ddf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,24-171,66); use=BinaryTrees.fst(167,24-171,66)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_bc33cd752e07620c014b172500d99ddf @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(167,31-167,44)
(> (BoxInt_proj_0 (BinaryTrees.count @x2
@x1))
(BoxInt_proj_0 (BoxInt 0)))


;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(168,2-171,66)

;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(168,2-171,66)
(Valid 
;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(168,2-171,66)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_d1cff3104716498542a69f317fa52b6b_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_bc33cd752e07620c014b172500d99ddf @x2)))
:qid refinement_interpretation_Tm_refine_bc33cd752e07620c014b172500d99ddf))

:named refinement_interpretation_Tm_refine_bc33cd752e07620c014b172500d99ddf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_bc33cd752e07620c014b172500d99ddf
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,24-171,66); use=BinaryTrees.fst(167,24-171,66)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_bc33cd752e07620c014b172500d99ddf @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_bc33cd752e07620c014b172500d99ddf @x0))))
:qid haseqTm_refine_bc33cd752e07620c014b172500d99ddf))

:named haseqTm_refine_bc33cd752e07620c014b172500d99ddf))
(declare-fun BinaryTrees.remove (Term Term) Term)

;;;;;;;;;;;;;;;;x: Prims.int -> t: (t: tree{count x t > 0}){t << t} -> Prims.Tot tree
(declare-fun Tm_arrow_87e2a7216f2ebca7731f904657e5552e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_87e2a7216f2ebca7731f904657e5552e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_87e2a7216f2ebca7731f904657e5552e
Tm_type)
:named kinding_Tm_arrow_87e2a7216f2ebca7731f904657e5552e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,18-171,66); use=BinaryTrees.fst(167,18-171,66)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_87e2a7216f2ebca7731f904657e5552e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_87e2a7216f2ebca7731f904657e5552e))
:qid BinaryTrees_pre_typing_Tm_arrow_87e2a7216f2ebca7731f904657e5552e))

:named BinaryTrees_pre_typing_Tm_arrow_87e2a7216f2ebca7731f904657e5552e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_87e2a7216f2ebca7731f904657e5552e
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,18-171,66); use=BinaryTrees.fst(167,18-171,66)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_87e2a7216f2ebca7731f904657e5552e)
(and 
;; def=BinaryTrees.fst(167,18-171,66); use=BinaryTrees.fst(167,18-171,66)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_bc33cd752e07620c014b172500d99ddf @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
BinaryTrees.tree))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid BinaryTrees_interpretation_Tm_arrow_87e2a7216f2ebca7731f904657e5552e.1))

(IsTotFun @x0)

;; def=BinaryTrees.fst(167,18-171,66); use=BinaryTrees.fst(167,18-171,66)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid BinaryTrees_interpretation_Tm_arrow_87e2a7216f2ebca7731f904657e5552e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_87e2a7216f2ebca7731f904657e5552e))
:qid BinaryTrees_interpretation_Tm_arrow_87e2a7216f2ebca7731f904657e5552e))

:named BinaryTrees_interpretation_Tm_arrow_87e2a7216f2ebca7731f904657e5552e))
(declare-fun BinaryTrees.remove@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.remove@tok
@x0)
@x1)
(BinaryTrees.remove @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT BinaryTrees.remove@tok
@x0)
@x1))
:qid token_correspondence_BinaryTrees.remove))

:named token_correspondence_BinaryTrees.remove))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType BinaryTrees.remove@tok
Tm_arrow_87e2a7216f2ebca7731f904657e5552e))

;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT BinaryTrees.remove@tok
@x1)
@x2)
(BinaryTrees.remove @x1
@x2))
 

:pattern ((BinaryTrees.remove @x1
@x2))
:qid function_token_typing_BinaryTrees.remove.1))
)
 

:pattern ((ApplyTT @x0
BinaryTrees.remove@tok))
:qid function_token_typing_BinaryTrees.remove))

:named function_token_typing_BinaryTrees.remove))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_bc33cd752e07620c014b172500d99ddf @x0)))
(HasType (BinaryTrees.remove @x0
@x1)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.remove @x0
@x1))
:qid typing_BinaryTrees.remove))

:named typing_BinaryTrees.remove))
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : (~(Node? t) ==> Prims.l_False) /\
; (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;     t == BinaryTrees.Node b b b ==>
;     (forall (k: Prims.pure_post BinaryTrees.tree).
;         (forall (x: BinaryTrees.tree). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;         (x = b == true ==> BinaryTrees.count x t > 0 ==> Node? t) /\
;         (~(x = b = true) ==>
;           (forall (b: Prims.bool).
;               x = b == b ==>
;               (forall (k: Prims.pure_post BinaryTrees.tree).
;                   (forall (x: BinaryTrees.tree). {:pattern Prims.guard_free (k x)}
;                       Prims.auto_squash (k x)) ==>
;                   (BinaryTrees.count x b > 0 == true ==> BinaryTrees.count x b > 0 /\ b << t) /\
;                   (~(BinaryTrees.count x b > 0 = true) ==>
;                     (forall (b: Prims.bool).
;                         BinaryTrees.count x b > 0 == b ==> BinaryTrees.count x b > 0 /\ b << t))))))
; )


; Context: While encoding a query
; While typechecking the top-level declaration `let rec remove`

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
;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(168,2-171,66)
(and (implies 
;; def=BinaryTrees.fst(167,24-167,25); use=BinaryTrees.fst(168,8-168,9)
(not 
;; def=BinaryTrees.fst(167,24-167,25); use=BinaryTrees.fst(168,8-168,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_d1cff3104716498542a69f317fa52b6b_1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x1 Term))
 (! (implies (HasType @x1
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
BinaryTrees.tree)

;; def=BinaryTrees.fst(167,24-169,16); use=BinaryTrees.fst(168,8-169,16)
(= x_d1cff3104716498542a69f317fa52b6b_1
(BinaryTrees.Node @x0
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post BinaryTrees.tree))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(168,2-171,66)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(168,2-171,66)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.4))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(168,2-171,66)
(and (implies (and 
;; def=BinaryTrees.fst(169,23-169,28); use=BinaryTrees.fst(169,23-169,28)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x0)
(BoxBool true))


;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(169,46-169,47)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
x_d1cff3104716498542a69f317fa52b6b_1))
(BoxInt_proj_0 (BoxInt 0)))
)

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(169,46-169,47)
(or label_2

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(169,46-169,47)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_d1cff3104716498542a69f317fa52b6b_1))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(168,2-171,66)
(not 
;; def=BinaryTrees.fst(169,23-169,28); use=BinaryTrees.fst(169,23-169,28)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x0)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=BinaryTrees.fst(169,23-171,66); use=BinaryTrees.fst(169,23-171,66)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x0)
@x4)
)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post BinaryTrees.tree))

;; def=Prims.fst(402,27-402,88); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x6 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(168,2-171,66)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(168,2-171,66)
(ApplyTT @x5
@x6)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid @query.7))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(168,2-171,66)
(and (implies 
;; def=BinaryTrees.fst(170,23-170,37); use=BinaryTrees.fst(170,23-170,37)
(= (Prims.op_GreaterThan (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxInt 0))
(BoxBool true))


;; def=BinaryTrees.fst(167,31-171,66); use=BinaryTrees.fst(170,60-170,62)
(and 
;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(170,60-170,62)
(or label_3

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(170,60-170,62)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(170,60-170,62)
(or label_4

;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(170,60-170,62)
(Valid 
;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(170,60-170,62)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
x_d1cff3104716498542a69f317fa52b6b_1)
)
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(168,2-171,66)
(not 
;; def=BinaryTrees.fst(170,23-170,37); use=BinaryTrees.fst(170,23-170,37)
(= (Prims.op_GreaterThan (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxInt 0))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(168,2-171,66)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=BinaryTrees.fst(170,23-171,66); use=BinaryTrees.fst(170,23-171,66)
(= (Prims.op_GreaterThan (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxInt 0))
@x6)
)

;; def=BinaryTrees.fst(167,31-171,66); use=BinaryTrees.fst(171,63-171,65)
(and 
;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(171,63-171,65)
(or label_5

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(171,63-171,65)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(171,63-171,65)
(or label_6

;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(171,63-171,65)
(Valid 
;; def=BinaryTrees.fst(168,2-171,66); use=BinaryTrees.fst(171,63-171,65)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_d1cff3104716498542a69f317fa52b6b_1)
)
)
)
)
 
;;no pats
:qid @query.8))
))
)
 
;;no pats
:qid @query.6)))
 
;;no pats
:qid @query.5))
))
)
 
;;no pats
:qid @query.3)))
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
)
 
;;no pats
:qid @query))
)
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
; QUERY ID: (BinaryTrees.remove, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.count.fuel_instrumented, @fuel_irrelevance_BinaryTrees.count.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, Prims_pretyping_ae567c2fb75be05905677af440075565, binder_x_ae567c2fb75be05905677af440075565_0, binder_x_d1cff3104716498542a69f317fa52b6b_1, constructor_distinct_BinaryTrees.Node, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_with_fuel_BinaryTrees.count.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, function_token_typing_Prims.__cache_version_number__, int_inversion, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_GreaterThan, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_148e968f8a93041c3de772ced753082c, subterm_ordering_BinaryTrees.Node, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec remove


; <Start encoding let rec remove>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun BinaryTrees.remove.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun BinaryTrees.remove.fuel_instrumented_token () Term)
(declare-fun BinaryTrees.remove (Term Term) Term)
(declare-fun BinaryTrees.remove@tok () Term)
(declare-fun Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 (Term) Term)


;;;;;;;;;;;;;;;;x: Prims.int -> t: tree{count x t > 0} -> Prims.Tot tree
(declare-fun Tm_arrow_dad79e295ff8efcacf88011a6b68814c () Term)

; </end encoding let rec remove>


; encoding sigelt #reset-options "--z3rlimit 20 --initial_fuel 2 --initial_ifuel 2"


; <Skipped #reset-options "--z3rlimit 20 --initial_fuel 2 --initial_ifuel 2"/>

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
(push) ;; push{2

; Starting query at BinaryTrees.fst(181,117-184,27)

;;;;;;;;;;;;;;;;t : t: BinaryTrees.tree{Node? t} (t: BinaryTrees.tree{Node? t})
(declare-fun x_4f12cf247a1f2a0cd3974332a65f3b77_0 () Term)

;;;;;;;;;;;;;;;;binder_x_4f12cf247a1f2a0cd3974332a65f3b77_0
;;; Fact-ids: 
(assert (! (HasType x_4f12cf247a1f2a0cd3974332a65f3b77_0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
:named binder_x_4f12cf247a1f2a0cd3974332a65f3b77_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.count_remove_root (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.count_remove_root@tok () Term)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(179,4-181,115); use=BinaryTrees.fst(181,117-184,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : (forall (_: Prims.squash Prims.l_True).
;     (*  - Could not prove post-condition
; *)
;     BinaryTrees.count t.root (BinaryTrees.remove_root t) = BinaryTrees.count t.root t - 1 ==>
;     (forall (y: Prims.int). y <> t.root ==> Prims.hasEq Prims.nat)) /\
; (forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         BinaryTrees.count t.root (BinaryTrees.remove_root t) = BinaryTrees.count t.root t - 1 /\
;         (forall (y: Prims.int). {:pattern BinaryTrees.count y (BinaryTrees.remove_root t)}
;             y <> t.root ==> BinaryTrees.count y (BinaryTrees.remove_root t) = BinaryTrees.count y t) ==>
;         p pure_result) ==>
;     (~(Node? t) ==> Prims.l_False) /\
;     (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;         t == BinaryTrees.Node b b b ==>
;         (forall (k: Prims.pure_post Prims.unit).
;             (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;             (Leaf? b == true ==> (forall (any_result: Prims.unit). k any_result)) /\
;             (~(Leaf? b = true) ==>
;               (forall (b: Prims.bool).
;                   Leaf? b == b ==>
;                   Node? b /\ b << t /\
;                   (forall (any_result: BinaryTrees.tree).
;                       b == any_result ==>
;                       (forall (pure_result: Prims.unit).
;                           BinaryTrees.count b.root (BinaryTrees.remove_root b) =
;                           BinaryTrees.count b.root b - 1 /\
;                           (forall (y: Prims.int).
;                               {:pattern BinaryTrees.count y (BinaryTrees.remove_root b)}
;                               y <> b.root ==>
;                               BinaryTrees.count y (BinaryTrees.remove_root b) =
;                               BinaryTrees.count y b) ==>
;                           k pure_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec count_remove_root`

(push) ;; push{0

; <fuel='2' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(and 
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)

;; def=BinaryTrees.fst(180,19-180,60); use=BinaryTrees.fst(181,117-184,27)
(= (BinaryTrees.count (BinaryTrees.__proj__Node__item__root x_4f12cf247a1f2a0cd3974332a65f3b77_0)
(BinaryTrees.remove_root x_4f12cf247a1f2a0cd3974332a65f3b77_0))
(Prims.op_Subtraction (BinaryTrees.count (BinaryTrees.__proj__Node__item__root x_4f12cf247a1f2a0cd3974332a65f3b77_0)
x_4f12cf247a1f2a0cd3974332a65f3b77_0)
(BoxInt 1)))
)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.int)

;; def=BinaryTrees.fst(181,66-181,72); use=BinaryTrees.fst(181,117-184,27)
(not (= @x1
(BinaryTrees.__proj__Node__item__root x_4f12cf247a1f2a0cd3974332a65f3b77_0)))
)

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(181,103-181,108)
(or label_1

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(181,117-184,27)
(Prims.hasEq Prims.nat)
)
)
)
 
;;no pats
:qid @query.1))
)
 
;;no pats
:qid @query))


;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x1 Term))
 (! (implies (and (or label_2
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(180,19-180,60); use=BinaryTrees.fst(181,117-184,27)
(or label_3

;; def=BinaryTrees.fst(180,19-180,60); use=BinaryTrees.fst(181,117-184,27)
(= (BinaryTrees.count (BinaryTrees.__proj__Node__item__root x_4f12cf247a1f2a0cd3974332a65f3b77_0)
(BinaryTrees.remove_root x_4f12cf247a1f2a0cd3974332a65f3b77_0))
(Prims.op_Subtraction (BinaryTrees.count (BinaryTrees.__proj__Node__item__root x_4f12cf247a1f2a0cd3974332a65f3b77_0)
x_4f12cf247a1f2a0cd3974332a65f3b77_0)
(BoxInt 1)))
)


;; def=BinaryTrees.fst(181,19-181,113); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Prims.int)

;; def=BinaryTrees.fst(181,66-181,72); use=BinaryTrees.fst(181,117-184,27)
(not (= @x2
(BinaryTrees.__proj__Node__item__root x_4f12cf247a1f2a0cd3974332a65f3b77_0)))
)

;; def=BinaryTrees.fst(181,77-181,112); use=BinaryTrees.fst(181,117-184,27)
(or label_4

;; def=BinaryTrees.fst(181,77-181,112); use=BinaryTrees.fst(181,117-184,27)
(= (BinaryTrees.count @x2
(BinaryTrees.remove_root x_4f12cf247a1f2a0cd3974332a65f3b77_0))
(BinaryTrees.count @x2
x_4f12cf247a1f2a0cd3974332a65f3b77_0))
)
)
 

:pattern ((BinaryTrees.count.fuel_instrumented ZFuel
@x2
(BinaryTrees.remove_root.fuel_instrumented ZFuel
x_4f12cf247a1f2a0cd3974332a65f3b77_0)))
:qid @query.4))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(181,117-184,27)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(181,117-184,27)
(ApplyTT @x0
@x1)
)
)
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(181,117-184,27)
(and (implies 
;; def=BinaryTrees.fst(182,6-182,18); use=BinaryTrees.fst(182,6-182,18)
(not 
;; def=BinaryTrees.fst(182,6-182,18); use=BinaryTrees.fst(182,6-182,18)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_4f12cf247a1f2a0cd3974332a65f3b77_0))
)

label_5)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(182,6-182,18); use=BinaryTrees.fst(182,6-182,18)
(= x_4f12cf247a1f2a0cd3974332a65f3b77_0
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x5 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(181,117-184,27)
(ApplyTT @x0
@x5)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(181,117-184,27)
(ApplyTT @x4
@x5)
)
)
 :weight 0


:pattern ((ApplyTT @x4
@x5))
:qid @query.9))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(181,117-184,27)
(and (implies 
;; def=BinaryTrees.fst(183,5-183,13); use=BinaryTrees.fst(183,5-183,13)
(= (BinaryTrees.uu___is_Leaf @x2)
(BoxBool true))


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=Prims.fst(451,90-451,102); use=BinaryTrees.fst(181,117-184,27)
(ApplyTT @x4
@x5)
)
)
 
;;no pats
:qid @query.10))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(181,117-184,27)
(not 
;; def=BinaryTrees.fst(183,5-183,13); use=BinaryTrees.fst(183,5-183,13)
(= (BinaryTrees.uu___is_Leaf @x2)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=BinaryTrees.fst(183,5-184,27); use=BinaryTrees.fst(183,5-184,27)
(= (BinaryTrees.uu___is_Leaf @x2)
@x5)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(181,117-184,27)
(and 
;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(184,25-184,27)
(or label_6

;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(184,25-184,27)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x2))
)


;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(184,25-184,27)
(or label_7

;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(184,25-184,27)
(Valid 
;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(184,25-184,27)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_4f12cf247a1f2a0cd3974332a65f3b77_0)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(181,117-184,27)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
BinaryTrees.tree)

;; def=BinaryTrees.fst(178,27-182,15); use=BinaryTrees.fst(181,117-184,27)
(= @x2
@x6)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(184,7-184,24)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=BinaryTrees.fst(180,19-180,60); use=BinaryTrees.fst(184,7-184,24)
(= (BinaryTrees.count (BinaryTrees.__proj__Node__item__root @x2)
(BinaryTrees.remove_root @x2))
(Prims.op_Subtraction (BinaryTrees.count (BinaryTrees.__proj__Node__item__root @x2)
@x2)
(BoxInt 1)))


;; def=BinaryTrees.fst(181,19-181,113); use=BinaryTrees.fst(184,7-184,24)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.int)

;; def=BinaryTrees.fst(181,66-181,72); use=BinaryTrees.fst(184,7-184,24)
(not (= @x8
(BinaryTrees.__proj__Node__item__root @x2)))
)

;; def=BinaryTrees.fst(181,77-181,112); use=BinaryTrees.fst(184,7-184,24)
(= (BinaryTrees.count @x8
(BinaryTrees.remove_root @x2))
(BinaryTrees.count @x8
@x2))
)
 

:pattern ((BinaryTrees.count.fuel_instrumented ZFuel
@x8
(BinaryTrees.remove_root.fuel_instrumented ZFuel
@x2)))
:qid @query.14))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(184,7-184,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(184,7-184,24)
(ApplyTT @x4
@x7)
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
 
;;no pats
:qid @query.5))
)
)
 
;;no pats
:qid @query.2))
)
)
:named @query))
(set-option :rlimit 10893120)
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
; QUERY ID: (BinaryTrees.count_remove_root, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.count.fuel_instrumented, @fuel_correspondence_BinaryTrees.remove_root.fuel_instrumented, @fuel_irrelevance_BinaryTrees.count.fuel_instrumented, @fuel_irrelevance_BinaryTrees.remove_root.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, Prims_pretyping_ae567c2fb75be05905677af440075565, binder_x_4f12cf247a1f2a0cd3974332a65f3b77_0, constructor_distinct_BinaryTrees.Node, data_elim_BinaryTrees.Node, disc_equation_BinaryTrees.Leaf, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.eqtype, equation_Prims.nat, equation_with_fuel_BinaryTrees.count.fuel_instrumented, equation_with_fuel_BinaryTrees.remove_root.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, function_token_typing_Prims.__cache_version_number__, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, int_typing, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_Subtraction, proj_equation_BinaryTrees.Node_root, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185, subterm_ordering_BinaryTrees.Node, typing_BinaryTrees.count, typing_BinaryTrees.remove_root, typing_Prims.int, typing_tok_BinaryTrees.Leaf@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(178,0-184,27)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

(declare-fun Tm_refine_7702a8600ab9d6f336da7b64669bbf33 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(178,27-184,27); use=BinaryTrees.fst(178,27-184,27)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_7702a8600ab9d6f336da7b64669bbf33))

:named refinement_kinding_Tm_refine_7702a8600ab9d6f336da7b64669bbf33))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(178,27-184,27); use=BinaryTrees.fst(178,27-184,27)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(178,34-178,41)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))


;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,117-184,27)

;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,117-184,27)
(Valid 
;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,117-184,27)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x2)))
:qid refinement_interpretation_Tm_refine_7702a8600ab9d6f336da7b64669bbf33))

:named refinement_interpretation_Tm_refine_7702a8600ab9d6f336da7b64669bbf33))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7702a8600ab9d6f336da7b64669bbf33
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(178,27-184,27); use=BinaryTrees.fst(178,27-184,27)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x0))))
:qid haseqTm_refine_7702a8600ab9d6f336da7b64669bbf33))

:named haseqTm_refine_7702a8600ab9d6f336da7b64669bbf33))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(179,4-181,115); use=BinaryTrees.fst(179,4-179,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))


; Encoding query formula : forall (t: BinaryTrees.tree{Node? t})
;   (t: (t: BinaryTrees.tree{Node? t}){t << t})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   (Node? t /\ t << t ==> Node? t) /\
;   (forall (any_result: t: (t: BinaryTrees.tree{Node? t}){t << t}).
;       t == any_result ==>
;       (forall (any_result: Prims.int).
;           t.root == any_result ==>
;           (Node? t /\ t << t ==> Node? t) /\
;           (BinaryTrees.count t.root (BinaryTrees.remove_root t) = BinaryTrees.count t.root t - 1 ==>
;             (forall (y: Prims.int).
;                 y <> t.root ==>
;                 Prims.hasEq Prims.nat /\
;                 (forall (any_result: Type0).
;                     Prims.nat == any_result ==> Node? t /\ t << t ==> Node? t)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec count_remove_root`

(push) ;; push{0

; <fuel='2' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel ZFuel)))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(178,0-184,27)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_refine_ea1b5a9ff57143ba5e87eabf5571f185)
(HasType @x1
(Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(179,19-181,114)
(and (implies 
;; def=BinaryTrees.fst(178,34-184,27); use=BinaryTrees.fst(179,39-179,40)
(and 
;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(179,39-179,40)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))


;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(179,39-179,40)

;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(179,39-179,40)
(Valid 
;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(179,39-179,40)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x0)
)

)


;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(179,39-179,40)
(or label_1

;; def=BinaryTrees.fst(20,4-20,8); use=BinaryTrees.fst(179,39-179,40)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))
)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(179,19-181,114)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Tm_refine_7702a8600ab9d6f336da7b64669bbf33 @x0))

;; def=BinaryTrees.fst(20,4-178,28); use=BinaryTrees.fst(179,19-181,114)
(= @x1
@x3)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(179,19-181,114)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.int)

;; def=BinaryTrees.fst(179,24-179,40); use=BinaryTrees.fst(179,24-179,40)
(= (BinaryTrees.__proj__Node__item__root @x1)
@x4)
)

;; def=dummy(0,0-0,0); use=BinaryTrees.fst(180,19-181,113)
(and (implies 
;; def=BinaryTrees.fst(178,34-184,27); use=BinaryTrees.fst(180,41-180,42)
(and 
;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(180,41-180,42)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))


;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(180,41-180,42)

;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(180,41-180,42)
(Valid 
;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(180,41-180,42)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x0)
)

)


;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(180,41-180,42)
(or label_2

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(180,41-180,42)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))
)
)
(implies 
;; def=BinaryTrees.fst(180,19-180,60); use=BinaryTrees.fst(180,19-180,60)
(= (BinaryTrees.count (BinaryTrees.__proj__Node__item__root @x1)
(BinaryTrees.remove_root @x1))
(Prims.op_Subtraction (BinaryTrees.count (BinaryTrees.__proj__Node__item__root @x1)
@x1)
(BoxInt 1)))


;; def=dummy(0,0-0,0); use=BinaryTrees.fst(180,19-181,113)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.int)

;; def=BinaryTrees.fst(181,66-181,72); use=BinaryTrees.fst(181,66-181,72)
(not (= @x5
(BinaryTrees.__proj__Node__item__root @x1)))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(181,66-181,112)
(and 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(181,103-181,108)
(or label_3

;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(181,103-181,108)
(Valid 
;; def=Prims.fst(73,23-73,30); use=BinaryTrees.fst(181,103-181,108)
(Prims.hasEq Prims.nat)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(181,66-181,112)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_type)

;; def=Prims.fst(588,31-588,32); use=BinaryTrees.fst(181,66-181,112)
(= Prims.nat
@x6)


;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(181,98-181,99)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))


;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,98-181,99)

;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,98-181,99)
(Valid 
;; def=BinaryTrees.fst(181,117-184,27); use=BinaryTrees.fst(181,98-181,99)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x0)
)

)

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(181,98-181,99)
(or label_4

;; def=BinaryTrees.fst(140,25-140,32); use=BinaryTrees.fst(181,98-181,99)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node @x1))
)
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query.3))
))
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
)
)
 
;;no pats
:qid @query))
)
:named @query))
(set-option :rlimit 10893120)
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
; QUERY ID: (BinaryTrees.count_remove_root, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec count_remove_root


; <Start encoding let rec count_remove_root>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.count_remove_root (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.count_remove_root@tok () Term)

; </end encoding let rec count_remove_root>


; encoding sigelt #reset-options


; <Skipped #reset-options/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x0)))
(HasType (BinaryTrees.remove @x0
@x1)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.remove @x0
@x1))
:qid typing_BinaryTrees.remove))

:named typing_BinaryTrees.remove))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x1)))
(HasType (BinaryTrees.remove.fuel_instrumented @u0
@x1
@x2)
BinaryTrees.tree))
 

:pattern ((BinaryTrees.remove.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_BinaryTrees.remove.fuel_instrumented))

:named token_correspondence_BinaryTrees.remove.fuel_instrumented))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,23-167,46); use=BinaryTrees.fst(167,23-167,46)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_2052a6fdd62bfbe2a677dbc498408e03))

:named refinement_kinding_Tm_refine_2052a6fdd62bfbe2a677dbc498408e03))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,23-167,46); use=BinaryTrees.fst(167,23-167,46)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x2))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(167,31-167,44)
(> (BoxInt_proj_0 (BinaryTrees.count @x2
@x1))
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x2)))
:qid refinement_interpretation_Tm_refine_2052a6fdd62bfbe2a677dbc498408e03))

:named refinement_interpretation_Tm_refine_2052a6fdd62bfbe2a677dbc498408e03))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2052a6fdd62bfbe2a677dbc498408e03
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,23-167,46); use=BinaryTrees.fst(167,23-167,46)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x0)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x0))))
:qid haseqTm_refine_2052a6fdd62bfbe2a677dbc498408e03))

:named haseqTm_refine_2052a6fdd62bfbe2a677dbc498408e03))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: BinaryTrees.remove
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x1)))
(= (BinaryTrees.remove.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-BinaryTrees.Node @lb3)
(let ((@lb4 (Prims.op_Equality Prims.int
@x1
(BinaryTrees.Node_root @lb3))))
(ite (= @lb4
(BoxBool true))
(BinaryTrees.remove_root @x2)
(let ((@lb5 (Prims.op_GreaterThan (BinaryTrees.count @x1
(BinaryTrees.Node_left @lb3))
(BoxInt 0))))
(ite (= @lb5
(BoxBool true))
(BinaryTrees.Node (BinaryTrees.Node_root @lb3)
(BinaryTrees.remove.fuel_instrumented @u0
@x1
(BinaryTrees.Node_left @lb3))
(BinaryTrees.Node_right @lb3))
(BinaryTrees.Node (BinaryTrees.Node_root @lb3)
(BinaryTrees.Node_left @lb3)
(BinaryTrees.remove.fuel_instrumented @u0
@x1
(BinaryTrees.Node_right @lb3)))))))
Tm_unit))))
 :weight 0


:pattern ((BinaryTrees.remove.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_BinaryTrees.remove.fuel_instrumented))

:named equation_with_fuel_BinaryTrees.remove.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (BinaryTrees.remove.fuel_instrumented (SFuel @u0)
@x1
@x2)
(BinaryTrees.remove.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((BinaryTrees.remove.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_BinaryTrees.remove.fuel_instrumented))

:named @fuel_irrelevance_BinaryTrees.remove.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name BinaryTrees.remove; Namespace BinaryTrees
(assert (! 
;; def=BinaryTrees.fst(167,8-167,14); use=BinaryTrees.fst(167,8-167,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (BinaryTrees.remove @x0
@x1)
(BinaryTrees.remove.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((BinaryTrees.remove @x0
@x1))
:qid @fuel_correspondence_BinaryTrees.remove.fuel_instrumented))

:named @fuel_correspondence_BinaryTrees.remove.fuel_instrumented))
(push) ;; push{2

; Starting query at BinaryTrees.fst(190,2-193,60)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;t : t: BinaryTrees.tree{BinaryTrees.count x t > 0} (t: BinaryTrees.tree{BinaryTrees.count x t > 0})
(declare-fun x_d1cff3104716498542a69f317fa52b6b_1 () Term)
(declare-fun Tm_refine_148e968f8a93041c3de772ced753082c () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_148e968f8a93041c3de772ced753082c
Tm_type)
:named refinement_kinding_Tm_refine_148e968f8a93041c3de772ced753082c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(187,29-187,52); use=BinaryTrees.fst(187,29-187,52)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_148e968f8a93041c3de772ced753082c)
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(187,37-187,50)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_148e968f8a93041c3de772ced753082c))
:qid refinement_interpretation_Tm_refine_148e968f8a93041c3de772ced753082c))

:named refinement_interpretation_Tm_refine_148e968f8a93041c3de772ced753082c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_148e968f8a93041c3de772ced753082c
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_148e968f8a93041c3de772ced753082c))
(Valid (Prims.hasEq BinaryTrees.tree)))
:named haseqTm_refine_148e968f8a93041c3de772ced753082c))
;;;;;;;;;;;;;;;;binder_x_d1cff3104716498542a69f317fa52b6b_1
;;; Fact-ids: 
(assert (! (HasType x_d1cff3104716498542a69f317fa52b6b_1
Tm_refine_148e968f8a93041c3de772ced753082c)
:named binder_x_d1cff3104716498542a69f317fa52b6b_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun BinaryTrees.count_remove (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun BinaryTrees.count_remove@tok () Term)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       BinaryTrees.count x (BinaryTrees.remove x t) = BinaryTrees.count x t - 1 ==> p pure_result) ==>
;   (~(Node? t) ==> Prims.l_False) /\
;   (forall (b: Prims.int) (b: BinaryTrees.tree) (b: BinaryTrees.tree).
;       t == BinaryTrees.Node b b b ==>
;       (forall (k: Prims.pure_post Prims.unit).
;           (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;           (x = b == true ==>
;             (BinaryTrees.count x t > 0 ==> Node? t) /\
;             (forall (any_result: t: BinaryTrees.tree{BinaryTrees.count x t > 0}).
;                 t == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     BinaryTrees.count t.root (BinaryTrees.remove_root t) =
;                     BinaryTrees.count t.root t - 1 /\
;                     (forall (y: Prims.int).
;                         {:pattern BinaryTrees.count y (BinaryTrees.remove_root t)}
;                         y <> t.root ==>
;                         BinaryTrees.count y (BinaryTrees.remove_root t) = BinaryTrees.count y t) ==>
;                     k pure_result))) /\
;           (~(x = b = true) ==>
;             (forall (b: Prims.bool).
;                 x = b == b ==>
;                 (forall (k: Prims.pure_post Prims.unit).
;                     (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} k x ==> k x) ==>
;                     (BinaryTrees.count x b > 0 == true ==>
;                       BinaryTrees.count x b > 0 /\ b << t /\
;                       (forall (any_result: BinaryTrees.tree).
;                           b == any_result ==>
;                           (forall (pure_result: Prims.unit).
;                               BinaryTrees.count x (BinaryTrees.remove x b) =
;                               BinaryTrees.count x b - 1 ==>
;                               k pure_result))) /\
;                     (~(BinaryTrees.count x b > 0 = true) ==>
;                       (forall (b: Prims.bool).
;                           BinaryTrees.count x b > 0 == b ==>
;                           BinaryTrees.count x b > 0 /\ b << t /\
;                           (forall (any_result: BinaryTrees.tree).
;                               b == any_result ==>
;                               (forall (pure_result: Prims.unit).
;                                   BinaryTrees.count x (BinaryTrees.remove x b) =
;                                   BinaryTrees.count x b - 1 ==>
;                                   k pure_result)))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec count_remove`

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
;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=BinaryTrees.fst(189,19-189,57); use=BinaryTrees.fst(190,2-193,60)
(or label_2

;; def=BinaryTrees.fst(189,19-189,57); use=BinaryTrees.fst(190,2-193,60)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
(BinaryTrees.remove x_ae567c2fb75be05905677af440075565_0
x_d1cff3104716498542a69f317fa52b6b_1))
(Prims.op_Subtraction (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
x_d1cff3104716498542a69f317fa52b6b_1)
(BoxInt 1)))
)
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(190,2-193,60)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(190,2-193,60)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(190,2-193,60)
(and (implies 
;; def=BinaryTrees.fst(187,30-187,31); use=BinaryTrees.fst(190,8-190,9)
(not 
;; def=BinaryTrees.fst(187,30-187,31); use=BinaryTrees.fst(190,8-190,9)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_d1cff3104716498542a69f317fa52b6b_1))
)

label_3)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x2 Term))
 (! (implies (HasType @x2
BinaryTrees.tree)

;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
BinaryTrees.tree)

;; def=BinaryTrees.fst(187,30-191,16); use=BinaryTrees.fst(190,8-191,16)
(= x_d1cff3104716498542a69f317fa52b6b_1
(BinaryTrees.Node @x1
@x2
@x3))
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x5 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(190,2-193,60)
(ApplyTT @x0
@x5)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(190,2-193,60)
(ApplyTT @x4
@x5)
)
)
 :weight 0


:pattern ((ApplyTT @x4
@x5))
:qid @query.6))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(190,2-193,60)
(and (implies 
;; def=BinaryTrees.fst(191,23-191,28); use=BinaryTrees.fst(191,23-191,28)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(190,2-193,60)
(and (implies 
;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(191,52-191,53)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
x_d1cff3104716498542a69f317fa52b6b_1))
(BoxInt_proj_0 (BoxInt 0)))


;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(191,52-191,53)
(or label_4

;; def=BinaryTrees.fst(178,34-178,41); use=BinaryTrees.fst(191,52-191,53)
(BoxBool_proj_0 (BinaryTrees.uu___is_Node x_d1cff3104716498542a69f317fa52b6b_1))
)
)

;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_refine_148e968f8a93041c3de772ced753082c)

;; def=BinaryTrees.fst(178,27-187,31); use=BinaryTrees.fst(190,2-193,60)
(= x_d1cff3104716498542a69f317fa52b6b_1
@x5)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(191,34-191,51)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=BinaryTrees.fst(180,19-180,60); use=BinaryTrees.fst(191,34-191,51)
(= (BinaryTrees.count (BinaryTrees.__proj__Node__item__root x_d1cff3104716498542a69f317fa52b6b_1)
(BinaryTrees.remove_root x_d1cff3104716498542a69f317fa52b6b_1))
(Prims.op_Subtraction (BinaryTrees.count (BinaryTrees.__proj__Node__item__root x_d1cff3104716498542a69f317fa52b6b_1)
x_d1cff3104716498542a69f317fa52b6b_1)
(BoxInt 1)))


;; def=BinaryTrees.fst(181,19-181,113); use=BinaryTrees.fst(191,34-191,51)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.int)

;; def=BinaryTrees.fst(181,66-181,72); use=BinaryTrees.fst(191,34-191,51)
(not (= @x7
(BinaryTrees.__proj__Node__item__root x_d1cff3104716498542a69f317fa52b6b_1)))
)

;; def=BinaryTrees.fst(181,77-181,112); use=BinaryTrees.fst(191,34-191,51)
(= (BinaryTrees.count @x7
(BinaryTrees.remove_root x_d1cff3104716498542a69f317fa52b6b_1))
(BinaryTrees.count @x7
x_d1cff3104716498542a69f317fa52b6b_1))
)
 

:pattern ((BinaryTrees.count.fuel_instrumented ZFuel
@x7
(BinaryTrees.remove_root.fuel_instrumented ZFuel
x_d1cff3104716498542a69f317fa52b6b_1)))
:qid @query.9))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(191,34-191,51)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(191,34-191,51)
(ApplyTT @x4
@x6)
)
)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.7))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(190,2-193,60)
(not 
;; def=BinaryTrees.fst(191,23-191,28); use=BinaryTrees.fst(191,23-191,28)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=BinaryTrees.fst(191,23-193,60); use=BinaryTrees.fst(191,23-193,60)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
@x5)
)

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x7 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=Prims.fst(402,73-402,79); use=BinaryTrees.fst(190,2-193,60)
(ApplyTT @x4
@x7)
)


;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=Prims.fst(402,84-402,87); use=BinaryTrees.fst(190,2-193,60)
(ApplyTT @x6
@x7)
)
)
 :weight 0


:pattern ((ApplyTT @x6
@x7))
:qid @query.12))
)

;; def=Prims.fst(389,2-389,39); use=BinaryTrees.fst(190,2-193,60)
(and (implies 
;; def=BinaryTrees.fst(192,23-192,37); use=BinaryTrees.fst(192,23-192,37)
(= (Prims.op_GreaterThan (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxInt 0))
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(190,2-193,60)
(and 
;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(192,58-192,60)
(or label_5

;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(192,58-192,60)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(192,58-192,60)
(or label_6

;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(192,58-192,60)
(Valid 
;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(192,58-192,60)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x2
x_d1cff3104716498542a69f317fa52b6b_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
BinaryTrees.tree)

;; def=BinaryTrees.fst(187,30-191,13); use=BinaryTrees.fst(190,2-193,60)
(= @x2
@x7)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(192,43-192,55)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=BinaryTrees.fst(189,19-189,57); use=BinaryTrees.fst(192,43-192,55)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
(BinaryTrees.remove x_ae567c2fb75be05905677af440075565_0
@x2))
(Prims.op_Subtraction (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxInt 1)))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(192,43-192,55)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(192,43-192,55)
(ApplyTT @x6
@x8)
)
)
 
;;no pats
:qid @query.14))
)
 
;;no pats
:qid @query.13))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=BinaryTrees.fst(190,2-193,60)
(not 
;; def=BinaryTrees.fst(192,23-192,37); use=BinaryTrees.fst(192,23-192,37)
(= (Prims.op_GreaterThan (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxInt 0))
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.bool)

;; def=BinaryTrees.fst(192,23-193,60); use=BinaryTrees.fst(192,23-193,60)
(= (Prims.op_GreaterThan (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxInt 0))
@x7)
)

;; def=Prims.fst(459,77-459,89); use=BinaryTrees.fst(190,2-193,60)
(and 
;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(193,58-193,60)
(or label_7

;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(193,58-193,60)
(> (BoxInt_proj_0 (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(193,58-193,60)
(or label_8

;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(193,58-193,60)
(Valid 
;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(193,58-193,60)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
x_d1cff3104716498542a69f317fa52b6b_1)
)
)


;; def=Prims.fst(451,66-451,102); use=BinaryTrees.fst(190,2-193,60)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
BinaryTrees.tree)

;; def=BinaryTrees.fst(187,30-191,16); use=BinaryTrees.fst(190,2-193,60)
(= @x3
@x8)
)

;; def=Prims.fst(441,36-441,97); use=BinaryTrees.fst(193,43-193,55)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.unit)

;; def=BinaryTrees.fst(189,19-189,57); use=BinaryTrees.fst(193,43-193,55)
(= (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
(BinaryTrees.remove x_ae567c2fb75be05905677af440075565_0
@x3))
(Prims.op_Subtraction (BinaryTrees.count x_ae567c2fb75be05905677af440075565_0
@x3)
(BoxInt 1)))
)

;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(193,43-193,55)
(Valid 
;; def=Prims.fst(441,83-441,96); use=BinaryTrees.fst(193,43-193,55)
(ApplyTT @x6
@x9)
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
))
)
 
;;no pats
:qid @query.11))
)
 
;;no pats
:qid @query.10))
))
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
 
;;no pats
:qid @query.2))
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
; QUERY ID: (BinaryTrees.count_remove, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_BinaryTrees.count.fuel_instrumented, @fuel_correspondence_BinaryTrees.remove.fuel_instrumented, @fuel_irrelevance_BinaryTrees.count.fuel_instrumented, @fuel_irrelevance_BinaryTrees.remove.fuel_instrumented, @query, BinaryTrees_pretyping_1696252159950375ed27d3faba8e3379, Prims_pretyping_ae567c2fb75be05905677af440075565, binder_x_ae567c2fb75be05905677af440075565_0, binder_x_d1cff3104716498542a69f317fa52b6b_1, constructor_distinct_BinaryTrees.Node, data_elim_BinaryTrees.Node, disc_equation_BinaryTrees.Node, equality_tok_BinaryTrees.Leaf@tok, equation_Prims.nat, equation_with_fuel_BinaryTrees.count.fuel_instrumented, equation_with_fuel_BinaryTrees.remove.fuel_instrumented, fuel_guarded_inversion_BinaryTrees.tree, function_token_typing_Prims.__cache_version_number__, int_inversion, int_typing, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_GreaterThan, primitive_Prims.op_Subtraction, proj_equation_BinaryTrees.Node_root, projection_inverse_BinaryTrees.Node_left, projection_inverse_BinaryTrees.Node_right, projection_inverse_BinaryTrees.Node_root, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_148e968f8a93041c3de772ced753082c, refinement_interpretation_Tm_refine_2052a6fdd62bfbe2a677dbc498408e03, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_BinaryTrees.Node, token_correspondence_BinaryTrees.count.fuel_instrumented, typing_BinaryTrees.count, typing_BinaryTrees.remove, typing_tok_BinaryTrees.Leaf@tok, unit_inversion, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at BinaryTrees.fst(187,0-193,60)

(declare-fun label_1 () Bool)

(declare-fun Tm_refine_424d2d1a79eaed01e96840f0a965631b (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(187,30-193,60); use=BinaryTrees.fst(187,30-193,60)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_424d2d1a79eaed01e96840f0a965631b @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_424d2d1a79eaed01e96840f0a965631b @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_424d2d1a79eaed01e96840f0a965631b))

:named refinement_kinding_Tm_refine_424d2d1a79eaed01e96840f0a965631b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(187,30-193,60); use=BinaryTrees.fst(187,30-193,60)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_424d2d1a79eaed01e96840f0a965631b @x2
@x3))
(and (HasTypeFuel @u0
@x1
BinaryTrees.tree)

;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(187,37-187,50)
(> (BoxInt_proj_0 (BinaryTrees.count @x2
@x1))
(BoxInt_proj_0 (BoxInt 0)))


;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(190,2-193,60)

;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(190,2-193,60)
(Valid 
;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(190,2-193,60)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x1
@x3)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_424d2d1a79eaed01e96840f0a965631b @x2
@x3)))
:qid refinement_interpretation_Tm_refine_424d2d1a79eaed01e96840f0a965631b))

:named refinement_interpretation_Tm_refine_424d2d1a79eaed01e96840f0a965631b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_424d2d1a79eaed01e96840f0a965631b
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(187,30-193,60); use=BinaryTrees.fst(187,30-193,60)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_424d2d1a79eaed01e96840f0a965631b @x0
@x1)))
(Valid (Prims.hasEq BinaryTrees.tree)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_424d2d1a79eaed01e96840f0a965631b @x0
@x1))))
:qid haseqTm_refine_424d2d1a79eaed01e96840f0a965631b))

:named haseqTm_refine_424d2d1a79eaed01e96840f0a965631b))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=BinaryTrees.fst(188,20-188,24); use=BinaryTrees.fst(188,4-188,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasTypeFuel @u0
@x1
Prims.unit))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
:qid refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

:named refinement_interpretation_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

; Encoding query formula : forall (x: Prims.int)
;   (t: BinaryTrees.tree{BinaryTrees.count x t > 0})
;   (x: Prims.int)
;   (t: (t: BinaryTrees.tree{BinaryTrees.count x t > 0}){t << t})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   BinaryTrees.count x t > 0 /\ t << t ==> BinaryTrees.count x t > 0


; Context: While encoding a query
; While typechecking the top-level declaration `let rec count_remove`

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
;; def=dummy(0,0-0,0); use=BinaryTrees.fst(187,0-193,60)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_2052a6fdd62bfbe2a677dbc498408e03 @x0))
(HasType @x2
Prims.int)
(HasType @x3
(Tm_refine_424d2d1a79eaed01e96840f0a965631b @x2
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)

;; def=BinaryTrees.fst(187,37-187,50); use=BinaryTrees.fst(189,38-189,39)
(> (BoxInt_proj_0 (BinaryTrees.count @x2
@x3))
(BoxInt_proj_0 (BoxInt 0)))


;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(189,38-189,39)

;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(189,38-189,39)
(Valid 
;; def=BinaryTrees.fst(190,2-193,60); use=BinaryTrees.fst(189,38-189,39)
(Prims.precedes BinaryTrees.tree
BinaryTrees.tree
@x3
@x1)
)

)

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(189,38-189,39)
(or label_1

;; def=BinaryTrees.fst(167,31-167,44); use=BinaryTrees.fst(189,38-189,39)
(> (BoxInt_proj_0 (BinaryTrees.count @x2
@x3))
(BoxInt_proj_0 (BoxInt 0)))
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (BinaryTrees.count_remove, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query
