
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


; Externals for interface FStar.FunctionalExtensionality


; <Start encoding let arrow>


(declare-fun FStar.FunctionalExtensionality.arrow (Term Term) Term)

(declare-fun Tm_arrow_28022b1931e0c9114f09925e8271570a () Term)
(declare-fun FStar.FunctionalExtensionality.arrow@tok () Term)

(declare-fun Tm_arrow_a7d5cc170be69663c495e8582d2bc62a (Term Term) Term)

; </end encoding let arrow>


; <Start encoding let efun>


(declare-fun FStar.FunctionalExtensionality.efun (Term Term) Term)


(declare-fun FStar.FunctionalExtensionality.efun@tok () Term)



; </end encoding let efun>


; <Start encoding let feq>




(declare-fun FStar.FunctionalExtensionality.feq (Term Term Term Term) Term)



(declare-fun Tm_arrow_a26edf208afb0682b12235c66ccbd71c () Term)
(declare-fun FStar.FunctionalExtensionality.feq@tok () Term)




; </end encoding let feq>


; <Start encoding val FStar.FunctionalExtensionality.on_domain>



(declare-fun FStar.FunctionalExtensionality.on_domain (Term Term Term) Term)



(declare-fun Tm_arrow_4644eedc14c2df3e417da1b7c07108e6 () Term)
(declare-fun FStar.FunctionalExtensionality.on_domain@tok () Term)


; </end encoding val FStar.FunctionalExtensionality.on_domain>


; <Start encoding val FStar.FunctionalExtensionality.feq_on_domain>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.FunctionalExtensionality.feq_on_domain (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.FunctionalExtensionality.feq_on_domain@tok () Term)



; </end encoding val FStar.FunctionalExtensionality.feq_on_domain>


; <Start encoding val FStar.FunctionalExtensionality.idempotence_on_domain>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.FunctionalExtensionality.idempotence_on_domain (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.FunctionalExtensionality.idempotence_on_domain@tok () Term)



; </end encoding val FStar.FunctionalExtensionality.idempotence_on_domain>


; <Start encoding let is_restricted>



(declare-fun FStar.FunctionalExtensionality.is_restricted (Term Term Term) Term)


(declare-fun Tm_arrow_b9e5e589ff6008bf9dc6c8ac06a76d9b () Term)
(declare-fun FStar.FunctionalExtensionality.is_restricted@tok () Term)



; </end encoding let is_restricted>


; <Start encoding let restricted_t>


(declare-fun FStar.FunctionalExtensionality.restricted_t (Term Term) Term)


(declare-fun FStar.FunctionalExtensionality.restricted_t@tok () Term)


(declare-fun Tm_refine_7e4a6c5999db731b5d17d0418dfeea3e (Term Term) Term)

; </end encoding let restricted_t>


; <Start encoding let op_Hat_Subtraction_Greater>

(declare-fun FStar.FunctionalExtensionality.op_Hat_Subtraction_Greater (Term Term) Term)

(declare-fun FStar.FunctionalExtensionality.op_Hat_Subtraction_Greater@tok () Term)

(declare-fun Tm_abs_134069e179ddf4705519081c391c4e10 (Term Term) Term)

; </end encoding let op_Hat_Subtraction_Greater>


; <Start encoding let on_dom>



(declare-fun FStar.FunctionalExtensionality.on_dom (Term Term Term) Term)


(declare-fun Tm_arrow_2c8a39c5d1179d9b2dbff37a928311ac () Term)
(declare-fun FStar.FunctionalExtensionality.on_dom@tok () Term)



; </end encoding let on_dom>


; <Start encoding let on>

(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun FStar.FunctionalExtensionality.on (Term Term Term) Term)



(declare-fun Tm_arrow_eab9bf17eb33be7efca62de21f27985c () Term)
(declare-fun FStar.FunctionalExtensionality.on@tok () Term)






; </end encoding let on>


; <Start encoding val FStar.FunctionalExtensionality.extensionality>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.FunctionalExtensionality.extensionality (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.FunctionalExtensionality.extensionality@tok () Term)




; </end encoding val FStar.FunctionalExtensionality.extensionality>


; <Start encoding let arrow_g>


(declare-fun FStar.FunctionalExtensionality.arrow_g (Term Term) Term)


(declare-fun FStar.FunctionalExtensionality.arrow_g@tok () Term)



; </end encoding let arrow_g>


; <Start encoding let efun_g>


(declare-fun FStar.FunctionalExtensionality.efun_g (Term Term) Term)


(declare-fun FStar.FunctionalExtensionality.efun_g@tok () Term)



; </end encoding let efun_g>


; <Start encoding let feq_g>




(declare-fun FStar.FunctionalExtensionality.feq_g (Term Term Term Term) Term)



(declare-fun Tm_arrow_361ba84e60d273d78a5743d30c9dc908 () Term)
(declare-fun FStar.FunctionalExtensionality.feq_g@tok () Term)




; </end encoding let feq_g>


; <Start encoding val FStar.FunctionalExtensionality.on_domain_g>



(declare-fun FStar.FunctionalExtensionality.on_domain_g (Term Term Term) Term)



(declare-fun Tm_arrow_bf6371335aea4d90f7963f85ebad8f0d () Term)
(declare-fun FStar.FunctionalExtensionality.on_domain_g@tok () Term)


; </end encoding val FStar.FunctionalExtensionality.on_domain_g>


; <Start encoding val FStar.FunctionalExtensionality.feq_on_domain_g>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.FunctionalExtensionality.feq_on_domain_g (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.FunctionalExtensionality.feq_on_domain_g@tok () Term)



; </end encoding val FStar.FunctionalExtensionality.feq_on_domain_g>


; <Start encoding val FStar.FunctionalExtensionality.idempotence_on_domain_g>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.FunctionalExtensionality.idempotence_on_domain_g (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.FunctionalExtensionality.idempotence_on_domain_g@tok () Term)



; </end encoding val FStar.FunctionalExtensionality.idempotence_on_domain_g>


; <Start encoding let is_restricted_g>



(declare-fun FStar.FunctionalExtensionality.is_restricted_g (Term Term Term) Term)


(declare-fun Tm_arrow_eadb252d9886eeba4938e11c03ce9b79 () Term)
(declare-fun FStar.FunctionalExtensionality.is_restricted_g@tok () Term)



; </end encoding let is_restricted_g>


; <Start encoding let restricted_g_t>


(declare-fun FStar.FunctionalExtensionality.restricted_g_t (Term Term) Term)


(declare-fun FStar.FunctionalExtensionality.restricted_g_t@tok () Term)


(declare-fun Tm_refine_9185da06fca917c5514ae63042657873 (Term Term) Term)

; </end encoding let restricted_g_t>


; <Start encoding let op_Hat_Subtraction_Greater_Greater>

(declare-fun FStar.FunctionalExtensionality.op_Hat_Subtraction_Greater_Greater (Term Term) Term)

(declare-fun FStar.FunctionalExtensionality.op_Hat_Subtraction_Greater_Greater@tok () Term)



; </end encoding let op_Hat_Subtraction_Greater_Greater>


; <Start encoding let on_dom_g>



(declare-fun FStar.FunctionalExtensionality.on_dom_g (Term Term Term) Term)


(declare-fun Tm_arrow_2e3db44d1263cf9452aaa6907eac66cc () Term)
(declare-fun FStar.FunctionalExtensionality.on_dom_g@tok () Term)



; </end encoding let on_dom_g>


; <Start encoding let on_g>


(declare-fun FStar.FunctionalExtensionality.on_g (Term Term Term) Term)



(declare-fun Tm_arrow_93a363f6461271c3e18b18593d7d03bf () Term)
(declare-fun FStar.FunctionalExtensionality.on_g@tok () Term)






; </end encoding let on_g>


; <Start encoding val FStar.FunctionalExtensionality.extensionality_g>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.FunctionalExtensionality.extensionality_g (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.FunctionalExtensionality.extensionality_g@tok () Term)




; </end encoding val FStar.FunctionalExtensionality.extensionality_g>


; End Externals for interface FStar.FunctionalExtensionality

(push) ;; push{1

; Internals for DelimCC


; encoding sigelt val DelimCC.result


; <Start encoding val DelimCC.result>

(declare-fun DelimCC.result () Term)

; </end encoding val DelimCC.result>


; encoding sigelt let cont


; <Start encoding let cont>

(declare-fun DelimCC.cont (Term) Term)

(declare-fun DelimCC.cont@tok () Term)
;;;;;;;;;;;;;;;;_: a -> result
(declare-fun Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b (Term) Term)
;;;;;;;;;;;;;;;;_: (_: a -> result) -> result
(declare-fun Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a (Term) Term)

; </end encoding let cont>


; encoding sigelt let kont


; <Start encoding let kont>

(declare-fun DelimCC.kont (Term) Term)

(declare-fun DelimCC.kont@tok () Term)



(declare-fun Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d (Term) Term)
(declare-fun Tm_refine_84bbb68e2555b186061c13809014564f (Term) Term)

; </end encoding let kont>


; encoding sigelt val DelimCC.return_k


; <Skipped val DelimCC.return_k/>


; encoding sigelt let return_k


; <Start encoding let return_k>

(declare-fun DelimCC.return_k (Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> x: a -> cont a
(declare-fun Tm_arrow_057660422f86a10855ab3b02c5b298c2 () Term)
(declare-fun DelimCC.return_k@tok () Term)



(declare-fun Tm_abs_aad36e2eedb2945785e00c618a25bba1 (Term Term) Term)

; </end encoding let return_k>


; encoding sigelt val DelimCC.bind_k


; <Skipped val DelimCC.bind_k/>


; encoding sigelt let bind_k


; <Start encoding let bind_k>

;;;;;;;;;;;;;;;;_: a -> cont b
(declare-fun Tm_arrow_3aaaf04002093797c9a16bde0b67e310 (Term Term) Term)
(declare-fun DelimCC.bind_k (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;a: Type -> b: Type -> f: cont a -> g: (_: a -> cont b) -> cont b
(declare-fun Tm_arrow_dea199c930bf8d51dcb5e9aa84822f76 () Term)
(declare-fun DelimCC.bind_k@tok () Term)



(declare-fun Tm_abs_dbc241f45b0c6f5a341c51802caa5547 (Term Term Term) Term)


(declare-fun Tm_abs_1375cdca81f1057e5eda83d9ff43a016 (Term Term Term Term) Term)

; </end encoding let bind_k>


; encoding sigelt val DelimCC.right_unit


; <Skipped val DelimCC.right_unit/>

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
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;typing_Tm_abs_dbc241f45b0c6f5a341c51802caa5547
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(33,35-33,40); use=DelimCC.fst(33,35-33,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_dbc241f45b0c6f5a341c51802caa5547 @x0
@x1
@x2)
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x2))
 

:pattern ((Tm_abs_dbc241f45b0c6f5a341c51802caa5547 @x0
@x1
@x2))
:qid typing_Tm_abs_dbc241f45b0c6f5a341c51802caa5547))

:named typing_Tm_abs_dbc241f45b0c6f5a341c51802caa5547))
;;;;;;;;;;;;;;;;typing_Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,31-26,37); use=DelimCC.fst(27,68-27,70)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d @x0)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
 

:pattern ((Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d @x0))
:qid typing_Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d))

:named typing_Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d))
;;;;;;;;;;;;;;;;typing_Tm_abs_aad36e2eedb2945785e00c618a25bba1
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(30,28-30,31); use=DelimCC.fst(30,28-30,31)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_aad36e2eedb2945785e00c618a25bba1 @x0
@x1)
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x1))
 

:pattern ((Tm_abs_aad36e2eedb2945785e00c618a25bba1 @x0
@x1))
:qid typing_Tm_abs_aad36e2eedb2945785e00c618a25bba1))

:named typing_Tm_abs_aad36e2eedb2945785e00c618a25bba1))
;;;;;;;;;;;;;;;;typing_Tm_abs_1375cdca81f1057e5eda83d9ff43a016
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(33,23-33,41); use=DelimCC.fst(33,23-33,41)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_1375cdca81f1057e5eda83d9ff43a016 @x0
@x1
@x2
@x3)
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x3))
 

:pattern ((Tm_abs_1375cdca81f1057e5eda83d9ff43a016 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_1375cdca81f1057e5eda83d9ff43a016))

:named typing_Tm_abs_1375cdca81f1057e5eda83d9ff43a016))
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
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named typing_Prims.logical))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (HasType Prims.l_True
Prims.logical)
:named typing_Prims.l_True))
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
;;; Fact-ids: Name FStar.FunctionalExtensionality.on_domain; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(74,4-74,13); use=FStar.FunctionalExtensionality.fsti(74,4-74,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(HasType @x2
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))
(HasType (FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2)
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))
 

:pattern ((FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2))
:qid typing_FStar.FunctionalExtensionality.on_domain))

:named typing_FStar.FunctionalExtensionality.on_domain))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.FunctionalExtensionality.feq; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(48,4-48,7); use=FStar.FunctionalExtensionality.fsti(48,4-48,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(HasType @x2
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0))
(HasType @x3
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))
(HasType (FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3)
Prims.logical))
 

:pattern ((FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3))
:qid typing_FStar.FunctionalExtensionality.feq))

:named typing_FStar.FunctionalExtensionality.feq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(30,4-30,12); use=DelimCC.fst(30,4-30,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0))
(HasType (DelimCC.return_k @x0
@x1)
(DelimCC.cont @x0)))
 

:pattern ((DelimCC.return_k @x0
@x1))
:qid typing_DelimCC.return_k))

:named typing_DelimCC.return_k))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.result; Namespace DelimCC
(assert (! (HasType DelimCC.result
Tm_type)
:named typing_DelimCC.result))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(27,4-27,8); use=DelimCC.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (DelimCC.kont @x0)
Tm_type))
 

:pattern ((DelimCC.kont @x0))
:qid typing_DelimCC.kont))

:named typing_DelimCC.kont))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,5-26,9); use=DelimCC.fst(26,5-26,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (DelimCC.cont @x0)
Tm_type))
 

:pattern ((DelimCC.cont @x0))
:qid typing_DelimCC.cont))

:named typing_DelimCC.cont))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(33,4-33,10); use=DelimCC.fst(33,4-33,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(DelimCC.cont @x0))
(HasType @x3
(Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x1
@x0)))
(HasType (DelimCC.bind_k @x0
@x1
@x2
@x3)
(DelimCC.cont @x1)))
 

:pattern ((DelimCC.bind_k @x0
@x1
@x2
@x3))
:qid typing_DelimCC.bind_k))

:named typing_DelimCC.bind_k))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(30,4-30,12); use=DelimCC.fst(30,4-30,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT DelimCC.return_k@tok
@x0)
@x1)
(DelimCC.return_k @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT DelimCC.return_k@tok
@x0)
@x1))
:qid token_correspondence_DelimCC.return_k))

:named token_correspondence_DelimCC.return_k))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
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
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(27,13-27,88); use=DelimCC.fst(27,13-27,88)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_84bbb68e2555b186061c13809014564f @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_84bbb68e2555b186061c13809014564f @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_84bbb68e2555b186061c13809014564f))

:named refinement_kinding_Tm_refine_84bbb68e2555b186061c13809014564f))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Tm_refine_414d0a9f578ab0048252f8c8f552b99f
Tm_type)
:named refinement_kinding_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
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
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(27,13-27,88); use=DelimCC.fst(27,13-27,88)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_84bbb68e2555b186061c13809014564f @x2))
(and (HasTypeFuel @u0
@x1
(DelimCC.cont @x2))

;; def=DelimCC.fst(27,22-27,87); use=DelimCC.fst(27,22-27,87)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x2))
(HasType @x4
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x2))

;; def=DelimCC.fst(27,61-27,70); use=DelimCC.fst(27,61-27,70)
(Valid 
;; def=DelimCC.fst(27,61-27,70); use=DelimCC.fst(27,61-27,70)
(FStar.FunctionalExtensionality.feq @x2
(Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d @x2)
@x3
@x4)
)
)

;; def=DelimCC.fst(27,75-27,87); use=DelimCC.fst(27,75-27,87)
(= (ApplyTT @x1
@x3)
(ApplyTT @x1
@x4))
)
 

:pattern ((ApplyTT @x1
@x3) (ApplyTT @x1
@x4))
:qid refinement_interpretation_Tm_refine_84bbb68e2555b186061c13809014564f.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_84bbb68e2555b186061c13809014564f @x2)))
:qid refinement_interpretation_Tm_refine_84bbb68e2555b186061c13809014564f))

:named refinement_interpretation_Tm_refine_84bbb68e2555b186061c13809014564f))
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
;;;;;;;;;;;;;;;;Lemma: FStar.FunctionalExtensionality.idempotence_on_domain
;;; Fact-ids: Name FStar.FunctionalExtensionality.idempotence_on_domain; Namespace FStar.FunctionalExtensionality
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(HasType @x2
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))

;; def=FStar.FunctionalExtensionality.fsti(84,12-84,58); use=FStar.FunctionalExtensionality.fsti(84,12-84,58)
(= (FStar.FunctionalExtensionality.on_domain @x0
@x1
(FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2))
(FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2))
)
 

:pattern ((FStar.FunctionalExtensionality.on_domain @x0
@x1
(FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2)))
:qid lemma_FStar.FunctionalExtensionality.idempotence_on_domain))
:named lemma_FStar.FunctionalExtensionality.idempotence_on_domain))
;;;;;;;;;;;;;;;;Lemma: FStar.FunctionalExtensionality.feq_on_domain
;;; Fact-ids: Name FStar.FunctionalExtensionality.feq_on_domain; Namespace FStar.FunctionalExtensionality
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(HasType @x2
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))

;; def=FStar.FunctionalExtensionality.fsti(80,12-80,35); use=FStar.FunctionalExtensionality.fsti(80,12-80,35)
(Valid 
;; def=FStar.FunctionalExtensionality.fsti(80,12-80,35); use=FStar.FunctionalExtensionality.fsti(80,12-80,35)
(FStar.FunctionalExtensionality.feq @x0
@x1
(FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2)
@x2)
)
)
 

:pattern ((FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2))
:qid lemma_FStar.FunctionalExtensionality.feq_on_domain))
:named lemma_FStar.FunctionalExtensionality.feq_on_domain))
;;;;;;;;;;;;;;;;Lemma: FStar.FunctionalExtensionality.extensionality
;;; Fact-ids: Name FStar.FunctionalExtensionality.extensionality; Namespace FStar.FunctionalExtensionality
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(HasType @x2
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0))
(HasType @x3
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))

;; def=FStar.FunctionalExtensionality.fsti(133,21-133,72); use=FStar.FunctionalExtensionality.fsti(133,21-133,72)
(iff 
;; def=FStar.FunctionalExtensionality.fsti(133,22-133,35); use=FStar.FunctionalExtensionality.fsti(133,22-133,35)
(Valid 
;; def=FStar.FunctionalExtensionality.fsti(133,22-133,35); use=FStar.FunctionalExtensionality.fsti(133,22-133,35)
(FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3)
)


;; def=FStar.FunctionalExtensionality.fsti(133,41-133,71); use=FStar.FunctionalExtensionality.fsti(133,41-133,71)
(= (FStar.FunctionalExtensionality.on_domain @x0
@x1
@x2)
(FStar.FunctionalExtensionality.on_domain @x0
@x1
@x3))
)
)
 

:pattern ((FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3))
:qid lemma_FStar.FunctionalExtensionality.extensionality))
:named lemma_FStar.FunctionalExtensionality.extensionality))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a
;;; Fact-ids: Name FStar.FunctionalExtensionality.arrow; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(41,11-41,56); use=FStar.FunctionalExtensionality.fsti(41,42-41,56)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a))

:named kinding_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,11-26,37); use=DelimCC.fst(26,22-26,37)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x0)
Tm_type))
:qid kinding_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b))

:named kinding_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3aaaf04002093797c9a16bde0b67e310
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(32,12-32,60); use=DelimCC.fst(32,43-33,10)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_3aaaf04002093797c9a16bde0b67e310))

:named kinding_Tm_arrow_3aaaf04002093797c9a16bde0b67e310))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,11-26,52); use=DelimCC.fst(26,22-26,52)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x0)
Tm_type))
:qid kinding_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a))

:named kinding_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_057660422f86a10855ab3b02c5b298c2
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! (HasType Tm_arrow_057660422f86a10855ab3b02c5b298c2
Tm_type)
:named kinding_Tm_arrow_057660422f86a10855ab3b02c5b298c2))
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_dbc241f45b0c6f5a341c51802caa5547
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(33,35-33,40); use=DelimCC.fst(33,35-33,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_dbc241f45b0c6f5a341c51802caa5547 @x1
@x2
@x3)
@x0)
(ApplyTT (ApplyTT @x1
@x0)
@x2))
 

:pattern ((ApplyTT (Tm_abs_dbc241f45b0c6f5a341c51802caa5547 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_dbc241f45b0c6f5a341c51802caa5547))

:named interpretation_Tm_abs_dbc241f45b0c6f5a341c51802caa5547))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,31-26,37); use=DelimCC.fst(27,68-27,70)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d @x1)
@x0)
DelimCC.result)
 

:pattern ((ApplyTT (Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d @x1)
@x0))
:qid interpretation_Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d))

:named interpretation_Tm_abs_bc3beb67d3f94369cc9c3a67bc5edb0d))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_aad36e2eedb2945785e00c618a25bba1
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(30,28-30,31); use=DelimCC.fst(30,28-30,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_aad36e2eedb2945785e00c618a25bba1 @x1
@x2)
@x0)
(ApplyTT @x0
@x1))
 

:pattern ((ApplyTT (Tm_abs_aad36e2eedb2945785e00c618a25bba1 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_aad36e2eedb2945785e00c618a25bba1))

:named interpretation_Tm_abs_aad36e2eedb2945785e00c618a25bba1))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_1375cdca81f1057e5eda83d9ff43a016
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(33,23-33,41); use=DelimCC.fst(33,23-33,41)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_1375cdca81f1057e5eda83d9ff43a016 @x1
@x2
@x3
@x4)
@x0)
(ApplyTT @x1
(Tm_abs_dbc241f45b0c6f5a341c51802caa5547 @x2
@x0
@x3)))
 

:pattern ((ApplyTT (Tm_abs_1375cdca81f1057e5eda83d9ff43a016 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_1375cdca81f1057e5eda83d9ff43a016))

:named interpretation_Tm_abs_1375cdca81f1057e5eda83d9ff43a016))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_84bbb68e2555b186061c13809014564f
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(27,13-27,88); use=DelimCC.fst(27,13-27,88)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_84bbb68e2555b186061c13809014564f @x0)))
(Valid (Prims.hasEq (DelimCC.cont @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_84bbb68e2555b186061c13809014564f @x0))))
:qid haseqTm_refine_84bbb68e2555b186061c13809014564f))

:named haseqTm_refine_84bbb68e2555b186061c13809014564f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_414d0a9f578ab0048252f8c8f552b99f
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_414d0a9f578ab0048252f8c8f552b99f))
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
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (HasType Prims.l_True
Prims.logical)
:named function_token_typing_Prims.l_True))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named function_token_typing_Prims.eqtype))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(30,4-30,12); use=DelimCC.fst(30,4-30,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType DelimCC.return_k@tok
Tm_arrow_057660422f86a10855ab3b02c5b298c2))

;; def=DelimCC.fst(30,4-30,12); use=DelimCC.fst(30,4-30,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT DelimCC.return_k@tok
@x1)
@x2)
(DelimCC.return_k @x1
@x2))
 

:pattern ((DelimCC.return_k @x1
@x2))
:qid function_token_typing_DelimCC.return_k.1))
)
 

:pattern ((ApplyTT @x0
DelimCC.return_k@tok))
:qid function_token_typing_DelimCC.return_k))

:named function_token_typing_DelimCC.return_k))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name DelimCC.result; Namespace DelimCC
(assert (! (HasType DelimCC.result
Tm_type)
:named function_token_typing_DelimCC.result))
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
;;;;;;;;;;;;;;;;Equation for Prims.logical
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (= Prims.logical
Tm_type)
:named equation_Prims.logical))
;;;;;;;;;;;;;;;;Equation for Prims.l_True
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (= Prims.l_True
(Prims.squash Prims.trivial))
:named equation_Prims.l_True))
;;;;;;;;;;;;;;;;Equation for Prims.eqtype
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (= Prims.eqtype
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
:named equation_Prims.eqtype))
;;;;;;;;;;;;;;;;Equation for FStar.FunctionalExtensionality.feq
;;; Fact-ids: Name FStar.FunctionalExtensionality.feq; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(48,4-48,7); use=FStar.FunctionalExtensionality.fsti(48,4-48,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3))

;; def=FStar.FunctionalExtensionality.fsti(48,56-48,100); use=FStar.FunctionalExtensionality.fsti(48,56-48,100)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x0)

;; def=FStar.FunctionalExtensionality.fsti(48,90-48,100); use=FStar.FunctionalExtensionality.fsti(48,90-48,100)
(= (ApplyTT @x2
@x4)
(ApplyTT @x3
@x4))
)
 

:pattern ((ApplyTT @x2
@x4))

:pattern ((ApplyTT @x3
@x4))
:qid equation_FStar.FunctionalExtensionality.feq.1))
)
 

:pattern ((FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3))
:qid equation_FStar.FunctionalExtensionality.feq))

:named equation_FStar.FunctionalExtensionality.feq))
;;;;;;;;;;;;;;;;Equation for DelimCC.return_k
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(30,4-30,12); use=DelimCC.fst(30,4-30,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (DelimCC.return_k @x0
@x1)
(Tm_abs_aad36e2eedb2945785e00c618a25bba1 @x1
@x0))
 

:pattern ((DelimCC.return_k @x0
@x1))
:qid equation_DelimCC.return_k))

:named equation_DelimCC.return_k))
;;;;;;;;;;;;;;;;Equation for DelimCC.kont
;;; Fact-ids: Name DelimCC.kont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(27,4-27,8); use=DelimCC.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (= (DelimCC.kont @x0)
(Tm_refine_84bbb68e2555b186061c13809014564f @x0))
 

:pattern ((DelimCC.kont @x0))
:qid equation_DelimCC.kont))

:named equation_DelimCC.kont))
;;;;;;;;;;;;;;;;Equation for DelimCC.cont
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,5-26,9); use=DelimCC.fst(26,5-26,9)
(forall ((@x0 Term))
 (! (= (DelimCC.cont @x0)
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x0))
 

:pattern ((DelimCC.cont @x0))
:qid equation_DelimCC.cont))

:named equation_DelimCC.cont))
;;;;;;;;;;;;;;;;Equation for DelimCC.bind_k
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(33,4-33,10); use=DelimCC.fst(33,4-33,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (DelimCC.bind_k @x0
@x1
@x2
@x3)
(Tm_abs_1375cdca81f1057e5eda83d9ff43a016 @x2
@x3
@x0
@x1))
 

:pattern ((DelimCC.bind_k @x0
@x1
@x2
@x3))
:qid equation_DelimCC.bind_k))

:named equation_DelimCC.bind_k))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
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
;;;;;;;;;;;;;;;;Prop-typing for FStar.FunctionalExtensionality.feq
;;; Fact-ids: Name FStar.FunctionalExtensionality.feq; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(48,4-48,7); use=FStar.FunctionalExtensionality.fsti(48,4-48,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(HasType @x2
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0))
(HasType @x3
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x0)))
(Valid (Prims.subtype_of (FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.FunctionalExtensionality.feq @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_FStar.FunctionalExtensionality.feq))

:named defn_equation_FStar.FunctionalExtensionality.feq))
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
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
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
;;; Fact-ids: Name FStar.FunctionalExtensionality.arrow; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(41,11-41,56); use=FStar.FunctionalExtensionality.fsti(41,42-41,56)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x2
@x3)))
:qid FStar.FunctionalExtensionality_pre_typing_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a))

:named FStar.FunctionalExtensionality_pre_typing_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a
;;; Fact-ids: Name FStar.FunctionalExtensionality.arrow; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(41,11-41,56); use=FStar.FunctionalExtensionality.fsti(41,42-41,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x2))
(and 
;; def=FStar.FunctionalExtensionality.fsti(41,11-41,56); use=FStar.FunctionalExtensionality.fsti(41,42-41,56)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(ApplyTT @x1
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid FStar.FunctionalExtensionality_interpretation_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_a7d5cc170be69663c495e8582d2bc62a @x1
@x2)))
:qid FStar.FunctionalExtensionality_interpretation_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a))

:named FStar.FunctionalExtensionality_interpretation_Tm_arrow_a7d5cc170be69663c495e8582d2bc62a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,11-26,37); use=DelimCC.fst(26,22-26,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x2)))
:qid DelimCC_pre_typing_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b))

:named DelimCC_pre_typing_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(32,12-32,60); use=DelimCC.fst(32,43-33,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_3aaaf04002093797c9a16bde0b67e310))

:named DelimCC_pre_typing_Tm_arrow_3aaaf04002093797c9a16bde0b67e310))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,11-26,52); use=DelimCC.fst(26,22-26,52)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x2)))
:qid DelimCC_pre_typing_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a))

:named DelimCC_pre_typing_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(29,14-29,43); use=DelimCC.fst(29,26-30,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_057660422f86a10855ab3b02c5b298c2)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_057660422f86a10855ab3b02c5b298c2))
:qid DelimCC_pre_typing_Tm_arrow_057660422f86a10855ab3b02c5b298c2))

:named DelimCC_pre_typing_Tm_arrow_057660422f86a10855ab3b02c5b298c2))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,11-26,37); use=DelimCC.fst(26,22-26,37)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1))
(and 
;; def=DelimCC.fst(26,11-26,37); use=DelimCC.fst(26,22-26,37)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(HasType (ApplyTT @x0
@x2)
DelimCC.result))
 

:pattern ((ApplyTT @x0
@x2))
:qid DelimCC_interpretation_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1)))
:qid DelimCC_interpretation_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b))

:named DelimCC_interpretation_Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3aaaf04002093797c9a16bde0b67e310
;;; Fact-ids: Name DelimCC.bind_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(32,12-32,60); use=DelimCC.fst(32,43-33,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x1
@x2))
(and 
;; def=DelimCC.fst(32,12-32,60); use=DelimCC.fst(32,43-33,10)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(DelimCC.cont @x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_3aaaf04002093797c9a16bde0b67e310.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_3aaaf04002093797c9a16bde0b67e310))

:named DelimCC_interpretation_Tm_arrow_3aaaf04002093797c9a16bde0b67e310))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a
;;; Fact-ids: Name DelimCC.cont; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(26,11-26,52); use=DelimCC.fst(26,22-26,52)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x1))
(and 
;; def=DelimCC.fst(26,11-26,52); use=DelimCC.fst(26,22-26,52)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1))
(HasType (ApplyTT @x0
@x2)
DelimCC.result))
 

:pattern ((ApplyTT @x0
@x2))
:qid DelimCC_interpretation_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x1)))
:qid DelimCC_interpretation_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a))

:named DelimCC_interpretation_Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_057660422f86a10855ab3b02c5b298c2
;;; Fact-ids: Name DelimCC.return_k; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(29,14-29,43); use=DelimCC.fst(29,26-30,12)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_057660422f86a10855ab3b02c5b298c2)
(and 
;; def=DelimCC.fst(29,14-29,43); use=DelimCC.fst(29,26-30,12)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(DelimCC.cont @x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid DelimCC_interpretation_Tm_arrow_057660422f86a10855ab3b02c5b298c2.1))

(IsTotFun @x0)

;; def=DelimCC.fst(29,14-29,43); use=DelimCC.fst(29,26-30,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid DelimCC_interpretation_Tm_arrow_057660422f86a10855ab3b02c5b298c2.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_057660422f86a10855ab3b02c5b298c2))
:qid DelimCC_interpretation_Tm_arrow_057660422f86a10855ab3b02c5b298c2))

:named DelimCC_interpretation_Tm_arrow_057660422f86a10855ab3b02c5b298c2))
(push) ;; push{2

; Starting query at DelimCC.fst(36,21-36,23)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



;;;;;;;;;;;;;;;;_: (_: a -> result) -> Type0
(declare-fun Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-36,16); use=DelimCC.fst(36,15-36,23)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type))
:qid kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-36,16); use=DelimCC.fst(36,15-36,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2)))
:qid DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-36,16); use=DelimCC.fst(36,15-36,23)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1))
(and 
;; def=DelimCC.fst(26,31-36,16); use=DelimCC.fst(36,15-36,23)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1)))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
(declare-fun Tm_abs_249f127c8c33120413dc4e490af92a27 (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,46-26,52); use=DelimCC.fst(36,21-36,23)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_249f127c8c33120413dc4e490af92a27 @x0)
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0))
 

:pattern ((Tm_abs_249f127c8c33120413dc4e490af92a27 @x0))
:qid typing_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named typing_Tm_abs_249f127c8c33120413dc4e490af92a27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,46-26,52); use=DelimCC.fst(36,21-36,23)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0)
DelimCC.result)
 

:pattern ((ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0))
:qid interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
DelimCC.return_k@tok))
:named @kick_partial_app_dd73e02fb72332650eaa418e13d2ebfc))

; Encoding query formula : forall (a: Type) (f: DelimCC.kont a).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (DelimCC.bind_k a a f (DelimCC.return_k a)) f ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let right_unit`

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
Tm_type)
(HasType @x1
(DelimCC.kont @x0)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(36,21-36,23)
(forall ((@x3 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))

;; def=DelimCC.fst(35,44-35,79); use=DelimCC.fst(36,21-36,23)
(or label_2

;; def=DelimCC.fst(35,44-35,79); use=DelimCC.fst(36,21-36,23)
(Valid 
;; def=DelimCC.fst(35,44-35,79); use=DelimCC.fst(36,21-36,23)
(FStar.FunctionalExtensionality.feq (Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x0)
(Tm_abs_249f127c8c33120413dc4e490af92a27 @x0)
(DelimCC.bind_k @x0
@x0
@x1
(ApplyTT DelimCC.return_k@tok
@x0))
@x1)
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(36,21-36,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(36,21-36,23)
(ApplyTT @x2
@x3)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(36,21-36,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(36,21-36,23)
(ApplyTT @x2
@x3)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x2
@x3)
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
; QUERY ID: (DelimCC.right_unit, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_DelimCC.bind_k, equation_DelimCC.kont, equation_DelimCC.return_k, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_1375cdca81f1057e5eda83d9ff43a016, interpretation_Tm_abs_aad36e2eedb2945785e00c618a25bba1, interpretation_Tm_abs_dbc241f45b0c6f5a341c51802caa5547, refinement_interpretation_Tm_refine_84bbb68e2555b186061c13809014564f, token_correspondence_DelimCC.return_k, typing_Tm_abs_dbc241f45b0c6f5a341c51802caa5547

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let right_unit


; <Start encoding let right_unit>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun DelimCC.right_unit (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun DelimCC.right_unit@tok () Term)

; </end encoding let right_unit>


; encoding sigelt val DelimCC.left_unit


; <Skipped val DelimCC.left_unit/>

(push) ;; push{2

; Starting query at DelimCC.fst(40,24-40,26)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: a -> kont b
(declare-fun Tm_arrow_092f80e74ea8b971dd8293959b99ae2e (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(38,54-40,15); use=DelimCC.fst(40,4-40,15)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))

:named kinding_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(38,54-40,15); use=DelimCC.fst(40,4-40,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))

:named DelimCC_pre_typing_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(38,54-40,15); use=DelimCC.fst(40,4-40,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x1
@x2))
(and 
;; def=DelimCC.fst(38,54-40,15); use=DelimCC.fst(40,4-40,15)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(DelimCC.kont @x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))

:named DelimCC_interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))



;;;;;;;;;;;;;;;;_: (_: b -> result) -> Type0
(declare-fun Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-40,17); use=DelimCC.fst(40,16-40,26)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type))
:qid kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-40,17); use=DelimCC.fst(40,16-40,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2)))
:qid DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-40,17); use=DelimCC.fst(40,16-40,26)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1))
(and 
;; def=DelimCC.fst(26,31-40,17); use=DelimCC.fst(40,16-40,26)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1)))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
(declare-fun Tm_abs_249f127c8c33120413dc4e490af92a27 (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,46-26,52); use=DelimCC.fst(40,24-40,26)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_249f127c8c33120413dc4e490af92a27 @x0)
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0))
 

:pattern ((Tm_abs_249f127c8c33120413dc4e490af92a27 @x0))
:qid typing_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named typing_Tm_abs_249f127c8c33120413dc4e490af92a27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,46-26,52); use=DelimCC.fst(40,24-40,26)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0)
DelimCC.result)
 

:pattern ((ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0))
:qid interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))

; Encoding query formula : forall (a: Type) (b: Type) (x: a) (f: (_: a -> DelimCC.kont b)).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (DelimCC.bind_k a b (DelimCC.return_k a x) f) (f x) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let left_unit`

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
@x0)
(HasType @x3
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x1
@x0)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(40,24-40,26)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
Prims.unit))

;; def=DelimCC.fst(39,14-39,55); use=DelimCC.fst(40,24-40,26)
(or label_2

;; def=DelimCC.fst(39,14-39,55); use=DelimCC.fst(40,24-40,26)
(Valid 
;; def=DelimCC.fst(39,14-39,55); use=DelimCC.fst(40,24-40,26)
(FStar.FunctionalExtensionality.feq (Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1)
(Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
(DelimCC.bind_k @x0
@x1
(DelimCC.return_k @x0
@x2)
@x3)
(ApplyTT @x3
@x2))
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(40,24-40,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(40,24-40,26)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(40,24-40,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(40,24-40,26)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x4
@x5)
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
; QUERY ID: (DelimCC.left_unit, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_DelimCC.bind_k, equation_DelimCC.return_k, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_1375cdca81f1057e5eda83d9ff43a016, interpretation_Tm_abs_aad36e2eedb2945785e00c618a25bba1, interpretation_Tm_abs_dbc241f45b0c6f5a341c51802caa5547

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let left_unit


; <Start encoding let left_unit>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun DelimCC.left_unit (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun DelimCC.left_unit@tok () Term)

; </end encoding let left_unit>


; encoding sigelt val DelimCC.associativity


; <Skipped val DelimCC.associativity/>

(push) ;; push{2

; Starting query at DelimCC.fst(44,32-44,34)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: a -> kont b
(declare-fun Tm_arrow_092f80e74ea8b971dd8293959b99ae2e (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(42,73-44,19); use=DelimCC.fst(44,4-44,19)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))

:named kinding_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(42,73-44,19); use=DelimCC.fst(44,4-44,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))

:named DelimCC_pre_typing_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(42,73-44,19); use=DelimCC.fst(44,4-44,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x1
@x2))
(and 
;; def=DelimCC.fst(42,73-44,19); use=DelimCC.fst(44,4-44,19)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(DelimCC.kont @x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))

:named DelimCC_interpretation_Tm_arrow_092f80e74ea8b971dd8293959b99ae2e))




;;;;;;;;;;;;;;;;_: (_: c -> result) -> Type0
(declare-fun Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-44,23); use=DelimCC.fst(44,22-44,34)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type))
:qid kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-44,23); use=DelimCC.fst(44,22-44,34)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2)))
:qid DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,31-44,23); use=DelimCC.fst(44,22-44,34)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1))
(and 
;; def=DelimCC.fst(26,31-44,23); use=DelimCC.fst(44,22-44,34)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1)))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
(declare-fun Tm_abs_249f127c8c33120413dc4e490af92a27 (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,46-26,52); use=DelimCC.fst(44,32-44,34)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_249f127c8c33120413dc4e490af92a27 @x0)
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0))
 

:pattern ((Tm_abs_249f127c8c33120413dc4e490af92a27 @x0))
:qid typing_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named typing_Tm_abs_249f127c8c33120413dc4e490af92a27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(26,46-26,52); use=DelimCC.fst(44,32-44,34)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0)
DelimCC.result)
 

:pattern ((ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0))
:qid interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))

(declare-fun Tm_abs_8fb38370c43370cf173b331103352a1e (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_8fb38370c43370cf173b331103352a1e
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(43,41-43,59); use=DelimCC.fst(44,32-44,34)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_8fb38370c43370cf173b331103352a1e @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_3aaaf04002093797c9a16bde0b67e310 @x3
@x4))
 

:pattern ((Tm_abs_8fb38370c43370cf173b331103352a1e @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_8fb38370c43370cf173b331103352a1e))

:named typing_Tm_abs_8fb38370c43370cf173b331103352a1e))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8fb38370c43370cf173b331103352a1e
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(43,41-43,59); use=DelimCC.fst(44,32-44,34)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_8fb38370c43370cf173b331103352a1e @x1
@x2
@x3
@x4
@x5)
@x0)
(DelimCC.bind_k @x1
@x4
(ApplyTT @x2
@x0)
@x3))
 

:pattern ((ApplyTT (Tm_abs_8fb38370c43370cf173b331103352a1e @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_8fb38370c43370cf173b331103352a1e))

:named interpretation_Tm_abs_8fb38370c43370cf173b331103352a1e))

; Encoding query formula : forall (a: Type)
;   (b: Type)
;   (c: Type)
;   (f: DelimCC.kont a)
;   (g: (_: a -> DelimCC.kont b))
;   (h: (_: b -> DelimCC.kont c)).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (DelimCC.bind_k a
;               c
;               f
;               (fun x -> DelimCC.bind_k b c (g x) h))
;           (DelimCC.bind_k b c (DelimCC.bind_k a b f g) h) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let associativity`

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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(DelimCC.kont @x0))
(HasType @x4
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x1
@x0))
(HasType @x5
(Tm_arrow_092f80e74ea8b971dd8293959b99ae2e @x2
@x1)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(44,32-44,34)
(forall ((@x7 Term))
 (! (implies (and (or label_1
(HasType @x7
Prims.unit))

;; def=DelimCC.fst(43,12-43,94); use=DelimCC.fst(44,32-44,34)
(or label_2

;; def=DelimCC.fst(43,12-43,94); use=DelimCC.fst(44,32-44,34)
(Valid 
;; def=DelimCC.fst(43,12-43,94); use=DelimCC.fst(44,32-44,34)
(FStar.FunctionalExtensionality.feq (Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x2)
(Tm_abs_249f127c8c33120413dc4e490af92a27 @x2)
(DelimCC.bind_k @x0
@x2
@x3
(Tm_abs_8fb38370c43370cf173b331103352a1e @x1
@x4
@x5
@x2
@x0))
(DelimCC.bind_k @x1
@x2
(DelimCC.bind_k @x0
@x1
@x3
@x4)
@x5))
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(44,32-44,34)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(44,32-44,34)
(ApplyTT @x6
@x7)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(44,32-44,34)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(44,32-44,34)
(ApplyTT @x6
@x7)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x6
@x7)
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
; QUERY ID: (DelimCC.associativity, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_DelimCC.bind_k, equation_DelimCC.kont, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_1375cdca81f1057e5eda83d9ff43a016, interpretation_Tm_abs_8fb38370c43370cf173b331103352a1e, interpretation_Tm_abs_dbc241f45b0c6f5a341c51802caa5547, refinement_interpretation_Tm_refine_84bbb68e2555b186061c13809014564f, typing_Tm_abs_dbc241f45b0c6f5a341c51802caa5547

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let associativity


; <Start encoding let associativity>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun DelimCC.associativity (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun DelimCC.associativity@tok () Term)

; </end encoding let associativity>


; encoding sigelt val DelimCC.callcc


; <Skipped val DelimCC.callcc/>


; encoding sigelt let callcc


; <Start encoding let callcc>


;;;;;;;;;;;;;;;;_: (_: a -> cont b) -> cont a
(declare-fun Tm_arrow_09afa406d27338eaf30f4efbc31c640a (Term Term) Term)
(declare-fun DelimCC.callcc (Term Term Term) Term)


;;;;;;;;;;;;;;;;a: Type -> b: Type -> f: (_: (_: a -> cont b) -> cont a) -> cont a
(declare-fun Tm_arrow_06d1af7b37acdf7a39bdd809663a4116 () Term)
(declare-fun DelimCC.callcc@tok () Term)





;;;;;;;;;;;;;;;;x: a -> _: (_: b -> result) -> result
(declare-fun Tm_arrow_9ed05ab864d9148a5d11b90b826964e7 (Term Term) Term)
(declare-fun Tm_abs_0759bd55f96dd33822c58b70358bd9c1 (Term Term Term) Term)


(declare-fun Tm_abs_ca35baac920ca834c68632ef9cd05770 (Term Term Term) Term)

; </end encoding let callcc>


; encoding sigelt val DelimCC.shift


; <Skipped val DelimCC.shift/>


; encoding sigelt let shift


; <Start encoding let shift>

;;;;;;;;;;;;;;;;_: a -> cont result
(declare-fun Tm_arrow_d9b424ee0d239174d93cf9b2dd987a69 (Term) Term)
;;;;;;;;;;;;;;;;_: (_: a -> cont result) -> cont result
(declare-fun Tm_arrow_126e5130651e264ed53248dbfc99b459 (Term) Term)
(declare-fun DelimCC.shift (Term Term) Term)


;;;;;;;;;;;;;;;;a: Type -> h: (_: (_: a -> cont result) -> cont result) -> cont a
(declare-fun Tm_arrow_898333dbf01068fe2ae738d3171f714a () Term)
(declare-fun DelimCC.shift@tok () Term)



;;;;;;;;;;;;;;;;_: result -> result
(declare-fun Tm_arrow_4e829733fc88f7e07c8db59539589537 () Term)

;;;;;;;;;;;;;;;;v: a -> c': (_: result -> result) -> result
(declare-fun Tm_arrow_0a19216b54d3aebfa86b6a26ba4ab123 (Term) Term)
(declare-fun Tm_abs_137b754a940b31f0f6dc6b6fdb8da701 (Term Term) Term)

(declare-fun Tm_abs_923aa19223ed8ecf728616ae9c57909c () Term)


(declare-fun Tm_abs_8dd0c8b5df5348d8bca2da5406c3b066 (Term Term) Term)

; </end encoding let shift>


; encoding sigelt val DelimCC.reset


; <Skipped val DelimCC.reset/>


; encoding sigelt let reset


; <Start encoding let reset>

;;;;;;;;;;;;;;;;_: Prims.unit -> cont result
(declare-fun Tm_arrow_59c85a108a740c53172c82be18054a15 () Term)
(declare-fun DelimCC.reset (Term) Term)

;;;;;;;;;;;;;;;;m: (_: Prims.unit -> cont result) -> cont result
(declare-fun Tm_arrow_015bcf6bd3669f2e7c41323c3895da50 () Term)
(declare-fun DelimCC.reset@tok () Term)





;;;;;;;;;;;;;;;;c: (_: result -> result) -> result
(declare-fun Tm_arrow_c7c804b27153e34bf0f4c7ecece9b989 () Term)
(declare-fun Tm_abs_ed4de2e48ee5a1f365877865fe625fff (Term) Term)

; </end encoding let reset>


; encoding sigelt let cont2


; <Start encoding let cont2>

(declare-fun DelimCC.cont2 (Term Term) Term)

(declare-fun DelimCC.cont2@tok () Term)

;;;;;;;;;;;;;;;;_: (_: a -> result) -> result
(declare-fun Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 (Term Term) Term)

; </end encoding let cont2>


; encoding sigelt let kont2


; <Start encoding let kont2>

(declare-fun DelimCC.kont2 (Term Term) Term)

(declare-fun DelimCC.kont2@tok () Term)




(declare-fun Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 (Term Term) Term)

; </end encoding let kont2>


; encoding sigelt val DelimCC.return_k2


; <Skipped val DelimCC.return_k2/>


; encoding sigelt let return_k2


; <Start encoding let return_k2>

(declare-fun DelimCC.return_k2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;res: Type -> a: Type -> x: a -> cont2 res a
(declare-fun Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17 () Term)
(declare-fun DelimCC.return_k2@tok () Term)



(declare-fun Tm_abs_1e3b98a86efe10c813341778f12f9d1b (Term Term Term) Term)

; </end encoding let return_k2>


; encoding sigelt val DelimCC.bind_k2


; <Skipped val DelimCC.bind_k2/>


; encoding sigelt let bind_k2


; <Start encoding let bind_k2>

;;;;;;;;;;;;;;;;_: a -> cont2 res b
(declare-fun Tm_arrow_20bf1a31b599ad41fae255c6d349c791 (Term Term Term) Term)
(declare-fun DelimCC.bind_k2 (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;res: Type -> a: Type -> b: Type -> f: cont2 res a -> g: (_: a -> cont2 res b) -> cont2 res b
(declare-fun Tm_arrow_77c256fe30efa42704f316d72bc84e4b () Term)
(declare-fun DelimCC.bind_k2@tok () Term)



(declare-fun Tm_abs_a210d7a9f583a6ace87f21677d0e5051 (Term Term Term Term) Term)


(declare-fun Tm_abs_0de330fc678989ce5861c85495562e0c (Term Term Term Term Term) Term)

; </end encoding let bind_k2>


; encoding sigelt val DelimCC.right_unit2


; <Skipped val DelimCC.right_unit2/>

;;;;;;;;;;;;;;;;typing_Tm_abs_a210d7a9f583a6ace87f21677d0e5051
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(68,40-68,45); use=DelimCC.fst(68,40-68,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_a210d7a9f583a6ace87f21677d0e5051 @x0
@x1
@x2
@x3)
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x3))
 

:pattern ((Tm_abs_a210d7a9f583a6ace87f21677d0e5051 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_a210d7a9f583a6ace87f21677d0e5051))

:named typing_Tm_abs_a210d7a9f583a6ace87f21677d0e5051))
;;;;;;;;;;;;;;;;typing_Tm_abs_1e3b98a86efe10c813341778f12f9d1b
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(65,33-65,36); use=DelimCC.fst(65,33-65,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_1e3b98a86efe10c813341778f12f9d1b @x0
@x1
@x2)
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x1
@x2))
 

:pattern ((Tm_abs_1e3b98a86efe10c813341778f12f9d1b @x0
@x1
@x2))
:qid typing_Tm_abs_1e3b98a86efe10c813341778f12f9d1b))

:named typing_Tm_abs_1e3b98a86efe10c813341778f12f9d1b))
;;;;;;;;;;;;;;;;typing_Tm_abs_134069e179ddf4705519081c391c4e10
;;; Fact-ids: Name FStar.FunctionalExtensionality.op_Hat_Subtraction_Greater; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(111,34-111,35); use=FStar.FunctionalExtensionality.fsti(111,70-111,71)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_134069e179ddf4705519081c391c4e10 @x0
@x1)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1))
 

:pattern ((Tm_abs_134069e179ddf4705519081c391c4e10 @x0
@x1))
:qid typing_Tm_abs_134069e179ddf4705519081c391c4e10))

:named typing_Tm_abs_134069e179ddf4705519081c391c4e10))
;;;;;;;;;;;;;;;;typing_Tm_abs_0de330fc678989ce5861c85495562e0c
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(68,28-68,46); use=DelimCC.fst(68,28-68,46)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_0de330fc678989ce5861c85495562e0c @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x3
@x4))
 

:pattern ((Tm_abs_0de330fc678989ce5861c85495562e0c @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_0de330fc678989ce5861c85495562e0c))

:named typing_Tm_abs_0de330fc678989ce5861c85495562e0c))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(65,4-65,13); use=DelimCC.fst(65,4-65,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
@x1))
(HasType (DelimCC.return_k2 @x0
@x1
@x2)
(DelimCC.cont2 @x0
@x1)))
 

:pattern ((DelimCC.return_k2 @x0
@x1
@x2))
:qid typing_DelimCC.return_k2))

:named typing_DelimCC.return_k2))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.kont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(62,4-62,9); use=DelimCC.fst(62,4-62,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (DelimCC.kont2 @x0
@x1)
Tm_type))
 

:pattern ((DelimCC.kont2 @x0
@x1))
:qid typing_DelimCC.kont2))

:named typing_DelimCC.kont2))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.cont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(61,5-61,10); use=DelimCC.fst(61,5-61,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (DelimCC.cont2 @x0
@x1)
Tm_type))
 

:pattern ((DelimCC.cont2 @x0
@x1))
:qid typing_DelimCC.cont2))

:named typing_DelimCC.cont2))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(68,4-68,11); use=DelimCC.fst(68,4-68,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(DelimCC.cont2 @x0
@x1))
(HasType @x4
(Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x2
@x0
@x1)))
(HasType (DelimCC.bind_k2 @x0
@x1
@x2
@x3
@x4)
(DelimCC.cont2 @x0
@x2)))
 

:pattern ((DelimCC.bind_k2 @x0
@x1
@x2
@x3
@x4))
:qid typing_DelimCC.bind_k2))

:named typing_DelimCC.bind_k2))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(65,4-65,13); use=DelimCC.fst(65,4-65,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT DelimCC.return_k2@tok
@x0)
@x1)
@x2)
(DelimCC.return_k2 @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT DelimCC.return_k2@tok
@x0)
@x1)
@x2))
:qid token_correspondence_DelimCC.return_k2))

:named token_correspondence_DelimCC.return_k2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name DelimCC.kont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(62,28-62,111); use=DelimCC.fst(62,28-62,111)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610))

:named refinement_kinding_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name DelimCC.kont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(62,28-62,111); use=DelimCC.fst(62,28-62,111)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(DelimCC.cont2 @x2
@x3))

;; def=DelimCC.fst(62,45-62,110); use=DelimCC.fst(62,45-62,110)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x3))
(HasType @x5
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x3))

;; def=DelimCC.fst(62,84-62,93); use=DelimCC.fst(62,84-62,93)
(Valid 
;; def=DelimCC.fst(62,84-62,93); use=DelimCC.fst(62,84-62,93)
(FStar.FunctionalExtensionality.feq @x3
(Tm_abs_134069e179ddf4705519081c391c4e10 @x2
@x3)
@x4
@x5)
)
)

;; def=DelimCC.fst(62,98-62,110); use=DelimCC.fst(62,98-62,110)
(= (ApplyTT @x1
@x4)
(ApplyTT @x1
@x5))
)
 

:pattern ((ApplyTT @x1
@x4) (ApplyTT @x1
@x5))
:qid refinement_interpretation_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610))

:named refinement_interpretation_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! (HasType Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17
Tm_type)
:named kinding_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: Name FStar.FunctionalExtensionality.on; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(123,8-123,12); use=FStar.FunctionalExtensionality.fsti(123,25-123,35)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named kinding_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9
;;; Fact-ids: Name DelimCC.cont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(61,12-61,27); use=DelimCC.fst(61,37-61,67)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9))

:named kinding_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_20bf1a31b599ad41fae255c6d349c791
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(67,25-67,83); use=DelimCC.fst(67,61-68,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_20bf1a31b599ad41fae255c6d349c791))

:named kinding_Tm_arrow_20bf1a31b599ad41fae255c6d349c791))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_a210d7a9f583a6ace87f21677d0e5051
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(68,40-68,45); use=DelimCC.fst(68,40-68,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_a210d7a9f583a6ace87f21677d0e5051 @x1
@x2
@x3
@x4)
@x0)
(ApplyTT (ApplyTT @x1
@x0)
@x2))
 

:pattern ((ApplyTT (Tm_abs_a210d7a9f583a6ace87f21677d0e5051 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_a210d7a9f583a6ace87f21677d0e5051))

:named interpretation_Tm_abs_a210d7a9f583a6ace87f21677d0e5051))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_1e3b98a86efe10c813341778f12f9d1b
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(65,33-65,36); use=DelimCC.fst(65,33-65,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_1e3b98a86efe10c813341778f12f9d1b @x1
@x2
@x3)
@x0)
(ApplyTT @x0
@x1))
 

:pattern ((ApplyTT (Tm_abs_1e3b98a86efe10c813341778f12f9d1b @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_1e3b98a86efe10c813341778f12f9d1b))

:named interpretation_Tm_abs_1e3b98a86efe10c813341778f12f9d1b))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_134069e179ddf4705519081c391c4e10
;;; Fact-ids: Name FStar.FunctionalExtensionality.op_Hat_Subtraction_Greater; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(111,34-111,35); use=FStar.FunctionalExtensionality.fsti(111,70-111,71)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_134069e179ddf4705519081c391c4e10 @x1
@x2)
@x0)
@x1)
 

:pattern ((ApplyTT (Tm_abs_134069e179ddf4705519081c391c4e10 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_134069e179ddf4705519081c391c4e10))

:named interpretation_Tm_abs_134069e179ddf4705519081c391c4e10))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_0de330fc678989ce5861c85495562e0c
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(68,28-68,46); use=DelimCC.fst(68,28-68,46)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_0de330fc678989ce5861c85495562e0c @x1
@x2
@x3
@x4
@x5)
@x0)
(ApplyTT @x1
(Tm_abs_a210d7a9f583a6ace87f21677d0e5051 @x2
@x0
@x5
@x3)))
 

:pattern ((ApplyTT (Tm_abs_0de330fc678989ce5861c85495562e0c @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_0de330fc678989ce5861c85495562e0c))

:named interpretation_Tm_abs_0de330fc678989ce5861c85495562e0c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610
;;; Fact-ids: Name DelimCC.kont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(62,28-62,111); use=DelimCC.fst(62,28-62,111)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x0
@x1)))
(Valid (Prims.hasEq (DelimCC.cont2 @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x0
@x1))))
:qid haseqTm_refine_08d98d1a6a9f5eaedb943ec6a353e610))

:named haseqTm_refine_08d98d1a6a9f5eaedb943ec6a353e610))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(65,4-65,13); use=DelimCC.fst(65,4-65,13)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType DelimCC.return_k2@tok
Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))

;; def=DelimCC.fst(65,4-65,13); use=DelimCC.fst(65,4-65,13)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT DelimCC.return_k2@tok
@x1)
@x2)
@x3)
(DelimCC.return_k2 @x1
@x2
@x3))
 

:pattern ((DelimCC.return_k2 @x1
@x2
@x3))
:qid function_token_typing_DelimCC.return_k2.1))
)
 

:pattern ((ApplyTT @x0
DelimCC.return_k2@tok))
:qid function_token_typing_DelimCC.return_k2))

:named function_token_typing_DelimCC.return_k2))
;;;;;;;;;;;;;;;;Equation for DelimCC.return_k2
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(65,4-65,13); use=DelimCC.fst(65,4-65,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (DelimCC.return_k2 @x0
@x1
@x2)
(Tm_abs_1e3b98a86efe10c813341778f12f9d1b @x2
@x1
@x0))
 

:pattern ((DelimCC.return_k2 @x0
@x1
@x2))
:qid equation_DelimCC.return_k2))

:named equation_DelimCC.return_k2))
;;;;;;;;;;;;;;;;Equation for DelimCC.kont2
;;; Fact-ids: Name DelimCC.kont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(62,4-62,9); use=DelimCC.fst(62,4-62,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (DelimCC.kont2 @x0
@x1)
(Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610 @x0
@x1))
 

:pattern ((DelimCC.kont2 @x0
@x1))
:qid equation_DelimCC.kont2))

:named equation_DelimCC.kont2))
;;;;;;;;;;;;;;;;Equation for DelimCC.cont2
;;; Fact-ids: Name DelimCC.cont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(61,5-61,10); use=DelimCC.fst(61,5-61,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (DelimCC.cont2 @x0
@x1)
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x1
@x0))
 

:pattern ((DelimCC.cont2 @x0
@x1))
:qid equation_DelimCC.cont2))

:named equation_DelimCC.cont2))
;;;;;;;;;;;;;;;;Equation for DelimCC.bind_k2
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(68,4-68,11); use=DelimCC.fst(68,4-68,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (DelimCC.bind_k2 @x0
@x1
@x2
@x3
@x4)
(Tm_abs_0de330fc678989ce5861c85495562e0c @x3
@x4
@x1
@x2
@x0))
 

:pattern ((DelimCC.bind_k2 @x0
@x1
@x2
@x3
@x4))
:qid equation_DelimCC.bind_k2))

:named equation_DelimCC.bind_k2))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.FunctionalExtensionality.on; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(123,8-123,12); use=FStar.FunctionalExtensionality.fsti(123,25-123,35)
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
:qid FStar.FunctionalExtensionality_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named FStar.FunctionalExtensionality_pre_typing_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe
;;; Fact-ids: Name FStar.FunctionalExtensionality.on; Namespace FStar.FunctionalExtensionality
(assert (! 
;; def=FStar.FunctionalExtensionality.fsti(123,8-123,12); use=FStar.FunctionalExtensionality.fsti(123,25-123,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2))
(and 
;; def=FStar.FunctionalExtensionality.fsti(123,8-123,12); use=FStar.FunctionalExtensionality.fsti(123,25-123,35)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
@x1))
 

:pattern ((ApplyTT @x0
@x3))
:qid FStar.FunctionalExtensionality_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x1
@x2)))
:qid FStar.FunctionalExtensionality_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))

:named FStar.FunctionalExtensionality_interpretation_Tm_arrow_6980332764c4493a7b0df5c02f7aefbe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(64,19-64,61); use=DelimCC.fst(64,39-65,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))
:qid DelimCC_pre_typing_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))

:named DelimCC_pre_typing_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.cont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(61,12-61,27); use=DelimCC.fst(61,37-61,67)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9))

:named DelimCC_pre_typing_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(67,25-67,83); use=DelimCC.fst(67,61-68,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x2
@x3
@x4)))
:qid DelimCC_pre_typing_Tm_arrow_20bf1a31b599ad41fae255c6d349c791))

:named DelimCC_pre_typing_Tm_arrow_20bf1a31b599ad41fae255c6d349c791))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17
;;; Fact-ids: Name DelimCC.return_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(64,19-64,61); use=DelimCC.fst(64,39-65,13)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17)
(and 
;; def=DelimCC.fst(64,19-64,61); use=DelimCC.fst(64,39-65,13)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
@x2))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
(DelimCC.cont2 @x1
@x2)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid DelimCC_interpretation_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17.1))

(IsTotFun @x0)

;; def=DelimCC.fst(64,19-64,61); use=DelimCC.fst(64,39-65,13)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid DelimCC_interpretation_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17.2))


;; def=DelimCC.fst(64,19-64,61); use=DelimCC.fst(64,39-65,13)
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
:qid DelimCC_interpretation_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))
:qid DelimCC_interpretation_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))

:named DelimCC_interpretation_Tm_arrow_d985f6a5c16fde9be9ba3fbc12645d17))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9
;;; Fact-ids: Name DelimCC.cont2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(61,12-61,27); use=DelimCC.fst(61,37-61,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x1
@x2))
(and 
;; def=DelimCC.fst(61,12-61,27); use=DelimCC.fst(61,37-61,67)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType (ApplyTT @x0
@x3)
@x2))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9 @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9))

:named DelimCC_interpretation_Tm_arrow_612eaf1cb6dbd85b83b8e988b83740b9))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_20bf1a31b599ad41fae255c6d349c791
;;; Fact-ids: Name DelimCC.bind_k2; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(67,25-67,83); use=DelimCC.fst(67,61-68,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x1
@x2
@x3))
(and 
;; def=DelimCC.fst(67,25-67,83); use=DelimCC.fst(67,61-68,11)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(HasType (ApplyTT @x0
@x4)
(DelimCC.cont2 @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x4))
:qid DelimCC_interpretation_Tm_arrow_20bf1a31b599ad41fae255c6d349c791.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x1
@x2
@x3)))
:qid DelimCC_interpretation_Tm_arrow_20bf1a31b599ad41fae255c6d349c791))

:named DelimCC_interpretation_Tm_arrow_20bf1a31b599ad41fae255c6d349c791))
(push) ;; push{2

; Starting query at DelimCC.fst(71,26-71,28)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



;;;;;;;;;;;;;;;;_: (_: a -> res) -> Type
(declare-fun Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(71,16-71,21); use=DelimCC.fst(71,16-71,28)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(71,16-71,21); use=DelimCC.fst(71,16-71,28)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named DelimCC_pre_typing_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(71,16-71,21); use=DelimCC.fst(71,16-71,28)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x1
@x2))
(and 
;; def=DelimCC.fst(71,16-71,21); use=DelimCC.fst(71,16-71,28)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType (ApplyTT @x0
@x3)
Tm_type))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
(declare-fun Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 (Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(70,17-70,20); use=DelimCC.fst(71,26-71,28)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x0
@x1)
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1))
 

:pattern ((Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x0
@x1))
:qid typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

:named typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(70,17-70,20); use=DelimCC.fst(71,26-71,28)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x2)
@x0)
@x2)
 

:pattern ((ApplyTT (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

:named interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
DelimCC.return_k2@tok))
:named @kick_partial_app_a2a448deea87948f5f5854e7dd62e863))

; Encoding query formula : forall (res: Type) (a: Type) (f: DelimCC.kont2 res a).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (DelimCC.bind_k2 res a a f (DelimCC.return_k2 res a)) f ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let right_unit2`

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
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(DelimCC.kont2 @x0
@x1)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(71,26-71,28)
(forall ((@x4 Term))
 (! (implies (and (or label_1
(HasType @x4
Prims.unit))

;; def=DelimCC.fst(70,62-70,107); use=DelimCC.fst(71,26-71,28)
(or label_2

;; def=DelimCC.fst(70,62-70,107); use=DelimCC.fst(71,26-71,28)
(Valid 
;; def=DelimCC.fst(70,62-70,107); use=DelimCC.fst(71,26-71,28)
(FStar.FunctionalExtensionality.feq (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x1)
(Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x0)
(DelimCC.bind_k2 @x0
@x1
@x1
@x2
(ApplyTT (ApplyTT DelimCC.return_k2@tok
@x0)
@x1))
@x2)
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(71,26-71,28)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(71,26-71,28)
(ApplyTT @x3
@x4)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(71,26-71,28)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(71,26-71,28)
(ApplyTT @x3
@x4)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x3
@x4)
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
; QUERY ID: (DelimCC.right_unit2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_DelimCC.bind_k2, equation_DelimCC.kont2, equation_DelimCC.return_k2, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_0de330fc678989ce5861c85495562e0c, interpretation_Tm_abs_1e3b98a86efe10c813341778f12f9d1b, interpretation_Tm_abs_a210d7a9f583a6ace87f21677d0e5051, refinement_interpretation_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610, token_correspondence_DelimCC.return_k2, typing_Tm_abs_a210d7a9f583a6ace87f21677d0e5051

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let right_unit2


; <Start encoding let right_unit2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun DelimCC.right_unit2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun DelimCC.right_unit2@tok () Term)

; </end encoding let right_unit2>


; encoding sigelt val DelimCC.left_unit2


; <Skipped val DelimCC.left_unit2/>

(push) ;; push{2

; Starting query at DelimCC.fst(75,29-75,31)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: a -> kont2 res b
(declare-fun Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 (Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(73,67-75,20); use=DelimCC.fst(75,4-75,20)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))

:named kinding_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(73,67-75,20); use=DelimCC.fst(75,4-75,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x2
@x3
@x4)))
:qid DelimCC_pre_typing_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))

:named DelimCC_pre_typing_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(73,67-75,20); use=DelimCC.fst(75,4-75,20)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x1
@x2
@x3))
(and 
;; def=DelimCC.fst(73,67-75,20); use=DelimCC.fst(75,4-75,20)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(HasType (ApplyTT @x0
@x4)
(DelimCC.kont2 @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x4))
:qid DelimCC_interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x1
@x2
@x3)))
:qid DelimCC_interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))

:named DelimCC_interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))



;;;;;;;;;;;;;;;;_: (_: b -> res) -> Type
(declare-fun Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(75,15-75,22); use=DelimCC.fst(75,15-75,31)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(75,15-75,22); use=DelimCC.fst(75,15-75,31)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named DelimCC_pre_typing_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(75,15-75,22); use=DelimCC.fst(75,15-75,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x1
@x2))
(and 
;; def=DelimCC.fst(75,15-75,22); use=DelimCC.fst(75,15-75,31)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType (ApplyTT @x0
@x3)
Tm_type))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
(declare-fun Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 (Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(73,16-73,19); use=DelimCC.fst(75,29-75,31)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x0
@x1)
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1))
 

:pattern ((Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x0
@x1))
:qid typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

:named typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(73,16-73,19); use=DelimCC.fst(75,29-75,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x2)
@x0)
@x2)
 

:pattern ((ApplyTT (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

:named interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

; Encoding query formula : forall (res: Type) (a: Type) (b: Type) (x: a) (f: (_: a -> DelimCC.kont2 res b)).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (DelimCC.bind_k2 res a b (DelimCC.return_k2 res a x) f)
;           (f x) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let left_unit2`

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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
@x1)
(HasType @x4
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x2
@x0
@x1)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(75,29-75,31)
(forall ((@x6 Term))
 (! (implies (and (or label_1
(HasType @x6
Prims.unit))

;; def=DelimCC.fst(74,14-74,65); use=DelimCC.fst(75,29-75,31)
(or label_2

;; def=DelimCC.fst(74,14-74,65); use=DelimCC.fst(75,29-75,31)
(Valid 
;; def=DelimCC.fst(74,14-74,65); use=DelimCC.fst(75,29-75,31)
(FStar.FunctionalExtensionality.feq (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x2)
(Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x2
@x0)
(DelimCC.bind_k2 @x0
@x1
@x2
(DelimCC.return_k2 @x0
@x1
@x3)
@x4)
(ApplyTT @x4
@x3))
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(75,29-75,31)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(75,29-75,31)
(ApplyTT @x5
@x6)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(75,29-75,31)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(75,29-75,31)
(ApplyTT @x5
@x6)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x5
@x6)
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
; QUERY ID: (DelimCC.left_unit2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_DelimCC.bind_k2, equation_DelimCC.return_k2, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_0de330fc678989ce5861c85495562e0c, interpretation_Tm_abs_1e3b98a86efe10c813341778f12f9d1b, interpretation_Tm_abs_a210d7a9f583a6ace87f21677d0e5051

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let left_unit2


; <Start encoding let left_unit2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun DelimCC.left_unit2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun DelimCC.left_unit2@tok () Term)

; </end encoding let left_unit2>


; encoding sigelt val DelimCC.associativity2


; <Skipped val DelimCC.associativity2/>

(push) ;; push{2

; Starting query at DelimCC.fst(79,37-79,39)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: a -> kont2 res b
(declare-fun Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 (Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(77,91-79,24); use=DelimCC.fst(79,4-79,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))

:named kinding_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(77,91-79,24); use=DelimCC.fst(79,4-79,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x2
@x3
@x4)))
:qid DelimCC_pre_typing_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))

:named DelimCC_pre_typing_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(77,91-79,24); use=DelimCC.fst(79,4-79,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x1
@x2
@x3))
(and 
;; def=DelimCC.fst(77,91-79,24); use=DelimCC.fst(79,4-79,24)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(HasType (ApplyTT @x0
@x4)
(DelimCC.kont2 @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x4))
:qid DelimCC_interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x1
@x2
@x3)))
:qid DelimCC_interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))

:named DelimCC_interpretation_Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629))




;;;;;;;;;;;;;;;;_: (_: c -> res) -> Type
(declare-fun Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(79,19-79,28); use=DelimCC.fst(79,19-79,39)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named kinding_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(79,19-79,28); use=DelimCC.fst(79,19-79,39)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named DelimCC_pre_typing_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(79,19-79,28); use=DelimCC.fst(79,19-79,39)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x1
@x2))
(and 
;; def=DelimCC.fst(79,19-79,28); use=DelimCC.fst(79,19-79,39)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x2
@x1))
(HasType (ApplyTT @x0
@x3)
Tm_type))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))

:named DelimCC_interpretation_Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d))
(declare-fun Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 (Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(77,20-77,23); use=DelimCC.fst(79,37-79,39)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x0
@x1)
(Tm_arrow_3b1f2b78edce5100f07ac1ce3fe5530d @x0
@x1))
 

:pattern ((Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x0
@x1))
:qid typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

:named typing_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(77,20-77,23); use=DelimCC.fst(79,37-79,39)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x2)
@x0)
@x2)
 

:pattern ((ApplyTT (Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

:named interpretation_Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54))

(declare-fun Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(78,46-78,69); use=DelimCC.fst(79,37-79,39)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_20bf1a31b599ad41fae255c6d349c791 @x3
@x4
@x5))
 

:pattern ((Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9))

:named typing_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(78,46-78,69); use=DelimCC.fst(79,37-79,39)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(DelimCC.bind_k2 @x5
@x1
@x4
(ApplyTT @x2
@x0)
@x3))
 

:pattern ((ApplyTT (Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9))

:named interpretation_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9))

; Encoding query formula : forall (res: Type)
;   (a: Type)
;   (b: Type)
;   (c: Type)
;   (f: DelimCC.kont2 res a)
;   (g: (_: a -> DelimCC.kont2 res b))
;   (h: (_: b -> DelimCC.kont2 res c)).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (DelimCC.bind_k2 res
;               a
;               c
;               f
;               (fun x -> DelimCC.bind_k2 res b c (g x) h))
;           (DelimCC.bind_k2 res b c (DelimCC.bind_k2 res a b f g) h) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let associativity2`

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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(DelimCC.kont2 @x0
@x1))
(HasType @x5
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x2
@x0
@x1))
(HasType @x6
(Tm_arrow_4f1d1253d1d475a0b24bdfd9fef79629 @x3
@x0
@x2)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(79,37-79,39)
(forall ((@x8 Term))
 (! (implies (and (or label_1
(HasType @x8
Prims.unit))

;; def=DelimCC.fst(78,12-78,114); use=DelimCC.fst(79,37-79,39)
(or label_2

;; def=DelimCC.fst(78,12-78,114); use=DelimCC.fst(79,37-79,39)
(Valid 
;; def=DelimCC.fst(78,12-78,114); use=DelimCC.fst(79,37-79,39)
(FStar.FunctionalExtensionality.feq (Tm_arrow_6980332764c4493a7b0df5c02f7aefbe @x0
@x3)
(Tm_abs_3d20d7fa78263a4dc1e690a6516c0f54 @x3
@x0)
(DelimCC.bind_k2 @x0
@x1
@x3
@x4
(Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9 @x2
@x5
@x6
@x3
@x0
@x1))
(DelimCC.bind_k2 @x0
@x2
@x3
(DelimCC.bind_k2 @x0
@x1
@x2
@x4
@x5)
@x6))
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(79,37-79,39)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(79,37-79,39)
(ApplyTT @x7
@x8)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(79,37-79,39)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(79,37-79,39)
(ApplyTT @x7
@x8)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x7
@x8)
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
; QUERY ID: (DelimCC.associativity2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_DelimCC.bind_k2, equation_DelimCC.kont2, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_0de330fc678989ce5861c85495562e0c, interpretation_Tm_abs_4e59e68fcdad5d80a4fa17c66d2981b9, interpretation_Tm_abs_a210d7a9f583a6ace87f21677d0e5051, refinement_interpretation_Tm_refine_08d98d1a6a9f5eaedb943ec6a353e610, typing_Tm_abs_a210d7a9f583a6ace87f21677d0e5051

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let associativity2


; <Start encoding let associativity2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun DelimCC.associativity2 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun DelimCC.associativity2@tok () Term)

; </end encoding let associativity2>


; encoding sigelt val DelimCC.callcc2


; <Skipped val DelimCC.callcc2/>


; encoding sigelt let callcc2


; <Start encoding let callcc2>


;;;;;;;;;;;;;;;;_: (_: a -> cont2 res b) -> cont2 res a
(declare-fun Tm_arrow_d9280107b3e96fca9e46cc90b12213af (Term Term Term) Term)
(declare-fun DelimCC.callcc2 (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;res: Type -> a: Type -> b: Type -> f: (_: (_: a -> cont2 res b) -> cont2 res a) -> cont2 res a
(declare-fun Tm_arrow_e74a6f9260c1387464b34ced648d716d () Term)
(declare-fun DelimCC.callcc2@tok () Term)





;;;;;;;;;;;;;;;;x: a -> _: (_: b -> res) -> res
(declare-fun Tm_arrow_9b14e54f7f69a3551f6f9886f60674d1 (Term Term Term) Term)
(declare-fun Tm_abs_09973325320d56b761d1fb9d0bba4e49 (Term Term Term Term) Term)


(declare-fun Tm_abs_6adff4bb3e8ed9734685f03a64f4c521 (Term Term Term Term) Term)

; </end encoding let callcc2>


; encoding sigelt val DelimCC.shift2


; <Skipped val DelimCC.shift2/>


; encoding sigelt let shift2


; <Start encoding let shift2>


;;;;;;;;;;;;;;;;_: (_: a -> cont2 o p) -> cont2 p p
(declare-fun Tm_arrow_0c80e4d74dc341847662f8d4c6341d5b (Term Term Term) Term)
(declare-fun DelimCC.shift2 (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;o: Type -> p: Type -> a: Type -> h: (_: (_: a -> cont2 o p) -> cont2 p p) -> cont2 p a
(declare-fun Tm_arrow_c7810249e85a8f3c9cb14a2b5580bc00 () Term)
(declare-fun DelimCC.shift2@tok () Term)






(declare-fun Tm_abs_601492d03b9ddc3c3867bb872a082b4e (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;x: p -> p
(declare-fun Tm_arrow_fcd589b21e6efcf1e5d17b07c282a015 (Term) Term)
(declare-fun Tm_abs_df014086844df71fc4d382cd0e833b2b (Term) Term)


(declare-fun Tm_abs_7aea3d03b4f8b75a041e5dd9ed0bcd0a (Term Term Term Term) Term)

; </end encoding let shift2>


; encoding sigelt val DelimCC.reset2


; <Skipped val DelimCC.reset2/>


; encoding sigelt let reset2


; <Start encoding let reset2>

;;;;;;;;;;;;;;;;_: Prims.unit -> cont2 p p
(declare-fun Tm_arrow_49d8d9f12a5ffb44858c6ff57b6a1cdd (Term) Term)
(declare-fun DelimCC.reset2 (Term Term Term) Term)

;;;;;;;;;;;;;;;;o: Type -> p: Type -> m: (_: Prims.unit -> cont2 p p) -> cont2 o p
(declare-fun Tm_arrow_296ad35d3a29997cc101bffbcebc9758 () Term)
(declare-fun DelimCC.reset2@tok () Term)






(declare-fun Tm_abs_6b27305367fdd4a32bca3ab0af557544 (Term Term Term) Term)

; </end encoding let reset2>


; encoding sigelt let cont3


; <Start encoding let cont3>

(declare-fun DelimCC.cont3 (Term) Term)

(declare-fun DelimCC.cont3@tok () Term)



; </end encoding let cont3>


; encoding sigelt let return_k3


; <Start encoding let return_k3>

(declare-fun DelimCC.return_k3 (Term Term) Term)
;;;;;;;;;;;;;;;;x: a -> cont3 a
(declare-fun Tm_arrow_1acc0086945b73b935a37f451b9ed4ed () Term)
(declare-fun DelimCC.return_k3@tok () Term)





; </end encoding let return_k3>


; encoding sigelt let bind_k3


; <Start encoding let bind_k3>

;;;;;;;;;;;;;;;;_: a -> cont3 b
(declare-fun Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 (Term Term) Term)
(declare-fun DelimCC.bind_k3 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;m: cont3 a -> f: (_: a -> cont3 b) -> cont3 b
(declare-fun Tm_arrow_64ded793c0af366033db770945bf5c4d () Term)
(declare-fun DelimCC.bind_k3@tok () Term)








; </end encoding let bind_k3>


; encoding sigelt val DelimCC.left_unit3


; <Skipped val DelimCC.left_unit3/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name DelimCC.cont3; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(95,4-95,9); use=DelimCC.fst(95,4-95,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (DelimCC.cont3 @x0)
Tm_type))
 

:pattern ((DelimCC.cont3 @x0))
:qid typing_DelimCC.cont3))

:named typing_DelimCC.cont3))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549
;;; Fact-ids: Name DelimCC.bind_k3; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(100,21-101,49); use=DelimCC.fst(101,31-101,49)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549))

:named kinding_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549))
;;;;;;;;;;;;;;;;Equation for DelimCC.cont3
;;; Fact-ids: Name DelimCC.cont3; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(95,4-95,9); use=DelimCC.fst(95,4-95,9)
(forall ((@x0 Term))
 (! (= (DelimCC.cont3 @x0)
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x0))
 

:pattern ((DelimCC.cont3 @x0))
:qid equation_DelimCC.cont3))

:named equation_DelimCC.cont3))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name DelimCC.bind_k3; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(100,21-101,49); use=DelimCC.fst(101,31-101,49)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x2
@x3)))
:qid DelimCC_pre_typing_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549))

:named DelimCC_pre_typing_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549
;;; Fact-ids: Name DelimCC.bind_k3; Namespace DelimCC
(assert (! 
;; def=DelimCC.fst(100,21-101,49); use=DelimCC.fst(101,31-101,49)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x1
@x2))
(and 
;; def=DelimCC.fst(100,21-101,49); use=DelimCC.fst(101,31-101,49)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(DelimCC.cont3 @x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid DelimCC_interpretation_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x1
@x2)))
:qid DelimCC_interpretation_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549))

:named DelimCC_interpretation_Tm_arrow_e8d26808490e7a9a67c0a0216c62c549))
(push) ;; push{2

; Starting query at DelimCC.fst(107,27-107,29)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




;;;;;;;;;;;;;;;;_: (_: b -> result) -> Type0
(declare-fun Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(95,31-107,20); use=DelimCC.fst(107,19-107,29)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0)
Tm_type))
:qid kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named kinding_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(95,31-107,20); use=DelimCC.fst(107,19-107,29)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x2)))
:qid DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_pre_typing_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(95,31-107,20); use=DelimCC.fst(107,19-107,29)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1))
(and 
;; def=DelimCC.fst(95,31-107,20); use=DelimCC.fst(107,19-107,29)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x1)))
:qid DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))

:named DelimCC_interpretation_Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989))
(declare-fun Tm_abs_249f127c8c33120413dc4e490af92a27 (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(95,46-95,52); use=DelimCC.fst(107,27-107,29)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_249f127c8c33120413dc4e490af92a27 @x0)
(Tm_arrow_bbc764b56df7a72a1913af8bf3e1e989 @x0))
 

:pattern ((Tm_abs_249f127c8c33120413dc4e490af92a27 @x0))
:qid typing_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named typing_Tm_abs_249f127c8c33120413dc4e490af92a27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(95,46-95,52); use=DelimCC.fst(107,27-107,29)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0)
DelimCC.result)
 

:pattern ((ApplyTT (Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
@x0))
:qid interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))

:named interpretation_Tm_abs_249f127c8c33120413dc4e490af92a27))



(declare-fun Tm_abs_dbdc705d0aa12bf03732867b4b6d0795 (Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(102,17-102,35); use=DelimCC.fst(106,24-106,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_dbdc705d0aa12bf03732867b4b6d0795 @x0
@x1
@x2)
(Tm_arrow_2614877b1ff88d8f564d41b1aea0c64a @x2))
 

:pattern ((Tm_abs_dbdc705d0aa12bf03732867b4b6d0795 @x0
@x1
@x2))
:qid typing_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795))

:named typing_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795
;;; Fact-ids: 
(assert (! 
;; def=DelimCC.fst(102,17-102,35); use=DelimCC.fst(106,24-106,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_dbdc705d0aa12bf03732867b4b6d0795 @x1
@x2
@x3)
@x0)
(ApplyTT (ApplyTT @x1
@x2)
@x0))
 

:pattern ((ApplyTT (Tm_abs_dbdc705d0aa12bf03732867b4b6d0795 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795))

:named interpretation_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795))

; Encoding query formula : forall (a: Type) (b: Type) (x: a) (f: (_: a -> DelimCC.cont3 b)).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         FStar.FunctionalExtensionality.feq (fun k -> f x k) (f x) ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let left_unit3`

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
@x0)
(HasType @x3
(Tm_arrow_e8d26808490e7a9a67c0a0216c62c549 @x1
@x0)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=DelimCC.fst(107,27-107,29)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
Prims.unit))

;; def=DelimCC.fst(106,23-106,58); use=DelimCC.fst(107,27-107,29)
(or label_2

;; def=DelimCC.fst(106,23-106,58); use=DelimCC.fst(107,27-107,29)
(Valid 
;; def=DelimCC.fst(106,23-106,58); use=DelimCC.fst(107,27-107,29)
(FStar.FunctionalExtensionality.feq (Tm_arrow_3ea80b24528335a2f82f5ca49abb4d5b @x1)
(Tm_abs_249f127c8c33120413dc4e490af92a27 @x1)
(Tm_abs_dbdc705d0aa12bf03732867b4b6d0795 @x3
@x2
@x1)
(ApplyTT @x3
@x2))
)
)
)

;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(107,27-107,29)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(107,27-107,29)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(107,27-107,29)
(Valid 
;; def=Prims.fst(441,83-441,96); use=DelimCC.fst(107,27-107,29)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x4
@x5)
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
; QUERY ID: (DelimCC.left_unit3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_FStar.FunctionalExtensionality.feq, interpretation_Tm_abs_dbdc705d0aa12bf03732867b4b6d0795
