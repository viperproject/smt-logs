
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


; Externals for module FStar.Monotonic.Pure


; <Start encoding let is_monotonic>

(declare-fun FStar.Monotonic.Pure.is_monotonic (Term Term) Term)

(declare-fun FStar.Monotonic.Pure.is_monotonic@tok () Term)

; </end encoding let is_monotonic>


; <Start encoding let elim_pure_wp_monotonicity>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Pure.elim_pure_wp_monotonicity (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Pure.elim_pure_wp_monotonicity@tok () Term)

; </end encoding let elim_pure_wp_monotonicity>


; <Start encoding let elim_pure_wp_monotonicity_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Pure.elim_pure_wp_monotonicity_forall (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Pure.elim_pure_wp_monotonicity_forall@tok () Term)

; </end encoding let elim_pure_wp_monotonicity_forall>


; <Start encoding let intro_pure_wp_monotonicity>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Pure.intro_pure_wp_monotonicity (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Pure.intro_pure_wp_monotonicity@tok () Term)

; </end encoding let intro_pure_wp_monotonicity>


; <Start encoding let as_pure_wp>

(declare-fun FStar.Monotonic.Pure.as_pure_wp (Term Term) Term)
(declare-fun Tm_refine_5578b11cc349512589a3d2a8bfe37c29 (Term Term) Term)
(declare-fun Tm_arrow_169997680175178f95069b947929b45b () Term)
(declare-fun FStar.Monotonic.Pure.as_pure_wp@tok () Term)


; </end encoding let as_pure_wp>


; <Start encoding let elim_pure>

(declare-fun Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b (Term) Term)

(declare-fun Tm_arrow_61bb9550f39772f18eaab129c43c3788 (Term) Term)
(declare-fun Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 (Term Term) Term)
(declare-fun Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 (Term Term) Term)



(declare-fun Tm_abs_735bfa0400a12573ed48312f042e45e7 (Term) Term)
(declare-fun Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd (Term Term) Term)
(declare-fun FStar.Monotonic.Pure.elim_pure (Term Term Term Term) Term)










(declare-fun Tm_refine_9f8cb5a84b67f50c9d5f87a914037545 (Term Term) Term)
(declare-fun Tm_arrow_08f6df717f4cfecbf9659e86cd16d49b () Term)
(declare-fun FStar.Monotonic.Pure.elim_pure@tok () Term)












; </end encoding let elim_pure>


; End Externals for module FStar.Monotonic.Pure

(push) ;; push{1

; Internals for HoareSTFree


; encoding sigelt let mpre


; <Start encoding let mpre>

(declare-fun HoareSTFree.mpre (Term) Term)

(declare-fun HoareSTFree.mpre@tok () Term)


; </end encoding let mpre>


; encoding sigelt let mpost


; <Start encoding let mpost>

(declare-fun HoareSTFree.mpost (Term Term) Term)

(declare-fun HoareSTFree.mpost@tok () Term)
;;;;;;;;;;;;;;;;_: st -> _: a -> _: st -> Type
(declare-fun Tm_arrow_d59d026ac7386aee378037a7314abdab (Term Term) Term)

; </end encoding let mpost>


; encoding sigelt let act_p


; <Start encoding let act_p>

;;;;;;;;;;;;;;;;_: a -> mpre st
(declare-fun Tm_arrow_8b71441b70a86d228c0e538267b50194 (Term Term) Term)
(declare-fun HoareSTFree.act_p (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;a_p: mpre st -> a_q: mpost st a -> k_p: (_: a -> mpre st) -> mpre st
(declare-fun Tm_arrow_998a3bf26e7d2e56e05130be51efc1a6 () Term)
(declare-fun HoareSTFree.act_p@tok () Term)


(declare-fun Tm_abs_95038e44d0afb0a1f18db035d53b86ed (Term Term Term Term Term) Term)

(declare-fun Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b (Term Term Term Term Term) Term)

(declare-fun Tm_abs_b5422111c78eed395d177884f9f544e8 (Term Term Term Term Term) Term)

; </end encoding let act_p>


; encoding sigelt let act_q


; <Start encoding let act_q>

;;;;;;;;;;;;;;;;_: a -> mpost st b
(declare-fun Tm_arrow_a0e46eb89e9eded1de46d98960f169fd (Term Term Term) Term)
(declare-fun HoareSTFree.act_q (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;a_q: mpost st a -> k_q: (_: a -> mpost st b) -> mpost st b
(declare-fun Tm_arrow_908ff7989501c27d0af7a272d9d36439 () Term)
(declare-fun HoareSTFree.act_q@tok () Term)


(declare-fun Tm_abs_e112764234264271de352d09ff3f0f7c (Term Term Term Term Term Term Term) Term)

(declare-fun Tm_abs_b75047693a50deb548fcc495b6a99857 (Term Term Term Term Term Term Term) Term)

(declare-fun Tm_abs_90afe3918a255333b80d7a5b53bb8b98 (Term Term Term Term Term) Term)

; </end encoding let act_q>


; encoding sigelt let weaken_ok


; <Start encoding let weaken_ok>

(declare-fun HoareSTFree.weaken_ok (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;p0: mpre st -> q0: mpost st a -> p1: mpre st -> q1: mpost st a -> Type
(declare-fun Tm_arrow_856aa50c338aed89696648b5ba9663e3 () Term)
(declare-fun HoareSTFree.weaken_ok@tok () Term)

; </end encoding let weaken_ok>


; encoding sigelt let strengthen_pre


; <Start encoding let strengthen_pre>

(declare-fun HoareSTFree.strengthen_pre (Term Term Term) Term)
;;;;;;;;;;;;;;;;p: mpre st -> phi: Prims.pure_pre -> mpre st
(declare-fun Tm_arrow_6794f5d60f187c1c95bff6e4aee84a05 () Term)
(declare-fun HoareSTFree.strengthen_pre@tok () Term)

(declare-fun Tm_abs_e801ea450b6a9c23d60355e4509dfc47 (Term Term Term) Term)

; </end encoding let strengthen_pre>


; encoding sigelt type HoareSTFree.m


; <Start encoding type HoareSTFree.m>

;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.m (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun HoareSTFree.m@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.Ret (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Ret_st (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Ret_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Ret_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Ret_x (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: HoareSTFree.Ret
(declare-fun HoareSTFree.Ret@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.Act (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_st (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_a_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_a_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_act (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_k_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_k_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Act_k (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: HoareSTFree.Act
(declare-fun HoareSTFree.Act@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.Weaken (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_st (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_p0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_q0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_p1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_q1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Weaken_f (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: HoareSTFree.Weaken
(declare-fun HoareSTFree.Weaken@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.Strengthen (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Strengthen_st (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Strengthen_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Strengthen_phi (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Strengthen_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Strengthen_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Strengthen_f (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: HoareSTFree.Strengthen
(declare-fun HoareSTFree.Strengthen@tok () Term)
;;;;;;;;;;;;;;;;s0: st -> Type0
(declare-fun Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa (Term) Term)
(declare-fun Tm_abs_72fed80a0d71173ebd5b8d137856a1e0 (Term) Term)
;;;;;;;;;;;;;;;;s1: st -> Prims.GTot Type
(declare-fun Tm_arrow_3e2d30814b994df822fa5b890f066d2a (Term) Term)
(declare-fun Tm_abs_1aa57fcb00a32666e37a0902297103b0 (Term Term Term) Term)
;;;;;;;;;;;;;;;;x: a -> Prims.GTot Type
(declare-fun Tm_arrow_50ceed76d6b1226e78382c360ea14691 (Term) Term)
(declare-fun Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a (Term Term) Term)

(declare-fun Tm_abs_af586eafa4c991538485f8176ecbb3fa (Term) Term)

(declare-fun Tm_abs_6b392b819a6f380b26ba19c10d389a48 (Term Term Term Term Term) Term)

(declare-fun Tm_abs_604355800cabad6e61b3b019d41b71e2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: st -> y: b -> s2: st -> Type
(declare-fun Tm_arrow_b39301e315329869590a3ef1004830b3 (Term) Term)
(declare-fun Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22 (Term) Term)
;;;;;;;;;;;;;;;;s: st -> Type
(declare-fun Tm_arrow_781a8775d0e735e87d74a676cf1713f7 (Term) Term)
(declare-fun Tm_abs_a8428808b6e61e4d50b143b30e3351a9 (Term) Term)

(declare-fun Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 (Term Term Term) Term)


;;;;;;;;;;;;;;;;x: a -> m st a (fun s0 -> q s0 x s0) q
(declare-fun Tm_arrow_c620ba7eafa796b6c7f42e4ae800faf8 () Term)


(declare-fun Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: st -> Prims.Pure (a & st)
(declare-fun Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 (Term Term Term Term) Term)




(declare-fun Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d (Term Term Term Term Term) Term)































;;;;;;;;;;;;;;;;act: (s0: st -> Prims.Pure (a & st)) -> k: (x: a -> FStar.Pervasives.Dv (m st b (k_p x) (k_q x)))   -> m st       b       (fun s0 -> a_p s0 /\ (forall (x: a) (s1: st). a_q s0 x s1 ==> k_p x s1))       (fun s0 y s2 -> exists (x: a) (s1: st). a_q s0 x s1 /\ k_q x s1 y s2)
(declare-fun Tm_arrow_96a649a1001f48d2431355edf9da8a5c () Term)












(declare-fun Tm_refine_8fb012c82b6116d290a3f8671988cb15 (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;f: m st a p0 q0 -> m st a p1 q1
(declare-fun Tm_arrow_0e6c1f7fc6d48a949b0855b86a63090b () Term)
(declare-fun Non_total_Tm_arrow_51476fa40fd479810760737271656dc9 (Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;f: (_: Prims.squash phi -> FStar.Pervasives.Dv (m st a p q)) -> m st a (fun s -> p s /\ phi) q
(declare-fun Tm_arrow_31c0e27a588974723a6950dc3e94e383 () Term)



; <start constructor HoareSTFree.m>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.m ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
146)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= __@x0
(HoareSTFree.m @x0
@x1
@x2
@x3))
 
;;no pats
:qid is-HoareSTFree.m))))

; </end constructor HoareSTFree.m>


; <start constructor HoareSTFree.Ret>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.Ret ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
169)
(= __@x0
(HoareSTFree.Ret (HoareSTFree.Ret_st __@x0)
(HoareSTFree.Ret_a __@x0)
(HoareSTFree.Ret_q __@x0)
(HoareSTFree.Ret_x __@x0)))))

; </end constructor HoareSTFree.Ret>


; <start constructor HoareSTFree.Act>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.Act ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
198)
(= __@x0
(HoareSTFree.Act (HoareSTFree.Act_st __@x0)
(HoareSTFree.Act_a __@x0)
(HoareSTFree.Act_a_p __@x0)
(HoareSTFree.Act_a_q __@x0)
(HoareSTFree.Act_act __@x0)
(HoareSTFree.Act_b __@x0)
(HoareSTFree.Act_k_p __@x0)
(HoareSTFree.Act_k_q __@x0)
(HoareSTFree.Act_k __@x0)))))

; </end constructor HoareSTFree.Act>








; <start constructor HoareSTFree.Weaken>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.Weaken ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
258)
(= __@x0
(HoareSTFree.Weaken (HoareSTFree.Weaken_st __@x0)
(HoareSTFree.Weaken_a __@x0)
(HoareSTFree.Weaken_p0 __@x0)
(HoareSTFree.Weaken_q0 __@x0)
(HoareSTFree.Weaken_p1 __@x0)
(HoareSTFree.Weaken_q1 __@x0)
(HoareSTFree.Weaken__5 __@x0)
(HoareSTFree.Weaken_f __@x0)))))

; </end constructor HoareSTFree.Weaken>


; <start constructor HoareSTFree.Strengthen>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.Strengthen ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
271)
(= __@x0
(HoareSTFree.Strengthen (HoareSTFree.Strengthen_st __@x0)
(HoareSTFree.Strengthen_a __@x0)
(HoareSTFree.Strengthen_phi __@x0)
(HoareSTFree.Strengthen_p __@x0)
(HoareSTFree.Strengthen_q __@x0)
(HoareSTFree.Strengthen_f __@x0)))))

; </end constructor HoareSTFree.Strengthen>


; </end encoding type HoareSTFree.m>


; encoding sigelt val HoareSTFree.uu___is_Ret


; <Start encoding val HoareSTFree.uu___is_Ret>

(declare-fun HoareSTFree.uu___is_Ret (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: m st a p q -> Prims.bool
(declare-fun Tm_arrow_bc05904f47f2cf52ff36a651ceef7183 () Term)
(declare-fun HoareSTFree.uu___is_Ret@tok () Term)

; </end encoding val HoareSTFree.uu___is_Ret>


; encoding sigelt let uu___is_Ret


; <Skipped let uu___is_Ret/>


; encoding sigelt val HoareSTFree.__proj__Ret__item__a


; <Start encoding val HoareSTFree.__proj__Ret__item__a>

(declare-fun Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 (Term Term Term Term) Term)
(declare-fun HoareSTFree.__proj__Ret__item__a (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Ret? _} -> Type
(declare-fun Tm_arrow_9593ccbe8cb4c159c95a935fdf7dc148 () Term)
(declare-fun HoareSTFree.__proj__Ret__item__a@tok () Term)

; </end encoding val HoareSTFree.__proj__Ret__item__a>

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
;;;;;;;;;;;;;;;;typing_Tm_abs_e801ea450b6a9c23d60355e4509dfc47
;;; Fact-ids: Name HoareSTFree.strengthen_pre; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(80,11-80,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x0
@x1
@x2)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x2))
 

:pattern ((Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x0
@x1
@x2))
:qid typing_Tm_abs_e801ea450b6a9c23d60355e4509dfc47))

:named typing_Tm_abs_e801ea450b6a9c23d60355e4509dfc47))
;;;;;;;;;;;;;;;;typing_Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x0
@x1)
(Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x1))
 

:pattern ((Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x0
@x1))
:qid typing_Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a))

:named typing_Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a))
;;;;;;;;;;;;;;;;typing_Tm_abs_e112764234264271de352d09ff3f0f7c
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(65,30-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_e112764234264271de352d09ff3f0f7c @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x6))
 

:pattern ((Tm_abs_e112764234264271de352d09ff3f0f7c @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_e112764234264271de352d09ff3f0f7c))

:named typing_Tm_abs_e112764234264271de352d09ff3f0f7c))
;;;;;;;;;;;;;;;;typing_Tm_abs_b75047693a50deb548fcc495b6a99857
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(65,30-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_b75047693a50deb548fcc495b6a99857 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x6))
 

:pattern ((Tm_abs_b75047693a50deb548fcc495b6a99857 @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_b75047693a50deb548fcc495b6a99857))

:named typing_Tm_abs_b75047693a50deb548fcc495b6a99857))
;;;;;;;;;;;;;;;;typing_Tm_abs_b5422111c78eed395d177884f9f544e8
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(61,12-61,70)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_b5422111c78eed395d177884f9f544e8 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x4))
 

:pattern ((Tm_abs_b5422111c78eed395d177884f9f544e8 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_b5422111c78eed395d177884f9f544e8))

:named typing_Tm_abs_b5422111c78eed395d177884f9f544e8))
;;;;;;;;;;;;;;;;typing_Tm_abs_af586eafa4c991538485f8176ecbb3fa
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_af586eafa4c991538485f8176ecbb3fa @x0)
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x0))
 

:pattern ((Tm_abs_af586eafa4c991538485f8176ecbb3fa @x0))
:qid typing_Tm_abs_af586eafa4c991538485f8176ecbb3fa))

:named typing_Tm_abs_af586eafa4c991538485f8176ecbb3fa))
;;;;;;;;;;;;;;;;typing_Tm_abs_a8428808b6e61e4d50b143b30e3351a9
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(109,12-109,26)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_a8428808b6e61e4d50b143b30e3351a9 @x0)
(Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x0))
 

:pattern ((Tm_abs_a8428808b6e61e4d50b143b30e3351a9 @x0))
:qid typing_Tm_abs_a8428808b6e61e4d50b143b30e3351a9))

:named typing_Tm_abs_a8428808b6e61e4d50b143b30e3351a9))
;;;;;;;;;;;;;;;;typing_Tm_abs_95038e44d0afb0a1f18db035d53b86ed
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(61,36-61,69)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_95038e44d0afb0a1f18db035d53b86ed @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x4))
 

:pattern ((Tm_abs_95038e44d0afb0a1f18db035d53b86ed @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_95038e44d0afb0a1f18db035d53b86ed))

:named typing_Tm_abs_95038e44d0afb0a1f18db035d53b86ed))
;;;;;;;;;;;;;;;;typing_Tm_abs_90afe3918a255333b80d7a5b53bb8b98
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(65,17-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_d59d026ac7386aee378037a7314abdab @x3
@x4))
 

:pattern ((Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_90afe3918a255333b80d7a5b53bb8b98))

:named typing_Tm_abs_90afe3918a255333b80d7a5b53bb8b98))
;;;;;;;;;;;;;;;;typing_Tm_abs_72fed80a0d71173ebd5b8d137856a1e0
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(94,22-94,31); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_72fed80a0d71173ebd5b8d137856a1e0 @x0)
(Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x0))
 

:pattern ((Tm_abs_72fed80a0d71173ebd5b8d137856a1e0 @x0))
:qid typing_Tm_abs_72fed80a0d71173ebd5b8d137856a1e0))

:named typing_Tm_abs_72fed80a0d71173ebd5b8d137856a1e0))
;;;;;;;;;;;;;;;;typing_Tm_abs_6ba36691ee58dee85cd144324b083848
;;; Fact-ids: Name Prims.l_Exists; Namespace Prims
(assert (! 
;; def=Prims.fst(509,75-509,78); use=Prims.fst(509,75-509,78)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_6ba36691ee58dee85cd144324b083848 @x0
@x1)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1))
 

:pattern ((Tm_abs_6ba36691ee58dee85cd144324b083848 @x0
@x1))
:qid typing_Tm_abs_6ba36691ee58dee85cd144324b083848))

:named typing_Tm_abs_6ba36691ee58dee85cd144324b083848))
;;;;;;;;;;;;;;;;typing_Tm_abs_6b392b819a6f380b26ba19c10d389a48
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_6b392b819a6f380b26ba19c10d389a48 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x4))
 

:pattern ((Tm_abs_6b392b819a6f380b26ba19c10d389a48 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_6b392b819a6f380b26ba19c10d389a48))

:named typing_Tm_abs_6b392b819a6f380b26ba19c10d389a48))
;;;;;;;;;;;;;;;;typing_Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(61,36-61,69)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x4))
 

:pattern ((Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b))

:named typing_Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b))
;;;;;;;;;;;;;;;;typing_Tm_abs_604355800cabad6e61b3b019d41b71e2
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_604355800cabad6e61b3b019d41b71e2 @x0
@x1
@x2
@x3)
(Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x3))
 

:pattern ((Tm_abs_604355800cabad6e61b3b019d41b71e2 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_604355800cabad6e61b3b019d41b71e2))

:named typing_Tm_abs_604355800cabad6e61b3b019d41b71e2))
;;;;;;;;;;;;;;;;typing_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(94,22-94,31); use=HoareSTFree.fst(94,22-94,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x0
@x1
@x2)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x2))
 

:pattern ((Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x0
@x1
@x2))
:qid typing_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845))

:named typing_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845))
;;;;;;;;;;;;;;;;typing_Tm_abs_1aa57fcb00a32666e37a0902297103b0
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_1aa57fcb00a32666e37a0902297103b0 @x0
@x1
@x2)
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x2))
 

:pattern ((Tm_abs_1aa57fcb00a32666e37a0902297103b0 @x0
@x1
@x2))
:qid typing_Tm_abs_1aa57fcb00a32666e37a0902297103b0))

:named typing_Tm_abs_1aa57fcb00a32666e37a0902297103b0))
;;;;;;;;;;;;;;;;typing_Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22 @x0)
(Tm_arrow_b39301e315329869590a3ef1004830b3 @x0))
 

:pattern ((Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22 @x0))
:qid typing_Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22))

:named typing_Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22))
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
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (HasType Prims.pure_pre
Tm_type)
:named typing_Prims.pure_pre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named typing_Prims.logical))
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
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_Exists; Namespace Prims
(assert (! 
;; def=Prims.fst(509,5-509,13); use=Prims.fst(509,5-509,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0)))
(HasType (Prims.l_Exists @x0
@x1)
Prims.logical))
 

:pattern ((Prims.l_Exists @x0
@x1))
:qid typing_Prims.l_Exists))

:named typing_Prims.l_Exists))
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
;;; Fact-ids: Name HoareSTFree.uu___is_Ret; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4)
Prims.bool))
 

:pattern ((HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.uu___is_Ret))

:named typing_HoareSTFree.uu___is_Ret))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.mpre; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,5-48,9); use=HoareSTFree.fst(48,5-48,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (HoareSTFree.mpre @x0)
Tm_type))
 

:pattern ((HoareSTFree.mpre @x0))
:qid typing_HoareSTFree.mpre))

:named typing_HoareSTFree.mpre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.mpost; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,5-49,10); use=HoareSTFree.fst(49,5-49,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (HoareSTFree.mpost @x0
@x1)
Tm_type))
 

:pattern ((HoareSTFree.mpost @x0
@x1))
:qid typing_HoareSTFree.mpost))

:named typing_HoareSTFree.mpost))
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
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(503,5-503,12); use=Prims.fst(503,5-503,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Prims.dtuple2@tok
@x0)
@x1)
(Prims.dtuple2 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Prims.dtuple2@tok
@x0)
@x1))

:pattern ((Prims.dtuple2 @x0
@x1))
:qid token_correspondence_Prims.dtuple2@tok))

:named token_correspondence_Prims.dtuple2@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.m@tok
@x0)
@x1)
@x2)
@x3)
(HoareSTFree.m @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.m@tok
@x0)
@x1)
@x2)
@x3))

:pattern ((HoareSTFree.m @x0
@x1
@x2
@x3))
:qid token_correspondence_HoareSTFree.m@tok))

:named token_correspondence_HoareSTFree.m@tok))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)
(Prims.dtuple2 @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)
(Prims.dtuple2 @x5
@x6)))
:qid subterm_ordering_Prims.Mkdtuple2))

:named subterm_ordering_Prims.Mkdtuple2))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(HoareSTFree.m @x9
@x10
@x11
@x12))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x7
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x8
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(HoareSTFree.m @x9
@x10
@x11
@x12)))
:qid subterm_ordering_HoareSTFree.Weaken))

:named subterm_ordering_HoareSTFree.Weaken))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)
(HoareSTFree.m @x7
@x8
@x9
@x10))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)
(HoareSTFree.m @x7
@x8
@x9
@x10)))
:qid subterm_ordering_HoareSTFree.Strengthen))

:named subterm_ordering_HoareSTFree.Strengthen))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Ret @x1
@x2
@x3
@x4)
(HoareSTFree.m @x5
@x6
@x7
@x8))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(HoareSTFree.Ret @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(HoareSTFree.Ret @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(HoareSTFree.Ret @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Ret @x1
@x2
@x3
@x4)
(HoareSTFree.m @x5
@x6
@x7
@x8)))
:qid subterm_ordering_HoareSTFree.Ret))

:named subterm_ordering_HoareSTFree.Ret))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(HoareSTFree.m @x10
@x11
@x12
@x13))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x7
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x8
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x9
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(HoareSTFree.m @x10
@x11
@x12
@x13)))
:qid subterm_ordering_HoareSTFree.Act))

:named subterm_ordering_HoareSTFree.Act))
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
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(97,23-97,31); use=HoareSTFree.fst(97,23-97,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42))

:named refinement_kinding_Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(103,13-103,22)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type)
 

:pattern ((HasType (Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid refinement_kinding_Tm_refine_8fb012c82b6116d290a3f8671988cb15))

:named refinement_kinding_Tm_refine_8fb012c82b6116d290a3f8671988cb15))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name HoareSTFree.__proj__Ret__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81))

:named refinement_kinding_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81))
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
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(97,23-97,31); use=HoareSTFree.fst(97,23-97,31)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 @x2
@x3))
(let ((@lb6 @x1))

;; def=HoareSTFree.fst(97,57-97,68); use=HoareSTFree.fst(97,57-97,68)
(Valid 
;; def=HoareSTFree.fst(97,57-97,68); use=HoareSTFree.fst(97,57-97,68)
(ApplyTT (ApplyTT (ApplyTT @x4
@x5)
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
(FStar.Pervasives.Native.Mktuple2__2 @lb6))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42))

:named refinement_interpretation_Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(103,13-103,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x2
@x3
@x4
@x5
@x6
@x7))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(103,13-103,22)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
@x2)

;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(103,13-103,22)
(Valid 
;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(103,13-103,22)
(ApplyTT @x3
@x8)
)
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(103,13-103,22)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(103,13-103,22)
(ApplyTT @x4
@x8)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_8fb012c82b6116d290a3f8671988cb15.1))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(103,13-103,22)
(forall ((@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x8
@x2)
(HasType @x9
@x5)
(HasType @x10
@x2)

;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(103,13-103,22)
(Valid 
;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(103,13-103,22)
(ApplyTT @x3
@x8)
)


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(103,13-103,22)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(103,13-103,22)
(ApplyTT (ApplyTT (ApplyTT @x6
@x8)
@x9)
@x10)
)
)

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(103,13-103,22)
(Valid 
;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(103,13-103,22)
(ApplyTT (ApplyTT (ApplyTT @x7
@x8)
@x9)
@x10)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_8fb012c82b6116d290a3f8671988cb15.2))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x2
@x3
@x4
@x5
@x6
@x7)))
:qid refinement_interpretation_Tm_refine_8fb012c82b6116d290a3f8671988cb15))

:named refinement_interpretation_Tm_refine_8fb012c82b6116d290a3f8671988cb15))
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
;;; Fact-ids: Name HoareSTFree.__proj__Ret__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(HoareSTFree.m @x2
@x3
@x4
@x5))

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x2
@x3
@x4
@x5
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81))

:named refinement_interpretation_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81))
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Mkdtuple2_b (Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Mkdtuple2_b))

:named projection_inverse_Prims.Mkdtuple2_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Mkdtuple2_a (Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Mkdtuple2_a))

:named projection_inverse_Prims.Mkdtuple2_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Mkdtuple2__2 (Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Mkdtuple2__2))

:named projection_inverse_Prims.Mkdtuple2__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Prims.Mkdtuple2__1 (Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
:qid projection_inverse_Prims.Mkdtuple2__1))

:named projection_inverse_Prims.Mkdtuple2__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_st (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x0)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_st))

:named projection_inverse_HoareSTFree.Weaken_st))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_q1 (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x5)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_q1))

:named projection_inverse_HoareSTFree.Weaken_q1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_q0 (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x3)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_q0))

:named projection_inverse_HoareSTFree.Weaken_q0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_p1 (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x4)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_p1))

:named projection_inverse_HoareSTFree.Weaken_p1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_p0 (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x2)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_p0))

:named projection_inverse_HoareSTFree.Weaken_p0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_f (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x7)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_f))

:named projection_inverse_HoareSTFree.Weaken_f))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken_a (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x1)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken_a))

:named projection_inverse_HoareSTFree.Weaken_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (HoareSTFree.Weaken__5 (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
@x6)
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid projection_inverse_HoareSTFree.Weaken__5))

:named projection_inverse_HoareSTFree.Weaken__5))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (HoareSTFree.Strengthen_st (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
@x0)
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_HoareSTFree.Strengthen_st))

:named projection_inverse_HoareSTFree.Strengthen_st))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (HoareSTFree.Strengthen_q (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
@x4)
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_HoareSTFree.Strengthen_q))

:named projection_inverse_HoareSTFree.Strengthen_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (HoareSTFree.Strengthen_phi (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
@x2)
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_HoareSTFree.Strengthen_phi))

:named projection_inverse_HoareSTFree.Strengthen_phi))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (HoareSTFree.Strengthen_p (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
@x3)
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_HoareSTFree.Strengthen_p))

:named projection_inverse_HoareSTFree.Strengthen_p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (HoareSTFree.Strengthen_f (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
@x5)
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_HoareSTFree.Strengthen_f))

:named projection_inverse_HoareSTFree.Strengthen_f))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (HoareSTFree.Strengthen_a (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
@x1)
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_HoareSTFree.Strengthen_a))

:named projection_inverse_HoareSTFree.Strengthen_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (HoareSTFree.Ret_x (HoareSTFree.Ret @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((HoareSTFree.Ret @x0
@x1
@x2
@x3))
:qid projection_inverse_HoareSTFree.Ret_x))

:named projection_inverse_HoareSTFree.Ret_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (HoareSTFree.Ret_st (HoareSTFree.Ret @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((HoareSTFree.Ret @x0
@x1
@x2
@x3))
:qid projection_inverse_HoareSTFree.Ret_st))

:named projection_inverse_HoareSTFree.Ret_st))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (HoareSTFree.Ret_q (HoareSTFree.Ret @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((HoareSTFree.Ret @x0
@x1
@x2
@x3))
:qid projection_inverse_HoareSTFree.Ret_q))

:named projection_inverse_HoareSTFree.Ret_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (HoareSTFree.Ret_a (HoareSTFree.Ret @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((HoareSTFree.Ret @x0
@x1
@x2
@x3))
:qid projection_inverse_HoareSTFree.Ret_a))

:named projection_inverse_HoareSTFree.Ret_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_st (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x0)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_st))

:named projection_inverse_HoareSTFree.Act_st))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_k_q (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x7)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_k_q))

:named projection_inverse_HoareSTFree.Act_k_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_k_p (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x6)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_k_p))

:named projection_inverse_HoareSTFree.Act_k_p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_k (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x8)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_k))

:named projection_inverse_HoareSTFree.Act_k))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_b (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x5)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_b))

:named projection_inverse_HoareSTFree.Act_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_act (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x4)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_act))

:named projection_inverse_HoareSTFree.Act_act))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_a_q (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x3)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_a_q))

:named projection_inverse_HoareSTFree.Act_a_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_a_p (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x2)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_a_p))

:named projection_inverse_HoareSTFree.Act_a_p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (HoareSTFree.Act_a (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x1)
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_HoareSTFree.Act_a))

:named projection_inverse_HoareSTFree.Act_a))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.pair@tok))
:named pre_kinding_Prims.pair@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.dtuple2@tok))
:named pre_kinding_Prims.dtuple2@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! (is-Tm_arrow (PreType HoareSTFree.m@tok))
:named pre_kinding_HoareSTFree.m@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,5-99,41); use=HoareSTFree.fst(99,9-99,41)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d))

:named non_total_function_typing_Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d))
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(108,7-108,36); use=HoareSTFree.fst(108,7-108,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.pure_pre)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
(HasType (Non_total_Tm_arrow_51476fa40fd479810760737271656dc9 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_51476fa40fd479810760737271656dc9 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_51476fa40fd479810760737271656dc9))

:named non_total_function_typing_Non_total_Tm_arrow_51476fa40fd479810760737271656dc9))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.l_Exists (HoareSTFree.Act_a @x3)
(Tm_abs_604355800cabad6e61b3b019d41b71e2 @x2
@x1
@x0
@x3)))

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(100,32-100,37)
(exists ((@x4 Term) (@x5 Term))
 (! (and (HasType @x4
(HoareSTFree.Act_a @x3))
(HasType @x5
(HoareSTFree.Act_st @x3))

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(100,32-100,37)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(100,32-100,37)
(ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Act_a_q @x3)
@x2)
@x4)
@x5)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(100,32-100,37)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(100,32-100,37)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Act_k_q @x3)
@x4)
@x5)
@x1)
@x0)
)
)
 
;;no pats
:qid l_quant_interp_be4fa41b6ede2586d34734d38041b252.1))
)
 

:pattern ((Valid (Prims.l_Exists (HoareSTFree.Act_a @x3)
(Tm_abs_604355800cabad6e61b3b019d41b71e2 @x2
@x1
@x0
@x3))))
:qid l_quant_interp_be4fa41b6ede2586d34734d38041b252))

:named l_quant_interp_be4fa41b6ede2586d34734d38041b252))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name FStar.Pervasives.pure_null_wp; Namespace FStar.Pervasives
(assert (! 
;; def=Prims.fst(451,66-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.l_Forall @x1
(Tm_abs_6ba36691ee58dee85cd144324b083848 @x0
@x1)))

;; def=Prims.fst(451,66-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)

;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(ApplyTT @x0
@x2)
)
)
 
;;no pats
:qid l_quant_interp_b318409532d0e00e9125f72f3b997468.1))
)
 

:pattern ((Valid (Prims.l_Forall @x1
(Tm_abs_6ba36691ee58dee85cd144324b083848 @x0
@x1))))
:qid l_quant_interp_b318409532d0e00e9125f72f3b997468))

:named l_quant_interp_b318409532d0e00e9125f72f3b997468))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(65,17-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.l_Exists @x6
(Tm_abs_b75047693a50deb548fcc495b6a99857 @x5
@x4
@x3
@x2
@x1
@x0
@x6)))

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(65,17-65,67)
(exists ((@x7 Term) (@x8 Term))
 (! (and (HasType @x7
@x6)
(HasType @x8
@x5)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(65,39-65,50)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(65,39-65,50)
(ApplyTT (ApplyTT (ApplyTT @x4
@x3)
@x7)
@x8)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(65,54-65,67)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(65,54-65,67)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x2
@x7)
@x8)
@x1)
@x0)
)
)
 
;;no pats
:qid l_quant_interp_a804c31f2f9725925c30b9038cb69485.1))
)
 

:pattern ((Valid (Prims.l_Exists @x6
(Tm_abs_b75047693a50deb548fcc495b6a99857 @x5
@x4
@x3
@x2
@x1
@x0
@x6))))
:qid l_quant_interp_a804c31f2f9725925c30b9038cb69485))

:named l_quant_interp_a804c31f2f9725925c30b9038cb69485))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.l_Forall (HoareSTFree.Act_a @x1)
(Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x0
@x1)))

;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(HoareSTFree.Act_a @x1))
(HasType @x3
(HoareSTFree.Act_st @x1))

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(100,12-100,17)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(100,12-100,17)
(ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Act_a_q @x1)
@x0)
@x2)
@x3)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(100,12-100,17)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(100,12-100,17)
(ApplyTT (ApplyTT (HoareSTFree.Act_k_p @x1)
@x2)
@x3)
)
)
 
;;no pats
:qid l_quant_interp_86502f9e9a5f94ffe77897a6c2550c78.1))
)
 

:pattern ((Valid (Prims.l_Forall (HoareSTFree.Act_a @x1)
(Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x0
@x1))))
:qid l_quant_interp_86502f9e9a5f94ffe77897a6c2550c78))

:named l_quant_interp_86502f9e9a5f94ffe77897a6c2550c78))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(61,22-61,70)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.l_Forall @x4
(Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x3
@x2
@x1
@x0
@x4)))

;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(61,22-61,70)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
@x4)
(HasType @x6
@x3)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(61,45-61,56)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(61,45-61,56)
(ApplyTT (ApplyTT (ApplyTT @x2
@x1)
@x5)
@x6)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(61,61-61,69)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(61,61-61,69)
(ApplyTT (ApplyTT @x0
@x5)
@x6)
)
)
 
;;no pats
:qid l_quant_interp_60fb8ce20e2a4e5b12398df686d48be5.1))
)
 

:pattern ((Valid (Prims.l_Forall @x4
(Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x3
@x2
@x1
@x0
@x4))))
:qid l_quant_interp_60fb8ce20e2a4e5b12398df686d48be5))

:named l_quant_interp_60fb8ce20e2a4e5b12398df686d48be5))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(91,4-94,8)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x0)
Tm_type))
:qid kinding_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa))

:named kinding_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d59d026ac7386aee378037a7314abdab
;;; Fact-ids: Name HoareSTFree.mpost; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,12-49,54); use=HoareSTFree.fst(49,32-49,54)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_d59d026ac7386aee378037a7314abdab @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_d59d026ac7386aee378037a7314abdab @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_d59d026ac7386aee378037a7314abdab))

:named kinding_Tm_arrow_d59d026ac7386aee378037a7314abdab))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b39301e315329869590a3ef1004830b3
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,49-98,6); use=HoareSTFree.fst(96,42-100,37)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_b39301e315329869590a3ef1004830b3 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_b39301e315329869590a3ef1004830b3 @x0)
Tm_type))
:qid kinding_Tm_arrow_b39301e315329869590a3ef1004830b3))

:named kinding_Tm_arrow_b39301e315329869590a3ef1004830b3))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(64,23-64,78); use=HoareSTFree.fst(64,63-64,78)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd))

:named kinding_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_8b71441b70a86d228c0e538267b50194
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(60,23-60,79); use=HoareSTFree.fst(60,67-60,79)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_8b71441b70a86d228c0e538267b50194))

:named kinding_Tm_arrow_8b71441b70a86d228c0e538267b50194))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_781a8775d0e735e87d74a676cf1713f7
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(107,40-109,26)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x0)
Tm_type))
:qid kinding_Tm_arrow_781a8775d0e735e87d74a676cf1713f7))

:named kinding_Tm_arrow_781a8775d0e735e87d74a676cf1713f7))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,8-97,31); use=HoareSTFree.fst(97,12-97,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x0
@x1
@x2
@x3)
Tm_type))
:qid kinding_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414))

:named kinding_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_50ceed76d6b1226e78382c360ea14691
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,5-96,6); use=HoareSTFree.fst(96,45-100,17)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x0)
Tm_type))
:qid kinding_Tm_arrow_50ceed76d6b1226e78382c360ea14691))

:named kinding_Tm_arrow_50ceed76d6b1226e78382c360ea14691))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3e2d30814b994df822fa5b890f066d2a
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,8-90,10); use=HoareSTFree.fst(96,25-100,17)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x0)
Tm_type))
:qid kinding_Tm_arrow_3e2d30814b994df822fa5b890f066d2a))

:named kinding_Tm_arrow_3e2d30814b994df822fa5b890f066d2a))
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
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! (and (IsTotFun Prims.dtuple2@tok)

;; def=Prims.fst(503,5-503,12); use=Prims.fst(503,5-503,12)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT Prims.dtuple2@tok
@x0))
 

:pattern ((ApplyTT Prims.dtuple2@tok
@x0))
:qid kinding_Prims.dtuple2@tok))


;; def=Prims.fst(503,5-503,12); use=Prims.fst(503,5-503,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0)))
(HasType (Prims.dtuple2 @x0
@x1)
Tm_type))
 

:pattern ((Prims.dtuple2 @x0
@x1))
:qid kinding_Prims.dtuple2@tok.1))
)
:named kinding_Prims.dtuple2@tok))
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! (and (IsTotFun HoareSTFree.m@tok)

;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT HoareSTFree.m@tok
@x0))
 

:pattern ((ApplyTT HoareSTFree.m@tok
@x0))
:qid kinding_HoareSTFree.m@tok))


;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT HoareSTFree.m@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT HoareSTFree.m@tok
@x0)
@x1))
:qid kinding_HoareSTFree.m@tok.1))


;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (IsTotFun (ApplyTT (ApplyTT (ApplyTT HoareSTFree.m@tok
@x0)
@x1)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT HoareSTFree.m@tok
@x0)
@x1)
@x2))
:qid kinding_HoareSTFree.m@tok.2))


;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1)))
(HasType (HoareSTFree.m @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((HoareSTFree.m @x0
@x1
@x2
@x3))
:qid kinding_HoareSTFree.m@tok.3))
)
:named kinding_HoareSTFree.m@tok))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_e801ea450b6a9c23d60355e4509dfc47
;;; Fact-ids: Name HoareSTFree.strengthen_pre; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(80,11-80,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x1
@x2
@x3)
@x0)
(Prims.l_and (ApplyTT @x1
@x0)
@x2))
 

:pattern ((ApplyTT (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_e801ea450b6a9c23d60355e4509dfc47))

:named interpretation_Tm_abs_e801ea450b6a9c23d60355e4509dfc47))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x1
@x2)
@x0)
(Prims.l_Forall (HoareSTFree.Act_st @x2)
(Tm_abs_1aa57fcb00a32666e37a0902297103b0 @x1
@x0
@x2)))
 

:pattern ((ApplyTT (Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x1
@x2)
@x0))
:qid interpretation_Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a))

:named interpretation_Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_e112764234264271de352d09ff3f0f7c
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(65,30-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_e112764234264271de352d09ff3f0f7c @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_and (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x4
@x3)
@x0)
@x5)
@x6)))
 

:pattern ((ApplyTT (Tm_abs_e112764234264271de352d09ff3f0f7c @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_e112764234264271de352d09ff3f0f7c))

:named interpretation_Tm_abs_e112764234264271de352d09ff3f0f7c))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b75047693a50deb548fcc495b6a99857
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(65,30-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_b75047693a50deb548fcc495b6a99857 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_Exists @x1
(Tm_abs_e112764234264271de352d09ff3f0f7c @x2
@x3
@x0
@x4
@x5
@x6
@x1)))
 

:pattern ((ApplyTT (Tm_abs_b75047693a50deb548fcc495b6a99857 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_b75047693a50deb548fcc495b6a99857))

:named interpretation_Tm_abs_b75047693a50deb548fcc495b6a99857))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b5422111c78eed395d177884f9f544e8
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(61,12-61,70)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_b5422111c78eed395d177884f9f544e8 @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_and (ApplyTT @x1
@x0)
(Prims.l_Forall @x2
(Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x5
@x3
@x0
@x4
@x2))))
 

:pattern ((ApplyTT (Tm_abs_b5422111c78eed395d177884f9f544e8 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_b5422111c78eed395d177884f9f544e8))

:named interpretation_Tm_abs_b5422111c78eed395d177884f9f544e8))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_af586eafa4c991538485f8176ecbb3fa
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_af586eafa4c991538485f8176ecbb3fa @x1)
@x0)
(Prims.l_and (ApplyTT (HoareSTFree.Act_a_p @x1)
@x0)
(Prims.l_Forall (HoareSTFree.Act_a @x1)
(Tm_abs_e39cd9a7be3d1e6e6d3b93579267072a @x0
@x1))))
 

:pattern ((ApplyTT (Tm_abs_af586eafa4c991538485f8176ecbb3fa @x1)
@x0))
:qid interpretation_Tm_abs_af586eafa4c991538485f8176ecbb3fa))

:named interpretation_Tm_abs_af586eafa4c991538485f8176ecbb3fa))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_a8428808b6e61e4d50b143b30e3351a9
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(109,12-109,26)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_a8428808b6e61e4d50b143b30e3351a9 @x1)
@x0)
(Prims.l_and (ApplyTT (HoareSTFree.Strengthen_p @x1)
@x0)
(HoareSTFree.Strengthen_phi @x1)))
 

:pattern ((ApplyTT (Tm_abs_a8428808b6e61e4d50b143b30e3351a9 @x1)
@x0))
:qid interpretation_Tm_abs_a8428808b6e61e4d50b143b30e3351a9))

:named interpretation_Tm_abs_a8428808b6e61e4d50b143b30e3351a9))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_95038e44d0afb0a1f18db035d53b86ed
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(61,36-61,69)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_95038e44d0afb0a1f18db035d53b86ed @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_imp (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x0)
(ApplyTT (ApplyTT @x4
@x3)
@x0)))
 

:pattern ((ApplyTT (Tm_abs_95038e44d0afb0a1f18db035d53b86ed @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_95038e44d0afb0a1f18db035d53b86ed))

:named interpretation_Tm_abs_95038e44d0afb0a1f18db035d53b86ed))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_90afe3918a255333b80d7a5b53bb8b98
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(65,17-65,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x3
@x4
@x5
@x6
@x7)
@x0)
@x1)
@x2)
(Prims.l_Exists @x3
(Tm_abs_b75047693a50deb548fcc495b6a99857 @x7
@x4
@x0
@x5
@x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x3
@x4
@x5
@x6
@x7)
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_90afe3918a255333b80d7a5b53bb8b98))

:named interpretation_Tm_abs_90afe3918a255333b80d7a5b53bb8b98))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_72fed80a0d71173ebd5b8d137856a1e0
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(94,22-94,31); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_72fed80a0d71173ebd5b8d137856a1e0 @x1)
@x0)
(ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Ret_q @x1)
@x0)
(HoareSTFree.Ret_x @x1))
@x0))
 

:pattern ((ApplyTT (Tm_abs_72fed80a0d71173ebd5b8d137856a1e0 @x1)
@x0))
:qid interpretation_Tm_abs_72fed80a0d71173ebd5b8d137856a1e0))

:named interpretation_Tm_abs_72fed80a0d71173ebd5b8d137856a1e0))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_6ba36691ee58dee85cd144324b083848
;;; Fact-ids: Name Prims.l_Exists; Namespace Prims
(assert (! 
;; def=Prims.fst(509,75-509,78); use=Prims.fst(509,75-509,78)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_6ba36691ee58dee85cd144324b083848 @x1
@x2)
@x0)
(ApplyTT @x1
@x0))
 

:pattern ((ApplyTT (Tm_abs_6ba36691ee58dee85cd144324b083848 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_6ba36691ee58dee85cd144324b083848))

:named interpretation_Tm_abs_6ba36691ee58dee85cd144324b083848))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_6b392b819a6f380b26ba19c10d389a48
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_6b392b819a6f380b26ba19c10d389a48 @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_and (ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Act_a_q @x5)
@x1)
@x2)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Act_k_q @x5)
@x2)
@x0)
@x3)
@x4)))
 

:pattern ((ApplyTT (Tm_abs_6b392b819a6f380b26ba19c10d389a48 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_6b392b819a6f380b26ba19c10d389a48))

:named interpretation_Tm_abs_6b392b819a6f380b26ba19c10d389a48))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(61,36-61,69)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_Forall @x1
(Tm_abs_95038e44d0afb0a1f18db035d53b86ed @x2
@x3
@x0
@x4
@x1)))
 

:pattern ((ApplyTT (Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b))

:named interpretation_Tm_abs_650d02cb3df60f8fa85c1a88e4c9701b))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_604355800cabad6e61b3b019d41b71e2
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_604355800cabad6e61b3b019d41b71e2 @x1
@x2
@x3
@x4)
@x0)
(Prims.l_Exists (HoareSTFree.Act_st @x4)
(Tm_abs_6b392b819a6f380b26ba19c10d389a48 @x1
@x0
@x2
@x3
@x4)))
 

:pattern ((ApplyTT (Tm_abs_604355800cabad6e61b3b019d41b71e2 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_604355800cabad6e61b3b019d41b71e2))

:named interpretation_Tm_abs_604355800cabad6e61b3b019d41b71e2))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(94,22-94,31); use=HoareSTFree.fst(94,22-94,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x1
@x2
@x3)
@x0)
(ApplyTT (ApplyTT (ApplyTT @x1
@x0)
@x2)
@x0))
 

:pattern ((ApplyTT (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845))

:named interpretation_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_1aa57fcb00a32666e37a0902297103b0
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(100,12-100,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_1aa57fcb00a32666e37a0902297103b0 @x1
@x2
@x3)
@x0)
(Prims.l_imp (ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Act_a_q @x3)
@x1)
@x2)
@x0)
(ApplyTT (ApplyTT (HoareSTFree.Act_k_p @x3)
@x2)
@x0)))
 

:pattern ((ApplyTT (Tm_abs_1aa57fcb00a32666e37a0902297103b0 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_1aa57fcb00a32666e37a0902297103b0))

:named interpretation_Tm_abs_1aa57fcb00a32666e37a0902297103b0))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(100,32-100,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22 @x3)
@x0)
@x1)
@x2)
(Prims.l_Exists (HoareSTFree.Act_a @x3)
(Tm_abs_604355800cabad6e61b3b019d41b71e2 @x0
@x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22 @x3)
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22))

:named interpretation_Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(97,23-97,31); use=HoareSTFree.fst(97,23-97,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_ab04e8e2b5dba9bfe147afd6dc048d42))

:named haseqTm_refine_ab04e8e2b5dba9bfe147afd6dc048d42))
;;;;;;;;;;;;;;;;haseq for Tm_refine_8fb012c82b6116d290a3f8671988cb15
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(103,13-103,22)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x1
@x2
@x3
@x4
@x5))))
:qid haseqTm_refine_8fb012c82b6116d290a3f8671988cb15))

:named haseqTm_refine_8fb012c82b6116d290a3f8671988cb15))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4cfe188e92aa62e40eb51efad78fbe81
;;; Fact-ids: Name HoareSTFree.__proj__Ret__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (HoareSTFree.m @x0
@x1
@x2
@x3))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_4cfe188e92aa62e40eb51efad78fbe81))

:named haseqTm_refine_4cfe188e92aa62e40eb51efad78fbe81))
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
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (HasType Prims.pure_pre
Tm_type)
:named function_token_typing_Prims.pure_pre))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (HasType Prims.logical
Tm_type)
:named function_token_typing_Prims.logical))
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
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(503,5-503,12); use=Prims.fst(503,5-503,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Prims.dtuple2 @x2
@x3))
(and (is-Prims.Mkdtuple2 @x1)
(= @x2
(Prims.Mkdtuple2_a @x1))
(= @x3
(Prims.Mkdtuple2_b @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(Prims.dtuple2 @x2
@x3)))
:qid fuel_guarded_inversion_Prims.dtuple2))

:named fuel_guarded_inversion_Prims.dtuple2))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(HoareSTFree.m @x2
@x3
@x4
@x5))
(or (and (is-HoareSTFree.Ret @x1)
(= @x2
(HoareSTFree.Ret_st @x1))
(= @x3
(HoareSTFree.Ret_a @x1))
(= @x4
(Tm_abs_72fed80a0d71173ebd5b8d137856a1e0 @x1))
(= @x5
(HoareSTFree.Ret_q @x1)))
(and (is-HoareSTFree.Act @x1)
(= @x2
(HoareSTFree.Act_st @x1))
(= @x3
(HoareSTFree.Act_b @x1))
(= @x4
(Tm_abs_af586eafa4c991538485f8176ecbb3fa @x1))
(= @x5
(Tm_abs_1778668216d2b5b9cdeed7fe4e14ff22 @x1)))
(and (is-HoareSTFree.Weaken @x1)
(= @x2
(HoareSTFree.Weaken_st @x1))
(= @x3
(HoareSTFree.Weaken_a @x1))
(= @x4
(HoareSTFree.Weaken_p1 @x1))
(= @x5
(HoareSTFree.Weaken_q1 @x1)))
(and (is-HoareSTFree.Strengthen @x1)
(= @x2
(HoareSTFree.Strengthen_st @x1))
(= @x3
(HoareSTFree.Strengthen_a @x1))
(= @x4
(Tm_abs_a8428808b6e61e4d50b143b30e3351a9 @x1))
(= @x5
(HoareSTFree.Strengthen_q @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(HoareSTFree.m @x2
@x3
@x4
@x5)))
:qid fuel_guarded_inversion_HoareSTFree.m))

:named fuel_guarded_inversion_HoareSTFree.m))
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
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (= 151
(Term_constr_id Prims.pair@tok))
:named fresh_token_Prims.pair@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! (= 259
(Term_constr_id Prims.dtuple2@tok))
:named fresh_token_Prims.dtuple2@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! (= 147
(Term_constr_id HoareSTFree.m@tok))
:named fresh_token_HoareSTFree.m@tok))
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
;;;;;;;;;;;;;;;;Equation for Prims.pure_pre
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (= Prims.pure_pre
Tm_type)
:named equation_Prims.pure_pre))
;;;;;;;;;;;;;;;;Equation for Prims.logical
;;; Fact-ids: Name Prims.logical; Namespace Prims
(assert (! (= Prims.logical
Tm_type)
:named equation_Prims.logical))
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
;;;;;;;;;;;;;;;;Equation for Prims.l_Exists
;;; Fact-ids: Name Prims.l_Exists; Namespace Prims
(assert (! 
;; def=Prims.fst(509,5-509,13); use=Prims.fst(509,5-509,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.l_Exists @x0
@x1)
(Prims.squash (Prims.dtuple2 @x0
(Tm_abs_6ba36691ee58dee85cd144324b083848 @x1
@x0))))
 

:pattern ((Prims.l_Exists @x0
@x1))
:qid equation_Prims.l_Exists))

:named equation_Prims.l_Exists))
;;;;;;;;;;;;;;;;Equation for Prims.eqtype
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (= Prims.eqtype
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
:named equation_Prims.eqtype))
;;;;;;;;;;;;;;;;Equation for HoareSTFree.mpre
;;; Fact-ids: Name HoareSTFree.mpre; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,5-48,9); use=HoareSTFree.fst(48,5-48,9)
(forall ((@x0 Term))
 (! (= (HoareSTFree.mpre @x0)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
 

:pattern ((HoareSTFree.mpre @x0))
:qid equation_HoareSTFree.mpre))

:named equation_HoareSTFree.mpre))
;;;;;;;;;;;;;;;;Equation for HoareSTFree.mpost
;;; Fact-ids: Name HoareSTFree.mpost; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,5-49,10); use=HoareSTFree.fst(49,5-49,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (HoareSTFree.mpost @x0
@x1)
(Tm_arrow_d59d026ac7386aee378037a7314abdab @x1
@x0))
 

:pattern ((HoareSTFree.mpost @x0
@x1))
:qid equation_HoareSTFree.mpost))

:named equation_HoareSTFree.mpost))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name HoareSTFree.uu___is_Ret; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4)
(BoxBool (is-HoareSTFree.Ret @x4)))
 

:pattern ((HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
:qid disc_equation_HoareSTFree.Ret))

:named disc_equation_HoareSTFree.Ret))
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
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1))
(HasTypeFuel @u0
@x3
@x1)
(HasTypeFuel @u0
@x4
(ApplyTT @x2
@x3)))
(HasTypeFuel @u0
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)
(Prims.dtuple2 @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)
(Prims.dtuple2 @x1
@x2)))
:qid data_typing_intro_Prims.Mkdtuple2@tok))

:named data_typing_intro_Prims.Mkdtuple2@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpre @x1))
(HasTypeFuel @u0
@x4
(HoareSTFree.mpost @x1
@x2))
(HasTypeFuel @u0
@x5
(HoareSTFree.mpre @x1))
(HasTypeFuel @u0
@x6
(HoareSTFree.mpost @x1
@x2))
(HasTypeFuel @u0
@x7
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x1
@x5
@x3
@x2
@x4
@x6))
(HasTypeFuel @u0
@x8
(HoareSTFree.m @x1
@x2
@x3
@x4))
(= @x2
@x9)
(= @x5
@x10)
(= @x6
@x11))
(HasTypeFuel @u0
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(HoareSTFree.m @x1
@x9
@x10
@x11)))
 

:pattern ((HasTypeFuel @u0
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(HoareSTFree.m @x1
@x9
@x10
@x11)))
:qid data_typing_intro_HoareSTFree.Weaken@tok))

:named data_typing_intro_HoareSTFree.Weaken@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
Prims.pure_pre)
(HasTypeFuel @u0
@x4
(HoareSTFree.mpre @x1))
(HasTypeFuel @u0
@x5
(HoareSTFree.mpost @x1
@x2))
(HasTypeFuel @u0
@x6
(Non_total_Tm_arrow_51476fa40fd479810760737271656dc9 @x3
@x1
@x2
@x4
@x5))
(= @x2
@x7)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x4
@x3
@x1)
@x8)
(= @x5
@x9))
(HasTypeFuel @u0
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)
(HoareSTFree.m @x1
@x7
@x8
@x9)))
 

:pattern ((HasTypeFuel @u0
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)
(HoareSTFree.m @x1
@x7
@x8
@x9)))
:qid data_typing_intro_HoareSTFree.Strengthen@tok))

:named data_typing_intro_HoareSTFree.Strengthen@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpost @x1
@x2))
(HasTypeFuel @u0
@x4
@x2)
(= @x2
@x5)
(= (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x3
@x4
@x1)
@x6)
(= @x3
@x7))
(HasTypeFuel @u0
(HoareSTFree.Ret @x1
@x2
@x3
@x4)
(HoareSTFree.m @x1
@x5
@x6
@x7)))
 

:pattern ((HasTypeFuel @u0
(HoareSTFree.Ret @x1
@x2
@x3
@x4)
(HoareSTFree.m @x1
@x5
@x6
@x7)))
:qid data_typing_intro_HoareSTFree.Ret@tok))

:named data_typing_intro_HoareSTFree.Ret@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpre @x1))
(HasTypeFuel @u0
@x4
(HoareSTFree.mpost @x1
@x2))
(HasTypeFuel @u0
@x5
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x4
@x2
@x1
@x3))
(HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x7
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x2))
(HasTypeFuel @u0
@x8
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x6
@x1
@x2))
(HasTypeFuel @u0
@x9
(Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d @x2
@x1
@x6
@x7
@x8))
(= @x6
@x10)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x3
@x2
@x4
@x7
@x1)
@x11)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x2
@x4
@x8
@x6
@x1)
@x12))
(HasTypeFuel @u0
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(HoareSTFree.m @x1
@x10
@x11
@x12)))
 

:pattern ((HasTypeFuel @u0
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(HoareSTFree.m @x1
@x10
@x11
@x12)))
:qid data_typing_intro_HoareSTFree.Act@tok))

:named data_typing_intro_HoareSTFree.Act@tok))
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
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)
(Prims.dtuple2 @x5
@x6))
(and (HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x5))
(HasTypeFuel @u0
@x3
@x5)
(HasTypeFuel @u0
@x4
(ApplyTT @x6
@x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Mkdtuple2 @x1
@x2
@x3
@x4)
(Prims.dtuple2 @x5
@x6)))
:qid data_elim_Prims.Mkdtuple2))

:named data_elim_Prims.Mkdtuple2))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(HoareSTFree.m @x9
@x10
@x11
@x12))
(and (= @x6
@x12)
(= @x5
@x11)
(= @x2
@x10)
(HasTypeFuel @u0
@x9
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpre @x9))
(HasTypeFuel @u0
@x4
(HoareSTFree.mpost @x9
@x2))
(HasTypeFuel @u0
@x5
(HoareSTFree.mpre @x9))
(HasTypeFuel @u0
@x6
(HoareSTFree.mpost @x9
@x2))
(HasTypeFuel @u0
@x7
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x9
@x5
@x3
@x2
@x4
@x6))
(HasTypeFuel @u0
@x8
(HoareSTFree.m @x9
@x2
@x3
@x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Weaken @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(HoareSTFree.m @x9
@x10
@x11
@x12)))
:qid data_elim_HoareSTFree.Weaken))

:named data_elim_HoareSTFree.Weaken))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)
(HoareSTFree.m @x7
@x8
@x9
@x10))
(and (= @x5
@x10)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x4
@x3
@x7)
@x9)
(= @x2
@x8)
(HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
Prims.pure_pre)
(HasTypeFuel @u0
@x4
(HoareSTFree.mpre @x7))
(HasTypeFuel @u0
@x5
(HoareSTFree.mpost @x7
@x2))
(HasTypeFuel @u0
@x6
(Non_total_Tm_arrow_51476fa40fd479810760737271656dc9 @x3
@x7
@x2
@x4
@x5))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Strengthen @x1
@x2
@x3
@x4
@x5
@x6)
(HoareSTFree.m @x7
@x8
@x9
@x10)))
:qid data_elim_HoareSTFree.Strengthen))

:named data_elim_HoareSTFree.Strengthen))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Ret @x1
@x2
@x3
@x4)
(HoareSTFree.m @x5
@x6
@x7
@x8))
(and (= @x3
@x8)
(= (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x3
@x4
@x5)
@x7)
(= @x2
@x6)
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpost @x5
@x2))
(HasTypeFuel @u0
@x4
@x2)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Ret @x1
@x2
@x3
@x4)
(HoareSTFree.m @x5
@x6
@x7
@x8)))
:qid data_elim_HoareSTFree.Ret))

:named data_elim_HoareSTFree.Ret))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(HoareSTFree.m @x10
@x11
@x12
@x13))
(and (= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x2
@x4
@x8
@x6
@x10)
@x13)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x3
@x2
@x4
@x7
@x10)
@x12)
(= @x6
@x11)
(HasTypeFuel @u0
@x10
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpre @x10))
(HasTypeFuel @u0
@x4
(HoareSTFree.mpost @x10
@x2))
(HasTypeFuel @u0
@x5
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x4
@x2
@x10
@x3))
(HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x7
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x10
@x2))
(HasTypeFuel @u0
@x8
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x6
@x10
@x2))
(HasTypeFuel @u0
@x9
(Non_total_Tm_arrow_7065af310ee2d53cbbb3955152c89e2d @x2
@x10
@x6
@x7
@x8))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(HoareSTFree.m @x10
@x11
@x12
@x13)))
:qid data_elim_HoareSTFree.Act))

:named data_elim_HoareSTFree.Act))
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
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(503,5-503,12); use=Prims.fst(503,5-503,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= 258
(Term_constr_id (Prims.dtuple2 @x0
@x1)))
 

:pattern ((Prims.dtuple2 @x0
@x1))
:qid constructor_distinct_Prims.dtuple2))

:named constructor_distinct_Prims.dtuple2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (= 107
(Term_constr_id Prims.bool))
:named constructor_distinct_Prims.bool))
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
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(504,4-504,13); use=Prims.fst(504,4-504,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 267
(Term_constr_id (Prims.Mkdtuple2 @x0
@x1
@x2
@x3)))
 

:pattern ((Prims.Mkdtuple2 @x0
@x1
@x2
@x3))
:qid constructor_distinct_Prims.Mkdtuple2))

:named constructor_distinct_Prims.Mkdtuple2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 146
(Term_constr_id (HoareSTFree.m @x0
@x1
@x2
@x3)))
 

:pattern ((HoareSTFree.m @x0
@x1
@x2
@x3))
:qid constructor_distinct_HoareSTFree.m))

:named constructor_distinct_HoareSTFree.m))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= 258
(Term_constr_id (HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)))
 

:pattern ((HoareSTFree.Weaken @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid constructor_distinct_HoareSTFree.Weaken))

:named constructor_distinct_HoareSTFree.Weaken))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= 271
(Term_constr_id (HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5)))
 

:pattern ((HoareSTFree.Strengthen @x0
@x1
@x2
@x3
@x4
@x5))
:qid constructor_distinct_HoareSTFree.Strengthen))

:named constructor_distinct_HoareSTFree.Strengthen))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 169
(Term_constr_id (HoareSTFree.Ret @x0
@x1
@x2
@x3)))
 

:pattern ((HoareSTFree.Ret @x0
@x1
@x2
@x3))
:qid constructor_distinct_HoareSTFree.Ret))

:named constructor_distinct_HoareSTFree.Ret))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= 198
(Term_constr_id (HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
 

:pattern ((HoareSTFree.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid constructor_distinct_HoareSTFree.Act))

:named constructor_distinct_HoareSTFree.Act))
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
;;;;;;;;;;;;;;;;Assumption: Prims.dtuple2__uu___haseq
;;; Fact-ids: Name Prims.dtuple2__uu___haseq; Namespace Prims
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
(ApplyTT @x1
@x2)))
(and (Valid (Prims.hasEq @x0))
(Valid (Prims.hasEq (ApplyTT @x1
@x2)))))
 
;;no pats
:qid assumption_Prims.dtuple2__uu___haseq.1)))
(Valid (Prims.hasEq (Prims.dtuple2 @x0
@x1))))
 

:pattern ((Prims.hasEq (Prims.dtuple2 @x0
@x1)))
:qid assumption_Prims.dtuple2__uu___haseq))
:named assumption_Prims.dtuple2__uu___haseq))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! 
;; def=Prims.fst(503,5-503,12); use=Prims.fst(503,5-503,12)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Prims.dtuple2 @x2
@x3))
(= (Prims.dtuple2 @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(Prims.dtuple2 @x2
@x3)))
:qid Prims_pretyping_09d9235a8068627898e77b75945bdc5c))

:named Prims_pretyping_09d9235a8068627898e77b75945bdc5c))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,5-90,6); use=HoareSTFree.fst(90,5-90,6)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel @u1
@x0
(HoareSTFree.m @x2
@x3
@x4
@x5))
(= (HoareSTFree.m @x2
@x3
@x4
@x5)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(HoareSTFree.m @x2
@x3
@x4
@x5)))
:qid HoareSTFree_pretyping_8e67af1b3ca3805a461e48497b153e20))

:named HoareSTFree_pretyping_8e67af1b3ca3805a461e48497b153e20))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(91,4-94,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa))

:named HoareSTFree_pre_typing_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.mpost; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,12-49,54); use=HoareSTFree.fst(49,32-49,54)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_d59d026ac7386aee378037a7314abdab @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_d59d026ac7386aee378037a7314abdab @x2
@x3)))
:qid HoareSTFree_pre_typing_Tm_arrow_d59d026ac7386aee378037a7314abdab))

:named HoareSTFree_pre_typing_Tm_arrow_d59d026ac7386aee378037a7314abdab))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,49-98,6); use=HoareSTFree.fst(96,42-100,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_b39301e315329869590a3ef1004830b3 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_b39301e315329869590a3ef1004830b3 @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_b39301e315329869590a3ef1004830b3))

:named HoareSTFree_pre_typing_Tm_arrow_b39301e315329869590a3ef1004830b3))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(64,23-64,78); use=HoareSTFree.fst(64,63-64,78)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x3
@x4)))
:qid HoareSTFree_pre_typing_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd))

:named HoareSTFree_pre_typing_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(60,23-60,79); use=HoareSTFree.fst(60,67-60,79)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x2
@x3)))
:qid HoareSTFree_pre_typing_Tm_arrow_8b71441b70a86d228c0e538267b50194))

:named HoareSTFree_pre_typing_Tm_arrow_8b71441b70a86d228c0e538267b50194))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(107,40-109,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_781a8775d0e735e87d74a676cf1713f7))

:named HoareSTFree_pre_typing_Tm_arrow_781a8775d0e735e87d74a676cf1713f7))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,8-97,31); use=HoareSTFree.fst(97,12-97,31)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x2
@x3
@x4
@x5))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x2
@x3
@x4
@x5)))
:qid HoareSTFree_pre_typing_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414))

:named HoareSTFree_pre_typing_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,5-96,6); use=HoareSTFree.fst(96,45-100,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_50ceed76d6b1226e78382c360ea14691))

:named HoareSTFree_pre_typing_Tm_arrow_50ceed76d6b1226e78382c360ea14691))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,8-90,10); use=HoareSTFree.fst(96,25-100,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_3e2d30814b994df822fa5b890f066d2a))

:named HoareSTFree_pre_typing_Tm_arrow_3e2d30814b994df822fa5b890f066d2a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(91,4-94,8)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x1))
(and 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(91,4-94,8)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(HoareSTFree.Ret_st @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa))

:named HoareSTFree_interpretation_Tm_arrow_d7ff8bbf4456ff9071001c8ddbfbcdaa))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d59d026ac7386aee378037a7314abdab
;;; Fact-ids: Name HoareSTFree.mpost; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,12-49,54); use=HoareSTFree.fst(49,32-49,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_d59d026ac7386aee378037a7314abdab @x1
@x2))
(and 
;; def=HoareSTFree.fst(49,12-49,54); use=HoareSTFree.fst(49,32-49,54)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
@x2)
(HasType @x4
@x1)
(HasType @x5
@x2))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_d59d026ac7386aee378037a7314abdab.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(49,12-49,54); use=HoareSTFree.fst(49,32-49,54)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_d59d026ac7386aee378037a7314abdab.2))


;; def=HoareSTFree.fst(49,12-49,54); use=HoareSTFree.fst(49,32-49,54)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
@x2)
(HasType @x4
@x1))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid HoareSTFree_interpretation_Tm_arrow_d59d026ac7386aee378037a7314abdab.3))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_d59d026ac7386aee378037a7314abdab @x1
@x2)))
:qid HoareSTFree_interpretation_Tm_arrow_d59d026ac7386aee378037a7314abdab))

:named HoareSTFree_interpretation_Tm_arrow_d59d026ac7386aee378037a7314abdab))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b39301e315329869590a3ef1004830b3
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(49,49-98,6); use=HoareSTFree.fst(96,42-100,37)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_b39301e315329869590a3ef1004830b3 @x1))
(and 
;; def=HoareSTFree.fst(49,49-98,6); use=HoareSTFree.fst(96,42-100,37)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
(HoareSTFree.Act_st @x1))
(HasType @x3
(HoareSTFree.Act_b @x1))
(HasType @x4
(HoareSTFree.Act_st @x1)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4))
:qid HoareSTFree_interpretation_Tm_arrow_b39301e315329869590a3ef1004830b3.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(49,49-98,6); use=HoareSTFree.fst(96,42-100,37)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(HoareSTFree.Act_st @x1))
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_b39301e315329869590a3ef1004830b3.2))


;; def=HoareSTFree.fst(49,49-98,6); use=HoareSTFree.fst(96,42-100,37)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(HoareSTFree.Act_st @x1))
(HasType @x3
(HoareSTFree.Act_b @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_b39301e315329869590a3ef1004830b3.3))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_b39301e315329869590a3ef1004830b3 @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_b39301e315329869590a3ef1004830b3))

:named HoareSTFree_interpretation_Tm_arrow_b39301e315329869590a3ef1004830b3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd
;;; Fact-ids: Name HoareSTFree.act_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(64,23-64,78); use=HoareSTFree.fst(64,63-64,78)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x1
@x2
@x3))
(and 
;; def=HoareSTFree.fst(64,23-64,78); use=HoareSTFree.fst(64,63-64,78)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(HasType (ApplyTT @x0
@x4)
(HoareSTFree.mpost @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x4))
:qid HoareSTFree_interpretation_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x1
@x2
@x3)))
:qid HoareSTFree_interpretation_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd))

:named HoareSTFree_interpretation_Tm_arrow_a0e46eb89e9eded1de46d98960f169fd))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_8b71441b70a86d228c0e538267b50194
;;; Fact-ids: Name HoareSTFree.act_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(60,23-60,79); use=HoareSTFree.fst(60,67-60,79)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x2))
(and 
;; def=HoareSTFree.fst(60,23-60,79); use=HoareSTFree.fst(60,67-60,79)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(HoareSTFree.mpre @x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_8b71441b70a86d228c0e538267b50194.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x2)))
:qid HoareSTFree_interpretation_Tm_arrow_8b71441b70a86d228c0e538267b50194))

:named HoareSTFree_interpretation_Tm_arrow_8b71441b70a86d228c0e538267b50194))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_781a8775d0e735e87d74a676cf1713f7
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(107,40-109,26)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x1))
(and 
;; def=HoareSTFree.fst(48,28-90,10); use=HoareSTFree.fst(107,40-109,26)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(HoareSTFree.Strengthen_st @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_781a8775d0e735e87d74a676cf1713f7.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_781a8775d0e735e87d74a676cf1713f7 @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_781a8775d0e735e87d74a676cf1713f7))

:named HoareSTFree_interpretation_Tm_arrow_781a8775d0e735e87d74a676cf1713f7))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,8-97,31); use=HoareSTFree.fst(97,12-97,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x1
@x2
@x3
@x4))
(and 
;; def=HoareSTFree.fst(90,8-97,31); use=HoareSTFree.fst(97,12-97,31)
(forall ((@x5 Term))
 (! (implies (and 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(97,32-97,40)
(Valid 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(97,32-97,40)
(ApplyTT @x4
@x5)
)

(HasType @x5
@x3))
(HasType (ApplyTT @x0
@x5)
(Tm_refine_ab04e8e2b5dba9bfe147afd6dc048d42 @x2
@x3
@x1
@x5)))
 

:pattern ((ApplyTT @x0
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x1
@x2
@x3
@x4)))
:qid HoareSTFree_interpretation_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414))

:named HoareSTFree_interpretation_Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_50ceed76d6b1226e78382c360ea14691
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,5-96,6); use=HoareSTFree.fst(96,45-100,17)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x1))
(and 
;; def=HoareSTFree.fst(96,5-96,6); use=HoareSTFree.fst(96,45-100,17)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(HoareSTFree.Act_a @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_50ceed76d6b1226e78382c360ea14691.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_50ceed76d6b1226e78382c360ea14691 @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_50ceed76d6b1226e78382c360ea14691))

:named HoareSTFree_interpretation_Tm_arrow_50ceed76d6b1226e78382c360ea14691))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3e2d30814b994df822fa5b890f066d2a
;;; Fact-ids: Name HoareSTFree.m; Namespace HoareSTFree; Name HoareSTFree.Ret; Namespace HoareSTFree; Name HoareSTFree.Act; Namespace HoareSTFree; Name HoareSTFree.Weaken; Namespace HoareSTFree; Name HoareSTFree.Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,8-90,10); use=HoareSTFree.fst(96,25-100,17)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x1))
(and 
;; def=HoareSTFree.fst(90,8-90,10); use=HoareSTFree.fst(96,25-100,17)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(HoareSTFree.Act_st @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_3e2d30814b994df822fa5b890f066d2a.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3e2d30814b994df822fa5b890f066d2a @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_3e2d30814b994df822fa5b890f066d2a))

:named HoareSTFree_interpretation_Tm_arrow_3e2d30814b994df822fa5b890f066d2a))
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

; Starting query at HoareSTFree.fst(92,5-92,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Ret? _}).
;   (*  - Could not prove post-condition
; *) ~(Ret? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Ret__item__a`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,5-92,6)
(not 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,5-92,6)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Ret__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ret__item__a


; <Skipped let __proj__Ret__item__a/>


; encoding sigelt val HoareSTFree.__proj__Ret__item__q


; <Start encoding val HoareSTFree.__proj__Ret__item__q>


(declare-fun HoareSTFree.__proj__Ret__item__q (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Ret? _} -> mpost st projectee.a
(declare-fun Tm_arrow_be52633ff195ebcf150fc856169c7cee () Term)
(declare-fun HoareSTFree.__proj__Ret__item__q@tok () Term)

; </end encoding val HoareSTFree.__proj__Ret__item__q>

(push) ;; push{2

; Starting query at HoareSTFree.fst(92,16-92,17)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Ret? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Ret? projectee) ==> Prims.l_False) /\
;   (forall (b: Type) (b: HoareSTFree.mpost st b) (b: b).
;       projectee == HoareSTFree.Ret b ==>
;       b == a /\ ((fun s0 -> b s0 b s0) == p) /\ (b == q) /\ Ret? (HoareSTFree.Ret b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Ret__item__q`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(92,16-92,17)
(and (implies 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,16-92,17)
(not 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,16-92,17)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(92,16-92,17)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(92,16-92,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(92,16-92,17)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
@x5)

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,16-92,17)
(= @x4
(HoareSTFree.Ret @x0
@x5
@x6
@x7))
)

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,16-92,17)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(91,4-91,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(92,16-92,17)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-94,31); use=HoareSTFree.fst(91,4-91,7)
(or label_3

;; def=HoareSTFree.fst(90,37-94,31); use=HoareSTFree.fst(92,16-92,17)
(= (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x6
@x7
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(91,4-91,7)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(92,16-92,17)
(= @x6
@x3)
)


;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(or label_5

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(92,16-92,17)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
(HoareSTFree.Ret @x0
@x5
@x6
@x7)))
)
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
; QUERY ID: (HoareSTFree.__proj__Ret__item__q, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Ret, refinement_interpretation_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ret__item__q


; <Skipped let __proj__Ret__item__q/>


; encoding sigelt val HoareSTFree.__proj__Ret__item__x


; <Start encoding val HoareSTFree.__proj__Ret__item__x>


(declare-fun HoareSTFree.__proj__Ret__item__x (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Ret? _} -> projectee.a
(declare-fun Tm_arrow_c63ed3baf597d0a5d4212f7e554c2d8a () Term)
(declare-fun HoareSTFree.__proj__Ret__item__x@tok () Term)

; </end encoding val HoareSTFree.__proj__Ret__item__x>

(push) ;; push{2

; Starting query at HoareSTFree.fst(93,4-93,5)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Ret? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Ret? projectee) ==> Prims.l_False) /\
;   (forall (b: Type) (b: HoareSTFree.mpost st b) (b: b).
;       projectee == HoareSTFree.Ret b ==>
;       b == a /\ ((fun s0 -> b s0 b s0) == p) /\ (b == q) /\ Ret? (HoareSTFree.Ret b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Ret__item__x`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_4cfe188e92aa62e40eb51efad78fbe81 @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(93,4-93,5)
(and (implies 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(93,4-93,5)
(not 
;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(93,4-93,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(93,4-93,5)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(93,4-93,5)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(93,4-93,5)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
@x5)

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(93,4-93,5)
(= @x4
(HoareSTFree.Ret @x0
@x5
@x6
@x7))
)

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(93,4-93,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(91,4-91,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(93,4-93,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-94,31); use=HoareSTFree.fst(91,4-91,7)
(or label_3

;; def=HoareSTFree.fst(90,37-94,31); use=HoareSTFree.fst(93,4-93,5)
(= (Tm_abs_2b4c3996c1c945f0806b0e8a1432d845 @x6
@x7
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(91,4-91,7)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(93,4-93,5)
(= @x6
@x3)
)


;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(91,4-91,7)
(or label_5

;; def=HoareSTFree.fst(91,4-91,7); use=HoareSTFree.fst(93,4-93,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
(HoareSTFree.Ret @x0
@x5
@x6
@x7)))
)
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
; QUERY ID: (HoareSTFree.__proj__Ret__item__x, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Ret, refinement_interpretation_Tm_refine_4cfe188e92aa62e40eb51efad78fbe81

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ret__item__x


; <Skipped let __proj__Ret__item__x/>


; encoding sigelt val HoareSTFree.uu___is_Act


; <Start encoding val HoareSTFree.uu___is_Act>

(declare-fun HoareSTFree.uu___is_Act (Term Term Term Term Term) Term)

(declare-fun HoareSTFree.uu___is_Act@tok () Term)

; </end encoding val HoareSTFree.uu___is_Act>


; encoding sigelt let uu___is_Act


; <Skipped let uu___is_Act/>


; encoding sigelt val HoareSTFree.__proj__Act__item__a


; <Start encoding val HoareSTFree.__proj__Act__item__a>

(declare-fun Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e (Term Term Term Term) Term)
(declare-fun HoareSTFree.__proj__Act__item__a (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> Type
(declare-fun Tm_arrow_f14a780f77b4981299777ae164234ea2 () Term)
(declare-fun HoareSTFree.__proj__Act__item__a@tok () Term)

; </end encoding val HoareSTFree.__proj__Act__item__a>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.uu___is_Act; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4)
Prims.bool))
 

:pattern ((HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.uu___is_Act))

:named typing_HoareSTFree.uu___is_Act))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e))

:named refinement_kinding_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(HoareSTFree.m @x2
@x3
@x4
@x5))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x2
@x3
@x4
@x5
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e))

:named refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (HoareSTFree.m @x0
@x1
@x2
@x3))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_dc5a4d5b61532b33c9f5b60abe8c861e))

:named haseqTm_refine_dc5a4d5b61532b33c9f5b60abe8c861e))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name HoareSTFree.uu___is_Act; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4)
(BoxBool (is-HoareSTFree.Act @x4)))
 

:pattern ((HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
:qid disc_equation_HoareSTFree.Act))

:named disc_equation_HoareSTFree.Act))
(push) ;; push{2

; Starting query at HoareSTFree.fst(96,5-96,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *) ~(Act? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__a`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,5-96,6)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,5-96,6)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__a


; <Skipped let __proj__Act__item__a/>


; encoding sigelt val HoareSTFree.__proj__Act__item__a_p


; <Start encoding val HoareSTFree.__proj__Act__item__a_p>


(declare-fun HoareSTFree.__proj__Act__item__a_p (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> mpre st
(declare-fun Tm_arrow_b9b183038cde66e1532f731202065439 () Term)
(declare-fun HoareSTFree.__proj__Act__item__a_p@tok () Term)

; </end encoding val HoareSTFree.__proj__Act__item__a_p>

(push) ;; push{2

; Starting query at HoareSTFree.fst(96,16-96,19)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *) ~(Act? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__a_p`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,16-96,19)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,16-96,19)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__a_p, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__a_p


; <Skipped let __proj__Act__item__a_p/>


; encoding sigelt val HoareSTFree.__proj__Act__item__a_q


; <Start encoding val HoareSTFree.__proj__Act__item__a_q>


(declare-fun HoareSTFree.__proj__Act__item__a_q (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> mpost st projectee.a
(declare-fun Tm_arrow_3f51576ef8e360f0bccff3091aef5006 () Term)
(declare-fun HoareSTFree.__proj__Act__item__a_q@tok () Term)

; </end encoding val HoareSTFree.__proj__Act__item__a_q>

(push) ;; push{2

; Starting query at HoareSTFree.fst(96,32-96,35)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)







(declare-fun Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))

:named non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))















; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type0)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (s0: st -> Prims.Pure (b & st)))
;       (b: Type)
;       (b: (_: b -> HoareSTFree.mpre st))
;       (b: (_: b -> HoareSTFree.mpost st b))
;       (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m st b (b x) (b x)))).
;       projectee == HoareSTFree.Act b b ==>
;       b == a /\
;       ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;       ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;       Act? (HoareSTFree.Act b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__a_q`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(96,32-96,35)
(and (implies 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,32-96,35)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,32-96,35)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x7
@x5
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x9
@x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(96,32-96,35)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x5
@x0
@x9
@x10
@x11))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,32-96,35)
(= @x4
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,32-96,35)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(96,32-96,35)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_3

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(96,32-96,35)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_4

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(96,32-96,35)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_5

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(96,32-96,35)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__a_q, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__a_q


; <Skipped let __proj__Act__item__a_q/>


; encoding sigelt val HoareSTFree.__proj__Act__item__act


; <Start encoding val HoareSTFree.__proj__Act__item__act>


(declare-fun HoareSTFree.__proj__Act__item__act (Term Term Term Term Term) Term)

(declare-fun Tm_refine_148f8527bfe69d8b86948f2f648bc199 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: st -> Prims.Pure (projectee.a & st)
(declare-fun Tm_arrow_50a59a6d217161ace4023a619a0da006 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> s0: st -> Prims.Pure (projectee.a & st)
(declare-fun Tm_arrow_d87abd0303981facbcf15454349b895d () Term)
(declare-fun HoareSTFree.__proj__Act__item__act@tok () Term)





; </end encoding val HoareSTFree.__proj__Act__item__act>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,16-96,19); use=HoareSTFree.fst(96,16-96,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Act__item__a_p @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.mpre @x0)))
 

:pattern ((HoareSTFree.__proj__Act__item__a_p @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Act__item__a_p))

:named typing_HoareSTFree.__proj__Act__item__a_p))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,5-96,6); use=HoareSTFree.fst(96,5-96,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Act__item__a))

:named typing_HoareSTFree.__proj__Act__item__a))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,16-96,19); use=HoareSTFree.fst(96,16-96,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__a_p@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(HoareSTFree.__proj__Act__item__a_p @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__a_p@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_HoareSTFree.__proj__Act__item__a_p))

:named token_correspondence_HoareSTFree.__proj__Act__item__a_p))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,16-96,19); use=HoareSTFree.fst(96,16-96,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Act__item__a_p @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Act_a_p @x4))
 

:pattern ((HoareSTFree.__proj__Act__item__a_p @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Act_a_p))

:named proj_equation_HoareSTFree.Act_a_p))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,5-96,6); use=HoareSTFree.fst(96,5-96,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Act_a @x4))
 

:pattern ((HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Act_a))

:named proj_equation_HoareSTFree.Act_a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b9b183038cde66e1532f731202065439
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! (HasType Tm_arrow_b9b183038cde66e1532f731202065439
Tm_type)
:named kinding_Tm_arrow_b9b183038cde66e1532f731202065439))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(96,16-96,19); use=HoareSTFree.fst(96,16-96,19)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.__proj__Act__item__a_p@tok
Tm_arrow_b9b183038cde66e1532f731202065439))

;; def=HoareSTFree.fst(96,16-96,19); use=HoareSTFree.fst(96,16-96,19)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__a_p@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.__proj__Act__item__a_p @x1
@x2
@x3
@x4
@x5))
 

:pattern ((HoareSTFree.__proj__Act__item__a_p @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_HoareSTFree.__proj__Act__item__a_p.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.__proj__Act__item__a_p@tok))
:qid function_token_typing_HoareSTFree.__proj__Act__item__a_p))

:named function_token_typing_HoareSTFree.__proj__Act__item__a_p))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b9b183038cde66e1532f731202065439)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b9b183038cde66e1532f731202065439))
:qid HoareSTFree_pre_typing_Tm_arrow_b9b183038cde66e1532f731202065439))

:named HoareSTFree_pre_typing_Tm_arrow_b9b183038cde66e1532f731202065439))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b9b183038cde66e1532f731202065439
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__a_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b9b183038cde66e1532f731202065439)
(and 
;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2))
(HasType @x5
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x1
@x2
@x3
@x4)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.mpre @x1)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439.2))


;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
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
:qid HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439.3))


;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439.4))


;; def=HoareSTFree.fst(90,11-96,27); use=HoareSTFree.fst(90,11-96,27)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
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
:qid HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b9b183038cde66e1532f731202065439))
:qid HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439))

:named HoareSTFree_interpretation_Tm_arrow_b9b183038cde66e1532f731202065439))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__act; Namespace HoareSTFree
(assert (! (Valid (ApplyTT __uu__PartialApp
HoareSTFree.__proj__Act__item__a_p@tok))
:named @kick_partial_app_0f5d22fc958a03c15eb10f6efe53d5eb))
(push) ;; push{2

; Starting query at HoareSTFree.fst(97,4-97,7)

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







(declare-fun Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))

:named non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))



























































(declare-fun Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 (Term Term Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (HasType (Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x0
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
@x12)
Tm_type)
 

:pattern ((HasType (Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x0
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
@x12)
Tm_type))
:qid refinement_kinding_Tm_refine_d6c64d16464ca3df0adfdca50d13fe32))

:named refinement_kinding_Tm_refine_d6c64d16464ca3df0adfdca50d13fe32))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=HoareSTFree.fst(97,4-97,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x2
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
@x13
@x14))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (HoareSTFree.__proj__Act__item__a @x2
@x3
@x4
@x5
(HoareSTFree.Act @x2
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13))
@x2))

;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(97,4-97,7)
(Valid 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(97,4-97,7)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__a_p@tok
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.Act @x2
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13))
@x14)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x2
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
@x13
@x14)))
:qid refinement_interpretation_Tm_refine_d6c64d16464ca3df0adfdca50d13fe32))

:named refinement_interpretation_Tm_refine_d6c64d16464ca3df0adfdca50d13fe32))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d6c64d16464ca3df0adfdca50d13fe32
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x0
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
@x12)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x0
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
@x12))))
:qid haseqTm_refine_d6c64d16464ca3df0adfdca50d13fe32))

:named haseqTm_refine_d6c64d16464ca3df0adfdca50d13fe32))


























































; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type0)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (s0: st -> Prims.Pure (b & st)))
;       (b: Type)
;       (b: (_: b -> HoareSTFree.mpre st))
;       (b: (_: b -> HoareSTFree.mpost st b))
;       (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m st b (b x) (b x)))).
;       projectee == HoareSTFree.Act b b ==>
;       (forall (s0: st).
;           b == a /\
;           ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;           ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;           Act? (HoareSTFree.Act b b) /\
;           (forall (return_val: _: HoareSTFree.m st a p q {Act? _}).
;               return_val == HoareSTFree.Act b b ==>
;               (forall (any_result: Type0).
;                   (HoareSTFree.Act b b).a == any_result ==>
;                   (forall (any_result: Type).
;                       (HoareSTFree.Act b b).a & st == any_result ==>
;                       b == a /\
;                       ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;                       ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;                       Act? (HoareSTFree.Act b b) /\
;                       (forall (return_val: _: HoareSTFree.m st a p q {Act? _}).
;                           return_val == HoareSTFree.Act b b ==>
;                           (forall (any_result: HoareSTFree.mpre st) (any_result: Type0).
;                               (HoareSTFree.Act b b).a_p s0 == any_result ==>
;                               b == a /\
;                               ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) ==
;                                 p) /\
;                               ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) ==
;                                 q) /\ Act? (HoareSTFree.Act b b) /\
;                               (forall (_: (HoareSTFree.Act b b).a & st).
;                                   (*  - Subtyping check failed
;   - Expected type _: m st a p q {Act? _}
;     got type m st b (act_p a_p a_q k_p) (act_q a_q k_q)
; *)
;                                   b == a /\
;                                   ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)
;                                     ) ==
;                                     p) /\
;                                   ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) ==
;                                     q) /\ Act? (HoareSTFree.Act b b)) /\
;                               (forall (_:
;                                   _: ((HoareSTFree.Act b b).a & st){(HoareSTFree.Act b b).a_p s0}).
;                                   Act? (HoareSTFree.Act b b) /\
;                                   (forall (b: (HoareSTFree.Act b b).a) (b: st).
;                                       _ == (b, b) ==>
;                                       b == a /\
;                                       ((fun s0 ->
;                                             b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) ==
;                                         p) /\
;                                       ((fun s0 y s2 ->
;                                             exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) ==
;                                         q) /\ Act? (HoareSTFree.Act b b))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__act`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(97,4-97,7)
(and (implies 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x7
@x5
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x9
@x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x5
@x0
@x9
@x10
@x11))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(= @x4
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x13 Term))
 (! (implies (HasType @x13
@x0)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(97,4-97,7)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(97,4-97,7)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_3

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_4

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_5

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(97,4-97,7)
(= @x14
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=FStar.Pervasives.Native.fst(59,12-59,14); use=HoareSTFree.fst(97,4-97,7)
(= (HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x15)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(439,13-439,14); use=HoareSTFree.fst(97,4-97,7)
(= (FStar.Pervasives.Native.tuple2 (HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x0)
@x16)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(97,4-97,7)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_6

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(97,4-97,7)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_7

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_8

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_9

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(97,4-97,7)
(= @x17
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(HoareSTFree.mpre @x0))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
Tm_type)

;; def=Prims.fst(439,23-439,26); use=HoareSTFree.fst(97,4-97,7)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__a_p@tok
@x0)
@x1)
@x2)
@x3)
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x13)
@x19)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(97,4-97,7)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_10

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(97,4-97,7)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_11

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_12

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_13

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(FStar.Pervasives.Native.tuple2 (HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x0))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_14

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(97,4-97,7)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_15

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_16

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_17

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)
)
)
 
;;no pats
:qid @query.16))


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(Tm_refine_d6c64d16464ca3df0adfdca50d13fe32 @x0
@x1
@x2
@x3
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(and 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_18

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x9
(Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
(Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x21 Term))
 (! (implies (HasType @x21
(HoareSTFree.__proj__Act__item__a @x0
@x9
(Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
(Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(97,4-97,7)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
@x0)

;; def=HoareSTFree.fst(97,47-97,52); use=HoareSTFree.fst(97,4-97,7)
(= @x20
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.__proj__Act__item__a @x0
@x9
(Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
(Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x0
@x21
@x22))
)

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_19

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(97,4-97,7)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_20

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_21

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(97,4-97,7)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_22

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(97,4-97,7)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)
)
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
)
 
;;no pats
:qid @query.15))
)
 
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
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__act, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__act


; <Skipped let __proj__Act__item__act/>


; encoding sigelt val HoareSTFree.__proj__Act__item__b


; <Start encoding val HoareSTFree.__proj__Act__item__b>


(declare-fun HoareSTFree.__proj__Act__item__b (Term Term Term Term Term) Term)


(declare-fun HoareSTFree.__proj__Act__item__b@tok () Term)

; </end encoding val HoareSTFree.__proj__Act__item__b>

(push) ;; push{2

; Starting query at HoareSTFree.fst(98,5-98,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *) ~(Act? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__b`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,5-98,6)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,5-98,6)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__b, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__b


; <Skipped let __proj__Act__item__b/>


; encoding sigelt val HoareSTFree.__proj__Act__item__k_p


; <Start encoding val HoareSTFree.__proj__Act__item__k_p>


(declare-fun HoareSTFree.__proj__Act__item__k_p (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: projectee.a -> mpre st
(declare-fun Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> _: projectee.a -> mpre st
(declare-fun Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a () Term)
(declare-fun HoareSTFree.__proj__Act__item__k_p@tok () Term)


; </end encoding val HoareSTFree.__proj__Act__item__k_p>

(push) ;; push{2

; Starting query at HoareSTFree.fst(98,16-98,19)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)







(declare-fun Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))

:named non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))















; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type0)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (s0: st -> Prims.Pure (b & st)))
;       (b: Type)
;       (b: (_: b -> HoareSTFree.mpre st))
;       (b: (_: b -> HoareSTFree.mpost st b))
;       (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m st b (b x) (b x)))).
;       projectee == HoareSTFree.Act b b ==>
;       b == a /\
;       ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;       ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;       Act? (HoareSTFree.Act b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__k_p`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(98,16-98,19)
(and (implies 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,16-98,19)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,16-98,19)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x7
@x5
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x9
@x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x5
@x0
@x9
@x10
@x11))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,16-98,19)
(= @x4
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,16-98,19)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(98,16-98,19)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_3

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(98,16-98,19)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_4

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(98,16-98,19)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_5

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,16-98,19)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__k_p, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__k_p


; <Skipped let __proj__Act__item__k_p/>


; encoding sigelt val HoareSTFree.__proj__Act__item__k_q


; <Start encoding val HoareSTFree.__proj__Act__item__k_q>


(declare-fun HoareSTFree.__proj__Act__item__k_q (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: projectee.a -> mpost st projectee.b
(declare-fun Tm_arrow_2f54e954f523bbfbc8f00ac81c4f4be6 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> _: projectee.a -> mpost st projectee.b
(declare-fun Tm_arrow_6029c6c899a0e8eb5fa5f87417a99cc8 () Term)
(declare-fun HoareSTFree.__proj__Act__item__k_q@tok () Term)


; </end encoding val HoareSTFree.__proj__Act__item__k_q>

(push) ;; push{2

; Starting query at HoareSTFree.fst(98,39-98,42)

(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)







(declare-fun Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))

:named non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))





























; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type0)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (s0: st -> Prims.Pure (b & st)))
;       (b: Type)
;       (b: (_: b -> HoareSTFree.mpre st))
;       (b: (_: b -> HoareSTFree.mpost st b))
;       (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m st b (b x) (b x)))).
;       projectee == HoareSTFree.Act b b ==>
;       b == a /\
;       ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;       ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;       Act? (HoareSTFree.Act b b) /\
;       (forall (_: (HoareSTFree.Act b b).a).
;           (*  - Subtyping check failed
;   - Expected type _: m st a p q {Act? _}
;     got type m st b (act_p a_p a_q k_p) (act_q a_q k_q)
; *)
;           b == a /\
;           ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;           ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;           Act? (HoareSTFree.Act b b)))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__k_q`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(98,39-98,42)
(and (implies 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,39-98,42)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,39-98,42)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x7
@x5
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x9
@x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x5
@x0
@x9
@x10
@x11))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,39-98,42)
(= @x4
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(98,39-98,42)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(98,39-98,42)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_3

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(98,39-98,42)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_4

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(98,39-98,42)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_5

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,39-98,42)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(98,39-98,42)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,39-98,42)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_6

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(98,39-98,42)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_7

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(98,39-98,42)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_8

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(98,39-98,42)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_9

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(98,39-98,42)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__k_q, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__k_q


; <Skipped let __proj__Act__item__k_q/>


; encoding sigelt val HoareSTFree.__proj__Act__item__k


; <Start encoding val HoareSTFree.__proj__Act__item__k>


(declare-fun HoareSTFree.__proj__Act__item__k (Term Term Term Term Term) Term)


(declare-fun Non_total_Tm_arrow_2116a125c4761ddadac69c0addaef9ee (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m st a p q {Act? _} -> x: projectee.a   -> FStar.Pervasives.Dv (m st projectee.b (projectee.k_p x) (projectee.k_q x))
(declare-fun Tm_arrow_2600f84d57d8c1c67d2712f2b824f70b () Term)
(declare-fun HoareSTFree.__proj__Act__item__k@tok () Term)



; </end encoding val HoareSTFree.__proj__Act__item__k>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(98,16-98,19); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Act__item__k_p @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x4
@x3
@x2
@x1
@x0)))
 

:pattern ((HoareSTFree.__proj__Act__item__k_p @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Act__item__k_p))

:named typing_HoareSTFree.__proj__Act__item__k_p))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__b; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(98,5-98,6); use=HoareSTFree.fst(98,5-98,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HoareSTFree.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Act__item__b))

:named typing_HoareSTFree.__proj__Act__item__b))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(98,16-98,19); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__k_p@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(HoareSTFree.__proj__Act__item__k_p @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__k_p@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_HoareSTFree.__proj__Act__item__k_p))

:named token_correspondence_HoareSTFree.__proj__Act__item__k_p))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(98,16-98,19); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Act__item__k_p @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Act_k_p @x4))
 

:pattern ((HoareSTFree.__proj__Act__item__k_p @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Act_k_p))

:named proj_equation_HoareSTFree.Act_k_p))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__b; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(98,5-98,6); use=HoareSTFree.fst(98,5-98,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Act_b @x4))
 

:pattern ((HoareSTFree.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Act_b))

:named proj_equation_HoareSTFree.Act_b))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-98,33); use=HoareSTFree.fst(95,4-98,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid kinding_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11))

:named kinding_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! (HasType Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a
Tm_type)
:named kinding_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(98,16-98,19); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.__proj__Act__item__k_p@tok
Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))

;; def=HoareSTFree.fst(98,16-98,19); use=HoareSTFree.fst(98,16-98,19)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__k_p@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.__proj__Act__item__k_p @x1
@x2
@x3
@x4
@x5))
 

:pattern ((HoareSTFree.__proj__Act__item__k_p @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_HoareSTFree.__proj__Act__item__k_p.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.__proj__Act__item__k_p@tok))
:qid function_token_typing_HoareSTFree.__proj__Act__item__k_p))

:named function_token_typing_HoareSTFree.__proj__Act__item__k_p))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-98,33); use=HoareSTFree.fst(95,4-98,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x2
@x3
@x4
@x5
@x6))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x2
@x3
@x4
@x5
@x6)))
:qid HoareSTFree_pre_typing_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11))

:named HoareSTFree_pre_typing_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))
:qid HoareSTFree_pre_typing_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))

:named HoareSTFree_pre_typing_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(95,4-98,33); use=HoareSTFree.fst(95,4-98,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x1
@x2
@x3
@x4
@x5))
(and 
;; def=HoareSTFree.fst(95,4-98,33); use=HoareSTFree.fst(95,4-98,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.__proj__Act__item__a @x5
@x4
@x3
@x2
@x1))
(HasType (ApplyTT @x0
@x6)
(HoareSTFree.mpre @x5)))
 

:pattern ((ApplyTT @x0
@x6))
:qid HoareSTFree_interpretation_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x1
@x2
@x3
@x4
@x5)))
:qid HoareSTFree_interpretation_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11))

:named HoareSTFree_interpretation_Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a
;;; Fact-ids: Name HoareSTFree.__proj__Act__item__k_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a)
(and 
;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2))
(HasType @x5
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x1
@x2
@x3
@x4)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(Tm_arrow_e2f54bc6e47f9d69c27601bfefb8fe11 @x5
@x4
@x3
@x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a.2))


;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
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
:qid HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a.3))


;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a.4))


;; def=HoareSTFree.fst(90,11-98,33); use=HoareSTFree.fst(90,11-98,33)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
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
:qid HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))
:qid HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))

:named HoareSTFree_interpretation_Tm_arrow_120c0cfea1d0102cb6366a1eaca6ab6a))
(push) ;; push{2

; Starting query at HoareSTFree.fst(99,4-99,5)

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







(declare-fun Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))

:named non_total_function_typing_Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120))


























































;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
HoareSTFree.__proj__Act__item__k_p@tok))
:named @kick_partial_app_e55ff2d220599edb969f53d0a7536a49))

; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type0)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (s0: st -> Prims.Pure (b & st)))
;       (b: Type)
;       (b: (_: b -> HoareSTFree.mpre st))
;       (b: (_: b -> HoareSTFree.mpost st b))
;       (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m st b (b x) (b x)))).
;       projectee == HoareSTFree.Act b b ==>
;       b == a /\
;       ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;       ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;       Act? (HoareSTFree.Act b b) /\
;       (forall (x: (HoareSTFree.Act b b).a).
;           b == a /\
;           ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;           ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;           Act? (HoareSTFree.Act b b) /\
;           (forall (return_val: _: HoareSTFree.m st a p q {Act? _}).
;               return_val == HoareSTFree.Act b b ==>
;               (forall (any_result: Type).
;                   (HoareSTFree.Act b b).b == any_result ==>
;                   b == a /\
;                   ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;                   ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;                   Act? (HoareSTFree.Act b b) /\
;                   (forall (return_val: _: HoareSTFree.m st a p q {Act? _}).
;                       return_val == HoareSTFree.Act b b ==>
;                       (forall (any_result: HoareSTFree.mpre st).
;                           (HoareSTFree.Act b b).k_p x == any_result ==>
;                           b == a /\
;                           ((fun s0 -> b s0 /\ (forall (x: b) (s1: st). b s0 x s1 ==> b x s1)) == p) /\
;                           ((fun s0 y s2 -> exists (x: b) (s1: st). b s0 x s1 /\ b x s1 y s2) == q) /\
;                           Act? (HoareSTFree.Act b b)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__k`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(99,4-99,5)
(and (implies 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(not 
;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x7
@x5
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x9
@x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Non_total_Tm_arrow_95820b9a991eb1c5cc6f22b0f0e49120 @x5
@x0
@x9
@x10
@x11))

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(= @x4
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(99,4-99,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(99,4-99,5)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_3

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_4

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_5

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(HoareSTFree.__proj__Act__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(99,4-99,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_6

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(99,4-99,5)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_7

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_8

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_9

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(99,4-99,5)
(= @x14
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=HoareSTFree.fst(90,23-95,7); use=HoareSTFree.fst(99,4-99,5)
(= (HoareSTFree.__proj__Act__item__b @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x15)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(99,4-99,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_10

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(99,4-99,5)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_11

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_12

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_13

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(99,4-99,5)
(= @x16
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(99,4-99,5)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(HoareSTFree.mpre @x0))

;; def=HoareSTFree.fst(90,37-99,32); use=HoareSTFree.fst(99,4-99,5)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Act__item__k_p@tok
@x0)
@x1)
@x2)
@x3)
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12))
@x13)
@x17)
)

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(95,4-95,7)
(or label_14

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(99,4-99,5)
(= @x9
@x1)
)


;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(95,4-95,7)
(or label_15

;; def=HoareSTFree.fst(90,37-100,30); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_b5422111c78eed395d177884f9f544e8 @x6
@x5
@x7
@x10
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(95,4-95,7)
(or label_16

;; def=HoareSTFree.fst(90,50-100,46); use=HoareSTFree.fst(99,4-99,5)
(= (Tm_abs_90afe3918a255333b80d7a5b53bb8b98 @x5
@x7
@x11
@x9
@x0)
@x3)
)


;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(95,4-95,7)
(or label_17

;; def=HoareSTFree.fst(95,4-95,7); use=HoareSTFree.fst(99,4-99,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
(HoareSTFree.Act @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11
@x12)))
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Act__item__k, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, refinement_interpretation_Tm_refine_dc5a4d5b61532b33c9f5b60abe8c861e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__k


; <Skipped let __proj__Act__item__k/>


; encoding sigelt val HoareSTFree.uu___is_Weaken


; <Start encoding val HoareSTFree.uu___is_Weaken>

(declare-fun HoareSTFree.uu___is_Weaken (Term Term Term Term Term) Term)

(declare-fun HoareSTFree.uu___is_Weaken@tok () Term)

; </end encoding val HoareSTFree.uu___is_Weaken>


; encoding sigelt let uu___is_Weaken


; <Skipped let uu___is_Weaken/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item__a


; <Start encoding val HoareSTFree.__proj__Weaken__item__a>

(declare-fun Tm_refine_af764247f953a28b44f2188156d29c27 (Term Term Term Term) Term)
(declare-fun HoareSTFree.__proj__Weaken__item__a (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Weaken? _} -> Type
(declare-fun Tm_arrow_1c5a2e515dd826b65dec18c9a9ded179 () Term)
(declare-fun HoareSTFree.__proj__Weaken__item__a@tok () Term)

; </end encoding val HoareSTFree.__proj__Weaken__item__a>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.uu___is_Weaken; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4)
Prims.bool))
 

:pattern ((HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.uu___is_Weaken))

:named typing_HoareSTFree.uu___is_Weaken))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_af764247f953a28b44f2188156d29c27))

:named refinement_kinding_Tm_refine_af764247f953a28b44f2188156d29c27))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_af764247f953a28b44f2188156d29c27 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(HoareSTFree.m @x2
@x3
@x4
@x5))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x2
@x3
@x4
@x5
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_af764247f953a28b44f2188156d29c27 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27))

:named refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27))
;;;;;;;;;;;;;;;;haseq for Tm_refine_af764247f953a28b44f2188156d29c27
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (HoareSTFree.m @x0
@x1
@x2
@x3))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_af764247f953a28b44f2188156d29c27))

:named haseqTm_refine_af764247f953a28b44f2188156d29c27))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name HoareSTFree.uu___is_Weaken; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4)
(BoxBool (is-HoareSTFree.Weaken @x4)))
 

:pattern ((HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
:qid disc_equation_HoareSTFree.Weaken))

:named disc_equation_HoareSTFree.Weaken))
(push) ;; push{2

; Starting query at HoareSTFree.fst(102,5-102,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *) ~(Weaken? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item__a`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,5-102,6)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,5-102,6)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item__a


; <Skipped let __proj__Weaken__item__a/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item__p0


; <Start encoding val HoareSTFree.__proj__Weaken__item__p0>


(declare-fun HoareSTFree.__proj__Weaken__item__p0 (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Weaken? _} -> mpre st
(declare-fun Tm_arrow_f88d47f74caed18379735d95a4197f28 () Term)
(declare-fun HoareSTFree.__proj__Weaken__item__p0@tok () Term)

; </end encoding val HoareSTFree.__proj__Weaken__item__p0>

(push) ;; push{2

; Starting query at HoareSTFree.fst(102,16-102,18)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *) ~(Weaken? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item__p0`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,16-102,18)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,16-102,18)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item__p0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item__p0


; <Skipped let __proj__Weaken__item__p0/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item__q0


; <Start encoding val HoareSTFree.__proj__Weaken__item__q0>


(declare-fun HoareSTFree.__proj__Weaken__item__q0 (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Weaken? _} -> mpost st projectee.a
(declare-fun Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6 () Term)
(declare-fun HoareSTFree.__proj__Weaken__item__q0@tok () Term)

; </end encoding val HoareSTFree.__proj__Weaken__item__q0>

(push) ;; push{2

; Starting query at HoareSTFree.fst(102,31-102,33)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Weaken? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b:
;       Prims.squash ((forall (s: st). b s ==> b s) /\
;           (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;       (b: HoareSTFree.m st b b b).
;       projectee == HoareSTFree.Weaken b ==>
;       (forall (b:
;           Prims.squash ((forall (s: st). b s ==> b s) /\
;               (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;           (any_result: HoareSTFree.m st b b b).
;           HoareSTFree.Weaken b == any_result ==>
;           b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b)))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item__q0`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(102,31-102,33)
(and (implies 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,31-102,33)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,31-102,33)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(HoareSTFree.m @x0
@x5
@x6
@x7))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,31-102,33)
(= @x4
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,31-102,33)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x13)
)

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,31-102,33)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(102,31-102,33)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_3

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(102,31-102,33)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(102,31-102,33)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_5

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,31-102,33)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item__q0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Weaken, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item__q0


; <Skipped let __proj__Weaken__item__q0/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item__p1


; <Start encoding val HoareSTFree.__proj__Weaken__item__p1>


(declare-fun HoareSTFree.__proj__Weaken__item__p1 (Term Term Term Term Term) Term)


(declare-fun HoareSTFree.__proj__Weaken__item__p1@tok () Term)

; </end encoding val HoareSTFree.__proj__Weaken__item__p1>

(push) ;; push{2

; Starting query at HoareSTFree.fst(102,49-102,51)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *) ~(Weaken? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item__p1`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,49-102,51)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,49-102,51)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item__p1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item__p1


; <Skipped let __proj__Weaken__item__p1/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item__q1


; <Start encoding val HoareSTFree.__proj__Weaken__item__q1>


(declare-fun HoareSTFree.__proj__Weaken__item__q1 (Term Term Term Term Term) Term)


(declare-fun HoareSTFree.__proj__Weaken__item__q1@tok () Term)

; </end encoding val HoareSTFree.__proj__Weaken__item__q1>

(push) ;; push{2

; Starting query at HoareSTFree.fst(102,64-102,66)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Weaken? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b:
;       Prims.squash ((forall (s: st). b s ==> b s) /\
;           (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;       (b: HoareSTFree.m st b b b).
;       projectee == HoareSTFree.Weaken b ==>
;       (forall (b:
;           Prims.squash ((forall (s: st). b s ==> b s) /\
;               (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;           (any_result: HoareSTFree.m st b b b).
;           HoareSTFree.Weaken b == any_result ==>
;           b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b)))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item__q1`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(102,64-102,66)
(and (implies 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,64-102,66)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,64-102,66)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(HoareSTFree.m @x0
@x5
@x6
@x7))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,64-102,66)
(= @x4
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(102,64-102,66)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,64-102,66)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x13)
)

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,64-102,66)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(102,64-102,66)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_3

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(102,64-102,66)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(102,64-102,66)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_5

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(102,64-102,66)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item__q1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Weaken, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item__q1


; <Skipped let __proj__Weaken__item__q1/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item___5


; <Start encoding val HoareSTFree.__proj__Weaken__item___5>


(declare-fun HoareSTFree.__proj__Weaken__item___5 (Term Term Term Term Term) Term)


(declare-fun Tm_refine_12ceb271d3493b00b6b79995c01ac913 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m st a p q {Weaken? _}   -> Prims.squash ((forall (s: st). projectee.p1 s ==> projectee.p0 s) /\         (forall (s0: st) (x: projectee.a) (s1: st).             projectee.p1 s0 ==> projectee.q0 s0 x s1 ==> projectee.q1 s0 x s1))
(declare-fun Tm_arrow_5a0c3120731b2a11f1711aef3401468e () Term)
(declare-fun HoareSTFree.__proj__Weaken__item___5@tok () Term)







; </end encoding val HoareSTFree.__proj__Weaken__item___5>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,31-102,33); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Weaken__item__q0 @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.mpost @x0
(HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
@x4))))
 

:pattern ((HoareSTFree.__proj__Weaken__item__q0 @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Weaken__item__q0))

:named typing_HoareSTFree.__proj__Weaken__item__q0))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p1; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,49-102,51); use=HoareSTFree.fst(102,49-102,51)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Weaken__item__p1 @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.mpre @x0)))
 

:pattern ((HoareSTFree.__proj__Weaken__item__p1 @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Weaken__item__p1))

:named typing_HoareSTFree.__proj__Weaken__item__p1))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,16-102,18); use=HoareSTFree.fst(102,16-102,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.mpre @x0)))
 

:pattern ((HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Weaken__item__p0))

:named typing_HoareSTFree.__proj__Weaken__item__p0))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,5-102,6); use=HoareSTFree.fst(102,5-102,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Weaken__item__a))

:named typing_HoareSTFree.__proj__Weaken__item__a))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,31-102,33); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__q0@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(HoareSTFree.__proj__Weaken__item__q0 @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__q0@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_HoareSTFree.__proj__Weaken__item__q0))

:named token_correspondence_HoareSTFree.__proj__Weaken__item__q0))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p1; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,49-102,51); use=HoareSTFree.fst(102,49-102,51)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__p1@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(HoareSTFree.__proj__Weaken__item__p1 @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__p1@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_HoareSTFree.__proj__Weaken__item__p1))

:named token_correspondence_HoareSTFree.__proj__Weaken__item__p1))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,16-102,18); use=HoareSTFree.fst(102,16-102,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__p0@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__p0@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_HoareSTFree.__proj__Weaken__item__p0))

:named token_correspondence_HoareSTFree.__proj__Weaken__item__p0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,31-102,33); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Weaken__item__q0 @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Weaken_q0 @x4))
 

:pattern ((HoareSTFree.__proj__Weaken__item__q0 @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Weaken_q0))

:named proj_equation_HoareSTFree.Weaken_q0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p1; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,49-102,51); use=HoareSTFree.fst(102,49-102,51)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Weaken__item__p1 @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Weaken_p1 @x4))
 

:pattern ((HoareSTFree.__proj__Weaken__item__p1 @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Weaken_p1))

:named proj_equation_HoareSTFree.Weaken_p1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,16-102,18); use=HoareSTFree.fst(102,16-102,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Weaken_p0 @x4))
 

:pattern ((HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Weaken_p0))

:named proj_equation_HoareSTFree.Weaken_p0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,5-102,6); use=HoareSTFree.fst(102,5-102,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Weaken_a @x4))
 

:pattern ((HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Weaken_a))

:named proj_equation_HoareSTFree.Weaken_a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f88d47f74caed18379735d95a4197f28
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! (HasType Tm_arrow_f88d47f74caed18379735d95a4197f28
Tm_type)
:named kinding_Tm_arrow_f88d47f74caed18379735d95a4197f28))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! (HasType Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6
Tm_type)
:named kinding_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,31-102,33); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.__proj__Weaken__item__q0@tok
Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))

;; def=HoareSTFree.fst(102,31-102,33); use=HoareSTFree.fst(102,31-102,33)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__q0@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.__proj__Weaken__item__q0 @x1
@x2
@x3
@x4
@x5))
 

:pattern ((HoareSTFree.__proj__Weaken__item__q0 @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_HoareSTFree.__proj__Weaken__item__q0.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.__proj__Weaken__item__q0@tok))
:qid function_token_typing_HoareSTFree.__proj__Weaken__item__q0))

:named function_token_typing_HoareSTFree.__proj__Weaken__item__q0))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p1; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,49-102,51); use=HoareSTFree.fst(102,49-102,51)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.__proj__Weaken__item__p1@tok
Tm_arrow_f88d47f74caed18379735d95a4197f28))

;; def=HoareSTFree.fst(102,49-102,51); use=HoareSTFree.fst(102,49-102,51)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__p1@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.__proj__Weaken__item__p1 @x1
@x2
@x3
@x4
@x5))
 

:pattern ((HoareSTFree.__proj__Weaken__item__p1 @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_HoareSTFree.__proj__Weaken__item__p1.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.__proj__Weaken__item__p1@tok))
:qid function_token_typing_HoareSTFree.__proj__Weaken__item__p1))

:named function_token_typing_HoareSTFree.__proj__Weaken__item__p1))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(102,16-102,18); use=HoareSTFree.fst(102,16-102,18)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.__proj__Weaken__item__p0@tok
Tm_arrow_f88d47f74caed18379735d95a4197f28))

;; def=HoareSTFree.fst(102,16-102,18); use=HoareSTFree.fst(102,16-102,18)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.__proj__Weaken__item__p0@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.__proj__Weaken__item__p0 @x1
@x2
@x3
@x4
@x5))
 

:pattern ((HoareSTFree.__proj__Weaken__item__p0 @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_HoareSTFree.__proj__Weaken__item__p0.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.__proj__Weaken__item__p0@tok))
:qid function_token_typing_HoareSTFree.__proj__Weaken__item__p0))

:named function_token_typing_HoareSTFree.__proj__Weaken__item__p0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_f88d47f74caed18379735d95a4197f28)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_f88d47f74caed18379735d95a4197f28))
:qid HoareSTFree_pre_typing_Tm_arrow_f88d47f74caed18379735d95a4197f28))

:named HoareSTFree_pre_typing_Tm_arrow_f88d47f74caed18379735d95a4197f28))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))
:qid HoareSTFree_pre_typing_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))

:named HoareSTFree_pre_typing_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__p0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_f88d47f74caed18379735d95a4197f28)
(and 
;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2))
(HasType @x5
(Tm_refine_af764247f953a28b44f2188156d29c27 @x1
@x2
@x3
@x4)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.mpre @x1)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28.2))


;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
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
:qid HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28.3))


;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28.4))


;; def=HoareSTFree.fst(90,11-102,26); use=HoareSTFree.fst(90,11-102,26)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
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
:qid HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_f88d47f74caed18379735d95a4197f28))
:qid HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28))

:named HoareSTFree_interpretation_Tm_arrow_f88d47f74caed18379735d95a4197f28))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item__q0; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6)
(and 
;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2))
(HasType @x5
(Tm_refine_af764247f953a28b44f2188156d29c27 @x1
@x2
@x3
@x4)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.mpost @x1
(HoareSTFree.__proj__Weaken__item__a @x1
@x2
@x3
@x4
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6.2))


;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
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
:qid HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6.3))


;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6.4))


;; def=HoareSTFree.fst(90,11-102,44); use=HoareSTFree.fst(90,11-102,44)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
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
:qid HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))
:qid HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))

:named HoareSTFree_interpretation_Tm_arrow_f2b63e6cb1cd434cfcb30c3278d478f6))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item___5; Namespace HoareSTFree
(assert (! (Valid (ApplyTT __uu__PartialApp
HoareSTFree.__proj__Weaken__item__p0@tok))
:named @kick_partial_app_bc21e73a133ea43c109ce29b724fdde8))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item___5; Namespace HoareSTFree
(assert (! (Valid (ApplyTT __uu__PartialApp
HoareSTFree.__proj__Weaken__item__q0@tok))
:named @kick_partial_app_806863bac92763504d4f458ce1a39e73))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name HoareSTFree.__proj__Weaken__item___5; Namespace HoareSTFree
(assert (! (Valid (ApplyTT __uu__PartialApp
HoareSTFree.__proj__Weaken__item__p1@tok))
:named @kick_partial_app_47d2c4380eb241df203e698a11c1102c))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

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












; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Weaken? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b:
;       Prims.squash ((forall (s: st). b s ==> b s) /\
;           (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;       (b: HoareSTFree.m st b b b).
;       projectee == HoareSTFree.Weaken b ==>
;       (forall (b:
;           Prims.squash ((forall (s: st). b s ==> b s) /\
;               (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;           (any_result: HoareSTFree.m st b b b).
;           HoareSTFree.Weaken b == any_result ==>
;           b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b) /\
;           (forall (return_val: _: HoareSTFree.m st a p q {Weaken? _}).
;               return_val == HoareSTFree.Weaken b ==>
;               HoareSTFree.Weaken b == return_val ==>
;               (forall (any_result: Type).
;                   (HoareSTFree.Weaken b).a == any_result ==>
;                   (forall (b:
;                       Prims.squash ((forall (s: st). b s ==> b s) /\
;                           (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                       (any_result: HoareSTFree.m st b b b).
;                       HoareSTFree.Weaken b == any_result ==>
;                       b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b) /\
;                       (forall (return_val: _: HoareSTFree.m st a p q {Weaken? _}).
;                           return_val == HoareSTFree.Weaken b ==>
;                           HoareSTFree.Weaken b == return_val ==>
;                           (forall (any_result: HoareSTFree.mpre st).
;                               (HoareSTFree.Weaken b).p0 == any_result ==>
;                               (forall (b:
;                                   Prims.squash ((forall (s: st). b s ==> b s) /\
;                                       (forall (s0: st) (x: b) (s1: st).
;                                           b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                                   (any_result: HoareSTFree.m st b b b).
;                                   HoareSTFree.Weaken b == any_result ==>
;                                   b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b) /\
;                                   (forall (return_val: _: HoareSTFree.m st a p q {Weaken? _}).
;                                       return_val == HoareSTFree.Weaken b ==>
;                                       HoareSTFree.Weaken b == return_val ==>
;                                       (forall (any_result:
;                                           HoareSTFree.mpost st (HoareSTFree.Weaken b).a).
;                                           (HoareSTFree.Weaken b).q0 == any_result ==>
;                                           (forall (b:
;                                               Prims.squash ((forall (s: st). b s ==> b s) /\
;                                                   (forall (s0: st) (x: b) (s1: st).
;                                                       b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                                               (any_result: HoareSTFree.m st b b b).
;                                               HoareSTFree.Weaken b == any_result ==>
;                                               b == a /\ (b == p) /\ (b == q) /\
;                                               Weaken? (HoareSTFree.Weaken b) /\
;                                               (forall (return_val:
;                                                   _: HoareSTFree.m st a p q {Weaken? _}).
;                                                   return_val == HoareSTFree.Weaken b ==>
;                                                   HoareSTFree.Weaken b == return_val ==>
;                                                   (forall (any_result: HoareSTFree.mpre st).
;                                                       (HoareSTFree.Weaken b).p1 == any_result ==>
;                                                       (forall (b:
;                                                           Prims.squash ((forall (s: st). b s ==> b s
;                                                               ) /\
;                                                               (forall (s0: st) (x: b) (s1: st).
;                                                                   b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                                                           (any_result: HoareSTFree.m st b b b).
;                                                           HoareSTFree.Weaken b == any_result ==>
;                                                           b == a /\ (b == p) /\ (b == q) /\
;                                                           Weaken? (HoareSTFree.Weaken b)))))))))))))
;       ))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item___5`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(HoareSTFree.m @x0
@x5
@x6
@x7))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(= @x4
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-102,6)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x13)
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_3

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_5

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x14
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x14)
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=HoareSTFree.fst(71,27-101,10); use=HoareSTFree.fst(71,27-101,10)
(= (HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x15)
)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-102,18)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_6

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_7

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_8

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_9

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x18
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x18)
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(HoareSTFree.mpre @x0))

;; def=HoareSTFree.fst(71,36-101,10); use=HoareSTFree.fst(71,36-101,10)
(= (HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x19)
)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-102,33)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x21)
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_10

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_11

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_12

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_13

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x22
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x22)
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(HoareSTFree.mpost @x0
(HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))))

;; def=HoareSTFree.fst(71,49-101,10); use=HoareSTFree.fst(71,49-101,10)
(= (HoareSTFree.__proj__Weaken__item__q0 @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x23)
)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x24 Term))
 (! (implies (HasType @x24
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-102,51)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x25)
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_14

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_15

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_16

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_17

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x26
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x26)
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(HoareSTFree.mpre @x0))

;; def=HoareSTFree.fst(71,65-101,10); use=HoareSTFree.fst(71,65-101,10)
(= (HoareSTFree.__proj__Weaken__item__p1 @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x27)
)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x28 Term))
 (! (implies (HasType @x28
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x29 Term))
 (! (implies (and (HasType @x29
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-102,66)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x29)
)

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_18

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_19

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_20

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_21

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)
)
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
 
;;no pats
:qid @query.22))
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
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item___5, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Weaken, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item___5


; <Skipped let __proj__Weaken__item___5/>


; encoding sigelt val HoareSTFree.__proj__Weaken__item__f


; <Start encoding val HoareSTFree.__proj__Weaken__item__f>


(declare-fun HoareSTFree.__proj__Weaken__item__f (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Weaken? _} -> m st projectee.a projectee.p0 projectee.q0
(declare-fun Tm_arrow_5008c5e7051b94d72a25b8f779a72d76 () Term)
(declare-fun HoareSTFree.__proj__Weaken__item__f@tok () Term)

; </end encoding val HoareSTFree.__proj__Weaken__item__f>

(push) ;; push{2

; Starting query at HoareSTFree.fst(104,4-104,5)

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








; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Weaken? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Weaken? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b:
;       Prims.squash ((forall (s: st). b s ==> b s) /\
;           (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;       (b: HoareSTFree.m st b b b).
;       projectee == HoareSTFree.Weaken b ==>
;       (forall (b:
;           Prims.squash ((forall (s: st). b s ==> b s) /\
;               (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;           (any_result: HoareSTFree.m st b b b).
;           HoareSTFree.Weaken b == any_result ==>
;           b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b) /\
;           (forall (return_val: _: HoareSTFree.m st a p q {Weaken? _}).
;               return_val == HoareSTFree.Weaken b ==>
;               HoareSTFree.Weaken b == return_val ==>
;               (forall (any_result: Type).
;                   (HoareSTFree.Weaken b).a == any_result ==>
;                   (forall (b:
;                       Prims.squash ((forall (s: st). b s ==> b s) /\
;                           (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                       (any_result: HoareSTFree.m st b b b).
;                       HoareSTFree.Weaken b == any_result ==>
;                       b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b) /\
;                       (forall (return_val: _: HoareSTFree.m st a p q {Weaken? _}).
;                           return_val == HoareSTFree.Weaken b ==>
;                           HoareSTFree.Weaken b == return_val ==>
;                           (forall (any_result: HoareSTFree.mpre st).
;                               (HoareSTFree.Weaken b).p0 == any_result ==>
;                               (forall (b:
;                                   Prims.squash ((forall (s: st). b s ==> b s) /\
;                                       (forall (s0: st) (x: b) (s1: st).
;                                           b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                                   (any_result: HoareSTFree.m st b b b).
;                                   HoareSTFree.Weaken b == any_result ==>
;                                   b == a /\ (b == p) /\ (b == q) /\ Weaken? (HoareSTFree.Weaken b)))
;                       ))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Weaken__item__f`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(104,4-104,5)
(and (implies 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(not 
;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(HoareSTFree.m @x0
@x5
@x6
@x7))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(= @x4
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x13)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(104,4-104,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(104,4-104,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_3

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(104,4-104,5)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(104,4-104,5)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_5

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(104,4-104,5)
(= @x14
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x14)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=HoareSTFree.fst(90,23-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.__proj__Weaken__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x15)
)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(104,4-104,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_6

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(104,4-104,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_7

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(104,4-104,5)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_8

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(104,4-104,5)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_9

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(Tm_refine_af764247f953a28b44f2188156d29c27 @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(104,4-104,5)
(= @x18
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x18)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(HoareSTFree.mpre @x0))

;; def=HoareSTFree.fst(90,37-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.__proj__Weaken__item__p0 @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11))
@x19)
)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x8
@x6
@x5
@x7
@x9))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(104,4-104,5)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.m @x0
@x5
@x8
@x9))

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(= (HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
@x21)
)

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(101,4-101,10)
(or label_10

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(104,4-104,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(101,4-101,10)
(or label_11

;; def=HoareSTFree.fst(90,37-90,38); use=HoareSTFree.fst(104,4-104,5)
(= @x8
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(101,4-101,10)
(or label_12

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(104,4-104,5)
(= @x9
@x3)
)


;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(101,4-101,10)
(or label_13

;; def=HoareSTFree.fst(101,4-101,10); use=HoareSTFree.fst(104,4-104,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
(HoareSTFree.Weaken @x0
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
)
)
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
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.__proj__Weaken__item__f, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Weaken, refinement_interpretation_Tm_refine_af764247f953a28b44f2188156d29c27

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Weaken__item__f


; <Skipped let __proj__Weaken__item__f/>


; encoding sigelt val HoareSTFree.uu___is_Strengthen


; <Start encoding val HoareSTFree.uu___is_Strengthen>

(declare-fun HoareSTFree.uu___is_Strengthen (Term Term Term Term Term) Term)

(declare-fun HoareSTFree.uu___is_Strengthen@tok () Term)

; </end encoding val HoareSTFree.uu___is_Strengthen>


; encoding sigelt let uu___is_Strengthen


; <Skipped let uu___is_Strengthen/>


; encoding sigelt val HoareSTFree.__proj__Strengthen__item__a


; <Start encoding val HoareSTFree.__proj__Strengthen__item__a>

(declare-fun Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf (Term Term Term Term) Term)
(declare-fun HoareSTFree.__proj__Strengthen__item__a (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Strengthen? _} -> Type
(declare-fun Tm_arrow_534be0680d9d2908a91fd51c7c051362 () Term)
(declare-fun HoareSTFree.__proj__Strengthen__item__a@tok () Term)

; </end encoding val HoareSTFree.__proj__Strengthen__item__a>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.uu___is_Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4)
Prims.bool))
 

:pattern ((HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.uu___is_Strengthen))

:named typing_HoareSTFree.uu___is_Strengthen))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf))

:named refinement_kinding_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(HoareSTFree.m @x2
@x3
@x4
@x5))

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x2
@x3
@x4
@x5
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf))

:named refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (HoareSTFree.m @x0
@x1
@x2
@x3))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_0700a4510c6db9661eca8cb43eb7a8cf))

:named haseqTm_refine_0700a4510c6db9661eca8cb43eb7a8cf))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name HoareSTFree.uu___is_Strengthen; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4)
(BoxBool (is-HoareSTFree.Strengthen @x4)))
 

:pattern ((HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
:qid disc_equation_HoareSTFree.Strengthen))

:named disc_equation_HoareSTFree.Strengthen))
(push) ;; push{2

; Starting query at HoareSTFree.fst(107,5-107,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Strengthen? _}).
;   (*  - Could not prove post-condition
; *) ~(Strengthen? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Strengthen__item__a`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,5-107,6)
(not 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,5-107,6)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Strengthen__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Strengthen__item__a


; <Skipped let __proj__Strengthen__item__a/>


; encoding sigelt val HoareSTFree.__proj__Strengthen__item__phi


; <Start encoding val HoareSTFree.__proj__Strengthen__item__phi>


(declare-fun HoareSTFree.__proj__Strengthen__item__phi (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Strengthen? _} -> Prims.pure_pre
(declare-fun Tm_arrow_601266581e2c3c394a56c367ae32d9dd () Term)
(declare-fun HoareSTFree.__proj__Strengthen__item__phi@tok () Term)

; </end encoding val HoareSTFree.__proj__Strengthen__item__phi>

(push) ;; push{2

; Starting query at HoareSTFree.fst(107,16-107,19)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Strengthen? _}).
;   (*  - Could not prove post-condition
; *) ~(Strengthen? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Strengthen__item__phi`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,16-107,19)
(not 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,16-107,19)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Strengthen__item__phi, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Strengthen__item__phi


; <Skipped let __proj__Strengthen__item__phi/>


; encoding sigelt val HoareSTFree.__proj__Strengthen__item__p


; <Start encoding val HoareSTFree.__proj__Strengthen__item__p>


(declare-fun HoareSTFree.__proj__Strengthen__item__p (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Strengthen? _} -> mpre st
(declare-fun Tm_arrow_a02218334227a7c4f9586e35d334a162 () Term)
(declare-fun HoareSTFree.__proj__Strengthen__item__p@tok () Term)

; </end encoding val HoareSTFree.__proj__Strengthen__item__p>

(push) ;; push{2

; Starting query at HoareSTFree.fst(107,33-107,34)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Strengthen? _}).
;   (*  - Could not prove post-condition
; *) ~(Strengthen? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Strengthen__item__p`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,33-107,34)
(not 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,33-107,34)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
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
; QUERY ID: (HoareSTFree.__proj__Strengthen__item__p, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Strengthen__item__p


; <Skipped let __proj__Strengthen__item__p/>


; encoding sigelt val HoareSTFree.__proj__Strengthen__item__q


; <Start encoding val HoareSTFree.__proj__Strengthen__item__q>


(declare-fun HoareSTFree.__proj__Strengthen__item__q (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m st a p q {Strengthen? _} -> mpost st projectee.a
(declare-fun Tm_arrow_063980be22b7ec352703babb901f7824 () Term)
(declare-fun HoareSTFree.__proj__Strengthen__item__q@tok () Term)

; </end encoding val HoareSTFree.__proj__Strengthen__item__q>

(push) ;; push{2

; Starting query at HoareSTFree.fst(107,47-107,48)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

(declare-fun Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(108,7-108,36); use=HoareSTFree.fst(107,47-107,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.pure_pre)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
(HasType (Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456))

:named non_total_function_typing_Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456))



; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Strengthen? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Strengthen? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: Prims.pure_pre)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (_: Prims.squash b -> FStar.Pervasives.Dv (HoareSTFree.m st b b b))).
;       projectee == HoareSTFree.Strengthen b ==>
;       b == a /\ ((fun s -> b s /\ b) == p) /\ (b == q) /\ Strengthen? (HoareSTFree.Strengthen b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Strengthen__item__q`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(107,47-107,48)
(and (implies 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,47-107,48)
(not 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,47-107,48)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(107,47-107,48)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(107,47-107,48)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.pure_pre)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(107,47-107,48)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(107,47-107,48)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(107,47-107,48)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 @x6
@x0
@x5
@x7
@x8))

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,47-107,48)
(= @x4
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))
)

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,47-107,48)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(106,4-106,14)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(107,47-107,48)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(106,4-106,14)
(or label_3

;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(107,47-107,48)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x7
@x6
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(106,4-106,14)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(107,47-107,48)
(= @x8
@x3)
)


;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(or label_5

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(107,47-107,48)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9)))
)
)
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
 
;;no pats
:qid @query.1))
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
; QUERY ID: (HoareSTFree.__proj__Strengthen__item__q, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Strengthen, refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Strengthen__item__q


; <Skipped let __proj__Strengthen__item__q/>


; encoding sigelt val HoareSTFree.__proj__Strengthen__item__f


; <Start encoding val HoareSTFree.__proj__Strengthen__item__f>


(declare-fun HoareSTFree.__proj__Strengthen__item__f (Term Term Term Term Term) Term)


(declare-fun Non_total_Tm_arrow_e4211adaaba465021c4cab7b2303ef3f (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m st a p q {Strengthen? _} -> _: Prims.squash projectee.phi   -> FStar.Pervasives.Dv (m st projectee.a projectee.p projectee.q)
(declare-fun Tm_arrow_f715bc5a4512cebd444df4f2928c75ae () Term)
(declare-fun HoareSTFree.__proj__Strengthen__item__f@tok () Term)



; </end encoding val HoareSTFree.__proj__Strengthen__item__f>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__phi; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(107,16-107,19); use=HoareSTFree.fst(107,16-107,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Strengthen__item__phi @x0
@x1
@x2
@x3
@x4)
Prims.pure_pre))
 

:pattern ((HoareSTFree.__proj__Strengthen__item__phi @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Strengthen__item__phi))

:named typing_HoareSTFree.__proj__Strengthen__item__phi))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(107,33-107,34); use=HoareSTFree.fst(107,33-107,34)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Strengthen__item__p @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.mpre @x0)))
 

:pattern ((HoareSTFree.__proj__Strengthen__item__p @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Strengthen__item__p))

:named typing_HoareSTFree.__proj__Strengthen__item__p))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(107,5-107,6); use=HoareSTFree.fst(107,5-107,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.__proj__Strengthen__item__a @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HoareSTFree.__proj__Strengthen__item__a @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.__proj__Strengthen__item__a))

:named typing_HoareSTFree.__proj__Strengthen__item__a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__phi; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(107,16-107,19); use=HoareSTFree.fst(107,16-107,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Strengthen__item__phi @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Strengthen_phi @x4))
 

:pattern ((HoareSTFree.__proj__Strengthen__item__phi @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Strengthen_phi))

:named proj_equation_HoareSTFree.Strengthen_phi))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(107,33-107,34); use=HoareSTFree.fst(107,33-107,34)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Strengthen__item__p @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Strengthen_p @x4))
 

:pattern ((HoareSTFree.__proj__Strengthen__item__p @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Strengthen_p))

:named proj_equation_HoareSTFree.Strengthen_p))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name HoareSTFree.__proj__Strengthen__item__a; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(107,5-107,6); use=HoareSTFree.fst(107,5-107,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.__proj__Strengthen__item__a @x0
@x1
@x2
@x3
@x4)
(HoareSTFree.Strengthen_a @x4))
 

:pattern ((HoareSTFree.__proj__Strengthen__item__a @x0
@x1
@x2
@x3
@x4))
:qid proj_equation_HoareSTFree.Strengthen_a))

:named proj_equation_HoareSTFree.Strengthen_a))
(push) ;; push{2

; Starting query at HoareSTFree.fst(108,4-108,5)

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

(declare-fun Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(108,7-108,36); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.pure_pre)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
(HasType (Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456))

:named non_total_function_typing_Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456))











; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (projectee: _: HoareSTFree.m st a p q {Strengthen? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Strengthen? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: Prims.pure_pre)
;       (b: HoareSTFree.mpre st)
;       (b: HoareSTFree.mpost st b)
;       (b: (_: Prims.squash b -> FStar.Pervasives.Dv (HoareSTFree.m st b b b))).
;       projectee == HoareSTFree.Strengthen b ==>
;       b == a /\ ((fun s -> b s /\ b) == p) /\ (b == q) /\ Strengthen? (HoareSTFree.Strengthen b) /\
;       (forall (_: Prims.squash (HoareSTFree.Strengthen b).phi).
;           b == a /\ ((fun s -> b s /\ b) == p) /\ (b == q) /\ Strengthen? (HoareSTFree.Strengthen b) /\
;           (forall (return_val: _: HoareSTFree.m st a p q {Strengthen? _}).
;               return_val == HoareSTFree.Strengthen b ==>
;               (forall (any_result: Type).
;                   (HoareSTFree.Strengthen b).a == any_result ==>
;                   b == a /\ ((fun s -> b s /\ b) == p) /\ (b == q) /\
;                   Strengthen? (HoareSTFree.Strengthen b) /\
;                   (forall (return_val: _: HoareSTFree.m st a p q {Strengthen? _}).
;                       return_val == HoareSTFree.Strengthen b ==>
;                       (forall (any_result: HoareSTFree.mpre st).
;                           (HoareSTFree.Strengthen b).p == any_result ==>
;                           b == a /\ ((fun s -> b s /\ b) == p) /\ (b == q) /\
;                           Strengthen? (HoareSTFree.Strengthen b)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Strengthen__item__f`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(108,4-108,5)
(and (implies 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(not 
;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.pure_pre)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(HoareSTFree.mpost @x0
@x5))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Non_total_Tm_arrow_26ddd5a57dfe4f7c85222a7750e3a456 @x6
@x0
@x5
@x7
@x8))

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(= @x4
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(108,4-108,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(106,4-106,14)
(or label_2

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(108,4-108,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(106,4-106,14)
(or label_3

;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(108,4-108,5)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x7
@x6
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(106,4-106,14)
(or label_4

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(108,4-108,5)
(= @x8
@x3)
)


;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(or label_5

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9)))
)


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Prims.squash (HoareSTFree.__proj__Strengthen__item__phi @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(108,4-108,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(106,4-106,14)
(or label_6

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(108,4-108,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(106,4-106,14)
(or label_7

;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(108,4-108,5)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x7
@x6
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(106,4-106,14)
(or label_8

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(108,4-108,5)
(= @x8
@x3)
)


;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(or label_9

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(108,4-108,5)
(= @x11
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Tm_type)

;; def=HoareSTFree.fst(90,23-106,14); use=HoareSTFree.fst(108,4-108,5)
(= (HoareSTFree.__proj__Strengthen__item__a @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))
@x12)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(108,4-108,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(106,4-106,14)
(or label_10

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(108,4-108,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(106,4-106,14)
(or label_11

;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(108,4-108,5)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x7
@x6
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(106,4-106,14)
(or label_12

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(108,4-108,5)
(= @x8
@x3)
)


;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(or label_13

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9)))
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf @x0
@x1
@x2
@x3))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(108,4-108,5)
(= @x13
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(108,4-108,5)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(HoareSTFree.mpre @x0))

;; def=HoareSTFree.fst(90,37-106,14); use=HoareSTFree.fst(108,4-108,5)
(= (HoareSTFree.__proj__Strengthen__item__p @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9))
@x14)
)

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(and 
;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(106,4-106,14)
(or label_14

;; def=HoareSTFree.fst(90,23-90,24); use=HoareSTFree.fst(108,4-108,5)
(= @x5
@x1)
)


;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(106,4-106,14)
(or label_15

;; def=HoareSTFree.fst(90,37-109,33); use=HoareSTFree.fst(108,4-108,5)
(= (Tm_abs_e801ea450b6a9c23d60355e4509dfc47 @x7
@x6
@x0)
@x2)
)


;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(106,4-106,14)
(or label_16

;; def=HoareSTFree.fst(90,50-90,51); use=HoareSTFree.fst(108,4-108,5)
(= @x8
@x3)
)


;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(106,4-106,14)
(or label_17

;; def=HoareSTFree.fst(106,4-106,14); use=HoareSTFree.fst(108,4-108,5)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
(HoareSTFree.Strengthen @x0
@x5
@x6
@x7
@x8
@x9)))
)
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
:qid @query.8))
)
 
;;no pats
:qid @query.7))
)
)
 
;;no pats
:qid @query.6))
)
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
 
;;no pats
:qid @query.1))
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
; QUERY ID: (HoareSTFree.__proj__Strengthen__item__f, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Strengthen, refinement_interpretation_Tm_refine_0700a4510c6db9661eca8cb43eb7a8cf

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Strengthen__item__f


; <Skipped let __proj__Strengthen__item__f/>


; encoding sigelt val HoareSTFree.st


; <Start encoding val HoareSTFree.st>

(declare-fun HoareSTFree.st () Term)

; </end encoding val HoareSTFree.st>


; encoding sigelt let pre


; <Start encoding let pre>

(declare-fun HoareSTFree.pre () Term)
;;;;;;;;;;;;;;;;_: st -> Type
(declare-fun Tm_arrow_611f1291e789bae39cde66bd1da679fc () Term)

; </end encoding let pre>


; encoding sigelt let post


; <Start encoding let post>

(declare-fun HoareSTFree.post (Term) Term)

(declare-fun HoareSTFree.post@tok () Term)
;;;;;;;;;;;;;;;;_: st -> _: a -> _: st -> Type
(declare-fun Tm_arrow_f47eea3d1abab792ad7e0371ab78331f (Term) Term)

; </end encoding let post>


; encoding sigelt let repr


; <Start encoding let repr>

(declare-fun HoareSTFree.repr (Term Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> p: pre -> q: post a -> Type
(declare-fun Tm_arrow_007b6d4674b05e9de456c38edef31fe1 () Term)
(declare-fun HoareSTFree.repr@tok () Term)
(declare-fun Non_total_Tm_arrow_0d4235823196c6153929da6bc95cc221 (Term Term Term) Term)

; </end encoding let repr>


; encoding sigelt let return


; <Start encoding let return>

(declare-fun HoareSTFree.return (Term Term Term) Term)

(declare-fun Tm_abs_4915758ffd73c07568944149340571bf (Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> x: a -> q: post a -> repr a (fun s0 -> q s0 x s0) q
(declare-fun Tm_arrow_2e1e72e8a8aae0a0fdea0b58d394d3a8 () Term)
(declare-fun HoareSTFree.return@tok () Term)


;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_781 (Term Term Term) Term)

; </end encoding let return>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
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
;;; Fact-ids: Name HoareSTFree.st; Namespace HoareSTFree
(assert (! (HasType HoareSTFree.st
Tm_type)
:named typing_HoareSTFree.st))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.repr; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(126,5-126,9); use=HoareSTFree.fst(126,5-126,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
HoareSTFree.pre)
(HasType @x2
(HoareSTFree.post @x0)))
(HasType (HoareSTFree.repr @x0
@x1
@x2)
Tm_type))
 

:pattern ((HoareSTFree.repr @x0
@x1
@x2))
:qid typing_HoareSTFree.repr))

:named typing_HoareSTFree.repr))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.pre; Namespace HoareSTFree
(assert (! (HasType HoareSTFree.pre
Tm_type)
:named typing_HoareSTFree.pre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.post; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(124,5-124,9); use=HoareSTFree.fst(124,5-124,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (HoareSTFree.post @x0)
Tm_type))
 

:pattern ((HoareSTFree.post @x0))
:qid typing_HoareSTFree.post))

:named typing_HoareSTFree.post))
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
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name HoareSTFree.repr; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(126,40-126,63); use=HoareSTFree.fst(126,40-126,63)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
HoareSTFree.pre)
(HasType @x2
(HoareSTFree.post @x0)))
(HasType (Non_total_Tm_arrow_0d4235823196c6153929da6bc95cc221 @x0
@x1
@x2)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_0d4235823196c6153929da6bc95cc221 @x0
@x1
@x2)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_0d4235823196c6153929da6bc95cc221))

:named non_total_function_typing_Non_total_Tm_arrow_0d4235823196c6153929da6bc95cc221))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f
;;; Fact-ids: Name HoareSTFree.post; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(124,11-124,43); use=HoareSTFree.fst(124,21-124,43)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x0)
Tm_type))
:qid kinding_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f))

:named kinding_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_611f1291e789bae39cde66bd1da679fc
;;; Fact-ids: Name HoareSTFree.pre; Namespace HoareSTFree
(assert (! (HasType Tm_arrow_611f1291e789bae39cde66bd1da679fc
Tm_type)
:named kinding_Tm_arrow_611f1291e789bae39cde66bd1da679fc))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (HasType Prims.l_True
Prims.logical)
:named function_token_typing_Prims.l_True))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.st; Namespace HoareSTFree
(assert (! (HasType HoareSTFree.st
Tm_type)
:named function_token_typing_HoareSTFree.st))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name HoareSTFree.pre; Namespace HoareSTFree
(assert (! (HasType HoareSTFree.pre
Tm_type)
:named function_token_typing_HoareSTFree.pre))
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
;;;;;;;;;;;;;;;;Equation for HoareSTFree.repr
;;; Fact-ids: Name HoareSTFree.repr; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(126,5-126,9); use=HoareSTFree.fst(126,5-126,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (HoareSTFree.repr @x0
@x1
@x2)
(Non_total_Tm_arrow_0d4235823196c6153929da6bc95cc221 @x0
@x1
@x2))
 

:pattern ((HoareSTFree.repr @x0
@x1
@x2))
:qid equation_HoareSTFree.repr))

:named equation_HoareSTFree.repr))
;;;;;;;;;;;;;;;;Equation for HoareSTFree.pre
;;; Fact-ids: Name HoareSTFree.pre; Namespace HoareSTFree
(assert (! (= HoareSTFree.pre
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
:named equation_HoareSTFree.pre))
;;;;;;;;;;;;;;;;Equation for HoareSTFree.post
;;; Fact-ids: Name HoareSTFree.post; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(124,5-124,9); use=HoareSTFree.fst(124,5-124,9)
(forall ((@x0 Term))
 (! (= (HoareSTFree.post @x0)
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x0))
 

:pattern ((HoareSTFree.post @x0))
:qid equation_HoareSTFree.post))

:named equation_HoareSTFree.post))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.post; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(124,11-124,43); use=HoareSTFree.fst(124,21-124,43)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f))

:named HoareSTFree_pre_typing_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name HoareSTFree.pre; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(123,11-123,22); use=HoareSTFree.fst(123,11-123,22)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_611f1291e789bae39cde66bd1da679fc))
:qid HoareSTFree_pre_typing_Tm_arrow_611f1291e789bae39cde66bd1da679fc))

:named HoareSTFree_pre_typing_Tm_arrow_611f1291e789bae39cde66bd1da679fc))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f
;;; Fact-ids: Name HoareSTFree.post; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(124,11-124,43); use=HoareSTFree.fst(124,21-124,43)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x1))
(and 
;; def=HoareSTFree.fst(124,11-124,43); use=HoareSTFree.fst(124,21-124,43)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
HoareSTFree.st)
(HasType @x3
@x1)
(HasType @x4
HoareSTFree.st))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x4))
:qid HoareSTFree_interpretation_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(124,11-124,43); use=HoareSTFree.fst(124,21-124,43)
(forall ((@x2 Term))
 (! (implies (HasType @x2
HoareSTFree.st)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f.2))


;; def=HoareSTFree.fst(124,11-124,43); use=HoareSTFree.fst(124,21-124,43)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
HoareSTFree.st)
(HasType @x3
@x1))
(IsTotFun (ApplyTT (ApplyTT @x0
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f.3))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f))

:named HoareSTFree_interpretation_Tm_arrow_f47eea3d1abab792ad7e0371ab78331f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_611f1291e789bae39cde66bd1da679fc
;;; Fact-ids: Name HoareSTFree.pre; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(123,11-123,22); use=HoareSTFree.fst(123,11-123,22)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
(and 
;; def=HoareSTFree.fst(123,11-123,22); use=HoareSTFree.fst(123,11-123,22)
(forall ((@x1 Term))
 (! (implies (HasType @x1
HoareSTFree.st)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_611f1291e789bae39cde66bd1da679fc.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_611f1291e789bae39cde66bd1da679fc))
:qid HoareSTFree_interpretation_Tm_arrow_611f1291e789bae39cde66bd1da679fc))

:named HoareSTFree_interpretation_Tm_arrow_611f1291e789bae39cde66bd1da679fc))
(push) ;; push{2

; Starting query at HoareSTFree.fst(144,12-157,14)

;;;;;;;;;;;;;;;;_: a -> pre
(declare-fun Tm_arrow_1b3c097b258e74865e83e68006f39cff (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1b3c097b258e74865e83e68006f39cff
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-141,15); use=HoareSTFree.fst(141,7-141,15)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0)
Tm_type))
:qid kinding_Tm_arrow_1b3c097b258e74865e83e68006f39cff))

:named kinding_Tm_arrow_1b3c097b258e74865e83e68006f39cff))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-141,15); use=HoareSTFree.fst(141,7-141,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_1b3c097b258e74865e83e68006f39cff))

:named HoareSTFree_pre_typing_Tm_arrow_1b3c097b258e74865e83e68006f39cff))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1b3c097b258e74865e83e68006f39cff
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-141,15); use=HoareSTFree.fst(141,7-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x1))
(and 
;; def=HoareSTFree.fst(139,14-141,15); use=HoareSTFree.fst(141,7-141,15)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(HasType (ApplyTT @x0
@x2)
HoareSTFree.pre))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_1b3c097b258e74865e83e68006f39cff.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_1b3c097b258e74865e83e68006f39cff))

:named HoareSTFree_interpretation_Tm_arrow_1b3c097b258e74865e83e68006f39cff))
;;;;;;;;;;;;;;;;_: a -> post b
(declare-fun Tm_arrow_b0b24a92715b42bf51a0a460324dd2da (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-141,33); use=HoareSTFree.fst(141,22-141,33)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da))

:named kinding_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-141,33); use=HoareSTFree.fst(141,22-141,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x3)))
:qid HoareSTFree_pre_typing_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da))

:named HoareSTFree_pre_typing_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-141,33); use=HoareSTFree.fst(141,22-141,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x2))
(and 
;; def=HoareSTFree.fst(139,14-141,33); use=HoareSTFree.fst(141,22-141,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(HoareSTFree.post @x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x2)))
:qid HoareSTFree_interpretation_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da))

:named HoareSTFree_interpretation_Tm_arrow_b0b24a92715b42bf51a0a460324dd2da))
;;;;;;;;;;;;;;;;x: a -> repr b (g_p x) (g_q x)
(declare-fun Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-142,54); use=HoareSTFree.fst(142,27-142,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x0
@x1
@x2
@x3)
Tm_type))
:qid kinding_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8))

:named kinding_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-142,54); use=HoareSTFree.fst(142,27-142,54)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x2
@x3
@x4
@x5))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x2
@x3
@x4
@x5)))
:qid HoareSTFree_pre_typing_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8))

:named HoareSTFree_pre_typing_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-142,54); use=HoareSTFree.fst(142,27-142,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x1
@x2
@x3
@x4))
(and 
;; def=HoareSTFree.fst(139,14-142,54); use=HoareSTFree.fst(142,27-142,54)
(forall ((@x5 Term))
 (! (implies (HasType @x5
@x4)
(HasType (ApplyTT @x0
@x5)
(HoareSTFree.repr @x3
(ApplyTT @x2
@x5)
(ApplyTT @x1
@x5))))
 

:pattern ((ApplyTT @x0
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x1
@x2
@x3
@x4)))
:qid HoareSTFree_interpretation_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8))

:named HoareSTFree_interpretation_Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8))
(declare-fun HoareSTFree.bind (Term Term Term Term Term Term Term Term) Term)




(declare-fun Tm_abs_bd3ae10796212be28120dcb84eeafdb0 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_bd3ae10796212be28120dcb84eeafdb0
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_bd3ae10796212be28120dcb84eeafdb0 @x0
@x1
@x2
@x3)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_bd3ae10796212be28120dcb84eeafdb0 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_bd3ae10796212be28120dcb84eeafdb0))

:named typing_Tm_abs_bd3ae10796212be28120dcb84eeafdb0))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bd3ae10796212be28120dcb84eeafdb0
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_bd3ae10796212be28120dcb84eeafdb0 @x1
@x2
@x3
@x4)
@x0)
(Prims.l_imp (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x0)
(ApplyTT (ApplyTT @x4
@x3)
@x0)))
 

:pattern ((ApplyTT (Tm_abs_bd3ae10796212be28120dcb84eeafdb0 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_bd3ae10796212be28120dcb84eeafdb0))

:named interpretation_Tm_abs_bd3ae10796212be28120dcb84eeafdb0))

(declare-fun Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_d2baf505915ad472b16d64a7c0b2dc29
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x0
@x1
@x2
@x3)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x3))
 

:pattern ((Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_d2baf505915ad472b16d64a7c0b2dc29))

:named typing_Tm_abs_d2baf505915ad472b16d64a7c0b2dc29))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_d2baf505915ad472b16d64a7c0b2dc29
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x1
@x2
@x3
@x4)
@x0)
(Prims.l_Forall HoareSTFree.st
(Tm_abs_bd3ae10796212be28120dcb84eeafdb0 @x1
@x2
@x0
@x3)))
 

:pattern ((ApplyTT (Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_d2baf505915ad472b16d64a7c0b2dc29))

:named interpretation_Tm_abs_d2baf505915ad472b16d64a7c0b2dc29))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.l_Forall @x3
(Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x2
@x1
@x0
@x3)))

;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
@x3)
(HasType @x5
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(143,12-143,17)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(143,12-143,17)
(ApplyTT (ApplyTT (ApplyTT @x2
@x1)
@x4)
@x5)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(143,12-143,17)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(143,12-143,17)
(ApplyTT (ApplyTT @x0
@x4)
@x5)
)
)
 
;;no pats
:qid l_quant_interp_41144dc6306ff5e281a0f1fcdca8b8b6.1))
)
 

:pattern ((Valid (Prims.l_Forall @x3
(Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x2
@x1
@x0
@x3))))
:qid l_quant_interp_41144dc6306ff5e281a0f1fcdca8b8b6))

:named l_quant_interp_41144dc6306ff5e281a0f1fcdca8b8b6))

(declare-fun Tm_abs_c3350421947a68928bfb9221a6701ec3 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_c3350421947a68928bfb9221a6701ec3
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x0
@x1
@x2
@x3)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_c3350421947a68928bfb9221a6701ec3 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_c3350421947a68928bfb9221a6701ec3))

:named typing_Tm_abs_c3350421947a68928bfb9221a6701ec3))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_c3350421947a68928bfb9221a6701ec3
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(143,12-143,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x1
@x2
@x3
@x4)
@x0)
(Prims.l_and (ApplyTT @x1
@x0)
(Prims.l_Forall @x2
(Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x3
@x0
@x4
@x2))))
 

:pattern ((ApplyTT (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_c3350421947a68928bfb9221a6701ec3))

:named interpretation_Tm_abs_c3350421947a68928bfb9221a6701ec3))

(declare-fun Tm_abs_36684492614df80cdf7c4f2aca232258 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_36684492614df80cdf7c4f2aca232258
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_36684492614df80cdf7c4f2aca232258 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_36684492614df80cdf7c4f2aca232258 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_36684492614df80cdf7c4f2aca232258))

:named typing_Tm_abs_36684492614df80cdf7c4f2aca232258))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_36684492614df80cdf7c4f2aca232258
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_36684492614df80cdf7c4f2aca232258 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(Prims.l_and (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x4
@x3)
@x0)
@x5)
@x6)))
 

:pattern ((ApplyTT (Tm_abs_36684492614df80cdf7c4f2aca232258 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_36684492614df80cdf7c4f2aca232258))

:named interpretation_Tm_abs_36684492614df80cdf7c4f2aca232258))

(declare-fun Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x5))
 

:pattern ((Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f))

:named typing_Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(Prims.l_Exists HoareSTFree.st
(Tm_abs_36684492614df80cdf7c4f2aca232258 @x1
@x2
@x0
@x3
@x4
@x5)))
 

:pattern ((ApplyTT (Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f))

:named interpretation_Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (Valid (Prims.l_Exists @x5
(Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x4
@x3
@x2
@x1
@x0
@x5)))

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(143,32-143,37)
(exists ((@x6 Term) (@x7 Term))
 (! (and (HasType @x6
@x5)
(HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(143,32-143,37)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(143,32-143,37)
(ApplyTT (ApplyTT (ApplyTT @x4
@x3)
@x6)
@x7)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(143,32-143,37)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(143,32-143,37)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x2
@x6)
@x7)
@x1)
@x0)
)
)
 
;;no pats
:qid l_quant_interp_a1825713ddd5db536d1863e4d973ae9c.1))
)
 

:pattern ((Valid (Prims.l_Exists @x5
(Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x4
@x3
@x2
@x1
@x0
@x5))))
:qid l_quant_interp_a1825713ddd5db536d1863e4d973ae9c))

:named l_quant_interp_a1825713ddd5db536d1863e4d973ae9c))

(declare-fun Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x0
@x1
@x2
@x3)
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x3))
 

:pattern ((Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd))

:named typing_Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(143,32-143,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x3
@x4
@x5
@x6)
@x0)
@x1)
@x2)
(Prims.l_Exists @x3
(Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f @x4
@x0
@x5
@x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x3
@x4
@x5
@x6)
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd))

:named interpretation_Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd))
;;;;;;;;;;;;;;;;a: Type ->     b: Type ->     f_p: pre ->     f_q: post a ->     g_p: (_: a -> pre) ->     g_q: (_: a -> post b) ->     f: repr a f_p f_q ->     g: (x: a -> repr b (g_p x) (g_q x))   -> repr b       (fun s0 -> f_p s0 /\ (forall (x: a) (s1: st). f_q s0 x s1 ==> g_p x s1))       (fun s0 y s2 -> exists (x: a) (s1: st). f_q s0 x s1 /\ g_q x s1 y s2)
(declare-fun Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31
Tm_type)
:named kinding_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))
:qid HoareSTFree_pre_typing_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))

:named HoareSTFree_pre_typing_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31)
(and 
;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x1))
(HasType @x5
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x1))
(HasType @x6
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x1))
(HasType @x7
(HoareSTFree.repr @x1
@x3
@x4))
(HasType @x8
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x6
@x5
@x2
@x1)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(HoareSTFree.repr @x2
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x3
@x1
@x4
@x5)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x1
@x4
@x6
@x2))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8))
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.2))


;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
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
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.3))


;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
HoareSTFree.pre))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.4))


;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x1)))
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
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.5))


;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x1))
(HasType @x5
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x1)))
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
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.6))


;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x1))
(HasType @x5
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x1))
(HasType @x6
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6))
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.7))


;; def=HoareSTFree.fst(139,14-143,46); use=HoareSTFree.fst(139,18-143,46)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x1))
(HasType @x5
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x1))
(HasType @x6
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x1))
(HasType @x7
(HoareSTFree.repr @x1
@x3
@x4)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31.8))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))
:qid HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))

:named HoareSTFree_interpretation_Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))
(declare-fun HoareSTFree.bind@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,8-139,12); use=HoareSTFree.fst(139,8-139,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.bind@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(HoareSTFree.bind @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.bind@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid token_correspondence_HoareSTFree.bind))

:named token_correspondence_HoareSTFree.bind))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,8-139,12); use=HoareSTFree.fst(139,8-139,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.bind@tok
Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31))

;; def=HoareSTFree.fst(139,8-139,12); use=HoareSTFree.fst(139,8-139,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.bind@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(HoareSTFree.bind @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
 

:pattern ((HoareSTFree.bind @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid function_token_typing_HoareSTFree.bind.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.bind@tok))
:qid function_token_typing_HoareSTFree.bind))

:named function_token_typing_HoareSTFree.bind))














;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(139,8-139,12); use=HoareSTFree.fst(139,8-139,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
HoareSTFree.pre)
(HasType @x3
(HoareSTFree.post @x0))
(HasType @x4
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))
(HasType @x5
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x0))
(HasType @x6
(HoareSTFree.repr @x0
@x2
@x3))
(HasType @x7
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x5
@x4
@x1
@x0)))
(HasType (HoareSTFree.bind @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(HoareSTFree.repr @x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x2
@x0
@x3
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x0
@x3
@x5
@x1))))
 

:pattern ((HoareSTFree.bind @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_HoareSTFree.bind))

:named typing_HoareSTFree.bind))
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































(declare-fun Tm_refine_bab006a1b4f7cb4d161649fa95772e1d (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(97,23-97,31); use=HoareSTFree.fst(148,6-148,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_bab006a1b4f7cb4d161649fa95772e1d))

:named refinement_kinding_Tm_refine_bab006a1b4f7cb4d161649fa95772e1d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(97,23-97,31); use=HoareSTFree.fst(148,6-148,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 @x2
HoareSTFree.st))
(let ((@lb5 @x1))

;; def=HoareSTFree.fst(97,57-97,68); use=HoareSTFree.fst(148,6-148,9)
(Valid 
;; def=HoareSTFree.fst(97,57-97,68); use=HoareSTFree.fst(148,6-148,9)
(ApplyTT (ApplyTT (ApplyTT @x3
@x4)
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
(FStar.Pervasives.Native.Mktuple2__2 @lb5))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_bab006a1b4f7cb4d161649fa95772e1d))

:named refinement_interpretation_Tm_refine_bab006a1b4f7cb4d161649fa95772e1d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_bab006a1b4f7cb4d161649fa95772e1d
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(97,23-97,31); use=HoareSTFree.fst(148,6-148,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
HoareSTFree.st))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x0
@x1
@x2))))
:qid haseqTm_refine_bab006a1b4f7cb4d161649fa95772e1d))

:named haseqTm_refine_bab006a1b4f7cb4d161649fa95772e1d))
;;;;;;;;;;;;;;;;s0: st -> Prims.Pure (b & st)
(declare-fun Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 (Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(97,23-126,56); use=HoareSTFree.fst(148,6-148,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261))

:named kinding_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(97,23-126,56); use=HoareSTFree.fst(148,6-148,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x2
@x3
@x4)))
:qid HoareSTFree_pre_typing_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261))

:named HoareSTFree_pre_typing_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(97,23-126,56); use=HoareSTFree.fst(148,6-148,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x1
@x2
@x3))
(and 
;; def=HoareSTFree.fst(97,23-126,56); use=HoareSTFree.fst(148,6-148,9)
(forall ((@x4 Term))
 (! (implies (and 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(148,6-148,9)
(Valid 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(148,6-148,9)
(ApplyTT @x3
@x4)
)

(HasType @x4
HoareSTFree.st))
(HasType (ApplyTT @x0
@x4)
(Tm_refine_bab006a1b4f7cb4d161649fa95772e1d @x2
@x1
@x4)))
 

:pattern ((ApplyTT @x0
@x4))
:qid HoareSTFree_interpretation_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x1
@x2
@x3)))
:qid HoareSTFree_interpretation_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261))

:named HoareSTFree_interpretation_Tm_arrow_f828b0952c3f6fffdb5a6856315bf261))
;;;;;;;;;;;;;;;;_: b -> mpre st
(declare-fun Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x0)
Tm_type))
:qid kinding_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956))

:named kinding_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956))

:named HoareSTFree_pre_typing_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x1))
(and 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(HasType (ApplyTT @x0
@x2)
(HoareSTFree.mpre HoareSTFree.st)))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956))

:named HoareSTFree_interpretation_Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956))
;;;;;;;;;;;;;;;;_: b -> mpost st b
(declare-fun Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f))

:named kinding_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x2
@x3)))
:qid HoareSTFree_pre_typing_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f))

:named HoareSTFree_pre_typing_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x1
@x2))
(and 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(HoareSTFree.mpost HoareSTFree.st
@x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x1
@x2)))
:qid HoareSTFree_interpretation_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f))

:named HoareSTFree_interpretation_Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f))


(declare-fun Non_total_Tm_arrow_f2a78ebd0461a40655b25c92422e41a2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x0))
(HasType @x3
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x1
@x0)))
(HasType (Non_total_Tm_arrow_f2a78ebd0461a40655b25c92422e41a2 @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_f2a78ebd0461a40655b25c92422e41a2 @x0
@x1
@x2
@x3)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_f2a78ebd0461a40655b25c92422e41a2))

:named non_total_function_typing_Non_total_Tm_arrow_f2a78ebd0461a40655b25c92422e41a2))

(declare-fun Tm_abs_44e4e7da1da6eb29016e17ede39f4620 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_44e4e7da1da6eb29016e17ede39f4620
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_44e4e7da1da6eb29016e17ede39f4620 @x0
@x1
@x2
@x3
@x4)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_44e4e7da1da6eb29016e17ede39f4620 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_44e4e7da1da6eb29016e17ede39f4620))

:named typing_Tm_abs_44e4e7da1da6eb29016e17ede39f4620))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_44e4e7da1da6eb29016e17ede39f4620
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_44e4e7da1da6eb29016e17ede39f4620 @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_imp (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x4)
@x0)
(ApplyTT (ApplyTT @x5
@x4)
@x0)))
 

:pattern ((ApplyTT (Tm_abs_44e4e7da1da6eb29016e17ede39f4620 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_44e4e7da1da6eb29016e17ede39f4620))

:named interpretation_Tm_abs_44e4e7da1da6eb29016e17ede39f4620))

(declare-fun Tm_abs_3b5fdfbc207f60137e244ac5287b676f (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_3b5fdfbc207f60137e244ac5287b676f
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x4))
 

:pattern ((Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_3b5fdfbc207f60137e244ac5287b676f))

:named typing_Tm_abs_3b5fdfbc207f60137e244ac5287b676f))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_3b5fdfbc207f60137e244ac5287b676f
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_Forall HoareSTFree.st
(Tm_abs_44e4e7da1da6eb29016e17ede39f4620 @x1
@x2
@x3
@x0
@x4)))
 

:pattern ((ApplyTT (Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_3b5fdfbc207f60137e244ac5287b676f))

:named interpretation_Tm_abs_3b5fdfbc207f60137e244ac5287b676f))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.l_Forall @x4
(Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x3
@x2
@x1
@x0
@x4)))

;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
@x4)
(HasType @x6
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(148,43-150,50)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(148,43-150,50)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x3
@x2)
@x1)
@x5)
@x6)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(148,43-150,50)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(148,43-150,50)
(ApplyTT (ApplyTT @x0
@x5)
@x6)
)
)
 
;;no pats
:qid l_quant_interp_126b5635c0bdf5347dc04d595614aa00.1))
)
 

:pattern ((Valid (Prims.l_Forall @x4
(Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x3
@x2
@x1
@x0
@x4))))
:qid l_quant_interp_126b5635c0bdf5347dc04d595614aa00))

:named l_quant_interp_126b5635c0bdf5347dc04d595614aa00))

(declare-fun Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_908ce062ebc248f9bb83a7c2d8c25049
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x0
@x1
@x2
@x3
@x4)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_908ce062ebc248f9bb83a7c2d8c25049))

:named typing_Tm_abs_908ce062ebc248f9bb83a7c2d8c25049))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_908ce062ebc248f9bb83a7c2d8c25049
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_and (ApplyTT (ApplyTT @x1
@x2)
@x0)
(Prims.l_Forall @x3
(Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x4
@x2
@x0
@x5
@x3))))
 

:pattern ((ApplyTT (Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_908ce062ebc248f9bb83a7c2d8c25049))

:named interpretation_Tm_abs_908ce062ebc248f9bb83a7c2d8c25049))








(declare-fun Tm_abs_bb160047fe7232f84a45803458d72c62 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_bb160047fe7232f84a45803458d72c62
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_bb160047fe7232f84a45803458d72c62 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_bb160047fe7232f84a45803458d72c62 @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_bb160047fe7232f84a45803458d72c62))

:named typing_Tm_abs_bb160047fe7232f84a45803458d72c62))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bb160047fe7232f84a45803458d72c62
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_bb160047fe7232f84a45803458d72c62 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_and (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x4)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x4)
@x0)
@x6)
@x7)))
 

:pattern ((ApplyTT (Tm_abs_bb160047fe7232f84a45803458d72c62 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_bb160047fe7232f84a45803458d72c62))

:named interpretation_Tm_abs_bb160047fe7232f84a45803458d72c62))

(declare-fun Tm_abs_44e585705455bbcbd2c8d86b91996f63 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_44e585705455bbcbd2c8d86b91996f63
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x6))
 

:pattern ((Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_44e585705455bbcbd2c8d86b91996f63))

:named typing_Tm_abs_44e585705455bbcbd2c8d86b91996f63))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_44e585705455bbcbd2c8d86b91996f63
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_Exists HoareSTFree.st
(Tm_abs_bb160047fe7232f84a45803458d72c62 @x1
@x2
@x3
@x0
@x4
@x5
@x6)))
 

:pattern ((ApplyTT (Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_44e585705455bbcbd2c8d86b91996f63))

:named interpretation_Tm_abs_44e585705455bbcbd2c8d86b91996f63))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.l_Exists @x6
(Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x5
@x4
@x3
@x2
@x1
@x0
@x6)))

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(149,28-149,66)
(exists ((@x7 Term) (@x8 Term))
 (! (and (HasType @x7
@x6)
(HasType @x8
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(149,28-149,66)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(149,28-149,66)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x4)
@x3)
@x7)
@x8)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(149,28-149,66)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(149,28-149,66)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x2
@x7)
@x8)
@x1)
@x0)
)
)
 
;;no pats
:qid l_quant_interp_4f25891b2858929520d877e70bc4c1f6.1))
)
 

:pattern ((Valid (Prims.l_Exists @x6
(Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x5
@x4
@x3
@x2
@x1
@x0
@x6))))
:qid l_quant_interp_4f25891b2858929520d877e70bc4c1f6))

:named l_quant_interp_4f25891b2858929520d877e70bc4c1f6))

(declare-fun Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x4))
 

:pattern ((Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2))

:named typing_Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 @x3
@x4
@x5
@x6
@x7)
@x0)
@x1)
@x2)
(Prims.l_Exists @x3
(Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x4
@x5
@x0
@x6
@x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 @x3
@x4
@x5
@x6
@x7)
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2))

:named interpretation_Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2))




















(declare-fun Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term))
 (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x1))
(HasType @x4
Tm_type)
(HasType @x5
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x4
@x1))
(HasType @x6
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))
(HasType @x7
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x0)))
(HasType (Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61.1))

 
;;no pats
:qid non_total_function_typing_Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61))

:named non_total_function_typing_Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61))








;;;;;;;;;;;;;;;;x: b -> s0: st -> Type0
(declare-fun Tm_arrow_2f63245ffeeaf7060d440f97baa67aac (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(123,11-123,13); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x0)
Tm_type))
:qid kinding_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac))

:named kinding_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(123,11-123,13); use=HoareSTFree.fst(150,47-150,49)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x2)))
:qid HoareSTFree_pre_typing_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac))

:named HoareSTFree_pre_typing_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(123,11-123,13); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x1))
(and 
;; def=HoareSTFree.fst(123,11-123,13); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x1)
(HasType @x3
HoareSTFree.st))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(123,11-123,13); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid HoareSTFree_interpretation_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x1)))
:qid HoareSTFree_interpretation_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac))

:named HoareSTFree_interpretation_Tm_arrow_2f63245ffeeaf7060d440f97baa67aac))
(declare-fun Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2f63245ffeeaf7060d440f97baa67aac @x4))
 

:pattern ((Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a))

:named typing_Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a @x2
@x3
@x4
@x5
@x6)
@x0)
@x1)
(Prims.l_and (ApplyTT (ApplyTT @x2
@x0)
@x1)
(Prims.l_Forall @x3
(Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x4
@x0
@x1
@x5
@x3))))
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a @x2
@x3
@x4
@x5
@x6)
@x0)
@x1))
:qid interpretation_Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a))

:named interpretation_Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a))






(declare-fun Tm_abs_d13e11c5ffbdaf75d896423b47914c20 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_d13e11c5ffbdaf75d896423b47914c20
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (HasType (Tm_abs_d13e11c5ffbdaf75d896423b47914c20 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_d13e11c5ffbdaf75d896423b47914c20 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_Tm_abs_d13e11c5ffbdaf75d896423b47914c20))

:named typing_Tm_abs_d13e11c5ffbdaf75d896423b47914c20))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_d13e11c5ffbdaf75d896423b47914c20
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (Tm_abs_d13e11c5ffbdaf75d896423b47914c20 @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
@x0)
(Prims.l_and (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x0)
(Prims.l_Exists @x4
(Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x5
@x3
@x0
@x6
@x7
@x8
@x4))))
 

:pattern ((ApplyTT (Tm_abs_d13e11c5ffbdaf75d896423b47914c20 @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
@x0))
:qid interpretation_Tm_abs_d13e11c5ffbdaf75d896423b47914c20))

:named interpretation_Tm_abs_d13e11c5ffbdaf75d896423b47914c20))

(declare-fun Tm_abs_21ca8a368be6748824893468a476a737 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_21ca8a368be6748824893468a476a737
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (HasType (Tm_abs_21ca8a368be6748824893468a476a737 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x7))
 

:pattern ((Tm_abs_21ca8a368be6748824893468a476a737 @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_Tm_abs_21ca8a368be6748824893468a476a737))

:named typing_Tm_abs_21ca8a368be6748824893468a476a737))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_21ca8a368be6748824893468a476a737
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,30-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (Tm_abs_21ca8a368be6748824893468a476a737 @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
@x0)
(Prims.l_Exists HoareSTFree.st
(Tm_abs_d13e11c5ffbdaf75d896423b47914c20 @x1
@x2
@x0
@x3
@x4
@x5
@x6
@x7)))
 

:pattern ((ApplyTT (Tm_abs_21ca8a368be6748824893468a476a737 @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
@x0))
:qid interpretation_Tm_abs_21ca8a368be6748824893468a476a737))

:named interpretation_Tm_abs_21ca8a368be6748824893468a476a737))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (iff (Valid (Prims.l_Exists @x7
(Tm_abs_21ca8a368be6748824893468a476a737 @x6
@x5
@x4
@x3
@x2
@x1
@x0
@x7)))

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x8 Term) (@x9 Term))
 (! (and (HasType @x8
@x7)
(HasType @x9
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x6
@x5)
@x8)
@x9)
)


;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(150,14-150,17)
(exists ((@x10 Term) (@x11 Term))
 (! (and (HasType @x10
@x4)
(HasType @x11
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x3
@x8)
@x9)
@x10)
@x11)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x2
@x10)
@x11)
@x1)
@x0)
)
)
 
;;no pats
:qid l_quant_interp_3328be7da259ca8a6d69e176e3bb9da0.2))
)
 
;;no pats
:qid l_quant_interp_3328be7da259ca8a6d69e176e3bb9da0.1))
)
 

:pattern ((Valid (Prims.l_Exists @x7
(Tm_abs_21ca8a368be6748824893468a476a737 @x6
@x5
@x4
@x3
@x2
@x1
@x0
@x7))))
:qid l_quant_interp_3328be7da259ca8a6d69e176e3bb9da0))

:named l_quant_interp_3328be7da259ca8a6d69e176e3bb9da0))

(declare-fun Tm_abs_2db7058256d91bf781f7c745a1226a06 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_2db7058256d91bf781f7c745a1226a06
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_2db7058256d91bf781f7c745a1226a06 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x5))
 

:pattern ((Tm_abs_2db7058256d91bf781f7c745a1226a06 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_2db7058256d91bf781f7c745a1226a06))

:named typing_Tm_abs_2db7058256d91bf781f7c745a1226a06))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_2db7058256d91bf781f7c745a1226a06
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (Tm_abs_2db7058256d91bf781f7c745a1226a06 @x3
@x4
@x5
@x6
@x7
@x8)
@x0)
@x1)
@x2)
(Prims.l_Exists @x3
(Tm_abs_21ca8a368be6748824893468a476a737 @x4
@x0
@x5
@x6
@x7
@x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (Tm_abs_2db7058256d91bf781f7c745a1226a06 @x3
@x4
@x5
@x6
@x7
@x8)
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_2db7058256d91bf781f7c745a1226a06))

:named interpretation_Tm_abs_2db7058256d91bf781f7c745a1226a06))





;;;;;;;;;;;;;;;;x: b -> s0: st -> y: b -> s2: st -> Type0
(declare-fun Tm_arrow_7aa387a79079e77e6067030124801391 (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7aa387a79079e77e6067030124801391
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_7aa387a79079e77e6067030124801391 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_7aa387a79079e77e6067030124801391 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_7aa387a79079e77e6067030124801391))

:named kinding_Tm_arrow_7aa387a79079e77e6067030124801391))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_7aa387a79079e77e6067030124801391 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_7aa387a79079e77e6067030124801391 @x2
@x3)))
:qid HoareSTFree_pre_typing_Tm_arrow_7aa387a79079e77e6067030124801391))

:named HoareSTFree_pre_typing_Tm_arrow_7aa387a79079e77e6067030124801391))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7aa387a79079e77e6067030124801391
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_7aa387a79079e77e6067030124801391 @x1
@x2))
(and 
;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
@x2)
(HasType @x4
HoareSTFree.st)
(HasType @x5
@x1)
(HasType @x6
HoareSTFree.st))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid HoareSTFree_interpretation_Tm_arrow_7aa387a79079e77e6067030124801391.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_7aa387a79079e77e6067030124801391.2))


;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
@x2)
(HasType @x4
HoareSTFree.st))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid HoareSTFree_interpretation_Tm_arrow_7aa387a79079e77e6067030124801391.3))


;; def=HoareSTFree.fst(124,21-139,17); use=HoareSTFree.fst(142,37-150,17)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
@x2)
(HasType @x4
HoareSTFree.st)
(HasType @x5
@x1))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_7aa387a79079e77e6067030124801391.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_7aa387a79079e77e6067030124801391 @x1
@x2)))
:qid HoareSTFree_interpretation_Tm_arrow_7aa387a79079e77e6067030124801391))

:named HoareSTFree_interpretation_Tm_arrow_7aa387a79079e77e6067030124801391))
(declare-fun Tm_abs_97b18f2b3d87c558d0e499685af101f9 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_97b18f2b3d87c558d0e499685af101f9
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_97b18f2b3d87c558d0e499685af101f9 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_7aa387a79079e77e6067030124801391 @x3
@x4))
 

:pattern ((Tm_abs_97b18f2b3d87c558d0e499685af101f9 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_97b18f2b3d87c558d0e499685af101f9))

:named typing_Tm_abs_97b18f2b3d87c558d0e499685af101f9))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_97b18f2b3d87c558d0e499685af101f9
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (Tm_abs_97b18f2b3d87c558d0e499685af101f9 @x4
@x5
@x6
@x7
@x8)
@x0)
@x1)
@x2)
@x3)
(Prims.l_Exists @x4
(Tm_abs_44e585705455bbcbd2c8d86b91996f63 @x5
@x0
@x1
@x6
@x2
@x3
@x4)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (Tm_abs_97b18f2b3d87c558d0e499685af101f9 @x4
@x5
@x6
@x7
@x8)
@x0)
@x1)
@x2)
@x3))
:qid interpretation_Tm_abs_97b18f2b3d87c558d0e499685af101f9))

:named interpretation_Tm_abs_97b18f2b3d87c558d0e499685af101f9))






(declare-fun Tm_abs_b97ac7dce7981c253f66e98a08115997 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_b97ac7dce7981c253f66e98a08115997
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_b97ac7dce7981c253f66e98a08115997 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_b97ac7dce7981c253f66e98a08115997 @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_b97ac7dce7981c253f66e98a08115997))

:named typing_Tm_abs_b97ac7dce7981c253f66e98a08115997))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b97ac7dce7981c253f66e98a08115997
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_b97ac7dce7981c253f66e98a08115997 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_imp (ApplyTT (ApplyTT (ApplyTT @x1
@x2)
@x3)
@x0)
(Prims.l_and (ApplyTT (ApplyTT @x4
@x3)
@x0)
(Prims.l_Forall @x5
(Tm_abs_3b5fdfbc207f60137e244ac5287b676f @x6
@x3
@x0
@x7
@x5)))))
 

:pattern ((ApplyTT (Tm_abs_b97ac7dce7981c253f66e98a08115997 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_b97ac7dce7981c253f66e98a08115997))

:named interpretation_Tm_abs_b97ac7dce7981c253f66e98a08115997))

(declare-fun Tm_abs_b20a743c62762e6632b695afdc189184 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_b20a743c62762e6632b695afdc189184
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_b20a743c62762e6632b695afdc189184 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x6))
 

:pattern ((Tm_abs_b20a743c62762e6632b695afdc189184 @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_b20a743c62762e6632b695afdc189184))

:named typing_Tm_abs_b20a743c62762e6632b695afdc189184))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b20a743c62762e6632b695afdc189184
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,36-61,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_b20a743c62762e6632b695afdc189184 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_Forall HoareSTFree.st
(Tm_abs_b97ac7dce7981c253f66e98a08115997 @x1
@x2
@x0
@x3
@x4
@x5
@x6)))
 

:pattern ((ApplyTT (Tm_abs_b20a743c62762e6632b695afdc189184 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_b20a743c62762e6632b695afdc189184))

:named interpretation_Tm_abs_b20a743c62762e6632b695afdc189184))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.l_Forall @x6
(Tm_abs_b20a743c62762e6632b695afdc189184 @x5
@x4
@x3
@x2
@x1
@x0
@x6)))

;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
@x6)
(HasType @x8
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x5
@x4)
@x7)
@x8)
)
)

;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(150,14-150,17)
(and 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT @x3
@x7)
@x8)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x9
@x2)
(HasType @x10
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x1
@x7)
@x8)
@x9)
@x10)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT @x0
@x9)
@x10)
)
)
 
;;no pats
:qid l_quant_interp_0e21c7eb74c99d7decd577ccecf7756a.2))
)
)
 
;;no pats
:qid l_quant_interp_0e21c7eb74c99d7decd577ccecf7756a.1))
)
 

:pattern ((Valid (Prims.l_Forall @x6
(Tm_abs_b20a743c62762e6632b695afdc189184 @x5
@x4
@x3
@x2
@x1
@x0
@x6))))
:qid l_quant_interp_0e21c7eb74c99d7decd577ccecf7756a))

:named l_quant_interp_0e21c7eb74c99d7decd577ccecf7756a))

(declare-fun Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e))

:named typing_Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0)
(Prims.l_and (ApplyTT @x1
@x0)
(Prims.l_Forall @x2
(Tm_abs_b20a743c62762e6632b695afdc189184 @x3
@x0
@x4
@x5
@x6
@x7
@x2))))
 

:pattern ((ApplyTT (Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e @x1
@x2
@x3
@x4
@x5
@x6
@x7)
@x0))
:qid interpretation_Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e))

:named interpretation_Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e))







(declare-fun Tm_refine_7f4e0b2deb0a804989a3475d87343f88 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_7f4e0b2deb0a804989a3475d87343f88))

:named refinement_kinding_Tm_refine_7f4e0b2deb0a804989a3475d87343f88))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x7)
)
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x3
@x7)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_7f4e0b2deb0a804989a3475d87343f88.1))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)
(HasType @x8
@x4)
(HasType @x9
HoareSTFree.st)

;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x7)
)


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x5
@x7)
@x8)
@x9)
)
)

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x6
@x7)
@x8)
@x9)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_7f4e0b2deb0a804989a3475d87343f88.2))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_7f4e0b2deb0a804989a3475d87343f88))

:named refinement_interpretation_Tm_refine_7f4e0b2deb0a804989a3475d87343f88))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7f4e0b2deb0a804989a3475d87343f88
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_7f4e0b2deb0a804989a3475d87343f88))

:named haseqTm_refine_7f4e0b2deb0a804989a3475d87343f88))























































(declare-fun Non_total_Tm_arrow_29b571d6c02b5285727767428fbeaeaa (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(108,7-108,36); use=HoareSTFree.fst(152,6-152,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.pure_pre)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre HoareSTFree.st))
(HasType @x3
(HoareSTFree.mpost HoareSTFree.st
@x1)))
(HasType (Non_total_Tm_arrow_29b571d6c02b5285727767428fbeaeaa @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_29b571d6c02b5285727767428fbeaeaa @x0
@x1
@x2
@x3)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_29b571d6c02b5285727767428fbeaeaa))

:named non_total_function_typing_Non_total_Tm_arrow_29b571d6c02b5285727767428fbeaeaa))























;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_1120 (Term Term Term Term) Term)
















(declare-fun Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(153,14-153,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x0 Term))
 (! 
;; def=HoareSTFree.fst(153,14-153,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Prims.pure_pre)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre HoareSTFree.st))
(HasType @x4
Tm_type)
(HasType @x5
(HoareSTFree.mpost HoareSTFree.st
@x4))
(HasType @x6
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))
(HasType @x7
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x2
@x0)))
(HasType (Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4 @x1
@x2
@x3
@x4
@x5
@x6
@x7)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4.1))

 
;;no pats
:qid non_total_function_typing_Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4))

:named non_total_function_typing_Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4))






(declare-fun Tm_abs_befbe04984735da4682cb803d0f41874 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_befbe04984735da4682cb803d0f41874
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(155,22-155,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_befbe04984735da4682cb803d0f41874 @x0
@x1
@x2
@x3
@x4)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_befbe04984735da4682cb803d0f41874 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_befbe04984735da4682cb803d0f41874))

:named typing_Tm_abs_befbe04984735da4682cb803d0f41874))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_befbe04984735da4682cb803d0f41874
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(155,22-155,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_befbe04984735da4682cb803d0f41874 @x1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_and (Prims.l_and (ApplyTT @x1
@x0)
(Prims.l_Forall @x2
(Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 @x3
@x0
@x4
@x2)))
@x5))
 

:pattern ((ApplyTT (Tm_abs_befbe04984735da4682cb803d0f41874 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_befbe04984735da4682cb803d0f41874))

:named interpretation_Tm_abs_befbe04984735da4682cb803d0f41874))





















































































; Encoding query formula : forall (a: Type)
;   (b: Type)
;   (f_p: HoareSTFree.pre)
;   (f_q: HoareSTFree.post a)
;   (g_p: (_: a -> HoareSTFree.pre))
;   (g_q: (_: a -> HoareSTFree.post b))
;   (f: HoareSTFree.repr a f_p f_q)
;   (g: (x: a -> HoareSTFree.repr b (g_p x) (g_q x)))
;   (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p:
;     Prims.pure_post (HoareSTFree.m HoareSTFree.st
;           b
;           (fun s0 -> f_p s0 /\ (forall (x: a) (s1: HoareSTFree.st). f_q s0 x s1 ==> g_p x s1))
;           (fun s0 y s2 -> exists (x: a) (s1: HoareSTFree.st). f_q s0 x s1 /\ g_q x s1 y s2))).
;     (forall (any_result:
;         HoareSTFree.m HoareSTFree.st
;           b
;           (fun s0 -> f_p s0 /\ (forall (x: a) (s1: HoareSTFree.st). f_q s0 x s1 ==> g_p x s1))
;           (fun s0 y s2 -> exists (x: a) (s1: HoareSTFree.st). f_q s0 x s1 /\ g_q x s1 y s2)).
;         p any_result) ==>
;     (forall (any_result: HoareSTFree.m HoareSTFree.st a f_p f_q)
;         (k:
;         Prims.pure_post (HoareSTFree.m HoareSTFree.st
;               b
;               (fun s0 -> f_p s0 /\ (forall (x: a) (s1: HoareSTFree.st). f_q s0 x s1 ==> g_p x s1))
;               (fun s0 y s2 -> exists (x: a) (s1: HoareSTFree.st). f_q s0 x s1 /\ g_q x s1 y s2))).
;         (forall (x:
;             HoareSTFree.m HoareSTFree.st
;               b
;               (fun s0 -> f_p s0 /\ (forall (x: a) (s1: HoareSTFree.st). f_q s0 x s1 ==> g_p x s1))
;               (fun s0 y s2 -> exists (x: a) (s1: HoareSTFree.st). f_q s0 x s1 /\ g_q x s1 y s2)).
;             {:pattern Prims.guard_free (k x)}
;             Prims.auto_squash (k x)) ==>
;         (~(Ret? any_result) /\ ~(Act? any_result) /\ ~(Weaken? any_result) /\
;           ~(Strengthen? any_result) ==>
;           Prims.l_False) /\
;         (forall (b: Type) (b: HoareSTFree.mpost HoareSTFree.st b) (b: b).
;             any_result == HoareSTFree.Ret b ==>
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==>
;                 (forall (any_result: HoareSTFree.pre). g_p b == any_result ==> Prims.has_type b a)) /\
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==>
;                 (forall (any_result: HoareSTFree.repr b (g_p b) (g_q b))
;                     (any_result: HoareSTFree.m HoareSTFree.st b (g_p b) (g_q b)).
;                     Prims.has_type b a /\
;                     (forall (any_result: b).
;                         b == any_result ==>
;                         (forall (any_result: HoareSTFree.pre).
;                             g_p b == any_result ==>
;                             Prims.has_type b a /\
;                             (forall (any_result: b).
;                                 b == any_result ==>
;                                 (forall (any_result: HoareSTFree.post b).
;                                     g_q b == any_result ==>
;                                     (forall (s: HoareSTFree.st).
;                                         f_p s /\
;                                         (forall (x: a) (s1: HoareSTFree.st). f_q s x s1 ==> g_p x s1
;                                         ) ==>
;                                         g_p b s) /\
;                                     (forall (s0: HoareSTFree.st) (x: b) (s1: HoareSTFree.st).
;                                         f_p s0 /\
;                                         (forall (x: a) (s1: HoareSTFree.st).
;                                             f_q s0 x s1 ==> g_p x s1) ==>
;                                         g_q b s0 x s1 ==>
;                                         (exists (x: a) (s1: HoareSTFree.st).
;                                             f_q s0 x s1 /\ g_q x s1 x s1))))))))) /\
;         (~(Ret? any_result) ==>
;           (forall (b: Type0)
;               (b: HoareSTFree.mpre HoareSTFree.st)
;               (b: HoareSTFree.mpost HoareSTFree.st b)
;               (b: (s0: HoareSTFree.st -> Prims.Pure (b & HoareSTFree.st)))
;               (b: Type)
;               (b: (_: b -> HoareSTFree.mpre HoareSTFree.st))
;               (b: (_: b -> HoareSTFree.mpost HoareSTFree.st b))
;               (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m HoareSTFree.st b (b x) (b x)))).
;               any_result == HoareSTFree.Act b b ==>
;               (forall (x: b).
;                   (forall (s0: HoareSTFree.st).
;                       (*  - Could not prove post-condition
; *)
;                       b x s0 ==>
;                       (forall (x: b).
;                           (*  - Could not prove post-condition
; *)
;                           forall (s1: HoareSTFree.st). b x s0 x s1 ==> Prims.has_type x a)) /\
;                   (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                       (fun s0 ->
;                           b x s0 /\ (forall (x: b) (s1: HoareSTFree.st). b x s0 x s1 ==> g_p x s1)) ==
;                       any_result ==>
;                       (forall (s0: HoareSTFree.st) (y: b) (s2: HoareSTFree.st).
;                           (*  - Could not prove post-condition
; *)
;                           forall (x: b).
;                             (*  - Could not prove post-condition
; *)
;                             forall (s1: HoareSTFree.st). b x s0 x s1 ==> Prims.has_type x a))) /\
;               (forall (x: b).
;                   (*  - Could not prove post-condition
; *)
;                   forall (p:
;                     Prims.pure_post (HoareSTFree.m HoareSTFree.st
;                           b
;                           (fun s0 ->
;                               b x s0 /\
;                               (forall (x: b) (s1: HoareSTFree.st). b x s0 x s1 ==> g_p x s1))
;                           (fun s0 y s2 ->
;                               exists (x: b) (s1: HoareSTFree.st). b x s0 x s1 /\ g_q x s1 y s2))).
;                     (forall (any_result:
;                         HoareSTFree.m HoareSTFree.st
;                           b
;                           (fun s0 ->
;                               b x s0 /\
;                               (forall (x: b) (s1: HoareSTFree.st). b x s0 x s1 ==> g_p x s1))
;                           (fun s0 y s2 ->
;                               exists (x: b) (s1: HoareSTFree.st). b x s0 x s1 /\ g_q x s1 y s2)).
;                         p any_result) ==>
;                     (forall (_: b). Prims.has_type _ a) /\
;                     (forall (any_result: (_: a -> HoareSTFree.pre)).
;                         g_p == any_result ==>
;                         (forall (_: b). Prims.has_type _ a) /\
;                         (forall (any_result: (_: a -> HoareSTFree.post b)).
;                             g_q == any_result ==> (forall (_: b). Prims.has_type _ a)))) /\
;               (forall (any_result:
;                   (x: b
;                       -> FStar.Pervasives.Dv
;                         (HoareSTFree.m HoareSTFree.st
;                             b
;                             (fun s0 ->
;                                 b x s0 /\
;                                 (forall (x: b) (s1: HoareSTFree.st). b x s0 x s1 ==> g_p x s1))
;                             (fun s0 y s2 ->
;                                 exists (x: b) (s1: HoareSTFree.st). b x s0 x s1 /\ g_q x s1 y s2))))
;                 .
;                   (forall (x: b) (s0: HoareSTFree.st).
;                       (*  - Could not prove post-condition
; *)
;                       b x s0 ==>
;                       (forall (x: b).
;                           (*  - Could not prove post-condition
; *)
;                           forall (s1: HoareSTFree.st). b x s0 x s1 ==> Prims.has_type x a)) /\
;                   (forall (any_result: (_: b -> HoareSTFree.mpre HoareSTFree.st)).
;                       (fun x s0 ->
;                           b x s0 /\ (forall (x: b) (s1: HoareSTFree.st). b x s0 x s1 ==> g_p x s1)) ==
;                       any_result ==>
;                       (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                           (fun s0 ->
;                               b s0 /\
;                               (forall (x: b) (s1: HoareSTFree.st).
;                                   b s0 x s1 ==>
;                                   b x s1 /\
;                                   (forall (x: b) (s1: HoareSTFree.st). b x s1 x s1 ==> g_p x s1))) ==
;                           any_result ==>
;                           (forall (x: b) (s0: HoareSTFree.st) (y: b) (s2: HoareSTFree.st).
;                               (*  - Could not prove post-condition
; *)
;                               forall (x: b).
;                                 (*  - Could not prove post-condition
; *)
;                                 forall (s1: HoareSTFree.st). b x s0 x s1 ==> Prims.has_type x a) /\
;                           (forall (any_result: (_: b -> HoareSTFree.mpost HoareSTFree.st b)).
;                               (fun x s0 y s2 ->
;                                   exists (x: b) (s1: HoareSTFree.st). b x s0 x s1 /\ g_q x s1 y s2) ==
;                               any_result ==>
;                               (forall (any_result: HoareSTFree.mpost HoareSTFree.st b).
;                                   (fun s0 y s2 ->
;                                       exists (x: b) (s1: HoareSTFree.st).
;                                         b s0 x s1 /\
;                                         (exists (x: b) (s1: HoareSTFree.st).
;                                             b x s1 x s1 /\ g_q x s1 y s2)) ==
;                                   any_result ==>
;                                   (forall (s: HoareSTFree.st).
;                                       f_p s /\
;                                       (forall (x: a) (s1: HoareSTFree.st). f_q s x s1 ==> g_p x s1) ==>
;                                       b s /\
;                                       (forall (x: b) (s1: HoareSTFree.st).
;                                           b s x s1 ==>
;                                           b x s1 /\
;                                           (forall (x: b) (s1: HoareSTFree.st).
;                                               b x s1 x s1 ==> g_p x s1))) /\
;                                   (forall (s0: HoareSTFree.st) (x: b) (s1: HoareSTFree.st).
;                                       f_p s0 /\
;                                       (forall (x: a) (s1: HoareSTFree.st). f_q s0 x s1 ==> g_p x s1) ==>
;                                       (exists (x: b) (s1: HoareSTFree.st).
;                                           b s0 x s1 /\
;                                           (exists (x: b) (s1: HoareSTFree.st).
;                                               b x s1 x s1 /\ g_q x s1 x s1)) ==>
;                                       (exists (x: a) (s1: HoareSTFree.st).
;                                           f_q s0 x s1 /\ g_q x s1 x s1)) /\
;                                   (forall (any_result: Prims.unit).
;                                       (forall (x: b) (s0: HoareSTFree.st).
;                                           (*  - Could not prove post-condition
; *)
;                                           b x s0 ==>
;                                           (forall (x: b).
;                                               (*  - Could not prove post-condition
; *)
;                                               forall (s1: HoareSTFree.st).
;                                                 b x s0 x s1 ==> Prims.has_type x a)) /\
;                                       (forall (any_result:
;                                           (_: b -> HoareSTFree.mpre HoareSTFree.st)).
;                                           (fun x s0 ->
;                                               b x s0 /\
;                                               (forall (x: b) (s1: HoareSTFree.st).
;                                                   b x s0 x s1 ==> g_p x s1)) ==
;                                           any_result ==>
;                                           (forall (x: b)
;                                               (s0: HoareSTFree.st)
;                                               (y: b)
;                                               (s2: HoareSTFree.st).
;                                               (*  - Could not prove post-condition
; *)
;                                               forall (x: b).
;                                                 (*  - Could not prove post-condition
; *)
;                                                 forall (s1: HoareSTFree.st).
;                                                   b x s0 x s1 ==> Prims.has_type x a))))))))) /\
;           (~(Act? any_result) ==>
;             (forall (b: Type)
;                 (b: HoareSTFree.mpre HoareSTFree.st)
;                 (b: HoareSTFree.mpost HoareSTFree.st b)
;                 (b: HoareSTFree.mpre HoareSTFree.st)
;                 (b: HoareSTFree.mpost HoareSTFree.st b)
;                 (b:
;                 Prims.squash ((forall (s: HoareSTFree.st). b s ==> b s) /\
;                     (forall (s0: HoareSTFree.st) (x: b) (s1: HoareSTFree.st).
;                         b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                 (b: HoareSTFree.m HoareSTFree.st b b b).
;                 any_result == HoareSTFree.Weaken b ==>
;                 (forall (_: b). Prims.has_type _ a) /\
;                 (forall (any_result: (_: a -> HoareSTFree.pre)).
;                     g_p == any_result ==>
;                     (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                         (fun s0 ->
;                             b s0 /\ (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1)) ==
;                         any_result ==>
;                         (forall (_: b). Prims.has_type _ a))) /\
;                 (forall (_: b). Prims.has_type _ a) /\
;                 (forall (any_result: (_: a -> HoareSTFree.pre)).
;                     g_p == any_result ==>
;                     (forall (_: b). Prims.has_type _ a) /\
;                     (forall (any_result: (_: a -> HoareSTFree.post b)).
;                         g_q == any_result ==>
;                         (forall (_: b). Prims.has_type _ a) /\
;                         (forall (any_result: (x: a -> HoareSTFree.repr b (g_p x) (g_q x))).
;                             g == any_result ==>
;                             (forall (any_result:
;                                 HoareSTFree.repr b
;                                   (fun s0 ->
;                                       b s0 /\
;                                       (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1))
;                                   (fun s0 y s2 ->
;                                       exists (x: b) (s1: HoareSTFree.st). b s0 x s1 /\ g_q x s1 y s2
;                                   ))
;                                 (any_result:
;                                 HoareSTFree.m HoareSTFree.st
;                                   b
;                                   (fun s0 ->
;                                       b s0 /\
;                                       (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1))
;                                   (fun s0 y s2 ->
;                                       exists (x: b) (s1: HoareSTFree.st). b s0 x s1 /\ g_q x s1 y s2
;                                   )).
;                                 (forall (_: b). Prims.has_type _ a) /\
;                                 (forall (any_result: (_: a -> HoareSTFree.pre)).
;                                     g_p == any_result ==>
;                                     (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                                         (fun s0 ->
;                                             b s0 /\
;                                             (forall (x: b) (s1: HoareSTFree.st).
;                                                 b s0 x s1 ==> g_p x s1)) ==
;                                         any_result ==>
;                                         (forall (_: b). Prims.has_type _ a) /\
;                                         (forall (any_result: (_: a -> HoareSTFree.post b)).
;                                             g_q == any_result ==>
;                                             (forall (any_result: HoareSTFree.mpost HoareSTFree.st b)
;                                               .
;                                                 (fun s0 y s2 ->
;                                                     exists (x: b) (s1: HoareSTFree.st).
;                                                       b s0 x s1 /\ g_q x s1 y s2) ==
;                                                 any_result ==>
;                                                 (forall (s: HoareSTFree.st).
;                                                     f_p s /\
;                                                     (forall (x: a) (s1: HoareSTFree.st).
;                                                         f_q s x s1 ==> g_p x s1) ==>
;                                                     b s /\
;                                                     (forall (x: b) (s1: HoareSTFree.st).
;                                                         b s x s1 ==> g_p x s1)) /\
;                                                 (forall (s0: HoareSTFree.st)
;                                                     (x: b)
;                                                     (s1: HoareSTFree.st).
;                                                     f_p s0 /\
;                                                     (forall (x: a) (s1: HoareSTFree.st).
;                                                         f_q s0 x s1 ==> g_p x s1) ==>
;                                                     (exists (x: b) (s1: HoareSTFree.st).
;                                                         b s0 x s1 /\ g_q x s1 x s1) ==>
;                                                     (exists (x: a) (s1: HoareSTFree.st).
;                                                         f_q s0 x s1 /\ g_q x s1 x s1))))))))))) /\
;             (~(Weaken? any_result) ==>
;               (forall (b: Type)
;                   (b: Prims.pure_pre)
;                   (b: HoareSTFree.mpre HoareSTFree.st)
;                   (b: HoareSTFree.mpost HoareSTFree.st b)
;                   (b:
;                   (_: Prims.squash b -> FStar.Pervasives.Dv (HoareSTFree.m HoareSTFree.st b b b))).
;                   any_result == HoareSTFree.Strengthen b ==>
;                   (forall (_: Prims.squash b).
;                       (forall (s0: HoareSTFree.st).
;                           (*  - Could not prove post-condition
; *)
;                           b s0 ==>
;                           (forall (x: b).
;                               (*  - Could not prove post-condition
; *)
;                               forall (s1: HoareSTFree.st). b s0 x s1 ==> Prims.has_type x a)) /\
;                       (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                           (fun s0 ->
;                               b s0 /\ (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1)) ==
;                           any_result ==>
;                           (forall (s0: HoareSTFree.st) (y: b) (s2: HoareSTFree.st).
;                               (*  - Could not prove post-condition
; *)
;                               forall (x: b).
;                                 (*  - Could not prove post-condition
; *)
;                                 forall (s1: HoareSTFree.st). b s0 x s1 ==> Prims.has_type x a))) /\
;                   (forall (_: Prims.squash b).
;                       (*  - Could not prove post-condition
; *)
;                       forall (p:
;                         Prims.pure_post (HoareSTFree.m HoareSTFree.st
;                               b
;                               (fun s0 ->
;                                   b s0 /\
;                                   (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1))
;                               (fun s0 y s2 ->
;                                   exists (x: b) (s1: HoareSTFree.st). b s0 x s1 /\ g_q x s1 y s2))).
;                         (forall (any_result:
;                             HoareSTFree.m HoareSTFree.st
;                               b
;                               (fun s0 ->
;                                   b s0 /\
;                                   (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1))
;                               (fun s0 y s2 ->
;                                   exists (x: b) (s1: HoareSTFree.st). b s0 x s1 /\ g_q x s1 y s2)).
;                             p any_result) ==>
;                         (forall (_: b). Prims.has_type _ a) /\
;                         (forall (any_result: (_: a -> HoareSTFree.pre)).
;                             g_p == any_result ==>
;                             (forall (_: b). Prims.has_type _ a) /\
;                             (forall (any_result: (_: a -> HoareSTFree.post b)).
;                                 g_q == any_result ==>
;                                 (forall (_: Prims.unit).
;                                     (*  - Could not prove post-condition
; *)
;                                     forall (p: Prims.pure_post (HoareSTFree.m HoareSTFree.st b b b))
;                                     .
;                                       (forall (any_result: HoareSTFree.m HoareSTFree.st b b b).
;                                           p any_result) ==>
;                                       Prims.auto_squash b) /\
;                                 (forall (any_result: HoareSTFree.repr b b b).
;                                     (fun _ -> b ()) == any_result ==>
;                                     (forall (_: b). Prims.has_type _ a))))) /\
;                   (forall (any_result:
;                       (_: Prims.squash b
;                           -> FStar.Pervasives.Dv
;                             (HoareSTFree.m HoareSTFree.st
;                                 b
;                                 (fun s0 ->
;                                     b s0 /\
;                                     (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1))
;                                 (fun s0 y s2 ->
;                                     exists (x: b) (s1: HoareSTFree.st). b s0 x s1 /\ g_q x s1 y s2))
;                       )).
;                       (forall (s: HoareSTFree.st).
;                           (*  - Could not prove post-condition
; *)
;                           b s ==>
;                           (forall (x: b).
;                               (*  - Could not prove post-condition
; *)
;                               forall (s1: HoareSTFree.st). b s x s1 ==> Prims.has_type x a)) /\
;                       (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                           (fun s ->
;                               b s /\ (forall (x: b) (s1: HoareSTFree.st). b s x s1 ==> g_p x s1) /\
;                               b) ==
;                           any_result ==>
;                           (forall (s0: HoareSTFree.st) (y: b) (s2: HoareSTFree.st).
;                               (*  - Could not prove post-condition
; *)
;                               forall (x: b).
;                                 (*  - Could not prove post-condition
; *)
;                                 forall (s1: HoareSTFree.st). b s0 x s1 ==> Prims.has_type x a)) /\
;                       (forall (s0: HoareSTFree.st).
;                           (*  - Could not prove post-condition
; *)
;                           b s0 ==>
;                           (forall (x: b).
;                               (*  - Could not prove post-condition
; *)
;                               forall (s1: HoareSTFree.st). b s0 x s1 ==> Prims.has_type x a)) /\
;                       (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                           (fun s0 ->
;                               b s0 /\ (forall (x: b) (s1: HoareSTFree.st). b s0 x s1 ==> g_p x s1)) ==
;                           any_result ==>
;                           (forall (s0: HoareSTFree.st) (y: b) (s2: HoareSTFree.st).
;                               (*  - Could not prove post-condition
; *)
;                               forall (x: b).
;                                 (*  - Could not prove post-condition
; *)
;                                 forall (s1: HoareSTFree.st). b s0 x s1 ==> Prims.has_type x a) /\
;                           (forall (any_result: HoareSTFree.mpost HoareSTFree.st b).
;                               (fun s0 y s2 ->
;                                   exists (x: b) (s1: HoareSTFree.st). b s0 x s1 /\ g_q x s1 y s2) ==
;                               any_result ==>
;                               (forall (any_result:
;                                   HoareSTFree.m HoareSTFree.st
;                                     b
;                                     (fun s ->
;                                         b s /\
;                                         (forall (x: b) (s1: HoareSTFree.st). b s x s1 ==> g_p x s1) /\
;                                         b)
;                                     (fun s0 y s2 ->
;                                         exists (x: b) (s1: HoareSTFree.st).
;                                           b s0 x s1 /\ g_q x s1 y s2)).
;                                   HoareSTFree.Strengthen any_result == any_result ==>
;                                   (forall (s: HoareSTFree.st).
;                                       (*  - Could not prove post-condition
; *)
;                                       b s ==>
;                                       (forall (x: b).
;                                           (*  - Could not prove post-condition
; *)
;                                           forall (s1: HoareSTFree.st).
;                                             b s x s1 ==> Prims.has_type x a)) /\
;                                   (forall (any_result: HoareSTFree.mpre HoareSTFree.st).
;                                       (fun s ->
;                                           b s /\
;                                           (forall (x: b) (s1: HoareSTFree.st). b s x s1 ==> g_p x s1
;                                           ) /\ b) ==
;                                       any_result ==>
;                                       (forall (s0: HoareSTFree.st) (y: b) (s2: HoareSTFree.st).
;                                           (*  - Could not prove post-condition
; *)
;                                           forall (x: b).
;                                             (*  - Could not prove post-condition
; *)
;                                             forall (s1: HoareSTFree.st).
;                                               b s0 x s1 ==> Prims.has_type x a) /\
;                                       (forall (any_result: HoareSTFree.mpost HoareSTFree.st b).
;                                           (fun s0 y s2 ->
;                                               exists (x: b) (s1: HoareSTFree.st).
;                                                 b s0 x s1 /\ g_q x s1 y s2) ==
;                                           any_result ==>
;                                           (forall (s: HoareSTFree.st).
;                                               f_p s /\
;                                               (forall (x: a) (s1: HoareSTFree.st).
;                                                   f_q s x s1 ==> g_p x s1) ==>
;                                               b s /\
;                                               (forall (x: b) (s1: HoareSTFree.st).
;                                                   b s x s1 ==> g_p x s1) /\ b) /\
;                                           (forall (s0: HoareSTFree.st) (x: b) (s1: HoareSTFree.st).
;                                               f_p s0 /\
;                                               (forall (x: a) (s1: HoareSTFree.st).
;                                                   f_q s0 x s1 ==> g_p x s1) ==>
;                                               (exists (x: b) (s1: HoareSTFree.st).
;                                                   b s0 x s1 /\ g_q x s1 x s1) ==>
;                                               (exists (x: a) (s1: HoareSTFree.st).
;                                                   f_q s0 x s1 /\ g_q x s1 x s1)))))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec bind`

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
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
HoareSTFree.pre)
(HasType @x3
(HoareSTFree.post @x0))
(HasType @x4
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))
(HasType @x5
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x0))
(HasType @x6
(HoareSTFree.repr @x0
@x2
@x3))
(HasType @x7
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x5
@x4
@x1
@x0))
(HasType @x8
Prims.unit))
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x2
@x0
@x3
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x0
@x3
@x5
@x1))))

;; def=Prims.fst(451,66-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(forall ((@x10 Term))
 (! (implies (or label_1
(HasType @x10
(HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x2
@x0
@x3
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x0
@x3
@x5
@x1))))

;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(ApplyTT @x9
@x10)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(ApplyTT @x9
@x10)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(HoareSTFree.m HoareSTFree.st
@x0
@x2
@x3))
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x2
@x0
@x3
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x0
@x3
@x5
@x1))))

;; def=Prims.fst(402,27-402,88); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x12 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=Prims.fst(402,84-402,87); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x11
@x12)
)

 

:pattern ((ApplyTT @x11
@x12))
:qid @query.5))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and (implies 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(and 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret HoareSTFree.st
@x0
@x2
@x3
@x10))
)


;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act HoareSTFree.st
@x0
@x2
@x3
@x10))
)


;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken HoareSTFree.st
@x0
@x2
@x3
@x10))
)


;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen HoareSTFree.st
@x0
@x2
@x3
@x10))
)
)

label_2)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(HoareSTFree.mpost HoareSTFree.st
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
@x12)

;; def=HoareSTFree.fst(145,8-147,11); use=HoareSTFree.fst(146,10-147,11)
(= @x10
(HoareSTFree.Ret HoareSTFree.st
@x12
@x13
@x14))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(147,10-147,11); use=HoareSTFree.fst(147,25-147,26)
(or label_3
(HasType @x14
@x0))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(147,15-147,30)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(147,15-147,30)
(= @x14
@x15)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(147,15-147,30)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
HoareSTFree.pre)

;; def=HoareSTFree.fst(90,37-142,46); use=HoareSTFree.fst(147,15-147,30)
(= (ApplyTT @x4
@x14)
@x16)
)

;; def=HoareSTFree.fst(147,10-147,11); use=HoareSTFree.fst(147,25-147,26)
(or label_4
(HasType @x14
@x0))
)
 
;;no pats
:qid @query.10))
)
 
;;no pats
:qid @query.9))


;; def=HoareSTFree.fst(147,10-147,11); use=HoareSTFree.fst(147,25-147,26)
(or label_5
(HasType @x14
@x0))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
@x12)

;; def=HoareSTFree.fst(142,25-147,11); use=HoareSTFree.fst(144,12-157,14)
(= @x14
@x15)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(HoareSTFree.repr @x1
(ApplyTT @x4
@x14)
(ApplyTT @x5
@x14)))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(HoareSTFree.m HoareSTFree.st
@x1
(ApplyTT @x4
@x14)
(ApplyTT @x5
@x14)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(147,10-147,11); use=HoareSTFree.fst(147,25-147,26)
(or label_6
(HasType @x14
@x0))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(= @x14
@x18)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
HoareSTFree.pre)

;; def=HoareSTFree.fst(102,16-142,46); use=HoareSTFree.fst(144,12-157,14)
(= (ApplyTT @x4
@x14)
@x19)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(147,10-147,11); use=HoareSTFree.fst(147,25-147,26)
(or label_7
(HasType @x14
@x0))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(= @x14
@x20)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.post @x1))

;; def=HoareSTFree.fst(102,31-142,54); use=HoareSTFree.fst(144,12-157,14)
(= (ApplyTT @x5
@x14)
@x21)
)

;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x22)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x23 Term) (@x24 Term))
 (! (implies (and (HasType @x23
@x0)
(HasType @x24
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x22)
@x23)
@x24)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x23)
@x24)
)
)
 
;;no pats
:qid @query.19))
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(147,15-147,30)
(or label_8

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x14)
@x22)
)
)
)
 
;;no pats
:qid @query.18))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term) (@x23 Term) (@x24 Term))
 (! (implies (and (HasType @x22
HoareSTFree.st)
(HasType @x23
@x1)
(HasType @x24
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x22)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x25 Term) (@x26 Term))
 (! (implies (and (HasType @x25
@x0)
(HasType @x26
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x22)
@x25)
@x26)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x25)
@x26)
)
)
 
;;no pats
:qid @query.21))


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x14)
@x22)
@x23)
@x24)
)
)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(147,15-147,30)
(or label_9

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x25 Term) (@x26 Term))
 (! (and (HasType @x25
@x0)
(HasType @x26
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x22)
@x25)
@x26)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x25)
@x26)
@x23)
@x24)
)
)
 
;;no pats
:qid @query.22))
)
)
 
;;no pats
:qid @query.20))
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
 
;;no pats
:qid @query.11))
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

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(144,12-157,14)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret HoareSTFree.st
@x0
@x2
@x3
@x10))
)


;; def=Prims.fst(389,2-389,39); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(HoareSTFree.mpre HoareSTFree.st))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(HoareSTFree.mpost HoareSTFree.st
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(Tm_arrow_f828b0952c3f6fffdb5a6856315bf261 @x14
@x12
@x13))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x16 Term))
 (! (implies (HasType @x16
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x16
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Non_total_Tm_arrow_f2a78ebd0461a40655b25c92422e41a2 @x12
@x16
@x17
@x18))

;; def=HoareSTFree.fst(145,8-148,40); use=HoareSTFree.fst(146,10-148,40)
(= @x10
(HoareSTFree.Act HoareSTFree.st
@x12
@x13
@x14
@x15
@x16
@x17
@x18
@x19))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x12)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(148,43-150,50)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(148,43-150,50)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(148,43-150,50)
(ApplyTT (ApplyTT @x17
@x20)
@x21)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x16)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(148,43-150,50)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(148,43-150,50)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x20)
@x21)
@x22)
@x23)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_10
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.34))
)
 
;;no pats
:qid @query.33))
)
 
;;no pats
:qid @query.32))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(61,12-90,38); use=HoareSTFree.fst(148,43-150,50)
(= (Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x17
@x20
@x16
@x18
@x4)
@x21)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x22 Term) (@x23 Term) (@x24 Term))
 (! (implies (and (HasType @x22
HoareSTFree.st)
(HasType @x23
@x1)
(HasType @x24
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x25 Term))
 (! (implies (HasType @x25
@x16)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(148,43-150,50)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(148,43-150,50)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(148,43-150,50)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x20)
@x22)
@x25)
@x26)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_11
(HasType @x25
@x0))
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
 
;;no pats
:qid @query.35))
)
)
 
;;no pats
:qid @query.31))


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x17
@x20
@x16
@x18
@x4)
(Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 @x16
@x18
@x20
@x5
@x1))))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term))
 (! (implies (or label_12
(HasType @x22
(HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_908ce062ebc248f9bb83a7c2d8c25049 @x17
@x20
@x16
@x18
@x4)
(Tm_abs_5a91ce18ec5595ddbf0f327ee1f1a8c2 @x16
@x18
@x20
@x5
@x1))))

;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x21
@x22)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x21
@x22)
)
)
:qid @query.41))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(149,28-149,66)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x16)

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(142,40-142,43)
(or label_13
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.42))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(149,28-149,66)
(= @x4
@x22)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(149,28-149,66)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x23 Term))
 (! (implies (HasType @x23
@x16)

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(142,48-142,51)
(or label_14
(HasType @x23
@x0))
)
 
;;no pats
:qid @query.44))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(149,28-149,66)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x0))

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(149,28-149,66)
(= @x5
@x23)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(149,61-149,62)
(forall ((@x24 Term))
 (! (implies (HasType @x24
@x16)

;; def=HoareSTFree.fst(142,22-142,23); use=HoareSTFree.fst(149,61-149,62)
(or label_15
(HasType @x24
@x0))
)
 
;;no pats
:qid @query.46))
)
 
;;no pats
:qid @query.45))
)
)
 
;;no pats
:qid @query.43))
)
)
 
;;no pats
:qid @query.40))
)
 
;;no pats
:qid @query.39))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(Non_total_Tm_arrow_45170e049d33a0cb624c6c380f9e7d61 @x12
@x1
@x17
@x16
@x18
@x4
@x5))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term) (@x22 Term))
 (! (implies (and (HasType @x21
@x12)
(HasType @x22
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT @x17
@x21)
@x22)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x23 Term))
 (! (implies (HasType @x23
@x16)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x24 Term))
 (! (implies (and (HasType @x24
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x21)
@x22)
@x23)
@x24)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_16
(HasType @x23
@x0))
)
 
;;no pats
:qid @query.50))
)
 
;;no pats
:qid @query.49))
)
 
;;no pats
:qid @query.48))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x12))

;; def=HoareSTFree.fst(60,63-61,70); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a @x17
@x16
@x18
@x4
@x12)
@x21)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(100,11-102,18); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_62d1e4ef39ff25bb46883b09fca05b2e @x13
@x12
@x14
@x17
@x16
@x18
@x4)
@x22)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x23 Term) (@x24 Term) (@x25 Term) (@x26 Term))
 (! (implies (and (HasType @x23
@x12)
(HasType @x24
HoareSTFree.st)
(HasType @x25
@x1)
(HasType @x26
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x27 Term))
 (! (implies (HasType @x27
@x16)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x23)
@x24)
@x27)
@x28)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_17
(HasType @x27
@x0))
)
 
;;no pats
:qid @query.55))
)
 
;;no pats
:qid @query.54))
)
 
;;no pats
:qid @query.53))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(Tm_arrow_06aa3e9da5429e8dd9b60a3f91b34f8f @x1
@x12))

;; def=HoareSTFree.fst(64,59-65,67); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_97b18f2b3d87c558d0e499685af101f9 @x16
@x18
@x5
@x1
@x12)
@x23)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x24 Term))
 (! (implies (and (HasType @x24
(HoareSTFree.mpost HoareSTFree.st
@x1))

;; def=HoareSTFree.fst(100,31-102,33); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_2db7058256d91bf781f7c745a1226a06 @x12
@x14
@x16
@x18
@x5
@x1)
@x24)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x25)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term) (@x27 Term))
 (! (implies (and (HasType @x26
@x0)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x25)
@x26)
@x27)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x26)
@x27)
)
)
 
;;no pats
:qid @query.59))
)

;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,6-150,50)
(or label_18

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x13
@x25)
)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term) (@x27 Term))
 (! (implies (and (HasType @x26
@x12)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x14
@x25)
@x26)
@x27)
)
)

;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(150,14-150,17)
(and 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(or label_19

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT @x17
@x26)
@x27)
)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(150,14-150,17)
(forall ((@x28 Term) (@x29 Term))
 (! (implies (and (HasType @x28
@x16)
(HasType @x29
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x26)
@x27)
@x28)
@x29)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(150,14-150,17)
(or label_20

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT @x4
@x28)
@x29)
)
)
)
 
;;no pats
:qid @query.61))
)
)
 
;;no pats
:qid @query.60))
)
)
 
;;no pats
:qid @query.58))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x25 Term) (@x26 Term) (@x27 Term))
 (! (implies (and (HasType @x25
HoareSTFree.st)
(HasType @x26
@x1)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x25)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x28 Term) (@x29 Term))
 (! (implies (and (HasType @x28
@x0)
(HasType @x29
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x25)
@x28)
@x29)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x28)
@x29)
)
)
 
;;no pats
:qid @query.63))


;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x28 Term) (@x29 Term))
 (! (and (HasType @x28
@x12)
(HasType @x29
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x14
@x25)
@x28)
@x29)
)


;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(150,14-150,17)
(exists ((@x30 Term) (@x31 Term))
 (! (and (HasType @x30
@x16)
(HasType @x31
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x28)
@x29)
@x30)
@x31)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(150,14-150,17)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(150,14-150,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x30)
@x31)
@x26)
@x27)
)
)
 
;;no pats
:qid @query.65))
)
 
;;no pats
:qid @query.64))
)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(150,6-150,50)
(or label_21

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x28 Term) (@x29 Term))
 (! (and (HasType @x28
@x0)
(HasType @x29
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x25)
@x28)
@x29)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x28)
@x29)
@x26)
@x27)
)
)
 
;;no pats
:qid @query.66))
)
)
 
;;no pats
:qid @query.62))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x25 Term))
 (! (implies (HasType @x25
Prims.unit)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term) (@x27 Term))
 (! (implies (and (HasType @x26
@x12)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,47-150,49)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(150,47-150,49)
(ApplyTT (ApplyTT @x17
@x26)
@x27)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x28 Term))
 (! (implies (HasType @x28
@x16)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x29 Term))
 (! (implies (and (HasType @x29
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,47-150,49)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(150,47-150,49)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x26)
@x27)
@x28)
@x29)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_22
(HasType @x28
@x0))
)
 
;;no pats
:qid @query.70))
)
 
;;no pats
:qid @query.69))
)
 
;;no pats
:qid @query.68))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
(Tm_arrow_ef95ccd754cb3ed88f0d4e90eeee2956 @x12))

;; def=HoareSTFree.fst(61,12-98,19); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_f5a2eb02dba6f682ebbc544c4d2dd63a @x17
@x16
@x18
@x4
@x12)
@x26)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x27 Term) (@x28 Term) (@x29 Term) (@x30 Term))
 (! (implies (and (HasType @x27
@x12)
(HasType @x28
HoareSTFree.st)
(HasType @x29
@x1)
(HasType @x30
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x31 Term))
 (! (implies (HasType @x31
@x16)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(150,47-150,49)
(forall ((@x32 Term))
 (! (implies (and (HasType @x32
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,47-150,49)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(150,47-150,49)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x18
@x27)
@x28)
@x31)
@x32)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_23
(HasType @x31
@x0))
)
 
;;no pats
:qid @query.74))
)
 
;;no pats
:qid @query.73))
)
 
;;no pats
:qid @query.72))
)
 
;;no pats
:qid @query.71))
)
)
 
;;no pats
:qid @query.67))
)
)
 
;;no pats
:qid @query.57))
)
 
;;no pats
:qid @query.56))
)
)
 
;;no pats
:qid @query.52))
)
 
;;no pats
:qid @query.51))
)
)
 
;;no pats
:qid @query.47))
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

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(144,12-157,14)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act HoareSTFree.st
@x0
@x2
@x3
@x10))
)


;; def=Prims.fst(389,2-389,39); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(HoareSTFree.mpre HoareSTFree.st))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(HoareSTFree.mpost HoareSTFree.st
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(HoareSTFree.mpre HoareSTFree.st))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(HoareSTFree.mpost HoareSTFree.st
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(Tm_refine_7f4e0b2deb0a804989a3475d87343f88 @x15
@x13
@x12
@x14
@x16))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(HoareSTFree.m HoareSTFree.st
@x12
@x13
@x14))

;; def=HoareSTFree.fst(145,8-151,14); use=HoareSTFree.fst(146,10-151,14)
(= @x10
(HoareSTFree.Weaken HoareSTFree.st
@x12
@x13
@x14
@x15
@x16
@x17
@x18))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(151,18-151,63)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x12)

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(142,40-142,43)
(or label_24
(HasType @x19
@x0))
)
 
;;no pats
:qid @query.82))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(151,18-151,63)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))

;; def=HoareSTFree.fst(60,63-141,6); use=HoareSTFree.fst(151,18-151,63)
(= @x4
@x19)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(151,18-151,63)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(90,37-143,30); use=HoareSTFree.fst(151,18-151,63)
(= (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x13
@x12
@x14
@x4)
@x20)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(151,18-151,63)
(forall ((@x21 Term))
 (! (implies (HasType @x21
@x12)

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(142,48-142,51)
(or label_25
(HasType @x21
@x0))
)
 
;;no pats
:qid @query.85))
)
 
;;no pats
:qid @query.84))
)
 
;;no pats
:qid @query.83))


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x12)

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(142,40-142,43)
(or label_26
(HasType @x19
@x0))
)
 
;;no pats
:qid @query.86))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(144,12-157,14)
(= @x4
@x19)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x12)

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(142,48-142,51)
(or label_27
(HasType @x20
@x0))
)
 
;;no pats
:qid @query.88))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x0))

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(144,12-157,14)
(= @x5
@x20)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(151,57-151,58)
(forall ((@x21 Term))
 (! (implies (HasType @x21
@x12)

;; def=HoareSTFree.fst(142,22-142,23); use=HoareSTFree.fst(151,57-151,58)
(or label_28
(HasType @x21
@x0))
)
 
;;no pats
:qid @query.90))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 @x5
@x4
@x1
@x0))

;; def=HoareSTFree.fst(142,22-142,23); use=HoareSTFree.fst(144,12-157,14)
(= @x7
@x21)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term))
 (! (implies (HasType @x22
(HoareSTFree.repr @x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x13
@x12
@x14
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x14
@x5
@x1)))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x23 Term))
 (! (implies (HasType @x23
(HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x13
@x12
@x14
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x14
@x5
@x1)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x24 Term))
 (! (implies (HasType @x24
@x12)

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(142,40-142,43)
(or label_29
(HasType @x24
@x0))
)
 
;;no pats
:qid @query.94))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x24 Term))
 (! (implies (and (HasType @x24
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))

;; def=HoareSTFree.fst(60,63-141,6); use=HoareSTFree.fst(144,12-157,14)
(= @x4
@x24)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(102,16-143,30); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x13
@x12
@x14
@x4)
@x25)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term))
 (! (implies (HasType @x26
@x12)

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(142,48-142,51)
(or label_30
(HasType @x26
@x0))
)
 
;;no pats
:qid @query.97))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x0))

;; def=HoareSTFree.fst(64,59-141,21); use=HoareSTFree.fst(144,12-157,14)
(= @x5
@x26)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(HoareSTFree.mpost HoareSTFree.st
@x1))

;; def=HoareSTFree.fst(102,31-143,46); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x14
@x5
@x1)
@x27)
)

;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x28)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x29 Term) (@x30 Term))
 (! (implies (and (HasType @x29
@x0)
(HasType @x30
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x28)
@x29)
@x30)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x29)
@x30)
)
)
 
;;no pats
:qid @query.101))
)

;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(151,18-151,63)
(or label_31

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x13
@x28)
)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x29 Term) (@x30 Term))
 (! (implies (and (HasType @x29
@x12)
(HasType @x30
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x14
@x28)
@x29)
@x30)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(151,18-151,63)
(or label_32

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x29)
@x30)
)
)
)
 
;;no pats
:qid @query.102))
)
)
 
;;no pats
:qid @query.100))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x28 Term) (@x29 Term) (@x30 Term))
 (! (implies (and (HasType @x28
HoareSTFree.st)
(HasType @x29
@x1)
(HasType @x30
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x28)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x31 Term) (@x32 Term))
 (! (implies (and (HasType @x31
@x0)
(HasType @x32
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x28)
@x31)
@x32)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x31)
@x32)
)
)
 
;;no pats
:qid @query.104))


;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x31 Term) (@x32 Term))
 (! (and (HasType @x31
@x12)
(HasType @x32
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x14
@x28)
@x31)
@x32)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x31)
@x32)
@x29)
@x30)
)
)
 
;;no pats
:qid @query.105))
)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(151,18-151,63)
(or label_33

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x31 Term) (@x32 Term))
 (! (and (HasType @x31
@x0)
(HasType @x32
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x28)
@x31)
@x32)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x31)
@x32)
@x29)
@x30)
)
)
 
;;no pats
:qid @query.106))
)
)
 
;;no pats
:qid @query.103))
)
)
 
;;no pats
:qid @query.99))
)
 
;;no pats
:qid @query.98))
)
)
 
;;no pats
:qid @query.96))
)
 
;;no pats
:qid @query.95))
)
)
 
;;no pats
:qid @query.93))
)
 
;;no pats
:qid @query.92))
)
 
;;no pats
:qid @query.91))
)
)
 
;;no pats
:qid @query.89))
)
)
 
;;no pats
:qid @query.87))
)
)
 
;;no pats
:qid @query.81))
)
 
;;no pats
:qid @query.80))
)
 
;;no pats
:qid @query.79))
)
 
;;no pats
:qid @query.78))
)
 
;;no pats
:qid @query.77))
)
 
;;no pats
:qid @query.76))
)
 
;;no pats
:qid @query.75))

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(144,12-157,14)
(not 
;; def=HoareSTFree.fst(145,8-145,9); use=HoareSTFree.fst(146,10-146,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken HoareSTFree.st
@x0
@x2
@x3
@x10))
)


;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Prims.pure_pre)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(HoareSTFree.mpre HoareSTFree.st))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(HoareSTFree.mpost HoareSTFree.st
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Non_total_Tm_arrow_29b571d6c02b5285727767428fbeaeaa @x13
@x12
@x14
@x15))

;; def=HoareSTFree.fst(145,8-152,35); use=HoareSTFree.fst(146,10-152,35)
(= @x10
(HoareSTFree.Strengthen HoareSTFree.st
@x12
@x13
@x14
@x15
@x16))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(152,38-157,14)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(Prims.squash @x13))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(153,14-153,69)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(153,14-153,69)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(153,40-153,45)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(153,40-153,45)
(ApplyTT @x14
@x18)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(153,40-153,45)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(153,40-153,45)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(153,40-153,45)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(153,40-153,45)
(ApplyTT (ApplyTT (ApplyTT @x15
@x18)
@x19)
@x20)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_34
(HasType @x19
@x0))
)
 
;;no pats
:qid @query.115))
)
 
;;no pats
:qid @query.114))
)
 
;;no pats
:qid @query.113))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(153,14-153,69)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(61,12-90,38); use=HoareSTFree.fst(153,14-153,69)
(= (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x14
@x12
@x15
@x4)
@x18)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(153,14-153,69)
(forall ((@x19 Term) (@x20 Term) (@x21 Term))
 (! (implies (and (HasType @x19
HoareSTFree.st)
(HasType @x20
@x1)
(HasType @x21
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(153,56-153,61)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(153,56-153,61)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(153,56-153,61)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(153,56-153,61)
(ApplyTT (ApplyTT (ApplyTT @x15
@x19)
@x22)
@x23)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_35
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.119))
)
 
;;no pats
:qid @query.118))
)
 
;;no pats
:qid @query.117))
)
 
;;no pats
:qid @query.116))
)
)
 
;;no pats
:qid @query.112))


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(Prims.squash @x13))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x14
@x12
@x15
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x15
@x5
@x1))))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term))
 (! (implies (or label_36
(HasType @x19
(HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x14
@x12
@x15
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x15
@x5
@x1))))

;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x18
@x19)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x18
@x19)
)
)
:qid @query.122))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(154,17-154,56)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x12)

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(142,40-142,43)
(or label_37
(HasType @x19
@x0))
)
 
;;no pats
:qid @query.123))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Tm_arrow_1b3c097b258e74865e83e68006f39cff @x0))

;; def=HoareSTFree.fst(141,3-141,6); use=HoareSTFree.fst(154,17-154,56)
(= @x4
@x19)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(154,17-154,56)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x12)

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(142,48-142,51)
(or label_38
(HasType @x20
@x0))
)
 
;;no pats
:qid @query.125))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(Tm_arrow_b0b24a92715b42bf51a0a460324dd2da @x1
@x0))

;; def=HoareSTFree.fst(141,18-141,21); use=HoareSTFree.fst(154,17-154,56)
(= @x5
@x20)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(154,17-154,56)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x21 Term))
 (! (implies (HasType @x21
Prims.unit)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x12
@x14
@x15)))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x23 Term))
 (! (implies (or label_39
(HasType @x23
(HoareSTFree.m HoareSTFree.st
@x12
@x14
@x15)))

;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(154,17-154,56)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(154,17-154,56)
(ApplyTT @x22
@x23)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(154,17-154,56)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(154,17-154,56)
(ApplyTT @x22
@x23)
)
)
:qid @query.129))
)

;; def=Prims.fst(413,107-413,108); use=HoareSTFree.fst(154,47-154,49)
(or label_40

;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x13
)
)
)
 
;;no pats
:qid @query.128))
)
 
;;no pats
:qid @query.127))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(154,17-154,56)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.repr @x12
@x14
@x15))

;; def=HoareSTFree.fst(142,3-154,49); use=HoareSTFree.fst(154,17-154,56)
(= (Tm_abs_HoareSTFree_1120 @x16
@x12
@x14
@x15)
@x21)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,51-154,52)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x12)

;; def=HoareSTFree.fst(142,22-142,23); use=HoareSTFree.fst(154,51-154,52)
(or label_41
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.131))
)
 
;;no pats
:qid @query.130))
)
)
 
;;no pats
:qid @query.126))
)
)
 
;;no pats
:qid @query.124))
)
)
 
;;no pats
:qid @query.121))
)
 
;;no pats
:qid @query.120))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(Non_total_Tm_arrow_53c85cb4ddaade5e664770c711baf9b4 @x13
@x1
@x14
@x12
@x15
@x4
@x5))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,59-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(155,22-155,36)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(155,22-155,36)
(ApplyTT @x14
@x18)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(155,22-155,36)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(155,22-155,36)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(155,22-155,36)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(155,22-155,36)
(ApplyTT (ApplyTT (ApplyTT @x15
@x18)
@x19)
@x20)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_42
(HasType @x19
@x0))
)
 
;;no pats
:qid @query.135))
)
 
;;no pats
:qid @query.134))
)
 
;;no pats
:qid @query.133))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(154,59-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(80,11-90,38); use=HoareSTFree.fst(154,59-157,14)
(= (Tm_abs_befbe04984735da4682cb803d0f41874 @x14
@x12
@x15
@x4
@x13)
@x18)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(154,59-157,14)
(forall ((@x19 Term) (@x20 Term) (@x21 Term))
 (! (implies (and (HasType @x19
HoareSTFree.st)
(HasType @x20
@x1)
(HasType @x21
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(155,59-155,64)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(155,59-155,64)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(155,59-155,64)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(155,59-155,64)
(ApplyTT (ApplyTT (ApplyTT @x15
@x19)
@x22)
@x23)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_43
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.139))
)
 
;;no pats
:qid @query.138))
)
 
;;no pats
:qid @query.137))
)
 
;;no pats
:qid @query.136))


;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(156,19-156,20)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(156,19-156,20)
(ApplyTT @x14
@x18)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(156,19-156,20)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(156,19-156,20)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(156,19-156,20)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(156,19-156,20)
(ApplyTT (ApplyTT (ApplyTT @x15
@x18)
@x19)
@x20)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_44
(HasType @x19
@x0))
)
 
;;no pats
:qid @query.142))
)
 
;;no pats
:qid @query.141))
)
 
;;no pats
:qid @query.140))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(61,12-107,34); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_c3350421947a68928bfb9221a6701ec3 @x14
@x12
@x15
@x4)
@x18)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term) (@x20 Term) (@x21 Term))
 (! (implies (and (HasType @x19
HoareSTFree.st)
(HasType @x20
@x1)
(HasType @x21
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(156,19-156,20)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(156,19-156,20)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(156,19-156,20)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(156,19-156,20)
(ApplyTT (ApplyTT (ApplyTT @x15
@x19)
@x22)
@x23)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_45
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.146))
)
 
;;no pats
:qid @query.145))
)
 
;;no pats
:qid @query.144))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(HoareSTFree.mpost HoareSTFree.st
@x1))

;; def=HoareSTFree.fst(65,17-107,48); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x15
@x5
@x1)
@x19)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(HoareSTFree.m HoareSTFree.st
@x1
(Tm_abs_befbe04984735da4682cb803d0f41874 @x14
@x12
@x15
@x4
@x13)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x15
@x5
@x1)))

;; def=HoareSTFree.fst(155,10-156,20); use=HoareSTFree.fst(155,10-156,20)
(= (HoareSTFree.Strengthen HoareSTFree.st
@x1
@x13
(Tm_abs_c3350421947a68928bfb9221a6701ec3 @x14
@x12
@x15
@x4)
(Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x15
@x5
@x1)
@x17)
@x20)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT @x14
@x21)
)
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(157,13-157,14)
(forall ((@x22 Term))
 (! (implies (HasType @x22
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(157,13-157,14)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT (ApplyTT (ApplyTT @x15
@x21)
@x22)
@x23)
)
)

;; def=HoareSTFree.fst(61,31-61,32); use=HoareSTFree.fst(61,65-61,66)
(or label_46
(HasType @x22
@x0))
)
 
;;no pats
:qid @query.151))
)
 
;;no pats
:qid @query.150))
)
 
;;no pats
:qid @query.149))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.mpre HoareSTFree.st))

;; def=HoareSTFree.fst(80,11-102,18); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_befbe04984735da4682cb803d0f41874 @x14
@x12
@x15
@x4
@x13)
@x21)
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term) (@x23 Term) (@x24 Term))
 (! (implies (and (HasType @x22
HoareSTFree.st)
(HasType @x23
@x1)
(HasType @x24
HoareSTFree.st))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(157,13-157,14)
(forall ((@x25 Term))
 (! (implies (HasType @x25
@x12)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(157,13-157,14)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT (ApplyTT (ApplyTT @x15
@x22)
@x25)
@x26)
)
)

;; def=HoareSTFree.fst(65,25-65,26); use=HoareSTFree.fst(65,58-65,59)
(or label_47
(HasType @x25
@x0))
)
 
;;no pats
:qid @query.155))
)
 
;;no pats
:qid @query.154))
)
 
;;no pats
:qid @query.153))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(HoareSTFree.mpost HoareSTFree.st
@x1))

;; def=HoareSTFree.fst(65,17-102,33); use=HoareSTFree.fst(144,12-157,14)
(= (Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd @x12
@x15
@x5
@x1)
@x22)
)

;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x23)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x24 Term) (@x25 Term))
 (! (implies (and (HasType @x24
@x0)
(HasType @x25
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x23)
@x24)
@x25)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x24)
@x25)
)
)
 
;;no pats
:qid @query.158))
)

;; def=HoareSTFree.fst(80,11-80,21); use=HoareSTFree.fst(157,13-157,14)
(and 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(157,13-157,14)
(or label_48

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT @x14
@x23)
)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(157,13-157,14)
(forall ((@x24 Term) (@x25 Term))
 (! (implies (and (HasType @x24
@x12)
(HasType @x25
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT (ApplyTT (ApplyTT @x15
@x23)
@x24)
@x25)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(157,13-157,14)
(or label_49

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT (ApplyTT @x4
@x24)
@x25)
)
)
)
 
;;no pats
:qid @query.159))


;; def=Prims.fst(413,107-413,108); use=HoareSTFree.fst(157,6-157,14)
(or label_50

;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x13
)
)
)
)
 
;;no pats
:qid @query.157))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x23 Term) (@x24 Term) (@x25 Term))
 (! (implies (and (HasType @x23
HoareSTFree.st)
(HasType @x24
@x1)
(HasType @x25
HoareSTFree.st)

;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,12-61,18); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT @x2
@x23)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(144,12-157,14)
(forall ((@x26 Term) (@x27 Term))
 (! (implies (and (HasType @x26
@x0)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,45-61,56); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x23)
@x26)
@x27)
)
)

;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(61,61-61,69); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT @x4
@x26)
@x27)
)
)
 
;;no pats
:qid @query.161))


;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(157,13-157,14)
(exists ((@x26 Term) (@x27 Term))
 (! (and (HasType @x26
@x12)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT (ApplyTT (ApplyTT @x15
@x23)
@x26)
@x27)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(157,13-157,14)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(157,13-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x26)
@x27)
@x24)
@x25)
)
)
 
;;no pats
:qid @query.162))
)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(157,6-157,14)
(or label_51

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(144,12-157,14)
(exists ((@x26 Term) (@x27 Term))
 (! (and (HasType @x26
@x0)
(HasType @x27
HoareSTFree.st)

;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,39-65,50); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x23)
@x26)
@x27)
)


;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(Valid 
;; def=HoareSTFree.fst(65,54-65,67); use=HoareSTFree.fst(144,12-157,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT @x5
@x26)
@x27)
@x24)
@x25)
)
)
 
;;no pats
:qid @query.163))
)
)
 
;;no pats
:qid @query.160))
)
)
 
;;no pats
:qid @query.156))
)
)
 
;;no pats
:qid @query.152))
)
)
 
;;no pats
:qid @query.148))
)
 
;;no pats
:qid @query.147))
)
)
 
;;no pats
:qid @query.143))
)
)
 
;;no pats
:qid @query.132))
)
)
 
;;no pats
:qid @query.111))
)
 
;;no pats
:qid @query.110))
)
 
;;no pats
:qid @query.109))
)
 
;;no pats
:qid @query.108))
)
 
;;no pats
:qid @query.107))
))
))
))
)
 
;;no pats
:qid @query.4)))
 
;;no pats
:qid @query.3))
)
 
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
; QUERY ID: (HoareSTFree.bind, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, data_elim_HoareSTFree.Ret, data_elim_HoareSTFree.Strengthen, data_elim_HoareSTFree.Weaken, disc_equation_HoareSTFree.Act, disc_equation_HoareSTFree.Ret, disc_equation_HoareSTFree.Strengthen, disc_equation_HoareSTFree.Weaken, equation_Prims.squash, fuel_guarded_inversion_HoareSTFree.m, interpretation_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845, interpretation_Tm_abs_90afe3918a255333b80d7a5b53bb8b98, interpretation_Tm_abs_b5422111c78eed395d177884f9f544e8, interpretation_Tm_abs_e801ea450b6a9c23d60355e4509dfc47, l_and-interp, l_quant_interp_60fb8ce20e2a4e5b12398df686d48be5, l_quant_interp_a804c31f2f9725925c30b9038cb69485, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_2de20c066034c13bf76e9c0b94f4806c, refinement_interpretation_Tm_refine_7f4e0b2deb0a804989a3475d87343f88, refinement_interpretation_Tm_refine_8fb012c82b6116d290a3f8671988cb15

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec bind


; <Start encoding let rec bind>

;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_1348 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun HoareSTFree.bind.fuel_instrumented (Fuel Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun HoareSTFree.bind.fuel_instrumented_token () Term)
(declare-fun HoareSTFree.bind (Term Term Term Term Term Term Term Term) Term)
(declare-fun HoareSTFree.bind@tok () Term)
;;;;;;;;;;;;;;;;_: a -> pre
(declare-fun Tm_arrow_1b3c097b258e74865e83e68006f39cff (Term) Term)
;;;;;;;;;;;;;;;;_: a -> post b
(declare-fun Tm_arrow_b0b24a92715b42bf51a0a460324dd2da (Term Term) Term)
;;;;;;;;;;;;;;;;x: a -> repr b (g_p x) (g_q x)
(declare-fun Tm_arrow_d7a32247c2f6172b4cbf5f1a0394d4c8 (Term Term Term Term) Term)

(declare-fun Tm_abs_bd3ae10796212be28120dcb84eeafdb0 (Term Term Term Term) Term)

(declare-fun Tm_abs_d2baf505915ad472b16d64a7c0b2dc29 (Term Term Term Term) Term)

(declare-fun Tm_abs_c3350421947a68928bfb9221a6701ec3 (Term Term Term Term) Term)

(declare-fun Tm_abs_36684492614df80cdf7c4f2aca232258 (Term Term Term Term Term Term) Term)

(declare-fun Tm_abs_a7bc78bc7dfdc3cf6e58ab5dbf9e0c7f (Term Term Term Term Term Term) Term)

(declare-fun Tm_abs_2a3baf7630b4fa5908f85d012d68a7cd (Term Term Term Term) Term)


















;;;;;;;;;;;;;;;;a: Type ->     b: Type ->     f_p: pre ->     f_q: post a ->     g_p: (_: a -> pre) ->     g_q: (_: a -> post b) ->     f: repr a f_p f_q ->     g: (x: a -> repr b (g_p x) (g_q x))   -> repr b       (fun s0 -> f_p s0 /\ (forall (x: a) (s1: st). f_q s0 x s1 ==> g_p x s1))       (fun s0 y s2 -> exists (x: a) (s1: st). f_q s0 x s1 /\ g_q x s1 y s2)
(declare-fun Tm_arrow_101cb3b89e5fdbba91eefe4eb1341b31 () Term)

















; </end encoding let rec bind>

(push) ;; push{2

; Starting query at HoareSTFree.fst(168,4-168,26)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_1361 (Term Term Term Term Term Term) Term)

; Encoding query formula : forall (a: Type)
;   (f_p: HoareSTFree.pre)
;   (f_q: HoareSTFree.post a)
;   (g_p: HoareSTFree.pre)
;   (g_q: HoareSTFree.post a)
;   (f: HoareSTFree.repr a f_p f_q).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (HoareSTFree.repr a g_p g_q)).
;     (forall (s: HoareSTFree.st). g_p s ==> f_p s) /\
;     (forall (s0: HoareSTFree.st) (x: a) (s1: HoareSTFree.st). g_p s0 ==> f_q s0 x s1 ==> g_q s0 x s1
;     ) /\ (forall (pure_result: HoareSTFree.repr a g_p g_q). Prims.auto_squash (p pure_result)) ==>
;     (forall (_: Prims.unit).
;         (*  - Could not prove post-condition
; *)
;         forall (p: Prims.pure_post (HoareSTFree.m HoareSTFree.st a g_p g_q)).
;           (forall (any_result: HoareSTFree.m HoareSTFree.st a g_p g_q). p any_result) ==>
;           (forall (any_result: HoareSTFree.m HoareSTFree.st a f_p f_q).
;               (forall (s: HoareSTFree.st). g_p s ==> f_p s) /\
;               (forall (s0: HoareSTFree.st) (x: a) (s1: HoareSTFree.st).
;                   g_p s0 ==> f_q s0 x s1 ==> g_q s0 x s1))) /\
;     (forall (any_result: HoareSTFree.repr a g_p g_q).
;         any_result ==
;         (fun _ ->
;             let _ = f () in
;             HoareSTFree.Weaken _) ==>
;         (forall (return_val: HoareSTFree.repr a g_p g_q). return_val == any_result ==> p return_val)
;     )


; Context: While encoding a query
; While typechecking the top-level declaration `let subcomp`

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
HoareSTFree.pre)
(HasType @x2
(HoareSTFree.post @x0))
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x0))
(HasType @x5
(HoareSTFree.repr @x0
@x1
@x2)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post (HoareSTFree.repr @x0
@x3
@x4)))

;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(166,19-166,28)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(166,19-166,28)
(Valid 
;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(166,19-166,28)
(ApplyTT @x3
@x7)
)
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(166,19-166,28)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(166,19-166,28)
(ApplyTT @x1
@x7)
)
)
 
;;no pats
:qid @query.2))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(166,19-166,28)
(forall ((@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)
(HasType @x8
@x0)
(HasType @x9
HoareSTFree.st)

;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(166,19-166,28)
(Valid 
;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(166,19-166,28)
(ApplyTT @x3
@x7)
)


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(166,19-166,28)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(166,19-166,28)
(ApplyTT (ApplyTT (ApplyTT @x2
@x7)
@x8)
@x9)
)
)

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(166,19-166,28)
(Valid 
;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(166,19-166,28)
(ApplyTT (ApplyTT (ApplyTT @x4
@x7)
@x8)
@x9)
)
)
 
;;no pats
:qid @query.3))


;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(168,4-168,26)
(forall ((@x7 Term))
 (! (implies (or label_1
(HasType @x7
(HoareSTFree.repr @x0
@x3
@x4)))

;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(168,4-168,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(168,4-168,26)
(ApplyTT @x6
@x7)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(168,4-168,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(168,4-168,26)
(ApplyTT @x6
@x7)
)
)
:qid @query.4))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(168,4-168,26)
(and 
;; def=dummy(0,0-0,0); use=HoareSTFree.fst(168,4-168,26)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Prims.unit)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(168,4-168,26)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x0
@x3
@x4)))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(168,4-168,26)
(forall ((@x9 Term))
 (! (implies (or label_2
(HasType @x9
(HoareSTFree.m HoareSTFree.st
@x0
@x3
@x4)))

;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(168,4-168,26)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(168,4-168,26)
(ApplyTT @x8
@x9)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(168,4-168,26)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(168,4-168,26)
(ApplyTT @x8
@x9)
)
)
:qid @query.7))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(168,13-168,26)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.m HoareSTFree.st
@x0
@x1
@x2))

;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(168,13-168,26)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(168,13-168,26)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
HoareSTFree.st)

;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(168,13-168,26)
(Valid 
;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(168,13-168,26)
(ApplyTT @x3
@x10)
)
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(168,13-168,26)
(or label_3

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(168,13-168,26)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(168,13-168,26)
(ApplyTT @x1
@x10)
)
)
)
 
;;no pats
:qid @query.9))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(168,13-168,26)
(forall ((@x10 Term) (@x11 Term) (@x12 Term))
 (! (implies (and (HasType @x10
HoareSTFree.st)
(HasType @x11
@x0)
(HasType @x12
HoareSTFree.st)

;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(168,13-168,26)
(Valid 
;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(168,13-168,26)
(ApplyTT @x3
@x10)
)


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(168,13-168,26)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(168,13-168,26)
(ApplyTT (ApplyTT (ApplyTT @x2
@x10)
@x11)
@x12)
)
)

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(168,13-168,26)
(or label_4

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(168,13-168,26)
(Valid 
;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(168,13-168,26)
(ApplyTT (ApplyTT (ApplyTT @x4
@x10)
@x11)
@x12)
)
)
)
 
;;no pats
:qid @query.10))
)
)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(168,4-168,26)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(HoareSTFree.repr @x0
@x3
@x4))

;; def=HoareSTFree.fst(165,9-168,26); use=HoareSTFree.fst(168,4-168,26)
(= @x7
(Tm_abs_HoareSTFree_1361 @x0
@x1
@x2
@x3
@x4
@x5))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(HoareSTFree.repr @x0
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x8
@x7)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x6
@x8)
)
)
 
;;no pats
:qid @query.12))
)
 
;;no pats
:qid @query.11))
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
; QUERY ID: (HoareSTFree.subcomp, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let subcomp


; <Start encoding let subcomp>

(declare-fun HoareSTFree.subcomp (Term Term Term Term Term Term) Term)
(declare-fun Tm_refine_dc05ee618613f64dee584d813ac8f98c (Term Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> f_p: pre -> f_q: post a -> g_p: pre -> g_q: post a -> f: repr a f_p f_q   -> Prims.Pure (repr a g_p g_q)
(declare-fun Tm_arrow_7c45faa90365342345a8f45475754037 () Term)
(declare-fun HoareSTFree.subcomp@tok () Term)

;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_1366 (Term Term Term Term Term Term) Term)

; </end encoding let subcomp>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (a: Type)
;   (f_p: HoareSTFree.pre)
;   (f_q: HoareSTFree.post a)
;   (g_p: HoareSTFree.pre)
;   (g_q: HoareSTFree.post a)
;   (p: Prims.pure_post (HoareSTFree.repr a g_p g_q))
;   (q: Prims.pure_post (HoareSTFree.repr a g_p g_q)).
;   (forall (x: HoareSTFree.repr a g_p g_q). p x ==> q x) ==>
;   (forall (s: HoareSTFree.st). g_p s ==> f_p s) /\
;   (forall (s0: HoareSTFree.st) (x: a) (s1: HoareSTFree.st). g_p s0 ==> f_q s0 x s1 ==> g_q s0 x s1) /\
;   (forall (pure_result: HoareSTFree.repr a g_p g_q). Prims.auto_squash (p pure_result)) ==>
;   (forall (s: HoareSTFree.st). g_p s ==> f_p s) /\
;   (forall (s0: HoareSTFree.st) (x: a) (s1: HoareSTFree.st). g_p s0 ==> f_q s0 x s1 ==> g_q s0 x s1) /\
;   (forall (pure_result: HoareSTFree.repr a g_p g_q). Prims.auto_squash (q pure_result))


; Context: While encoding a query
; While checking the subcomp combinator
; While checking layered effect definition `HoareSTFree.M`
; While typechecking the top-level declaration `layered_effect { M ... }`

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
HoareSTFree.pre)
(HasType @x2
(HoareSTFree.post @x0))
(HasType @x3
HoareSTFree.pre)
(HasType @x4
(HoareSTFree.post @x0))
(HasType @x5
(Prims.pure_post (HoareSTFree.repr @x0
@x3
@x4)))
(HasType @x6
(Prims.pure_post (HoareSTFree.repr @x0
@x3
@x4)))

;; def=Prims.fst(334,28-334,55); use=Prims.fst(334,28-334,55)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(HoareSTFree.repr @x0
@x3
@x4))

;; def=Prims.fst(334,43-334,46); use=Prims.fst(334,43-334,46)
(Valid 
;; def=Prims.fst(334,43-334,46); use=Prims.fst(334,43-334,46)
(ApplyTT @x5
@x7)
)
)

;; def=Prims.fst(334,51-334,54); use=Prims.fst(334,51-334,54)
(Valid 
;; def=Prims.fst(334,51-334,54); use=Prims.fst(334,51-334,54)
(ApplyTT @x6
@x7)
)
)
 
;;no pats
:qid @query.1))


;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(72,2-72,32)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(72,18-72,22)
(Valid 
;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(72,18-72,22)
(ApplyTT @x3
@x7)
)
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(72,27-72,31)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(72,27-72,31)
(ApplyTT @x1
@x7)
)
)
 
;;no pats
:qid @query.2))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(73,2-73,69)
(forall ((@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)
(HasType @x8
@x0)
(HasType @x9
HoareSTFree.st)

;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(73,33-73,38)
(Valid 
;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(73,33-73,38)
(ApplyTT @x3
@x7)
)


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(73,43-73,53)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(73,43-73,53)
(ApplyTT (ApplyTT (ApplyTT @x2
@x7)
@x8)
@x9)
)
)

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(73,58-73,68)
(Valid 
;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(73,58-73,68)
(ApplyTT (ApplyTT (ApplyTT @x4
@x7)
@x8)
@x9)
)
)
 
;;no pats
:qid @query.3))


;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(174,28-174,35)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.repr @x0
@x3
@x4))

;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(174,28-174,35)
(Valid 
;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(174,28-174,35)
(ApplyTT @x5
@x7)
)
)
 
;;no pats
:qid @query.4))
)

;; def=Prims.fst(441,29-441,97); use=HoareSTFree.fst(174,28-174,35)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(72,2-72,32)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(72,18-72,22)
(Valid 
;; def=HoareSTFree.fst(72,18-72,22); use=HoareSTFree.fst(72,18-72,22)
(ApplyTT @x3
@x7)
)
)

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(72,27-72,31)
(or label_1

;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(72,27-72,31)
(Valid 
;; def=HoareSTFree.fst(72,27-72,31); use=HoareSTFree.fst(72,27-72,31)
(ApplyTT @x1
@x7)
)
)
)
 
;;no pats
:qid @query.5))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(73,2-73,69)
(forall ((@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x7
HoareSTFree.st)
(HasType @x8
@x0)
(HasType @x9
HoareSTFree.st)

;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(73,33-73,38)
(Valid 
;; def=HoareSTFree.fst(73,33-73,38); use=HoareSTFree.fst(73,33-73,38)
(ApplyTT @x3
@x7)
)


;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(73,43-73,53)
(Valid 
;; def=HoareSTFree.fst(73,43-73,53); use=HoareSTFree.fst(73,43-73,53)
(ApplyTT (ApplyTT (ApplyTT @x2
@x7)
@x8)
@x9)
)
)

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(73,58-73,68)
(or label_2

;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(73,58-73,68)
(Valid 
;; def=HoareSTFree.fst(73,58-73,68); use=HoareSTFree.fst(73,58-73,68)
(ApplyTT (ApplyTT (ApplyTT @x4
@x7)
@x8)
@x9)
)
)
)
 
;;no pats
:qid @query.6))


;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(174,28-174,35)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(HoareSTFree.repr @x0
@x3
@x4))

;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(174,28-174,35)
(or label_3

;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(174,28-174,35)
(Valid 
;; def=Prims.fst(441,83-441,96); use=HoareSTFree.fst(174,28-174,35)
(ApplyTT @x6
@x7)
)
)
)
 
;;no pats
:qid @query.7))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (HoareSTFree.M, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt layered_effect { M ... }


; <Skipped layered_effect { M ... }/>


; encoding sigelt let pure_p


; <Start encoding let pure_p>

(declare-fun HoareSTFree.pure_p (Term Term) Term)
;;;;;;;;;;;;;;;;wp: Prims.pure_wp a -> pre
(declare-fun Tm_arrow_1a8c77a46cbddbf4179ccdf3fe109e61 () Term)
(declare-fun HoareSTFree.pure_p@tok () Term)



(declare-fun Tm_abs_2a60e396b40b79d5a483daf6343dfea4 (Term Term) Term)

; </end encoding let pure_p>


; encoding sigelt let pure_q


; <Start encoding let pure_q>

(declare-fun HoareSTFree.pure_q (Term Term) Term)
;;;;;;;;;;;;;;;;wp: Prims.pure_wp a -> post a
(declare-fun Tm_arrow_2ef3ec909d58fe9810ac181b9f15e377 () Term)
(declare-fun HoareSTFree.pure_q@tok () Term)

(declare-fun Tm_abs_2d04d138904bd71a6adce46b0ec78292 (Term Term) Term)

(declare-fun Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 (Term Term) Term)

; </end encoding let pure_q>

;;;;;;;;;;;;;;;;typing_Tm_abs_f62553b6de3459a5f971d8edfdfa5b23
;;; Fact-ids: Name HoareSTFree.pure_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(185,17-185,44); use=HoareSTFree.fst(185,17-185,44)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x0
@x1)
(Tm_arrow_f47eea3d1abab792ad7e0371ab78331f @x1))
 

:pattern ((Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x0
@x1))
:qid typing_Tm_abs_f62553b6de3459a5f971d8edfdfa5b23))

:named typing_Tm_abs_f62553b6de3459a5f971d8edfdfa5b23))
;;;;;;;;;;;;;;;;typing_Tm_abs_735bfa0400a12573ed48312f042e45e7
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(630,69-630,73); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_735bfa0400a12573ed48312f042e45e7 @x0)
(Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x0))
 

:pattern ((Tm_abs_735bfa0400a12573ed48312f042e45e7 @x0))
:qid typing_Tm_abs_735bfa0400a12573ed48312f042e45e7))

:named typing_Tm_abs_735bfa0400a12573ed48312f042e45e7))
;;;;;;;;;;;;;;;;typing_Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(635,86-635,95); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 @x0
@x1)
(Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x1))
 

:pattern ((Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 @x0
@x1))
:qid typing_Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0))

:named typing_Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0))
;;;;;;;;;;;;;;;;typing_Tm_abs_5e34897418ce4950a4effcc8c159cf53
;;; Fact-ids: Name FStar.Pervasives.trivial_pure_post; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(134,57-134,61); use=FStar.Pervasives.fsti(134,57-134,61)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x0))
 

:pattern ((Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0))
:qid typing_Tm_abs_5e34897418ce4950a4effcc8c159cf53))

:named typing_Tm_abs_5e34897418ce4950a4effcc8c159cf53))
;;;;;;;;;;;;;;;;typing_Tm_abs_2d04d138904bd71a6adce46b0ec78292
;;; Fact-ids: Name HoareSTFree.pure_q; Namespace HoareSTFree
(assert (! 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(185,29-185,39)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_2d04d138904bd71a6adce46b0ec78292 @x0
@x1)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1))
 

:pattern ((Tm_abs_2d04d138904bd71a6adce46b0ec78292 @x0
@x1))
:qid typing_Tm_abs_2d04d138904bd71a6adce46b0ec78292))

:named typing_Tm_abs_2d04d138904bd71a6adce46b0ec78292))
;;;;;;;;;;;;;;;;typing_Tm_abs_2a60e396b40b79d5a483daf6343dfea4
;;; Fact-ids: Name HoareSTFree.pure_p; Namespace HoareSTFree
(assert (! 
;; def=Prims.fst(630,56-630,74); use=HoareSTFree.fst(181,11-181,22)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_2a60e396b40b79d5a483daf6343dfea4 @x0
@x1)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_2a60e396b40b79d5a483daf6343dfea4 @x0
@x1))
:qid typing_Tm_abs_2a60e396b40b79d5a483daf6343dfea4))

:named typing_Tm_abs_2a60e396b40b79d5a483daf6343dfea4))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pure_wp_monotonic; Namespace Prims
(assert (! 
;; def=Prims.fst(337,4-337,21); use=Prims.fst(337,4-337,21)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.pure_wp_ @x0)))
(HasType (Prims.pure_wp_monotonic @x0
@x1)
Prims.logical))
 

:pattern ((Prims.pure_wp_monotonic @x0
@x1))
:qid typing_Prims.pure_wp_monotonic))

:named typing_Prims.pure_wp_monotonic))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pure_wp'; Namespace Prims
(assert (! 
;; def=Prims.fst(325,4-325,12); use=Prims.fst(325,4-325,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.pure_wp_ @x0)
Tm_type))
 

:pattern ((Prims.pure_wp_ @x0))
:qid typing_Prims.pure_wp_))

:named typing_Prims.pure_wp_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pure_wp; Namespace Prims
(assert (! 
;; def=Prims.fst(339,4-339,11); use=Prims.fst(339,4-339,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Prims.pure_wp @x0)
Tm_type))
 

:pattern ((Prims.pure_wp @x0))
:qid typing_Prims.pure_wp))

:named typing_Prims.pure_wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_not; Namespace Prims
(assert (! 
;; def=Prims.fst(214,5-214,10); use=Prims.fst(214,5-214,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.logical)
(HasType (Prims.l_not @x0)
Prims.logical))
 

:pattern ((Prims.l_not @x0))
:qid typing_Prims.l_not))

:named typing_Prims.l_not))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (HasType Prims.l_False
Prims.logical)
:named typing_Prims.l_False))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.eq2; Namespace Prims
(assert (! 
;; def=Prims.fst(175,5-175,8); use=Prims.fst(175,5-175,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0)
(HasType @x2
@x0))
(HasType (Prims.eq2 @x0
@x1
@x2)
Prims.logical))
 

:pattern ((Prims.eq2 @x0
@x1
@x2))
:qid typing_Prims.eq2))

:named typing_Prims.eq2))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Prims.equals@tok
@x0)
@x1)
@x2)
(Prims.equals @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT Prims.equals@tok
@x0)
@x1)
@x2))

:pattern ((Prims.equals @x0
@x1
@x2))
:qid token_correspondence_Prims.equals@tok))

:named token_correspondence_Prims.equals@tok))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(315,31-315,40); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b))

:named refinement_kinding_Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=FStar.Monotonic.Pure.fst(59,16-59,17); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6))

:named refinement_kinding_Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.pure_wp; Namespace Prims
(assert (! 
;; def=Prims.fst(339,24-339,61); use=Prims.fst(339,24-339,61)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_15e0beb75f7033bad5fae236999feebe @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_15e0beb75f7033bad5fae236999feebe @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_15e0beb75f7033bad5fae236999feebe))

:named refinement_kinding_Tm_refine_15e0beb75f7033bad5fae236999feebe))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(315,31-315,40); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x2))
(HasTypeFuel @u0
@x1
@x2))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x2)))
:qid refinement_interpretation_Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b))

:named refinement_interpretation_Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=FStar.Monotonic.Pure.fst(59,16-59,17); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x2
@x3))
(and (HasTypeFuel @u0
@x1
@x3)

;; def=Prims.fst(635,71-635,97); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(not 
;; def=Prims.fst(635,72-635,97); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(Valid 
;; def=Prims.fst(635,72-635,97); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(ApplyTT @x2
(Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 @x1
@x3))
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6))

:named refinement_interpretation_Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Prims.pure_wp; Namespace Prims
(assert (! 
;; def=Prims.fst(339,24-339,61); use=Prims.fst(339,24-339,61)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_15e0beb75f7033bad5fae236999feebe @x2))
(and (HasTypeFuel @u0
@x1
(Prims.pure_wp_ @x2))

;; def=Prims.fst(339,38-339,60); use=Prims.fst(339,38-339,60)
(Valid 
;; def=Prims.fst(339,38-339,60); use=Prims.fst(339,38-339,60)
(Prims.pure_wp_monotonic @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_15e0beb75f7033bad5fae236999feebe @x2)))
:qid refinement_interpretation_Tm_refine_15e0beb75f7033bad5fae236999feebe))

:named refinement_interpretation_Tm_refine_15e0beb75f7033bad5fae236999feebe))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.equals@tok))
:named pre_kinding_Prims.equals@tok))
;;;;;;;;;;;;;;;;not interpretation
;;; Fact-ids: Name Prims.l_not; Namespace Prims
(assert (! (forall ((@x0 Term))
 (! (iff (not (Valid @x0))
(Valid (Prims.l_not @x0)))
 

:pattern ((Prims.l_not @x0))
:qid l_not-interp))
:named l_not-interp))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4
;;; Fact-ids: Name Prims.pure_wp'; Namespace Prims
(assert (! 
;; def=Prims.fst(325,25-325,53); use=Prims.fst(325,25-325,53)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x0)
Tm_type))
:qid kinding_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4))

:named kinding_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=FStar.Monotonic.Pure.fst(59,16-59,50); use=FStar.Monotonic.Pure.fst(59,46-59,60)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd))

:named kinding_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_61bb9550f39772f18eaab129c43c3788
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(315,31-315,54); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x0)
Tm_type))
:qid kinding_Tm_arrow_61bb9550f39772f18eaab129c43c3788))

:named kinding_Tm_arrow_61bb9550f39772f18eaab129c43c3788))
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (and (IsTotFun Prims.equals@tok)

;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT Prims.equals@tok
@x0))
 

:pattern ((ApplyTT Prims.equals@tok
@x0))
:qid kinding_Prims.equals@tok))


;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT Prims.equals@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT Prims.equals@tok
@x0)
@x1))
:qid kinding_Prims.equals@tok.1))


;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0)
(HasType @x2
@x0))
(HasType (Prims.equals @x0
@x1
@x2)
Tm_type))
 

:pattern ((Prims.equals @x0
@x1
@x2))
:qid kinding_Prims.equals@tok.2))
)
:named kinding_Prims.equals@tok))
;;; Fact-ids: Name Prims.empty; Namespace Prims
(assert (! (HasType Prims.empty
Tm_type)
:named kinding_Prims.empty@tok))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_f62553b6de3459a5f971d8edfdfa5b23
;;; Fact-ids: Name HoareSTFree.pure_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(185,17-185,44); use=HoareSTFree.fst(185,17-185,44)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x3
@x4)
@x0)
@x1)
@x2)
(Prims.l_and (Prims.eq2 HoareSTFree.st
@x0
@x2)
(Prims.l_not (ApplyTT @x3
(Tm_abs_2d04d138904bd71a6adce46b0ec78292 @x1
@x4)))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x3
@x4)
@x0)
@x1)
@x2))
:qid interpretation_Tm_abs_f62553b6de3459a5f971d8edfdfa5b23))

:named interpretation_Tm_abs_f62553b6de3459a5f971d8edfdfa5b23))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_735bfa0400a12573ed48312f042e45e7
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(630,69-630,73); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_735bfa0400a12573ed48312f042e45e7 @x1)
@x0)
Prims.l_True)
 

:pattern ((ApplyTT (Tm_abs_735bfa0400a12573ed48312f042e45e7 @x1)
@x0))
:qid interpretation_Tm_abs_735bfa0400a12573ed48312f042e45e7))

:named interpretation_Tm_abs_735bfa0400a12573ed48312f042e45e7))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(635,86-635,95); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 @x1
@x2)
@x0)
(Prims.l_not (Prims.eq2 @x2
@x0
@x1)))
 

:pattern ((ApplyTT (Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0))

:named interpretation_Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_5e34897418ce4950a4effcc8c159cf53
;;; Fact-ids: Name FStar.Pervasives.trivial_pure_post; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(134,57-134,61); use=FStar.Pervasives.fsti(134,57-134,61)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x1)
@x0)
Prims.l_True)
 

:pattern ((ApplyTT (Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x1)
@x0))
:qid interpretation_Tm_abs_5e34897418ce4950a4effcc8c159cf53))

:named interpretation_Tm_abs_5e34897418ce4950a4effcc8c159cf53))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_2d04d138904bd71a6adce46b0ec78292
;;; Fact-ids: Name HoareSTFree.pure_q; Namespace HoareSTFree
(assert (! 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(185,29-185,39)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_2d04d138904bd71a6adce46b0ec78292 @x1
@x2)
@x0)
(Prims.l_not (Prims.eq2 @x2
@x0
@x1)))
 

:pattern ((ApplyTT (Tm_abs_2d04d138904bd71a6adce46b0ec78292 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_2d04d138904bd71a6adce46b0ec78292))

:named interpretation_Tm_abs_2d04d138904bd71a6adce46b0ec78292))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_2a60e396b40b79d5a483daf6343dfea4
;;; Fact-ids: Name HoareSTFree.pure_p; Namespace HoareSTFree
(assert (! 
;; def=Prims.fst(630,56-630,74); use=HoareSTFree.fst(181,11-181,22)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_2a60e396b40b79d5a483daf6343dfea4 @x1
@x2)
@x0)
(ApplyTT @x1
(Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x2)))
 

:pattern ((ApplyTT (Tm_abs_2a60e396b40b79d5a483daf6343dfea4 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_2a60e396b40b79d5a483daf6343dfea4))

:named interpretation_Tm_abs_2a60e396b40b79d5a483daf6343dfea4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(315,31-315,40); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x0)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x0))))
:qid haseqTm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b))

:named haseqTm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=FStar.Monotonic.Pure.fst(59,16-59,17); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x0
@x1)))
(Valid (Prims.hasEq @x1)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x0
@x1))))
:qid haseqTm_refine_9d7e1da4c8ccc98f1562bffecfa030b6))

:named haseqTm_refine_9d7e1da4c8ccc98f1562bffecfa030b6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_15e0beb75f7033bad5fae236999feebe
;;; Fact-ids: Name Prims.pure_wp; Namespace Prims
(assert (! 
;; def=Prims.fst(339,24-339,61); use=Prims.fst(339,24-339,61)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_15e0beb75f7033bad5fae236999feebe @x0)))
(Valid (Prims.hasEq (Prims.pure_wp_ @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_15e0beb75f7033bad5fae236999feebe @x0))))
:qid haseqTm_refine_15e0beb75f7033bad5fae236999feebe))

:named haseqTm_refine_15e0beb75f7033bad5fae236999feebe))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (HasType Prims.l_False
Prims.logical)
:named function_token_typing_Prims.l_False))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Prims.equals @x2
@x3
@x4))
(is-Prims.Refl @x1))
 

:pattern ((HasTypeFuel @u0
@x1
(Prims.equals @x2
@x3
@x4)))
:qid fuel_guarded_inversion_Prims.equals))

:named fuel_guarded_inversion_Prims.equals))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.empty; Namespace Prims
(assert (! 
;; def=Prims.fst(86,5-86,10); use=Prims.fst(86,5-86,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.empty)
false)
 

:pattern ((HasTypeFuel @u0
@x1
Prims.empty))
:qid fuel_guarded_inversion_Prims.empty))

:named fuel_guarded_inversion_Prims.empty))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (= 135
(Term_constr_id Prims.equals@tok))
:named fresh_token_Prims.equals@tok))
;;;;;;;;;;;;;;;;False interpretation
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (iff false
(Valid Prims.l_False))
:named false_interp))
;;;;;;;;;;;;;;;;Equation for Prims.pure_wp'
;;; Fact-ids: Name Prims.pure_wp'; Namespace Prims
(assert (! 
;; def=Prims.fst(325,4-325,12); use=Prims.fst(325,4-325,12)
(forall ((@x0 Term))
 (! (= (Prims.pure_wp_ @x0)
(Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x0))
 

:pattern ((Prims.pure_wp_ @x0))
:qid equation_Prims.pure_wp_))

:named equation_Prims.pure_wp_))
;;;;;;;;;;;;;;;;Equation for Prims.pure_wp
;;; Fact-ids: Name Prims.pure_wp; Namespace Prims
(assert (! 
;; def=Prims.fst(339,4-339,11); use=Prims.fst(339,4-339,11)
(forall ((@x0 Term))
 (! (= (Prims.pure_wp @x0)
(Tm_refine_15e0beb75f7033bad5fae236999feebe @x0))
 

:pattern ((Prims.pure_wp @x0))
:qid equation_Prims.pure_wp))

:named equation_Prims.pure_wp))
;;;;;;;;;;;;;;;;Equation for Prims.l_not
;;; Fact-ids: Name Prims.l_not; Namespace Prims
(assert (! 
;; def=Prims.fst(214,5-214,10); use=Prims.fst(214,5-214,10)
(forall ((@x0 Term))
 (! (= (Prims.l_not @x0)
(Prims.l_imp @x0
Prims.l_False))
 

:pattern ((Prims.l_not @x0))
:qid equation_Prims.l_not))

:named equation_Prims.l_not))
;;;;;;;;;;;;;;;;Equation for Prims.l_False
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (= Prims.l_False
(Prims.squash Prims.empty))
:named equation_Prims.l_False))
;;;;;;;;;;;;;;;;Equation for Prims.eq2
;;; Fact-ids: Name Prims.eq2; Namespace Prims
(assert (! 
;; def=Prims.fst(175,5-175,8); use=Prims.fst(175,5-175,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.eq2 @x0
@x1
@x2)
(Prims.squash (Prims.equals @x0
@x1
@x2)))
 

:pattern ((Prims.eq2 @x0
@x1
@x2))
:qid equation_Prims.eq2))

:named equation_Prims.eq2))
;;;;;;;;;;;;;;;;Eq2 interpretation
;;; Fact-ids: Name Prims.eq2; Namespace Prims
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (= @x1
@x2)
(Valid (Prims.eq2 @x0
@x1
@x2)))
 

:pattern ((Prims.eq2 @x0
@x1
@x2))
:qid eq2-interp))
:named eq2-interp))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,46-165,50); use=Prims.fst(165,46-165,50)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(= @x2
@x3))
(HasTypeFuel @u0
(Prims.Refl @x1
@x2)
(Prims.equals @x1
@x2
@x3)))
 

:pattern ((HasTypeFuel @u0
(Prims.Refl @x1
@x2)
(Prims.equals @x1
@x2
@x3)))
:qid data_typing_intro_Prims.Refl@tok))

:named data_typing_intro_Prims.Refl@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,46-165,50); use=Prims.fst(165,46-165,50)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Refl @x1
@x2)
(Prims.equals @x3
@x4
@x5))
(and (= @x4
@x5)
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
@x3)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Refl @x1
@x2)
(Prims.equals @x3
@x4
@x5)))
:qid data_elim_Prims.Refl))

:named data_elim_Prims.Refl))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 134
(Term_constr_id (Prims.equals @x0
@x1
@x2)))
 

:pattern ((Prims.equals @x0
@x1
@x2))
:qid constructor_distinct_Prims.equals))

:named constructor_distinct_Prims.equals))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.empty; Namespace Prims
(assert (! (= 111
(Term_constr_id Prims.empty))
:named constructor_distinct_Prims.empty))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,46-165,50); use=Prims.fst(165,46-165,50)
(forall ((@x0 Term) (@x1 Term))
 (! (= 141
(Term_constr_id (Prims.Refl @x0
@x1)))
 

:pattern ((Prims.Refl @x0
@x1))
:qid constructor_distinct_Prims.Refl))

:named constructor_distinct_Prims.Refl))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,46-165,50); use=Prims.fst(165,46-165,50)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (is-Prims.Refl (Prims.Refl @x0
@x1))
(= (Prims.Refl @x0
@x1)
Prims.Refl@base))
 

:pattern ((Prims.Refl @x0
@x1))
:qid constructor_base_Prims.Refl))

:named constructor_base_Prims.Refl))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! 
;; def=Prims.fst(165,5-165,11); use=Prims.fst(165,5-165,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Prims.equals @x2
@x3
@x4))
(= (Term_constr_id (Prims.equals @x2
@x3
@x4))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(Prims.equals @x2
@x3
@x4)))
:qid Prims_pretyping_b2d64ca214b8828a9eba2c140aea0816))

:named Prims_pretyping_b2d64ca214b8828a9eba2c140aea0816))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.empty; Namespace Prims
(assert (! 
;; def=Prims.fst(86,5-86,10); use=Prims.fst(86,5-86,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.empty)
(= Prims.empty
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.empty))
:qid Prims_pretyping_012c410d173b30f0cec8f55be7b4958c))

:named Prims_pretyping_012c410d173b30f0cec8f55be7b4958c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.pure_wp'; Namespace Prims
(assert (! 
;; def=Prims.fst(325,25-325,53); use=Prims.fst(325,25-325,53)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x2)))
:qid Prims_pre_typing_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4))

:named Prims_pre_typing_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4
;;; Fact-ids: Name Prims.pure_wp'; Namespace Prims
(assert (! 
;; def=Prims.fst(325,25-325,53); use=Prims.fst(325,25-325,53)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x1))
(and 
;; def=Prims.fst(325,25-325,53); use=Prims.fst(325,25-325,53)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Prims.pure_post @x1))
(HasType (ApplyTT @x0
@x2)
Prims.pure_pre))
 

:pattern ((ApplyTT @x0
@x2))
:qid Prims_interpretation_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4 @x1)))
:qid Prims_interpretation_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4))

:named Prims_interpretation_Tm_arrow_e5c03abbf8b0946a9aa7ee31bb7999a4))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=FStar.Monotonic.Pure.fst(59,16-59,50); use=FStar.Monotonic.Pure.fst(59,46-59,60)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x2
@x3)))
:qid FStar.Monotonic.Pure_pre_typing_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd))

:named FStar.Monotonic.Pure_pre_typing_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(315,31-315,54); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x2)))
:qid FStar.Monotonic.Pure_pre_typing_Tm_arrow_61bb9550f39772f18eaab129c43c3788))

:named FStar.Monotonic.Pure_pre_typing_Tm_arrow_61bb9550f39772f18eaab129c43c3788))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=FStar.Monotonic.Pure.fst(59,16-59,50); use=FStar.Monotonic.Pure.fst(59,46-59,60)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x1
@x2))
(and 
;; def=FStar.Monotonic.Pure.fst(59,16-59,50); use=FStar.Monotonic.Pure.fst(59,46-59,60)
(forall ((@x3 Term))
 (! (implies (and 
;; def=Prims.fst(630,56-630,74); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(Valid 
;; def=Prims.fst(630,56-630,74); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(ApplyTT @x2
(Tm_abs_735bfa0400a12573ed48312f042e45e7 @x1))
)

(HasType @x3
Prims.unit))
(HasType (ApplyTT @x0
@x3)
(Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid FStar.Monotonic.Pure_interpretation_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x1
@x2)))
:qid FStar.Monotonic.Pure_interpretation_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd))

:named FStar.Monotonic.Pure_interpretation_Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_61bb9550f39772f18eaab129c43c3788
;;; Fact-ids: Name FStar.Monotonic.Pure.elim_pure; Namespace FStar.Monotonic.Pure
(assert (! 
;; def=Prims.fst(315,31-315,54); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x1))
(and 
;; def=Prims.fst(315,31-315,54); use=FStar.Monotonic.Pure.fst(59,59-59,60)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b @x1))
(HasType (ApplyTT @x0
@x2)
Tm_type))
 

:pattern ((ApplyTT @x0
@x2))
:qid FStar.Monotonic.Pure_interpretation_Tm_arrow_61bb9550f39772f18eaab129c43c3788.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_61bb9550f39772f18eaab129c43c3788 @x1)))
:qid FStar.Monotonic.Pure_interpretation_Tm_arrow_61bb9550f39772f18eaab129c43c3788))

:named FStar.Monotonic.Pure_interpretation_Tm_arrow_61bb9550f39772f18eaab129c43c3788))
(push) ;; push{2

; Starting query at HoareSTFree.fst(189,4-200,12)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)





















(declare-fun Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
;;; Fact-ids: 
(assert (! (HasType Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
:named typing_Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(191,61-191,65); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
@x0)
Prims.l_True)
 

:pattern ((ApplyTT Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
@x0))
:qid interpretation_Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92))

:named interpretation_Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92))





(declare-fun Tm_abs_33590a8253e30af01f9876fec290ab78 (Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_33590a8253e30af01f9876fec290ab78
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(196,58-196,59)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_33590a8253e30af01f9876fec290ab78 @x0
@x1)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x1))
 

:pattern ((Tm_abs_33590a8253e30af01f9876fec290ab78 @x0
@x1))
:qid typing_Tm_abs_33590a8253e30af01f9876fec290ab78))

:named typing_Tm_abs_33590a8253e30af01f9876fec290ab78))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_33590a8253e30af01f9876fec290ab78
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(196,58-196,59)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_33590a8253e30af01f9876fec290ab78 @x1
@x2)
@x0)
(Prims.l_not (Prims.eq2 @x2
@x0
(ApplyTT @x1
Tm_unit))))
 

:pattern ((ApplyTT (Tm_abs_33590a8253e30af01f9876fec290ab78 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_33590a8253e30af01f9876fec290ab78))

:named interpretation_Tm_abs_33590a8253e30af01f9876fec290ab78))

(declare-fun Tm_abs_837e1676af5e8d0f116de50215e4d970 (Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_837e1676af5e8d0f116de50215e4d970
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_837e1676af5e8d0f116de50215e4d970 @x0
@x1
@x2)
Tm_arrow_611f1291e789bae39cde66bd1da679fc)
 

:pattern ((Tm_abs_837e1676af5e8d0f116de50215e4d970 @x0
@x1
@x2))
:qid typing_Tm_abs_837e1676af5e8d0f116de50215e4d970))

:named typing_Tm_abs_837e1676af5e8d0f116de50215e4d970))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_837e1676af5e8d0f116de50215e4d970
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_837e1676af5e8d0f116de50215e4d970 @x1
@x2
@x3)
@x0)
(Prims.l_not (ApplyTT @x1
(Tm_abs_33590a8253e30af01f9876fec290ab78 @x2
@x3))))
 

:pattern ((ApplyTT (Tm_abs_837e1676af5e8d0f116de50215e4d970 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_837e1676af5e8d0f116de50215e4d970))

:named interpretation_Tm_abs_837e1676af5e8d0f116de50215e4d970))


;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.l_Forall HoareSTFree.st
(Tm_abs_837e1676af5e8d0f116de50215e4d970 @x2
@x1
@x0)))

;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x3 Term))
 (! (implies (HasType @x3
HoareSTFree.st)

;; def=Prims.fst(635,71-635,97); use=HoareSTFree.fst(196,58-196,59)
(not 
;; def=Prims.fst(635,72-635,97); use=HoareSTFree.fst(196,58-196,59)
(Valid 
;; def=Prims.fst(635,72-635,97); use=HoareSTFree.fst(196,58-196,59)
(ApplyTT @x2
(Tm_abs_33590a8253e30af01f9876fec290ab78 @x1
@x0))
)
)
)
 
;;no pats
:qid l_quant_interp_82a947d055e94ad4d43361b23585dbc3.1))
)
 

:pattern ((Valid (Prims.l_Forall HoareSTFree.st
(Tm_abs_837e1676af5e8d0f116de50215e4d970 @x2
@x1
@x0))))
:qid l_quant_interp_82a947d055e94ad4d43361b23585dbc3))

:named l_quant_interp_82a947d055e94ad4d43361b23585dbc3))

(declare-fun Tm_abs_53dd3418df069469d3ed753850988ed8 (Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_53dd3418df069469d3ed753850988ed8
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(369,38-369,57); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_53dd3418df069469d3ed753850988ed8 @x0
@x1
@x2)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x2))
 

:pattern ((Tm_abs_53dd3418df069469d3ed753850988ed8 @x0
@x1
@x2))
:qid typing_Tm_abs_53dd3418df069469d3ed753850988ed8))

:named typing_Tm_abs_53dd3418df069469d3ed753850988ed8))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_53dd3418df069469d3ed753850988ed8
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(369,38-369,57); use=HoareSTFree.fst(192,14-197,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_53dd3418df069469d3ed753850988ed8 @x1
@x2
@x3)
@x0)
(Prims.l_imp (Prims.eq2 @x3
(ApplyTT @x1
Tm_unit)
@x0)
(Prims.l_Forall HoareSTFree.st
(Tm_abs_837e1676af5e8d0f116de50215e4d970 @x2
@x1
@x3))))
 

:pattern ((ApplyTT (Tm_abs_53dd3418df069469d3ed753850988ed8 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_53dd3418df069469d3ed753850988ed8))

:named interpretation_Tm_abs_53dd3418df069469d3ed753850988ed8))















; Encoding query formula : forall (a: Type) (wp: Prims.pure_wp a) (f: (_: Prims.unit -> Prims.PURE a)).
;   (*  - Could not prove post-condition
; *)
;   forall (pure_result: Prims.unit).
;     (forall (p: Prims.pure_post a) (q: Prims.pure_post a).
;         (forall (x: a). p x ==> q x) ==> wp p ==> wp q) ==>
;     (forall (_: Prims.unit).
;         (*  - Could not prove post-condition
; *)
;         forall (p:
;           Prims.pure_post (HoareSTFree.m HoareSTFree.st
;                 a
;                 (fun _ -> wp (fun _ -> Prims.l_True) <: Prims.pure_pre)
;                 (fun s0 x s1 -> s0 == s1 /\ ~(wp (fun y -> ~(y == x)))))).
;           (forall (any_result:
;               HoareSTFree.m HoareSTFree.st
;                 a
;                 (fun _ -> wp (fun _ -> Prims.l_True) <: Prims.pure_pre)
;                 (fun s0 x s1 -> s0 == s1 /\ ~(wp (fun y -> ~(y == x))))).
;               p any_result) ==>
;           (forall (_: Prims.squash (wp (fun _ -> Prims.l_True))).
;               (*  - Could not prove post-condition
; *)
;               forall (p:
;                 Prims.pure_post (HoareSTFree.m HoareSTFree.st
;                       a
;                       (fun _ -> Prims.l_True)
;                       (fun s0 x s1 -> s0 == s1 /\ ~(wp (fun y -> ~(y == x)))))).
;                 (forall (any_result:
;                     HoareSTFree.m HoareSTFree.st
;                       a
;                       (fun _ -> Prims.l_True)
;                       (fun s0 x s1 -> s0 == s1 /\ ~(wp (fun y -> ~(y == x))))).
;                     p any_result) ==>
;                 wp (fun bind_result_1 ->
;                       f () == bind_result_1 ==>
;                       (forall (s: HoareSTFree.st). ~(wp (fun y -> ~(y == f ())))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let lift_PURE_M`

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
(Prims.pure_wp @x0))
(HasType @x2
(Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd @x0
@x1)))

;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(189,25-189,50)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=FStar.Monotonic.Pure.fst(34,2-34,75); use=HoareSTFree.fst(189,4-200,12)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post @x0))
(HasType @x5
(Prims.pure_post @x0))

;; def=FStar.Monotonic.Pure.fst(34,28-34,55); use=HoareSTFree.fst(189,4-200,12)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
@x0)

;; def=FStar.Monotonic.Pure.fst(34,43-34,46); use=HoareSTFree.fst(189,4-200,12)
(Valid 
;; def=FStar.Monotonic.Pure.fst(34,43-34,46); use=HoareSTFree.fst(189,4-200,12)
(ApplyTT @x4
@x6)
)
)

;; def=FStar.Monotonic.Pure.fst(34,51-34,54); use=HoareSTFree.fst(189,4-200,12)
(Valid 
;; def=FStar.Monotonic.Pure.fst(34,51-34,54); use=HoareSTFree.fst(189,4-200,12)
(ApplyTT @x5
@x6)
)
)
 
;;no pats
:qid @query.3))


;; def=FStar.Monotonic.Pure.fst(34,61-34,65); use=HoareSTFree.fst(189,4-200,12)
(Valid 
;; def=FStar.Monotonic.Pure.fst(34,61-34,65); use=HoareSTFree.fst(189,4-200,12)
(ApplyTT @x1
@x4)
)
)

;; def=FStar.Monotonic.Pure.fst(34,70-34,74); use=HoareSTFree.fst(189,4-200,12)
(Valid 
;; def=FStar.Monotonic.Pure.fst(34,70-34,74); use=HoareSTFree.fst(189,4-200,12)
(ApplyTT @x1
@x5)
)
)
 
;;no pats
:qid @query.2))
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(189,4-200,12)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(189,4-200,12)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x0
(Tm_abs_2a60e396b40b79d5a483daf6343dfea4 @x1
@x0)
(Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x1
@x0))))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(189,4-200,12)
(forall ((@x6 Term))
 (! (implies (or label_1
(HasType @x6
(HoareSTFree.m HoareSTFree.st
@x0
(Tm_abs_2a60e396b40b79d5a483daf6343dfea4 @x1
@x0)
(Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x1
@x0))))

;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(189,4-200,12)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(189,4-200,12)
(ApplyTT @x5
@x6)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(189,4-200,12)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(189,4-200,12)
(ApplyTT @x5
@x6)
)
)
:qid @query.6))
)

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(190,12-200,12)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(Prims.squash (ApplyTT @x1
(Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0))))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(190,12-200,12)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (HoareSTFree.m HoareSTFree.st
@x0
Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
(Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x1
@x0))))

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(190,12-200,12)
(forall ((@x8 Term))
 (! (implies (or label_2
(HasType @x8
(HoareSTFree.m HoareSTFree.st
@x0
Tm_abs_bf0bad9d6b04812cdc4b4a75403f5b92
(Tm_abs_f62553b6de3459a5f971d8edfdfa5b23 @x1
@x0))))

;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(190,12-200,12)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(190,12-200,12)
(ApplyTT @x7
@x8)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(190,12-200,12)
(Valid 
;; def=Prims.fst(451,90-451,102); use=HoareSTFree.fst(190,12-200,12)
(ApplyTT @x7
@x8)
)
)
:qid @query.9))
)

;; def=Prims.fst(369,7-369,58); use=HoareSTFree.fst(192,14-197,7)
(or label_3

;; def=Prims.fst(369,7-369,58); use=HoareSTFree.fst(192,14-197,7)
(Valid 
;; def=Prims.fst(369,7-369,58); use=HoareSTFree.fst(192,14-197,7)
(ApplyTT @x1
(Tm_abs_53dd3418df069469d3ed753850988ed8 @x2
@x1
@x0))
)
)
)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))
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
; QUERY ID: (HoareSTFree.lift_PURE_M, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_interpretation_Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da, Prims_interpretation_Tm_arrow_92458cff82f9ffee1f6e26a1c0c579f3, eq2-interp, equation_Prims.l_Forall, equation_Prims.l_True, equation_Prims.logical, equation_Prims.pure_post, equation_Prims.pure_post_, equation_Prims.squash, interpretation_Tm_abs_33590a8253e30af01f9876fec290ab78, interpretation_Tm_abs_53dd3418df069469d3ed753850988ed8, interpretation_Tm_abs_5e34897418ce4950a4effcc8c159cf53, l_imp-interp, l_not-interp, l_quant_interp_82a947d055e94ad4d43361b23585dbc3, refinement_interpretation_Tm_refine_2de20c066034c13bf76e9c0b94f4806c, refinement_interpretation_Tm_refine_8d65e998a07dd53ec478e27017d9dba5, typing_Prims.l_True, typing_Tm_abs_33590a8253e30af01f9876fec290ab78, typing_Tm_abs_53dd3418df069469d3ed753850988ed8, typing_Tm_abs_5e34897418ce4950a4effcc8c159cf53

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let lift_PURE_M


; <Start encoding let lift_PURE_M>











(declare-fun HoareSTFree.lift_PURE_M (Term Term Term) Term)


















;;;;;;;;;;;;;;;;a: Type -> wp: Prims.pure_wp a -> f: (_: Prims.unit -> Prims.PURE a)   -> repr a       (fun _ -> wp (fun _ -> Prims.l_True) <: Prims.pure_pre)       (fun s0 x s1 -> s0 == s1 /\ ~(wp (fun y -> ~(y == x))))
(declare-fun Tm_arrow_84226a2d222695408417449ec4b8c175 () Term)
(declare-fun HoareSTFree.lift_PURE_M@tok () Term)


















;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_1479 (Term Term Term) Term)

; </end encoding let lift_PURE_M>


; encoding sigelt sub_effect PURE ~> M


; <Skipped sub_effect PURE ~> M/>


; encoding sigelt val HoareSTFree.p


; <Start encoding val HoareSTFree.p>

(declare-fun HoareSTFree.p (Dummy_sort) Term)

; </end encoding val HoareSTFree.p>


; encoding sigelt val HoareSTFree.q


; <Start encoding val HoareSTFree.q>

(declare-fun HoareSTFree.q (Dummy_sort) Term)

; </end encoding val HoareSTFree.q>


; encoding sigelt val HoareSTFree.st_p


; <Start encoding val HoareSTFree.st_p>

(declare-fun HoareSTFree.st_p (Term) Term)
;;;;;;;;;;;;;;;;_: st -> Prims.prop
(declare-fun Tm_arrow_4e2bd6fad42f7dbf166dd8785a238799 () Term)
(declare-fun HoareSTFree.st_p@tok () Term)

; </end encoding val HoareSTFree.st_p>


; encoding sigelt val HoareSTFree.st_q


; <Start encoding val HoareSTFree.st_q>

(declare-fun HoareSTFree.st_q (Term) Term)

(declare-fun HoareSTFree.st_q@tok () Term)

; </end encoding val HoareSTFree.st_q>


; encoding sigelt assume HoareSTFree.ST_axiom


; <Start encoding assume HoareSTFree.ST_axiom>


; </end encoding assume HoareSTFree.ST_axiom>


; encoding sigelt val HoareSTFree.f


; <Start encoding val HoareSTFree.f>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun HoareSTFree.f (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun HoareSTFree.f@tok () Term)

; </end encoding val HoareSTFree.f>


; encoding sigelt val HoareSTFree.g


; <Start encoding val HoareSTFree.g>

(declare-fun HoareSTFree.g (Term) Term)
(declare-fun Tm_refine_7ced4356b14a4fa4e21399a207133f67 () Term)
;;;;;;;;;;;;;;;;_: Prims.unit -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_f9f14a33428836b98f7ab1344df389b8 () Term)
(declare-fun HoareSTFree.g@tok () Term)


; </end encoding val HoareSTFree.g>


; encoding sigelt val HoareSTFree.h


; <Start encoding val HoareSTFree.h>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun HoareSTFree.h (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun HoareSTFree.h@tok () Term)

; </end encoding val HoareSTFree.h>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named typing_Prims.prop))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.st_q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(211,11-211,15); use=HoareSTFree.fst(211,11-211,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
HoareSTFree.st)
(HasType (HoareSTFree.st_q @x0)
Prims.prop))
 

:pattern ((HoareSTFree.st_q @x0))
:qid typing_HoareSTFree.st_q))

:named typing_HoareSTFree.st_q))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.st_p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(210,11-210,15); use=HoareSTFree.fst(210,11-210,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
HoareSTFree.st)
(HasType (HoareSTFree.st_p @x0)
Prims.prop))
 

:pattern ((HoareSTFree.st_p @x0))
:qid typing_HoareSTFree.st_p))

:named typing_HoareSTFree.st_p))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.q; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(208,11-208,12); use=HoareSTFree.fst(208,11-208,12)
(forall ((@u0 Dummy_sort))
 (! (HasType (HoareSTFree.q @u0)
Prims.prop)
 

:pattern ((HoareSTFree.q @u0))
:qid typing_HoareSTFree.q))

:named typing_HoareSTFree.q))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name HoareSTFree.p; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(207,11-207,12); use=HoareSTFree.fst(207,11-207,12)
(forall ((@u0 Dummy_sort))
 (! (HasType (HoareSTFree.p @u0)
Prims.prop)
 

:pattern ((HoareSTFree.p @u0))
:qid typing_HoareSTFree.p))

:named typing_HoareSTFree.p))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name HoareSTFree.g; Namespace HoareSTFree
(assert (! (HasType Tm_refine_7ced4356b14a4fa4e21399a207133f67
Tm_type)
:named refinement_kinding_Tm_refine_7ced4356b14a4fa4e21399a207133f67))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name HoareSTFree.g; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(216,28-216,32); use=HoareSTFree.fst(216,28-216,32)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_7ced4356b14a4fa4e21399a207133f67)
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=HoareSTFree.fst(216,55-216,56); use=HoareSTFree.fst(216,55-216,56)
(Valid 
;; def=HoareSTFree.fst(216,55-216,56); use=HoareSTFree.fst(216,55-216,56)
(HoareSTFree.p Dummy_value)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_7ced4356b14a4fa4e21399a207133f67))
:qid refinement_interpretation_Tm_refine_7ced4356b14a4fa4e21399a207133f67))

:named refinement_interpretation_Tm_refine_7ced4356b14a4fa4e21399a207133f67))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7ced4356b14a4fa4e21399a207133f67
;;; Fact-ids: Name HoareSTFree.g; Namespace HoareSTFree
(assert (! (iff (Valid (Prims.hasEq Tm_refine_7ced4356b14a4fa4e21399a207133f67))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_7ced4356b14a4fa4e21399a207133f67))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named function_token_typing_Prims.prop))
;;;;;;;;;;;;;;;;Equation for Prims.prop
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (= Prims.prop
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf)
:named equation_Prims.prop))
;;;;;;;;;;;;;;;;Assumption: HoareSTFree.ST_axiom
;;; Fact-ids: Name HoareSTFree.ST_axiom; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(213,17-213,44); use=HoareSTFree.fst(213,17-213,44)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
HoareSTFree.st)

;; def=HoareSTFree.fst(213,27-213,33); use=HoareSTFree.fst(213,27-213,33)
(Valid 
;; def=HoareSTFree.fst(213,27-213,33); use=HoareSTFree.fst(213,27-213,33)
(HoareSTFree.st_p @x0)
)
)

;; def=HoareSTFree.fst(213,38-213,44); use=HoareSTFree.fst(213,38-213,44)
(Valid 
;; def=HoareSTFree.fst(213,38-213,44); use=HoareSTFree.fst(213,38-213,44)
(HoareSTFree.st_q @x0)
)
)
 
;;no pats
:qid assumption_HoareSTFree.ST_axiom))

:named assumption_HoareSTFree.ST_axiom))
(push) ;; push{2

; Starting query at HoareSTFree.fst(220,2-222,6)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   (forall (s: HoareSTFree.st) (x: Prims.unit) (s1: HoareSTFree.st).
;       s == s1 /\
;       ~(forall (pure_result: Prims.unit). Prims.squash HoareSTFree.p ==> ~(pure_result == x)) ==>
;       Prims.auto_squash HoareSTFree.p /\
;       (forall (x: Prims.unit) (s1: HoareSTFree.st).
;           (exists (x: Prims.squash HoareSTFree.p) (s1: HoareSTFree.st).
;               s1 == s1 /\
;               ~(Prims.auto_squash HoareSTFree.p /\
;                 (forall (any_result: Prims.unit). ~(any_result == x))) /\
;               Prims.squash HoareSTFree.q /\ HoareSTFree.st_p s1) ==>
;           Prims.squash HoareSTFree.q /\ HoareSTFree.st_q s1)) /\
;   (forall (s0: HoareSTFree.st) (x: Prims.unit) (s1: HoareSTFree.st).
;       (exists (x: Prims.unit) (s1: HoareSTFree.st).
;           s0 == s1 /\
;           ~(forall (pure_result: Prims.unit). Prims.squash HoareSTFree.p ==> ~(pure_result == x)) /\
;           (exists (x: Prims.unit) (s1: HoareSTFree.st).
;               (exists (x: Prims.squash HoareSTFree.p) (s1: HoareSTFree.st).
;                   s1 == s1 /\
;                   ~(Prims.auto_squash HoareSTFree.p /\
;                     (forall (any_result: Prims.unit). ~(any_result == x))) /\
;                   Prims.squash HoareSTFree.q /\ HoareSTFree.st_p s1) /\ HoareSTFree.st_p s1)) ==>
;       HoareSTFree.st_q s1)


; Context: While encoding a query
; While typechecking the top-level declaration `let test`

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

;; def=HoareSTFree.fst(72,2-73,69); use=HoareSTFree.fst(166,19-166,28)
(and 
;; def=HoareSTFree.fst(72,2-72,32); use=HoareSTFree.fst(166,19-166,28)
(forall ((@x1 Term))
 (! (implies (HasType @x1
HoareSTFree.st)

;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(220,2-222,6)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Prims.unit)
(HasType @x3
HoareSTFree.st)

;; def=HoareSTFree.fst(185,17-185,25); use=HoareSTFree.fst(220,2-222,6)
(= @x1
@x3)


;; def=Prims.fst(635,71-635,97); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(220,2-220,3)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=HoareSTFree.fst(216,55-216,56); use=HoareSTFree.fst(220,2-220,3)
(Valid 
;; def=HoareSTFree.fst(216,55-216,56); use=HoareSTFree.fst(220,2-220,3)
(HoareSTFree.p Dummy_value)
)
)

;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(= @x4
@x2)
)
)
 
;;no pats
:qid @query.3))
)
)

;; def=HoareSTFree.fst(61,12-61,70); use=HoareSTFree.fst(220,2-222,6)
(and 
;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(or label_1

;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(Valid 
;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(HoareSTFree.p Dummy_value)
)
)


;; def=HoareSTFree.fst(61,22-61,70); use=HoareSTFree.fst(220,2-222,6)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
Prims.unit)
(HasType @x5
HoareSTFree.st)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(220,2-222,6)
(exists ((@x6 Term) (@x7 Term))
 (! (and (HasType @x6
(Prims.squash (HoareSTFree.p Dummy_value)))
(HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(185,17-185,25); use=HoareSTFree.fst(220,2-222,6)
(= @x3
@x7)


;; def=Prims.fst(635,71-635,97); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(220,2-222,6)
(and 
;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)

;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(Valid 
;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(HoareSTFree.p Dummy_value)
)



;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(220,2-222,6)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Prims.unit)

;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(= @x8
@x6)
)
)
 
;;no pats
:qid @query.6))
)
)


;; def=HoareSTFree.fst(215,72-215,73); use=HoareSTFree.fst(221,2-221,3)
(Valid 
;; def=HoareSTFree.fst(215,72-215,73); use=HoareSTFree.fst(221,2-221,3)
(HoareSTFree.q Dummy_value)
)


;; def=HoareSTFree.fst(215,77-215,84); use=HoareSTFree.fst(221,2-221,3)
(Valid 
;; def=HoareSTFree.fst(215,77-215,84); use=HoareSTFree.fst(221,2-221,3)
(HoareSTFree.st_p @x5)
)
)
 
;;no pats
:qid @query.5))
)

;; def=HoareSTFree.fst(217,41-217,60); use=HoareSTFree.fst(222,2-222,3)
(and 
;; def=HoareSTFree.fst(217,48-217,49); use=HoareSTFree.fst(222,2-222,3)
(or label_2

;; def=HoareSTFree.fst(217,48-217,49); use=HoareSTFree.fst(222,2-222,3)
(Valid 
;; def=HoareSTFree.fst(217,48-217,49); use=HoareSTFree.fst(222,2-222,3)
(HoareSTFree.q Dummy_value)
)
)


;; def=HoareSTFree.fst(217,53-217,60); use=HoareSTFree.fst(222,2-222,3)
(or label_3

;; def=HoareSTFree.fst(217,53-217,60); use=HoareSTFree.fst(222,2-222,3)
(Valid 
;; def=HoareSTFree.fst(217,53-217,60); use=HoareSTFree.fst(222,2-222,3)
(HoareSTFree.st_q @x5)
)
)
)
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query.1))


;; def=HoareSTFree.fst(73,2-73,69); use=HoareSTFree.fst(166,19-166,28)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
HoareSTFree.st)
(HasType @x2
Prims.unit)
(HasType @x3
HoareSTFree.st)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(220,2-222,6)
(exists ((@x4 Term) (@x5 Term))
 (! (and (HasType @x4
Prims.unit)
(HasType @x5
HoareSTFree.st)

;; def=HoareSTFree.fst(185,17-185,25); use=HoareSTFree.fst(220,2-222,6)
(= @x1
@x5)


;; def=Prims.fst(635,71-635,97); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(220,2-220,3)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=HoareSTFree.fst(216,55-216,56); use=HoareSTFree.fst(220,2-220,3)
(Valid 
;; def=HoareSTFree.fst(216,55-216,56); use=HoareSTFree.fst(220,2-220,3)
(HoareSTFree.p Dummy_value)
)
)

;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(= @x6
@x4)
)
)
 
;;no pats
:qid @query.9))
)


;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(220,2-222,6)
(exists ((@x6 Term) (@x7 Term))
 (! (and (HasType @x6
Prims.unit)
(HasType @x7
HoareSTFree.st)

;; def=HoareSTFree.fst(65,17-65,67); use=HoareSTFree.fst(220,2-222,6)
(exists ((@x8 Term) (@x9 Term))
 (! (and (HasType @x8
(Prims.squash (HoareSTFree.p Dummy_value)))
(HasType @x9
HoareSTFree.st)

;; def=HoareSTFree.fst(185,17-185,25); use=HoareSTFree.fst(220,2-222,6)
(= @x5
@x9)


;; def=Prims.fst(635,71-635,97); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(220,2-222,6)
(and 
;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)

;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(Valid 
;; def=HoareSTFree.fst(215,22-215,23); use=HoareSTFree.fst(221,4-221,6)
(HoareSTFree.p Dummy_value)
)



;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(220,2-222,6)
(forall ((@x10 Term))
 (! (implies (HasType @x10
Prims.unit)

;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(not 
;; def=Prims.fst(635,86-635,95); use=HoareSTFree.fst(220,2-222,6)
(= @x10
@x8)
)
)
 
;;no pats
:qid @query.12))
)
)


;; def=HoareSTFree.fst(215,72-215,73); use=HoareSTFree.fst(221,2-221,3)
(Valid 
;; def=HoareSTFree.fst(215,72-215,73); use=HoareSTFree.fst(221,2-221,3)
(HoareSTFree.q Dummy_value)
)


;; def=HoareSTFree.fst(215,77-215,84); use=HoareSTFree.fst(221,2-221,3)
(Valid 
;; def=HoareSTFree.fst(215,77-215,84); use=HoareSTFree.fst(221,2-221,3)
(HoareSTFree.st_p @x7)
)
)
 
;;no pats
:qid @query.11))


;; def=HoareSTFree.fst(217,77-217,84); use=HoareSTFree.fst(222,2-222,3)
(Valid 
;; def=HoareSTFree.fst(217,77-217,84); use=HoareSTFree.fst(222,2-222,3)
(HoareSTFree.st_p @x3)
)
)
 
;;no pats
:qid @query.10))
)
 
;;no pats
:qid @query.8))
)

;; def=HoareSTFree.fst(219,52-219,59); use=HoareSTFree.fst(220,2-222,6)
(or label_4

;; def=HoareSTFree.fst(219,52-219,59); use=HoareSTFree.fst(220,2-222,6)
(Valid 
;; def=HoareSTFree.fst(219,52-219,59); use=HoareSTFree.fst(220,2-222,6)
(HoareSTFree.st_q @x3)
)
)
)
 
;;no pats
:qid @query.7))
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
; QUERY ID: (HoareSTFree.test, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_HoareSTFree.ST_axiom

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test


; <Start encoding let test>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun HoareSTFree.test (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun HoareSTFree.test@tok () Term)

; </end encoding let test>


; encoding sigelt type HoareSTFree.step_result


; <Start encoding type HoareSTFree.step_result>

;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.step_result (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun HoareSTFree.step_result@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun HoareSTFree.Step (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Step_st (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Step_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Step_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Step_q (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun HoareSTFree.Step__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: HoareSTFree.Step
(declare-fun HoareSTFree.Step@tok () Term)
;;;;;;;;;;;;;;;;_2: m st a p q -> step_result st a
(declare-fun Tm_arrow_42d478a42022df8ac907d22796a4ae33 () Term)

; <start constructor HoareSTFree.step_result>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.step_result ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
1488)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(HoareSTFree.step_result @x0
@x1))
 
;;no pats
:qid is-HoareSTFree.step_result))))

; </end constructor HoareSTFree.step_result>


; <start constructor HoareSTFree.Step>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-HoareSTFree.Step ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
1495)
(= __@x0
(HoareSTFree.Step (HoareSTFree.Step_st __@x0)
(HoareSTFree.Step_a __@x0)
(HoareSTFree.Step_p __@x0)
(HoareSTFree.Step_q __@x0)
(HoareSTFree.Step__2 __@x0)))))

; </end constructor HoareSTFree.Step>


; </end encoding type HoareSTFree.step_result>


; encoding sigelt val HoareSTFree.uu___is_Step


; <Start encoding val HoareSTFree.uu___is_Step>

(declare-fun HoareSTFree.uu___is_Step (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result st a -> Prims.bool
(declare-fun Tm_arrow_5ff9775c886096c63456cea5e94e63ca () Term)
(declare-fun HoareSTFree.uu___is_Step@tok () Term)

; </end encoding val HoareSTFree.uu___is_Step>


; encoding sigelt let uu___is_Step


; <Skipped let uu___is_Step/>


; encoding sigelt val HoareSTFree.__proj__Step__item__p


; <Start encoding val HoareSTFree.__proj__Step__item__p>

(declare-fun HoareSTFree.__proj__Step__item__p (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result st a -> mpre st
(declare-fun Tm_arrow_ab131e220e7c4173dfffe13e98c4cb91 () Term)
(declare-fun HoareSTFree.__proj__Step__item__p@tok () Term)

; </end encoding val HoareSTFree.__proj__Step__item__p>


; encoding sigelt let __proj__Step__item__p


; <Skipped let __proj__Step__item__p/>


; encoding sigelt val HoareSTFree.__proj__Step__item__q


; <Start encoding val HoareSTFree.__proj__Step__item__q>

(declare-fun HoareSTFree.__proj__Step__item__q (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result st a -> mpost st a
(declare-fun Tm_arrow_44a2f46483f8e05dc64d12d7ddfe2304 () Term)
(declare-fun HoareSTFree.__proj__Step__item__q@tok () Term)

; </end encoding val HoareSTFree.__proj__Step__item__q>


; encoding sigelt let __proj__Step__item__q


; <Skipped let __proj__Step__item__q/>


; encoding sigelt val HoareSTFree.__proj__Step__item___2


; <Start encoding val HoareSTFree.__proj__Step__item___2>

(declare-fun HoareSTFree.__proj__Step__item___2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result st a -> m st a projectee.p projectee.q
(declare-fun Tm_arrow_458df88e4a8a97c231d53d9424fadad3 () Term)
(declare-fun HoareSTFree.__proj__Step__item___2@tok () Term)

; </end encoding val HoareSTFree.__proj__Step__item___2>


; encoding sigelt let __proj__Step__item___2


; <Skipped let __proj__Step__item___2/>


; encoding sigelt let weaker_p


; <Start encoding let weaker_p>

(declare-fun HoareSTFree.weaker_p (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;p0: mpre st -> p1: mpre st -> s0: st -> s1: st -> Prims.logical
(declare-fun Tm_arrow_fb586f415cea512dff0297e15eb10507 () Term)
(declare-fun HoareSTFree.weaker_p@tok () Term)

; </end encoding let weaker_p>


; encoding sigelt let stronger_q


; <Start encoding let stronger_q>

(declare-fun HoareSTFree.stronger_q (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;q0: mpost st a -> q1: mpost st a -> s0: st -> s1: st -> Prims.logical
(declare-fun Tm_arrow_0bea98576f47f6392dfdaec3eed317e2 () Term)
(declare-fun HoareSTFree.stronger_q@tok () Term)

; </end encoding let stronger_q>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(234,5-234,16); use=HoareSTFree.fst(234,5-234,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT HoareSTFree.step_result@tok
@x0)
@x1)
(HoareSTFree.step_result @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT HoareSTFree.step_result@tok
@x0)
@x1))

:pattern ((HoareSTFree.step_result @x0
@x1))
:qid token_correspondence_HoareSTFree.step_result@tok))

:named token_correspondence_HoareSTFree.step_result@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)
(HoareSTFree.step_result @x6
@x7))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)
(HoareSTFree.step_result @x6
@x7)))
:qid subterm_ordering_HoareSTFree.Step))

:named subterm_ordering_HoareSTFree.Step))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.Step_st (HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
@x0)
 

:pattern ((HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_HoareSTFree.Step_st))

:named projection_inverse_HoareSTFree.Step_st))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.Step_q (HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
@x3)
 

:pattern ((HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_HoareSTFree.Step_q))

:named projection_inverse_HoareSTFree.Step_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.Step_p (HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
@x2)
 

:pattern ((HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_HoareSTFree.Step_p))

:named projection_inverse_HoareSTFree.Step_p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.Step_a (HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
@x1)
 

:pattern ((HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_HoareSTFree.Step_a))

:named projection_inverse_HoareSTFree.Step_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (HoareSTFree.Step__2 (HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
@x4)
 

:pattern ((HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_HoareSTFree.Step__2))

:named projection_inverse_HoareSTFree.Step__2))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! (is-Tm_arrow (PreType HoareSTFree.step_result@tok))
:named pre_kinding_HoareSTFree.step_result@tok))
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! (and (IsTotFun HoareSTFree.step_result@tok)

;; def=HoareSTFree.fst(234,5-234,16); use=HoareSTFree.fst(234,5-234,16)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT HoareSTFree.step_result@tok
@x0))
 

:pattern ((ApplyTT HoareSTFree.step_result@tok
@x0))
:qid kinding_HoareSTFree.step_result@tok))


;; def=HoareSTFree.fst(234,5-234,16); use=HoareSTFree.fst(234,5-234,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (HoareSTFree.step_result @x0
@x1)
Tm_type))
 

:pattern ((HoareSTFree.step_result @x0
@x1))
:qid kinding_HoareSTFree.step_result@tok.1))
)
:named kinding_HoareSTFree.step_result@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(234,5-234,16); use=HoareSTFree.fst(234,5-234,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(HoareSTFree.step_result @x2
@x3))
(and (is-HoareSTFree.Step @x1)
(= @x2
(HoareSTFree.Step_st @x1))
(= @x3
(HoareSTFree.Step_a @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(HoareSTFree.step_result @x2
@x3)))
:qid fuel_guarded_inversion_HoareSTFree.step_result))

:named fuel_guarded_inversion_HoareSTFree.step_result))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! (= 1489
(Term_constr_id HoareSTFree.step_result@tok))
:named fresh_token_HoareSTFree.step_result@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpre @x1))
(HasTypeFuel @u0
@x4
(HoareSTFree.mpost @x1
@x2))
(HasTypeFuel @u0
@x5
(HoareSTFree.m @x1
@x2
@x3
@x4)))
(HasTypeFuel @u0
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)
(HoareSTFree.step_result @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)
(HoareSTFree.step_result @x1
@x2)))
:qid data_typing_intro_HoareSTFree.Step@tok))

:named data_typing_intro_HoareSTFree.Step@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)
(HoareSTFree.step_result @x6
@x7))
(and (HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x3
(HoareSTFree.mpre @x6))
(HasTypeFuel @u0
@x4
(HoareSTFree.mpost @x6
@x7))
(HasTypeFuel @u0
@x5
(HoareSTFree.m @x6
@x7
@x3
@x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(HoareSTFree.Step @x1
@x2
@x3
@x4
@x5)
(HoareSTFree.step_result @x6
@x7)))
:qid data_elim_HoareSTFree.Step))

:named data_elim_HoareSTFree.Step))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(234,5-234,16); use=HoareSTFree.fst(234,5-234,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= 1488
(Term_constr_id (HoareSTFree.step_result @x0
@x1)))
 

:pattern ((HoareSTFree.step_result @x0
@x1))
:qid constructor_distinct_HoareSTFree.step_result))

:named constructor_distinct_HoareSTFree.step_result))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(235,4-235,8); use=HoareSTFree.fst(235,4-235,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 1495
(Term_constr_id (HoareSTFree.Step @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((HoareSTFree.Step @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_HoareSTFree.Step))

:named constructor_distinct_HoareSTFree.Step))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name HoareSTFree.step_result; Namespace HoareSTFree; Name HoareSTFree.Step; Namespace HoareSTFree
(assert (! 
;; def=HoareSTFree.fst(234,5-234,16); use=HoareSTFree.fst(234,5-234,16)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(HoareSTFree.step_result @x2
@x3))
(= (HoareSTFree.step_result @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(HoareSTFree.step_result @x2
@x3)))
:qid HoareSTFree_pretyping_e9bd4826d0a0a7b3c497834fb5c0b66a))

:named HoareSTFree_pretyping_e9bd4826d0a0a7b3c497834fb5c0b66a))
(push) ;; push{2

; Starting query at HoareSTFree.fst(258,4-265,37)

(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)






(declare-fun Non_total_Tm_arrow_24c87e74f3c509971de73d07c68e4c26 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x1
@x0))
(HasType @x4
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x2
@x1
@x0)))
(HasType (Non_total_Tm_arrow_24c87e74f3c509971de73d07c68e4c26 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_24c87e74f3c509971de73d07c68e4c26 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_24c87e74f3c509971de73d07c68e4c26))

:named non_total_function_typing_Non_total_Tm_arrow_24c87e74f3c509971de73d07c68e4c26))

(declare-fun Non_total_Tm_arrow_d150d76707ce46f2779b66e89c7dd807 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(108,7-108,36); use=HoareSTFree.fst(265,6-265,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.pure_pre)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
(HasType (Non_total_Tm_arrow_d150d76707ce46f2779b66e89c7dd807 @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_d150d76707ce46f2779b66e89c7dd807 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_d150d76707ce46f2779b66e89c7dd807))

:named non_total_function_typing_Non_total_Tm_arrow_d150d76707ce46f2779b66e89c7dd807))
(declare-fun Tm_refine_d9455d40e720d2f1e39450f68b416fa6 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(258,4-265,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))

:named refinement_kinding_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(258,4-265,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x2
@x3)
@x2))

;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x4
@x5)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))

:named refinement_interpretation_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d9455d40e720d2f1e39450f68b416fa6
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(258,4-265,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_d9455d40e720d2f1e39450f68b416fa6))

:named haseqTm_refine_d9455d40e720d2f1e39450f68b416fa6))

; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (f: HoareSTFree.m st a p q).
;   (*  - Could not prove post-condition
; *)
;   forall (s0: st).
;     (*  - Could not prove post-condition
; *)
;     forall (p: Prims.pure_post (HoareSTFree.step_result st a & st)).
;       p s0 /\
;       (forall (a: _: (HoareSTFree.step_result st a & st){p s0}).
;           (let r, s1 = a in
;             (let HoareSTFree.Step #_ #_ #p_next #q_next _ = r in
;               (p s0 ==> p_next s1) /\
;               (forall (x: a) (s_final: st). q_next s1 x s_final ==> q s0 x s_final))
;             <:
;             Type0) ==>
;           p a) ==>
;       (forall (k: Prims.pure_post (HoareSTFree.step_result st a & st)).
;           (forall (x: HoareSTFree.step_result st a & st). {:pattern Prims.guard_free (k x)}
;               p x ==> k x) ==>
;           (~(Ret? f) /\ ~(Act? f) /\ ~(Weaken? f) /\ ~(Strengthen? f) ==> Prims.l_False) /\
;           (forall (b: Type) (b: HoareSTFree.mpost st b) (b: b).
;               f == HoareSTFree.Ret b ==>
;               (forall (any_result: HoareSTFree.step_result st a & st).
;                   any_result == (HoareSTFree.Step f, s0) ==>
;                   (forall (return_val: HoareSTFree.step_result st a & st).
;                       return_val == any_result ==> k return_val))) /\
;           (~(Ret? f) ==>
;             (forall (b: Type0)
;                 (b: HoareSTFree.mpre st)
;                 (b: HoareSTFree.mpost st b)
;                 (b: (s0: st -> Prims.Pure (b & st)))
;                 (b: Type)
;                 (b: (_: b -> HoareSTFree.mpre st))
;                 (b: (_: b -> HoareSTFree.mpost st b))
;                 (b: (x: b -> FStar.Pervasives.Dv (HoareSTFree.m st b (b x) (b x)))).
;                 f == HoareSTFree.Act b b ==>
;                 b s0 /\
;                 (forall (pure_result: b & st).
;                     (let x, s1 = pure_result in
;                       b s0 x s1) ==>
;                     b s0 == pure_result ==>
;                     (forall (b: b) (b: st).
;                         b s0 == (b, b) ==>
;                         (forall (any_result: HoareSTFree.m st b (b b) (b b)).
;                             b == a /\
;                             (forall (return_val: HoareSTFree.step_result st a).
;                                 return_val == HoareSTFree.Step any_result ==>
;                                 return_val == HoareSTFree.Step any_result ==>
;                                 (forall (return_val: HoareSTFree.step_result st a).
;                                     return_val == return_val ==>
;                                     (forall (return_val: Type).
;                                         return_val == HoareSTFree.step_result st a ==>
;                                         (forall (any_result: HoareSTFree.step_result st a & st).
;                                             (return_val, b) == any_result ==>
;                                             (forall (return_val: HoareSTFree.step_result st a & st).
;                                                 return_val == (return_val, b) ==>
;                                                 return_val == (return_val, b) ==>
;                                                 (forall (return_val:
;                                                     HoareSTFree.step_result st a & st).
;                                                     return_val == return_val ==> k return_val)))))))
;                     ))) /\
;             (~(Act? f) ==>
;               (forall (b: Type)
;                   (b: HoareSTFree.mpre st)
;                   (b: HoareSTFree.mpost st b)
;                   (b: HoareSTFree.mpre st)
;                   (b: HoareSTFree.mpost st b)
;                   (b:
;                   Prims.squash ((forall (s: st). b s ==> b s) /\
;                       (forall (s0: st) (x: b) (s1: st). b s0 ==> b s0 x s1 ==> b s0 x s1)))
;                   (b: HoareSTFree.m st b b b).
;                   f == HoareSTFree.Weaken b ==>
;                   b == a /\
;                   (forall (return_val: HoareSTFree.step_result st a).
;                       return_val == HoareSTFree.Step b ==>
;                       (forall (any_result: HoareSTFree.step_result st a & st).
;                           any_result == (HoareSTFree.Step b, s0) ==>
;                           (forall (return_val: HoareSTFree.step_result st a & st).
;                               return_val == any_result ==> k return_val)))) /\
;               (~(Weaken? f) ==>
;                 (forall (b: Type)
;                     (b: Prims.pure_pre)
;                     (b: HoareSTFree.mpre st)
;                     (b: HoareSTFree.mpost st b)
;                     (b: (_: Prims.squash b -> FStar.Pervasives.Dv (HoareSTFree.m st b b b))).
;                     f == HoareSTFree.Strengthen b ==>
;                     Prims.auto_squash b /\
;                     (forall (any_result: Prims.unit) (any_result: HoareSTFree.m st b b b).
;                         b == a /\
;                         (forall (return_val: HoareSTFree.step_result st a).
;                             return_val == HoareSTFree.Step any_result ==>
;                             return_val == HoareSTFree.Step any_result ==>
;                             (forall (return_val: HoareSTFree.step_result st a).
;                                 return_val == return_val ==>
;                                 (forall (return_val: Type).
;                                     return_val == HoareSTFree.step_result st a ==>
;                                     (forall (any_result: HoareSTFree.step_result st a & st).
;                                         (return_val, s0) == any_result ==>
;                                         (forall (return_val: HoareSTFree.step_result st a & st).
;                                             return_val == (return_val, s0) ==>
;                                             return_val == (return_val, s0) ==>
;                                             (forall (return_val: HoareSTFree.step_result st a & st).
;                                                 return_val == return_val ==> k return_val)))))))))))
;       )


; Context: While encoding a query
; While typechecking the top-level declaration `let step`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3)))

;; def=dummy(0,0-0,0); use=HoareSTFree.fst(258,4-265,37)
(forall ((@x5 Term))
 (! (implies (HasType @x5
@x0)

;; def=Prims.fst(406,51-406,91); use=HoareSTFree.fst(258,4-265,37)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post (FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0)))

;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x2
@x5)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=HoareSTFree.fst(258,4-265,37)
(forall ((@x7 Term))
 (! (implies (and (or label_1
(HasType @x7
(Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x5)))
(let ((@lb8 @x7))
(let ((@lb9 (FStar.Pervasives.Native.Mktuple2__1 @lb8)))

;; def=HoareSTFree.fst(256,17-257,42); use=HoareSTFree.fst(259,4-265,37)
(and (implies 
;; def=HoareSTFree.fst(242,53-242,58); use=HoareSTFree.fst(258,4-265,37)
(Valid 
;; def=HoareSTFree.fst(242,53-242,58); use=HoareSTFree.fst(258,4-265,37)
(ApplyTT @x2
@x5)
)


;; def=HoareSTFree.fst(242,63-242,68); use=HoareSTFree.fst(258,4-265,37)
(or label_2

;; def=HoareSTFree.fst(242,63-242,68); use=HoareSTFree.fst(258,4-265,37)
(Valid 
;; def=HoareSTFree.fst(242,63-242,68); use=HoareSTFree.fst(258,4-265,37)
(ApplyTT (HoareSTFree.Step_p @lb9)
(FStar.Pervasives.Native.Mktuple2__2 @lb8))
)
)
)

;; def=HoareSTFree.fst(246,2-246,64); use=HoareSTFree.fst(258,4-265,37)
(forall ((@x10 Term) (@x11 Term))
 (! (implies (and (HasType @x10
@x1)
(HasType @x11
@x0)

;; def=HoareSTFree.fst(246,29-246,44); use=HoareSTFree.fst(258,4-265,37)
(Valid 
;; def=HoareSTFree.fst(246,29-246,44); use=HoareSTFree.fst(258,4-265,37)
(ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Step_q @lb9)
(FStar.Pervasives.Native.Mktuple2__2 @lb8))
@x10)
@x11)
)
)

;; def=HoareSTFree.fst(246,49-246,64); use=HoareSTFree.fst(258,4-265,37)
(or label_3

;; def=HoareSTFree.fst(246,49-246,64); use=HoareSTFree.fst(258,4-265,37)
(Valid 
;; def=HoareSTFree.fst(246,49-246,64); use=HoareSTFree.fst(258,4-265,37)
(ApplyTT (ApplyTT (ApplyTT @x3
@x5)
@x10)
@x11)
)
)
)
 
;;no pats
:qid @query.4))
)
)))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=HoareSTFree.fst(258,4-265,37)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=HoareSTFree.fst(258,4-265,37)
(ApplyTT @x6
@x7)
)
)
 

:pattern (
;; def=FStar.Pervasives.fsti(409,54-409,57); use=HoareSTFree.fst(258,4-265,37)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=HoareSTFree.fst(258,4-265,37)
(ApplyTT @x6
@x7)
)
)
:qid @query.3))
)

;; def=Prims.fst(402,2-402,97); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0)))

;; def=Prims.fst(402,2-402,97); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x8 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=Prims.fst(402,73-402,79); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x6
@x8)
)


;; def=Prims.fst(402,84-402,87); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=Prims.fst(402,84-402,87); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x7
@x8)
)
)
 :weight 0


:pattern ((ApplyTT @x7
@x8))
:qid @query.6))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(259,4-265,37)
(and (implies 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(and 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
)


;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)


;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
)


;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Strengthen @x0
@x1
@x2
@x3
@x4))
)
)

label_4)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpost @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
@x8)

;; def=HoareSTFree.fst(250,60-260,11); use=HoareSTFree.fst(259,10-260,11)
(= @x4
(HoareSTFree.Ret @x0
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=HoareSTFree.fst(260,15-260,25); use=HoareSTFree.fst(260,15-260,25)
(= @x11
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
(HoareSTFree.Step @x0
@x1
@x2
@x3
@x4)
@x5))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x12
@x11)
)

;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x7
@x12)
)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(259,4-265,37)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
)


;; def=Prims.fst(389,2-389,39); use=HoareSTFree.fst(259,4-265,37)
(and 
;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(HoareSTFree.mpost @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_5aa756f54d37ec04a48bdaa4d086d414 @x10
@x8
@x0
@x9))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(Tm_arrow_8b71441b70a86d228c0e538267b50194 @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(Tm_arrow_a0e46eb89e9eded1de46d98960f169fd @x12
@x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Non_total_Tm_arrow_24c87e74f3c509971de73d07c68e4c26 @x8
@x0
@x12
@x13
@x14))

;; def=HoareSTFree.fst(250,60-261,15); use=HoareSTFree.fst(259,10-261,15)
(= @x4
(HoareSTFree.Act @x0
@x8
@x9
@x10
@x11
@x12
@x13
@x14
@x15))
)

;; def=Prims.fst(441,29-441,97); use=HoareSTFree.fst(262,18-262,21)
(and 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(262,18-262,21)
(or label_5

;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(262,18-262,21)
(Valid 
;; def=HoareSTFree.fst(97,32-97,40); use=HoareSTFree.fst(262,18-262,21)
(ApplyTT @x9
@x5)
)
)


;; def=Prims.fst(441,36-441,97); use=HoareSTFree.fst(262,18-262,21)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(FStar.Pervasives.Native.tuple2 @x8
@x0))
(let ((@lb17 @x16))

;; def=HoareSTFree.fst(97,57-97,68); use=HoareSTFree.fst(262,18-262,21)
(Valid 
;; def=HoareSTFree.fst(97,57-97,68); use=HoareSTFree.fst(262,18-262,21)
(ApplyTT (ApplyTT (ApplyTT @x10
@x5)
(FStar.Pervasives.Native.Mktuple2__1 @lb17))
(FStar.Pervasives.Native.Mktuple2__2 @lb17))
)
)

;; def=HoareSTFree.fst(262,10-262,24); use=HoareSTFree.fst(262,10-262,24)
(= (ApplyTT @x11
@x5)
@x16)
)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x17 Term))
 (! (implies (HasType @x17
@x8)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
@x0)

;; def=HoareSTFree.fst(262,10-262,15); use=HoareSTFree.fst(262,10-262,15)
(= (ApplyTT @x11
@x5)
(FStar.Pervasives.Native.Mktuple2 @x8
@x0
@x17
@x18))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x19 Term))
 (! (implies (HasType @x19
(HoareSTFree.m @x0
@x12
(ApplyTT @x13
@x17)
(ApplyTT @x14
@x17)))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(259,4-265,37)
(and 
;; def=HoareSTFree.fst(250,22-261,15); use=HoareSTFree.fst(263,6-263,16)
(or label_6

;; def=HoareSTFree.fst(250,22-261,15); use=HoareSTFree.fst(263,6-263,16)
(= @x12
@x1)
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(HoareSTFree.step_result @x0
@x1))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x20
(HoareSTFree.Step @x0
@x12
(ApplyTT @x13
@x17)
(ApplyTT @x14
@x17)
@x19))


;; def=HoareSTFree.fst(252,9-263,16); use=HoareSTFree.fst(259,4-265,37)
(= @x20
(HoareSTFree.Step @x0
@x12
(ApplyTT @x13
@x17)
(ApplyTT @x14
@x17)
@x19))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(HoareSTFree.step_result @x0
@x1))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x21
@x20)
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
Tm_type)

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x22
(HoareSTFree.step_result @x0
@x1))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=HoareSTFree.fst(252,8-263,20); use=HoareSTFree.fst(259,4-265,37)
(= (FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
@x21
@x18)
@x23)
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x24 Term))
 (! (implies (and (HasType @x24
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x24
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
@x21
@x18))


;; def=HoareSTFree.fst(252,8-263,20); use=HoareSTFree.fst(259,4-265,37)
(= @x24
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
@x21
@x18))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x25
@x24)
)

;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x7
@x25)
)
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
 
;;no pats
:qid @query.26))
)
 
;;no pats
:qid @query.25))
)
 
;;no pats
:qid @query.24))
)
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
 
;;no pats
:qid @query.20))
)
)
 
;;no pats
:qid @query.19))
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
 
;;no pats
:qid @query.13))
)
 
;;no pats
:qid @query.12))

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(259,4-265,37)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Act @x0
@x1
@x2
@x3
@x4))
)


;; def=Prims.fst(389,2-389,39); use=HoareSTFree.fst(259,4-265,37)
(and 
;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(HoareSTFree.mpost @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(HoareSTFree.mpost @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(Tm_refine_8fb012c82b6116d290a3f8671988cb15 @x0
@x11
@x9
@x8
@x10
@x12))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(HoareSTFree.m @x0
@x8
@x9
@x10))

;; def=HoareSTFree.fst(250,60-264,14); use=HoareSTFree.fst(259,10-264,14)
(= @x4
(HoareSTFree.Weaken @x0
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(259,4-265,37)
(and 
;; def=HoareSTFree.fst(250,22-264,14); use=HoareSTFree.fst(264,18-264,24)
(or label_7

;; def=HoareSTFree.fst(250,22-264,14); use=HoareSTFree.fst(264,18-264,24)
(= @x8
@x1)
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(HoareSTFree.step_result @x0
@x1))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x15
(HoareSTFree.Step @x0
@x8
@x9
@x10
@x14))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=HoareSTFree.fst(264,18-264,28); use=HoareSTFree.fst(264,18-264,28)
(= @x16
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
(HoareSTFree.Step @x0
@x8
@x9
@x10
@x14)
@x5))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x17
@x16)
)

;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x7
@x17)
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
 
;;no pats
:qid @query.31))
)
 
;;no pats
:qid @query.30))

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(259,4-265,37)
(not 
;; def=HoareSTFree.fst(250,60-250,61); use=HoareSTFree.fst(259,10-259,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Weaken @x0
@x1
@x2
@x3
@x4))
)


;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Prims.pure_pre)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(HoareSTFree.mpost @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Non_total_Tm_arrow_d150d76707ce46f2779b66e89c7dd807 @x9
@x0
@x8
@x10
@x11))

;; def=HoareSTFree.fst(250,60-265,18); use=HoareSTFree.fst(259,10-265,18)
(= @x4
(HoareSTFree.Strengthen @x0
@x8
@x9
@x10
@x11
@x12))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(259,4-265,37)
(and 
;; def=Prims.fst(413,107-413,108); use=HoareSTFree.fst(265,30-265,32)
(or label_8

;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x9
)
)


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Prims.unit)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(HoareSTFree.m @x0
@x8
@x10
@x11))

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(259,4-265,37)
(and 
;; def=HoareSTFree.fst(250,22-265,18); use=HoareSTFree.fst(265,22-265,33)
(or label_9

;; def=HoareSTFree.fst(250,22-265,18); use=HoareSTFree.fst(265,22-265,33)
(= @x8
@x1)
)


;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(HoareSTFree.step_result @x0
@x1))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x15
(HoareSTFree.Step @x0
@x8
@x10
@x11
@x14))


;; def=HoareSTFree.fst(252,9-265,33); use=HoareSTFree.fst(259,4-265,37)
(= @x15
(HoareSTFree.Step @x0
@x8
@x10
@x11
@x14))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(HoareSTFree.step_result @x0
@x1))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x16
@x15)
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x17
(HoareSTFree.step_result @x0
@x1))
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=HoareSTFree.fst(252,8-265,37); use=HoareSTFree.fst(259,4-265,37)
(= (FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
@x16
@x5)
@x18)
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x19
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
@x16
@x5))


;; def=HoareSTFree.fst(252,8-265,37); use=HoareSTFree.fst(259,4-265,37)
(= @x19
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
@x16
@x5))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(259,4-265,37)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(259,4-265,37)
(= @x20
@x19)
)

;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(Valid 
;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(259,4-265,37)
(ApplyTT @x7
@x20)
)
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
 
;;no pats
:qid @query.49))
)
 
;;no pats
:qid @query.48))
)
 
;;no pats
:qid @query.47))
)
)
 
;;no pats
:qid @query.46))
)
 
;;no pats
:qid @query.45))
)
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
 
;;no pats
:qid @query.40))
))
))
))
)
 
;;no pats
:qid @query.5))
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
; QUERY ID: (HoareSTFree.step, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_HoareSTFree.Act, data_elim_HoareSTFree.Ret, data_elim_HoareSTFree.Strengthen, data_elim_HoareSTFree.Weaken, disc_equation_HoareSTFree.Act, disc_equation_HoareSTFree.Ret, disc_equation_HoareSTFree.Strengthen, disc_equation_HoareSTFree.Weaken, fuel_guarded_inversion_HoareSTFree.m, interpretation_Tm_abs_90afe3918a255333b80d7a5b53bb8b98, interpretation_Tm_abs_b5422111c78eed395d177884f9f544e8, interpretation_Tm_abs_e801ea450b6a9c23d60355e4509dfc47, l_and-interp, l_quant_interp_60fb8ce20e2a4e5b12398df686d48be5, l_quant_interp_a804c31f2f9725925c30b9038cb69485, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_HoareSTFree.Step_p, projection_inverse_HoareSTFree.Step_q, refinement_interpretation_Tm_refine_8fb012c82b6116d290a3f8671988cb15, refinement_interpretation_Tm_refine_d9455d40e720d2f1e39450f68b416fa6

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let step


; <Start encoding let step>

(declare-fun HoareSTFree.step (Term Term Term Term Term) Term)
(declare-fun Non_total_Tm_arrow_f6b3fdf5232737e339dffb547d9f407b (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;f: m st a p q -> s0: st -> FStar.Pervasives.Div (step_result st a & st)
(declare-fun Tm_arrow_2875e6b8696cd349c14499ec555c4a84 () Term)
(declare-fun HoareSTFree.step@tok () Term)

;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_HoareSTFree_1566 (Term Term Term Term Term) Term)

; </end encoding let step>

(push) ;; push{2

; Starting query at HoareSTFree.fst(275,4-279,14)

(declare-fun HoareSTFree.run (Term Term Term Term Term) Term)
(declare-fun Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(271,7-272,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1)))
(HasType (Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15 @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15 @x0
@x1
@x2
@x3)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15))

:named non_total_function_typing_Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15))
;;;;;;;;;;;;;;;;f: m st a p q -> s0: st -> FStar.Pervasives.Div (a & st)
(declare-fun Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b
Tm_type)
:named kinding_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))
:qid HoareSTFree_pre_typing_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))

:named HoareSTFree_pre_typing_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b)
(and 
;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2))
(HasType @x5
(HoareSTFree.m @x1
@x2
@x3
@x4)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15 @x1
@x2
@x3
@x4)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b.1))

(IsTotFun @x0)

;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b.2))


;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
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
:qid HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b.3))


;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b.4))


;; def=HoareSTFree.fst(270,14-272,16); use=HoareSTFree.fst(270,17-272,16)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
Tm_type)
(HasType @x3
(HoareSTFree.mpre @x1))
(HasType @x4
(HoareSTFree.mpost @x1
@x2)))
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
:qid HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))
:qid HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))

:named HoareSTFree_interpretation_Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))
(declare-fun HoareSTFree.run@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(270,8-270,11); use=HoareSTFree.fst(270,8-270,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.run@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(HoareSTFree.run @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.run@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_HoareSTFree.run))

:named token_correspondence_HoareSTFree.run))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(270,8-270,11); use=HoareSTFree.fst(270,8-270,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType HoareSTFree.run@tok
Tm_arrow_89e3a05ad3cae8d40aefe47a97f3176b))

;; def=HoareSTFree.fst(270,8-270,11); use=HoareSTFree.fst(270,8-270,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT HoareSTFree.run@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(HoareSTFree.run @x1
@x2
@x3
@x4
@x5))
 

:pattern ((HoareSTFree.run @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_HoareSTFree.run.1))
)
 

:pattern ((ApplyTT @x0
HoareSTFree.run@tok))
:qid function_token_typing_HoareSTFree.run))

:named function_token_typing_HoareSTFree.run))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=HoareSTFree.fst(270,8-270,11); use=HoareSTFree.fst(270,8-270,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3)))
(HasType (HoareSTFree.run @x0
@x1
@x2
@x3
@x4)
(Non_total_Tm_arrow_1da82a6d31950b3744534b79a9684e15 @x0
@x1
@x2
@x3)))
 

:pattern ((HoareSTFree.run @x0
@x1
@x2
@x3
@x4))
:qid typing_HoareSTFree.run))

:named typing_HoareSTFree.run))
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_d9455d40e720d2f1e39450f68b416fa6 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))

:named refinement_kinding_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(275,4-279,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x2
@x3)
@x2))

;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(278,23-278,27)
(Valid 
;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(278,23-278,27)
(ApplyTT @x4
@x5)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))

:named refinement_interpretation_Tm_refine_d9455d40e720d2f1e39450f68b416fa6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d9455d40e720d2f1e39450f68b416fa6
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 (HoareSTFree.step_result @x0
@x1)
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_d9455d40e720d2f1e39450f68b416fa6))

:named haseqTm_refine_d9455d40e720d2f1e39450f68b416fa6))
(declare-fun Tm_refine_999f45a228b1b0edc1149cf1d683da61 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_999f45a228b1b0edc1149cf1d683da61))

:named refinement_kinding_Tm_refine_999f45a228b1b0edc1149cf1d683da61))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(275,4-279,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 @x2
@x3))

;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(279,6-279,9)
(Valid 
;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(279,6-279,9)
(ApplyTT @x4
@x5)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_999f45a228b1b0edc1149cf1d683da61))

:named refinement_interpretation_Tm_refine_999f45a228b1b0edc1149cf1d683da61))
;;;;;;;;;;;;;;;;haseq for Tm_refine_999f45a228b1b0edc1149cf1d683da61
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_999f45a228b1b0edc1149cf1d683da61))

:named haseqTm_refine_999f45a228b1b0edc1149cf1d683da61))


; Encoding query formula : forall (st: Type)
;   (a: Type)
;   (p: HoareSTFree.mpre st)
;   (q: HoareSTFree.mpost st a)
;   (f: HoareSTFree.m st a p q)
;   (s0: st).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (a & st)).
;     p s0 /\
;     (forall (a: _: (a & st){p s0}).
;         (let x, s1 = a in
;           q s0 x s1) ==>
;         p a) ==>
;     (forall (k: Prims.pure_post (a & st)).
;         (forall (x: a & st). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;         (forall (b: Type) (b: HoareSTFree.mpost st b) (b: b).
;             f == HoareSTFree.Ret b ==>
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==>
;                 (forall (any_result: a & st).
;                     any_result == (b, s0) ==>
;                     (forall (return_val: a & st). return_val == any_result ==> k return_val)))) /\
;         (~(Ret? f) ==>
;           (forall (b: HoareSTFree.m st a p q).
;               f == b ==>
;               p s0 /\
;               (forall (a: _: (HoareSTFree.step_result st a & st){p s0}).
;                   (let r, s1 = a in
;                     (let HoareSTFree.Step #_ #_ #p_next #q_next _ = r in
;                       (p s0 ==> p_next s1) /\
;                       (forall (x: a) (s_final: st). q_next s1 x s_final ==> q s0 x s_final))
;                     <:
;                     Type0) ==>
;                   (forall (b: HoareSTFree.mpre st)
;                       (b: HoareSTFree.mpost st a)
;                       (b: HoareSTFree.m st a b b)
;                       (b: st).
;                       a == (HoareSTFree.Step b, b) ==>
;                       b b /\
;                       (forall (a: _: (a & st){b b}).
;                           (let x, s1 = a in
;                             b b x s1) ==>
;                           k a))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec run`

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
(HoareSTFree.mpre @x0))
(HasType @x3
(HoareSTFree.mpost @x0
@x1))
(HasType @x4
(HoareSTFree.m @x0
@x1
@x2
@x3))
(HasType @x5
@x0))

;; def=Prims.fst(406,51-406,91); use=FStar.Pervasives.fsti(396,15-396,28)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post (FStar.Pervasives.Native.tuple2 @x1
@x0)))

;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT @x2
@x5)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@x7 Term))
 (! (implies (and (or label_1
(HasType @x7
(Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x1
@x0
@x2
@x5)))
(let ((@lb8 @x7))

;; def=HoareSTFree.fst(273,41-273,50); use=HoareSTFree.fst(275,4-279,14)
(or label_2

;; def=HoareSTFree.fst(273,41-273,50); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=HoareSTFree.fst(273,41-273,50); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x5)
(FStar.Pervasives.Native.Mktuple2__1 @lb8))
(FStar.Pervasives.Native.Mktuple2__2 @lb8))
)
)
))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x6
@x7)
)
)
 

:pattern (
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x6
@x7)
)
)
:qid @query.2))
)

;; def=Prims.fst(402,2-402,97); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (FStar.Pervasives.Native.tuple2 @x1
@x0)))

;; def=Prims.fst(402,2-402,97); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x8 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=Prims.fst(402,73-402,79); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT @x6
@x8)
)


;; def=Prims.fst(402,84-402,87); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=Prims.fst(402,84-402,87); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT @x7
@x8)
)
)
 :weight 0


:pattern ((ApplyTT @x7
@x8))
:qid @query.4))
)

;; def=Prims.fst(389,2-389,39); use=HoareSTFree.fst(275,4-279,14)
(and 
;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(HoareSTFree.mpost @x0
@x8))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
@x8)

;; def=HoareSTFree.fst(270,63-276,11); use=HoareSTFree.fst(275,10-276,11)
(= @x4
(HoareSTFree.Ret @x0
@x8
@x9
@x10))
)

;; def=Prims.fst(459,77-459,89); use=HoareSTFree.fst(275,4-279,14)
(and 
;; def=HoareSTFree.fst(276,10-276,11); use=HoareSTFree.fst(276,15-276,16)
(or label_3
(HasType @x10
@x1))


;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
@x8)

;; def=FStar.Pervasives.Native.fst(59,33-59,35); use=HoareSTFree.fst(275,4-279,14)
(= @x10
@x11)
)

;; def=Prims.fst(451,66-451,102); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(FStar.Pervasives.Native.tuple2 @x1
@x0))

;; def=HoareSTFree.fst(272,8-276,20); use=HoareSTFree.fst(275,4-279,14)
(= @x12
(FStar.Pervasives.Native.Mktuple2 @x1
@x0
@x10
@x5))
)

;; def=Prims.fst(356,2-356,58); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(FStar.Pervasives.Native.tuple2 @x1
@x0))

;; def=Prims.fst(356,26-356,41); use=HoareSTFree.fst(275,4-279,14)
(= @x13
@x12)
)

;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=Prims.fst(356,46-356,58); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT @x7
@x13)
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
)
 
;;no pats
:qid @query.7))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))

(implies 
;; def=Prims.fst(389,19-389,21); use=HoareSTFree.fst(275,4-279,14)
(not 
;; def=HoareSTFree.fst(270,63-270,64); use=HoareSTFree.fst(275,10-275,11)
(BoxBool_proj_0 (HoareSTFree.uu___is_Ret @x0
@x1
@x2
@x3
@x4))
)


;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(HoareSTFree.m @x0
@x1
@x2
@x3))

;; def=HoareSTFree.fst(270,63-277,7); use=HoareSTFree.fst(275,10-277,7)
(= @x4
@x8)
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=HoareSTFree.fst(275,4-279,14)
(and 
;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(278,23-278,27)
(or label_4

;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(278,23-278,27)
(Valid 
;; def=HoareSTFree.fst(253,18-253,22); use=HoareSTFree.fst(278,23-278,27)
(ApplyTT @x2
@x5)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Tm_refine_d9455d40e720d2f1e39450f68b416fa6 @x0
@x1
@x2
@x5))
(let ((@lb10 @x9))
(let ((@lb11 (FStar.Pervasives.Native.Mktuple2__1 @lb10)))

;; def=HoareSTFree.fst(256,17-257,42); use=HoareSTFree.fst(278,23-278,27)
(and 
;; def=HoareSTFree.fst(242,53-242,68); use=HoareSTFree.fst(275,4-279,14)
(implies 
;; def=HoareSTFree.fst(242,53-242,58); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=HoareSTFree.fst(242,53-242,58); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT @x2
@x5)
)


;; def=HoareSTFree.fst(242,63-242,68); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=HoareSTFree.fst(242,63-242,68); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT (HoareSTFree.Step_p @lb11)
(FStar.Pervasives.Native.Mktuple2__2 @lb10))
)
)


;; def=HoareSTFree.fst(246,2-246,64); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x12
@x1)
(HasType @x13
@x0)

;; def=HoareSTFree.fst(246,29-246,44); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=HoareSTFree.fst(246,29-246,44); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT (ApplyTT (ApplyTT (HoareSTFree.Step_q @lb11)
(FStar.Pervasives.Native.Mktuple2__2 @lb10))
@x12)
@x13)
)
)

;; def=HoareSTFree.fst(246,49-246,64); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=HoareSTFree.fst(246,49-246,64); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT (ApplyTT (ApplyTT @x3
@x5)
@x12)
@x13)
)
)
 
;;no pats
:qid @query.13))
)
)))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(HoareSTFree.mpre @x0))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(HoareSTFree.mpost @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(HoareSTFree.m @x0
@x1
@x10
@x11))

;; def=Prims.fst(413,99-413,120); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
@x0)

;; def=HoareSTFree.fst(278,10-278,20); use=HoareSTFree.fst(278,10-278,20)
(= @x9
(FStar.Pervasives.Native.Mktuple2 (HoareSTFree.step_result @x0
@x1)
@x0
(HoareSTFree.Step @x0
@x1
@x10
@x11
@x12)
@x13))
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=HoareSTFree.fst(275,4-279,14)
(and 
;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(279,6-279,9)
(or label_5

;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(279,6-279,9)
(Valid 
;; def=HoareSTFree.fst(272,27-272,31); use=HoareSTFree.fst(279,6-279,9)
(ApplyTT @x10
@x13)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=HoareSTFree.fst(275,4-279,14)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_999f45a228b1b0edc1149cf1d683da61 @x1
@x0
@x10
@x13))
(let ((@lb15 @x14))

;; def=HoareSTFree.fst(273,41-273,50); use=HoareSTFree.fst(279,6-279,9)
(Valid 
;; def=HoareSTFree.fst(273,41-273,50); use=HoareSTFree.fst(279,6-279,9)
(ApplyTT (ApplyTT (ApplyTT @x11
@x13)
(FStar.Pervasives.Native.Mktuple2__1 @lb15))
(FStar.Pervasives.Native.Mktuple2__2 @lb15))
)
))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=HoareSTFree.fst(275,4-279,14)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=HoareSTFree.fst(275,4-279,14)
(ApplyTT @x7
@x14)
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
 
;;no pats
:qid @query.15))
)
 
;;no pats
:qid @query.14))
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
; QUERY ID: (HoareSTFree.run, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_FStar.Pervasives.Native.Mktuple2, data_elim_HoareSTFree.Ret, fuel_guarded_inversion_FStar.Pervasives.Native.tuple2, interpretation_Tm_abs_2b4c3996c1c945f0806b0e8a1432d845, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_HoareSTFree.Step_p, projection_inverse_HoareSTFree.Step_q, refinement_interpretation_Tm_refine_999f45a228b1b0edc1149cf1d683da61
