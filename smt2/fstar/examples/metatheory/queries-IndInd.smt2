
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

; Internals for IndInd

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type IndInd.vdl0


; <Start encoding type IndInd.vdl0>

;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.vdl0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.content0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Nil () Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Nil
(declare-fun IndInd.Nil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Cons (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Cons_tail (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Cons__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Cons
(declare-fun IndInd.Cons@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Z () Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Z
(declare-fun IndInd.Z@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.S (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.S_l (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.S_x (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.S
(declare-fun IndInd.S@tok () Term)
;;;;;;;;;;;;;;;;tail: vdl0 -> _1: content0 -> vdl0
(declare-fun Tm_arrow_438c10a4634ea94040311f00db28b5cc () Term)
;;;;;;;;;;;;;;;;l: vdl0 -> x: content0 -> content0
(declare-fun Tm_arrow_7a5469b5bc13e4ee1f67590263d640b3 () Term)

; <start constructor IndInd.vdl0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.vdl0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
128)
(= __@x0
IndInd.vdl0)))

; </end constructor IndInd.vdl0>


; <start constructor IndInd.content0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.content0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
133)
(= __@x0
IndInd.content0)))

; </end constructor IndInd.content0>


; <start constructor IndInd.Nil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Nil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
139)
(= __@x0
IndInd.Nil)))

; </end constructor IndInd.Nil>


; <start constructor IndInd.Cons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Cons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
141)
(= __@x0
(IndInd.Cons (IndInd.Cons_tail __@x0)
(IndInd.Cons__1 __@x0)))))

; </end constructor IndInd.Cons>


; <start constructor IndInd.Z>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Z ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
146)
(= __@x0
IndInd.Z)))

; </end constructor IndInd.Z>


; <start constructor IndInd.S>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.S ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
148)
(= __@x0
(IndInd.S (IndInd.S_l __@x0)
(IndInd.S_x __@x0)))))

; </end constructor IndInd.S>


; </end encoding type IndInd.vdl0>

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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.Z@tok
IndInd.content0)
:named typing_tok_IndInd.Z@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.Nil@tok
IndInd.vdl0)
:named typing_tok_IndInd.Nil@tok))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.S @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.S @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0))
:qid subterm_ordering_IndInd.S))

:named subterm_ordering_IndInd.S))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Cons @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.Cons @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
:qid subterm_ordering_IndInd.Cons))

:named subterm_ordering_IndInd.Cons))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.S_x (IndInd.S @x0
@x1))
@x1)
 

:pattern ((IndInd.S @x0
@x1))
:qid projection_inverse_IndInd.S_x))

:named projection_inverse_IndInd.S_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.S_l (IndInd.S @x0
@x1))
@x0)
 

:pattern ((IndInd.S @x0
@x1))
:qid projection_inverse_IndInd.S_l))

:named projection_inverse_IndInd.S_l))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Cons_tail (IndInd.Cons @x0
@x1))
@x0)
 

:pattern ((IndInd.Cons @x0
@x1))
:qid projection_inverse_IndInd.Cons_tail))

:named projection_inverse_IndInd.Cons_tail))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Cons__1 (IndInd.Cons @x0
@x1))
@x1)
 

:pattern ((IndInd.Cons @x0
@x1))
:qid projection_inverse_IndInd.Cons__1))

:named projection_inverse_IndInd.Cons__1))
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.vdl0
Tm_type)
:named kinding_IndInd.vdl0@tok))
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.content0
Tm_type)
:named kinding_IndInd.content0@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
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
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named function_token_typing_Prims.eqtype))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(36,5-36,9); use=IndInd.fst(36,5-36,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.vdl0)
(or (is-IndInd.Nil @x1)
(is-IndInd.Cons @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.vdl0))
:qid fuel_guarded_inversion_IndInd.vdl0))

:named fuel_guarded_inversion_IndInd.vdl0))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(40,4-40,12); use=IndInd.fst(40,4-40,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.content0)
(or (is-IndInd.Z @x1)
(is-IndInd.S @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.content0))
:qid fuel_guarded_inversion_IndInd.content0))

:named fuel_guarded_inversion_IndInd.content0))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= IndInd.Z@tok
IndInd.Z)
:named equality_tok_IndInd.Z@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= IndInd.Nil@tok
IndInd.Nil)
:named equality_tok_IndInd.Nil@tok))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(41,4-41,5); use=IndInd.fst(41,4-41,5)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
IndInd.Z
IndInd.content0)
 

:pattern ((HasTypeFuel @u0
IndInd.Z
IndInd.content0))
:qid data_typing_intro_IndInd.Z@tok))

:named data_typing_intro_IndInd.Z@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0))
(HasTypeFuel @u0
(IndInd.S @x1
@x2)
IndInd.content0))
 

:pattern ((HasTypeFuel @u0
(IndInd.S @x1
@x2)
IndInd.content0))
:qid data_typing_intro_IndInd.S@tok))

:named data_typing_intro_IndInd.S@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(37,4-37,7); use=IndInd.fst(37,4-37,7)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
IndInd.Nil
IndInd.vdl0)
 

:pattern ((HasTypeFuel @u0
IndInd.Nil
IndInd.vdl0))
:qid data_typing_intro_IndInd.Nil@tok))

:named data_typing_intro_IndInd.Nil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0))
(HasTypeFuel @u0
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
:qid data_typing_intro_IndInd.Cons@tok))

:named data_typing_intro_IndInd.Cons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0))
:qid data_elim_IndInd.S))

:named data_elim_IndInd.S))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
:qid data_elim_IndInd.Cons))

:named data_elim_IndInd.Cons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 128
(Term_constr_id IndInd.vdl0))
:named constructor_distinct_IndInd.vdl0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 133
(Term_constr_id IndInd.content0))
:named constructor_distinct_IndInd.content0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 146
(Term_constr_id IndInd.Z))
:named constructor_distinct_IndInd.Z))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 148
(Term_constr_id (IndInd.S @x0
@x1)))
 

:pattern ((IndInd.S @x0
@x1))
:qid constructor_distinct_IndInd.S))

:named constructor_distinct_IndInd.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 139
(Term_constr_id IndInd.Nil))
:named constructor_distinct_IndInd.Nil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 141
(Term_constr_id (IndInd.Cons @x0
@x1)))
 

:pattern ((IndInd.Cons @x0
@x1))
:qid constructor_distinct_IndInd.Cons))

:named constructor_distinct_IndInd.Cons))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(36,5-36,9); use=IndInd.fst(36,5-36,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.vdl0)
(= IndInd.vdl0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.vdl0))
:qid IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e))

:named IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(40,4-40,12); use=IndInd.fst(40,4-40,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.content0)
(= IndInd.content0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.content0))
:qid IndInd_pretyping_1e3722fc96186e9612e474d93fc78066))

:named IndInd_pretyping_1e3722fc96186e9612e474d93fc78066))
(push) ;; push{4

; Starting query at IndInd.fst(36,0-42,40)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq IndInd.vdl0 /\ Prims.hasEq IndInd.content0 ==>
; (forall (tail: IndInd.vdl0) (_1: IndInd.content0).
;     Prims.hasEq IndInd.vdl0 /\ Prims.hasEq IndInd.content0) /\
; (forall (l: IndInd.vdl0) (x: IndInd.content0).
;     Prims.hasEq IndInd.vdl0 /\ Prims.hasEq IndInd.content0)


; Context: While encoding a query
; While typechecking the top-level declaration `type IndInd.vdl0`

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
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(and 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Valid 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Prims.hasEq IndInd.vdl0)
)


;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Valid 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Prims.hasEq IndInd.content0)
)
)


;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(and 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.vdl0)
(HasType @x1
IndInd.content0))

;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(and 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(38,16-38,20)
(or label_1

;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Valid 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Prims.hasEq IndInd.vdl0)
)
)


;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(38,24-38,32)
(or label_2

;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Valid 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Prims.hasEq IndInd.content0)
)
)
)
)
 
;;no pats
:qid @query))


;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.vdl0)
(HasType @x1
IndInd.content0))

;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(and 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(42,10-42,14)
(or label_3

;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Valid 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Prims.hasEq IndInd.vdl0)
)
)


;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(42,20-42,28)
(or label_4

;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Valid 
;; def=IndInd.fst(36,0-42,40); use=IndInd.fst(36,0-42,40)
(Prims.hasEq IndInd.content0)
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
; QUERY ID: (IndInd.vdl0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type IndInd.vdl0


; <Start encoding type IndInd.vdl0>

;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.vdl0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.content0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Nil () Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Nil
(declare-fun IndInd.Nil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Cons (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Cons_tail (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Cons__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Cons
(declare-fun IndInd.Cons@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Z () Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Z
(declare-fun IndInd.Z@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.S (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.S_l (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.S_x (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.S
(declare-fun IndInd.S@tok () Term)
;;;;;;;;;;;;;;;;tail: vdl0 -> _1: content0 -> vdl0
(declare-fun Tm_arrow_438c10a4634ea94040311f00db28b5cc () Term)
;;;;;;;;;;;;;;;;l: vdl0 -> x: content0 -> content0
(declare-fun Tm_arrow_7a5469b5bc13e4ee1f67590263d640b3 () Term)

; <start constructor IndInd.vdl0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.vdl0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
152)
(= __@x0
IndInd.vdl0)))

; </end constructor IndInd.vdl0>


; <start constructor IndInd.content0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.content0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
157)
(= __@x0
IndInd.content0)))

; </end constructor IndInd.content0>


; <start constructor IndInd.Nil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Nil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
163)
(= __@x0
IndInd.Nil)))

; </end constructor IndInd.Nil>


; <start constructor IndInd.Cons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Cons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
165)
(= __@x0
(IndInd.Cons (IndInd.Cons_tail __@x0)
(IndInd.Cons__1 __@x0)))))

; </end constructor IndInd.Cons>


; <start constructor IndInd.Z>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Z ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
170)
(= __@x0
IndInd.Z)))

; </end constructor IndInd.Z>


; <start constructor IndInd.S>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.S ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
172)
(= __@x0
(IndInd.S (IndInd.S_l __@x0)
(IndInd.S_x __@x0)))))

; </end constructor IndInd.S>


; </end encoding type IndInd.vdl0>


; encoding sigelt assume IndInd.vdl0__uu___haseq


; <Start encoding assume IndInd.vdl0__uu___haseq>


; </end encoding assume IndInd.vdl0__uu___haseq>


; encoding sigelt assume IndInd.content0__uu___haseq


; <Start encoding assume IndInd.content0__uu___haseq>


; </end encoding assume IndInd.content0__uu___haseq>


; encoding sigelt val IndInd.uu___is_Nil


; <Start encoding val IndInd.uu___is_Nil>

(declare-fun IndInd.uu___is_Nil (Term) Term)
;;;;;;;;;;;;;;;;projectee: vdl0 -> Prims.bool
(declare-fun Tm_arrow_793fb0ed50459acbd9c3ae7f4b8b402c () Term)
(declare-fun IndInd.uu___is_Nil@tok () Term)

; </end encoding val IndInd.uu___is_Nil>


; encoding sigelt let uu___is_Nil


; <Skipped let uu___is_Nil/>


; encoding sigelt val IndInd.uu___is_Cons


; <Start encoding val IndInd.uu___is_Cons>

(declare-fun IndInd.uu___is_Cons (Term) Term)

(declare-fun IndInd.uu___is_Cons@tok () Term)

; </end encoding val IndInd.uu___is_Cons>


; encoding sigelt let uu___is_Cons


; <Skipped let uu___is_Cons/>


; encoding sigelt val IndInd.__proj__Cons__item__tail


; <Start encoding val IndInd.__proj__Cons__item__tail>

(declare-fun Tm_refine_957ae70d43cb9dd184ab72588dfcd219 () Term)
(declare-fun IndInd.__proj__Cons__item__tail (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: vdl0{Cons? _} -> vdl0
(declare-fun Tm_arrow_57676d40fbc43ef1212c85e449a7cf1b () Term)
(declare-fun IndInd.__proj__Cons__item__tail@tok () Term)

; </end encoding val IndInd.__proj__Cons__item__tail>

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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.Z@tok
IndInd.content0)
:named typing_tok_IndInd.Z@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.Nil@tok
IndInd.vdl0)
:named typing_tok_IndInd.Nil@tok))
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
;;; Fact-ids: Name IndInd.uu___is_Cons; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.vdl0)
(HasType (IndInd.uu___is_Cons @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Cons @x0))
:qid typing_IndInd.uu___is_Cons))

:named typing_IndInd.uu___is_Cons))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.S @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.S @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0))
:qid subterm_ordering_IndInd.S))

:named subterm_ordering_IndInd.S))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Cons @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.Cons @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
:qid subterm_ordering_IndInd.Cons))

:named subterm_ordering_IndInd.Cons))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__Cons__item__tail; Namespace IndInd
(assert (! (HasType Tm_refine_957ae70d43cb9dd184ab72588dfcd219
Tm_type)
:named refinement_kinding_Tm_refine_957ae70d43cb9dd184ab72588dfcd219))
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
;;; Fact-ids: Name IndInd.__proj__Cons__item__tail; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_957ae70d43cb9dd184ab72588dfcd219)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)

;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(BoxBool_proj_0 (IndInd.uu___is_Cons @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_957ae70d43cb9dd184ab72588dfcd219))
:qid refinement_interpretation_Tm_refine_957ae70d43cb9dd184ab72588dfcd219))

:named refinement_interpretation_Tm_refine_957ae70d43cb9dd184ab72588dfcd219))
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.S_x (IndInd.S @x0
@x1))
@x1)
 

:pattern ((IndInd.S @x0
@x1))
:qid projection_inverse_IndInd.S_x))

:named projection_inverse_IndInd.S_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.S_l (IndInd.S @x0
@x1))
@x0)
 

:pattern ((IndInd.S @x0
@x1))
:qid projection_inverse_IndInd.S_l))

:named projection_inverse_IndInd.S_l))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Cons_tail (IndInd.Cons @x0
@x1))
@x0)
 

:pattern ((IndInd.Cons @x0
@x1))
:qid projection_inverse_IndInd.Cons_tail))

:named projection_inverse_IndInd.Cons_tail))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Cons__1 (IndInd.Cons @x0
@x1))
@x1)
 

:pattern ((IndInd.Cons @x0
@x1))
:qid projection_inverse_IndInd.Cons__1))

:named projection_inverse_IndInd.Cons__1))
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.vdl0
Tm_type)
:named kinding_IndInd.vdl0@tok))
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (HasType IndInd.content0
Tm_type)
:named kinding_IndInd.content0@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_957ae70d43cb9dd184ab72588dfcd219
;;; Fact-ids: Name IndInd.__proj__Cons__item__tail; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_957ae70d43cb9dd184ab72588dfcd219))
(Valid (Prims.hasEq IndInd.vdl0)))
:named haseqTm_refine_957ae70d43cb9dd184ab72588dfcd219))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(36,5-36,9); use=IndInd.fst(36,5-36,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.vdl0)
(or (is-IndInd.Nil @x1)
(is-IndInd.Cons @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.vdl0))
:qid fuel_guarded_inversion_IndInd.vdl0))

:named fuel_guarded_inversion_IndInd.vdl0))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(40,4-40,12); use=IndInd.fst(40,4-40,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.content0)
(or (is-IndInd.Z @x1)
(is-IndInd.S @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.content0))
:qid fuel_guarded_inversion_IndInd.content0))

:named fuel_guarded_inversion_IndInd.content0))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= IndInd.Z@tok
IndInd.Z)
:named equality_tok_IndInd.Z@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= IndInd.Nil@tok
IndInd.Nil)
:named equality_tok_IndInd.Nil@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_Cons; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Cons @x0)
(BoxBool (is-IndInd.Cons @x0)))
 

:pattern ((IndInd.uu___is_Cons @x0))
:qid disc_equation_IndInd.Cons))

:named disc_equation_IndInd.Cons))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(41,4-41,5); use=IndInd.fst(41,4-41,5)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
IndInd.Z
IndInd.content0)
 

:pattern ((HasTypeFuel @u0
IndInd.Z
IndInd.content0))
:qid data_typing_intro_IndInd.Z@tok))

:named data_typing_intro_IndInd.Z@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0))
(HasTypeFuel @u0
(IndInd.S @x1
@x2)
IndInd.content0))
 

:pattern ((HasTypeFuel @u0
(IndInd.S @x1
@x2)
IndInd.content0))
:qid data_typing_intro_IndInd.S@tok))

:named data_typing_intro_IndInd.S@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(37,4-37,7); use=IndInd.fst(37,4-37,7)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
IndInd.Nil
IndInd.vdl0)
 

:pattern ((HasTypeFuel @u0
IndInd.Nil
IndInd.vdl0))
:qid data_typing_intro_IndInd.Nil@tok))

:named data_typing_intro_IndInd.Nil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0))
(HasTypeFuel @u0
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
:qid data_typing_intro_IndInd.Cons@tok))

:named data_typing_intro_IndInd.Cons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.S @x1
@x2)
IndInd.content0))
:qid data_elim_IndInd.S))

:named data_elim_IndInd.S))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)
(HasTypeFuel @u0
@x2
IndInd.content0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Cons @x1
@x2)
IndInd.vdl0))
:qid data_elim_IndInd.Cons))

:named data_elim_IndInd.Cons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (= 107
(Term_constr_id Prims.bool))
:named constructor_distinct_Prims.bool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 152
(Term_constr_id IndInd.vdl0))
:named constructor_distinct_IndInd.vdl0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 157
(Term_constr_id IndInd.content0))
:named constructor_distinct_IndInd.content0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 170
(Term_constr_id IndInd.Z))
:named constructor_distinct_IndInd.Z))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 172
(Term_constr_id (IndInd.S @x0
@x1)))
 

:pattern ((IndInd.S @x0
@x1))
:qid constructor_distinct_IndInd.S))

:named constructor_distinct_IndInd.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! (= 163
(Term_constr_id IndInd.Nil))
:named constructor_distinct_IndInd.Nil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 165
(Term_constr_id (IndInd.Cons @x0
@x1)))
 

:pattern ((IndInd.Cons @x0
@x1))
:qid constructor_distinct_IndInd.Cons))

:named constructor_distinct_IndInd.Cons))
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
;;;;;;;;;;;;;;;;Assumption: IndInd.vdl0__uu___haseq
;;; Fact-ids: Name IndInd.vdl0__uu___haseq; Namespace IndInd
(assert (! (Valid (Prims.hasEq IndInd.vdl0))
:named assumption_IndInd.vdl0__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: IndInd.content0__uu___haseq
;;; Fact-ids: Name IndInd.content0__uu___haseq; Namespace IndInd
(assert (! (Valid (Prims.hasEq IndInd.content0))
:named assumption_IndInd.content0__uu___haseq))
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
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(36,5-36,9); use=IndInd.fst(36,5-36,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.vdl0)
(= IndInd.vdl0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.vdl0))
:qid IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e))

:named IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.vdl0; Namespace IndInd; Name IndInd.Nil; Namespace IndInd; Name IndInd.Cons; Namespace IndInd; Name IndInd.content0; Namespace IndInd; Name IndInd.Z; Namespace IndInd; Name IndInd.S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(40,4-40,12); use=IndInd.fst(40,4-40,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.content0)
(= IndInd.content0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.content0))
:qid IndInd_pretyping_1e3722fc96186e9612e474d93fc78066))

:named IndInd_pretyping_1e3722fc96186e9612e474d93fc78066))
(push) ;; push{2

; Starting query at IndInd.fst(38,11-38,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.vdl0{Cons? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons__item__tail`

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
Tm_refine_957ae70d43cb9dd184ab72588dfcd219)

;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,11-38,15)
(not 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,11-38,15)
(BoxBool_proj_0 (IndInd.uu___is_Cons @x0))
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
; QUERY ID: (IndInd.__proj__Cons__item__tail, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_957ae70d43cb9dd184ab72588dfcd219

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons__item__tail


; <Skipped let __proj__Cons__item__tail/>


; encoding sigelt val IndInd.__proj__Cons__item___1


; <Start encoding val IndInd.__proj__Cons__item___1>


(declare-fun IndInd.__proj__Cons__item___1 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: vdl0{Cons? _} -> content0
(declare-fun Tm_arrow_6bf90fa201c0ef81087464d9f38d4611 () Term)
(declare-fun IndInd.__proj__Cons__item___1@tok () Term)

; </end encoding val IndInd.__proj__Cons__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.vdl0{Cons? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons__item___1`

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
Tm_refine_957ae70d43cb9dd184ab72588dfcd219)

;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(not 
;; def=IndInd.fst(38,4-38,8); use=IndInd.fst(38,4-38,8)
(BoxBool_proj_0 (IndInd.uu___is_Cons @x0))
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
; QUERY ID: (IndInd.__proj__Cons__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_957ae70d43cb9dd184ab72588dfcd219

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons__item___1


; <Skipped let __proj__Cons__item___1/>


; encoding sigelt val IndInd.uu___is_Z


; <Start encoding val IndInd.uu___is_Z>

(declare-fun IndInd.uu___is_Z (Term) Term)
;;;;;;;;;;;;;;;;projectee: content0 -> Prims.bool
(declare-fun Tm_arrow_32f570d4e9f7083c25b16146a94f3810 () Term)
(declare-fun IndInd.uu___is_Z@tok () Term)

; </end encoding val IndInd.uu___is_Z>


; encoding sigelt let uu___is_Z


; <Skipped let uu___is_Z/>


; encoding sigelt val IndInd.uu___is_S


; <Start encoding val IndInd.uu___is_S>

(declare-fun IndInd.uu___is_S (Term) Term)

(declare-fun IndInd.uu___is_S@tok () Term)

; </end encoding val IndInd.uu___is_S>


; encoding sigelt let uu___is_S


; <Skipped let uu___is_S/>


; encoding sigelt val IndInd.__proj__S__item__l


; <Start encoding val IndInd.__proj__S__item__l>

(declare-fun Tm_refine_cf52be3832bd60a750de16c530e63c3c () Term)
(declare-fun IndInd.__proj__S__item__l (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: content0{S? _} -> vdl0
(declare-fun Tm_arrow_480b33a4994c8ee56cb142462967f9b3 () Term)
(declare-fun IndInd.__proj__S__item__l@tok () Term)

; </end encoding val IndInd.__proj__S__item__l>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.content0)
(HasType (IndInd.uu___is_S @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_S @x0))
:qid typing_IndInd.uu___is_S))

:named typing_IndInd.uu___is_S))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__S__item__l; Namespace IndInd
(assert (! (HasType Tm_refine_cf52be3832bd60a750de16c530e63c3c
Tm_type)
:named refinement_kinding_Tm_refine_cf52be3832bd60a750de16c530e63c3c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__S__item__l; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_cf52be3832bd60a750de16c530e63c3c)
(and (HasTypeFuel @u0
@x1
IndInd.content0)

;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(BoxBool_proj_0 (IndInd.uu___is_S @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_cf52be3832bd60a750de16c530e63c3c))
:qid refinement_interpretation_Tm_refine_cf52be3832bd60a750de16c530e63c3c))

:named refinement_interpretation_Tm_refine_cf52be3832bd60a750de16c530e63c3c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cf52be3832bd60a750de16c530e63c3c
;;; Fact-ids: Name IndInd.__proj__S__item__l; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_cf52be3832bd60a750de16c530e63c3c))
(Valid (Prims.hasEq IndInd.content0)))
:named haseqTm_refine_cf52be3832bd60a750de16c530e63c3c))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_S; Namespace IndInd
(assert (! 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,4-42,5)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_S @x0)
(BoxBool (is-IndInd.S @x0)))
 

:pattern ((IndInd.uu___is_S @x0))
:qid disc_equation_IndInd.S))

:named disc_equation_IndInd.S))
(push) ;; push{2

; Starting query at IndInd.fst(42,8-42,9)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.content0{S? _}).
;   (*  - Could not prove post-condition
; *) ~(S? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__S__item__l`

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
Tm_refine_cf52be3832bd60a750de16c530e63c3c)

;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,8-42,9)
(not 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,8-42,9)
(BoxBool_proj_0 (IndInd.uu___is_S @x0))
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
; QUERY ID: (IndInd.__proj__S__item__l, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_cf52be3832bd60a750de16c530e63c3c

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__S__item__l


; <Skipped let __proj__S__item__l/>


; encoding sigelt val IndInd.__proj__S__item__x


; <Start encoding val IndInd.__proj__S__item__x>


(declare-fun IndInd.__proj__S__item__x (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: content0{S? _} -> content0
(declare-fun Tm_arrow_db717bdc1d1360ad7ed36ce4a298cb2f () Term)
(declare-fun IndInd.__proj__S__item__x@tok () Term)

; </end encoding val IndInd.__proj__S__item__x>

(push) ;; push{2

; Starting query at IndInd.fst(42,18-42,19)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.content0{S? _}).
;   (*  - Could not prove post-condition
; *) ~(S? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__S__item__x`

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
Tm_refine_cf52be3832bd60a750de16c530e63c3c)

;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,18-42,19)
(not 
;; def=IndInd.fst(42,4-42,5); use=IndInd.fst(42,18-42,19)
(BoxBool_proj_0 (IndInd.uu___is_S @x0))
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
; QUERY ID: (IndInd.__proj__S__item__x, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_cf52be3832bd60a750de16c530e63c3c

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__S__item__x


; <Skipped let __proj__S__item__x/>

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
;;; Fact-ids: Name IndInd.uu___is_Nil; Namespace IndInd
(assert (! 
;; def=IndInd.fst(37,4-37,7); use=IndInd.fst(37,4-37,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.vdl0)
(HasType (IndInd.uu___is_Nil @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Nil @x0))
:qid typing_IndInd.uu___is_Nil))

:named typing_IndInd.uu___is_Nil))
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
;;; Fact-ids: Name IndInd.uu___is_Nil; Namespace IndInd
(assert (! 
;; def=IndInd.fst(37,4-37,7); use=IndInd.fst(37,4-37,7)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Nil @x0)
(BoxBool (is-IndInd.Nil @x0)))
 

:pattern ((IndInd.uu___is_Nil @x0))
:qid disc_equation_IndInd.Nil))

:named disc_equation_IndInd.Nil))
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

; Starting query at IndInd.fst(47,55-49,35)

;;;;;;;;;;;;;;;;l : IndInd.vdl0 (IndInd.vdl0)
(declare-fun x_f327f45ca84890cc965eeb3de9a5f60e_0 () Term)
;;;;;;;;;;;;;;;;binder_x_f327f45ca84890cc965eeb3de9a5f60e_0
;;; Fact-ids: 
(assert (! (HasType x_f327f45ca84890cc965eeb3de9a5f60e_0
IndInd.vdl0)
:named binder_x_f327f45ca84890cc965eeb3de9a5f60e_0))
(declare-fun Tm_refine_7186791cdc85e5f16cd57b6305e19d9c () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_7186791cdc85e5f16cd57b6305e19d9c
Tm_type)
:named refinement_kinding_Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,55-51,29); use=IndInd.fst(47,55-51,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_7186791cdc85e5f16cd57b6305e19d9c)
(and (HasTypeFuel @u0
@x1
IndInd.content0)

;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(47,55-49,35)

;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(47,55-49,35)
(Valid 
;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(47,55-49,35)
(Prims.precedes IndInd.content0
IndInd.vdl0
@x1
x_f327f45ca84890cc965eeb3de9a5f60e_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))
:qid refinement_interpretation_Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))

:named refinement_interpretation_Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7186791cdc85e5f16cd57b6305e19d9c
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))
(Valid (Prims.hasEq IndInd.content0)))
:named haseqTm_refine_7186791cdc85e5f16cd57b6305e19d9c))
(declare-fun IndInd.content_valid (Term Term) Term)

;;;;;;;;;;;;;;;;l: vdl0 -> x: content0{x << l} -> Prims.Tot Type
(declare-fun Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd
Tm_type)
:named kinding_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,55-51,51); use=IndInd.fst(47,55-51,51)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))
:qid IndInd_pre_typing_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))

:named IndInd_pre_typing_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,55-51,51); use=IndInd.fst(47,55-51,51)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd)
(and 
;; def=IndInd.fst(47,55-51,51); use=IndInd.fst(47,55-51,51)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl0)
(HasType @x2
Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd.1))

(IsTotFun @x0)

;; def=IndInd.fst(47,55-51,51); use=IndInd.fst(47,55-51,51)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))
:qid IndInd_interpretation_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))

:named IndInd_interpretation_Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))
(declare-fun IndInd.content_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.content_valid@tok
@x0)
@x1)
(IndInd.content_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.content_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.content_valid))

:named token_correspondence_IndInd.content_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.content_valid@tok
Tm_arrow_377cc7aef3c5116a712ef4bb75c80fdd))

;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.content_valid@tok
@x1)
@x2)
(IndInd.content_valid @x1
@x2))
 

:pattern ((IndInd.content_valid @x1
@x2))
:qid function_token_typing_IndInd.content_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.content_valid@tok))
:qid function_token_typing_IndInd.content_valid))

:named function_token_typing_IndInd.content_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.vdl0)
(HasType @x1
Tm_refine_7186791cdc85e5f16cd57b6305e19d9c))
(HasType (IndInd.content_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.content_valid @x0
@x1))
:qid typing_IndInd.content_valid))

:named typing_IndInd.content_valid))
(declare-fun Tm_refine_3fe39a438854ae9642e0bafaea73a08b () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_3fe39a438854ae9642e0bafaea73a08b
Tm_type)
:named refinement_kinding_Tm_refine_3fe39a438854ae9642e0bafaea73a08b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,19-49,35); use=IndInd.fst(47,19-49,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_3fe39a438854ae9642e0bafaea73a08b)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)

;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(47,55-49,35)

;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(47,55-49,35)
(Valid 
;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(47,55-49,35)
(Prims.precedes IndInd.vdl0
IndInd.vdl0
@x1
x_f327f45ca84890cc965eeb3de9a5f60e_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_3fe39a438854ae9642e0bafaea73a08b))
:qid refinement_interpretation_Tm_refine_3fe39a438854ae9642e0bafaea73a08b))

:named refinement_interpretation_Tm_refine_3fe39a438854ae9642e0bafaea73a08b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_3fe39a438854ae9642e0bafaea73a08b
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_3fe39a438854ae9642e0bafaea73a08b))
(Valid (Prims.hasEq IndInd.vdl0)))
:named haseqTm_refine_3fe39a438854ae9642e0bafaea73a08b))
(declare-fun IndInd.vdl_valid (Term) Term)

;;;;;;;;;;;;;;;;l: vdl0{l << l} -> Prims.Tot Type
(declare-fun Tm_arrow_c5548e2f8cc480ee426fbdb90366d504 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_c5548e2f8cc480ee426fbdb90366d504
Tm_type)
:named kinding_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,19-49,35); use=IndInd.fst(47,19-49,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_c5548e2f8cc480ee426fbdb90366d504)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))
:qid IndInd_pre_typing_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))

:named IndInd_pre_typing_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,19-49,35); use=IndInd.fst(47,19-49,35)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_c5548e2f8cc480ee426fbdb90366d504)
(and 
;; def=IndInd.fst(47,19-49,35); use=IndInd.fst(47,19-49,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_3fe39a438854ae9642e0bafaea73a08b)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))
:qid IndInd_interpretation_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))

:named IndInd_interpretation_Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))
(declare-fun IndInd.vdl_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (= (ApplyTT IndInd.vdl_valid@tok
@x0)
(IndInd.vdl_valid @x0))
 

:pattern ((ApplyTT IndInd.vdl_valid@tok
@x0))
:qid token_correspondence_IndInd.vdl_valid))

:named token_correspondence_IndInd.vdl_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.vdl_valid@tok
Tm_arrow_c5548e2f8cc480ee426fbdb90366d504))

;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x1 Term))
 (! (= (ApplyTT IndInd.vdl_valid@tok
@x1)
(IndInd.vdl_valid @x1))
 

:pattern ((IndInd.vdl_valid @x1))
:qid function_token_typing_IndInd.vdl_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.vdl_valid@tok))
:qid function_token_typing_IndInd.vdl_valid))

:named function_token_typing_IndInd.vdl_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_3fe39a438854ae9642e0bafaea73a08b)
(HasType (IndInd.vdl_valid @x0)
Tm_type))
 

:pattern ((IndInd.vdl_valid @x0))
:qid typing_IndInd.vdl_valid))

:named typing_IndInd.vdl_valid))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Type0).
;   (forall (x: Type0). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==> (forall (b: IndInd.vdl0) (b: IndInd.content0). l == IndInd.Cons b b ==> b << l))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vdl_valid and content_valid`

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
(Prims.pure_post Tm_type))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(47,55-49,35)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(47,55-49,35)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(47,55-49,35)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(47,55-49,35)
(and (implies 
;; def=IndInd.fst(47,19-47,20); use=IndInd.fst(47,61-47,62)
(and 
;; def=IndInd.fst(47,19-47,20); use=IndInd.fst(47,61-47,62)
(not 
;; def=IndInd.fst(47,19-47,20); use=IndInd.fst(47,61-47,62)
(BoxBool_proj_0 (IndInd.uu___is_Nil x_f327f45ca84890cc965eeb3de9a5f60e_0))
)


;; def=IndInd.fst(47,19-47,20); use=IndInd.fst(47,61-47,62)
(not 
;; def=IndInd.fst(47,19-47,20); use=IndInd.fst(47,61-47,62)
(BoxBool_proj_0 (IndInd.uu___is_Cons x_f327f45ca84890cc965eeb3de9a5f60e_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(47,55-49,35)
(not 
;; def=IndInd.fst(47,19-47,20); use=IndInd.fst(47,61-47,62)
(BoxBool_proj_0 (IndInd.uu___is_Nil x_f327f45ca84890cc965eeb3de9a5f60e_0))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(47,55-49,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(47,55-49,35)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
IndInd.content0)

;; def=IndInd.fst(47,19-49,13); use=IndInd.fst(47,61-49,13)
(= x_f327f45ca84890cc965eeb3de9a5f60e_0
(IndInd.Cons @x1
@x2))
)

;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(49,34-49,35)
(or label_2

;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(49,34-49,35)
(Valid 
;; def=IndInd.fst(47,55-49,35); use=IndInd.fst(49,34-49,35)
(Prims.precedes IndInd.content0
IndInd.vdl0
@x2
x_f327f45ca84890cc965eeb3de9a5f60e_0)
)
)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (IndInd.vdl_valid, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, IndInd_pretyping_1e3722fc96186e9612e474d93fc78066, IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e, binder_x_f327f45ca84890cc965eeb3de9a5f60e_0, disc_equation_IndInd.Cons, disc_equation_IndInd.Nil, equality_tok_IndInd.Nil@tok, equality_tok_IndInd.Z@tok, fuel_guarded_inversion_IndInd.vdl0, projection_inverse_BoxBool_proj_0, projection_inverse_IndInd.Cons__1, subterm_ordering_IndInd.Cons, typing_tok_IndInd.Nil@tok, typing_tok_IndInd.Z@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_Z; Namespace IndInd
(assert (! 
;; def=IndInd.fst(41,4-41,5); use=IndInd.fst(41,4-41,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.content0)
(HasType (IndInd.uu___is_Z @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Z @x0))
:qid typing_IndInd.uu___is_Z))

:named typing_IndInd.uu___is_Z))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_Z; Namespace IndInd
(assert (! 
;; def=IndInd.fst(41,4-41,5); use=IndInd.fst(41,4-41,5)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Z @x0)
(BoxBool (is-IndInd.Z @x0)))
 

:pattern ((IndInd.uu___is_Z @x0))
:qid disc_equation_IndInd.Z))

:named disc_equation_IndInd.Z))
(push) ;; push{2

; Starting query at IndInd.fst(51,68-53,65)

;;;;;;;;;;;;;;;;l : IndInd.vdl0 (IndInd.vdl0)
(declare-fun x_f327f45ca84890cc965eeb3de9a5f60e_0 () Term)
;;;;;;;;;;;;;;;;binder_x_f327f45ca84890cc965eeb3de9a5f60e_0
;;; Fact-ids: 
(assert (! (HasType x_f327f45ca84890cc965eeb3de9a5f60e_0
IndInd.vdl0)
:named binder_x_f327f45ca84890cc965eeb3de9a5f60e_0))
;;;;;;;;;;;;;;;;x : IndInd.content0 (IndInd.content0)
(declare-fun x_1e3722fc96186e9612e474d93fc78066_1 () Term)
;;;;;;;;;;;;;;;;binder_x_1e3722fc96186e9612e474d93fc78066_1
;;; Fact-ids: 
(assert (! (HasType x_1e3722fc96186e9612e474d93fc78066_1
IndInd.content0)
:named binder_x_1e3722fc96186e9612e474d93fc78066_1))
(declare-fun Tm_refine_6eafabce4ff96dcd9b226a26922f3251 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_6eafabce4ff96dcd9b226a26922f3251
Tm_type)
:named refinement_kinding_Tm_refine_6eafabce4ff96dcd9b226a26922f3251))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,28-53,65); use=IndInd.fst(51,28-53,65)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_6eafabce4ff96dcd9b226a26922f3251)
(and (HasTypeFuel @u0
@x1
IndInd.content0)

;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(51,68-53,65)

;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(51,68-53,65)
(Valid 
;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(51,68-53,65)
(Prims.precedes IndInd.content0
IndInd.content0
@x1
x_1e3722fc96186e9612e474d93fc78066_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_6eafabce4ff96dcd9b226a26922f3251))
:qid refinement_interpretation_Tm_refine_6eafabce4ff96dcd9b226a26922f3251))

:named refinement_interpretation_Tm_refine_6eafabce4ff96dcd9b226a26922f3251))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6eafabce4ff96dcd9b226a26922f3251
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_6eafabce4ff96dcd9b226a26922f3251))
(Valid (Prims.hasEq IndInd.content0)))
:named haseqTm_refine_6eafabce4ff96dcd9b226a26922f3251))
(declare-fun IndInd.content_valid (Term Term) Term)

;;;;;;;;;;;;;;;;l: vdl0 -> x: content0{x << x} -> Prims.Tot Type
(declare-fun Tm_arrow_fb5fd81d726774e02ef2703b62652599 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fb5fd81d726774e02ef2703b62652599
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_fb5fd81d726774e02ef2703b62652599
Tm_type)
:named kinding_Tm_arrow_fb5fd81d726774e02ef2703b62652599))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,21-53,65); use=IndInd.fst(51,21-53,65)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fb5fd81d726774e02ef2703b62652599)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fb5fd81d726774e02ef2703b62652599))
:qid IndInd_pre_typing_Tm_arrow_fb5fd81d726774e02ef2703b62652599))

:named IndInd_pre_typing_Tm_arrow_fb5fd81d726774e02ef2703b62652599))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fb5fd81d726774e02ef2703b62652599
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,21-53,65); use=IndInd.fst(51,21-53,65)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fb5fd81d726774e02ef2703b62652599)
(and 
;; def=IndInd.fst(51,21-53,65); use=IndInd.fst(51,21-53,65)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl0)
(HasType @x2
Tm_refine_6eafabce4ff96dcd9b226a26922f3251))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_fb5fd81d726774e02ef2703b62652599.1))

(IsTotFun @x0)

;; def=IndInd.fst(51,21-53,65); use=IndInd.fst(51,21-53,65)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_fb5fd81d726774e02ef2703b62652599.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fb5fd81d726774e02ef2703b62652599))
:qid IndInd_interpretation_Tm_arrow_fb5fd81d726774e02ef2703b62652599))

:named IndInd_interpretation_Tm_arrow_fb5fd81d726774e02ef2703b62652599))
(declare-fun IndInd.content_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.content_valid@tok
@x0)
@x1)
(IndInd.content_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.content_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.content_valid))

:named token_correspondence_IndInd.content_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.content_valid@tok
Tm_arrow_fb5fd81d726774e02ef2703b62652599))

;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.content_valid@tok
@x1)
@x2)
(IndInd.content_valid @x1
@x2))
 

:pattern ((IndInd.content_valid @x1
@x2))
:qid function_token_typing_IndInd.content_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.content_valid@tok))
:qid function_token_typing_IndInd.content_valid))

:named function_token_typing_IndInd.content_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.vdl0)
(HasType @x1
Tm_refine_6eafabce4ff96dcd9b226a26922f3251))
(HasType (IndInd.content_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.content_valid @x0
@x1))
:qid typing_IndInd.content_valid))

:named typing_IndInd.content_valid))
(declare-fun Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b
Tm_type)
:named refinement_kinding_Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,19-53,65); use=IndInd.fst(47,19-53,65)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)

;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(51,68-53,65)

;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(51,68-53,65)
(Valid 
;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(51,68-53,65)
(Prims.precedes IndInd.vdl0
IndInd.content0
@x1
x_1e3722fc96186e9612e474d93fc78066_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b))
:qid refinement_interpretation_Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b))

:named refinement_interpretation_Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b))
(Valid (Prims.hasEq IndInd.vdl0)))
:named haseqTm_refine_70c5e4a697f2ed544b1ef93cff3dff0b))
(declare-fun IndInd.vdl_valid (Term) Term)

;;;;;;;;;;;;;;;;l: vdl0{l << x} -> Prims.Tot Type
(declare-fun Tm_arrow_ee36de1da415e52f4889fa93a725195b () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ee36de1da415e52f4889fa93a725195b
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_ee36de1da415e52f4889fa93a725195b
Tm_type)
:named kinding_Tm_arrow_ee36de1da415e52f4889fa93a725195b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,19-53,65); use=IndInd.fst(47,19-53,65)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_ee36de1da415e52f4889fa93a725195b)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_ee36de1da415e52f4889fa93a725195b))
:qid IndInd_pre_typing_Tm_arrow_ee36de1da415e52f4889fa93a725195b))

:named IndInd_pre_typing_Tm_arrow_ee36de1da415e52f4889fa93a725195b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ee36de1da415e52f4889fa93a725195b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,19-53,65); use=IndInd.fst(47,19-53,65)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_ee36de1da415e52f4889fa93a725195b)
(and 
;; def=IndInd.fst(47,19-53,65); use=IndInd.fst(47,19-53,65)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_ee36de1da415e52f4889fa93a725195b.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_ee36de1da415e52f4889fa93a725195b))
:qid IndInd_interpretation_Tm_arrow_ee36de1da415e52f4889fa93a725195b))

:named IndInd_interpretation_Tm_arrow_ee36de1da415e52f4889fa93a725195b))
(declare-fun IndInd.vdl_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (= (ApplyTT IndInd.vdl_valid@tok
@x0)
(IndInd.vdl_valid @x0))
 

:pattern ((ApplyTT IndInd.vdl_valid@tok
@x0))
:qid token_correspondence_IndInd.vdl_valid))

:named token_correspondence_IndInd.vdl_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.vdl_valid@tok
Tm_arrow_ee36de1da415e52f4889fa93a725195b))

;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x1 Term))
 (! (= (ApplyTT IndInd.vdl_valid@tok
@x1)
(IndInd.vdl_valid @x1))
 

:pattern ((IndInd.vdl_valid @x1))
:qid function_token_typing_IndInd.vdl_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.vdl_valid@tok))
:qid function_token_typing_IndInd.vdl_valid))

:named function_token_typing_IndInd.vdl_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_70c5e4a697f2ed544b1ef93cff3dff0b)
(HasType (IndInd.vdl_valid @x0)
Tm_type))
 

:pattern ((IndInd.vdl_valid @x0))
:qid typing_IndInd.vdl_valid))

:named typing_IndInd.vdl_valid))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Type0).
;   (forall (x: Type0). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Z? x) /\ ~(S? x) ==> Prims.l_False) /\
;   (~(Z? x) ==>
;     (forall (b: IndInd.vdl0) (b: IndInd.content0).
;         x == IndInd.S b b ==> b << x /\ (IndInd.vdl_valid b ==> b << x)))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vdl_valid and content_valid`

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
(Prims.pure_post Tm_type))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(51,68-53,65)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(51,68-53,65)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(51,68-53,65)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(51,68-53,65)
(and (implies 
;; def=IndInd.fst(51,28-51,29); use=IndInd.fst(51,74-51,75)
(and 
;; def=IndInd.fst(51,28-51,29); use=IndInd.fst(51,74-51,75)
(not 
;; def=IndInd.fst(51,28-51,29); use=IndInd.fst(51,74-51,75)
(BoxBool_proj_0 (IndInd.uu___is_Z x_1e3722fc96186e9612e474d93fc78066_1))
)


;; def=IndInd.fst(51,28-51,29); use=IndInd.fst(51,74-51,75)
(not 
;; def=IndInd.fst(51,28-51,29); use=IndInd.fst(51,74-51,75)
(BoxBool_proj_0 (IndInd.uu___is_S x_1e3722fc96186e9612e474d93fc78066_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(51,68-53,65)
(not 
;; def=IndInd.fst(51,28-51,29); use=IndInd.fst(51,74-51,75)
(BoxBool_proj_0 (IndInd.uu___is_Z x_1e3722fc96186e9612e474d93fc78066_1))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(51,68-53,65)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(51,68-53,65)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
IndInd.content0)

;; def=IndInd.fst(51,28-53,9); use=IndInd.fst(51,74-53,9)
(= x_1e3722fc96186e9612e474d93fc78066_1
(IndInd.S @x1
@x2))
)

;; def=IndInd.fst(53,5-53,25); use=IndInd.fst(53,13-53,47)
(and 
;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(53,23-53,25)
(or label_2

;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(53,23-53,25)
(Valid 
;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(53,23-53,25)
(Prims.precedes IndInd.vdl0
IndInd.content0
@x1
x_1e3722fc96186e9612e474d93fc78066_1)
)
)

(implies 
;; def=IndInd.fst(53,13-53,25); use=IndInd.fst(53,13-53,25)
(Valid 
;; def=IndInd.fst(53,13-53,25); use=IndInd.fst(53,13-53,25)
(IndInd.vdl_valid @x1)
)


;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(53,46-53,47)
(or label_3

;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(53,46-53,47)
(Valid 
;; def=IndInd.fst(51,68-53,65); use=IndInd.fst(53,46-53,47)
(Prims.precedes IndInd.content0
IndInd.content0
@x2
x_1e3722fc96186e9612e474d93fc78066_1)
)
)
))
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
; QUERY ID: (IndInd.vdl_valid, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, IndInd_pretyping_1e3722fc96186e9612e474d93fc78066, IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e, binder_x_1e3722fc96186e9612e474d93fc78066_1, disc_equation_IndInd.S, disc_equation_IndInd.Z, equality_tok_IndInd.Nil@tok, equality_tok_IndInd.Z@tok, fuel_guarded_inversion_IndInd.content0, projection_inverse_BoxBool_proj_0, projection_inverse_IndInd.S_l, projection_inverse_IndInd.S_x, subterm_ordering_IndInd.S, typing_tok_IndInd.Nil@tok, typing_tok_IndInd.Z@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec vdl_valid and content_valid


; <Start encoding let rec vdl_valid and content_valid>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.content_valid.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.content_valid.fuel_instrumented_token () Term)
;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.vdl_valid.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.vdl_valid.fuel_instrumented_token () Term)
(declare-fun IndInd.vdl_valid (Term) Term)
(declare-fun IndInd.vdl_valid@tok () Term)
(declare-fun IndInd.content_valid (Term Term) Term)
(declare-fun IndInd.content_valid@tok () Term)
;;;;;;;;;;;;;;;;l: vdl0 -> Prims.Tot Type
(declare-fun Tm_arrow_090fb62f879bea7ce3d057233b3e8f63 () Term)
;;;;;;;;;;;;;;;;l: vdl0 -> x: content0 -> Prims.Tot Type
(declare-fun Tm_arrow_950bf62f0c8a40b9d1538842ecff929e () Term)

; </end encoding let rec vdl_valid and content_valid>


; encoding sigelt let vdl


; <Start encoding let vdl>

(declare-fun IndInd.vdl () Term)
(declare-fun Tm_refine_a4f965e5227246b747690df244bdb1bb () Term)

; </end encoding let vdl>


; encoding sigelt let content


; <Start encoding let content>

(declare-fun IndInd.content (Term) Term)
;;;;;;;;;;;;;;;;l: vdl -> Type
(declare-fun Tm_arrow_7210e990428417eae0af648c3a96ab59 () Term)
(declare-fun IndInd.content@tok () Term)
(declare-fun Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf (Term) Term)

; </end encoding let content>

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
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.vdl0)
(HasType (IndInd.vdl_valid @x0)
Tm_type))
 

:pattern ((IndInd.vdl_valid @x0))
:qid typing_IndInd.vdl_valid))

:named typing_IndInd.vdl_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.vdl; Namespace IndInd
(assert (! (HasType IndInd.vdl
Tm_type)
:named typing_IndInd.vdl))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.vdl0)
(HasType @x1
IndInd.content0))
(HasType (IndInd.content_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.content_valid @x0
@x1))
:qid typing_IndInd.content_valid))

:named typing_IndInd.content_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,4-59,11); use=IndInd.fst(59,4-59,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.vdl)
(HasType (IndInd.content @x0)
Tm_type))
 

:pattern ((IndInd.content @x0))
:qid typing_IndInd.content))

:named typing_IndInd.content))
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
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)
(HasType (IndInd.vdl_valid.fuel_instrumented @u0
@x1)
Tm_type))
 

:pattern ((IndInd.vdl_valid.fuel_instrumented @u0
@x1))
:qid token_correspondence_IndInd.vdl_valid.fuel_instrumented))

:named token_correspondence_IndInd.vdl_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl0)
(HasType @x2
IndInd.content0))
(HasType (IndInd.content_valid.fuel_instrumented @u0
@x1
@x2)
Tm_type))
 

:pattern ((IndInd.content_valid.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_IndInd.content_valid.fuel_instrumented))

:named token_correspondence_IndInd.content_valid.fuel_instrumented))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.vdl; Namespace IndInd
(assert (! (HasType Tm_refine_a4f965e5227246b747690df244bdb1bb
Tm_type)
:named refinement_kinding_Tm_refine_a4f965e5227246b747690df244bdb1bb))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,22-59,51); use=IndInd.fst(59,22-59,51)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf))

:named refinement_kinding_Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.vdl; Namespace IndInd
(assert (! 
;; def=IndInd.fst(58,10-58,29); use=IndInd.fst(58,10-58,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a4f965e5227246b747690df244bdb1bb)
(and (HasTypeFuel @u0
@x1
IndInd.vdl0)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(58,17-58,28)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(58,17-58,28)
(IndInd.vdl_valid @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a4f965e5227246b747690df244bdb1bb))
:qid refinement_interpretation_Tm_refine_a4f965e5227246b747690df244bdb1bb))

:named refinement_interpretation_Tm_refine_a4f965e5227246b747690df244bdb1bb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,22-59,51); use=IndInd.fst(59,22-59,51)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x2))
(and (HasTypeFuel @u0
@x1
IndInd.content0)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(59,33-59,50)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(59,33-59,50)
(IndInd.content_valid @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x2)))
:qid refinement_interpretation_Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf))

:named refinement_interpretation_Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.equals@tok))
:named pre_kinding_Prims.equals@tok))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7210e990428417eae0af648c3a96ab59
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! (HasType Tm_arrow_7210e990428417eae0af648c3a96ab59
Tm_type)
:named kinding_Tm_arrow_7210e990428417eae0af648c3a96ab59))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_a4f965e5227246b747690df244bdb1bb
;;; Fact-ids: Name IndInd.vdl; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a4f965e5227246b747690df244bdb1bb))
(Valid (Prims.hasEq IndInd.vdl0)))
:named haseqTm_refine_a4f965e5227246b747690df244bdb1bb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,22-59,51); use=IndInd.fst(59,22-59,51)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x0)))
(Valid (Prims.hasEq IndInd.content0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x0))))
:qid haseqTm_refine_9e38c61c3420d273d6dbe60aa6981bbf))

:named haseqTm_refine_9e38c61c3420d273d6dbe60aa6981bbf))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name IndInd.vdl; Namespace IndInd
(assert (! (HasType IndInd.vdl
Tm_type)
:named function_token_typing_IndInd.vdl))
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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (= 151
(Term_constr_id Prims.pair@tok))
:named fresh_token_Prims.pair@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (= 135
(Term_constr_id Prims.equals@tok))
:named fresh_token_Prims.equals@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: IndInd.vdl_valid
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)
(= (IndInd.vdl_valid.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-IndInd.Nil @lb2)
Prims.l_True
(ite (is-IndInd.Cons @lb2)
(IndInd.content_valid.fuel_instrumented @u0
(IndInd.Cons_tail @lb2)
(IndInd.Cons__1 @lb2))
Tm_unit)))))
 :weight 0


:pattern ((IndInd.vdl_valid.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_IndInd.vdl_valid.fuel_instrumented))

:named equation_with_fuel_IndInd.vdl_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: IndInd.content_valid
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl0)
(HasType @x2
IndInd.content0))
(= (IndInd.content_valid.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-IndInd.Z @lb3)
(Prims.eq2 IndInd.vdl0
@x1
IndInd.Nil@tok)
(ite (is-IndInd.S @lb3)
(Prims.l_and (Prims.l_and (IndInd.vdl_valid.fuel_instrumented @u0
(IndInd.S_l @lb3))
(IndInd.content_valid.fuel_instrumented @u0
(IndInd.S_l @lb3)
(IndInd.S_x @lb3)))
(Prims.eq2 IndInd.vdl0
@x1
(IndInd.Cons (IndInd.S_l @lb3)
(IndInd.S_x @lb3))))
Tm_unit)))))
 :weight 0


:pattern ((IndInd.content_valid.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_IndInd.content_valid.fuel_instrumented))

:named equation_with_fuel_IndInd.content_valid.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for IndInd.vdl
;;; Fact-ids: Name IndInd.vdl; Namespace IndInd
(assert (! (= IndInd.vdl
Tm_refine_a4f965e5227246b747690df244bdb1bb)
:named equation_IndInd.vdl))
;;;;;;;;;;;;;;;;Equation for IndInd.content
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,4-59,11); use=IndInd.fst(59,4-59,11)
(forall ((@x0 Term))
 (! (= (IndInd.content @x0)
(Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf @x0))
 

:pattern ((IndInd.content @x0))
:qid equation_IndInd.content))

:named equation_IndInd.content))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,15-59,51); use=IndInd.fst(59,15-59,51)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7210e990428417eae0af648c3a96ab59))
:qid IndInd_pre_typing_Tm_arrow_7210e990428417eae0af648c3a96ab59))

:named IndInd_pre_typing_Tm_arrow_7210e990428417eae0af648c3a96ab59))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7210e990428417eae0af648c3a96ab59
;;; Fact-ids: Name IndInd.content; Namespace IndInd
(assert (! 
;; def=IndInd.fst(59,15-59,51); use=IndInd.fst(59,15-59,51)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(and 
;; def=IndInd.fst(59,15-59,51); use=IndInd.fst(59,15-59,51)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_7210e990428417eae0af648c3a96ab59.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59))
:qid IndInd_interpretation_Tm_arrow_7210e990428417eae0af648c3a96ab59))

:named IndInd_interpretation_Tm_arrow_7210e990428417eae0af648c3a96ab59))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (IndInd.vdl_valid.fuel_instrumented (SFuel @u0)
@x1)
(IndInd.vdl_valid.fuel_instrumented ZFuel
@x1))
 

:pattern ((IndInd.vdl_valid.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_IndInd.vdl_valid.fuel_instrumented))

:named @fuel_irrelevance_IndInd.vdl_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (IndInd.content_valid.fuel_instrumented (SFuel @u0)
@x1
@x2)
(IndInd.content_valid.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((IndInd.content_valid.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_IndInd.content_valid.fuel_instrumented))

:named @fuel_irrelevance_IndInd.content_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(47,8-47,17); use=IndInd.fst(47,8-47,17)
(forall ((@x0 Term))
 (! (= (IndInd.vdl_valid @x0)
(IndInd.vdl_valid.fuel_instrumented MaxFuel
@x0))
 

:pattern ((IndInd.vdl_valid @x0))
:qid @fuel_correspondence_IndInd.vdl_valid.fuel_instrumented))

:named @fuel_correspondence_IndInd.vdl_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name IndInd.vdl_valid; Namespace IndInd; Name IndInd.content_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(51,4-51,17); use=IndInd.fst(51,4-51,17)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.content_valid @x0
@x1)
(IndInd.content_valid.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((IndInd.content_valid @x0
@x1))
:qid @fuel_correspondence_IndInd.content_valid.fuel_instrumented))

:named @fuel_correspondence_IndInd.content_valid.fuel_instrumented))
(push) ;; push{2

; Starting query at IndInd.fst(71,3-73,112)

;;;;;;;;;;;;;;;;p : _: IndInd.vdl -> Type0 (_: IndInd.vdl -> Type)
(declare-fun x_d3cf6af6685664d886d37b1ce53ecc89_0 () Term)

;;;;;;;;;;;;;;;;binder_x_d3cf6af6685664d886d37b1ce53ecc89_0
;;; Fact-ids: 
(assert (! (HasType x_d3cf6af6685664d886d37b1ce53ecc89_0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
:named binder_x_d3cf6af6685664d886d37b1ce53ecc89_0))
;;;;;;;;;;;;;;;;q : v: IndInd.vdl -> _: IndInd.content v -> Type0 (v: IndInd.vdl -> _: IndInd.content v -> Type)
(declare-fun x_806c32ead6d02d476206a3f9a07dbeda_1 () Term)
;;;;;;;;;;;;;;;;v: vdl -> _: content v -> Type
(declare-fun Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
Tm_type)
:named kinding_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
:qid IndInd_pre_typing_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

:named IndInd_pre_typing_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(and 
;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(IndInd.content @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e.1))

(IsTotFun @x0)

;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

:named IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;binder_x_806c32ead6d02d476206a3f9a07dbeda_1
;;; Fact-ids: 
(assert (! (HasType x_806c32ead6d02d476206a3f9a07dbeda_1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
:named binder_x_806c32ead6d02d476206a3f9a07dbeda_1))
;;;;;;;;;;;;;;;;hNil : p IndInd.Nil (p IndInd.Nil)
(declare-fun x_2df5ea71502df93f8b3cb3e341cbdd1a_2 () Term)
;;;;;;;;;;;;;;;;binder_x_2df5ea71502df93f8b3cb3e341cbdd1a_2
;;; Fact-ids: 
(assert (! (HasType x_2df5ea71502df93f8b3cb3e341cbdd1a_2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok))
:named binder_x_2df5ea71502df93f8b3cb3e341cbdd1a_2))
;;;;;;;;;;;;;;;;hCons : tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x) (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x))
(declare-fun x_8395cb65d5061672e2b135d8b2b0f470_3 () Term)
;;;;;;;;;;;;;;;;tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)
(declare-fun Tm_arrow_dd0d87bd5b6486789c2fc3133477437f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_dd0d87bd5b6486789c2fc3133477437f
Tm_type)
:named kinding_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
:qid IndInd_pre_typing_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))

:named IndInd_pre_typing_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f)
(and 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1))
(HasType @x4
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
@x1)
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
(IndInd.Cons @x1
@x3))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.1))

(IsTotFun @x0)

;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.2))


;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.3))


;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))

:named IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
;;;;;;;;;;;;;;;;binder_x_8395cb65d5061672e2b135d8b2b0f470_3
;;; Fact-ids: 
(assert (! (HasType x_8395cb65d5061672e2b135d8b2b0f470_3
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f)
:named binder_x_8395cb65d5061672e2b135d8b2b0f470_3))
;;;;;;;;;;;;;;;;hZ : q IndInd.Nil IndInd.Z (q IndInd.Nil IndInd.Z)
(declare-fun x_9bff1808748d879f38c071ffa9da38c8_4 () Term)
;;;;;;;;;;;;;;;;binder_x_9bff1808748d879f38c071ffa9da38c8_4
;;; Fact-ids: 
(assert (! (HasType x_9bff1808748d879f38c071ffa9da38c8_4
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok))
:named binder_x_9bff1808748d879f38c071ffa9da38c8_4))
;;;;;;;;;;;;;;;;hS : l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x -> q (IndInd.Cons l x) (IndInd.S l x) (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x -> q (IndInd.Cons l x) (IndInd.S l x))
(declare-fun x_788daed69aff438c2edf6146fc1ae7ab_5 () Term)
;;;;;;;;;;;;;;;;l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)
(declare-fun Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f
Tm_type)
:named kinding_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
:qid IndInd_pre_typing_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))

:named IndInd_pre_typing_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f)
(and 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1))
(HasType @x4
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
@x1)
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
(IndInd.Cons @x1
@x3))
(IndInd.S @x1
@x3))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.1))

(IsTotFun @x0)

;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.2))


;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.3))


;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))

:named IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
;;;;;;;;;;;;;;;;binder_x_788daed69aff438c2edf6146fc1ae7ab_5
;;; Fact-ids: 
(assert (! (HasType x_788daed69aff438c2edf6146fc1ae7ab_5
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f)
:named binder_x_788daed69aff438c2edf6146fc1ae7ab_5))
;;;;;;;;;;;;;;;;v : IndInd.vdl (IndInd.vdl)
(declare-fun x_e118e093dadee316d9b58ce2830db25e_6 () Term)
;;;;;;;;;;;;;;;;binder_x_e118e093dadee316d9b58ce2830db25e_6
;;; Fact-ids: 
(assert (! (HasType x_e118e093dadee316d9b58ce2830db25e_6
IndInd.vdl)
:named binder_x_e118e093dadee316d9b58ce2830db25e_6))


;;;;;;;;;;;;;;;;tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)
(declare-fun Tm_arrow_5f1a4431a132e65536d78c8393aca65b (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x3)))
:qid IndInd_pre_typing_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named IndInd_pre_typing_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x2))
(and 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
(ApplyTT @x2
(IndInd.Cons @x3
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.1))

(IsTotFun @x0)

;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term))
 (! (implies (HasType @x3
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.2))


;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.3))


;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x2)))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)
(declare-fun Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x3)))
:qid IndInd_pre_typing_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named IndInd_pre_typing_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x2))
(and 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
(ApplyTT (ApplyTT @x1
(IndInd.Cons @x3
@x5))
(IndInd.S @x3
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.1))

(IsTotFun @x0)

;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term))
 (! (implies (HasType @x3
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.2))


;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.3))


;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x2)))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
(declare-fun Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-81,32); use=IndInd.fst(65,23-81,32)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39))

:named refinement_kinding_Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-81,32); use=IndInd.fst(65,23-81,32)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(IndInd.content @x6))

;; def=IndInd.fst(65,23-79,25); use=IndInd.fst(65,23-79,25)

;; def=IndInd.fst(65,23-79,25); use=IndInd.fst(65,23-79,25)
(or 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(65,23-79,25); use=IndInd.fst(65,23-79,25)
(and 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Valid 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(67,23-79,25); use=IndInd.fst(67,23-79,25)
(or 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(67,23-79,25); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(67,23-79,25); use=IndInd.fst(67,23-79,25)
(Valid 
;; def=IndInd.fst(67,23-79,25); use=IndInd.fst(67,23-79,25)
(Prims.op_Equals_Equals_Equals (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x6
x_e118e093dadee316d9b58ce2830db25e_6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39))

:named refinement_interpretation_Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39))
;;;;;;;;;;;;;;;;haseq for Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-81,32); use=IndInd.fst(65,23-81,32)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (IndInd.content @x4))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_83ccbdbd4b8fb3a38c0333993bee4d39))

:named haseqTm_refine_83ccbdbd4b8fb3a38c0333993bee4d39))
(declare-fun IndInd.content_induction (Term Term Term Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;p: (_: vdl -> Type) ->     q: (v: vdl -> _: content v -> Type) ->     hNil: p Nil ->     hCons: (tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)) ->     hZ: q Nil Z ->     hS: (l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)) ->     l: vdl ->     x: content l {hNil << hNil \/ hNil === hNil /\ (hZ << hZ \/ hZ === hZ /\ l << v)}   -> q l x
(declare-fun Tm_arrow_a25c05ea8a46481e097a4c909ad608bf () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_a25c05ea8a46481e097a4c909ad608bf
Tm_type)
:named kinding_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_a25c05ea8a46481e097a4c909ad608bf)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))
:qid IndInd_pre_typing_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))

:named IndInd_pre_typing_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_a25c05ea8a46481e097a4c909ad608bf)
(and 
;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x1))
(HasType @x7
IndInd.vdl)
(HasType @x8
(Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x1
@x3
@x2
@x5
@x7)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(ApplyTT (ApplyTT @x2
@x7)
@x8)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8))
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.1))

(IsTotFun @x0)

;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.2))


;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.3))


;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.4))


;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
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
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.5))


;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok)))
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
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.6))


;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
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
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.7))


;; def=IndInd.fst(65,23-82,35); use=IndInd.fst(65,23-82,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x1))
(HasType @x7
IndInd.vdl))
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
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf.8))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))
:qid IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))

:named IndInd_interpretation_Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))
(declare-fun IndInd.content_induction@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.content_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(IndInd.content_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.content_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid token_correspondence_IndInd.content_induction))

:named token_correspondence_IndInd.content_induction))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.content_induction@tok
Tm_arrow_a25c05ea8a46481e097a4c909ad608bf))

;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.content_induction@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(IndInd.content_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
 

:pattern ((IndInd.content_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid function_token_typing_IndInd.content_induction.1))
)
 

:pattern ((ApplyTT @x0
IndInd.content_induction@tok))
:qid function_token_typing_IndInd.content_induction))

:named function_token_typing_IndInd.content_induction))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))
(HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))
(HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x0))
(HasType @x6
IndInd.vdl)
(HasType @x7
(Tm_refine_83ccbdbd4b8fb3a38c0333993bee4d39 @x0
@x2
@x1
@x4
@x6)))
(HasType (IndInd.content_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(ApplyTT (ApplyTT @x1
@x6)
@x7)))
 

:pattern ((IndInd.content_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_IndInd.content_induction))

:named typing_IndInd.content_induction))




(declare-fun Tm_refine_822900ac13d7e0ed992de3759dc850e3 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(65,23-73,112)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_822900ac13d7e0ed992de3759dc850e3))

:named refinement_kinding_Tm_refine_822900ac13d7e0ed992de3759dc850e3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(65,23-73,112)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
IndInd.vdl)

;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(65,23-73,112)

;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(65,23-73,112)
(or 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(65,23-73,112)
(and 
;; def=IndInd.fst(65,23-65,27); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(65,23-65,27); use=IndInd.fst(65,23-65,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(67,23-73,112); use=IndInd.fst(67,23-73,112)
(or 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(67,23-73,112); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(67,23-67,25); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(67,23-67,25); use=IndInd.fst(67,23-67,25)
(Prims.op_Equals_Equals_Equals (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_822900ac13d7e0ed992de3759dc850e3))

:named refinement_interpretation_Tm_refine_822900ac13d7e0ed992de3759dc850e3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_822900ac13d7e0ed992de3759dc850e3
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(65,23-73,112)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq IndInd.vdl)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_822900ac13d7e0ed992de3759dc850e3))

:named haseqTm_refine_822900ac13d7e0ed992de3759dc850e3))
(declare-fun IndInd.vdl_induction (Term Term Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;p: (_: vdl -> Type) ->     q: (v: vdl -> _: content v -> Type) ->     hNil: p Nil ->     hCons: (tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)) ->     hZ: q Nil Z ->     hS: (l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)) ->     v: vdl{hNil << hNil \/ hNil === hNil /\ (hZ << hZ \/ hZ === hZ /\ v << v)}   -> p v
(declare-fun Tm_arrow_7ac663323ebc509ad3438ca51d6470ea () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_7ac663323ebc509ad3438ca51d6470ea
Tm_type)
:named kinding_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7ac663323ebc509ad3438ca51d6470ea)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))
:qid IndInd_pre_typing_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))

:named IndInd_pre_typing_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7ac663323ebc509ad3438ca51d6470ea)
(and 
;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x1))
(HasType @x7
(Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x1
@x3
@x2
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(ApplyTT @x1
@x7)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.1))

(IsTotFun @x0)

;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.2))


;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.3))


;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.4))


;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
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
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.5))


;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok)))
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
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.6))


;; def=IndInd.fst(63,26-73,112); use=IndInd.fst(63,26-73,112)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
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
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea.7))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))
:qid IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))

:named IndInd_interpretation_Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))
(declare-fun IndInd.vdl_induction@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.vdl_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
(IndInd.vdl_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.vdl_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6))
:qid token_correspondence_IndInd.vdl_induction))

:named token_correspondence_IndInd.vdl_induction))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.vdl_induction@tok
Tm_arrow_7ac663323ebc509ad3438ca51d6470ea))

;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.vdl_induction@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(IndInd.vdl_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((IndInd.vdl_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid function_token_typing_IndInd.vdl_induction.1))
)
 

:pattern ((ApplyTT @x0
IndInd.vdl_induction@tok))
:qid function_token_typing_IndInd.vdl_induction))

:named function_token_typing_IndInd.vdl_induction))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))
(HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))
(HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x0))
(HasType @x6
(Tm_refine_822900ac13d7e0ed992de3759dc850e3 @x0
@x2
@x1
@x4)))
(HasType (IndInd.vdl_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(ApplyTT @x0
@x6)))
 

:pattern ((IndInd.vdl_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_IndInd.vdl_induction))

:named typing_IndInd.vdl_induction))
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

; Encoding query formula : forall (k: Prims.pure_post (p v)).
;   (forall (x: p v). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? v) /\ ~(Cons? v) ==> Prims.l_False) /\
;   (v == IndInd.Nil ==> IndInd.Nil == v) /\
;   (~(Nil? v) ==>
;     (forall (b: IndInd.vdl0) (b: IndInd.content0).
;         v == IndInd.Cons b b ==>
;         Prims.auto_squash (IndInd.vdl_valid b) /\
;         (forall (any_result: IndInd.vdl0).
;             b == any_result ==>
;             IndInd.vdl_valid b /\ (hNil << hNil \/ (hZ << hZ \/ b << v)) /\
;             (forall (any_result: IndInd.vdl0).
;                 b == any_result ==>
;                 (forall (any_result: p b).
;                     IndInd.vdl_induction p q hNil hCons hZ hS b == any_result ==>
;                     Prims.auto_squash (IndInd.content_valid b b) /\
;                     (forall (any_result: IndInd.content0).
;                         b == any_result ==>
;                         Prims.auto_squash (IndInd.vdl_valid b) /\
;                         (forall (any_result: IndInd.vdl0).
;                             b == any_result ==>
;                             IndInd.content_valid b b /\ (hNil << hNil \/ (hZ << hZ \/ b << v)) /\
;                             (forall (any_result: IndInd.content0).
;                                 b == any_result ==>
;                                 (forall (any_result: q b b).
;                                     IndInd.content_induction p q hNil hCons hZ hS b b == any_result ==>
;                                     (forall (any_result: p (IndInd.Cons b b)).
;                                         hCons b
;                                           (IndInd.vdl_induction p q hNil hCons hZ hS b)
;                                           b
;                                           (IndInd.content_induction p q hNil hCons hZ hS b b) ==
;                                         any_result ==>
;                                         IndInd.Cons b b == v))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vdl_induction and content_induction`

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
(Prims.pure_post (ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
x_e118e093dadee316d9b58ce2830db25e_6)))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(71,3-73,112)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(71,3-73,112)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(71,3-73,112)
(and (implies 
;; def=IndInd.fst(69,23-69,24); use=IndInd.fst(71,9-71,10)
(and 
;; def=IndInd.fst(69,23-69,24); use=IndInd.fst(71,9-71,10)
(not 
;; def=IndInd.fst(69,23-69,24); use=IndInd.fst(71,9-71,10)
(BoxBool_proj_0 (IndInd.uu___is_Nil x_e118e093dadee316d9b58ce2830db25e_6))
)


;; def=IndInd.fst(69,23-69,24); use=IndInd.fst(71,9-71,10)
(not 
;; def=IndInd.fst(69,23-69,24); use=IndInd.fst(71,9-71,10)
(BoxBool_proj_0 (IndInd.uu___is_Cons x_e118e093dadee316d9b58ce2830db25e_6))
)
)

label_1)
(implies 
;; def=IndInd.fst(69,23-72,6); use=IndInd.fst(71,9-72,6)
(= x_e118e093dadee316d9b58ce2830db25e_6
IndInd.Nil@tok)


;; def=IndInd.fst(65,30-69,24); use=IndInd.fst(72,10-72,14)
(or label_2

;; def=IndInd.fst(65,30-69,24); use=IndInd.fst(72,10-72,14)
(= IndInd.Nil@tok
x_e118e093dadee316d9b58ce2830db25e_6)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(71,3-73,112)
(not 
;; def=IndInd.fst(69,23-69,24); use=IndInd.fst(71,9-71,10)
(BoxBool_proj_0 (IndInd.uu___is_Nil x_e118e093dadee316d9b58ce2830db25e_6))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(71,3-73,112)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(71,3-73,112)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
IndInd.content0)

;; def=IndInd.fst(69,23-73,12); use=IndInd.fst(71,9-73,12)
(= x_e118e093dadee316d9b58ce2830db25e_6
(IndInd.Cons @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(71,3-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,22-73,24)
(or label_3

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,22-73,24)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,22-73,24)
(IndInd.vdl_valid @x1)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
IndInd.vdl0)

;; def=IndInd.fst(66,31-73,10); use=IndInd.fst(71,3-73,112)
(= @x1
@x3)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(71,3-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,61-73,63)
(or label_4

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,61-73,63)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,61-73,63)
(IndInd.vdl_valid @x1)
)
)


;; def=IndInd.fst(65,23-73,112); use=IndInd.fst(73,61-73,63)
(or label_5

;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,61-73,63)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,61-73,63)
(Prims.precedes (ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,61-73,63)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,61-73,63)
(Prims.precedes (ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
x_9bff1808748d879f38c071ffa9da38c8_4
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,61-73,63)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,61-73,63)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
IndInd.vdl0)

;; def=IndInd.fst(69,23-73,10); use=IndInd.fst(71,3-73,112)
(= @x1
@x4)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))

;; def=dummy(0,0-0,0); use=IndInd.fst(71,3-73,112)
(= (IndInd.vdl_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1)
@x5)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(71,3-73,112)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(73,65-73,66)
(or label_6

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(73,65-73,66)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(73,65-73,66)
(IndInd.content_valid @x1
@x2)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
IndInd.content0)

;; def=IndInd.fst(66,49-73,12); use=IndInd.fst(71,3-73,112)
(= @x2
@x6)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(71,3-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,107-73,109)
(or label_7

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,107-73,109)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(73,107-73,109)
(IndInd.vdl_valid @x1)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
IndInd.vdl0)

;; def=IndInd.fst(73,8-81,24); use=IndInd.fst(71,3-73,112)
(= @x1
@x7)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(71,3-73,112)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(73,110-73,111)
(or label_8

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(73,110-73,111)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(73,110-73,111)
(IndInd.content_valid @x1
@x2)
)
)


;; def=IndInd.fst(65,23-79,25); use=IndInd.fst(73,110-73,111)
(or label_9

;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,110-73,111)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,110-73,111)
(Prims.precedes (ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,110-73,111)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,110-73,111)
(Prims.precedes (ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
x_9bff1808748d879f38c071ffa9da38c8_4
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,110-73,111)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(73,110-73,111)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
IndInd.content0)

;; def=IndInd.fst(73,11-81,32); use=IndInd.fst(71,3-73,112)
(= @x2
@x8)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
@x1)
@x2))

;; def=dummy(0,0-0,0); use=IndInd.fst(71,3-73,112)
(= (IndInd.content_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1
@x2)
@x9)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
(IndInd.Cons @x1
@x2)))

;; def=IndInd.fst(70,28-73,112); use=IndInd.fst(71,3-73,112)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT x_8395cb65d5061672e2b135d8b2b0f470_3
@x1)
(IndInd.vdl_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1))
@x2)
(IndInd.content_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1
@x2))
@x10)
)

;; def=IndInd.fst(66,82-69,24); use=IndInd.fst(73,16-73,112)
(or label_10

;; def=IndInd.fst(66,82-69,24); use=IndInd.fst(73,16-73,112)
(= (IndInd.Cons @x1
@x2)
x_e118e093dadee316d9b58ce2830db25e_6)
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
)
 
;;no pats
:qid @query.8))
)
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
; QUERY ID: (IndInd.vdl_induction, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.content_valid.fuel_instrumented, @fuel_correspondence_IndInd.vdl_valid.fuel_instrumented, @fuel_irrelevance_IndInd.content_valid.fuel_instrumented, @query, IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e, binder_x_e118e093dadee316d9b58ce2830db25e_6, constructor_distinct_IndInd.Cons, constructor_distinct_IndInd.Nil, disc_equation_IndInd.Cons, disc_equation_IndInd.Nil, eq2-interp, equality_tok_IndInd.Nil@tok, equation_IndInd.vdl, equation_with_fuel_IndInd.content_valid.fuel_instrumented, equation_with_fuel_IndInd.vdl_valid.fuel_instrumented, fuel_guarded_inversion_IndInd.content0, fuel_guarded_inversion_IndInd.vdl0, l_and-interp, projection_inverse_BoxBool_proj_0, projection_inverse_IndInd.Cons__1, projection_inverse_IndInd.Cons_tail, refinement_interpretation_Tm_refine_a4f965e5227246b747690df244bdb1bb, subterm_ordering_IndInd.Cons, true_interp, typing_tok_IndInd.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at IndInd.fst(83,4-85,107)

;;;;;;;;;;;;;;;;p : _: IndInd.vdl -> Type0 (_: IndInd.vdl -> Type)
(declare-fun x_d3cf6af6685664d886d37b1ce53ecc89_0 () Term)

;;;;;;;;;;;;;;;;binder_x_d3cf6af6685664d886d37b1ce53ecc89_0
;;; Fact-ids: 
(assert (! (HasType x_d3cf6af6685664d886d37b1ce53ecc89_0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
:named binder_x_d3cf6af6685664d886d37b1ce53ecc89_0))
;;;;;;;;;;;;;;;;q : v: IndInd.vdl -> _: IndInd.content v -> Type0 (v: IndInd.vdl -> _: IndInd.content v -> Type)
(declare-fun x_806c32ead6d02d476206a3f9a07dbeda_1 () Term)
;;;;;;;;;;;;;;;;v: vdl -> _: content v -> Type
(declare-fun Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
Tm_type)
:named kinding_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(76,29-76,58); use=IndInd.fst(76,29-76,58)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
:qid IndInd_pre_typing_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

:named IndInd_pre_typing_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(76,29-76,58); use=IndInd.fst(76,29-76,58)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(and 
;; def=IndInd.fst(76,29-76,58); use=IndInd.fst(76,29-76,58)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(IndInd.content @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e.1))

(IsTotFun @x0)

;; def=IndInd.fst(76,29-76,58); use=IndInd.fst(76,29-76,58)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

:named IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;binder_x_806c32ead6d02d476206a3f9a07dbeda_1
;;; Fact-ids: 
(assert (! (HasType x_806c32ead6d02d476206a3f9a07dbeda_1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
:named binder_x_806c32ead6d02d476206a3f9a07dbeda_1))
;;;;;;;;;;;;;;;;hNil : p IndInd.Nil (p IndInd.Nil)
(declare-fun x_2df5ea71502df93f8b3cb3e341cbdd1a_2 () Term)
;;;;;;;;;;;;;;;;binder_x_2df5ea71502df93f8b3cb3e341cbdd1a_2
;;; Fact-ids: 
(assert (! (HasType x_2df5ea71502df93f8b3cb3e341cbdd1a_2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok))
:named binder_x_2df5ea71502df93f8b3cb3e341cbdd1a_2))
;;;;;;;;;;;;;;;;hCons : tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x) (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x))
(declare-fun x_8395cb65d5061672e2b135d8b2b0f470_3 () Term)
;;;;;;;;;;;;;;;;tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)
(declare-fun Tm_arrow_dd0d87bd5b6486789c2fc3133477437f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_dd0d87bd5b6486789c2fc3133477437f
Tm_type)
:named kinding_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
:qid IndInd_pre_typing_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))

:named IndInd_pre_typing_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f)
(and 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1))
(HasType @x4
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
@x1)
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
(IndInd.Cons @x1
@x3))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.1))

(IsTotFun @x0)

;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.2))


;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.3))


;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
:qid IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))

:named IndInd_interpretation_Tm_arrow_dd0d87bd5b6486789c2fc3133477437f))
;;;;;;;;;;;;;;;;binder_x_8395cb65d5061672e2b135d8b2b0f470_3
;;; Fact-ids: 
(assert (! (HasType x_8395cb65d5061672e2b135d8b2b0f470_3
Tm_arrow_dd0d87bd5b6486789c2fc3133477437f)
:named binder_x_8395cb65d5061672e2b135d8b2b0f470_3))
;;;;;;;;;;;;;;;;hZ : q IndInd.Nil IndInd.Z (q IndInd.Nil IndInd.Z)
(declare-fun x_9bff1808748d879f38c071ffa9da38c8_4 () Term)
;;;;;;;;;;;;;;;;binder_x_9bff1808748d879f38c071ffa9da38c8_4
;;; Fact-ids: 
(assert (! (HasType x_9bff1808748d879f38c071ffa9da38c8_4
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok))
:named binder_x_9bff1808748d879f38c071ffa9da38c8_4))
;;;;;;;;;;;;;;;;hS : l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x -> q (IndInd.Cons l x) (IndInd.S l x) (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x -> q (IndInd.Cons l x) (IndInd.S l x))
(declare-fun x_788daed69aff438c2edf6146fc1ae7ab_5 () Term)
;;;;;;;;;;;;;;;;l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)
(declare-fun Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f
Tm_type)
:named kinding_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
:qid IndInd_pre_typing_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))

:named IndInd_pre_typing_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f)
(and 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1))
(HasType @x4
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
@x1)
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
(IndInd.Cons @x1
@x3))
(IndInd.S @x1
@x3))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.1))

(IsTotFun @x0)

;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.2))


;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.3))


;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))
(HasType @x3
(IndInd.content @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
:qid IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))

:named IndInd_interpretation_Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f))
;;;;;;;;;;;;;;;;binder_x_788daed69aff438c2edf6146fc1ae7ab_5
;;; Fact-ids: 
(assert (! (HasType x_788daed69aff438c2edf6146fc1ae7ab_5
Tm_arrow_0187f0771f6a8c543bb1975ac931ec8f)
:named binder_x_788daed69aff438c2edf6146fc1ae7ab_5))
;;;;;;;;;;;;;;;;l : IndInd.vdl (IndInd.vdl)
(declare-fun x_e118e093dadee316d9b58ce2830db25e_6 () Term)
;;;;;;;;;;;;;;;;binder_x_e118e093dadee316d9b58ce2830db25e_6
;;; Fact-ids: 
(assert (! (HasType x_e118e093dadee316d9b58ce2830db25e_6
IndInd.vdl)
:named binder_x_e118e093dadee316d9b58ce2830db25e_6))
;;;;;;;;;;;;;;;;x : IndInd.content l (IndInd.content l)
(declare-fun x_23be4f26485c8f4a9d039799cfae9ae3_7 () Term)
;;;;;;;;;;;;;;;;binder_x_23be4f26485c8f4a9d039799cfae9ae3_7
;;; Fact-ids: 
(assert (! (HasType x_23be4f26485c8f4a9d039799cfae9ae3_7
(IndInd.content x_e118e093dadee316d9b58ce2830db25e_6))
:named binder_x_23be4f26485c8f4a9d039799cfae9ae3_7))


;;;;;;;;;;;;;;;;tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)
(declare-fun Tm_arrow_5f1a4431a132e65536d78c8393aca65b (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x3)))
:qid IndInd_pre_typing_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named IndInd_pre_typing_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x2))
(and 
;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
(ApplyTT @x2
(IndInd.Cons @x3
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.1))

(IsTotFun @x0)

;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term))
 (! (implies (HasType @x3
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.2))


;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.3))


;; def=IndInd.fst(78,34-78,94); use=IndInd.fst(78,34-78,94)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x2)))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)
(declare-fun Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x3)))
:qid IndInd_pre_typing_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named IndInd_pre_typing_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x2))
(and 
;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
(ApplyTT (ApplyTT @x1
(IndInd.Cons @x3
@x5))
(IndInd.S @x3
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.1))

(IsTotFun @x0)

;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term))
 (! (implies (HasType @x3
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.2))


;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.3))


;; def=IndInd.fst(80,31-80,95); use=IndInd.fst(80,31-80,95)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x2)))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
(declare-fun Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(77,23-85,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592))

:named refinement_kinding_Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(77,23-85,107)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(IndInd.content @x6))

;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(77,23-85,107)

;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(77,23-85,107)
(or 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(77,23-85,107)
(and 
;; def=IndInd.fst(77,23-77,27); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(77,23-77,27); use=IndInd.fst(77,23-77,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(79,23-85,107); use=IndInd.fst(79,23-85,107)
(or 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(79,23-85,107); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(79,23-79,25); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(79,23-79,25); use=IndInd.fst(79,23-79,25)
(Prims.op_Equals_Equals_Equals (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(81,23-85,107); use=IndInd.fst(81,23-85,107)
(or 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x6
x_e118e093dadee316d9b58ce2830db25e_6)
)


;; def=IndInd.fst(81,23-85,107); use=IndInd.fst(81,23-85,107)
(and 
;; def=IndInd.fst(81,23-81,24); use=IndInd.fst(81,23-81,24)
(Valid 
;; def=IndInd.fst(81,23-81,24); use=IndInd.fst(81,23-81,24)
(Prims.op_Equals_Equals_Equals IndInd.vdl
IndInd.vdl
@x6
x_e118e093dadee316d9b58ce2830db25e_6)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (IndInd.content @x6)
(IndInd.content x_e118e093dadee316d9b58ce2830db25e_6)
@x1
x_23be4f26485c8f4a9d039799cfae9ae3_7)
)
)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592))

:named refinement_interpretation_Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(77,23-85,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (IndInd.content @x4))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_f42e6f4f158c9f09dd0642f9e5c52592))

:named haseqTm_refine_f42e6f4f158c9f09dd0642f9e5c52592))
(declare-fun IndInd.content_induction (Term Term Term Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;p: (_: vdl -> Type) ->     q: (v: vdl -> _: content v -> Type) ->     hNil: p Nil ->     hCons: (tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)) ->     hZ: q Nil Z ->     hS: (l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)) ->     l: vdl ->     x:       content l         {hNil << hNil \/ hNil === hNil /\ (hZ << hZ \/ hZ === hZ /\ (l << l \/ l === l /\ x << x))}   -> q l x
(declare-fun Tm_arrow_a0c054c1806677acf08bb612462353c1 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a0c054c1806677acf08bb612462353c1
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_a0c054c1806677acf08bb612462353c1
Tm_type)
:named kinding_Tm_arrow_a0c054c1806677acf08bb612462353c1))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_a0c054c1806677acf08bb612462353c1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_a0c054c1806677acf08bb612462353c1))
:qid IndInd_pre_typing_Tm_arrow_a0c054c1806677acf08bb612462353c1))

:named IndInd_pre_typing_Tm_arrow_a0c054c1806677acf08bb612462353c1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_a0c054c1806677acf08bb612462353c1)
(and 
;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x1))
(HasType @x7
IndInd.vdl)
(HasType @x8
(Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x1
@x3
@x2
@x5
@x7)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(ApplyTT (ApplyTT @x2
@x7)
@x8)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8))
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.1))

(IsTotFun @x0)

;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.2))


;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.3))


;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.4))


;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
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
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.5))


;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok)))
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
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.6))


;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
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
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.7))


;; def=IndInd.fst(75,26-85,107); use=IndInd.fst(75,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x1))
(HasType @x7
IndInd.vdl))
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
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1.8))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_a0c054c1806677acf08bb612462353c1))
:qid IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1))

:named IndInd_interpretation_Tm_arrow_a0c054c1806677acf08bb612462353c1))
(declare-fun IndInd.content_induction@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.content_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(IndInd.content_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.content_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid token_correspondence_IndInd.content_induction))

:named token_correspondence_IndInd.content_induction))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.content_induction@tok
Tm_arrow_a0c054c1806677acf08bb612462353c1))

;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.content_induction@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(IndInd.content_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
 

:pattern ((IndInd.content_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid function_token_typing_IndInd.content_induction.1))
)
 

:pattern ((ApplyTT @x0
IndInd.content_induction@tok))
:qid function_token_typing_IndInd.content_induction))

:named function_token_typing_IndInd.content_induction))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(75,4-75,21); use=IndInd.fst(75,4-75,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))
(HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))
(HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x0))
(HasType @x6
IndInd.vdl)
(HasType @x7
(Tm_refine_f42e6f4f158c9f09dd0642f9e5c52592 @x0
@x2
@x1
@x4
@x6)))
(HasType (IndInd.content_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(ApplyTT (ApplyTT @x1
@x6)
@x7)))
 

:pattern ((IndInd.content_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_IndInd.content_induction))

:named typing_IndInd.content_induction))




(declare-fun Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(65,23-85,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_e05c8785f51bb9dee71ba470e4e247d8))

:named refinement_kinding_Tm_refine_e05c8785f51bb9dee71ba470e4e247d8))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(65,23-85,107)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
IndInd.vdl)

;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(65,23-85,107)

;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(65,23-85,107)
(or 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(65,23-85,107)
(and 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Valid 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x2
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
@x3
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(67,23-85,107); use=IndInd.fst(67,23-85,107)
(or 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(67,23-85,107); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(67,23-79,25); use=IndInd.fst(67,23-79,25)
(Valid 
;; def=IndInd.fst(67,23-79,25); use=IndInd.fst(67,23-79,25)
(Prims.op_Equals_Equals_Equals (ApplyTT (ApplyTT @x4
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
@x5
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_e05c8785f51bb9dee71ba470e4e247d8))

:named refinement_interpretation_Tm_refine_e05c8785f51bb9dee71ba470e4e247d8))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e05c8785f51bb9dee71ba470e4e247d8
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(65,23-85,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq IndInd.vdl)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_e05c8785f51bb9dee71ba470e4e247d8))

:named haseqTm_refine_e05c8785f51bb9dee71ba470e4e247d8))
(declare-fun IndInd.vdl_induction (Term Term Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;p: (_: vdl -> Type) ->     q: (v: vdl -> _: content v -> Type) ->     hNil: p Nil ->     hCons: (tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)) ->     hZ: q Nil Z ->     hS: (l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)) ->     v: vdl{hNil << hNil \/ hNil === hNil /\ (hZ << hZ \/ hZ === hZ /\ v << l)}   -> p v
(declare-fun Tm_arrow_c81507d4b18d361f72f2e07469b96577 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c81507d4b18d361f72f2e07469b96577
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_c81507d4b18d361f72f2e07469b96577
Tm_type)
:named kinding_Tm_arrow_c81507d4b18d361f72f2e07469b96577))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_c81507d4b18d361f72f2e07469b96577)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_c81507d4b18d361f72f2e07469b96577))
:qid IndInd_pre_typing_Tm_arrow_c81507d4b18d361f72f2e07469b96577))

:named IndInd_pre_typing_Tm_arrow_c81507d4b18d361f72f2e07469b96577))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_c81507d4b18d361f72f2e07469b96577)
(and 
;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x1))
(HasType @x7
(Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x1
@x3
@x2
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(ApplyTT @x1
@x7)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.1))

(IsTotFun @x0)

;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.2))


;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.3))


;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.4))


;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
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
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.5))


;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok)))
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
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.6))


;; def=IndInd.fst(63,26-85,107); use=IndInd.fst(63,26-85,107)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x2
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x3
(ApplyTT @x1
IndInd.Nil@tok))
(HasType @x4
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x1))
(HasType @x5
(ApplyTT (ApplyTT @x2
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x6
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
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
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577.7))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_c81507d4b18d361f72f2e07469b96577))
:qid IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577))

:named IndInd_interpretation_Tm_arrow_c81507d4b18d361f72f2e07469b96577))
(declare-fun IndInd.vdl_induction@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.vdl_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
(IndInd.vdl_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.vdl_induction@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6))
:qid token_correspondence_IndInd.vdl_induction))

:named token_correspondence_IndInd.vdl_induction))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.vdl_induction@tok
Tm_arrow_c81507d4b18d361f72f2e07469b96577))

;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT IndInd.vdl_induction@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(IndInd.vdl_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((IndInd.vdl_induction @x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid function_token_typing_IndInd.vdl_induction.1))
)
 

:pattern ((ApplyTT @x0
IndInd.vdl_induction@tok))
:qid function_token_typing_IndInd.vdl_induction))

:named function_token_typing_IndInd.vdl_induction))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(63,8-63,21); use=IndInd.fst(63,8-63,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))
(HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))
(HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x0))
(HasType @x6
(Tm_refine_e05c8785f51bb9dee71ba470e4e247d8 @x0
@x2
@x1
@x4)))
(HasType (IndInd.vdl_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(ApplyTT @x0
@x6)))
 

:pattern ((IndInd.vdl_induction @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_IndInd.vdl_induction))

:named typing_IndInd.vdl_induction))
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

; Encoding query formula : forall (k: Prims.pure_post (q l x)).
;   (forall (x: q l x). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Z? x) /\ ~(S? x) ==> Prims.l_False) /\
;   (x == IndInd.Z ==> IndInd.Z == x /\ IndInd.Nil == l) /\
;   (~(Z? x) ==>
;     (forall (b: IndInd.vdl0) (b: IndInd.content0).
;         x == IndInd.S b b ==>
;         Prims.auto_squash (IndInd.vdl_valid b) /\
;         (forall (any_result: IndInd.vdl0).
;             b == any_result ==>
;             IndInd.vdl_valid b /\ (hNil << hNil \/ (hZ << hZ \/ b << l)) /\
;             (forall (any_result: IndInd.vdl0).
;                 b == any_result ==>
;                 (forall (any_result: p b).
;                     IndInd.vdl_induction p q hNil hCons hZ hS b == any_result ==>
;                     Prims.auto_squash (IndInd.content_valid b b) /\
;                     (forall (any_result: IndInd.content0).
;                         b == any_result ==>
;                         Prims.auto_squash (IndInd.vdl_valid b) /\
;                         (forall (any_result: IndInd.vdl0).
;                             b == any_result ==>
;                             IndInd.content_valid b b /\
;                             (hNil << hNil \/ (hZ << hZ \/ (b << l \/ b === l /\ b << x))) /\
;                             (forall (any_result: IndInd.content0).
;                                 b == any_result ==>
;                                 (forall (any_result: q b b).
;                                     IndInd.content_induction p q hNil hCons hZ hS b b == any_result ==>
;                                     (forall (any_result: q (IndInd.Cons b b) (IndInd.S b b)).
;                                         hS b
;                                           (IndInd.vdl_induction p q hNil hCons hZ hS b)
;                                           b
;                                           (IndInd.content_induction p q hNil hCons hZ hS b b) ==
;                                         any_result ==>
;                                         IndInd.S b b == x /\ IndInd.Cons b b == l))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vdl_induction and content_induction`

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
(Prims.pure_post (ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
x_e118e093dadee316d9b58ce2830db25e_6)
x_23be4f26485c8f4a9d039799cfae9ae3_7)))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(83,4-85,107)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(83,4-85,107)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(83,4-85,107)
(and (implies 
;; def=IndInd.fst(81,31-81,32); use=IndInd.fst(83,10-83,11)
(and 
;; def=IndInd.fst(81,31-81,32); use=IndInd.fst(83,10-83,11)
(not 
;; def=IndInd.fst(81,31-81,32); use=IndInd.fst(83,10-83,11)
(BoxBool_proj_0 (IndInd.uu___is_Z x_23be4f26485c8f4a9d039799cfae9ae3_7))
)


;; def=IndInd.fst(81,31-81,32); use=IndInd.fst(83,10-83,11)
(not 
;; def=IndInd.fst(81,31-81,32); use=IndInd.fst(83,10-83,11)
(BoxBool_proj_0 (IndInd.uu___is_S x_23be4f26485c8f4a9d039799cfae9ae3_7))
)
)

label_1)
(implies 
;; def=IndInd.fst(81,31-84,5); use=IndInd.fst(83,10-84,5)
(= x_23be4f26485c8f4a9d039799cfae9ae3_7
IndInd.Z@tok)


;; def=dummy(0,0-0,0); use=IndInd.fst(84,9-84,11)
(and 
;; def=IndInd.fst(79,34-81,32); use=IndInd.fst(84,9-84,11)
(or label_2

;; def=IndInd.fst(79,34-81,32); use=IndInd.fst(84,9-84,11)
(= IndInd.Z@tok
x_23be4f26485c8f4a9d039799cfae9ae3_7)
)


;; def=IndInd.fst(79,30-81,24); use=IndInd.fst(84,9-84,11)
(or label_3

;; def=IndInd.fst(79,30-81,24); use=IndInd.fst(84,9-84,11)
(= IndInd.Nil@tok
x_e118e093dadee316d9b58ce2830db25e_6)
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(83,4-85,107)
(not 
;; def=IndInd.fst(81,31-81,32); use=IndInd.fst(83,10-83,11)
(BoxBool_proj_0 (IndInd.uu___is_Z x_23be4f26485c8f4a9d039799cfae9ae3_7))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(83,4-85,107)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(83,4-85,107)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
IndInd.content0)

;; def=IndInd.fst(81,31-85,10); use=IndInd.fst(83,10-85,10)
(= x_23be4f26485c8f4a9d039799cfae9ae3_7
(IndInd.S @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(83,4-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,17-85,19)
(or label_4

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,17-85,19)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,17-85,19)
(IndInd.vdl_valid @x1)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
IndInd.vdl0)

;; def=IndInd.fst(80,29-85,8); use=IndInd.fst(83,4-85,107)
(= @x1
@x3)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(83,4-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,56-85,58)
(or label_5

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,56-85,58)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,56-85,58)
(IndInd.vdl_valid @x1)
)
)


;; def=IndInd.fst(65,23-85,107); use=IndInd.fst(85,56-85,58)
(or label_6

;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,56-85,58)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,56-85,58)
(Prims.precedes (ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,56-85,58)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,56-85,58)
(Prims.precedes (ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
x_9bff1808748d879f38c071ffa9da38c8_4
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,56-85,58)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,56-85,58)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
IndInd.vdl0)

;; def=IndInd.fst(69,23-85,8); use=IndInd.fst(83,4-85,107)
(= @x1
@x4)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
@x1))

;; def=dummy(0,0-0,0); use=IndInd.fst(83,4-85,107)
(= (IndInd.vdl_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1)
@x5)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(83,4-85,107)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(85,60-85,61)
(or label_7

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(85,60-85,61)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(85,60-85,61)
(IndInd.content_valid @x1
@x2)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
IndInd.content0)

;; def=IndInd.fst(80,45-85,10); use=IndInd.fst(83,4-85,107)
(= @x2
@x6)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(83,4-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,102-85,104)
(or label_8

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,102-85,104)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(85,102-85,104)
(IndInd.vdl_valid @x1)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
IndInd.vdl0)

;; def=IndInd.fst(81,23-85,8); use=IndInd.fst(83,4-85,107)
(= @x1
@x7)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(83,4-85,107)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(85,105-85,106)
(or label_9

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(85,105-85,106)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(85,105-85,106)
(IndInd.content_valid @x1
@x2)
)
)


;; def=IndInd.fst(77,23-85,107); use=IndInd.fst(85,105-85,106)
(or label_10

;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Prims.precedes (ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
(ApplyTT x_d3cf6af6685664d886d37b1ce53ecc89_0
IndInd.Nil@tok)
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_2df5ea71502df93f8b3cb3e341cbdd1a_2)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Prims.precedes (ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
IndInd.Nil@tok)
IndInd.Z@tok)
x_9bff1808748d879f38c071ffa9da38c8_4
x_9bff1808748d879f38c071ffa9da38c8_4)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Prims.precedes IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)


;; def=IndInd.fst(81,23-85,107); use=IndInd.fst(85,105-85,106)
(and 
;; def=IndInd.fst(81,23-81,24); use=IndInd.fst(85,105-85,106)
(Valid 
;; def=IndInd.fst(81,23-81,24); use=IndInd.fst(85,105-85,106)
(Prims.op_Equals_Equals_Equals IndInd.vdl
IndInd.vdl
@x1
x_e118e093dadee316d9b58ce2830db25e_6)
)


;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(85,105-85,106)
(Prims.precedes (IndInd.content @x1)
(IndInd.content x_e118e093dadee316d9b58ce2830db25e_6)
@x2
x_23be4f26485c8f4a9d039799cfae9ae3_7)
)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
IndInd.content0)

;; def=IndInd.fst(81,31-85,10); use=IndInd.fst(83,4-85,107)
(= @x2
@x8)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
@x1)
@x2))

;; def=dummy(0,0-0,0); use=IndInd.fst(83,4-85,107)
(= (IndInd.content_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1
@x2)
@x9)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(ApplyTT (ApplyTT x_806c32ead6d02d476206a3f9a07dbeda_1
(IndInd.Cons @x1
@x2))
(IndInd.S @x1
@x2)))

;; def=IndInd.fst(82,28-85,107); use=IndInd.fst(83,4-85,107)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT x_788daed69aff438c2edf6146fc1ae7ab_5
@x1)
(IndInd.vdl_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1))
@x2)
(IndInd.content_induction x_d3cf6af6685664d886d37b1ce53ecc89_0
x_806c32ead6d02d476206a3f9a07dbeda_1
x_2df5ea71502df93f8b3cb3e341cbdd1a_2
x_8395cb65d5061672e2b135d8b2b0f470_3
x_9bff1808748d879f38c071ffa9da38c8_4
x_788daed69aff438c2edf6146fc1ae7ab_5
@x1
@x2))
@x10)
)

;; def=dummy(0,0-0,0); use=IndInd.fst(85,14-85,107)
(and 
;; def=IndInd.fst(80,87-81,32); use=IndInd.fst(85,14-85,107)
(or label_11

;; def=IndInd.fst(80,87-81,32); use=IndInd.fst(85,14-85,107)
(= (IndInd.S @x1
@x2)
x_23be4f26485c8f4a9d039799cfae9ae3_7)
)


;; def=IndInd.fst(80,76-81,24); use=IndInd.fst(85,14-85,107)
(or label_12

;; def=IndInd.fst(80,76-81,24); use=IndInd.fst(85,14-85,107)
(= (IndInd.Cons @x1
@x2)
x_e118e093dadee316d9b58ce2830db25e_6)
)
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
)
 
;;no pats
:qid @query.8))
)
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
; QUERY ID: (IndInd.vdl_induction, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.content_valid.fuel_instrumented, @fuel_correspondence_IndInd.vdl_valid.fuel_instrumented, @fuel_irrelevance_IndInd.content_valid.fuel_instrumented, @fuel_irrelevance_IndInd.vdl_valid.fuel_instrumented, @query, IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e, binder_x_23be4f26485c8f4a9d039799cfae9ae3_7, binder_x_e118e093dadee316d9b58ce2830db25e_6, constructor_distinct_IndInd.S, constructor_distinct_IndInd.Z, disc_equation_IndInd.S, disc_equation_IndInd.Z, eq2-interp, equality_tok_IndInd.Nil@tok, equality_tok_IndInd.Z@tok, equation_IndInd.content, equation_IndInd.vdl, equation_with_fuel_IndInd.content_valid.fuel_instrumented, fuel_guarded_inversion_IndInd.content0, l_and-interp, projection_inverse_BoxBool_proj_0, projection_inverse_IndInd.S_l, projection_inverse_IndInd.S_x, refinement_interpretation_Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf, refinement_interpretation_Tm_refine_a4f965e5227246b747690df244bdb1bb, subterm_ordering_IndInd.Cons, typing_tok_IndInd.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at IndInd.fst(63,0-85,107)

(declare-fun label_84 () Bool)
(declare-fun label_83 () Bool)
(declare-fun label_82 () Bool)
(declare-fun label_81 () Bool)
(declare-fun label_80 () Bool)
(declare-fun label_79 () Bool)
(declare-fun label_78 () Bool)
(declare-fun label_77 () Bool)
(declare-fun label_76 () Bool)
(declare-fun label_75 () Bool)
(declare-fun label_74 () Bool)
(declare-fun label_73 () Bool)
(declare-fun label_72 () Bool)
(declare-fun label_71 () Bool)
(declare-fun label_70 () Bool)
(declare-fun label_69 () Bool)
(declare-fun label_68 () Bool)
(declare-fun label_67 () Bool)
(declare-fun label_66 () Bool)
(declare-fun label_65 () Bool)
(declare-fun label_64 () Bool)
(declare-fun label_63 () Bool)
(declare-fun label_62 () Bool)
(declare-fun label_61 () Bool)
(declare-fun label_60 () Bool)
(declare-fun label_59 () Bool)
(declare-fun label_58 () Bool)
(declare-fun label_57 () Bool)
(declare-fun label_56 () Bool)
(declare-fun label_55 () Bool)
(declare-fun label_54 () Bool)
(declare-fun label_53 () Bool)
(declare-fun label_52 () Bool)
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

;;;;;;;;;;;;;;;;v: vdl -> _: content v -> Type
(declare-fun Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
Tm_type)
:named kinding_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
:qid IndInd_pre_typing_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

:named IndInd_pre_typing_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(and 
;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.vdl)
(HasType @x2
(IndInd.content @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e.1))

(IsTotFun @x0)

;; def=IndInd.fst(64,29-64,58); use=IndInd.fst(64,29-64,58)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
:qid IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

:named IndInd_interpretation_Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))
;;;;;;;;;;;;;;;;tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)
(declare-fun Tm_arrow_5f1a4431a132e65536d78c8393aca65b (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named kinding_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x2
@x3)))
:qid IndInd_pre_typing_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named IndInd_pre_typing_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x2))
(and 
;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
(ApplyTT @x2
(IndInd.Cons @x3
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.1))

(IsTotFun @x0)

;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x3 Term))
 (! (implies (HasType @x3
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.2))


;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.3))


;; def=IndInd.fst(66,34-66,94); use=IndInd.fst(66,34-66,94)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x2)))
:qid IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))

:named IndInd_interpretation_Tm_arrow_5f1a4431a132e65536d78c8393aca65b))



;;;;;;;;;;;;;;;;l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)
(declare-fun Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 (Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named kinding_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x2
@x3)))
:qid IndInd_pre_typing_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named IndInd_pre_typing_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x2))
(and 
;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6)
(ApplyTT (ApplyTT @x1
(IndInd.Cons @x3
@x5))
(IndInd.S @x3
@x5))))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)
@x6))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.1))

(IsTotFun @x0)

;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x3 Term))
 (! (implies (HasType @x3
IndInd.vdl)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.2))


;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x3)
@x4)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.3))


;; def=IndInd.fst(68,31-68,95); use=IndInd.fst(68,31-68,95)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x2
@x3))
(HasType @x5
(IndInd.content @x3)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x3)
@x4)
@x5))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47.4))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x2)))
:qid IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))

:named IndInd_interpretation_Tm_arrow_9d947cda48792f13f38df7aa8d02fa47))
























; Encoding query formula : (forall (p: (_: IndInd.vdl -> Type0)) (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0)).
;     Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;     (forall (hNil: p IndInd.Nil).
;         (forall (tl: IndInd.vdl) (_: p tl) (x: IndInd.content tl) (_: q tl x).
;             (*  - Subtyping check failed
;   - Expected type vdl got type vdl0
; *)
;             Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons tl x))) /\
;         (forall (hCons:
;             (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x)))
;           .
;             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;             (forall (any_result: IndInd.vdl0).
;                 IndInd.Nil == any_result ==>
;                 Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z)) /\
;             (forall (hZ: q IndInd.Nil IndInd.Z)
;                 (l: IndInd.vdl)
;                 (_: p l)
;                 (x: IndInd.content l)
;                 (_: q l x).
;                 Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons l x)) /\
;                 (forall (return_val: IndInd.vdl).
;                     return_val == IndInd.Cons l x ==>
;                     Prims.auto_squash (IndInd.content_valid (IndInd.Cons l x) (IndInd.S l x))))))) /\
; (forall (p: (_: IndInd.vdl -> Type0))
;     (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0))
;     (hNil: p IndInd.Nil)
;     (hCons:
;     (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x)))
;     (hZ: q IndInd.Nil IndInd.Z)
;     (hS:
;     (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x
;         -> q (IndInd.Cons l x) (IndInd.S l x)))
;     (v: IndInd.vdl).
;     (forall (p: (_: IndInd.vdl -> Type0)) (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0)).
;         Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;         (forall (hNil: p IndInd.Nil).
;             (forall (tl: IndInd.vdl) (_: p tl) (x: IndInd.content tl) (_: q tl x).
;                 (*  - Subtyping check failed
;   - Expected type vdl got type vdl0
; *)
;                 Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons tl x))) /\
;             (forall (hCons:
;                 (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x
;                     -> p (IndInd.Cons tl x))).
;                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                 (forall (any_result: IndInd.vdl0).
;                     IndInd.Nil == any_result ==>
;                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z)) /\
;                 (forall (hZ: q IndInd.Nil IndInd.Z).
;                     (forall (l: IndInd.vdl) (_: p l) (x: IndInd.content l) (_: q l x).
;                         Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons l x)) /\
;                         (forall (return_val: IndInd.vdl).
;                             return_val == IndInd.Cons l x ==>
;                             Prims.auto_squash (IndInd.content_valid (IndInd.Cons l x) (IndInd.S l x)
;                               ))) /\
;                     (forall (hS:
;                         (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x
;                             -> q (IndInd.Cons l x) (IndInd.S l x)))
;                         (l: IndInd.vdl).
;                         (*  - Subtyping check failed
;   - Expected type Type0 got type Type0
; *)
;                         forall (x: IndInd.content l).
;                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                           (forall (any_result: IndInd.vdl0).
;                               IndInd.Nil == any_result ==>
;                               (forall (any_result: Type0).
;                                   p IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                           (~(hNil << hNil) ==>
;                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                             (forall (any_result: IndInd.vdl0).
;                                 IndInd.Nil == any_result ==>
;                                 (forall (any_result: Type0).
;                                     p IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                             (hNil === hNil ==>
;                               Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                               (forall (any_result: IndInd.vdl0).
;                                   IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                   (forall (any_result: IndInd.content0).
;                                       IndInd.Z == any_result ==>
;                                       (forall (any_result: Type0).
;                                           q IndInd.Nil IndInd.Z == any_result ==>
;                                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                           (forall (any_result: IndInd.vdl0).
;                                               IndInd.Nil == any_result ==>
;                                               Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                     IndInd.Z))))) /\
;                               (~(hZ << hZ) ==>
;                                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                 (forall (any_result: IndInd.vdl0).
;                                     IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                     (forall (any_result: IndInd.content0).
;                                         IndInd.Z == any_result ==>
;                                         (forall (any_result: Type0).
;                                             q IndInd.Nil IndInd.Z == any_result ==>
;                                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                             (forall (any_result: IndInd.vdl0).
;                                                 IndInd.Nil == any_result ==>
;                                                 Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                       IndInd.Z))))))))))))) /\
;     (forall (p: (_: IndInd.vdl -> Type0)) (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0)).
;         Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;         (forall (hNil: p IndInd.Nil).
;             (forall (tl: IndInd.vdl) (_: p tl) (x: IndInd.content tl) (_: q tl x).
;                 (*  - Subtyping check failed
;   - Expected type vdl got type vdl0
; *)
;                 Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons tl x))) /\
;             (forall (hCons:
;                 (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x
;                     -> p (IndInd.Cons tl x))).
;                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                 (forall (any_result: IndInd.vdl0).
;                     IndInd.Nil == any_result ==>
;                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z)) /\
;                 (forall (hZ: q IndInd.Nil IndInd.Z).
;                     (forall (l: IndInd.vdl) (_: p l) (x: IndInd.content l) (_: q l x).
;                         Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons l x)) /\
;                         (forall (return_val: IndInd.vdl).
;                             return_val == IndInd.Cons l x ==>
;                             Prims.auto_squash (IndInd.content_valid (IndInd.Cons l x) (IndInd.S l x)
;                               ))) /\
;                     (forall (hS:
;                         (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x
;                             -> q (IndInd.Cons l x) (IndInd.S l x))).
;                         (*  - Subtyping check failed
;   - Expected type Type0 got type Type0
; *)
;                         forall (v: IndInd.vdl).
;                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                           (forall (any_result: IndInd.vdl0).
;                               IndInd.Nil == any_result ==>
;                               (forall (any_result: Type0).
;                                   p IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                           (~(hNil << hNil) ==>
;                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                             (forall (any_result: IndInd.vdl0).
;                                 IndInd.Nil == any_result ==>
;                                 (forall (any_result: Type0).
;                                     p IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                             (hNil === hNil ==>
;                               Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                               (forall (any_result: IndInd.vdl0).
;                                   IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                   (forall (any_result: IndInd.content0).
;                                       IndInd.Z == any_result ==>
;                                       (forall (any_result: Type0).
;                                           q IndInd.Nil IndInd.Z == any_result ==>
;                                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                           (forall (any_result: IndInd.vdl0).
;                                               IndInd.Nil == any_result ==>
;                                               Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                     IndInd.Z))))) /\
;                               (~(hZ << hZ) ==>
;                                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                 (forall (any_result: IndInd.vdl0).
;                                     IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                     (forall (any_result: IndInd.content0).
;                                         IndInd.Z == any_result ==>
;                                         (forall (any_result: Type0).
;                                             q IndInd.Nil IndInd.Z == any_result ==>
;                                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                             (forall (any_result: IndInd.vdl0).
;                                                 IndInd.Nil == any_result ==>
;                                                 Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                       IndInd.Z)))))))))))))) /\
; (forall (p: (_: IndInd.vdl -> Type0)) (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0)).
;     Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;     (forall (hNil: p IndInd.Nil).
;         (forall (tl: IndInd.vdl) (_: p tl) (x: IndInd.content tl) (_: q tl x).
;             (*  - Subtyping check failed
;   - Expected type vdl got type vdl0
; *)
;             Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons tl x))) /\
;         (forall (hCons:
;             (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x)))
;           .
;             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;             (forall (any_result: IndInd.vdl0).
;                 IndInd.Nil == any_result ==>
;                 Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z)) /\
;             (forall (hZ: q IndInd.Nil IndInd.Z)
;                 (l: IndInd.vdl)
;                 (_: p l)
;                 (x: IndInd.content l)
;                 (_: q l x).
;                 Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons l x)) /\
;                 (forall (return_val: IndInd.vdl).
;                     return_val == IndInd.Cons l x ==>
;                     Prims.auto_squash (IndInd.content_valid (IndInd.Cons l x) (IndInd.S l x))))))) /\
; (forall (p: (_: IndInd.vdl -> Type0))
;     (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0))
;     (hNil: p IndInd.Nil)
;     (hCons:
;     (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x -> p (IndInd.Cons tl x)))
;     (hZ: q IndInd.Nil IndInd.Z)
;     (hS:
;     (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x
;         -> q (IndInd.Cons l x) (IndInd.S l x)))
;     (l: IndInd.vdl)
;     (x: IndInd.content l).
;     (forall (p: (_: IndInd.vdl -> Type0)) (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0)).
;         Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;         (forall (hNil: p IndInd.Nil).
;             (forall (tl: IndInd.vdl) (_: p tl) (x: IndInd.content tl) (_: q tl x).
;                 (*  - Subtyping check failed
;   - Expected type vdl got type vdl0
; *)
;                 Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons tl x))) /\
;             (forall (hCons:
;                 (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x
;                     -> p (IndInd.Cons tl x))).
;                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                 (forall (any_result: IndInd.vdl0).
;                     IndInd.Nil == any_result ==>
;                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z)) /\
;                 (forall (hZ: q IndInd.Nil IndInd.Z).
;                     (forall (l: IndInd.vdl) (_: p l) (x: IndInd.content l) (_: q l x).
;                         Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons l x)) /\
;                         (forall (return_val: IndInd.vdl).
;                             return_val == IndInd.Cons l x ==>
;                             Prims.auto_squash (IndInd.content_valid (IndInd.Cons l x) (IndInd.S l x)
;                               ))) /\
;                     (forall (hS:
;                         (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x
;                             -> q (IndInd.Cons l x) (IndInd.S l x)))
;                         (l: IndInd.vdl).
;                         (*  - Subtyping check failed
;   - Expected type Type0 got type Type0
; *)
;                         forall (x: IndInd.content l).
;                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                           (forall (any_result: IndInd.vdl0).
;                               IndInd.Nil == any_result ==>
;                               (forall (any_result: Type0).
;                                   p IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                           (~(hNil << hNil) ==>
;                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                             (forall (any_result: IndInd.vdl0).
;                                 IndInd.Nil == any_result ==>
;                                 (forall (any_result: Type0).
;                                     p IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                             (hNil === hNil ==>
;                               Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                               (forall (any_result: IndInd.vdl0).
;                                   IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                   (forall (any_result: IndInd.content0).
;                                       IndInd.Z == any_result ==>
;                                       (forall (any_result: Type0).
;                                           q IndInd.Nil IndInd.Z == any_result ==>
;                                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                           (forall (any_result: IndInd.vdl0).
;                                               IndInd.Nil == any_result ==>
;                                               Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                     IndInd.Z))))) /\
;                               (~(hZ << hZ) ==>
;                                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                 (forall (any_result: IndInd.vdl0).
;                                     IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                     (forall (any_result: IndInd.content0).
;                                         IndInd.Z == any_result ==>
;                                         (forall (any_result: Type0).
;                                             q IndInd.Nil IndInd.Z == any_result ==>
;                                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                             (forall (any_result: IndInd.vdl0).
;                                                 IndInd.Nil == any_result ==>
;                                                 Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                       IndInd.Z))))))))))))) /\
;     (forall (p: (_: IndInd.vdl -> Type0)) (q: (v: IndInd.vdl -> _: IndInd.content v -> Type0)).
;         Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;         (forall (hNil: p IndInd.Nil).
;             (forall (tl: IndInd.vdl) (_: p tl) (x: IndInd.content tl) (_: q tl x).
;                 (*  - Subtyping check failed
;   - Expected type vdl got type vdl0
; *)
;                 Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons tl x))) /\
;             (forall (hCons:
;                 (tl: IndInd.vdl -> _: p tl -> x: IndInd.content tl -> _: q tl x
;                     -> p (IndInd.Cons tl x))).
;                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                 (forall (any_result: IndInd.vdl0).
;                     IndInd.Nil == any_result ==>
;                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z)) /\
;                 (forall (hZ: q IndInd.Nil IndInd.Z).
;                     (forall (l: IndInd.vdl) (_: p l) (x: IndInd.content l) (_: q l x).
;                         Prims.auto_squash (IndInd.vdl_valid (IndInd.Cons l x)) /\
;                         (forall (return_val: IndInd.vdl).
;                             return_val == IndInd.Cons l x ==>
;                             Prims.auto_squash (IndInd.content_valid (IndInd.Cons l x) (IndInd.S l x)
;                               ))) /\
;                     (forall (hS:
;                         (l: IndInd.vdl -> _: p l -> x: IndInd.content l -> _: q l x
;                             -> q (IndInd.Cons l x) (IndInd.S l x))).
;                         (*  - Subtyping check failed
;   - Expected type Type0 got type Type0
; *)
;                         forall (v: IndInd.vdl).
;                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                           (forall (any_result: IndInd.vdl0).
;                               IndInd.Nil == any_result ==>
;                               (forall (any_result: Type0).
;                                   p IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                           (~(hNil << hNil) ==>
;                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                             (forall (any_result: IndInd.vdl0).
;                                 IndInd.Nil == any_result ==>
;                                 (forall (any_result: Type0).
;                                     p IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.vdl_valid IndInd.Nil))) /\
;                             (hNil === hNil ==>
;                               Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                               (forall (any_result: IndInd.vdl0).
;                                   IndInd.Nil == any_result ==>
;                                   Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                   (forall (any_result: IndInd.content0).
;                                       IndInd.Z == any_result ==>
;                                       (forall (any_result: Type0).
;                                           q IndInd.Nil IndInd.Z == any_result ==>
;                                           Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                           (forall (any_result: IndInd.vdl0).
;                                               IndInd.Nil == any_result ==>
;                                               Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                     IndInd.Z))))) /\
;                               (~(hZ << hZ) ==>
;                                 Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                 (forall (any_result: IndInd.vdl0).
;                                     IndInd.Nil == any_result ==>
;                                     Prims.auto_squash (IndInd.content_valid IndInd.Nil IndInd.Z) /\
;                                     (forall (any_result: IndInd.content0).
;                                         IndInd.Z == any_result ==>
;                                         (forall (any_result: Type0).
;                                             q IndInd.Nil IndInd.Z == any_result ==>
;                                             Prims.auto_squash (IndInd.vdl_valid IndInd.Nil) /\
;                                             (forall (any_result: IndInd.vdl0).
;                                                 IndInd.Nil == any_result ==>
;                                                 Prims.auto_squash (IndInd.content_valid IndInd.Nil
;                                                       IndInd.Z))))))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vdl_induction and content_induction`

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
;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(or label_1

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(71,3-73,112)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x0
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(or label_2

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(IndInd.vdl_valid (IndInd.Cons @x3
@x5))
)
)
)
 
;;no pats
:qid @query.2))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(or label_3

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(71,3-73,112)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(71,3-73,112)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(71,3-73,112)
(= IndInd.Nil@tok
@x4)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(or label_4

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(71,3-73,112)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.4))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
IndInd.vdl)
(HasType @x6
(ApplyTT @x0
@x5))
(HasType @x7
(IndInd.content @x5))
(HasType @x8
(ApplyTT (ApplyTT @x1
@x5)
@x7)))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(68,31-68,95)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(or label_5

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(IndInd.vdl_valid (IndInd.Cons @x5
@x7))
)
)


;; def=Prims.fst(356,2-356,58); use=IndInd.fst(68,31-68,95)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
IndInd.vdl)

;; def=Prims.fst(356,26-356,41); use=IndInd.fst(68,31-68,95)
(= @x9
(IndInd.Cons @x5
@x7))
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(or label_6

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(IndInd.content_valid (IndInd.Cons @x5
@x7)
(IndInd.S @x5
@x7))
)
)
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
:qid @query.3))
)
)
 
;;no pats
:qid @query.1))
)
)
 
;;no pats
:qid @query))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))
(HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))
(HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x0))
(HasType @x6
IndInd.vdl))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x8
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(or label_7

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(ApplyTT @x7
IndInd.Nil@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-82,35)
(forall ((@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x10
IndInd.vdl)
(HasType @x11
(ApplyTT @x7
@x10))
(HasType @x12
(IndInd.content @x10))
(HasType @x13
(ApplyTT (ApplyTT @x8
@x10)
@x12)))

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(or label_8

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(IndInd.vdl_valid (IndInd.Cons @x10
@x12))
)
)
)
 
;;no pats
:qid @query.10))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x8
@x7))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(or label_9

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-82,35)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(76,27-79,33)
(= IndInd.Nil@tok
@x11)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(or label_10

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.12))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-82,35)
(forall ((@x12 Term) (@x13 Term) (@x14 Term) (@x15 Term))
 (! (implies (and (HasType @x12
IndInd.vdl)
(HasType @x13
(ApplyTT @x7
@x12))
(HasType @x14
(IndInd.content @x12))
(HasType @x15
(ApplyTT (ApplyTT @x8
@x12)
@x14)))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(80,31-80,95)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(or label_11

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(IndInd.vdl_valid (IndInd.Cons @x12
@x14))
)
)


;; def=Prims.fst(356,2-356,58); use=IndInd.fst(80,31-80,95)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.vdl)

;; def=Prims.fst(356,26-356,41); use=IndInd.fst(80,31-80,95)
(= @x16
(IndInd.Cons @x12
@x14))
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(or label_12

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(IndInd.content_valid (IndInd.Cons @x12
@x14)
(IndInd.S @x12
@x14))
)
)
)
 
;;no pats
:qid @query.15))
)
)
 
;;no pats
:qid @query.14))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x12
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x8
@x7))
(HasType @x13
IndInd.vdl))

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-82,35)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(IndInd.content @x13))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(65,23-79,25)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_13

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-79,25)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-79,25)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-79,25)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(65,23-79,25)
(= (ApplyTT @x7
IndInd.Nil@tok)
@x16)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_14

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.19))
)
 
;;no pats
:qid @query.18))

(implies 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(not 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT @x7
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x9
@x2)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(65,23-79,25)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_15

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-79,25)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-79,25)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-79,25)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(65,23-79,25)
(= (ApplyTT @x7
IndInd.Nil@tok)
@x16)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_16

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.21))
)
 
;;no pats
:qid @query.20))

(implies 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Valid 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x7
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x9
@x2)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_17

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(76,27-79,25)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_18

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(67,23-79,25)
(= IndInd.Z@tok
@x16)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(67,23-79,25)
(= (ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_19

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-79,25)
(= IndInd.Nil@tok
@x18)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_20

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
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
 
;;no pats
:qid @query.23))
)
)
 
;;no pats
:qid @query.22))

(implies 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(not 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok)
@x11
@x4)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_21

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(76,27-79,25)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_22

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(67,23-79,25)
(= IndInd.Z@tok
@x16)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(67,23-79,25)
(= (ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-79,25)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_23

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-79,25)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-79,25)
(= IndInd.Nil@tok
@x18)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_24

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.29))
)
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
))
))
))
)
 
;;no pats
:qid @query.17))
)
 
;;no pats
:qid @query.16))
)
)
 
;;no pats
:qid @query.13))
)
)
 
;;no pats
:qid @query.11))
)
)
 
;;no pats
:qid @query.9))
)
)
 
;;no pats
:qid @query.8))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x8
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(or label_25

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(ApplyTT @x7
IndInd.Nil@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,26-73,112)
(forall ((@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x10
IndInd.vdl)
(HasType @x11
(ApplyTT @x7
@x10))
(HasType @x12
(IndInd.content @x10))
(HasType @x13
(ApplyTT (ApplyTT @x8
@x10)
@x12)))

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(or label_26

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(IndInd.vdl_valid (IndInd.Cons @x10
@x12))
)
)
)
 
;;no pats
:qid @query.32))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x8
@x7))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(or label_27

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(63,26-73,112)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(64,27-67,33)
(= IndInd.Nil@tok
@x11)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(or label_28

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.34))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,26-73,112)
(forall ((@x12 Term) (@x13 Term) (@x14 Term) (@x15 Term))
 (! (implies (and (HasType @x12
IndInd.vdl)
(HasType @x13
(ApplyTT @x7
@x12))
(HasType @x14
(IndInd.content @x12))
(HasType @x15
(ApplyTT (ApplyTT @x8
@x12)
@x14)))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(68,31-68,95)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(or label_29

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(IndInd.vdl_valid (IndInd.Cons @x12
@x14))
)
)


;; def=Prims.fst(356,2-356,58); use=IndInd.fst(68,31-68,95)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.vdl)

;; def=Prims.fst(356,26-356,41); use=IndInd.fst(68,31-68,95)
(= @x16
(IndInd.Cons @x12
@x14))
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(or label_30

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(IndInd.content_valid (IndInd.Cons @x12
@x14)
(IndInd.S @x12
@x14))
)
)
)
 
;;no pats
:qid @query.37))
)
)
 
;;no pats
:qid @query.36))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x8
@x7))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,26-73,112)
(forall ((@x13 Term))
 (! (implies (HasType @x13
IndInd.vdl)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(65,23-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_31

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-73,112)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-73,112)
(= IndInd.Nil@tok
@x14)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-73,112)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(65,23-73,112)
(= (ApplyTT @x7
IndInd.Nil@tok)
@x15)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_32

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.41))
)
 
;;no pats
:qid @query.40))

(implies 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(not 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT @x7
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x9
@x2)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(65,23-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_33

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-73,112)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-73,112)
(= IndInd.Nil@tok
@x14)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-73,112)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(65,23-73,112)
(= (ApplyTT @x7
IndInd.Nil@tok)
@x15)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_34

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.43))
)
 
;;no pats
:qid @query.42))

(implies 
;; def=IndInd.fst(65,23-65,27); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(65,23-65,27); use=IndInd.fst(65,23-65,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x7
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x9
@x2)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_35

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-73,112)
(= IndInd.Nil@tok
@x14)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_36

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(67,23-73,112)
(= IndInd.Z@tok
@x15)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(67,23-73,112)
(= (ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok)
@x16)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_37

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-73,112)
(= IndInd.Nil@tok
@x17)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_38

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
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

(implies 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(not 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Valid 
;; def=IndInd.fst(71,3-73,112); use=IndInd.fst(71,3-73,112)
(Prims.precedes (ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok)
@x11
@x4)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_39

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-73,112)
(= IndInd.Nil@tok
@x14)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_40

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(67,23-73,112)
(= IndInd.Z@tok
@x15)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(67,23-73,112)
(= (ApplyTT (ApplyTT @x8
IndInd.Nil@tok)
IndInd.Z@tok)
@x16)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-73,112)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_41

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-73,112)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-73,112)
(= IndInd.Nil@tok
@x17)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_42

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.51))
)
)
 
;;no pats
:qid @query.50))
)
 
;;no pats
:qid @query.49))
)
)
 
;;no pats
:qid @query.48))
)
))
))
))
)
 
;;no pats
:qid @query.39))
)
 
;;no pats
:qid @query.38))
)
)
 
;;no pats
:qid @query.35))
)
)
 
;;no pats
:qid @query.33))
)
)
 
;;no pats
:qid @query.31))
)
)
 
;;no pats
:qid @query.30))
)
)
 
;;no pats
:qid @query.7))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(or label_43

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(83,4-85,107)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x3
IndInd.vdl)
(HasType @x4
(ApplyTT @x0
@x3))
(HasType @x5
(IndInd.content @x3))
(HasType @x6
(ApplyTT (ApplyTT @x1
@x3)
@x5)))

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(or label_44

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(IndInd.vdl_valid (IndInd.Cons @x3
@x5))
)
)
)
 
;;no pats
:qid @query.54))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(or label_45

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(83,4-85,107)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(83,4-85,107)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(83,4-85,107)
(= IndInd.Nil@tok
@x4)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(or label_46

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(83,4-85,107)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.56))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
IndInd.vdl)
(HasType @x6
(ApplyTT @x0
@x5))
(HasType @x7
(IndInd.content @x5))
(HasType @x8
(ApplyTT (ApplyTT @x1
@x5)
@x7)))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(80,31-80,95)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(or label_47

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(IndInd.vdl_valid (IndInd.Cons @x5
@x7))
)
)


;; def=Prims.fst(356,2-356,58); use=IndInd.fst(80,31-80,95)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
IndInd.vdl)

;; def=Prims.fst(356,26-356,41); use=IndInd.fst(80,31-80,95)
(= @x9
(IndInd.Cons @x5
@x7))
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(or label_48

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(IndInd.content_valid (IndInd.Cons @x5
@x7)
(IndInd.S @x5
@x7))
)
)
)
 
;;no pats
:qid @query.58))
)
)
 
;;no pats
:qid @query.57))
)
)
 
;;no pats
:qid @query.55))
)
)
 
;;no pats
:qid @query.53))
)
)
 
;;no pats
:qid @query.52))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x1
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e)
(HasType @x2
(ApplyTT @x0
IndInd.Nil@tok))
(HasType @x3
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x1
@x0))
(HasType @x4
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok))
(HasType @x5
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x1
@x0))
(HasType @x6
IndInd.vdl)
(HasType @x7
(IndInd.content @x6)))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x8
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x9
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(or label_49

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,30-77,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(ApplyTT @x8
IndInd.Nil@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(75,26-85,107)
(forall ((@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term))
 (! (implies (and (HasType @x11
IndInd.vdl)
(HasType @x12
(ApplyTT @x8
@x11))
(HasType @x13
(IndInd.content @x11))
(HasType @x14
(ApplyTT (ApplyTT @x9
@x11)
@x13)))

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(or label_50

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(78,82-78,93)
(IndInd.vdl_valid (IndInd.Cons @x11
@x13))
)
)
)
 
;;no pats
:qid @query.62))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x9
@x8))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(or label_51

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,30-79,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(75,26-85,107)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(76,27-79,33)
(= IndInd.Nil@tok
@x12)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(or label_52

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,34-79,35)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.64))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(75,26-85,107)
(forall ((@x13 Term) (@x14 Term) (@x15 Term) (@x16 Term))
 (! (implies (and (HasType @x13
IndInd.vdl)
(HasType @x14
(ApplyTT @x8
@x13))
(HasType @x15
(IndInd.content @x13))
(HasType @x16
(ApplyTT (ApplyTT @x9
@x13)
@x15)))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(80,31-80,95)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(or label_53

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(80,76-80,86)
(IndInd.vdl_valid (IndInd.Cons @x13
@x15))
)
)


;; def=Prims.fst(356,2-356,58); use=IndInd.fst(80,31-80,95)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
IndInd.vdl)

;; def=Prims.fst(356,26-356,41); use=IndInd.fst(80,31-80,95)
(= @x17
(IndInd.Cons @x13
@x15))
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(or label_54

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(80,87-80,94)
(IndInd.content_valid (IndInd.Cons @x13
@x15)
(IndInd.S @x13
@x15))
)
)
)
 
;;no pats
:qid @query.67))
)
)
 
;;no pats
:qid @query.66))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x13 Term) (@x14 Term))
 (! (implies (and (HasType @x13
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x9
@x8))
(HasType @x14
IndInd.vdl))

;; def=dummy(0,0-0,0); use=IndInd.fst(75,26-85,107)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(IndInd.content @x14))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(77,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_55

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(77,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(77,23-85,107)
(= IndInd.Nil@tok
@x16)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(77,23-85,107)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(77,23-85,107)
(= (ApplyTT @x8
IndInd.Nil@tok)
@x17)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_56

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.71))
)
 
;;no pats
:qid @query.70))

(implies 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(not 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT @x8
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x10
@x2)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(77,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_57

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(77,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(77,23-85,107)
(= IndInd.Nil@tok
@x16)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(77,23-85,107)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(77,23-85,107)
(= (ApplyTT @x8
IndInd.Nil@tok)
@x17)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_58

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.73))
)
 
;;no pats
:qid @query.72))

(implies 
;; def=IndInd.fst(77,23-77,27); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(77,23-77,27); use=IndInd.fst(77,23-77,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x8
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x10
@x2)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_59

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(79,23-85,107)
(= IndInd.Nil@tok
@x16)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_60

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(79,23-85,107)
(= IndInd.Z@tok
@x17)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(79,23-85,107)
(= (ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok)
@x18)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_61

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(79,23-85,107)
(= IndInd.Nil@tok
@x19)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_62

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.77))
)
)
 
;;no pats
:qid @query.76))
)
 
;;no pats
:qid @query.75))
)
)
 
;;no pats
:qid @query.74))

(implies 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(not 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok)
@x12
@x4)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_63

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(79,23-85,107)
(= IndInd.Nil@tok
@x16)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_64

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(79,23-85,107)
(= IndInd.Z@tok
@x17)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(79,23-85,107)
(= (ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok)
@x18)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(79,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_65

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(79,23-85,107)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(79,23-85,107)
(= IndInd.Nil@tok
@x19)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_66

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.81))
)
)
 
;;no pats
:qid @query.80))
)
 
;;no pats
:qid @query.79))
)
)
 
;;no pats
:qid @query.78))
)
))
))
))
)
 
;;no pats
:qid @query.69))
)
 
;;no pats
:qid @query.68))
)
)
 
;;no pats
:qid @query.65))
)
)
 
;;no pats
:qid @query.63))
)
)
 
;;no pats
:qid @query.61))
)
)
 
;;no pats
:qid @query.60))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x8
Tm_arrow_7210e990428417eae0af648c3a96ab59)
(HasType @x9
Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(or label_67

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,30-65,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(ApplyTT @x8
IndInd.Nil@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,26-85,107)
(forall ((@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term))
 (! (implies (and (HasType @x11
IndInd.vdl)
(HasType @x12
(ApplyTT @x8
@x11))
(HasType @x13
(IndInd.content @x11))
(HasType @x14
(ApplyTT (ApplyTT @x9
@x11)
@x13)))

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(or label_68

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(66,82-66,93)
(IndInd.vdl_valid (IndInd.Cons @x11
@x13))
)
)
)
 
;;no pats
:qid @query.84))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_5f1a4431a132e65536d78c8393aca65b @x9
@x8))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(or label_69

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,30-67,33)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(63,26-85,107)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(64,27-67,33)
(= IndInd.Nil@tok
@x12)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(or label_70

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,34-67,35)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.86))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(and 
;; def=dummy(0,0-0,0); use=IndInd.fst(63,26-85,107)
(forall ((@x13 Term) (@x14 Term) (@x15 Term) (@x16 Term))
 (! (implies (and (HasType @x13
IndInd.vdl)
(HasType @x14
(ApplyTT @x8
@x13))
(HasType @x15
(IndInd.content @x13))
(HasType @x16
(ApplyTT (ApplyTT @x9
@x13)
@x15)))

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(68,31-68,95)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(or label_71

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(68,76-68,86)
(IndInd.vdl_valid (IndInd.Cons @x13
@x15))
)
)


;; def=Prims.fst(356,2-356,58); use=IndInd.fst(68,31-68,95)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
IndInd.vdl)

;; def=Prims.fst(356,26-356,41); use=IndInd.fst(68,31-68,95)
(= @x17
(IndInd.Cons @x13
@x15))
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(or label_72

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(68,87-68,94)
(IndInd.content_valid (IndInd.Cons @x13
@x15)
(IndInd.S @x13
@x15))
)
)
)
 
;;no pats
:qid @query.89))
)
)
 
;;no pats
:qid @query.88))


;; def=dummy(0,0-0,0); use=IndInd.fst(63,0-85,107)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 @x9
@x8))

;; def=dummy(0,0-0,0); use=IndInd.fst(63,26-85,107)
(forall ((@x14 Term))
 (! (implies (HasType @x14
IndInd.vdl)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(65,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_73

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-85,107)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-85,107)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(65,23-85,107)
(= (ApplyTT @x8
IndInd.Nil@tok)
@x16)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_74

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.93))
)
 
;;no pats
:qid @query.92))

(implies 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(not 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT @x8
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x10
@x2)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(65,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(or label_75

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(65,23-65,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-85,107)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=dummy(0,0-0,0); use=IndInd.fst(65,23-85,107)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(65,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(65,23-85,107)
(= (ApplyTT @x8
IndInd.Nil@tok)
@x16)
)

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(or label_76

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(77,23-77,27)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)
)
 
;;no pats
:qid @query.95))
)
 
;;no pats
:qid @query.94))

(implies 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Valid 
;; def=IndInd.fst(65,23-77,27); use=IndInd.fst(65,23-77,27)
(Prims.op_Equals_Equals_Equals (ApplyTT @x8
IndInd.Nil@tok)
(ApplyTT @x0
IndInd.Nil@tok)
@x10
@x2)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_77

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-85,107)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_78

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(67,23-85,107)
(= IndInd.Z@tok
@x16)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(235,17-235,18); use=IndInd.fst(67,23-85,107)
(= (ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_79

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(76,27-79,25)
(= IndInd.Nil@tok
@x18)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_80

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.99))
)
)
 
;;no pats
:qid @query.98))
)
 
;;no pats
:qid @query.97))
)
)
 
;;no pats
:qid @query.96))

(implies 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(not 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Valid 
;; def=IndInd.fst(83,4-85,107); use=IndInd.fst(83,4-85,107)
(Prims.precedes (ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok)
(ApplyTT (ApplyTT @x1
IndInd.Nil@tok)
IndInd.Z@tok)
@x12
@x4)
)
)


;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(or label_81

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(67,23-67,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
IndInd.vdl0)

;; def=IndInd.fst(64,27-67,33); use=IndInd.fst(67,23-85,107)
(= IndInd.Nil@tok
@x15)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(or label_82

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(67,23-67,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
IndInd.content0)

;; def=dummy(0,0-0,0); use=IndInd.fst(67,23-85,107)
(= IndInd.Z@tok
@x16)
)

;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
Tm_type)

;; def=Prims.fst(498,14-498,15); use=IndInd.fst(67,23-85,107)
(= (ApplyTT (ApplyTT @x9
IndInd.Nil@tok)
IndInd.Z@tok)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(67,23-85,107)
(and 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(or label_83

;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(58,17-58,28); use=IndInd.fst(79,23-79,25)
(IndInd.vdl_valid IndInd.Nil@tok)
)
)


;; def=Prims.fst(451,66-451,102); use=IndInd.fst(67,23-85,107)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
IndInd.vdl0)

;; def=IndInd.fst(76,27-79,33); use=IndInd.fst(76,27-79,25)
(= IndInd.Nil@tok
@x18)
)

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(or label_84

;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(Valid 
;; def=IndInd.fst(59,33-59,50); use=IndInd.fst(79,23-79,25)
(IndInd.content_valid IndInd.Nil@tok
IndInd.Z@tok)
)
)
)
 
;;no pats
:qid @query.103))
)
)
 
;;no pats
:qid @query.102))
)
 
;;no pats
:qid @query.101))
)
)
 
;;no pats
:qid @query.100))
)
))
))
))
)
 
;;no pats
:qid @query.91))
)
 
;;no pats
:qid @query.90))
)
)
 
;;no pats
:qid @query.87))
)
)
 
;;no pats
:qid @query.85))
)
)
 
;;no pats
:qid @query.83))
)
)
 
;;no pats
:qid @query.82))
)
)
 
;;no pats
:qid @query.59))
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
(echo "label_84")
(eval label_84)
(echo "label_83")
(eval label_83)
(echo "label_82")
(eval label_82)
(echo "label_81")
(eval label_81)
(echo "label_80")
(eval label_80)
(echo "label_79")
(eval label_79)
(echo "label_78")
(eval label_78)
(echo "label_77")
(eval label_77)
(echo "label_76")
(eval label_76)
(echo "label_75")
(eval label_75)
(echo "label_74")
(eval label_74)
(echo "label_73")
(eval label_73)
(echo "label_72")
(eval label_72)
(echo "label_71")
(eval label_71)
(echo "label_70")
(eval label_70)
(echo "label_69")
(eval label_69)
(echo "label_68")
(eval label_68)
(echo "label_67")
(eval label_67)
(echo "label_66")
(eval label_66)
(echo "label_65")
(eval label_65)
(echo "label_64")
(eval label_64)
(echo "label_63")
(eval label_63)
(echo "label_62")
(eval label_62)
(echo "label_61")
(eval label_61)
(echo "label_60")
(eval label_60)
(echo "label_59")
(eval label_59)
(echo "label_58")
(eval label_58)
(echo "label_57")
(eval label_57)
(echo "label_56")
(eval label_56)
(echo "label_55")
(eval label_55)
(echo "label_54")
(eval label_54)
(echo "label_53")
(eval label_53)
(echo "label_52")
(eval label_52)
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
; QUERY ID: (IndInd.vdl_induction, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.content_valid.fuel_instrumented, @fuel_correspondence_IndInd.vdl_valid.fuel_instrumented, @fuel_irrelevance_IndInd.content_valid.fuel_instrumented, @fuel_irrelevance_IndInd.vdl_valid.fuel_instrumented, @query, IndInd_pretyping_f327f45ca84890cc965eeb3de9a5f60e, constructor_distinct_IndInd.Cons, constructor_distinct_IndInd.Nil, constructor_distinct_IndInd.S, constructor_distinct_IndInd.Z, data_typing_intro_IndInd.Cons@tok, data_typing_intro_IndInd.S@tok, eq2-interp, equality_tok_IndInd.Nil@tok, equality_tok_IndInd.Z@tok, equation_IndInd.content, equation_IndInd.vdl, equation_with_fuel_IndInd.content_valid.fuel_instrumented, equation_with_fuel_IndInd.vdl_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.Cons__1, projection_inverse_IndInd.Cons_tail, projection_inverse_IndInd.S_l, projection_inverse_IndInd.S_x, refinement_interpretation_Tm_refine_9e38c61c3420d273d6dbe60aa6981bbf, refinement_interpretation_Tm_refine_a4f965e5227246b747690df244bdb1bb, true_interp, typing_tok_IndInd.Nil@tok, typing_tok_IndInd.Z@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec vdl_induction and content_induction


; <Start encoding let rec vdl_induction and content_induction>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.content_induction.fuel_instrumented (Fuel Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.content_induction.fuel_instrumented_token () Term)
;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.vdl_induction.fuel_instrumented (Fuel Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.vdl_induction.fuel_instrumented_token () Term)
(declare-fun IndInd.vdl_induction (Term Term Term Term Term Term Term) Term)
(declare-fun IndInd.vdl_induction@tok () Term)
(declare-fun IndInd.content_induction (Term Term Term Term Term Term Term Term) Term)
(declare-fun IndInd.content_induction@tok () Term)

;;;;;;;;;;;;;;;;v: vdl -> _: content v -> Type
(declare-fun Tm_arrow_7da8fa1854d251dea3d997cd6bf4192e () Term)
;;;;;;;;;;;;;;;;tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)
(declare-fun Tm_arrow_5f1a4431a132e65536d78c8393aca65b (Term Term) Term)
;;;;;;;;;;;;;;;;l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)
(declare-fun Tm_arrow_9d947cda48792f13f38df7aa8d02fa47 (Term Term) Term)












;;;;;;;;;;;;;;;;p: (_: vdl -> Type) ->     q: (v: vdl -> _: content v -> Type) ->     hNil: p Nil ->     hCons: (tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)) ->     hZ: q Nil Z ->     hS: (l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)) ->     v: vdl   -> p v
(declare-fun Tm_arrow_36e34c644035ad4d6c606ad41ec9b889 () Term)








;;;;;;;;;;;;;;;;p: (_: vdl -> Type) ->     q: (v: vdl -> _: content v -> Type) ->     hNil: p Nil ->     hCons: (tl: vdl -> _: p tl -> x: content tl -> _: q tl x -> p (Cons tl x)) ->     hZ: q Nil Z ->     hS: (l: vdl -> _: p l -> x: content l -> _: q l x -> q (Cons l x) (S l x)) ->     l: vdl ->     x: content l   -> q l x
(declare-fun Tm_arrow_77b4a09ab1f81b4c125a4847ad7a1626 () Term)

; </end encoding let rec vdl_induction and content_induction>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type IndInd.ctx0


; <Start encoding type IndInd.ctx0>

;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.ctx0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.valid_typ0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.u_mem0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.EmptyCtx () Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.EmptyCtx
(declare-fun IndInd.EmptyCtx@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.ConsCtx (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.ConsCtx_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.ConsCtx_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.ConsCtx
(declare-fun IndInd.ConsCtx@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Unit (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Unit_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Unit
(declare-fun IndInd.Unit@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Bool (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Bool_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Bool
(declare-fun IndInd.Bool@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Prod (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Prod_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Prod_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Prod_b (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Prod
(declare-fun IndInd.Prod@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.U (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.U_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.U
(declare-fun IndInd.U@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Var (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Var_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Var__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Var
(declare-fun IndInd.Var@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.UHere (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UHere_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.UHere
(declare-fun IndInd.UHere@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.UNext (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UNext_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UNext_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UNext__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.UNext
(declare-fun IndInd.UNext@tok () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> a: valid_typ0 -> ctx0
(declare-fun Tm_arrow_ff10ef4b25f4bf39c8e6ef6f3f238459 () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> valid_typ0
(declare-fun Tm_arrow_693b66a8371d4175034de3e2c623b65b () Term)

;;;;;;;;;;;;;;;;g: ctx0 -> a: valid_typ0 -> b: valid_typ0 -> valid_typ0
(declare-fun Tm_arrow_4b8c5b0434c1f6e1fdf9301b663a4c42 () Term)

;;;;;;;;;;;;;;;;g: ctx0 -> _1: u_mem0 -> valid_typ0
(declare-fun Tm_arrow_1de1793d4cf22c452d1b45f0c5703168 () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> u_mem0
(declare-fun Tm_arrow_67a8c0c529bac1f0fdabdd802c7e5e9b () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> a: valid_typ0 -> _2: u_mem0 -> u_mem0
(declare-fun Tm_arrow_a9757b9f12c0c69a2566e4776481e9f4 () Term)

; <start constructor IndInd.ctx0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.ctx0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
495)
(= __@x0
IndInd.ctx0)))

; </end constructor IndInd.ctx0>


; <start constructor IndInd.valid_typ0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.valid_typ0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
500)
(= __@x0
IndInd.valid_typ0)))

; </end constructor IndInd.valid_typ0>


; <start constructor IndInd.u_mem0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.u_mem0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
505)
(= __@x0
IndInd.u_mem0)))

; </end constructor IndInd.u_mem0>


; <start constructor IndInd.EmptyCtx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.EmptyCtx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
511)
(= __@x0
IndInd.EmptyCtx)))

; </end constructor IndInd.EmptyCtx>


; <start constructor IndInd.ConsCtx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.ConsCtx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
513)
(= __@x0
(IndInd.ConsCtx (IndInd.ConsCtx_g __@x0)
(IndInd.ConsCtx_a __@x0)))))

; </end constructor IndInd.ConsCtx>


; <start constructor IndInd.Unit>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Unit ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
518)
(= __@x0
(IndInd.Unit (IndInd.Unit_g __@x0)))))

; </end constructor IndInd.Unit>


; <start constructor IndInd.Bool>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Bool ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
523)
(= __@x0
(IndInd.Bool (IndInd.Bool_g __@x0)))))

; </end constructor IndInd.Bool>


; <start constructor IndInd.Prod>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Prod ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
528)
(= __@x0
(IndInd.Prod (IndInd.Prod_g __@x0)
(IndInd.Prod_a __@x0)
(IndInd.Prod_b __@x0)))))

; </end constructor IndInd.Prod>


; <start constructor IndInd.U>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.U ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
533)
(= __@x0
(IndInd.U (IndInd.U_g __@x0)))))

; </end constructor IndInd.U>


; <start constructor IndInd.Var>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Var ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
538)
(= __@x0
(IndInd.Var (IndInd.Var_g __@x0)
(IndInd.Var__1 __@x0)))))

; </end constructor IndInd.Var>


; <start constructor IndInd.UHere>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.UHere ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
543)
(= __@x0
(IndInd.UHere (IndInd.UHere_g __@x0)))))

; </end constructor IndInd.UHere>


; <start constructor IndInd.UNext>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.UNext ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
548)
(= __@x0
(IndInd.UNext (IndInd.UNext_g __@x0)
(IndInd.UNext_a __@x0)
(IndInd.UNext__2 __@x0)))))

; </end constructor IndInd.UNext>


; </end encoding type IndInd.ctx0>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.EmptyCtx@tok
IndInd.ctx0)
:named typing_tok_IndInd.EmptyCtx@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Var @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.Var @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Var))

:named subterm_ordering_IndInd.Var))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Unit @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Unit))

:named subterm_ordering_IndInd.Unit))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.UNext @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.UNext @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(IndInd.UNext @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
:qid subterm_ordering_IndInd.UNext))

:named subterm_ordering_IndInd.UNext))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.UHere @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0))
:qid subterm_ordering_IndInd.UHere))

:named subterm_ordering_IndInd.UHere))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.U @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.U))

:named subterm_ordering_IndInd.U))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Prod @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.Prod @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(IndInd.Prod @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Prod))

:named subterm_ordering_IndInd.Prod))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.ConsCtx @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.ConsCtx @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
:qid subterm_ordering_IndInd.ConsCtx))

:named subterm_ordering_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Bool @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Bool))

:named subterm_ordering_IndInd.Bool))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Var_g (IndInd.Var @x0
@x1))
@x0)
 

:pattern ((IndInd.Var @x0
@x1))
:qid projection_inverse_IndInd.Var_g))

:named projection_inverse_IndInd.Var_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Var__1 (IndInd.Var @x0
@x1))
@x1)
 

:pattern ((IndInd.Var @x0
@x1))
:qid projection_inverse_IndInd.Var__1))

:named projection_inverse_IndInd.Var__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@x0 Term))
 (! (= (IndInd.Unit_g (IndInd.Unit @x0))
@x0)
 

:pattern ((IndInd.Unit @x0))
:qid projection_inverse_IndInd.Unit_g))

:named projection_inverse_IndInd.Unit_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@x0 Term))
 (! (= (IndInd.U_g (IndInd.U @x0))
@x0)
 

:pattern ((IndInd.U @x0))
:qid projection_inverse_IndInd.U_g))

:named projection_inverse_IndInd.U_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.UNext_g (IndInd.UNext @x0
@x1
@x2))
@x0)
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid projection_inverse_IndInd.UNext_g))

:named projection_inverse_IndInd.UNext_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.UNext_a (IndInd.UNext @x0
@x1
@x2))
@x1)
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid projection_inverse_IndInd.UNext_a))

:named projection_inverse_IndInd.UNext_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.UNext__2 (IndInd.UNext @x0
@x1
@x2))
@x2)
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid projection_inverse_IndInd.UNext__2))

:named projection_inverse_IndInd.UNext__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@x0 Term))
 (! (= (IndInd.UHere_g (IndInd.UHere @x0))
@x0)
 

:pattern ((IndInd.UHere @x0))
:qid projection_inverse_IndInd.UHere_g))

:named projection_inverse_IndInd.UHere_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.Prod_g (IndInd.Prod @x0
@x1
@x2))
@x0)
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid projection_inverse_IndInd.Prod_g))

:named projection_inverse_IndInd.Prod_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.Prod_b (IndInd.Prod @x0
@x1
@x2))
@x2)
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid projection_inverse_IndInd.Prod_b))

:named projection_inverse_IndInd.Prod_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.Prod_a (IndInd.Prod @x0
@x1
@x2))
@x1)
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid projection_inverse_IndInd.Prod_a))

:named projection_inverse_IndInd.Prod_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.ConsCtx_g (IndInd.ConsCtx @x0
@x1))
@x0)
 

:pattern ((IndInd.ConsCtx @x0
@x1))
:qid projection_inverse_IndInd.ConsCtx_g))

:named projection_inverse_IndInd.ConsCtx_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.ConsCtx_a (IndInd.ConsCtx @x0
@x1))
@x1)
 

:pattern ((IndInd.ConsCtx @x0
@x1))
:qid projection_inverse_IndInd.ConsCtx_a))

:named projection_inverse_IndInd.ConsCtx_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@x0 Term))
 (! (= (IndInd.Bool_g (IndInd.Bool @x0))
@x0)
 

:pattern ((IndInd.Bool @x0))
:qid projection_inverse_IndInd.Bool_g))

:named projection_inverse_IndInd.Bool_g))
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.valid_typ0
Tm_type)
:named kinding_IndInd.valid_typ0@tok))
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.u_mem0
Tm_type)
:named kinding_IndInd.u_mem0@tok))
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.ctx0
Tm_type)
:named kinding_IndInd.ctx0@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(115,4-115,14); use=IndInd.fst(115,4-115,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.valid_typ0)
(or (is-IndInd.Unit @x1)
(is-IndInd.Bool @x1)
(is-IndInd.Prod @x1)
(is-IndInd.U @x1)
(is-IndInd.Var @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.valid_typ0))
:qid fuel_guarded_inversion_IndInd.valid_typ0))

:named fuel_guarded_inversion_IndInd.valid_typ0))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(122,4-122,10); use=IndInd.fst(122,4-122,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.u_mem0)
(or (is-IndInd.UHere @x1)
(is-IndInd.UNext @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.u_mem0))
:qid fuel_guarded_inversion_IndInd.u_mem0))

:named fuel_guarded_inversion_IndInd.u_mem0))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(111,5-111,9); use=IndInd.fst(111,5-111,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.ctx0)
(or (is-IndInd.EmptyCtx @x1)
(is-IndInd.ConsCtx @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.ctx0))
:qid fuel_guarded_inversion_IndInd.ctx0))

:named fuel_guarded_inversion_IndInd.ctx0))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= IndInd.EmptyCtx@tok
IndInd.EmptyCtx)
:named equality_tok_IndInd.EmptyCtx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.u_mem0))
(HasTypeFuel @u0
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Var@tok))

:named data_typing_intro_IndInd.Var@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.Unit @x1)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Unit @x1)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Unit@tok))

:named data_typing_intro_IndInd.Unit@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.u_mem0))
(HasTypeFuel @u0
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
 

:pattern ((HasTypeFuel @u0
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
:qid data_typing_intro_IndInd.UNext@tok))

:named data_typing_intro_IndInd.UNext@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.UHere @x1)
IndInd.u_mem0))
 

:pattern ((HasTypeFuel @u0
(IndInd.UHere @x1)
IndInd.u_mem0))
:qid data_typing_intro_IndInd.UHere@tok))

:named data_typing_intro_IndInd.UHere@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.U @x1)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.U @x1)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.U@tok))

:named data_typing_intro_IndInd.U@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.valid_typ0))
(HasTypeFuel @u0
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Prod@tok))

:named data_typing_intro_IndInd.Prod@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(112,4-112,12); use=IndInd.fst(112,4-112,12)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
IndInd.EmptyCtx
IndInd.ctx0)
 

:pattern ((HasTypeFuel @u0
IndInd.EmptyCtx
IndInd.ctx0))
:qid data_typing_intro_IndInd.EmptyCtx@tok))

:named data_typing_intro_IndInd.EmptyCtx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0))
(HasTypeFuel @u0
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
 

:pattern ((HasTypeFuel @u0
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
:qid data_typing_intro_IndInd.ConsCtx@tok))

:named data_typing_intro_IndInd.ConsCtx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.Bool @x1)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Bool @x1)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Bool@tok))

:named data_typing_intro_IndInd.Bool@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.u_mem0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
:qid data_elim_IndInd.Var))

:named data_elim_IndInd.Var))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0))
:qid data_elim_IndInd.Unit))

:named data_elim_IndInd.Unit))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.u_mem0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
:qid data_elim_IndInd.UNext))

:named data_elim_IndInd.UNext))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0))
:qid data_elim_IndInd.UHere))

:named data_elim_IndInd.UHere))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0))
:qid data_elim_IndInd.U))

:named data_elim_IndInd.U))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.valid_typ0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
:qid data_elim_IndInd.Prod))

:named data_elim_IndInd.Prod))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
:qid data_elim_IndInd.ConsCtx))

:named data_elim_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0))
:qid data_elim_IndInd.Bool))

:named data_elim_IndInd.Bool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 500
(Term_constr_id IndInd.valid_typ0))
:named constructor_distinct_IndInd.valid_typ0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 505
(Term_constr_id IndInd.u_mem0))
:named constructor_distinct_IndInd.u_mem0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 495
(Term_constr_id IndInd.ctx0))
:named constructor_distinct_IndInd.ctx0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= 538
(Term_constr_id (IndInd.Var @x0
@x1)))
 

:pattern ((IndInd.Var @x0
@x1))
:qid constructor_distinct_IndInd.Var))

:named constructor_distinct_IndInd.Var))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@x0 Term))
 (! (= 518
(Term_constr_id (IndInd.Unit @x0)))
 

:pattern ((IndInd.Unit @x0))
:qid constructor_distinct_IndInd.Unit))

:named constructor_distinct_IndInd.Unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 548
(Term_constr_id (IndInd.UNext @x0
@x1
@x2)))
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid constructor_distinct_IndInd.UNext))

:named constructor_distinct_IndInd.UNext))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@x0 Term))
 (! (= 543
(Term_constr_id (IndInd.UHere @x0)))
 

:pattern ((IndInd.UHere @x0))
:qid constructor_distinct_IndInd.UHere))

:named constructor_distinct_IndInd.UHere))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@x0 Term))
 (! (= 533
(Term_constr_id (IndInd.U @x0)))
 

:pattern ((IndInd.U @x0))
:qid constructor_distinct_IndInd.U))

:named constructor_distinct_IndInd.U))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 528
(Term_constr_id (IndInd.Prod @x0
@x1
@x2)))
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid constructor_distinct_IndInd.Prod))

:named constructor_distinct_IndInd.Prod))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 511
(Term_constr_id IndInd.EmptyCtx))
:named constructor_distinct_IndInd.EmptyCtx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 513
(Term_constr_id (IndInd.ConsCtx @x0
@x1)))
 

:pattern ((IndInd.ConsCtx @x0
@x1))
:qid constructor_distinct_IndInd.ConsCtx))

:named constructor_distinct_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@x0 Term))
 (! (= 523
(Term_constr_id (IndInd.Bool @x0)))
 

:pattern ((IndInd.Bool @x0))
:qid constructor_distinct_IndInd.Bool))

:named constructor_distinct_IndInd.Bool))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(115,4-115,14); use=IndInd.fst(115,4-115,14)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.valid_typ0)
(= IndInd.valid_typ0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.valid_typ0))
:qid IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8))

:named IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(122,4-122,10); use=IndInd.fst(122,4-122,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.u_mem0)
(= IndInd.u_mem0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.u_mem0))
:qid IndInd_pretyping_368fdf57f660d37d194f44c4fc7989a6))

:named IndInd_pretyping_368fdf57f660d37d194f44c4fc7989a6))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(111,5-111,9); use=IndInd.fst(111,5-111,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.ctx0)
(= IndInd.ctx0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.ctx0))
:qid IndInd_pretyping_3639ca53df0585b361be9077cdb71923))

:named IndInd_pretyping_3639ca53df0585b361be9077cdb71923))
(push) ;; push{4

; Starting query at IndInd.fst(111,0-124,54)

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

; Encoding query formula : Prims.hasEq IndInd.ctx0 /\ Prims.hasEq IndInd.valid_typ0 /\ Prims.hasEq IndInd.u_mem0 ==>
; (forall (g: IndInd.ctx0) (a: IndInd.valid_typ0).
;     Prims.hasEq IndInd.ctx0 /\ Prims.hasEq IndInd.valid_typ0) /\
; (forall (g: IndInd.ctx0).
;     (*  - Failed to prove that the type
;     'IndInd.valid_typ0'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq IndInd.ctx0) /\
; (forall (g: IndInd.ctx0).
;     (*  - Failed to prove that the type
;     'IndInd.valid_typ0'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq IndInd.ctx0) /\
; (forall (g: IndInd.ctx0) (a: IndInd.valid_typ0) (b: IndInd.valid_typ0).
;     Prims.hasEq IndInd.ctx0 /\ Prims.hasEq IndInd.valid_typ0 /\ Prims.hasEq IndInd.valid_typ0) /\
; (forall (g: IndInd.ctx0).
;     (*  - Failed to prove that the type
;     'IndInd.valid_typ0'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq IndInd.ctx0) /\
; (forall (g: IndInd.ctx0) (_1: IndInd.u_mem0). Prims.hasEq IndInd.ctx0 /\ Prims.hasEq IndInd.u_mem0) /\
; (forall (g: IndInd.ctx0).
;     (*  - Failed to prove that the type
;     'IndInd.u_mem0'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq IndInd.ctx0) /\
; (forall (g: IndInd.ctx0) (a: IndInd.valid_typ0) (_2: IndInd.u_mem0).
;     Prims.hasEq IndInd.ctx0 /\ Prims.hasEq IndInd.valid_typ0 /\ Prims.hasEq IndInd.u_mem0)


; Context: While encoding a query
; While typechecking the top-level declaration `type IndInd.ctx0`

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
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(and 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.valid_typ0)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.u_mem0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(and 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.ctx0)
(HasType @x1
IndInd.valid_typ0))

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(and 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(113,16-113,20)
(or label_1

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(113,26-113,36)
(or label_2

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.valid_typ0)
)
)
)
)
 
;;no pats
:qid @query))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(116,13-116,17)
(or label_3

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)
)
 
;;no pats
:qid @query.1))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(117,13-117,17)
(or label_4

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)
)
 
;;no pats
:qid @query.2))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
IndInd.ctx0)
(HasType @x1
IndInd.valid_typ0)
(HasType @x2
IndInd.valid_typ0))

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(and 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(118,13-118,17)
(or label_5

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(118,23-118,33)
(or label_6

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.valid_typ0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(118,39-118,49)
(or label_7

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.valid_typ0)
)
)
)
)
 
;;no pats
:qid @query.3))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(119,10-119,14)
(or label_8

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)
)
 
;;no pats
:qid @query.4))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.ctx0)
(HasType @x1
IndInd.u_mem0))

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(and 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(120,12-120,16)
(or label_9

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(120,20-120,26)
(or label_10

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.u_mem0)
)
)
)
)
 
;;no pats
:qid @query.5))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(123,14-123,18)
(or label_11

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)
)
 
;;no pats
:qid @query.6))


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
IndInd.ctx0)
(HasType @x1
IndInd.valid_typ0)
(HasType @x2
IndInd.u_mem0))

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(and 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(124,14-124,18)
(or label_12

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.ctx0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(124,24-124,34)
(or label_13

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.valid_typ0)
)
)


;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(124,38-124,44)
(or label_14

;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Valid 
;; def=IndInd.fst(111,0-124,54); use=IndInd.fst(111,0-124,54)
(Prims.hasEq IndInd.u_mem0)
)
)
)
)
 
;;no pats
:qid @query.7))
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
; QUERY ID: (IndInd.ctx0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type IndInd.ctx0


; <Start encoding type IndInd.ctx0>

;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.ctx0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.valid_typ0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.u_mem0 () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.EmptyCtx () Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.EmptyCtx
(declare-fun IndInd.EmptyCtx@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.ConsCtx (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.ConsCtx_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.ConsCtx_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.ConsCtx
(declare-fun IndInd.ConsCtx@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Unit (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Unit_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Unit
(declare-fun IndInd.Unit@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Bool (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Bool_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Bool
(declare-fun IndInd.Bool@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Prod (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Prod_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Prod_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Prod_b (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Prod
(declare-fun IndInd.Prod@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.U (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.U_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.U
(declare-fun IndInd.U@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.Var (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Var_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.Var__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.Var
(declare-fun IndInd.Var@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.UHere (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UHere_g (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.UHere
(declare-fun IndInd.UHere@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun IndInd.UNext (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UNext_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UNext_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun IndInd.UNext__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: IndInd.UNext
(declare-fun IndInd.UNext@tok () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> a: valid_typ0 -> ctx0
(declare-fun Tm_arrow_ff10ef4b25f4bf39c8e6ef6f3f238459 () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> valid_typ0
(declare-fun Tm_arrow_693b66a8371d4175034de3e2c623b65b () Term)

;;;;;;;;;;;;;;;;g: ctx0 -> a: valid_typ0 -> b: valid_typ0 -> valid_typ0
(declare-fun Tm_arrow_4b8c5b0434c1f6e1fdf9301b663a4c42 () Term)

;;;;;;;;;;;;;;;;g: ctx0 -> _1: u_mem0 -> valid_typ0
(declare-fun Tm_arrow_1de1793d4cf22c452d1b45f0c5703168 () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> u_mem0
(declare-fun Tm_arrow_67a8c0c529bac1f0fdabdd802c7e5e9b () Term)
;;;;;;;;;;;;;;;;g: ctx0 -> a: valid_typ0 -> _2: u_mem0 -> u_mem0
(declare-fun Tm_arrow_a9757b9f12c0c69a2566e4776481e9f4 () Term)

; <start constructor IndInd.ctx0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.ctx0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
552)
(= __@x0
IndInd.ctx0)))

; </end constructor IndInd.ctx0>


; <start constructor IndInd.valid_typ0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.valid_typ0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
557)
(= __@x0
IndInd.valid_typ0)))

; </end constructor IndInd.valid_typ0>


; <start constructor IndInd.u_mem0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.u_mem0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
562)
(= __@x0
IndInd.u_mem0)))

; </end constructor IndInd.u_mem0>


; <start constructor IndInd.EmptyCtx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.EmptyCtx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
568)
(= __@x0
IndInd.EmptyCtx)))

; </end constructor IndInd.EmptyCtx>


; <start constructor IndInd.ConsCtx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.ConsCtx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
570)
(= __@x0
(IndInd.ConsCtx (IndInd.ConsCtx_g __@x0)
(IndInd.ConsCtx_a __@x0)))))

; </end constructor IndInd.ConsCtx>


; <start constructor IndInd.Unit>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Unit ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
575)
(= __@x0
(IndInd.Unit (IndInd.Unit_g __@x0)))))

; </end constructor IndInd.Unit>


; <start constructor IndInd.Bool>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Bool ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
580)
(= __@x0
(IndInd.Bool (IndInd.Bool_g __@x0)))))

; </end constructor IndInd.Bool>


; <start constructor IndInd.Prod>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Prod ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
585)
(= __@x0
(IndInd.Prod (IndInd.Prod_g __@x0)
(IndInd.Prod_a __@x0)
(IndInd.Prod_b __@x0)))))

; </end constructor IndInd.Prod>


; <start constructor IndInd.U>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.U ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
590)
(= __@x0
(IndInd.U (IndInd.U_g __@x0)))))

; </end constructor IndInd.U>


; <start constructor IndInd.Var>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.Var ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
595)
(= __@x0
(IndInd.Var (IndInd.Var_g __@x0)
(IndInd.Var__1 __@x0)))))

; </end constructor IndInd.Var>


; <start constructor IndInd.UHere>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.UHere ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
600)
(= __@x0
(IndInd.UHere (IndInd.UHere_g __@x0)))))

; </end constructor IndInd.UHere>


; <start constructor IndInd.UNext>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-IndInd.UNext ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
605)
(= __@x0
(IndInd.UNext (IndInd.UNext_g __@x0)
(IndInd.UNext_a __@x0)
(IndInd.UNext__2 __@x0)))))

; </end constructor IndInd.UNext>


; </end encoding type IndInd.ctx0>


; encoding sigelt assume IndInd.ctx0__uu___haseq


; <Start encoding assume IndInd.ctx0__uu___haseq>


; </end encoding assume IndInd.ctx0__uu___haseq>


; encoding sigelt assume IndInd.valid_typ0__uu___haseq


; <Start encoding assume IndInd.valid_typ0__uu___haseq>


; </end encoding assume IndInd.valid_typ0__uu___haseq>


; encoding sigelt assume IndInd.u_mem0__uu___haseq


; <Start encoding assume IndInd.u_mem0__uu___haseq>


; </end encoding assume IndInd.u_mem0__uu___haseq>


; encoding sigelt val IndInd.uu___is_EmptyCtx


; <Start encoding val IndInd.uu___is_EmptyCtx>

(declare-fun IndInd.uu___is_EmptyCtx (Term) Term)
;;;;;;;;;;;;;;;;projectee: ctx0 -> Prims.bool
(declare-fun Tm_arrow_24ca87a0fc95bc9d4465d710794ede55 () Term)
(declare-fun IndInd.uu___is_EmptyCtx@tok () Term)

; </end encoding val IndInd.uu___is_EmptyCtx>


; encoding sigelt let uu___is_EmptyCtx


; <Skipped let uu___is_EmptyCtx/>


; encoding sigelt val IndInd.uu___is_ConsCtx


; <Start encoding val IndInd.uu___is_ConsCtx>

(declare-fun IndInd.uu___is_ConsCtx (Term) Term)

(declare-fun IndInd.uu___is_ConsCtx@tok () Term)

; </end encoding val IndInd.uu___is_ConsCtx>


; encoding sigelt let uu___is_ConsCtx


; <Skipped let uu___is_ConsCtx/>


; encoding sigelt val IndInd.__proj__ConsCtx__item__g


; <Start encoding val IndInd.__proj__ConsCtx__item__g>

(declare-fun Tm_refine_14bed9a1ddd1711ecdf7b611849a7712 () Term)
(declare-fun IndInd.__proj__ConsCtx__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ctx0{ConsCtx? _} -> ctx0
(declare-fun Tm_arrow_a0e3e1c24b225a6a1da9b1b1c5ba5131 () Term)
(declare-fun IndInd.__proj__ConsCtx__item__g@tok () Term)

; </end encoding val IndInd.__proj__ConsCtx__item__g>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.EmptyCtx@tok
IndInd.ctx0)
:named typing_tok_IndInd.EmptyCtx@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_ConsCtx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)
(HasType (IndInd.uu___is_ConsCtx @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_ConsCtx @x0))
:qid typing_IndInd.uu___is_ConsCtx))

:named typing_IndInd.uu___is_ConsCtx))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Var @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.Var @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Var))

:named subterm_ordering_IndInd.Var))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Unit @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Unit))

:named subterm_ordering_IndInd.Unit))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.UNext @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.UNext @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(IndInd.UNext @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
:qid subterm_ordering_IndInd.UNext))

:named subterm_ordering_IndInd.UNext))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.UHere @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0))
:qid subterm_ordering_IndInd.UHere))

:named subterm_ordering_IndInd.UHere))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.U @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.U))

:named subterm_ordering_IndInd.U))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Prod @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.Prod @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(IndInd.Prod @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Prod))

:named subterm_ordering_IndInd.Prod))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.ConsCtx @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(IndInd.ConsCtx @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
:qid subterm_ordering_IndInd.ConsCtx))

:named subterm_ordering_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(IndInd.Bool @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0))
:qid subterm_ordering_IndInd.Bool))

:named subterm_ordering_IndInd.Bool))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__ConsCtx__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_14bed9a1ddd1711ecdf7b611849a7712
Tm_type)
:named refinement_kinding_Tm_refine_14bed9a1ddd1711ecdf7b611849a7712))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__ConsCtx__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_14bed9a1ddd1711ecdf7b611849a7712)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(BoxBool_proj_0 (IndInd.uu___is_ConsCtx @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_14bed9a1ddd1711ecdf7b611849a7712))
:qid refinement_interpretation_Tm_refine_14bed9a1ddd1711ecdf7b611849a7712))

:named refinement_interpretation_Tm_refine_14bed9a1ddd1711ecdf7b611849a7712))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Var_g (IndInd.Var @x0
@x1))
@x0)
 

:pattern ((IndInd.Var @x0
@x1))
:qid projection_inverse_IndInd.Var_g))

:named projection_inverse_IndInd.Var_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.Var__1 (IndInd.Var @x0
@x1))
@x1)
 

:pattern ((IndInd.Var @x0
@x1))
:qid projection_inverse_IndInd.Var__1))

:named projection_inverse_IndInd.Var__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@x0 Term))
 (! (= (IndInd.Unit_g (IndInd.Unit @x0))
@x0)
 

:pattern ((IndInd.Unit @x0))
:qid projection_inverse_IndInd.Unit_g))

:named projection_inverse_IndInd.Unit_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@x0 Term))
 (! (= (IndInd.U_g (IndInd.U @x0))
@x0)
 

:pattern ((IndInd.U @x0))
:qid projection_inverse_IndInd.U_g))

:named projection_inverse_IndInd.U_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.UNext_g (IndInd.UNext @x0
@x1
@x2))
@x0)
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid projection_inverse_IndInd.UNext_g))

:named projection_inverse_IndInd.UNext_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.UNext_a (IndInd.UNext @x0
@x1
@x2))
@x1)
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid projection_inverse_IndInd.UNext_a))

:named projection_inverse_IndInd.UNext_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.UNext__2 (IndInd.UNext @x0
@x1
@x2))
@x2)
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid projection_inverse_IndInd.UNext__2))

:named projection_inverse_IndInd.UNext__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@x0 Term))
 (! (= (IndInd.UHere_g (IndInd.UHere @x0))
@x0)
 

:pattern ((IndInd.UHere @x0))
:qid projection_inverse_IndInd.UHere_g))

:named projection_inverse_IndInd.UHere_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.Prod_g (IndInd.Prod @x0
@x1
@x2))
@x0)
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid projection_inverse_IndInd.Prod_g))

:named projection_inverse_IndInd.Prod_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.Prod_b (IndInd.Prod @x0
@x1
@x2))
@x2)
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid projection_inverse_IndInd.Prod_b))

:named projection_inverse_IndInd.Prod_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (IndInd.Prod_a (IndInd.Prod @x0
@x1
@x2))
@x1)
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid projection_inverse_IndInd.Prod_a))

:named projection_inverse_IndInd.Prod_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.ConsCtx_g (IndInd.ConsCtx @x0
@x1))
@x0)
 

:pattern ((IndInd.ConsCtx @x0
@x1))
:qid projection_inverse_IndInd.ConsCtx_g))

:named projection_inverse_IndInd.ConsCtx_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.ConsCtx_a (IndInd.ConsCtx @x0
@x1))
@x1)
 

:pattern ((IndInd.ConsCtx @x0
@x1))
:qid projection_inverse_IndInd.ConsCtx_a))

:named projection_inverse_IndInd.ConsCtx_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@x0 Term))
 (! (= (IndInd.Bool_g (IndInd.Bool @x0))
@x0)
 

:pattern ((IndInd.Bool @x0))
:qid projection_inverse_IndInd.Bool_g))

:named projection_inverse_IndInd.Bool_g))
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.valid_typ0
Tm_type)
:named kinding_IndInd.valid_typ0@tok))
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.u_mem0
Tm_type)
:named kinding_IndInd.u_mem0@tok))
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (HasType IndInd.ctx0
Tm_type)
:named kinding_IndInd.ctx0@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_14bed9a1ddd1711ecdf7b611849a7712
;;; Fact-ids: Name IndInd.__proj__ConsCtx__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_14bed9a1ddd1711ecdf7b611849a7712))
(Valid (Prims.hasEq IndInd.ctx0)))
:named haseqTm_refine_14bed9a1ddd1711ecdf7b611849a7712))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(115,4-115,14); use=IndInd.fst(115,4-115,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.valid_typ0)
(or (is-IndInd.Unit @x1)
(is-IndInd.Bool @x1)
(is-IndInd.Prod @x1)
(is-IndInd.U @x1)
(is-IndInd.Var @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.valid_typ0))
:qid fuel_guarded_inversion_IndInd.valid_typ0))

:named fuel_guarded_inversion_IndInd.valid_typ0))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(122,4-122,10); use=IndInd.fst(122,4-122,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.u_mem0)
(or (is-IndInd.UHere @x1)
(is-IndInd.UNext @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.u_mem0))
:qid fuel_guarded_inversion_IndInd.u_mem0))

:named fuel_guarded_inversion_IndInd.u_mem0))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(111,5-111,9); use=IndInd.fst(111,5-111,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
IndInd.ctx0)
(or (is-IndInd.EmptyCtx @x1)
(is-IndInd.ConsCtx @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
IndInd.ctx0))
:qid fuel_guarded_inversion_IndInd.ctx0))

:named fuel_guarded_inversion_IndInd.ctx0))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= IndInd.EmptyCtx@tok
IndInd.EmptyCtx)
:named equality_tok_IndInd.EmptyCtx@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_ConsCtx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_ConsCtx @x0)
(BoxBool (is-IndInd.ConsCtx @x0)))
 

:pattern ((IndInd.uu___is_ConsCtx @x0))
:qid disc_equation_IndInd.ConsCtx))

:named disc_equation_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.u_mem0))
(HasTypeFuel @u0
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Var@tok))

:named data_typing_intro_IndInd.Var@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.Unit @x1)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Unit @x1)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Unit@tok))

:named data_typing_intro_IndInd.Unit@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.u_mem0))
(HasTypeFuel @u0
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
 

:pattern ((HasTypeFuel @u0
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
:qid data_typing_intro_IndInd.UNext@tok))

:named data_typing_intro_IndInd.UNext@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.UHere @x1)
IndInd.u_mem0))
 

:pattern ((HasTypeFuel @u0
(IndInd.UHere @x1)
IndInd.u_mem0))
:qid data_typing_intro_IndInd.UHere@tok))

:named data_typing_intro_IndInd.UHere@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.U @x1)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.U @x1)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.U@tok))

:named data_typing_intro_IndInd.U@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.valid_typ0))
(HasTypeFuel @u0
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Prod@tok))

:named data_typing_intro_IndInd.Prod@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(112,4-112,12); use=IndInd.fst(112,4-112,12)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
IndInd.EmptyCtx
IndInd.ctx0)
 

:pattern ((HasTypeFuel @u0
IndInd.EmptyCtx
IndInd.ctx0))
:qid data_typing_intro_IndInd.EmptyCtx@tok))

:named data_typing_intro_IndInd.EmptyCtx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0))
(HasTypeFuel @u0
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
 

:pattern ((HasTypeFuel @u0
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
:qid data_typing_intro_IndInd.ConsCtx@tok))

:named data_typing_intro_IndInd.ConsCtx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
(IndInd.Bool @x1)
IndInd.valid_typ0))
 

:pattern ((HasTypeFuel @u0
(IndInd.Bool @x1)
IndInd.valid_typ0))
:qid data_typing_intro_IndInd.Bool@tok))

:named data_typing_intro_IndInd.Bool@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.u_mem0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Var @x1
@x2)
IndInd.valid_typ0))
:qid data_elim_IndInd.Var))

:named data_elim_IndInd.Var))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Unit @x1)
IndInd.valid_typ0))
:qid data_elim_IndInd.Unit))

:named data_elim_IndInd.Unit))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.u_mem0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UNext @x1
@x2
@x3)
IndInd.u_mem0))
:qid data_elim_IndInd.UNext))

:named data_elim_IndInd.UNext))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.UHere @x1)
IndInd.u_mem0))
:qid data_elim_IndInd.UHere))

:named data_elim_IndInd.UHere))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.U @x1)
IndInd.valid_typ0))
:qid data_elim_IndInd.U))

:named data_elim_IndInd.U))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)
(HasTypeFuel @u0
@x3
IndInd.valid_typ0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Prod @x1
@x2
@x3)
IndInd.valid_typ0))
:qid data_elim_IndInd.Prod))

:named data_elim_IndInd.Prod))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)
(HasTypeFuel @u0
@x2
IndInd.valid_typ0)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.ConsCtx @x1
@x2)
IndInd.ctx0))
:qid data_elim_IndInd.ConsCtx))

:named data_elim_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0)
(HasTypeFuel @u0
@x1
IndInd.ctx0))
 

:pattern ((HasTypeFuel (SFuel @u0)
(IndInd.Bool @x1)
IndInd.valid_typ0))
:qid data_elim_IndInd.Bool))

:named data_elim_IndInd.Bool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 557
(Term_constr_id IndInd.valid_typ0))
:named constructor_distinct_IndInd.valid_typ0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 562
(Term_constr_id IndInd.u_mem0))
:named constructor_distinct_IndInd.u_mem0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 552
(Term_constr_id IndInd.ctx0))
:named constructor_distinct_IndInd.ctx0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= 595
(Term_constr_id (IndInd.Var @x0
@x1)))
 

:pattern ((IndInd.Var @x0
@x1))
:qid constructor_distinct_IndInd.Var))

:named constructor_distinct_IndInd.Var))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@x0 Term))
 (! (= 575
(Term_constr_id (IndInd.Unit @x0)))
 

:pattern ((IndInd.Unit @x0))
:qid constructor_distinct_IndInd.Unit))

:named constructor_distinct_IndInd.Unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 605
(Term_constr_id (IndInd.UNext @x0
@x1
@x2)))
 

:pattern ((IndInd.UNext @x0
@x1
@x2))
:qid constructor_distinct_IndInd.UNext))

:named constructor_distinct_IndInd.UNext))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@x0 Term))
 (! (= 600
(Term_constr_id (IndInd.UHere @x0)))
 

:pattern ((IndInd.UHere @x0))
:qid constructor_distinct_IndInd.UHere))

:named constructor_distinct_IndInd.UHere))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@x0 Term))
 (! (= 590
(Term_constr_id (IndInd.U @x0)))
 

:pattern ((IndInd.U @x0))
:qid constructor_distinct_IndInd.U))

:named constructor_distinct_IndInd.U))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 585
(Term_constr_id (IndInd.Prod @x0
@x1
@x2)))
 

:pattern ((IndInd.Prod @x0
@x1
@x2))
:qid constructor_distinct_IndInd.Prod))

:named constructor_distinct_IndInd.Prod))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! (= 568
(Term_constr_id IndInd.EmptyCtx))
:named constructor_distinct_IndInd.EmptyCtx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,4-113,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 570
(Term_constr_id (IndInd.ConsCtx @x0
@x1)))
 

:pattern ((IndInd.ConsCtx @x0
@x1))
:qid constructor_distinct_IndInd.ConsCtx))

:named constructor_distinct_IndInd.ConsCtx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@x0 Term))
 (! (= 580
(Term_constr_id (IndInd.Bool @x0)))
 

:pattern ((IndInd.Bool @x0))
:qid constructor_distinct_IndInd.Bool))

:named constructor_distinct_IndInd.Bool))
;;;;;;;;;;;;;;;;Assumption: IndInd.valid_typ0__uu___haseq
;;; Fact-ids: Name IndInd.valid_typ0__uu___haseq; Namespace IndInd
(assert (! (Valid (Prims.hasEq IndInd.valid_typ0))
:named assumption_IndInd.valid_typ0__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: IndInd.u_mem0__uu___haseq
;;; Fact-ids: Name IndInd.u_mem0__uu___haseq; Namespace IndInd
(assert (! (Valid (Prims.hasEq IndInd.u_mem0))
:named assumption_IndInd.u_mem0__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: IndInd.ctx0__uu___haseq
;;; Fact-ids: Name IndInd.ctx0__uu___haseq; Namespace IndInd
(assert (! (Valid (Prims.hasEq IndInd.ctx0))
:named assumption_IndInd.ctx0__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(115,4-115,14); use=IndInd.fst(115,4-115,14)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.valid_typ0)
(= IndInd.valid_typ0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.valid_typ0))
:qid IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8))

:named IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(122,4-122,10); use=IndInd.fst(122,4-122,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.u_mem0)
(= IndInd.u_mem0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.u_mem0))
:qid IndInd_pretyping_368fdf57f660d37d194f44c4fc7989a6))

:named IndInd_pretyping_368fdf57f660d37d194f44c4fc7989a6))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name IndInd.ctx0; Namespace IndInd; Name IndInd.EmptyCtx; Namespace IndInd; Name IndInd.ConsCtx; Namespace IndInd; Name IndInd.valid_typ0; Namespace IndInd; Name IndInd.Unit; Namespace IndInd; Name IndInd.Bool; Namespace IndInd; Name IndInd.Prod; Namespace IndInd; Name IndInd.U; Namespace IndInd; Name IndInd.Var; Namespace IndInd; Name IndInd.u_mem0; Namespace IndInd; Name IndInd.UHere; Namespace IndInd; Name IndInd.UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(111,5-111,9); use=IndInd.fst(111,5-111,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
IndInd.ctx0)
(= IndInd.ctx0
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
IndInd.ctx0))
:qid IndInd_pretyping_3639ca53df0585b361be9077cdb71923))

:named IndInd_pretyping_3639ca53df0585b361be9077cdb71923))
(push) ;; push{2

; Starting query at IndInd.fst(113,14-113,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.ctx0{ConsCtx? _}).
;   (*  - Could not prove post-condition
; *) ~(ConsCtx? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ConsCtx__item__g`

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
Tm_refine_14bed9a1ddd1711ecdf7b611849a7712)

;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,14-113,15)
(not 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,14-113,15)
(BoxBool_proj_0 (IndInd.uu___is_ConsCtx @x0))
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
; QUERY ID: (IndInd.__proj__ConsCtx__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_14bed9a1ddd1711ecdf7b611849a7712

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ConsCtx__item__g


; <Skipped let __proj__ConsCtx__item__g/>


; encoding sigelt val IndInd.__proj__ConsCtx__item__a


; <Start encoding val IndInd.__proj__ConsCtx__item__a>


(declare-fun IndInd.__proj__ConsCtx__item__a (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ctx0{ConsCtx? _} -> valid_typ0
(declare-fun Tm_arrow_e771a7981b64072c7c067e1d756edd0e () Term)
(declare-fun IndInd.__proj__ConsCtx__item__a@tok () Term)

; </end encoding val IndInd.__proj__ConsCtx__item__a>

(push) ;; push{2

; Starting query at IndInd.fst(113,24-113,25)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.ctx0{ConsCtx? _}).
;   (*  - Could not prove post-condition
; *) ~(ConsCtx? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ConsCtx__item__a`

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
Tm_refine_14bed9a1ddd1711ecdf7b611849a7712)

;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,24-113,25)
(not 
;; def=IndInd.fst(113,4-113,11); use=IndInd.fst(113,24-113,25)
(BoxBool_proj_0 (IndInd.uu___is_ConsCtx @x0))
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
; QUERY ID: (IndInd.__proj__ConsCtx__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_14bed9a1ddd1711ecdf7b611849a7712

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ConsCtx__item__a


; <Skipped let __proj__ConsCtx__item__a/>


; encoding sigelt val IndInd.uu___is_Unit


; <Start encoding val IndInd.uu___is_Unit>

(declare-fun IndInd.uu___is_Unit (Term) Term)
;;;;;;;;;;;;;;;;projectee: valid_typ0 -> Prims.bool
(declare-fun Tm_arrow_65d8b7761d9017ddf833b174ca2f5d12 () Term)
(declare-fun IndInd.uu___is_Unit@tok () Term)

; </end encoding val IndInd.uu___is_Unit>


; encoding sigelt let uu___is_Unit


; <Skipped let uu___is_Unit/>


; encoding sigelt val IndInd.__proj__Unit__item__g


; <Start encoding val IndInd.__proj__Unit__item__g>

(declare-fun Tm_refine_b5fced15efe5e5b93de9a91d84a562b6 () Term)
(declare-fun IndInd.__proj__Unit__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{Unit? _} -> ctx0
(declare-fun Tm_arrow_831efeb7ac490061f44b2ec909a7fe92 () Term)
(declare-fun IndInd.__proj__Unit__item__g@tok () Term)

; </end encoding val IndInd.__proj__Unit__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_Unit; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.valid_typ0)
(HasType (IndInd.uu___is_Unit @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Unit @x0))
:qid typing_IndInd.uu___is_Unit))

:named typing_IndInd.uu___is_Unit))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__Unit__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_b5fced15efe5e5b93de9a91d84a562b6
Tm_type)
:named refinement_kinding_Tm_refine_b5fced15efe5e5b93de9a91d84a562b6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__Unit__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b5fced15efe5e5b93de9a91d84a562b6)
(and (HasTypeFuel @u0
@x1
IndInd.valid_typ0)

;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(BoxBool_proj_0 (IndInd.uu___is_Unit @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b5fced15efe5e5b93de9a91d84a562b6))
:qid refinement_interpretation_Tm_refine_b5fced15efe5e5b93de9a91d84a562b6))

:named refinement_interpretation_Tm_refine_b5fced15efe5e5b93de9a91d84a562b6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b5fced15efe5e5b93de9a91d84a562b6
;;; Fact-ids: Name IndInd.__proj__Unit__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b5fced15efe5e5b93de9a91d84a562b6))
(Valid (Prims.hasEq IndInd.valid_typ0)))
:named haseqTm_refine_b5fced15efe5e5b93de9a91d84a562b6))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_Unit; Namespace IndInd
(assert (! 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,4-116,8)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Unit @x0)
(BoxBool (is-IndInd.Unit @x0)))
 

:pattern ((IndInd.uu___is_Unit @x0))
:qid disc_equation_IndInd.Unit))

:named disc_equation_IndInd.Unit))
(push) ;; push{2

; Starting query at IndInd.fst(116,11-116,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Unit? _}).
;   (*  - Could not prove post-condition
; *) ~(Unit? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Unit__item__g`

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
Tm_refine_b5fced15efe5e5b93de9a91d84a562b6)

;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,11-116,12)
(not 
;; def=IndInd.fst(116,4-116,8); use=IndInd.fst(116,11-116,12)
(BoxBool_proj_0 (IndInd.uu___is_Unit @x0))
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
; QUERY ID: (IndInd.__proj__Unit__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b5fced15efe5e5b93de9a91d84a562b6

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Unit__item__g


; <Skipped let __proj__Unit__item__g/>


; encoding sigelt val IndInd.uu___is_Bool


; <Start encoding val IndInd.uu___is_Bool>

(declare-fun IndInd.uu___is_Bool (Term) Term)

(declare-fun IndInd.uu___is_Bool@tok () Term)

; </end encoding val IndInd.uu___is_Bool>


; encoding sigelt let uu___is_Bool


; <Skipped let uu___is_Bool/>


; encoding sigelt val IndInd.__proj__Bool__item__g


; <Start encoding val IndInd.__proj__Bool__item__g>

(declare-fun Tm_refine_e00559b2f8471978e3acf9a42951dcfb () Term)
(declare-fun IndInd.__proj__Bool__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{Bool? _} -> ctx0
(declare-fun Tm_arrow_25ad7f8cf0923a881e255f55ea8839c1 () Term)
(declare-fun IndInd.__proj__Bool__item__g@tok () Term)

; </end encoding val IndInd.__proj__Bool__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_Bool; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.valid_typ0)
(HasType (IndInd.uu___is_Bool @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Bool @x0))
:qid typing_IndInd.uu___is_Bool))

:named typing_IndInd.uu___is_Bool))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__Bool__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_e00559b2f8471978e3acf9a42951dcfb
Tm_type)
:named refinement_kinding_Tm_refine_e00559b2f8471978e3acf9a42951dcfb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__Bool__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e00559b2f8471978e3acf9a42951dcfb)
(and (HasTypeFuel @u0
@x1
IndInd.valid_typ0)

;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(BoxBool_proj_0 (IndInd.uu___is_Bool @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e00559b2f8471978e3acf9a42951dcfb))
:qid refinement_interpretation_Tm_refine_e00559b2f8471978e3acf9a42951dcfb))

:named refinement_interpretation_Tm_refine_e00559b2f8471978e3acf9a42951dcfb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e00559b2f8471978e3acf9a42951dcfb
;;; Fact-ids: Name IndInd.__proj__Bool__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e00559b2f8471978e3acf9a42951dcfb))
(Valid (Prims.hasEq IndInd.valid_typ0)))
:named haseqTm_refine_e00559b2f8471978e3acf9a42951dcfb))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_Bool; Namespace IndInd
(assert (! 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,4-117,8)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Bool @x0)
(BoxBool (is-IndInd.Bool @x0)))
 

:pattern ((IndInd.uu___is_Bool @x0))
:qid disc_equation_IndInd.Bool))

:named disc_equation_IndInd.Bool))
(push) ;; push{2

; Starting query at IndInd.fst(117,11-117,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Bool? _}).
;   (*  - Could not prove post-condition
; *) ~(Bool? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Bool__item__g`

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
Tm_refine_e00559b2f8471978e3acf9a42951dcfb)

;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,11-117,12)
(not 
;; def=IndInd.fst(117,4-117,8); use=IndInd.fst(117,11-117,12)
(BoxBool_proj_0 (IndInd.uu___is_Bool @x0))
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
; QUERY ID: (IndInd.__proj__Bool__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e00559b2f8471978e3acf9a42951dcfb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Bool__item__g


; <Skipped let __proj__Bool__item__g/>


; encoding sigelt val IndInd.uu___is_Prod


; <Start encoding val IndInd.uu___is_Prod>

(declare-fun IndInd.uu___is_Prod (Term) Term)

(declare-fun IndInd.uu___is_Prod@tok () Term)

; </end encoding val IndInd.uu___is_Prod>


; encoding sigelt let uu___is_Prod


; <Skipped let uu___is_Prod/>


; encoding sigelt val IndInd.__proj__Prod__item__g


; <Start encoding val IndInd.__proj__Prod__item__g>

(declare-fun Tm_refine_429f4c8d904ddf4c8852156eb272d33f () Term)
(declare-fun IndInd.__proj__Prod__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{Prod? _} -> ctx0
(declare-fun Tm_arrow_01a6a26bd69b7ca777d51eb5ff24265f () Term)
(declare-fun IndInd.__proj__Prod__item__g@tok () Term)

; </end encoding val IndInd.__proj__Prod__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_Prod; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.valid_typ0)
(HasType (IndInd.uu___is_Prod @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Prod @x0))
:qid typing_IndInd.uu___is_Prod))

:named typing_IndInd.uu___is_Prod))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__Prod__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_429f4c8d904ddf4c8852156eb272d33f
Tm_type)
:named refinement_kinding_Tm_refine_429f4c8d904ddf4c8852156eb272d33f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__Prod__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_429f4c8d904ddf4c8852156eb272d33f)
(and (HasTypeFuel @u0
@x1
IndInd.valid_typ0)

;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(BoxBool_proj_0 (IndInd.uu___is_Prod @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_429f4c8d904ddf4c8852156eb272d33f))
:qid refinement_interpretation_Tm_refine_429f4c8d904ddf4c8852156eb272d33f))

:named refinement_interpretation_Tm_refine_429f4c8d904ddf4c8852156eb272d33f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_429f4c8d904ddf4c8852156eb272d33f
;;; Fact-ids: Name IndInd.__proj__Prod__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_429f4c8d904ddf4c8852156eb272d33f))
(Valid (Prims.hasEq IndInd.valid_typ0)))
:named haseqTm_refine_429f4c8d904ddf4c8852156eb272d33f))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_Prod; Namespace IndInd
(assert (! 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,4-118,8)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Prod @x0)
(BoxBool (is-IndInd.Prod @x0)))
 

:pattern ((IndInd.uu___is_Prod @x0))
:qid disc_equation_IndInd.Prod))

:named disc_equation_IndInd.Prod))
(push) ;; push{2

; Starting query at IndInd.fst(118,11-118,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Prod? _}).
;   (*  - Could not prove post-condition
; *) ~(Prod? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Prod__item__g`

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
Tm_refine_429f4c8d904ddf4c8852156eb272d33f)

;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,11-118,12)
(not 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,11-118,12)
(BoxBool_proj_0 (IndInd.uu___is_Prod @x0))
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
; QUERY ID: (IndInd.__proj__Prod__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_429f4c8d904ddf4c8852156eb272d33f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Prod__item__g


; <Skipped let __proj__Prod__item__g/>


; encoding sigelt val IndInd.__proj__Prod__item__a


; <Start encoding val IndInd.__proj__Prod__item__a>


(declare-fun IndInd.__proj__Prod__item__a (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{Prod? _} -> valid_typ0
(declare-fun Tm_arrow_060ebfa82155bda3f11e7596bd6de82a () Term)
(declare-fun IndInd.__proj__Prod__item__a@tok () Term)

; </end encoding val IndInd.__proj__Prod__item__a>

(push) ;; push{2

; Starting query at IndInd.fst(118,21-118,22)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Prod? _}).
;   (*  - Could not prove post-condition
; *) ~(Prod? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Prod__item__a`

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
Tm_refine_429f4c8d904ddf4c8852156eb272d33f)

;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,21-118,22)
(not 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,21-118,22)
(BoxBool_proj_0 (IndInd.uu___is_Prod @x0))
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
; QUERY ID: (IndInd.__proj__Prod__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_429f4c8d904ddf4c8852156eb272d33f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Prod__item__a


; <Skipped let __proj__Prod__item__a/>


; encoding sigelt val IndInd.__proj__Prod__item__b


; <Start encoding val IndInd.__proj__Prod__item__b>


(declare-fun IndInd.__proj__Prod__item__b (Term) Term)


(declare-fun IndInd.__proj__Prod__item__b@tok () Term)

; </end encoding val IndInd.__proj__Prod__item__b>

(push) ;; push{2

; Starting query at IndInd.fst(118,37-118,38)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Prod? _}).
;   (*  - Could not prove post-condition
; *) ~(Prod? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Prod__item__b`

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
Tm_refine_429f4c8d904ddf4c8852156eb272d33f)

;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,37-118,38)
(not 
;; def=IndInd.fst(118,4-118,8); use=IndInd.fst(118,37-118,38)
(BoxBool_proj_0 (IndInd.uu___is_Prod @x0))
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
; QUERY ID: (IndInd.__proj__Prod__item__b, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_429f4c8d904ddf4c8852156eb272d33f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Prod__item__b


; <Skipped let __proj__Prod__item__b/>


; encoding sigelt val IndInd.uu___is_U


; <Start encoding val IndInd.uu___is_U>

(declare-fun IndInd.uu___is_U (Term) Term)

(declare-fun IndInd.uu___is_U@tok () Term)

; </end encoding val IndInd.uu___is_U>


; encoding sigelt let uu___is_U


; <Skipped let uu___is_U/>


; encoding sigelt val IndInd.__proj__U__item__g


; <Start encoding val IndInd.__proj__U__item__g>

(declare-fun Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde () Term)
(declare-fun IndInd.__proj__U__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{U? _} -> ctx0
(declare-fun Tm_arrow_79f950b47287c2b70b5c2d444e270974 () Term)
(declare-fun IndInd.__proj__U__item__g@tok () Term)

; </end encoding val IndInd.__proj__U__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_U; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.valid_typ0)
(HasType (IndInd.uu___is_U @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_U @x0))
:qid typing_IndInd.uu___is_U))

:named typing_IndInd.uu___is_U))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__U__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde
Tm_type)
:named refinement_kinding_Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__U__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde)
(and (HasTypeFuel @u0
@x1
IndInd.valid_typ0)

;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(BoxBool_proj_0 (IndInd.uu___is_U @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde))
:qid refinement_interpretation_Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde))

:named refinement_interpretation_Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde))
;;;;;;;;;;;;;;;;haseq for Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde
;;; Fact-ids: Name IndInd.__proj__U__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde))
(Valid (Prims.hasEq IndInd.valid_typ0)))
:named haseqTm_refine_81a0f75abf3e02d4dcb5a273b19b6fde))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_U; Namespace IndInd
(assert (! 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,4-119,5)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_U @x0)
(BoxBool (is-IndInd.U @x0)))
 

:pattern ((IndInd.uu___is_U @x0))
:qid disc_equation_IndInd.U))

:named disc_equation_IndInd.U))
(push) ;; push{2

; Starting query at IndInd.fst(119,8-119,9)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{U? _}).
;   (*  - Could not prove post-condition
; *) ~(U? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__U__item__g`

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
Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde)

;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,8-119,9)
(not 
;; def=IndInd.fst(119,4-119,5); use=IndInd.fst(119,8-119,9)
(BoxBool_proj_0 (IndInd.uu___is_U @x0))
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
; QUERY ID: (IndInd.__proj__U__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_81a0f75abf3e02d4dcb5a273b19b6fde

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__U__item__g


; <Skipped let __proj__U__item__g/>


; encoding sigelt val IndInd.uu___is_Var


; <Start encoding val IndInd.uu___is_Var>

(declare-fun IndInd.uu___is_Var (Term) Term)

(declare-fun IndInd.uu___is_Var@tok () Term)

; </end encoding val IndInd.uu___is_Var>


; encoding sigelt let uu___is_Var


; <Skipped let uu___is_Var/>


; encoding sigelt val IndInd.__proj__Var__item__g


; <Start encoding val IndInd.__proj__Var__item__g>

(declare-fun Tm_refine_bdc16e7d8a72f1399a436932cb2697c8 () Term)
(declare-fun IndInd.__proj__Var__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{Var? _} -> ctx0
(declare-fun Tm_arrow_518669cd55a9fb9c66bf4cf1c929c2fe () Term)
(declare-fun IndInd.__proj__Var__item__g@tok () Term)

; </end encoding val IndInd.__proj__Var__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_Var; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.valid_typ0)
(HasType (IndInd.uu___is_Var @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_Var @x0))
:qid typing_IndInd.uu___is_Var))

:named typing_IndInd.uu___is_Var))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__Var__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_bdc16e7d8a72f1399a436932cb2697c8
Tm_type)
:named refinement_kinding_Tm_refine_bdc16e7d8a72f1399a436932cb2697c8))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__Var__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_bdc16e7d8a72f1399a436932cb2697c8)
(and (HasTypeFuel @u0
@x1
IndInd.valid_typ0)

;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(BoxBool_proj_0 (IndInd.uu___is_Var @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_bdc16e7d8a72f1399a436932cb2697c8))
:qid refinement_interpretation_Tm_refine_bdc16e7d8a72f1399a436932cb2697c8))

:named refinement_interpretation_Tm_refine_bdc16e7d8a72f1399a436932cb2697c8))
;;;;;;;;;;;;;;;;haseq for Tm_refine_bdc16e7d8a72f1399a436932cb2697c8
;;; Fact-ids: Name IndInd.__proj__Var__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_bdc16e7d8a72f1399a436932cb2697c8))
(Valid (Prims.hasEq IndInd.valid_typ0)))
:named haseqTm_refine_bdc16e7d8a72f1399a436932cb2697c8))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_Var; Namespace IndInd
(assert (! 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_Var @x0)
(BoxBool (is-IndInd.Var @x0)))
 

:pattern ((IndInd.uu___is_Var @x0))
:qid disc_equation_IndInd.Var))

:named disc_equation_IndInd.Var))
(push) ;; push{2

; Starting query at IndInd.fst(120,10-120,11)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Var? _}).
;   (*  - Could not prove post-condition
; *) ~(Var? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Var__item__g`

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
Tm_refine_bdc16e7d8a72f1399a436932cb2697c8)

;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,10-120,11)
(not 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,10-120,11)
(BoxBool_proj_0 (IndInd.uu___is_Var @x0))
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
; QUERY ID: (IndInd.__proj__Var__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_bdc16e7d8a72f1399a436932cb2697c8

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Var__item__g


; <Skipped let __proj__Var__item__g/>


; encoding sigelt val IndInd.__proj__Var__item___1


; <Start encoding val IndInd.__proj__Var__item___1>


(declare-fun IndInd.__proj__Var__item___1 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: valid_typ0{Var? _} -> u_mem0
(declare-fun Tm_arrow_9006f2715b308cc8d6678218deceac4d () Term)
(declare-fun IndInd.__proj__Var__item___1@tok () Term)

; </end encoding val IndInd.__proj__Var__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.valid_typ0{Var? _}).
;   (*  - Could not prove post-condition
; *) ~(Var? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Var__item___1`

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
Tm_refine_bdc16e7d8a72f1399a436932cb2697c8)

;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(not 
;; def=IndInd.fst(120,4-120,7); use=IndInd.fst(120,4-120,7)
(BoxBool_proj_0 (IndInd.uu___is_Var @x0))
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
; QUERY ID: (IndInd.__proj__Var__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_bdc16e7d8a72f1399a436932cb2697c8

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Var__item___1


; <Skipped let __proj__Var__item___1/>


; encoding sigelt val IndInd.uu___is_UHere


; <Start encoding val IndInd.uu___is_UHere>

(declare-fun IndInd.uu___is_UHere (Term) Term)
;;;;;;;;;;;;;;;;projectee: u_mem0 -> Prims.bool
(declare-fun Tm_arrow_7d9ba6763fbe3df0e3da08b736e3eeda () Term)
(declare-fun IndInd.uu___is_UHere@tok () Term)

; </end encoding val IndInd.uu___is_UHere>


; encoding sigelt let uu___is_UHere


; <Skipped let uu___is_UHere/>


; encoding sigelt val IndInd.__proj__UHere__item__g


; <Start encoding val IndInd.__proj__UHere__item__g>

(declare-fun Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3 () Term)
(declare-fun IndInd.__proj__UHere__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: u_mem0{UHere? _} -> ctx0
(declare-fun Tm_arrow_770f38de40688b8b407b6c423ca867d0 () Term)
(declare-fun IndInd.__proj__UHere__item__g@tok () Term)

; </end encoding val IndInd.__proj__UHere__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_UHere; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.u_mem0)
(HasType (IndInd.uu___is_UHere @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_UHere @x0))
:qid typing_IndInd.uu___is_UHere))

:named typing_IndInd.uu___is_UHere))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__UHere__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3
Tm_type)
:named refinement_kinding_Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__UHere__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3)
(and (HasTypeFuel @u0
@x1
IndInd.u_mem0)

;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(BoxBool_proj_0 (IndInd.uu___is_UHere @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3))
:qid refinement_interpretation_Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3))

:named refinement_interpretation_Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3
;;; Fact-ids: Name IndInd.__proj__UHere__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3))
(Valid (Prims.hasEq IndInd.u_mem0)))
:named haseqTm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_UHere; Namespace IndInd
(assert (! 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,4-123,9)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_UHere @x0)
(BoxBool (is-IndInd.UHere @x0)))
 

:pattern ((IndInd.uu___is_UHere @x0))
:qid disc_equation_IndInd.UHere))

:named disc_equation_IndInd.UHere))
(push) ;; push{2

; Starting query at IndInd.fst(123,12-123,13)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.u_mem0{UHere? _}).
;   (*  - Could not prove post-condition
; *) ~(UHere? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__UHere__item__g`

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
Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3)

;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,12-123,13)
(not 
;; def=IndInd.fst(123,4-123,9); use=IndInd.fst(123,12-123,13)
(BoxBool_proj_0 (IndInd.uu___is_UHere @x0))
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
; QUERY ID: (IndInd.__proj__UHere__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_9c3cb9f8a3afcb83bfccfd289f21b2f3

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__UHere__item__g


; <Skipped let __proj__UHere__item__g/>


; encoding sigelt val IndInd.uu___is_UNext


; <Start encoding val IndInd.uu___is_UNext>

(declare-fun IndInd.uu___is_UNext (Term) Term)

(declare-fun IndInd.uu___is_UNext@tok () Term)

; </end encoding val IndInd.uu___is_UNext>


; encoding sigelt let uu___is_UNext


; <Skipped let uu___is_UNext/>


; encoding sigelt val IndInd.__proj__UNext__item__g


; <Start encoding val IndInd.__proj__UNext__item__g>

(declare-fun Tm_refine_84bc94e3f54f9788227d2ea26318516d () Term)
(declare-fun IndInd.__proj__UNext__item__g (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: u_mem0{UNext? _} -> ctx0
(declare-fun Tm_arrow_b67ecd07e13cf6f6a924b7c4fbef0394 () Term)
(declare-fun IndInd.__proj__UNext__item__g@tok () Term)

; </end encoding val IndInd.__proj__UNext__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.u_mem0)
(HasType (IndInd.uu___is_UNext @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_UNext @x0))
:qid typing_IndInd.uu___is_UNext))

:named typing_IndInd.uu___is_UNext))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.__proj__UNext__item__g; Namespace IndInd
(assert (! (HasType Tm_refine_84bc94e3f54f9788227d2ea26318516d
Tm_type)
:named refinement_kinding_Tm_refine_84bc94e3f54f9788227d2ea26318516d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.__proj__UNext__item__g; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_84bc94e3f54f9788227d2ea26318516d)
(and (HasTypeFuel @u0
@x1
IndInd.u_mem0)

;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(BoxBool_proj_0 (IndInd.uu___is_UNext @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_84bc94e3f54f9788227d2ea26318516d))
:qid refinement_interpretation_Tm_refine_84bc94e3f54f9788227d2ea26318516d))

:named refinement_interpretation_Tm_refine_84bc94e3f54f9788227d2ea26318516d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_84bc94e3f54f9788227d2ea26318516d
;;; Fact-ids: Name IndInd.__proj__UNext__item__g; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_84bc94e3f54f9788227d2ea26318516d))
(Valid (Prims.hasEq IndInd.u_mem0)))
:named haseqTm_refine_84bc94e3f54f9788227d2ea26318516d))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_UNext; Namespace IndInd
(assert (! 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_UNext @x0)
(BoxBool (is-IndInd.UNext @x0)))
 

:pattern ((IndInd.uu___is_UNext @x0))
:qid disc_equation_IndInd.UNext))

:named disc_equation_IndInd.UNext))
(push) ;; push{2

; Starting query at IndInd.fst(124,12-124,13)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.u_mem0{UNext? _}).
;   (*  - Could not prove post-condition
; *) ~(UNext? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__UNext__item__g`

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
Tm_refine_84bc94e3f54f9788227d2ea26318516d)

;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,12-124,13)
(not 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,12-124,13)
(BoxBool_proj_0 (IndInd.uu___is_UNext @x0))
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
; QUERY ID: (IndInd.__proj__UNext__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_84bc94e3f54f9788227d2ea26318516d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__UNext__item__g


; <Skipped let __proj__UNext__item__g/>


; encoding sigelt val IndInd.__proj__UNext__item__a


; <Start encoding val IndInd.__proj__UNext__item__a>


(declare-fun IndInd.__proj__UNext__item__a (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: u_mem0{UNext? _} -> valid_typ0
(declare-fun Tm_arrow_22311caee0b30daafe89994b148002e3 () Term)
(declare-fun IndInd.__proj__UNext__item__a@tok () Term)

; </end encoding val IndInd.__proj__UNext__item__a>

(push) ;; push{2

; Starting query at IndInd.fst(124,22-124,23)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.u_mem0{UNext? _}).
;   (*  - Could not prove post-condition
; *) ~(UNext? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__UNext__item__a`

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
Tm_refine_84bc94e3f54f9788227d2ea26318516d)

;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,22-124,23)
(not 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,22-124,23)
(BoxBool_proj_0 (IndInd.uu___is_UNext @x0))
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
; QUERY ID: (IndInd.__proj__UNext__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_84bc94e3f54f9788227d2ea26318516d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__UNext__item__a


; <Skipped let __proj__UNext__item__a/>


; encoding sigelt val IndInd.__proj__UNext__item___2


; <Start encoding val IndInd.__proj__UNext__item___2>


(declare-fun IndInd.__proj__UNext__item___2 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: u_mem0{UNext? _} -> u_mem0
(declare-fun Tm_arrow_858b5481a420df3c4102e4ac48b04246 () Term)
(declare-fun IndInd.__proj__UNext__item___2@tok () Term)

; </end encoding val IndInd.__proj__UNext__item___2>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: IndInd.u_mem0{UNext? _}).
;   (*  - Could not prove post-condition
; *) ~(UNext? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__UNext__item___2`

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
Tm_refine_84bc94e3f54f9788227d2ea26318516d)

;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(not 
;; def=IndInd.fst(124,4-124,9); use=IndInd.fst(124,4-124,9)
(BoxBool_proj_0 (IndInd.uu___is_UNext @x0))
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
; QUERY ID: (IndInd.__proj__UNext__item___2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_84bc94e3f54f9788227d2ea26318516d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__UNext__item___2


; <Skipped let __proj__UNext__item___2/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.uu___is_EmptyCtx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(112,4-112,12); use=IndInd.fst(112,4-112,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)
(HasType (IndInd.uu___is_EmptyCtx @x0)
Prims.bool))
 

:pattern ((IndInd.uu___is_EmptyCtx @x0))
:qid typing_IndInd.uu___is_EmptyCtx))

:named typing_IndInd.uu___is_EmptyCtx))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name IndInd.uu___is_EmptyCtx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(112,4-112,12); use=IndInd.fst(112,4-112,12)
(forall ((@x0 Term))
 (! (= (IndInd.uu___is_EmptyCtx @x0)
(BoxBool (is-IndInd.EmptyCtx @x0)))
 

:pattern ((IndInd.uu___is_EmptyCtx @x0))
:qid disc_equation_IndInd.EmptyCtx))

:named disc_equation_IndInd.EmptyCtx))
(push) ;; push{2

; Starting query at IndInd.fst(129,2-131,53)

;;;;;;;;;;;;;;;;g0 : IndInd.ctx0 (IndInd.ctx0)
(declare-fun x_3639ca53df0585b361be9077cdb71923_0 () Term)
;;;;;;;;;;;;;;;;binder_x_3639ca53df0585b361be9077cdb71923_0
;;; Fact-ids: 
(assert (! (HasType x_3639ca53df0585b361be9077cdb71923_0
IndInd.ctx0)
:named binder_x_3639ca53df0585b361be9077cdb71923_0))
(declare-fun Tm_refine_1da8337e05740bd130542764beb8bf1d (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-141,30); use=IndInd.fst(129,2-141,30)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_1da8337e05740bd130542764beb8bf1d @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_1da8337e05740bd130542764beb8bf1d @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_1da8337e05740bd130542764beb8bf1d))

:named refinement_kinding_Tm_refine_1da8337e05740bd130542764beb8bf1d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-141,30); use=IndInd.fst(129,2-141,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1da8337e05740bd130542764beb8bf1d @x2))
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)
(Valid 
;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)
(Prims.precedes IndInd.u_mem0
IndInd.ctx0
@x2
x_3639ca53df0585b361be9077cdb71923_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1da8337e05740bd130542764beb8bf1d @x2)))
:qid refinement_interpretation_Tm_refine_1da8337e05740bd130542764beb8bf1d))

:named refinement_interpretation_Tm_refine_1da8337e05740bd130542764beb8bf1d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1da8337e05740bd130542764beb8bf1d
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-141,30); use=IndInd.fst(129,2-141,30)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1da8337e05740bd130542764beb8bf1d @x0)))
(Valid (Prims.hasEq IndInd.ctx0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1da8337e05740bd130542764beb8bf1d @x0))))
:qid haseqTm_refine_1da8337e05740bd130542764beb8bf1d))

:named haseqTm_refine_1da8337e05740bd130542764beb8bf1d))
(declare-fun IndInd.u_mem_valid (Term Term) Term)

;;;;;;;;;;;;;;;;w: u_mem0 -> g0: ctx0{w << g0} -> Prims.Tot Type
(declare-fun Tm_arrow_c05a6389da891eded6fff6c77bcd2389 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c05a6389da891eded6fff6c77bcd2389
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_c05a6389da891eded6fff6c77bcd2389
Tm_type)
:named kinding_Tm_arrow_c05a6389da891eded6fff6c77bcd2389))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-141,48); use=IndInd.fst(129,2-141,48)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_c05a6389da891eded6fff6c77bcd2389)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_c05a6389da891eded6fff6c77bcd2389))
:qid IndInd_pre_typing_Tm_arrow_c05a6389da891eded6fff6c77bcd2389))

:named IndInd_pre_typing_Tm_arrow_c05a6389da891eded6fff6c77bcd2389))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c05a6389da891eded6fff6c77bcd2389
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-141,48); use=IndInd.fst(129,2-141,48)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_c05a6389da891eded6fff6c77bcd2389)
(and 
;; def=IndInd.fst(129,2-141,48); use=IndInd.fst(129,2-141,48)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.u_mem0)
(HasType @x2
(Tm_refine_1da8337e05740bd130542764beb8bf1d @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_c05a6389da891eded6fff6c77bcd2389.1))

(IsTotFun @x0)

;; def=IndInd.fst(129,2-141,48); use=IndInd.fst(129,2-141,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.u_mem0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_c05a6389da891eded6fff6c77bcd2389.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_c05a6389da891eded6fff6c77bcd2389))
:qid IndInd_interpretation_Tm_arrow_c05a6389da891eded6fff6c77bcd2389))

:named IndInd_interpretation_Tm_arrow_c05a6389da891eded6fff6c77bcd2389))
(declare-fun IndInd.u_mem_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x0)
@x1)
(IndInd.u_mem_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.u_mem_valid))

:named token_correspondence_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.u_mem_valid@tok
Tm_arrow_c05a6389da891eded6fff6c77bcd2389))

;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x1)
@x2)
(IndInd.u_mem_valid @x1
@x2))
 

:pattern ((IndInd.u_mem_valid @x1
@x2))
:qid function_token_typing_IndInd.u_mem_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.u_mem_valid@tok))
:qid function_token_typing_IndInd.u_mem_valid))

:named function_token_typing_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.u_mem0)
(HasType @x1
(Tm_refine_1da8337e05740bd130542764beb8bf1d @x0)))
(HasType (IndInd.u_mem_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.u_mem_valid @x0
@x1))
:qid typing_IndInd.u_mem_valid))

:named typing_IndInd.u_mem_valid))
(declare-fun Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-133,38); use=IndInd.fst(129,2-133,38)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff))

:named refinement_kinding_Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-133,38); use=IndInd.fst(129,2-133,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x2))
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)
(Valid 
;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)
(Prims.precedes IndInd.valid_typ0
IndInd.ctx0
@x2
x_3639ca53df0585b361be9077cdb71923_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x2)))
:qid refinement_interpretation_Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff))

:named refinement_interpretation_Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-133,38); use=IndInd.fst(129,2-133,38)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x0)))
(Valid (Prims.hasEq IndInd.ctx0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x0))))
:qid haseqTm_refine_5ee50b2e4e270e5c6668b280b92b6fff))

:named haseqTm_refine_5ee50b2e4e270e5c6668b280b92b6fff))
(declare-fun IndInd.valid_typ_valid (Term Term) Term)

;;;;;;;;;;;;;;;;a: valid_typ0 -> g0: ctx0{a << g0} -> Prims.Tot Type
(declare-fun Tm_arrow_d980d23f0640d2a27fc14351941a5f66 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d980d23f0640d2a27fc14351941a5f66
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_d980d23f0640d2a27fc14351941a5f66
Tm_type)
:named kinding_Tm_arrow_d980d23f0640d2a27fc14351941a5f66))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-133,56); use=IndInd.fst(129,2-133,56)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d980d23f0640d2a27fc14351941a5f66)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d980d23f0640d2a27fc14351941a5f66))
:qid IndInd_pre_typing_Tm_arrow_d980d23f0640d2a27fc14351941a5f66))

:named IndInd_pre_typing_Tm_arrow_d980d23f0640d2a27fc14351941a5f66))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d980d23f0640d2a27fc14351941a5f66
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(129,2-133,56); use=IndInd.fst(129,2-133,56)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d980d23f0640d2a27fc14351941a5f66)
(and 
;; def=IndInd.fst(129,2-133,56); use=IndInd.fst(129,2-133,56)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.valid_typ0)
(HasType @x2
(Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_d980d23f0640d2a27fc14351941a5f66.1))

(IsTotFun @x0)

;; def=IndInd.fst(129,2-133,56); use=IndInd.fst(129,2-133,56)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.valid_typ0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_d980d23f0640d2a27fc14351941a5f66.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d980d23f0640d2a27fc14351941a5f66))
:qid IndInd_interpretation_Tm_arrow_d980d23f0640d2a27fc14351941a5f66))

:named IndInd_interpretation_Tm_arrow_d980d23f0640d2a27fc14351941a5f66))
(declare-fun IndInd.valid_typ_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x0)
@x1)
(IndInd.valid_typ_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.valid_typ_valid))

:named token_correspondence_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.valid_typ_valid@tok
Tm_arrow_d980d23f0640d2a27fc14351941a5f66))

;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x1)
@x2)
(IndInd.valid_typ_valid @x1
@x2))
 

:pattern ((IndInd.valid_typ_valid @x1
@x2))
:qid function_token_typing_IndInd.valid_typ_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.valid_typ_valid@tok))
:qid function_token_typing_IndInd.valid_typ_valid))

:named function_token_typing_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.valid_typ0)
(HasType @x1
(Tm_refine_5ee50b2e4e270e5c6668b280b92b6fff @x0)))
(HasType (IndInd.valid_typ_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.valid_typ_valid @x0
@x1))
:qid typing_IndInd.valid_typ_valid))

:named typing_IndInd.valid_typ_valid))
(declare-fun Tm_refine_dc558ebf331179571d2aa6f1c8160ca9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_dc558ebf331179571d2aa6f1c8160ca9
Tm_type)
:named refinement_kinding_Tm_refine_dc558ebf331179571d2aa6f1c8160ca9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-131,53); use=IndInd.fst(128,19-131,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_dc558ebf331179571d2aa6f1c8160ca9)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)
(Valid 
;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(129,2-131,53)
(Prims.precedes IndInd.ctx0
IndInd.ctx0
@x1
x_3639ca53df0585b361be9077cdb71923_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_dc558ebf331179571d2aa6f1c8160ca9))
:qid refinement_interpretation_Tm_refine_dc558ebf331179571d2aa6f1c8160ca9))

:named refinement_interpretation_Tm_refine_dc558ebf331179571d2aa6f1c8160ca9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_dc558ebf331179571d2aa6f1c8160ca9
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_dc558ebf331179571d2aa6f1c8160ca9))
(Valid (Prims.hasEq IndInd.ctx0)))
:named haseqTm_refine_dc558ebf331179571d2aa6f1c8160ca9))
(declare-fun IndInd.ctx_valid (Term) Term)

;;;;;;;;;;;;;;;;g0: ctx0{g0 << g0} -> Prims.Tot Type
(declare-fun Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de
Tm_type)
:named kinding_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-131,53); use=IndInd.fst(128,19-131,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))
:qid IndInd_pre_typing_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))

:named IndInd_pre_typing_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-131,53); use=IndInd.fst(128,19-131,53)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de)
(and 
;; def=IndInd.fst(128,19-131,53); use=IndInd.fst(128,19-131,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_dc558ebf331179571d2aa6f1c8160ca9)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))
:qid IndInd_interpretation_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))

:named IndInd_interpretation_Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))
(declare-fun IndInd.ctx_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (= (ApplyTT IndInd.ctx_valid@tok
@x0)
(IndInd.ctx_valid @x0))
 

:pattern ((ApplyTT IndInd.ctx_valid@tok
@x0))
:qid token_correspondence_IndInd.ctx_valid))

:named token_correspondence_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.ctx_valid@tok
Tm_arrow_5413c398c3aaed3fcb4cf8099859f8de))

;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x1 Term))
 (! (= (ApplyTT IndInd.ctx_valid@tok
@x1)
(IndInd.ctx_valid @x1))
 

:pattern ((IndInd.ctx_valid @x1))
:qid function_token_typing_IndInd.ctx_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.ctx_valid@tok))
:qid function_token_typing_IndInd.ctx_valid))

:named function_token_typing_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_dc558ebf331179571d2aa6f1c8160ca9)
(HasType (IndInd.ctx_valid @x0)
Tm_type))
 

:pattern ((IndInd.ctx_valid @x0))
:qid typing_IndInd.ctx_valid))

:named typing_IndInd.ctx_valid))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Type0).
;   (forall (x: Type0). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(EmptyCtx? g0) /\ ~(ConsCtx? g0) ==> Prims.l_False) /\
;   (~(EmptyCtx? g0) ==>
;     (forall (b: IndInd.ctx0) (b: IndInd.valid_typ0).
;         g0 == IndInd.ConsCtx b b ==> b << g0 /\ (IndInd.ctx_valid b ==> b << g0)))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec ctx_valid and valid_typ_valid and u_mem_valid`

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
(Prims.pure_post Tm_type))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(129,2-131,53)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(129,2-131,53)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(129,2-131,53)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(129,2-131,53)
(and (implies 
;; def=IndInd.fst(128,19-128,21); use=IndInd.fst(129,8-129,10)
(and 
;; def=IndInd.fst(128,19-128,21); use=IndInd.fst(129,8-129,10)
(not 
;; def=IndInd.fst(128,19-128,21); use=IndInd.fst(129,8-129,10)
(BoxBool_proj_0 (IndInd.uu___is_EmptyCtx x_3639ca53df0585b361be9077cdb71923_0))
)


;; def=IndInd.fst(128,19-128,21); use=IndInd.fst(129,8-129,10)
(not 
;; def=IndInd.fst(128,19-128,21); use=IndInd.fst(129,8-129,10)
(BoxBool_proj_0 (IndInd.uu___is_ConsCtx x_3639ca53df0585b361be9077cdb71923_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(129,2-131,53)
(not 
;; def=IndInd.fst(128,19-128,21); use=IndInd.fst(129,8-129,10)
(BoxBool_proj_0 (IndInd.uu___is_EmptyCtx x_3639ca53df0585b361be9077cdb71923_0))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(129,2-131,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.ctx0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(129,2-131,53)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
IndInd.valid_typ0)

;; def=IndInd.fst(128,19-131,15); use=IndInd.fst(129,8-131,15)
(= x_3639ca53df0585b361be9077cdb71923_0
(IndInd.ConsCtx @x1
@x2))
)

;; def=IndInd.fst(131,12-131,30); use=IndInd.fst(131,19-131,53)
(and 
;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(131,29-131,30)
(or label_2

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(131,29-131,30)
(Valid 
;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(131,29-131,30)
(Prims.precedes IndInd.ctx0
IndInd.ctx0
@x1
x_3639ca53df0585b361be9077cdb71923_0)
)
)

(implies 
;; def=IndInd.fst(131,19-131,30); use=IndInd.fst(131,19-131,30)
(Valid 
;; def=IndInd.fst(131,19-131,30); use=IndInd.fst(131,19-131,30)
(IndInd.ctx_valid @x1)
)


;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(131,52-131,53)
(or label_3

;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(131,52-131,53)
(Valid 
;; def=IndInd.fst(129,2-131,53); use=IndInd.fst(131,52-131,53)
(Prims.precedes IndInd.valid_typ0
IndInd.ctx0
@x2
x_3639ca53df0585b361be9077cdb71923_0)
)
)
))
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
; QUERY ID: (IndInd.ctx_valid, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8, binder_x_3639ca53df0585b361be9077cdb71923_0, data_elim_IndInd.ConsCtx, disc_equation_IndInd.ConsCtx, disc_equation_IndInd.EmptyCtx, equality_tok_IndInd.EmptyCtx@tok, fuel_guarded_inversion_IndInd.ctx0, projection_inverse_BoxBool_proj_0, projection_inverse_IndInd.ConsCtx_a, projection_inverse_IndInd.ConsCtx_g, subterm_ordering_IndInd.ConsCtx, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at IndInd.fst(134,2-139,56)

;;;;;;;;;;;;;;;;a : IndInd.valid_typ0 (IndInd.valid_typ0)
(declare-fun x_5253138d8e6ed0bdf00f6311c628e7f8_0 () Term)
;;;;;;;;;;;;;;;;binder_x_5253138d8e6ed0bdf00f6311c628e7f8_0
;;; Fact-ids: 
(assert (! (HasType x_5253138d8e6ed0bdf00f6311c628e7f8_0
IndInd.valid_typ0)
:named binder_x_5253138d8e6ed0bdf00f6311c628e7f8_0))
;;;;;;;;;;;;;;;;g0 : IndInd.ctx0 (IndInd.ctx0)
(declare-fun x_3639ca53df0585b361be9077cdb71923_1 () Term)
;;;;;;;;;;;;;;;;binder_x_3639ca53df0585b361be9077cdb71923_1
;;; Fact-ids: 
(assert (! (HasType x_3639ca53df0585b361be9077cdb71923_1
IndInd.ctx0)
:named binder_x_3639ca53df0585b361be9077cdb71923_1))
(declare-fun Tm_refine_cefc27cf7170094bb708a167d45de478 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(134,2-141,30); use=IndInd.fst(134,2-141,30)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_cefc27cf7170094bb708a167d45de478 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_cefc27cf7170094bb708a167d45de478 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_cefc27cf7170094bb708a167d45de478))

:named refinement_kinding_Tm_refine_cefc27cf7170094bb708a167d45de478))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(134,2-141,30); use=IndInd.fst(134,2-141,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cefc27cf7170094bb708a167d45de478 @x2))
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)
(Prims.precedes IndInd.u_mem0
IndInd.valid_typ0
@x2
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cefc27cf7170094bb708a167d45de478 @x2)))
:qid refinement_interpretation_Tm_refine_cefc27cf7170094bb708a167d45de478))

:named refinement_interpretation_Tm_refine_cefc27cf7170094bb708a167d45de478))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cefc27cf7170094bb708a167d45de478
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(134,2-141,30); use=IndInd.fst(134,2-141,30)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cefc27cf7170094bb708a167d45de478 @x0)))
(Valid (Prims.hasEq IndInd.ctx0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cefc27cf7170094bb708a167d45de478 @x0))))
:qid haseqTm_refine_cefc27cf7170094bb708a167d45de478))

:named haseqTm_refine_cefc27cf7170094bb708a167d45de478))
(declare-fun IndInd.u_mem_valid (Term Term) Term)

;;;;;;;;;;;;;;;;w: u_mem0 -> g0: ctx0{w << a} -> Prims.Tot Type
(declare-fun Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b
Tm_type)
:named kinding_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(134,2-141,48); use=IndInd.fst(134,2-141,48)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))
:qid IndInd_pre_typing_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))

:named IndInd_pre_typing_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(134,2-141,48); use=IndInd.fst(134,2-141,48)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b)
(and 
;; def=IndInd.fst(134,2-141,48); use=IndInd.fst(134,2-141,48)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.u_mem0)
(HasType @x2
(Tm_refine_cefc27cf7170094bb708a167d45de478 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b.1))

(IsTotFun @x0)

;; def=IndInd.fst(134,2-141,48); use=IndInd.fst(134,2-141,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.u_mem0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))
:qid IndInd_interpretation_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))

:named IndInd_interpretation_Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))
(declare-fun IndInd.u_mem_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x0)
@x1)
(IndInd.u_mem_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.u_mem_valid))

:named token_correspondence_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.u_mem_valid@tok
Tm_arrow_997a0fe4bf8b59d59ee623412d1b909b))

;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x1)
@x2)
(IndInd.u_mem_valid @x1
@x2))
 

:pattern ((IndInd.u_mem_valid @x1
@x2))
:qid function_token_typing_IndInd.u_mem_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.u_mem_valid@tok))
:qid function_token_typing_IndInd.u_mem_valid))

:named function_token_typing_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.u_mem0)
(HasType @x1
(Tm_refine_cefc27cf7170094bb708a167d45de478 @x0)))
(HasType (IndInd.u_mem_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.u_mem_valid @x0
@x1))
:qid typing_IndInd.u_mem_valid))

:named typing_IndInd.u_mem_valid))
(declare-fun Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,36-139,56); use=IndInd.fst(133,36-139,56)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_cafc9db25a5e28f24fe4ee40e3824935))

:named refinement_kinding_Tm_refine_cafc9db25a5e28f24fe4ee40e3824935))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,36-139,56); use=IndInd.fst(133,36-139,56)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x2))
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)
(Prims.precedes IndInd.valid_typ0
IndInd.valid_typ0
@x2
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x2)))
:qid refinement_interpretation_Tm_refine_cafc9db25a5e28f24fe4ee40e3824935))

:named refinement_interpretation_Tm_refine_cafc9db25a5e28f24fe4ee40e3824935))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cafc9db25a5e28f24fe4ee40e3824935
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,36-139,56); use=IndInd.fst(133,36-139,56)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x0)))
(Valid (Prims.hasEq IndInd.ctx0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x0))))
:qid haseqTm_refine_cafc9db25a5e28f24fe4ee40e3824935))

:named haseqTm_refine_cafc9db25a5e28f24fe4ee40e3824935))
(declare-fun IndInd.valid_typ_valid (Term Term) Term)

;;;;;;;;;;;;;;;;a: valid_typ0 -> g0: ctx0{a << a} -> Prims.Tot Type
(declare-fun Tm_arrow_e2f48bc156c1cb560a2290627f203590 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e2f48bc156c1cb560a2290627f203590
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_e2f48bc156c1cb560a2290627f203590
Tm_type)
:named kinding_Tm_arrow_e2f48bc156c1cb560a2290627f203590))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,23-139,56); use=IndInd.fst(133,23-139,56)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_e2f48bc156c1cb560a2290627f203590)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_e2f48bc156c1cb560a2290627f203590))
:qid IndInd_pre_typing_Tm_arrow_e2f48bc156c1cb560a2290627f203590))

:named IndInd_pre_typing_Tm_arrow_e2f48bc156c1cb560a2290627f203590))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e2f48bc156c1cb560a2290627f203590
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,23-139,56); use=IndInd.fst(133,23-139,56)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_e2f48bc156c1cb560a2290627f203590)
(and 
;; def=IndInd.fst(133,23-139,56); use=IndInd.fst(133,23-139,56)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.valid_typ0)
(HasType @x2
(Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_e2f48bc156c1cb560a2290627f203590.1))

(IsTotFun @x0)

;; def=IndInd.fst(133,23-139,56); use=IndInd.fst(133,23-139,56)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.valid_typ0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_e2f48bc156c1cb560a2290627f203590.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_e2f48bc156c1cb560a2290627f203590))
:qid IndInd_interpretation_Tm_arrow_e2f48bc156c1cb560a2290627f203590))

:named IndInd_interpretation_Tm_arrow_e2f48bc156c1cb560a2290627f203590))
(declare-fun IndInd.valid_typ_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x0)
@x1)
(IndInd.valid_typ_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.valid_typ_valid))

:named token_correspondence_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.valid_typ_valid@tok
Tm_arrow_e2f48bc156c1cb560a2290627f203590))

;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x1)
@x2)
(IndInd.valid_typ_valid @x1
@x2))
 

:pattern ((IndInd.valid_typ_valid @x1
@x2))
:qid function_token_typing_IndInd.valid_typ_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.valid_typ_valid@tok))
:qid function_token_typing_IndInd.valid_typ_valid))

:named function_token_typing_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.valid_typ0)
(HasType @x1
(Tm_refine_cafc9db25a5e28f24fe4ee40e3824935 @x0)))
(HasType (IndInd.valid_typ_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.valid_typ_valid @x0
@x1))
:qid typing_IndInd.valid_typ_valid))

:named typing_IndInd.valid_typ_valid))
(declare-fun Tm_refine_e2aa14ffef3c278583bc330afcc69241 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_e2aa14ffef3c278583bc330afcc69241
Tm_type)
:named refinement_kinding_Tm_refine_e2aa14ffef3c278583bc330afcc69241))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-139,56); use=IndInd.fst(128,19-139,56)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e2aa14ffef3c278583bc330afcc69241)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(134,2-139,56)
(Prims.precedes IndInd.ctx0
IndInd.valid_typ0
@x1
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e2aa14ffef3c278583bc330afcc69241))
:qid refinement_interpretation_Tm_refine_e2aa14ffef3c278583bc330afcc69241))

:named refinement_interpretation_Tm_refine_e2aa14ffef3c278583bc330afcc69241))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e2aa14ffef3c278583bc330afcc69241
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e2aa14ffef3c278583bc330afcc69241))
(Valid (Prims.hasEq IndInd.ctx0)))
:named haseqTm_refine_e2aa14ffef3c278583bc330afcc69241))
(declare-fun IndInd.ctx_valid (Term) Term)

;;;;;;;;;;;;;;;;g0: ctx0{g0 << a} -> Prims.Tot Type
(declare-fun Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae
Tm_type)
:named kinding_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-139,56); use=IndInd.fst(128,19-139,56)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))
:qid IndInd_pre_typing_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))

:named IndInd_pre_typing_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-139,56); use=IndInd.fst(128,19-139,56)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae)
(and 
;; def=IndInd.fst(128,19-139,56); use=IndInd.fst(128,19-139,56)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_e2aa14ffef3c278583bc330afcc69241)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))
:qid IndInd_interpretation_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))

:named IndInd_interpretation_Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))
(declare-fun IndInd.ctx_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (= (ApplyTT IndInd.ctx_valid@tok
@x0)
(IndInd.ctx_valid @x0))
 

:pattern ((ApplyTT IndInd.ctx_valid@tok
@x0))
:qid token_correspondence_IndInd.ctx_valid))

:named token_correspondence_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.ctx_valid@tok
Tm_arrow_1a822737b37b74e548aabb3ae8ff9cae))

;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x1 Term))
 (! (= (ApplyTT IndInd.ctx_valid@tok
@x1)
(IndInd.ctx_valid @x1))
 

:pattern ((IndInd.ctx_valid @x1))
:qid function_token_typing_IndInd.ctx_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.ctx_valid@tok))
:qid function_token_typing_IndInd.ctx_valid))

:named function_token_typing_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_e2aa14ffef3c278583bc330afcc69241)
(HasType (IndInd.ctx_valid @x0)
Tm_type))
 

:pattern ((IndInd.ctx_valid @x0))
:qid typing_IndInd.ctx_valid))

:named typing_IndInd.ctx_valid))
(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Type0).
;   (forall (x: Type0). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Unit? a) /\ ~(Bool? a) /\ ~(Prod? a) /\ ~(U? a) /\ ~(Var? a) ==> Prims.l_False) /\
;   (forall (b: IndInd.ctx0). a == IndInd.Unit b ==> g0 == b ==> b << a) /\
;   (~(Unit? a) ==>
;     (forall (b: IndInd.ctx0). a == IndInd.Bool b ==> g0 == b ==> b << a) /\
;     (~(Bool? a) ==>
;       (forall (b: IndInd.ctx0) (b: IndInd.valid_typ0) (b: IndInd.valid_typ0).
;           a == IndInd.Prod b b b ==>
;           (g0 == b ==> b << a) /\ (g0 == b /\ IndInd.ctx_valid b ==> b << a) /\
;           (g0 == b /\ IndInd.ctx_valid b /\ IndInd.valid_typ_valid b b ==> b << a)) /\
;       (~(Prod? a) ==>
;         (forall (b: IndInd.ctx0). a == IndInd.U b ==> g0 == b ==> b << a) /\
;         (~(U? a) ==>
;           (forall (b: IndInd.ctx0) (b: IndInd.u_mem0).
;               a == IndInd.Var b b ==>
;               (g0 == b ==> b << a) /\ (g0 == b /\ IndInd.ctx_valid b ==> b << a))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec ctx_valid and valid_typ_valid and u_mem_valid`

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
(Prims.pure_post Tm_type))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(134,2-139,56)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(134,2-139,56)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(134,2-139,56)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(134,2-139,56)
(and (implies 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(and 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Unit x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Bool x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Prod x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_U x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Var x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
IndInd.ctx0)

;; def=IndInd.fst(133,21-135,10); use=IndInd.fst(134,8-135,10)
(= x_5253138d8e6ed0bdf00f6311c628e7f8_0
(IndInd.Unit @x1))


;; def=IndInd.fst(135,14-135,21); use=IndInd.fst(135,14-135,21)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)
)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(135,35-135,36)
(or label_2

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(135,35-135,36)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(135,35-135,36)
(Prims.precedes IndInd.ctx0
IndInd.valid_typ0
@x1
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
)
 
;;no pats
:qid @query.2))

(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(134,2-139,56)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Unit x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=Prims.fst(389,2-389,39); use=IndInd.fst(134,2-139,56)
(and 
;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
IndInd.ctx0)

;; def=IndInd.fst(133,21-136,10); use=IndInd.fst(134,8-136,10)
(= x_5253138d8e6ed0bdf00f6311c628e7f8_0
(IndInd.Bool @x1))


;; def=IndInd.fst(136,14-136,21); use=IndInd.fst(136,14-136,21)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)
)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(136,35-136,36)
(or label_3

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(136,35-136,36)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(136,35-136,36)
(Prims.precedes IndInd.ctx0
IndInd.valid_typ0
@x1
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
)
 
;;no pats
:qid @query.3))

(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(134,2-139,56)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Bool x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=Prims.fst(389,2-389,39); use=IndInd.fst(134,2-139,56)
(and 
;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.ctx0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x2 Term))
 (! (implies (HasType @x2
IndInd.valid_typ0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
IndInd.valid_typ0)

;; def=IndInd.fst(133,21-137,14); use=IndInd.fst(134,8-137,14)
(= x_5253138d8e6ed0bdf00f6311c628e7f8_0
(IndInd.Prod @x1
@x2
@x3))
)

;; def=IndInd.fst(137,9-137,98); use=IndInd.fst(137,18-137,98)
(and (implies 
;; def=IndInd.fst(137,18-137,25); use=IndInd.fst(137,18-137,25)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)


;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,39-137,40)
(or label_4

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,39-137,40)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,39-137,40)
(Prims.precedes IndInd.ctx0
IndInd.valid_typ0
@x1
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
)
(implies 
;; def=IndInd.fst(137,18-137,40); use=IndInd.fst(137,18-137,40)
(and 
;; def=IndInd.fst(137,18-137,25); use=IndInd.fst(137,18-137,25)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)


;; def=IndInd.fst(137,29-137,40); use=IndInd.fst(137,29-137,40)
(Valid 
;; def=IndInd.fst(137,29-137,40); use=IndInd.fst(137,29-137,40)
(IndInd.ctx_valid @x1)
)
)


;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,62-137,63)
(or label_5

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,62-137,63)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,62-137,63)
(Prims.precedes IndInd.valid_typ0
IndInd.valid_typ0
@x2
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
)
(implies 
;; def=IndInd.fst(137,18-137,63); use=IndInd.fst(137,18-137,63)
(and 
;; def=IndInd.fst(137,18-137,25); use=IndInd.fst(137,18-137,25)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)


;; def=IndInd.fst(137,29-137,40); use=IndInd.fst(137,29-137,40)
(Valid 
;; def=IndInd.fst(137,29-137,40); use=IndInd.fst(137,29-137,40)
(IndInd.ctx_valid @x1)
)


;; def=IndInd.fst(137,44-137,63); use=IndInd.fst(137,44-137,63)
(Valid 
;; def=IndInd.fst(137,44-137,63); use=IndInd.fst(137,44-137,63)
(IndInd.valid_typ_valid @x2
@x1)
)
)


;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,85-137,98)
(or label_6

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,85-137,98)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(137,85-137,98)
(Prims.precedes IndInd.valid_typ0
IndInd.valid_typ0
@x3
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
))
)
 
;;no pats
:qid @query.6))
)
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))

(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(134,2-139,56)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_Prod x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=Prims.fst(389,2-389,39); use=IndInd.fst(134,2-139,56)
(and 
;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
IndInd.ctx0)

;; def=IndInd.fst(133,21-138,7); use=IndInd.fst(134,8-138,7)
(= x_5253138d8e6ed0bdf00f6311c628e7f8_0
(IndInd.U @x1))


;; def=IndInd.fst(138,11-138,18); use=IndInd.fst(138,11-138,18)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)
)

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(138,32-138,33)
(or label_7

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(138,32-138,33)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(138,32-138,33)
(Prims.precedes IndInd.ctx0
IndInd.valid_typ0
@x1
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
)
 
;;no pats
:qid @query.7))

(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(134,2-139,56)
(not 
;; def=IndInd.fst(133,21-133,22); use=IndInd.fst(134,8-134,9)
(BoxBool_proj_0 (IndInd.uu___is_U x_5253138d8e6ed0bdf00f6311c628e7f8_0))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.ctx0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(134,2-139,56)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
IndInd.u_mem0)

;; def=IndInd.fst(133,21-139,11); use=IndInd.fst(134,8-139,11)
(= x_5253138d8e6ed0bdf00f6311c628e7f8_0
(IndInd.Var @x1
@x2))
)

;; def=IndInd.fst(139,8-139,37); use=IndInd.fst(139,15-139,56)
(and (implies 
;; def=IndInd.fst(139,15-139,22); use=IndInd.fst(139,15-139,22)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)


;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(139,36-139,37)
(or label_8

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(139,36-139,37)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(139,36-139,37)
(Prims.precedes IndInd.ctx0
IndInd.valid_typ0
@x1
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
)
(implies 
;; def=IndInd.fst(139,15-139,37); use=IndInd.fst(139,15-139,37)
(and 
;; def=IndInd.fst(139,15-139,22); use=IndInd.fst(139,15-139,22)
(= x_3639ca53df0585b361be9077cdb71923_1
@x1)


;; def=IndInd.fst(139,26-139,37); use=IndInd.fst(139,26-139,37)
(Valid 
;; def=IndInd.fst(139,26-139,37); use=IndInd.fst(139,26-139,37)
(IndInd.ctx_valid @x1)
)
)


;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(139,55-139,56)
(or label_9

;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(139,55-139,56)
(Valid 
;; def=IndInd.fst(134,2-139,56); use=IndInd.fst(139,55-139,56)
(Prims.precedes IndInd.u_mem0
IndInd.valid_typ0
@x2
x_5253138d8e6ed0bdf00f6311c628e7f8_0)
)
)
))
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.8))
))
))
))
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
; QUERY ID: (IndInd.ctx_valid, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, IndInd_pretyping_368fdf57f660d37d194f44c4fc7989a6, IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8, binder_x_5253138d8e6ed0bdf00f6311c628e7f8_0, disc_equation_IndInd.Bool, disc_equation_IndInd.Prod, disc_equation_IndInd.U, disc_equation_IndInd.Unit, disc_equation_IndInd.Var, equality_tok_IndInd.EmptyCtx@tok, fuel_guarded_inversion_IndInd.valid_typ0, projection_inverse_BoxBool_proj_0, subterm_ordering_IndInd.Bool, subterm_ordering_IndInd.Prod, subterm_ordering_IndInd.U, subterm_ordering_IndInd.Unit, subterm_ordering_IndInd.Var, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at IndInd.fst(142,2-144,93)

;;;;;;;;;;;;;;;;w : IndInd.u_mem0 (IndInd.u_mem0)
(declare-fun x_368fdf57f660d37d194f44c4fc7989a6_0 () Term)
;;;;;;;;;;;;;;;;binder_x_368fdf57f660d37d194f44c4fc7989a6_0
;;; Fact-ids: 
(assert (! (HasType x_368fdf57f660d37d194f44c4fc7989a6_0
IndInd.u_mem0)
:named binder_x_368fdf57f660d37d194f44c4fc7989a6_0))
;;;;;;;;;;;;;;;;g0 : IndInd.ctx0 (IndInd.ctx0)
(declare-fun x_3639ca53df0585b361be9077cdb71923_1 () Term)
;;;;;;;;;;;;;;;;binder_x_3639ca53df0585b361be9077cdb71923_1
;;; Fact-ids: 
(assert (! (HasType x_3639ca53df0585b361be9077cdb71923_1
IndInd.ctx0)
:named binder_x_3639ca53df0585b361be9077cdb71923_1))
(declare-fun Tm_refine_04169efc662528f00fa76560f04ccb8f (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,28-144,93); use=IndInd.fst(141,28-144,93)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_04169efc662528f00fa76560f04ccb8f @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_04169efc662528f00fa76560f04ccb8f @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_04169efc662528f00fa76560f04ccb8f))

:named refinement_kinding_Tm_refine_04169efc662528f00fa76560f04ccb8f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,28-144,93); use=IndInd.fst(141,28-144,93)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_04169efc662528f00fa76560f04ccb8f @x2))
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)
(Prims.precedes IndInd.u_mem0
IndInd.u_mem0
@x2
x_368fdf57f660d37d194f44c4fc7989a6_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_04169efc662528f00fa76560f04ccb8f @x2)))
:qid refinement_interpretation_Tm_refine_04169efc662528f00fa76560f04ccb8f))

:named refinement_interpretation_Tm_refine_04169efc662528f00fa76560f04ccb8f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_04169efc662528f00fa76560f04ccb8f
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,28-144,93); use=IndInd.fst(141,28-144,93)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_04169efc662528f00fa76560f04ccb8f @x0)))
(Valid (Prims.hasEq IndInd.ctx0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_04169efc662528f00fa76560f04ccb8f @x0))))
:qid haseqTm_refine_04169efc662528f00fa76560f04ccb8f))

:named haseqTm_refine_04169efc662528f00fa76560f04ccb8f))
(declare-fun IndInd.u_mem_valid (Term Term) Term)

;;;;;;;;;;;;;;;;w: u_mem0 -> g0: ctx0{w << w} -> Prims.Tot Type
(declare-fun Tm_arrow_8a96291b652e17f51d60c7fd247aaa46 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_8a96291b652e17f51d60c7fd247aaa46
Tm_type)
:named kinding_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,19-144,93); use=IndInd.fst(141,19-144,93)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_8a96291b652e17f51d60c7fd247aaa46)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))
:qid IndInd_pre_typing_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))

:named IndInd_pre_typing_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,19-144,93); use=IndInd.fst(141,19-144,93)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_8a96291b652e17f51d60c7fd247aaa46)
(and 
;; def=IndInd.fst(141,19-144,93); use=IndInd.fst(141,19-144,93)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.u_mem0)
(HasType @x2
(Tm_refine_04169efc662528f00fa76560f04ccb8f @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46.1))

(IsTotFun @x0)

;; def=IndInd.fst(141,19-144,93); use=IndInd.fst(141,19-144,93)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.u_mem0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))
:qid IndInd_interpretation_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))

:named IndInd_interpretation_Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))
(declare-fun IndInd.u_mem_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x0)
@x1)
(IndInd.u_mem_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.u_mem_valid))

:named token_correspondence_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.u_mem_valid@tok
Tm_arrow_8a96291b652e17f51d60c7fd247aaa46))

;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.u_mem_valid@tok
@x1)
@x2)
(IndInd.u_mem_valid @x1
@x2))
 

:pattern ((IndInd.u_mem_valid @x1
@x2))
:qid function_token_typing_IndInd.u_mem_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.u_mem_valid@tok))
:qid function_token_typing_IndInd.u_mem_valid))

:named function_token_typing_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.u_mem0)
(HasType @x1
(Tm_refine_04169efc662528f00fa76560f04ccb8f @x0)))
(HasType (IndInd.u_mem_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.u_mem_valid @x0
@x1))
:qid typing_IndInd.u_mem_valid))

:named typing_IndInd.u_mem_valid))
(declare-fun Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,36-144,93); use=IndInd.fst(133,36-144,93)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db))

:named refinement_kinding_Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,36-144,93); use=IndInd.fst(133,36-144,93)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x2))
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)
(Prims.precedes IndInd.valid_typ0
IndInd.u_mem0
@x2
x_368fdf57f660d37d194f44c4fc7989a6_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x2)))
:qid refinement_interpretation_Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db))

:named refinement_interpretation_Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db))
;;;;;;;;;;;;;;;;haseq for Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,36-144,93); use=IndInd.fst(133,36-144,93)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x0)))
(Valid (Prims.hasEq IndInd.ctx0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x0))))
:qid haseqTm_refine_db40b80d03a1159e3d0a53fd8fdd55db))

:named haseqTm_refine_db40b80d03a1159e3d0a53fd8fdd55db))
(declare-fun IndInd.valid_typ_valid (Term Term) Term)

;;;;;;;;;;;;;;;;a: valid_typ0 -> g0: ctx0{a << w} -> Prims.Tot Type
(declare-fun Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e
Tm_type)
:named kinding_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,23-144,93); use=IndInd.fst(133,23-144,93)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))
:qid IndInd_pre_typing_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))

:named IndInd_pre_typing_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,23-144,93); use=IndInd.fst(133,23-144,93)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e)
(and 
;; def=IndInd.fst(133,23-144,93); use=IndInd.fst(133,23-144,93)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.valid_typ0)
(HasType @x2
(Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid IndInd_interpretation_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e.1))

(IsTotFun @x0)

;; def=IndInd.fst(133,23-144,93); use=IndInd.fst(133,23-144,93)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.valid_typ0)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))
:qid IndInd_interpretation_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))

:named IndInd_interpretation_Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))
(declare-fun IndInd.valid_typ_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x0)
@x1)
(IndInd.valid_typ_valid @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x0)
@x1))
:qid token_correspondence_IndInd.valid_typ_valid))

:named token_correspondence_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.valid_typ_valid@tok
Tm_arrow_dc8fc541a1eb29f4e9622e7895454e5e))

;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT IndInd.valid_typ_valid@tok
@x1)
@x2)
(IndInd.valid_typ_valid @x1
@x2))
 

:pattern ((IndInd.valid_typ_valid @x1
@x2))
:qid function_token_typing_IndInd.valid_typ_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.valid_typ_valid@tok))
:qid function_token_typing_IndInd.valid_typ_valid))

:named function_token_typing_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.valid_typ0)
(HasType @x1
(Tm_refine_db40b80d03a1159e3d0a53fd8fdd55db @x0)))
(HasType (IndInd.valid_typ_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.valid_typ_valid @x0
@x1))
:qid typing_IndInd.valid_typ_valid))

:named typing_IndInd.valid_typ_valid))
(declare-fun Tm_refine_356e55d62072cd6bc6aec89a709b395d () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_356e55d62072cd6bc6aec89a709b395d
Tm_type)
:named refinement_kinding_Tm_refine_356e55d62072cd6bc6aec89a709b395d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-144,93); use=IndInd.fst(128,19-144,93)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_356e55d62072cd6bc6aec89a709b395d)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(142,2-144,93)
(Prims.precedes IndInd.ctx0
IndInd.u_mem0
@x1
x_368fdf57f660d37d194f44c4fc7989a6_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_356e55d62072cd6bc6aec89a709b395d))
:qid refinement_interpretation_Tm_refine_356e55d62072cd6bc6aec89a709b395d))

:named refinement_interpretation_Tm_refine_356e55d62072cd6bc6aec89a709b395d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_356e55d62072cd6bc6aec89a709b395d
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_356e55d62072cd6bc6aec89a709b395d))
(Valid (Prims.hasEq IndInd.ctx0)))
:named haseqTm_refine_356e55d62072cd6bc6aec89a709b395d))
(declare-fun IndInd.ctx_valid (Term) Term)

;;;;;;;;;;;;;;;;g0: ctx0{g0 << w} -> Prims.Tot Type
(declare-fun Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a
Tm_type)
:named kinding_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-144,93); use=IndInd.fst(128,19-144,93)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))
:qid IndInd_pre_typing_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))

:named IndInd_pre_typing_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,19-144,93); use=IndInd.fst(128,19-144,93)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a)
(and 
;; def=IndInd.fst(128,19-144,93); use=IndInd.fst(128,19-144,93)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_356e55d62072cd6bc6aec89a709b395d)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid IndInd_interpretation_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))
:qid IndInd_interpretation_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))

:named IndInd_interpretation_Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))
(declare-fun IndInd.ctx_valid@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (= (ApplyTT IndInd.ctx_valid@tok
@x0)
(IndInd.ctx_valid @x0))
 

:pattern ((ApplyTT IndInd.ctx_valid@tok
@x0))
:qid token_correspondence_IndInd.ctx_valid))

:named token_correspondence_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType IndInd.ctx_valid@tok
Tm_arrow_03e5542a77bf8f19590d347cd5f74d8a))

;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x1 Term))
 (! (= (ApplyTT IndInd.ctx_valid@tok
@x1)
(IndInd.ctx_valid @x1))
 

:pattern ((IndInd.ctx_valid @x1))
:qid function_token_typing_IndInd.ctx_valid.1))
)
 

:pattern ((ApplyTT @x0
IndInd.ctx_valid@tok))
:qid function_token_typing_IndInd.ctx_valid))

:named function_token_typing_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_356e55d62072cd6bc6aec89a709b395d)
(HasType (IndInd.ctx_valid @x0)
Tm_type))
 

:pattern ((IndInd.ctx_valid @x0))
:qid typing_IndInd.ctx_valid))

:named typing_IndInd.ctx_valid))
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Type0).
;   (forall (x: Type0). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(UHere? w) /\ ~(UNext? w) ==> Prims.l_False) /\
;   (forall (b: IndInd.ctx0). w == IndInd.UHere b ==> g0 == IndInd.ConsCtx b (IndInd.U b) ==> b << w) /\
;   (~(UHere? w) ==>
;     (forall (b: IndInd.ctx0) (b: IndInd.valid_typ0) (b: IndInd.u_mem0).
;         w == IndInd.UNext b b b ==>
;         (g0 == IndInd.ConsCtx b b ==> b << w) /\
;         (g0 == IndInd.ConsCtx b b /\ IndInd.ctx_valid b ==> b << w) /\
;         (g0 == IndInd.ConsCtx b b /\ IndInd.ctx_valid b /\ IndInd.valid_typ_valid b b ==> b << w)))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec ctx_valid and valid_typ_valid and u_mem_valid`

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
(Prims.pure_post Tm_type))

;; def=Prims.fst(402,27-402,88); use=IndInd.fst(142,2-144,93)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(142,2-144,93)
(Valid 
;; def=Prims.fst(402,84-402,87); use=IndInd.fst(142,2-144,93)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=IndInd.fst(142,2-144,93)
(and (implies 
;; def=IndInd.fst(141,17-141,18); use=IndInd.fst(142,8-142,9)
(and 
;; def=IndInd.fst(141,17-141,18); use=IndInd.fst(142,8-142,9)
(not 
;; def=IndInd.fst(141,17-141,18); use=IndInd.fst(142,8-142,9)
(BoxBool_proj_0 (IndInd.uu___is_UHere x_368fdf57f660d37d194f44c4fc7989a6_0))
)


;; def=IndInd.fst(141,17-141,18); use=IndInd.fst(142,8-142,9)
(not 
;; def=IndInd.fst(141,17-141,18); use=IndInd.fst(142,8-142,9)
(BoxBool_proj_0 (IndInd.uu___is_UNext x_368fdf57f660d37d194f44c4fc7989a6_0))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(142,2-144,93)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
IndInd.ctx0)

;; def=IndInd.fst(141,17-143,11); use=IndInd.fst(142,8-143,11)
(= x_368fdf57f660d37d194f44c4fc7989a6_0
(IndInd.UHere @x1))


;; def=IndInd.fst(143,15-143,36); use=IndInd.fst(143,15-143,36)
(= x_3639ca53df0585b361be9077cdb71923_1
(IndInd.ConsCtx @x1
(IndInd.U @x1)))
)

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(143,50-143,51)
(or label_2

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(143,50-143,51)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(143,50-143,51)
(Prims.precedes IndInd.ctx0
IndInd.u_mem0
@x1
x_368fdf57f660d37d194f44c4fc7989a6_0)
)
)
)
 
;;no pats
:qid @query.2))

(implies 
;; def=Prims.fst(389,19-389,21); use=IndInd.fst(142,2-144,93)
(not 
;; def=IndInd.fst(141,17-141,18); use=IndInd.fst(142,8-142,9)
(BoxBool_proj_0 (IndInd.uu___is_UHere x_368fdf57f660d37d194f44c4fc7989a6_0))
)


;; def=Prims.fst(413,99-413,120); use=IndInd.fst(142,2-144,93)
(forall ((@x1 Term))
 (! (implies (HasType @x1
IndInd.ctx0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(142,2-144,93)
(forall ((@x2 Term))
 (! (implies (HasType @x2
IndInd.valid_typ0)

;; def=Prims.fst(413,99-413,120); use=IndInd.fst(142,2-144,93)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
IndInd.u_mem0)

;; def=IndInd.fst(141,17-144,15); use=IndInd.fst(142,8-144,15)
(= x_368fdf57f660d37d194f44c4fc7989a6_0
(IndInd.UNext @x1
@x2
@x3))
)

;; def=IndInd.fst(144,10-144,74); use=IndInd.fst(144,19-144,93)
(and (implies 
;; def=IndInd.fst(144,19-144,36); use=IndInd.fst(144,19-144,36)
(= x_3639ca53df0585b361be9077cdb71923_1
(IndInd.ConsCtx @x1
@x2))


;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,50-144,51)
(or label_3

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,50-144,51)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,50-144,51)
(Prims.precedes IndInd.ctx0
IndInd.u_mem0
@x1
x_368fdf57f660d37d194f44c4fc7989a6_0)
)
)
)
(implies 
;; def=IndInd.fst(144,19-144,51); use=IndInd.fst(144,19-144,51)
(and 
;; def=IndInd.fst(144,19-144,36); use=IndInd.fst(144,19-144,36)
(= x_3639ca53df0585b361be9077cdb71923_1
(IndInd.ConsCtx @x1
@x2))


;; def=IndInd.fst(144,40-144,51); use=IndInd.fst(144,40-144,51)
(Valid 
;; def=IndInd.fst(144,40-144,51); use=IndInd.fst(144,40-144,51)
(IndInd.ctx_valid @x1)
)
)


;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,73-144,74)
(or label_4

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,73-144,74)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,73-144,74)
(Prims.precedes IndInd.valid_typ0
IndInd.u_mem0
@x2
x_368fdf57f660d37d194f44c4fc7989a6_0)
)
)
)
(implies 
;; def=IndInd.fst(144,19-144,74); use=IndInd.fst(144,19-144,74)
(and 
;; def=IndInd.fst(144,19-144,36); use=IndInd.fst(144,19-144,36)
(= x_3639ca53df0585b361be9077cdb71923_1
(IndInd.ConsCtx @x1
@x2))


;; def=IndInd.fst(144,40-144,51); use=IndInd.fst(144,40-144,51)
(Valid 
;; def=IndInd.fst(144,40-144,51); use=IndInd.fst(144,40-144,51)
(IndInd.ctx_valid @x1)
)


;; def=IndInd.fst(144,55-144,74); use=IndInd.fst(144,55-144,74)
(Valid 
;; def=IndInd.fst(144,55-144,74); use=IndInd.fst(144,55-144,74)
(IndInd.valid_typ_valid @x2
@x1)
)
)


;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,92-144,93)
(or label_5

;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,92-144,93)
(Valid 
;; def=IndInd.fst(142,2-144,93); use=IndInd.fst(144,92-144,93)
(Prims.precedes IndInd.u_mem0
IndInd.u_mem0
@x3
x_368fdf57f660d37d194f44c4fc7989a6_0)
)
)
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
; QUERY ID: (IndInd.ctx_valid, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, IndInd_pretyping_368fdf57f660d37d194f44c4fc7989a6, IndInd_pretyping_5253138d8e6ed0bdf00f6311c628e7f8, binder_x_368fdf57f660d37d194f44c4fc7989a6_0, disc_equation_IndInd.UHere, disc_equation_IndInd.UNext, equality_tok_IndInd.EmptyCtx@tok, fuel_guarded_inversion_IndInd.u_mem0, projection_inverse_BoxBool_proj_0, subterm_ordering_IndInd.UHere, subterm_ordering_IndInd.UNext, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec ctx_valid and valid_typ_valid and u_mem_valid


; <Start encoding let rec ctx_valid and valid_typ_valid and u_mem_valid>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.u_mem_valid.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.u_mem_valid.fuel_instrumented_token () Term)
;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.valid_typ_valid.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.valid_typ_valid.fuel_instrumented_token () Term)
;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun IndInd.ctx_valid.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun IndInd.ctx_valid.fuel_instrumented_token () Term)
(declare-fun IndInd.ctx_valid (Term) Term)
(declare-fun IndInd.ctx_valid@tok () Term)
(declare-fun IndInd.valid_typ_valid (Term Term) Term)
(declare-fun IndInd.valid_typ_valid@tok () Term)
(declare-fun IndInd.u_mem_valid (Term Term) Term)
(declare-fun IndInd.u_mem_valid@tok () Term)
;;;;;;;;;;;;;;;;g0: ctx0 -> Prims.Tot Type
(declare-fun Tm_arrow_b46cd13007f20cacb34352430da21d09 () Term)
;;;;;;;;;;;;;;;;a: valid_typ0 -> g0: ctx0 -> Prims.Tot Type
(declare-fun Tm_arrow_715981c6d41880f8cf735c90ad053a60 () Term)
;;;;;;;;;;;;;;;;w: u_mem0 -> g0: ctx0 -> Prims.Tot Type
(declare-fun Tm_arrow_9b89ce6301d2cecd51df3560f79fcd18 () Term)

; </end encoding let rec ctx_valid and valid_typ_valid and u_mem_valid>


; encoding sigelt let ctx


; <Start encoding let ctx>

(declare-fun IndInd.ctx () Term)
(declare-fun Tm_refine_cea2cf9ef71fd9572287f1a8558eafde () Term)

; </end encoding let ctx>


; encoding sigelt let valid_typ


; <Start encoding let valid_typ>

(declare-fun IndInd.valid_typ (Term) Term)
;;;;;;;;;;;;;;;;g: ctx -> Type
(declare-fun Tm_arrow_cb08fa66dfbd42c4fbed5ddfc349bd6f () Term)
(declare-fun IndInd.valid_typ@tok () Term)
(declare-fun Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 (Term) Term)

; </end encoding let valid_typ>


; encoding sigelt let u_mem


; <Start encoding let u_mem>

(declare-fun IndInd.u_mem (Term) Term)

(declare-fun IndInd.u_mem@tok () Term)
(declare-fun Tm_refine_b5f4c9509474ff28bab09392205f654a (Term) Term)

; </end encoding let u_mem>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx0)
(HasType (IndInd.ctx_valid @x0)
Tm_type))
 

:pattern ((IndInd.ctx_valid @x0))
:qid typing_IndInd.ctx_valid))

:named typing_IndInd.ctx_valid))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.valid_typ0)
(HasType @x2
IndInd.ctx0))
(HasType (IndInd.valid_typ_valid.fuel_instrumented @u0
@x1
@x2)
Tm_type))
 

:pattern ((IndInd.valid_typ_valid.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_IndInd.valid_typ_valid.fuel_instrumented))

:named token_correspondence_IndInd.valid_typ_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.u_mem0)
(HasType @x2
IndInd.ctx0))
(HasType (IndInd.u_mem_valid.fuel_instrumented @u0
@x1
@x2)
Tm_type))
 

:pattern ((IndInd.u_mem_valid.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_IndInd.u_mem_valid.fuel_instrumented))

:named token_correspondence_IndInd.u_mem_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
IndInd.ctx0)
(HasType (IndInd.ctx_valid.fuel_instrumented @u0
@x1)
Tm_type))
 

:pattern ((IndInd.ctx_valid.fuel_instrumented @u0
@x1))
:qid token_correspondence_IndInd.ctx_valid.fuel_instrumented))

:named token_correspondence_IndInd.ctx_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.ctx; Namespace IndInd
(assert (! (HasType Tm_refine_cea2cf9ef71fd9572287f1a8558eafde
Tm_type)
:named refinement_kinding_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.ctx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(148,10-148,29); use=IndInd.fst(148,10-148,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_cea2cf9ef71fd9572287f1a8558eafde)
(and (HasTypeFuel @u0
@x1
IndInd.ctx0)

;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(148,17-148,28)
(Valid 
;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(148,17-148,28)
(IndInd.ctx_valid @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_cea2cf9ef71fd9572287f1a8558eafde))
:qid refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde))

:named refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cea2cf9ef71fd9572287f1a8558eafde
;;; Fact-ids: Name IndInd.ctx; Namespace IndInd
(assert (! (iff (Valid (Prims.hasEq Tm_refine_cea2cf9ef71fd9572287f1a8558eafde))
(Valid (Prims.hasEq IndInd.ctx0)))
:named haseqTm_refine_cea2cf9ef71fd9572287f1a8558eafde))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: IndInd.valid_typ_valid
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.valid_typ0)
(HasType @x2
IndInd.ctx0))
(= (IndInd.valid_typ_valid.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-IndInd.Unit @lb3)
(Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.Unit_g @lb3))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.Unit_g @lb3)))
(ite (is-IndInd.Bool @lb3)
(Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.Bool_g @lb3))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.Bool_g @lb3)))
(ite (is-IndInd.Prod @lb3)
(Prims.l_and (Prims.l_and (Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.Prod_g @lb3))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.Prod_g @lb3)))
(IndInd.valid_typ_valid.fuel_instrumented @u0
(IndInd.Prod_a @lb3)
(IndInd.Prod_g @lb3)))
(IndInd.valid_typ_valid.fuel_instrumented @u0
(IndInd.Prod_b @lb3)
(IndInd.ConsCtx (IndInd.Prod_g @lb3)
(IndInd.Prod_a @lb3))))
(ite (is-IndInd.U @lb3)
(Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.U_g @lb3))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.U_g @lb3)))
(ite (is-IndInd.Var @lb3)
(Prims.l_and (Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.Var_g @lb3))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.Var_g @lb3)))
(IndInd.u_mem_valid.fuel_instrumented @u0
(IndInd.Var__1 @lb3)
(IndInd.Var_g @lb3)))
Tm_unit))))))))
 :weight 0


:pattern ((IndInd.valid_typ_valid.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented))

:named equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: IndInd.u_mem_valid
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
IndInd.u_mem0)
(HasType @x2
IndInd.ctx0))
(= (IndInd.u_mem_valid.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-IndInd.UHere @lb3)
(Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.ConsCtx (IndInd.UHere_g @lb3)
(IndInd.U (IndInd.UHere_g @lb3))))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.UHere_g @lb3)))
(ite (is-IndInd.UNext @lb3)
(Prims.l_and (Prims.l_and (Prims.l_and (Prims.eq2 IndInd.ctx0
@x2
(IndInd.ConsCtx (IndInd.UNext_g @lb3)
(IndInd.UNext_a @lb3)))
(IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.UNext_g @lb3)))
(IndInd.valid_typ_valid.fuel_instrumented @u0
(IndInd.UNext_a @lb3)
(IndInd.UNext_g @lb3)))
(IndInd.u_mem_valid.fuel_instrumented @u0
(IndInd.UNext__2 @lb3)
(IndInd.UNext_g @lb3)))
Tm_unit)))))
 :weight 0


:pattern ((IndInd.u_mem_valid.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_IndInd.u_mem_valid.fuel_instrumented))

:named equation_with_fuel_IndInd.u_mem_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: IndInd.ctx_valid
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
IndInd.ctx0)
(= (IndInd.ctx_valid.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-IndInd.EmptyCtx @lb2)
Prims.l_True
(ite (is-IndInd.ConsCtx @lb2)
(Prims.l_and (IndInd.ctx_valid.fuel_instrumented @u0
(IndInd.ConsCtx_g @lb2))
(IndInd.valid_typ_valid.fuel_instrumented @u0
(IndInd.ConsCtx_a @lb2)
(IndInd.ConsCtx_g @lb2)))
Tm_unit)))))
 :weight 0


:pattern ((IndInd.ctx_valid.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_IndInd.ctx_valid.fuel_instrumented))

:named equation_with_fuel_IndInd.ctx_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (IndInd.valid_typ_valid.fuel_instrumented (SFuel @u0)
@x1
@x2)
(IndInd.valid_typ_valid.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((IndInd.valid_typ_valid.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_IndInd.valid_typ_valid.fuel_instrumented))

:named @fuel_irrelevance_IndInd.valid_typ_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (IndInd.u_mem_valid.fuel_instrumented (SFuel @u0)
@x1
@x2)
(IndInd.u_mem_valid.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((IndInd.u_mem_valid.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_IndInd.u_mem_valid.fuel_instrumented))

:named @fuel_irrelevance_IndInd.u_mem_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (IndInd.ctx_valid.fuel_instrumented (SFuel @u0)
@x1)
(IndInd.ctx_valid.fuel_instrumented ZFuel
@x1))
 

:pattern ((IndInd.ctx_valid.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented))

:named @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(128,8-128,17); use=IndInd.fst(128,8-128,17)
(forall ((@x0 Term))
 (! (= (IndInd.ctx_valid @x0)
(IndInd.ctx_valid.fuel_instrumented MaxFuel
@x0))
 

:pattern ((IndInd.ctx_valid @x0))
:qid @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented))

:named @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented))
(push) ;; push{2

; Starting query at IndInd.fst(154,0-154,30)

(declare-fun label_1 () Bool)

; Encoding query formula : Prims.auto_squash (IndInd.ctx_valid IndInd.EmptyCtx)


; Context: While encoding a query
; While checking for top-level effects
; While typechecking the top-level declaration `let empty_ctx`

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
;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(154,22-154,30)
(or label_1

;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(154,22-154,30)
(Valid 
;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(154,22-154,30)
(IndInd.ctx_valid IndInd.EmptyCtx@tok)
)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (IndInd.empty_ctx, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @query, constructor_distinct_IndInd.EmptyCtx, equality_tok_IndInd.EmptyCtx@tok, equation_with_fuel_IndInd.ctx_valid.fuel_instrumented, true_interp, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let empty_ctx


; <Start encoding let empty_ctx>

(declare-fun IndInd.empty_ctx (Dummy_sort) Term)

; </end encoding let empty_ctx>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.valid_typ0)
(HasType @x1
IndInd.ctx0))
(HasType (IndInd.valid_typ_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.valid_typ_valid @x0
@x1))
:qid typing_IndInd.valid_typ_valid))

:named typing_IndInd.valid_typ_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.valid_typ; Namespace IndInd
(assert (! 
;; def=IndInd.fst(149,4-149,13); use=IndInd.fst(149,4-149,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx)
(HasType (IndInd.valid_typ @x0)
Tm_type))
 

:pattern ((IndInd.valid_typ @x0))
:qid typing_IndInd.valid_typ))

:named typing_IndInd.valid_typ))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.ctx; Namespace IndInd
(assert (! (HasType IndInd.ctx
Tm_type)
:named typing_IndInd.ctx))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.valid_typ; Namespace IndInd
(assert (! 
;; def=IndInd.fst(149,24-149,57); use=IndInd.fst(149,24-149,57)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130))

:named refinement_kinding_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.valid_typ; Namespace IndInd
(assert (! 
;; def=IndInd.fst(149,24-149,57); use=IndInd.fst(149,24-149,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x2))
(and (HasTypeFuel @u0
@x1
IndInd.valid_typ0)

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(149,37-149,56)
(Valid 
;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(149,37-149,56)
(IndInd.valid_typ_valid @x1
@x2)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x2)))
:qid refinement_interpretation_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130))

:named refinement_interpretation_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130
;;; Fact-ids: Name IndInd.valid_typ; Namespace IndInd
(assert (! 
;; def=IndInd.fst(149,24-149,57); use=IndInd.fst(149,24-149,57)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x0)))
(Valid (Prims.hasEq IndInd.valid_typ0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x0))))
:qid haseqTm_refine_2fb03f6d79dc3d816e2c02d4f325a130))

:named haseqTm_refine_2fb03f6d79dc3d816e2c02d4f325a130))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name IndInd.ctx; Namespace IndInd
(assert (! (HasType IndInd.ctx
Tm_type)
:named function_token_typing_IndInd.ctx))
;;;;;;;;;;;;;;;;Equation for IndInd.valid_typ
;;; Fact-ids: Name IndInd.valid_typ; Namespace IndInd
(assert (! 
;; def=IndInd.fst(149,4-149,13); use=IndInd.fst(149,4-149,13)
(forall ((@x0 Term))
 (! (= (IndInd.valid_typ @x0)
(Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130 @x0))
 

:pattern ((IndInd.valid_typ @x0))
:qid equation_IndInd.valid_typ))

:named equation_IndInd.valid_typ))
;;;;;;;;;;;;;;;;Equation for IndInd.ctx
;;; Fact-ids: Name IndInd.ctx; Namespace IndInd
(assert (! (= IndInd.ctx
Tm_refine_cea2cf9ef71fd9572287f1a8558eafde)
:named equation_IndInd.ctx))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(133,4-133,19); use=IndInd.fst(133,4-133,19)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.valid_typ_valid @x0
@x1)
(IndInd.valid_typ_valid.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((IndInd.valid_typ_valid @x0
@x1))
:qid @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented))

:named @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented))
(push) ;; push{2

; Starting query at IndInd.fst(155,45-155,56)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx) (a: IndInd.valid_typ g).
;   (*  - Could not prove post-condition
; *) Prims.auto_squash (IndInd.ctx_valid (IndInd.ConsCtx g a))


; Context: While encoding a query
; While typechecking the top-level declaration `let cons_ctx`

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
IndInd.ctx)
(HasType @x1
(IndInd.valid_typ @x0)))

;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(155,45-155,56)
(or label_1

;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(155,45-155,56)
(Valid 
;; def=IndInd.fst(148,17-148,28); use=IndInd.fst(155,45-155,56)
(IndInd.ctx_valid (IndInd.ConsCtx @x0
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
; QUERY ID: (IndInd.cons_ctx, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @fuel_irrelevance_IndInd.valid_typ_valid.fuel_instrumented, @query, constructor_distinct_IndInd.ConsCtx, data_typing_intro_IndInd.ConsCtx@tok, equation_IndInd.ctx, equation_IndInd.valid_typ, equation_with_fuel_IndInd.ctx_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.ConsCtx_a, projection_inverse_IndInd.ConsCtx_g, refinement_interpretation_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let cons_ctx


; <Start encoding let cons_ctx>

(declare-fun IndInd.cons_ctx (Term Term) Term)
;;;;;;;;;;;;;;;;g: ctx -> a: valid_typ g -> ctx
(declare-fun Tm_arrow_4362e308962f62da26d7db63ff8613ec () Term)
(declare-fun IndInd.cons_ctx@tok () Term)

; </end encoding let cons_ctx>

(push) ;; push{2

; Starting query at IndInd.fst(157,33-157,39)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (IndInd.valid_typ_valid (IndInd.Unit g) g)


; Context: While encoding a query
; While typechecking the top-level declaration `let unit`

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
IndInd.ctx)

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(157,33-157,39)
(or label_1

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(157,33-157,39)
(Valid 
;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(157,33-157,39)
(IndInd.valid_typ_valid (IndInd.Unit @x0)
@x0)
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
; QUERY ID: (IndInd.unit, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.Unit, data_typing_intro_IndInd.Unit@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.ctx, equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.Unit_g, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let unit


; <Start encoding let unit>

(declare-fun IndInd.unit (Term) Term)
;;;;;;;;;;;;;;;;g: ctx -> valid_typ g
(declare-fun Tm_arrow_ac0cd1f7c623dd4fd86b1b1228e46ad8 () Term)
(declare-fun IndInd.unit@tok () Term)

; </end encoding let unit>

(push) ;; push{2

; Starting query at IndInd.fst(158,33-158,39)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (IndInd.valid_typ_valid (IndInd.Bool g) g)


; Context: While encoding a query
; While typechecking the top-level declaration `let bool`

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
IndInd.ctx)

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(158,33-158,39)
(or label_1

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(158,33-158,39)
(Valid 
;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(158,33-158,39)
(IndInd.valid_typ_valid (IndInd.Bool @x0)
@x0)
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
; QUERY ID: (IndInd.bool, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.Bool, data_typing_intro_IndInd.Bool@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.ctx, equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.Bool_g, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let bool


; <Start encoding let bool>

(declare-fun IndInd.bool (Term) Term)

(declare-fun IndInd.bool@tok () Term)

; </end encoding let bool>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.cons_ctx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(155,4-155,12); use=IndInd.fst(155,4-155,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.ctx)
(HasType @x1
(IndInd.valid_typ @x0)))
(HasType (IndInd.cons_ctx @x0
@x1)
IndInd.ctx))
 

:pattern ((IndInd.cons_ctx @x0
@x1))
:qid typing_IndInd.cons_ctx))

:named typing_IndInd.cons_ctx))
;;;;;;;;;;;;;;;;Equation for IndInd.cons_ctx
;;; Fact-ids: Name IndInd.cons_ctx; Namespace IndInd
(assert (! 
;; def=IndInd.fst(155,4-155,12); use=IndInd.fst(155,4-155,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.cons_ctx @x0
@x1)
(IndInd.ConsCtx @x0
@x1))
 

:pattern ((IndInd.cons_ctx @x0
@x1))
:qid equation_IndInd.cons_ctx))

:named equation_IndInd.cons_ctx))
(push) ;; push{2

; Starting query at IndInd.fst(159,78-159,88)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx) (a: IndInd.valid_typ g) (b: IndInd.valid_typ (IndInd.cons_ctx g a)).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (IndInd.valid_typ_valid (IndInd.Prod g a b) g)


; Context: While encoding a query
; While typechecking the top-level declaration `let prod`

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
IndInd.ctx)
(HasType @x1
(IndInd.valid_typ @x0))
(HasType @x2
(IndInd.valid_typ (IndInd.cons_ctx @x0
@x1))))

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(159,78-159,88)
(or label_1

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(159,78-159,88)
(Valid 
;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(159,78-159,88)
(IndInd.valid_typ_valid (IndInd.Prod @x0
@x1
@x2)
@x0)
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
; QUERY ID: (IndInd.prod, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @fuel_irrelevance_IndInd.valid_typ_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.Prod, data_typing_intro_IndInd.Prod@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.cons_ctx, equation_IndInd.ctx, equation_IndInd.valid_typ, equation_with_fuel_IndInd.ctx_valid.fuel_instrumented, equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.Prod_a, projection_inverse_IndInd.Prod_b, projection_inverse_IndInd.Prod_g, refinement_interpretation_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let prod


; <Start encoding let prod>

(declare-fun IndInd.prod (Term Term Term) Term)
;;;;;;;;;;;;;;;;g: ctx -> a: valid_typ g -> b: valid_typ (cons_ctx g a) -> valid_typ g
(declare-fun Tm_arrow_12ddc79888a3d44be45eb1bd13197bee () Term)
(declare-fun IndInd.prod@tok () Term)

; </end encoding let prod>

(push) ;; push{2

; Starting query at IndInd.fst(160,30-160,33)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx).
;   (*  - Could not prove post-condition
; *) Prims.auto_squash (IndInd.valid_typ_valid (IndInd.U g) g)


; Context: While encoding a query
; While typechecking the top-level declaration `let u`

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
IndInd.ctx)

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(160,30-160,33)
(or label_1

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(160,30-160,33)
(Valid 
;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(160,30-160,33)
(IndInd.valid_typ_valid (IndInd.U @x0)
@x0)
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
; QUERY ID: (IndInd.u, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.U, data_typing_intro_IndInd.U@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.ctx, equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.U_g, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let u


; <Start encoding let u>

(declare-fun IndInd.u (Term) Term)

(declare-fun IndInd.u@tok () Term)

; </end encoding let u>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
IndInd.u_mem0)
(HasType @x1
IndInd.ctx0))
(HasType (IndInd.u_mem_valid @x0
@x1)
Tm_type))
 

:pattern ((IndInd.u_mem_valid @x0
@x1))
:qid typing_IndInd.u_mem_valid))

:named typing_IndInd.u_mem_valid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.u_mem; Namespace IndInd
(assert (! 
;; def=IndInd.fst(150,4-150,9); use=IndInd.fst(150,4-150,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx)
(HasType (IndInd.u_mem @x0)
Tm_type))
 

:pattern ((IndInd.u_mem @x0))
:qid typing_IndInd.u_mem))

:named typing_IndInd.u_mem))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name IndInd.u_mem; Namespace IndInd
(assert (! 
;; def=IndInd.fst(150,20-150,45); use=IndInd.fst(150,20-150,45)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_b5f4c9509474ff28bab09392205f654a @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_b5f4c9509474ff28bab09392205f654a @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_b5f4c9509474ff28bab09392205f654a))

:named refinement_kinding_Tm_refine_b5f4c9509474ff28bab09392205f654a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name IndInd.u_mem; Namespace IndInd
(assert (! 
;; def=IndInd.fst(150,20-150,45); use=IndInd.fst(150,20-150,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b5f4c9509474ff28bab09392205f654a @x2))
(and (HasTypeFuel @u0
@x1
IndInd.u_mem0)

;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(150,29-150,44)
(Valid 
;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(150,29-150,44)
(IndInd.u_mem_valid @x1
@x2)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b5f4c9509474ff28bab09392205f654a @x2)))
:qid refinement_interpretation_Tm_refine_b5f4c9509474ff28bab09392205f654a))

:named refinement_interpretation_Tm_refine_b5f4c9509474ff28bab09392205f654a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b5f4c9509474ff28bab09392205f654a
;;; Fact-ids: Name IndInd.u_mem; Namespace IndInd
(assert (! 
;; def=IndInd.fst(150,20-150,45); use=IndInd.fst(150,20-150,45)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b5f4c9509474ff28bab09392205f654a @x0)))
(Valid (Prims.hasEq IndInd.u_mem0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b5f4c9509474ff28bab09392205f654a @x0))))
:qid haseqTm_refine_b5f4c9509474ff28bab09392205f654a))

:named haseqTm_refine_b5f4c9509474ff28bab09392205f654a))
;;;;;;;;;;;;;;;;Equation for IndInd.u_mem
;;; Fact-ids: Name IndInd.u_mem; Namespace IndInd
(assert (! 
;; def=IndInd.fst(150,4-150,9); use=IndInd.fst(150,4-150,9)
(forall ((@x0 Term))
 (! (= (IndInd.u_mem @x0)
(Tm_refine_b5f4c9509474ff28bab09392205f654a @x0))
 

:pattern ((IndInd.u_mem @x0))
:qid equation_IndInd.u_mem))

:named equation_IndInd.u_mem))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name IndInd.ctx_valid; Namespace IndInd; Name IndInd.valid_typ_valid; Namespace IndInd; Name IndInd.u_mem_valid; Namespace IndInd
(assert (! 
;; def=IndInd.fst(141,4-141,15); use=IndInd.fst(141,4-141,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (IndInd.u_mem_valid @x0
@x1)
(IndInd.u_mem_valid.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((IndInd.u_mem_valid @x0
@x1))
:qid @fuel_correspondence_IndInd.u_mem_valid.fuel_instrumented))

:named @fuel_correspondence_IndInd.u_mem_valid.fuel_instrumented))
(push) ;; push{2

; Starting query at IndInd.fst(161,44-161,51)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx) (w: IndInd.u_mem g).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (IndInd.valid_typ_valid (IndInd.Var g w) g)


; Context: While encoding a query
; While typechecking the top-level declaration `let var`

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
IndInd.ctx)
(HasType @x1
(IndInd.u_mem @x0)))

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(161,44-161,51)
(or label_1

;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(161,44-161,51)
(Valid 
;; def=IndInd.fst(149,37-149,56); use=IndInd.fst(161,44-161,51)
(IndInd.valid_typ_valid (IndInd.Var @x0
@x1)
@x0)
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
; QUERY ID: (IndInd.var, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.u_mem_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @fuel_irrelevance_IndInd.u_mem_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.Var, data_typing_intro_IndInd.Var@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.ctx, equation_IndInd.u_mem, equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.Var__1, projection_inverse_IndInd.Var_g, refinement_interpretation_Tm_refine_b5f4c9509474ff28bab09392205f654a, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let var


; <Start encoding let var>

(declare-fun IndInd.var (Term Term) Term)
;;;;;;;;;;;;;;;;g: ctx -> w: u_mem g -> valid_typ g
(declare-fun Tm_arrow_6c035d3ee2a16322816293d07d25738b () Term)
(declare-fun IndInd.var@tok () Term)

; </end encoding let var>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name IndInd.u; Namespace IndInd
(assert (! 
;; def=IndInd.fst(160,4-160,5); use=IndInd.fst(160,4-160,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
IndInd.ctx)
(HasType (IndInd.u @x0)
(IndInd.valid_typ @x0)))
 

:pattern ((IndInd.u @x0))
:qid typing_IndInd.u))

:named typing_IndInd.u))
;;;;;;;;;;;;;;;;Equation for IndInd.u
;;; Fact-ids: Name IndInd.u; Namespace IndInd
(assert (! 
;; def=IndInd.fst(160,4-160,5); use=IndInd.fst(160,4-160,5)
(forall ((@x0 Term))
 (! (= (IndInd.u @x0)
(IndInd.U @x0))
 

:pattern ((IndInd.u @x0))
:qid equation_IndInd.u))

:named equation_IndInd.u))
(push) ;; push{2

; Starting query at IndInd.fst(163,48-163,55)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (IndInd.u_mem_valid (IndInd.UHere g) (IndInd.cons_ctx g (IndInd.u g)))


; Context: While encoding a query
; While typechecking the top-level declaration `let u_here`

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
IndInd.ctx)

;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(163,48-163,55)
(or label_1

;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(163,48-163,55)
(Valid 
;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(163,48-163,55)
(IndInd.u_mem_valid (IndInd.UHere @x0)
(IndInd.cons_ctx @x0
(IndInd.u @x0)))
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
; QUERY ID: (IndInd.u_here, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.u_mem_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.UHere, data_typing_intro_IndInd.UHere@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.cons_ctx, equation_IndInd.ctx, equation_IndInd.u, equation_with_fuel_IndInd.u_mem_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.UHere_g, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_IndInd.cons_ctx, typing_IndInd.u, typing_tok_IndInd.EmptyCtx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let u_here


; <Start encoding let u_here>

(declare-fun IndInd.u_here (Term) Term)
;;;;;;;;;;;;;;;;g: ctx -> u_mem (cons_ctx g (u g))
(declare-fun Tm_arrow_41bab6f7bc3ab6df12754a4649ed09a4 () Term)
(declare-fun IndInd.u_here@tok () Term)

; </end encoding let u_here>

(push) ;; push{2

; Starting query at IndInd.fst(164,72-164,83)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: IndInd.ctx) (a: IndInd.valid_typ g) (w: IndInd.u_mem g).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (IndInd.u_mem_valid (IndInd.UNext g a w) (IndInd.cons_ctx g a))


; Context: While encoding a query
; While typechecking the top-level declaration `let u_next`

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
IndInd.ctx)
(HasType @x1
(IndInd.valid_typ @x0))
(HasType @x2
(IndInd.u_mem @x0)))

;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(164,72-164,83)
(or label_1

;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(164,72-164,83)
(Valid 
;; def=IndInd.fst(150,29-150,44); use=IndInd.fst(164,72-164,83)
(IndInd.u_mem_valid (IndInd.UNext @x0
@x1
@x2)
(IndInd.cons_ctx @x0
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
; QUERY ID: (IndInd.u_next, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_IndInd.ctx_valid.fuel_instrumented, @fuel_correspondence_IndInd.u_mem_valid.fuel_instrumented, @fuel_correspondence_IndInd.valid_typ_valid.fuel_instrumented, @fuel_irrelevance_IndInd.ctx_valid.fuel_instrumented, @fuel_irrelevance_IndInd.u_mem_valid.fuel_instrumented, @fuel_irrelevance_IndInd.valid_typ_valid.fuel_instrumented, @query, IndInd_pretyping_3639ca53df0585b361be9077cdb71923, constructor_distinct_IndInd.UNext, data_typing_intro_IndInd.UNext@tok, eq2-interp, equality_tok_IndInd.EmptyCtx@tok, equation_IndInd.cons_ctx, equation_IndInd.ctx, equation_IndInd.u_mem, equation_IndInd.valid_typ, equation_with_fuel_IndInd.ctx_valid.fuel_instrumented, equation_with_fuel_IndInd.u_mem_valid.fuel_instrumented, equation_with_fuel_IndInd.valid_typ_valid.fuel_instrumented, l_and-interp, projection_inverse_IndInd.UNext__2, projection_inverse_IndInd.UNext_a, projection_inverse_IndInd.UNext_g, refinement_interpretation_Tm_refine_2fb03f6d79dc3d816e2c02d4f325a130, refinement_interpretation_Tm_refine_b5f4c9509474ff28bab09392205f654a, refinement_interpretation_Tm_refine_cea2cf9ef71fd9572287f1a8558eafde, typing_IndInd.cons_ctx, typing_tok_IndInd.EmptyCtx@tok
