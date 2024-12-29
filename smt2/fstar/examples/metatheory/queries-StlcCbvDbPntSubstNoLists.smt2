
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

; Internals for StlcCbvDbPntSubstNoLists

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type StlcCbvDbPntSubstNoLists.ty


; <Start encoding type StlcCbvDbPntSubstNoLists.ty>

;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.ty () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.TArrow (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TArrow_t1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TArrow_t2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.TArrow
(declare-fun StlcCbvDbPntSubstNoLists.TArrow@tok () Term)
;;;;;;;;;;;;;;;;t1: ty -> t2: ty -> ty
(declare-fun Tm_arrow_6af0ef2c15d37e554407f561fba44c29 () Term)

; <start constructor StlcCbvDbPntSubstNoLists.ty>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.ty ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
114)
(= __@x0
StlcCbvDbPntSubstNoLists.ty)))

; </end constructor StlcCbvDbPntSubstNoLists.ty>


; <start constructor StlcCbvDbPntSubstNoLists.TArrow>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.TArrow ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
120)
(= __@x0
(StlcCbvDbPntSubstNoLists.TArrow (StlcCbvDbPntSubstNoLists.TArrow_t1 __@x0)
(StlcCbvDbPntSubstNoLists.TArrow_t2 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.TArrow>


; </end encoding type StlcCbvDbPntSubstNoLists.ty>

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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.TArrow))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.TArrow))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TArrow_t2 (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TArrow_t1 (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1))
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.ty
Tm_type)
:named kinding_StlcCbvDbPntSubstNoLists.ty@tok))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(19,5-19,7); use=StlcCbvDbPntSubstNoLists.fst(19,5-19,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(is-StlcCbvDbPntSubstNoLists.TArrow @x1))
 

:pattern ((HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty))
:qid fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty))

:named fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.TArrow@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.TArrow@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid data_elim_StlcCbvDbPntSubstNoLists.TArrow))

:named data_elim_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= 114
(Term_constr_id StlcCbvDbPntSubstNoLists.ty))
:named constructor_distinct_StlcCbvDbPntSubstNoLists.ty))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 120
(Term_constr_id (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.TArrow))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(19,5-19,7); use=StlcCbvDbPntSubstNoLists.fst(19,5-19,7)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.ty)
(= StlcCbvDbPntSubstNoLists.ty
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.ty))
:qid StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606))

:named StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606))
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
(push) ;; push{4

; Starting query at StlcCbvDbPntSubstNoLists.fst(19,0-20,33)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq StlcCbvDbPntSubstNoLists.ty ==>
; (forall (t1: StlcCbvDbPntSubstNoLists.ty) (t2: StlcCbvDbPntSubstNoLists.ty).
;     Prims.hasEq StlcCbvDbPntSubstNoLists.ty /\ Prims.hasEq StlcCbvDbPntSubstNoLists.ty)


; Context: While encoding a query
; While typechecking the top-level declaration `type StlcCbvDbPntSubstNoLists.ty`

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
;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(Prims.hasEq StlcCbvDbPntSubstNoLists.ty)
)


;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.ty)
(HasType @x1
StlcCbvDbPntSubstNoLists.ty))

;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(20,16-20,18)
(or label_1

;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(Prims.hasEq StlcCbvDbPntSubstNoLists.ty)
)
)


;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(20,25-20,27)
(or label_2

;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(19,0-20,33); use=StlcCbvDbPntSubstNoLists.fst(19,0-20,33)
(Prims.hasEq StlcCbvDbPntSubstNoLists.ty)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.ty, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type StlcCbvDbPntSubstNoLists.ty


; <Start encoding type StlcCbvDbPntSubstNoLists.ty>

;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.ty () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.TArrow (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TArrow_t1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TArrow_t2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.TArrow
(declare-fun StlcCbvDbPntSubstNoLists.TArrow@tok () Term)
;;;;;;;;;;;;;;;;t1: ty -> t2: ty -> ty
(declare-fun Tm_arrow_6af0ef2c15d37e554407f561fba44c29 () Term)

; <start constructor StlcCbvDbPntSubstNoLists.ty>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.ty ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
124)
(= __@x0
StlcCbvDbPntSubstNoLists.ty)))

; </end constructor StlcCbvDbPntSubstNoLists.ty>


; <start constructor StlcCbvDbPntSubstNoLists.TArrow>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.TArrow ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
130)
(= __@x0
(StlcCbvDbPntSubstNoLists.TArrow (StlcCbvDbPntSubstNoLists.TArrow_t1 __@x0)
(StlcCbvDbPntSubstNoLists.TArrow_t2 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.TArrow>


; </end encoding type StlcCbvDbPntSubstNoLists.ty>


; encoding sigelt assume StlcCbvDbPntSubstNoLists.ty__uu___haseq


; <Start encoding assume StlcCbvDbPntSubstNoLists.ty__uu___haseq>


; </end encoding assume StlcCbvDbPntSubstNoLists.ty__uu___haseq>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_TArrow


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_TArrow>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TArrow (Term) Term)
;;;;;;;;;;;;;;;;projectee: ty -> Prims.bool
(declare-fun Tm_arrow_7feef711807edeb4c556d27e7cf296a6 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TArrow@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_TArrow>


; encoding sigelt let uu___is_TArrow


; <Skipped let uu___is_TArrow/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t1


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t1>

(declare-fun StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t1 (Term) Term)
;;;;;;;;;;;;;;;;projectee: ty -> ty
(declare-fun Tm_arrow_892fc657ee7b18bdf9b92775609bfa67 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t1@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t1>


; encoding sigelt let __proj__TArrow__item__t1


; <Skipped let __proj__TArrow__item__t1/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t2


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t2>

(declare-fun StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t2 (Term) Term)

(declare-fun StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t2@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TArrow__item__t2>


; encoding sigelt let __proj__TArrow__item__t2


; <Skipped let __proj__TArrow__item__t2/>


; encoding sigelt let var


; <Start encoding let var>

(declare-fun StlcCbvDbPntSubstNoLists.var () Term)

; </end encoding let var>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type StlcCbvDbPntSubstNoLists.exp


; <Start encoding type StlcCbvDbPntSubstNoLists.exp>

;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.exp () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.EVar (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EVar__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.EVar
(declare-fun StlcCbvDbPntSubstNoLists.EVar@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.EApp (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EApp__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EApp__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.EApp
(declare-fun StlcCbvDbPntSubstNoLists.EApp@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.EAbs (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EAbs__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EAbs__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.EAbs
(declare-fun StlcCbvDbPntSubstNoLists.EAbs@tok () Term)
;;;;;;;;;;;;;;;;_0: var -> exp
(declare-fun Tm_arrow_7982f3d073bb721f6186cbab0378c1b5 () Term)
;;;;;;;;;;;;;;;;_0: exp -> _1: exp -> exp
(declare-fun Tm_arrow_c749c5ed5a35a33307a5531a7fb1bee0 () Term)
;;;;;;;;;;;;;;;;_0: ty -> _1: exp -> exp
(declare-fun Tm_arrow_04ae04061be8a834fa89b76dd613c2cd () Term)

; <start constructor StlcCbvDbPntSubstNoLists.exp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.exp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
160)
(= __@x0
StlcCbvDbPntSubstNoLists.exp)))

; </end constructor StlcCbvDbPntSubstNoLists.exp>


; <start constructor StlcCbvDbPntSubstNoLists.EVar>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.EVar ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
166)
(= __@x0
(StlcCbvDbPntSubstNoLists.EVar (StlcCbvDbPntSubstNoLists.EVar__0 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.EVar>


; <start constructor StlcCbvDbPntSubstNoLists.EApp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.EApp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
171)
(= __@x0
(StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.EApp__0 __@x0)
(StlcCbvDbPntSubstNoLists.EApp__1 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.EApp>


; <start constructor StlcCbvDbPntSubstNoLists.EAbs>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.EAbs ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
176)
(= __@x0
(StlcCbvDbPntSubstNoLists.EAbs (StlcCbvDbPntSubstNoLists.EAbs__0 __@x0)
(StlcCbvDbPntSubstNoLists.EAbs__1 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.EAbs>


; </end encoding type StlcCbvDbPntSubstNoLists.exp>

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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.var; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.var
Tm_type)
:named typing_StlcCbvDbPntSubstNoLists.var))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.TArrow))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.EVar @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.EVar))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.EVar))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.EApp))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.EApp))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TArrow_t2 (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TArrow_t1 (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EVar__0 (StlcCbvDbPntSubstNoLists.EVar @x0))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.EVar @x0))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EApp__1 (StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EApp__0 (StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EAbs__1 (StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EAbs__0 (StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0))
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.ty
Tm_type)
:named kinding_StlcCbvDbPntSubstNoLists.ty@tok))
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.exp
Tm_type)
:named kinding_StlcCbvDbPntSubstNoLists.exp@tok))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.var; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.var
Tm_type)
:named function_token_typing_StlcCbvDbPntSubstNoLists.var))
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
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(19,5-19,7); use=StlcCbvDbPntSubstNoLists.fst(19,5-19,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(is-StlcCbvDbPntSubstNoLists.TArrow @x1))
 

:pattern ((HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty))
:qid fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty))

:named fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(24,5-24,8); use=StlcCbvDbPntSubstNoLists.fst(24,5-24,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
StlcCbvDbPntSubstNoLists.exp)
(or (is-StlcCbvDbPntSubstNoLists.EVar @x1)
(is-StlcCbvDbPntSubstNoLists.EApp @x1)
(is-StlcCbvDbPntSubstNoLists.EAbs @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
StlcCbvDbPntSubstNoLists.exp))
:qid fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.exp))

:named fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.exp))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.var
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.var; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= StlcCbvDbPntSubstNoLists.var
Prims.nat)
:named equation_StlcCbvDbPntSubstNoLists.var))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.TArrow@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.TArrow@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var)
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.EVar@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.EVar@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.EApp@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.EApp@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.EAbs@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.EAbs@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid data_elim_StlcCbvDbPntSubstNoLists.TArrow))

:named data_elim_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
:qid data_elim_StlcCbvDbPntSubstNoLists.EVar))

:named data_elim_StlcCbvDbPntSubstNoLists.EVar))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_elim_StlcCbvDbPntSubstNoLists.EApp))

:named data_elim_StlcCbvDbPntSubstNoLists.EApp))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_elim_StlcCbvDbPntSubstNoLists.EAbs))

:named data_elim_StlcCbvDbPntSubstNoLists.EAbs))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= 124
(Term_constr_id StlcCbvDbPntSubstNoLists.ty))
:named constructor_distinct_StlcCbvDbPntSubstNoLists.ty))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= 160
(Term_constr_id StlcCbvDbPntSubstNoLists.exp))
:named constructor_distinct_StlcCbvDbPntSubstNoLists.exp))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 130
(Term_constr_id (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.TArrow))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@x0 Term))
 (! (= 166
(Term_constr_id (StlcCbvDbPntSubstNoLists.EVar @x0)))
 

:pattern ((StlcCbvDbPntSubstNoLists.EVar @x0))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.EVar))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.EVar))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 171
(Term_constr_id (StlcCbvDbPntSubstNoLists.EApp @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.EApp))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.EApp))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 176
(Term_constr_id (StlcCbvDbPntSubstNoLists.EAbs @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs))
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
;;;;;;;;;;;;;;;;Assumption: StlcCbvDbPntSubstNoLists.ty__uu___haseq
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty__uu___haseq; Namespace StlcCbvDbPntSubstNoLists
(assert (! (Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.ty))
:named assumption_StlcCbvDbPntSubstNoLists.ty__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(24,5-24,8); use=StlcCbvDbPntSubstNoLists.fst(24,5-24,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.exp)
(= StlcCbvDbPntSubstNoLists.exp
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.exp))
:qid StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037))

:named StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(19,5-19,7); use=StlcCbvDbPntSubstNoLists.fst(19,5-19,7)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.ty)
(= StlcCbvDbPntSubstNoLists.ty
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.ty))
:qid StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606))

:named StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606))
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
(push) ;; push{4

; Starting query at StlcCbvDbPntSubstNoLists.fst(24,0-27,29)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq StlcCbvDbPntSubstNoLists.exp ==>
; (forall (_0: StlcCbvDbPntSubstNoLists.var).
;     (*  - Failed to prove that the type
;     'StlcCbvDbPntSubstNoLists.exp'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq StlcCbvDbPntSubstNoLists.var) /\
; (forall (_0: StlcCbvDbPntSubstNoLists.exp) (_1: StlcCbvDbPntSubstNoLists.exp).
;     Prims.hasEq StlcCbvDbPntSubstNoLists.exp /\ Prims.hasEq StlcCbvDbPntSubstNoLists.exp) /\
; (forall (_0: StlcCbvDbPntSubstNoLists.ty) (_1: StlcCbvDbPntSubstNoLists.exp).
;     Prims.hasEq StlcCbvDbPntSubstNoLists.ty /\ Prims.hasEq StlcCbvDbPntSubstNoLists.exp)


; Context: While encoding a query
; While typechecking the top-level declaration `type StlcCbvDbPntSubstNoLists.exp`

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
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Prims.hasEq StlcCbvDbPntSubstNoLists.exp)
)


;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(25,13-25,16)
(or label_1

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Prims.hasEq StlcCbvDbPntSubstNoLists.var)
)
)
)
 
;;no pats
:qid @query))


;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp))

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(26,13-26,16)
(or label_2

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Prims.hasEq StlcCbvDbPntSubstNoLists.exp)
)
)


;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(26,20-26,23)
(or label_3

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Prims.hasEq StlcCbvDbPntSubstNoLists.exp)
)
)
)
)
 
;;no pats
:qid @query.1))


;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.ty)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp))

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(27,13-27,15)
(or label_4

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Prims.hasEq StlcCbvDbPntSubstNoLists.ty)
)
)


;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(27,19-27,22)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(24,0-27,29); use=StlcCbvDbPntSubstNoLists.fst(24,0-27,29)
(Prims.hasEq StlcCbvDbPntSubstNoLists.exp)
)
)
)
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.exp, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_StlcCbvDbPntSubstNoLists.ty__uu___haseq, equation_Prims.eqtype, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.var, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type StlcCbvDbPntSubstNoLists.exp


; <Start encoding type StlcCbvDbPntSubstNoLists.exp>

;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.exp () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.EVar (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EVar__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.EVar
(declare-fun StlcCbvDbPntSubstNoLists.EVar@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.EApp (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EApp__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EApp__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.EApp
(declare-fun StlcCbvDbPntSubstNoLists.EApp@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.EAbs (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EAbs__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.EAbs__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.EAbs
(declare-fun StlcCbvDbPntSubstNoLists.EAbs@tok () Term)
;;;;;;;;;;;;;;;;_0: var -> exp
(declare-fun Tm_arrow_7982f3d073bb721f6186cbab0378c1b5 () Term)
;;;;;;;;;;;;;;;;_0: exp -> _1: exp -> exp
(declare-fun Tm_arrow_c749c5ed5a35a33307a5531a7fb1bee0 () Term)
;;;;;;;;;;;;;;;;_0: ty -> _1: exp -> exp
(declare-fun Tm_arrow_04ae04061be8a834fa89b76dd613c2cd () Term)

; <start constructor StlcCbvDbPntSubstNoLists.exp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.exp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
180)
(= __@x0
StlcCbvDbPntSubstNoLists.exp)))

; </end constructor StlcCbvDbPntSubstNoLists.exp>


; <start constructor StlcCbvDbPntSubstNoLists.EVar>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.EVar ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
186)
(= __@x0
(StlcCbvDbPntSubstNoLists.EVar (StlcCbvDbPntSubstNoLists.EVar__0 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.EVar>


; <start constructor StlcCbvDbPntSubstNoLists.EApp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.EApp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
191)
(= __@x0
(StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.EApp__0 __@x0)
(StlcCbvDbPntSubstNoLists.EApp__1 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.EApp>


; <start constructor StlcCbvDbPntSubstNoLists.EAbs>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.EAbs ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
196)
(= __@x0
(StlcCbvDbPntSubstNoLists.EAbs (StlcCbvDbPntSubstNoLists.EAbs__0 __@x0)
(StlcCbvDbPntSubstNoLists.EAbs__1 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.EAbs>


; </end encoding type StlcCbvDbPntSubstNoLists.exp>


; encoding sigelt assume StlcCbvDbPntSubstNoLists.exp__uu___haseq


; <Start encoding assume StlcCbvDbPntSubstNoLists.exp__uu___haseq>


; </end encoding assume StlcCbvDbPntSubstNoLists.exp__uu___haseq>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_EVar


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_EVar>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_EVar (Term) Term)
;;;;;;;;;;;;;;;;projectee: exp -> Prims.bool
(declare-fun Tm_arrow_2638a057c9cacd0263fbfc56bdae5856 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.uu___is_EVar@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_EVar>


; encoding sigelt let uu___is_EVar


; <Skipped let uu___is_EVar/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__EVar__item___0


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__EVar__item___0>

(declare-fun Tm_refine_b0fc1a2f197b450737fc60602f5bbe98 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EVar__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: exp{EVar? _} -> var
(declare-fun Tm_arrow_312a559fb837cb0096628558fe6144c3 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EVar__item___0@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__EVar__item___0>

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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.var; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.var
Tm_type)
:named typing_StlcCbvDbPntSubstNoLists.var))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_EVar; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType (StlcCbvDbPntSubstNoLists.uu___is_EVar @x0)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_EVar @x0))
:qid typing_StlcCbvDbPntSubstNoLists.uu___is_EVar))

:named typing_StlcCbvDbPntSubstNoLists.uu___is_EVar))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.TArrow))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.EVar @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.EVar))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.EVar))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.EApp))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.EApp))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EVar__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType Tm_refine_b0fc1a2f197b450737fc60602f5bbe98
Tm_type)
:named refinement_kinding_Tm_refine_b0fc1a2f197b450737fc60602f5bbe98))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EVar__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b0fc1a2f197b450737fc60602f5bbe98)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EVar @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b0fc1a2f197b450737fc60602f5bbe98))
:qid refinement_interpretation_Tm_refine_b0fc1a2f197b450737fc60602f5bbe98))

:named refinement_interpretation_Tm_refine_b0fc1a2f197b450737fc60602f5bbe98))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TArrow_t2 (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TArrow_t1 (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EVar__0 (StlcCbvDbPntSubstNoLists.EVar @x0))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.EVar @x0))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EApp__1 (StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EApp__0 (StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EAbs__1 (StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.EAbs__0 (StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0))

:named projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0))
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.ty
Tm_type)
:named kinding_StlcCbvDbPntSubstNoLists.ty@tok))
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.exp
Tm_type)
:named kinding_StlcCbvDbPntSubstNoLists.exp@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b0fc1a2f197b450737fc60602f5bbe98
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EVar__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b0fc1a2f197b450737fc60602f5bbe98))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp)))
:named haseqTm_refine_b0fc1a2f197b450737fc60602f5bbe98))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.var; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.var
Tm_type)
:named function_token_typing_StlcCbvDbPntSubstNoLists.var))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(19,5-19,7); use=StlcCbvDbPntSubstNoLists.fst(19,5-19,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(is-StlcCbvDbPntSubstNoLists.TArrow @x1))
 

:pattern ((HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty))
:qid fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty))

:named fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(24,5-24,8); use=StlcCbvDbPntSubstNoLists.fst(24,5-24,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
StlcCbvDbPntSubstNoLists.exp)
(or (is-StlcCbvDbPntSubstNoLists.EVar @x1)
(is-StlcCbvDbPntSubstNoLists.EApp @x1)
(is-StlcCbvDbPntSubstNoLists.EAbs @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
StlcCbvDbPntSubstNoLists.exp))
:qid fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.exp))

:named fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.exp))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.var
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.var; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= StlcCbvDbPntSubstNoLists.var
Prims.nat)
:named equation_StlcCbvDbPntSubstNoLists.var))
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
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_EVar; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.uu___is_EVar @x0)
(BoxBool (is-StlcCbvDbPntSubstNoLists.EVar @x0)))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_EVar @x0))
:qid disc_equation_StlcCbvDbPntSubstNoLists.EVar))

:named disc_equation_StlcCbvDbPntSubstNoLists.EVar))
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
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.TArrow@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.TArrow@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var)
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.EVar@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.EVar@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.EApp@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.EApp@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.EAbs@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.EAbs@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TArrow @x1
@x2)
StlcCbvDbPntSubstNoLists.ty))
:qid data_elim_StlcCbvDbPntSubstNoLists.TArrow))

:named data_elim_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EVar @x1)
StlcCbvDbPntSubstNoLists.exp))
:qid data_elim_StlcCbvDbPntSubstNoLists.EVar))

:named data_elim_StlcCbvDbPntSubstNoLists.EVar))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_elim_StlcCbvDbPntSubstNoLists.EApp))

:named data_elim_StlcCbvDbPntSubstNoLists.EApp))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
:qid data_elim_StlcCbvDbPntSubstNoLists.EAbs))

:named data_elim_StlcCbvDbPntSubstNoLists.EAbs))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= 124
(Term_constr_id StlcCbvDbPntSubstNoLists.ty))
:named constructor_distinct_StlcCbvDbPntSubstNoLists.ty))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= 180
(Term_constr_id StlcCbvDbPntSubstNoLists.exp))
:named constructor_distinct_StlcCbvDbPntSubstNoLists.exp))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(20,4-20,10); use=StlcCbvDbPntSubstNoLists.fst(20,4-20,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 130
(Term_constr_id (StlcCbvDbPntSubstNoLists.TArrow @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.TArrow @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.TArrow))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.TArrow))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(forall ((@x0 Term))
 (! (= 186
(Term_constr_id (StlcCbvDbPntSubstNoLists.EVar @x0)))
 

:pattern ((StlcCbvDbPntSubstNoLists.EVar @x0))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.EVar))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.EVar))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 191
(Term_constr_id (StlcCbvDbPntSubstNoLists.EApp @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.EApp @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.EApp))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.EApp))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 196
(Term_constr_id (StlcCbvDbPntSubstNoLists.EAbs @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.EAbs @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs))
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
;;;;;;;;;;;;;;;;Assumption: StlcCbvDbPntSubstNoLists.ty__uu___haseq
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty__uu___haseq; Namespace StlcCbvDbPntSubstNoLists
(assert (! (Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.ty))
:named assumption_StlcCbvDbPntSubstNoLists.ty__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: StlcCbvDbPntSubstNoLists.exp__uu___haseq
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp__uu___haseq; Namespace StlcCbvDbPntSubstNoLists
(assert (! (Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp))
:named assumption_StlcCbvDbPntSubstNoLists.exp__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.exp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EApp; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(24,5-24,8); use=StlcCbvDbPntSubstNoLists.fst(24,5-24,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.exp)
(= StlcCbvDbPntSubstNoLists.exp
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.exp))
:qid StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037))

:named StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.ty; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TArrow; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(19,5-19,7); use=StlcCbvDbPntSubstNoLists.fst(19,5-19,7)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.ty)
(= StlcCbvDbPntSubstNoLists.ty
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
StlcCbvDbPntSubstNoLists.ty))
:qid StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606))

:named StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606))
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
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: StlcCbvDbPntSubstNoLists.exp{EVar? _}).
;   (*  - Could not prove post-condition
; *) ~(EVar? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EVar__item___0`

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
Tm_refine_b0fc1a2f197b450737fc60602f5bbe98)

;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(25,4-25,8); use=StlcCbvDbPntSubstNoLists.fst(25,4-25,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EVar @x0))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__EVar__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b0fc1a2f197b450737fc60602f5bbe98

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EVar__item___0


; <Skipped let __proj__EVar__item___0/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_EApp


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_EApp>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_EApp (Term) Term)

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_EApp@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_EApp>


; encoding sigelt let uu___is_EApp


; <Skipped let uu___is_EApp/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__EApp__item___0


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__EApp__item___0>

(declare-fun Tm_refine_e80fa73901831fcccf979556beeb043f () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EApp__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: exp{EApp? _} -> exp
(declare-fun Tm_arrow_9c26d1196cf34be87bde3fe37e916584 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EApp__item___0@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__EApp__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_EApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType (StlcCbvDbPntSubstNoLists.uu___is_EApp @x0)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_EApp @x0))
:qid typing_StlcCbvDbPntSubstNoLists.uu___is_EApp))

:named typing_StlcCbvDbPntSubstNoLists.uu___is_EApp))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EApp__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType Tm_refine_e80fa73901831fcccf979556beeb043f
Tm_type)
:named refinement_kinding_Tm_refine_e80fa73901831fcccf979556beeb043f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EApp__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e80fa73901831fcccf979556beeb043f)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EApp @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e80fa73901831fcccf979556beeb043f))
:qid refinement_interpretation_Tm_refine_e80fa73901831fcccf979556beeb043f))

:named refinement_interpretation_Tm_refine_e80fa73901831fcccf979556beeb043f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e80fa73901831fcccf979556beeb043f
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EApp__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e80fa73901831fcccf979556beeb043f))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp)))
:named haseqTm_refine_e80fa73901831fcccf979556beeb043f))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_EApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.uu___is_EApp @x0)
(BoxBool (is-StlcCbvDbPntSubstNoLists.EApp @x0)))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_EApp @x0))
:qid disc_equation_StlcCbvDbPntSubstNoLists.EApp))

:named disc_equation_StlcCbvDbPntSubstNoLists.EApp))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: StlcCbvDbPntSubstNoLists.exp{EApp? _}).
;   (*  - Could not prove post-condition
; *) ~(EApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EApp__item___0`

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
Tm_refine_e80fa73901831fcccf979556beeb043f)

;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EApp @x0))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__EApp__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e80fa73901831fcccf979556beeb043f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EApp__item___0


; <Skipped let __proj__EApp__item___0/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__EApp__item___1


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__EApp__item___1>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__EApp__item___1 (Term) Term)


(declare-fun StlcCbvDbPntSubstNoLists.__proj__EApp__item___1@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__EApp__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: StlcCbvDbPntSubstNoLists.exp{EApp? _}).
;   (*  - Could not prove post-condition
; *) ~(EApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EApp__item___1`

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
Tm_refine_e80fa73901831fcccf979556beeb043f)

;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(26,4-26,8); use=StlcCbvDbPntSubstNoLists.fst(26,4-26,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EApp @x0))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__EApp__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e80fa73901831fcccf979556beeb043f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EApp__item___1


; <Skipped let __proj__EApp__item___1/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_EAbs


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_EAbs>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_EAbs (Term) Term)

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_EAbs@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_EAbs>


; encoding sigelt let uu___is_EAbs


; <Skipped let uu___is_EAbs/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0>

(declare-fun Tm_refine_a8f27480ee432505641e15da6e41375d () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: exp{EAbs? _} -> ty
(declare-fun Tm_arrow_0047f8862abe28942f02cd961c382dca () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType (StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0))
:qid typing_StlcCbvDbPntSubstNoLists.uu___is_EAbs))

:named typing_StlcCbvDbPntSubstNoLists.uu___is_EAbs))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType Tm_refine_a8f27480ee432505641e15da6e41375d
Tm_type)
:named refinement_kinding_Tm_refine_a8f27480ee432505641e15da6e41375d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a8f27480ee432505641e15da6e41375d)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EAbs @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a8f27480ee432505641e15da6e41375d))
:qid refinement_interpretation_Tm_refine_a8f27480ee432505641e15da6e41375d))

:named refinement_interpretation_Tm_refine_a8f27480ee432505641e15da6e41375d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a8f27480ee432505641e15da6e41375d
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0; Namespace StlcCbvDbPntSubstNoLists
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a8f27480ee432505641e15da6e41375d))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp)))
:named haseqTm_refine_a8f27480ee432505641e15da6e41375d))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_EAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0)
(BoxBool (is-StlcCbvDbPntSubstNoLists.EAbs @x0)))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0))
:qid disc_equation_StlcCbvDbPntSubstNoLists.EAbs))

:named disc_equation_StlcCbvDbPntSubstNoLists.EAbs))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: StlcCbvDbPntSubstNoLists.exp{EAbs? _}).
;   (*  - Could not prove post-condition
; *) ~(EAbs? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EAbs__item___0`

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
Tm_refine_a8f27480ee432505641e15da6e41375d)

;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__EAbs__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_a8f27480ee432505641e15da6e41375d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EAbs__item___0


; <Skipped let __proj__EAbs__item___0/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__EAbs__item___1


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__EAbs__item___1>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__EAbs__item___1 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: exp{EAbs? _} -> exp
(declare-fun Tm_arrow_26fdaad6cf21b68f5ce0a62d590382fb () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__EAbs__item___1@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__EAbs__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: StlcCbvDbPntSubstNoLists.exp{EAbs? _}).
;   (*  - Could not prove post-condition
; *) ~(EAbs? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EAbs__item___1`

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
Tm_refine_a8f27480ee432505641e15da6e41375d)

;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(27,4-27,8); use=StlcCbvDbPntSubstNoLists.fst(27,4-27,8)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__EAbs__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_a8f27480ee432505641e15da6e41375d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EAbs__item___1


; <Skipped let __proj__EAbs__item___1/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.is_value


; <Skipped val StlcCbvDbPntSubstNoLists.is_value/>


; encoding sigelt let is_value


; <Start encoding let is_value>

(declare-fun StlcCbvDbPntSubstNoLists.is_value (Term) Term)

(declare-fun StlcCbvDbPntSubstNoLists.is_value@tok () Term)

; </end encoding let is_value>


; encoding sigelt val StlcCbvDbPntSubstNoLists.subst_beta


; <Skipped val StlcCbvDbPntSubstNoLists.subst_beta/>

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

; Starting query at StlcCbvDbPntSubstNoLists.fst(39,2-44,62)

;;;;;;;;;;;;;;;;x : StlcCbvDbPntSubstNoLists.var (StlcCbvDbPntSubstNoLists.var)
(declare-fun x_dbcb0a2632e1fed74e708f131516d100_0 () Term)
;;;;;;;;;;;;;;;;binder_x_dbcb0a2632e1fed74e708f131516d100_0
;;; Fact-ids: 
(assert (! (HasType x_dbcb0a2632e1fed74e708f131516d100_0
StlcCbvDbPntSubstNoLists.var)
:named binder_x_dbcb0a2632e1fed74e708f131516d100_0))
;;;;;;;;;;;;;;;;v : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_1 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_1
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_1
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_1))
;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_2 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_2
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_2
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_2))
(declare-fun Tm_refine_cb016b8ef84de94920f6de3419e4de5f () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_cb016b8ef84de94920f6de3419e4de5f
Tm_type)
:named refinement_kinding_Tm_refine_cb016b8ef84de94920f6de3419e4de5f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(37,35-44,62); use=StlcCbvDbPntSubstNoLists.fst(37,35-44,62)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_cb016b8ef84de94920f6de3419e4de5f)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_cb016b8ef84de94920f6de3419e4de5f))
:qid refinement_interpretation_Tm_refine_cb016b8ef84de94920f6de3419e4de5f))

:named refinement_interpretation_Tm_refine_cb016b8ef84de94920f6de3419e4de5f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cb016b8ef84de94920f6de3419e4de5f
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_cb016b8ef84de94920f6de3419e4de5f))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp)))
:named haseqTm_refine_cb016b8ef84de94920f6de3419e4de5f))
(declare-fun StlcCbvDbPntSubstNoLists.subst_beta (Term Term Term) Term)

;;;;;;;;;;;;;;;;x: var -> v: exp -> e: exp{e << e} -> Prims.Tot exp
(declare-fun Tm_arrow_3e593b82a9471bba3937360105d99f41 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3e593b82a9471bba3937360105d99f41
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_3e593b82a9471bba3937360105d99f41
Tm_type)
:named kinding_Tm_arrow_3e593b82a9471bba3937360105d99f41))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(37,19-44,62); use=StlcCbvDbPntSubstNoLists.fst(37,35-44,62)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_3e593b82a9471bba3937360105d99f41)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_3e593b82a9471bba3937360105d99f41))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_3e593b82a9471bba3937360105d99f41))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_3e593b82a9471bba3937360105d99f41))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3e593b82a9471bba3937360105d99f41
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(37,19-44,62); use=StlcCbvDbPntSubstNoLists.fst(37,35-44,62)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_3e593b82a9471bba3937360105d99f41)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(37,19-44,62); use=StlcCbvDbPntSubstNoLists.fst(37,35-44,62)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
Tm_refine_cb016b8ef84de94920f6de3419e4de5f))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_3e593b82a9471bba3937360105d99f41.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(37,19-44,62); use=StlcCbvDbPntSubstNoLists.fst(37,35-44,62)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_3e593b82a9471bba3937360105d99f41.2))


;; def=StlcCbvDbPntSubstNoLists.fst(37,19-44,62); use=StlcCbvDbPntSubstNoLists.fst(37,35-44,62)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_3e593b82a9471bba3937360105d99f41.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_3e593b82a9471bba3937360105d99f41))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_3e593b82a9471bba3937360105d99f41))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_3e593b82a9471bba3937360105d99f41))
(declare-fun StlcCbvDbPntSubstNoLists.subst_beta@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.subst_beta@tok
@x0)
@x1)
@x2)
(StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.subst_beta@tok
@x0)
@x1)
@x2))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.subst_beta))

:named token_correspondence_StlcCbvDbPntSubstNoLists.subst_beta))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.subst_beta@tok
Tm_arrow_3e593b82a9471bba3937360105d99f41))

;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.subst_beta@tok
@x1)
@x2)
@x3)
(StlcCbvDbPntSubstNoLists.subst_beta @x1
@x2
@x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.subst_beta @x1
@x2
@x3))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.subst_beta.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.subst_beta@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.subst_beta))

:named function_token_typing_StlcCbvDbPntSubstNoLists.subst_beta))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
Tm_refine_cb016b8ef84de94920f6de3419e4de5f))
(HasType (StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2))
:qid typing_StlcCbvDbPntSubstNoLists.subst_beta))

:named typing_StlcCbvDbPntSubstNoLists.subst_beta))
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post StlcCbvDbPntSubstNoLists.exp).
;   (forall (x: StlcCbvDbPntSubstNoLists.exp). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(EVar? e) /\ ~(EAbs? e) /\ ~(EApp? e) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.var).
;       e == StlcCbvDbPntSubstNoLists.EVar b ==>
;       Prims.hasEq StlcCbvDbPntSubstNoLists.var /\
;       (forall (any_result: Type0).
;           StlcCbvDbPntSubstNoLists.var == any_result ==>
;           (forall (any_result: Prims.bool).
;               b = x == any_result ==>
;               (forall (k: Prims.pure_post StlcCbvDbPntSubstNoLists.exp).
;                   (forall (x: StlcCbvDbPntSubstNoLists.exp). {:pattern Prims.guard_free (k x)}
;                       Prims.auto_squash (k x)) ==>
;                   ~(b = x = true) ==>
;                   (forall (b: Prims.bool).
;                       b = x == b ==>
;                       (forall (k: Prims.pure_post StlcCbvDbPntSubstNoLists.exp).
;                           (forall (x: StlcCbvDbPntSubstNoLists.exp).
;                               {:pattern Prims.guard_free (k x)}
;                               Prims.auto_squash (k x)) ==>
;                           ~(b < x = true) ==> (forall (b: Prims.bool). b < x == b ==> b - 1 >= 0))))
;           ))) /\
;   (~(EVar? e) ==>
;     (forall (b: StlcCbvDbPntSubstNoLists.ty) (b: StlcCbvDbPntSubstNoLists.exp).
;         e == StlcCbvDbPntSubstNoLists.EAbs b b ==>
;         x + 1 >= 0 /\
;         (forall (return_val: StlcCbvDbPntSubstNoLists.var). return_val == x + 1 ==> b << e)) /\
;     (~(EAbs? e) ==>
;       (forall (b: StlcCbvDbPntSubstNoLists.exp) (b: StlcCbvDbPntSubstNoLists.exp).
;           e == StlcCbvDbPntSubstNoLists.EApp b b ==>
;           b << e /\
;           (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;               b == any_result ==>
;               (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                   StlcCbvDbPntSubstNoLists.subst_beta x v b == any_result ==> b << e)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec subst_beta`

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
(Prims.pure_post StlcCbvDbPntSubstNoLists.exp))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EVar x_7597dc0c465777776dc6eae797c43037_2))
)


;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EAbs x_7597dc0c465777776dc6eae797c43037_2))
)


;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EApp x_7597dc0c465777776dc6eae797c43037_2))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(38,23-40,10); use=StlcCbvDbPntSubstNoLists.fst(39,8-40,10)
(= x_7597dc0c465777776dc6eae797c43037_2
(StlcCbvDbPntSubstNoLists.EVar @x1))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(and 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(40,22-40,23)
(or label_2

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(40,22-40,23)
(Valid 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(40,22-40,23)
(Prims.hasEq StlcCbvDbPntSubstNoLists.var)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_type)

;; def=Prims.fst(588,31-588,32); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(= StlcCbvDbPntSubstNoLists.var
@x2)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(40,22-40,27); use=StlcCbvDbPntSubstNoLists.fst(40,22-40,27)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x1
x_dbcb0a2632e1fed74e708f131516d100_0)
@x3)
)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post StlcCbvDbPntSubstNoLists.exp))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x5 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(ApplyTT @x4
@x5)
)

 

:pattern ((ApplyTT @x4
@x5))
:qid @query.6))


;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(40,22-40,27); use=StlcCbvDbPntSubstNoLists.fst(40,22-40,27)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x1
x_dbcb0a2632e1fed74e708f131516d100_0)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(40,22-42,43); use=StlcCbvDbPntSubstNoLists.fst(40,22-42,43)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x1
x_dbcb0a2632e1fed74e708f131516d100_0)
@x5)
)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post StlcCbvDbPntSubstNoLists.exp))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x7 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(ApplyTT @x6
@x7)
)

 

:pattern ((ApplyTT @x6
@x7))
:qid @query.9))


;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(41,22-41,27); use=StlcCbvDbPntSubstNoLists.fst(41,22-41,27)
(= (Prims.op_LessThan @x1
x_dbcb0a2632e1fed74e708f131516d100_0)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(41,22-42,43); use=StlcCbvDbPntSubstNoLists.fst(41,22-42,43)
(= (Prims.op_LessThan @x1
x_dbcb0a2632e1fed74e708f131516d100_0)
@x7)
)

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(42,38-42,43)
(or label_3

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(42,38-42,43)
(>= (BoxInt_proj_0 (Prims.op_Subtraction @x1
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)
)
 
;;no pats
:qid @query.10))
)
 
;;no pats
:qid @query.8)))
 
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
)
 
;;no pats
:qid @query.2))

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EVar x_7597dc0c465777776dc6eae797c43037_2))
)


;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(and 
;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(38,23-43,13); use=StlcCbvDbPntSubstNoLists.fst(39,8-43,13)
(= x_7597dc0c465777776dc6eae797c43037_2
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(43,36-43,41)
(or label_4

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(43,36-43,41)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(= @x3
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
)

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(43,44-43,46)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(43,44-43,46)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(43,44-43,46)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_2)
)
)
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
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(38,23-38,24); use=StlcCbvDbPntSubstNoLists.fst(39,8-39,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EAbs x_7597dc0c465777776dc6eae797c43037_2))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(38,23-44,14); use=StlcCbvDbPntSubstNoLists.fst(39,8-44,14)
(= x_7597dc0c465777776dc6eae797c43037_2
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(44,39-44,41)
(or label_6

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(44,39-44,41)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(44,39-44,41)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_2)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(37,35-44,11); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(= @x1
@x3)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
StlcCbvDbPntSubstNoLists.exp)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(39,2-44,62)
(= (StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_1
@x1)
@x4)
)

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(44,59-44,61)
(or label_7

;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(44,59-44,61)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(39,2-44,62); use=StlcCbvDbPntSubstNoLists.fst(44,59-44,61)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_2)
)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.subst_beta, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037, binder_x_7597dc0c465777776dc6eae797c43037_1, binder_x_7597dc0c465777776dc6eae797c43037_2, binder_x_dbcb0a2632e1fed74e708f131516d100_0, disc_equation_StlcCbvDbPntSubstNoLists.EAbs, disc_equation_StlcCbvDbPntSubstNoLists.EApp, disc_equation_StlcCbvDbPntSubstNoLists.EVar, equation_Prims.eqtype, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.var, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.exp, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_Subtraction, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs, subterm_ordering_StlcCbvDbPntSubstNoLists.EApp, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec subst_beta


; <Start encoding let rec subst_beta>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented_token () Term)
(declare-fun StlcCbvDbPntSubstNoLists.subst_beta (Term Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.subst_beta@tok () Term)
;;;;;;;;;;;;;;;;x: var -> v: exp -> e: exp -> Prims.Tot exp
(declare-fun Tm_arrow_39c7c056548a97d1b65792da96622628 () Term)

; </end encoding let rec subst_beta>


; encoding sigelt val StlcCbvDbPntSubstNoLists.step


; <Skipped val StlcCbvDbPntSubstNoLists.step/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.is_value; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(30,4-30,12); use=StlcCbvDbPntSubstNoLists.fst(30,4-30,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType (StlcCbvDbPntSubstNoLists.is_value @x0)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.is_value @x0))
:qid typing_StlcCbvDbPntSubstNoLists.is_value))

:named typing_StlcCbvDbPntSubstNoLists.is_value))
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
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.is_value
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.is_value; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(30,4-30,12); use=StlcCbvDbPntSubstNoLists.fst(30,4-30,12)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.is_value @x0)
(StlcCbvDbPntSubstNoLists.uu___is_EAbs @x0))
 

:pattern ((StlcCbvDbPntSubstNoLists.is_value @x0))
:qid equation_StlcCbvDbPntSubstNoLists.is_value))

:named equation_StlcCbvDbPntSubstNoLists.is_value))
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

; Starting query at StlcCbvDbPntSubstNoLists.fst(48,2-63,13)

;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_0 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_0
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_0
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_0))
(declare-fun Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0
Tm_type)
:named refinement_kinding_Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)

;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0))
:qid refinement_interpretation_Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0))

:named refinement_interpretation_Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp)))
:named haseqTm_refine_0d2483b3ef64196fa0e3c0569b53ced0))
(declare-fun StlcCbvDbPntSubstNoLists.step (Term) Term)

;;;;;;;;;;;;;;;;_: _: exp{_ << e} -> FStar.Pervasives.Native.option exp
(declare-fun Tm_arrow_87eea0f551f490488769a897c4e831e9 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_87eea0f551f490488769a897c4e831e9
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_87eea0f551f490488769a897c4e831e9
Tm_type)
:named kinding_Tm_arrow_87eea0f551f490488769a897c4e831e9))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(46,22-63,13); use=StlcCbvDbPntSubstNoLists.fst(47,8-63,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_87eea0f551f490488769a897c4e831e9)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_87eea0f551f490488769a897c4e831e9))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_87eea0f551f490488769a897c4e831e9))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_87eea0f551f490488769a897c4e831e9))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_87eea0f551f490488769a897c4e831e9
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(46,22-63,13); use=StlcCbvDbPntSubstNoLists.fst(47,8-63,13)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_87eea0f551f490488769a897c4e831e9)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(46,22-63,13); use=StlcCbvDbPntSubstNoLists.fst(47,8-63,13)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0)
(HasType (ApplyTT @x0
@x1)
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_87eea0f551f490488769a897c4e831e9.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_87eea0f551f490488769a897c4e831e9))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_87eea0f551f490488769a897c4e831e9))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_87eea0f551f490488769a897c4e831e9))
(declare-fun StlcCbvDbPntSubstNoLists.step@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@x0 Term))
 (! (= (ApplyTT StlcCbvDbPntSubstNoLists.step@tok
@x0)
(StlcCbvDbPntSubstNoLists.step @x0))
 

:pattern ((ApplyTT StlcCbvDbPntSubstNoLists.step@tok
@x0))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.step))

:named token_correspondence_StlcCbvDbPntSubstNoLists.step))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.step@tok
Tm_arrow_87eea0f551f490488769a897c4e831e9))

;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@x1 Term))
 (! (= (ApplyTT StlcCbvDbPntSubstNoLists.step@tok
@x1)
(StlcCbvDbPntSubstNoLists.step @x1))
 

:pattern ((StlcCbvDbPntSubstNoLists.step @x1))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.step.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.step@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.step))

:named function_token_typing_StlcCbvDbPntSubstNoLists.step))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_0d2483b3ef64196fa0e3c0569b53ced0)
(HasType (StlcCbvDbPntSubstNoLists.step @x0)
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((StlcCbvDbPntSubstNoLists.step @x0))
:qid typing_StlcCbvDbPntSubstNoLists.step))

:named typing_StlcCbvDbPntSubstNoLists.step))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)).
;   (forall (x: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp).
;       {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (forall (b: StlcCbvDbPntSubstNoLists.exp) (b: StlcCbvDbPntSubstNoLists.exp).
;       e == StlcCbvDbPntSubstNoLists.EApp b b ==>
;       (forall (k: Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)).
;           (forall (x: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp).
;               {:pattern Prims.guard_free (k x)}
;               Prims.auto_squash (k x)) ==>
;           (StlcCbvDbPntSubstNoLists.is_value b == true ==>
;             (forall (k:
;                 Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)).
;                 (forall (x: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp).
;                     {:pattern Prims.guard_free (k x)}
;                     Prims.auto_squash (k x)) ==>
;                 ~(StlcCbvDbPntSubstNoLists.is_value b = true) ==>
;                 (forall (b: Prims.bool).
;                     StlcCbvDbPntSubstNoLists.is_value b == b ==>
;                     b << e /\
;                     (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                         b == any_result ==>
;                         (forall (any_result:
;                             FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp).
;                             StlcCbvDbPntSubstNoLists.step b == any_result ==>
;                             (forall (k:
;                                 Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp
;                                     )).
;                                 (forall (x:
;                                     FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp).
;                                     {:pattern Prims.guard_free (k x)}
;                                     Prims.auto_squash (k x)) ==>
;                                 ~(Some? (StlcCbvDbPntSubstNoLists.step b)) /\
;                                 ~(None? (StlcCbvDbPntSubstNoLists.step b)) ==>
;                                 Prims.l_False)))))) /\
;           (~(StlcCbvDbPntSubstNoLists.is_value b = true) ==>
;             (forall (b: Prims.bool).
;                 StlcCbvDbPntSubstNoLists.is_value b == b ==>
;                 b << e /\
;                 (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                     b == any_result ==>
;                     (forall (any_result:
;                         FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp).
;                         StlcCbvDbPntSubstNoLists.step b == any_result ==>
;                         (forall (k:
;                             Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp
;                                 )).
;                             (forall (x: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)
;                               .
;                                 {:pattern Prims.guard_free (k x)}
;                                 Prims.auto_squash (k x)) ==>
;                             ~(Some? (StlcCbvDbPntSubstNoLists.step b)) /\
;                             ~(None? (StlcCbvDbPntSubstNoLists.step b)) ==>
;                             Prims.l_False)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec step`

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
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(47,13-49,14); use=StlcCbvDbPntSubstNoLists.fst(48,8-49,14)
(= x_7597dc0c465777776dc6eae797c43037_0
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.5))
)

;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(50,9-50,20); use=StlcCbvDbPntSubstNoLists.fst(50,9-50,20)
(= (StlcCbvDbPntSubstNoLists.is_value @x1)
(BoxBool true))

(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x5 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(ApplyTT @x4
@x5)
)

 

:pattern ((ApplyTT @x4
@x5))
:qid @query.7))


;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(51,11-51,22); use=StlcCbvDbPntSubstNoLists.fst(51,11-51,22)
(= (StlcCbvDbPntSubstNoLists.is_value @x2)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(51,11-58,28); use=StlcCbvDbPntSubstNoLists.fst(51,11-58,28)
(= (StlcCbvDbPntSubstNoLists.is_value @x2)
@x5)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(56,22-56,24)
(or label_1

;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(56,22-56,24)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(56,22-56,24)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_0)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
StlcCbvDbPntSubstNoLists.exp)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(= @x2
@x6)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp))

;; def=StlcCbvDbPntSubstNoLists.fst(56,16-56,25); use=StlcCbvDbPntSubstNoLists.fst(56,16-56,25)
(= (StlcCbvDbPntSubstNoLists.step @x2)
@x7)
)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x9 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(ApplyTT @x8
@x9)
)

 

:pattern ((ApplyTT @x8
@x9))
:qid @query.12))


;; def=StlcCbvDbPntSubstNoLists.fst(56,16-56,25); use=StlcCbvDbPntSubstNoLists.fst(56,16-56,25)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(56,16-56,25); use=StlcCbvDbPntSubstNoLists.fst(56,16-56,25)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(56,16-56,25); use=StlcCbvDbPntSubstNoLists.fst(56,16-56,25)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(56,16-56,25); use=StlcCbvDbPntSubstNoLists.fst(56,16-56,25)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2)))
)
)
label_2)
 
;;no pats
:qid @query.11)))
 
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
:qid @query.6)))
(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(50,9-50,20); use=StlcCbvDbPntSubstNoLists.fst(50,9-50,20)
(= (StlcCbvDbPntSubstNoLists.is_value @x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(50,9-62,27); use=StlcCbvDbPntSubstNoLists.fst(50,9-62,27)
(= (StlcCbvDbPntSubstNoLists.is_value @x1)
@x4)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(60,21-60,23)
(or label_3

;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(60,21-60,23)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(48,2-63,13); use=StlcCbvDbPntSubstNoLists.fst(60,21-60,23)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_0)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
StlcCbvDbPntSubstNoLists.exp)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(= @x1
@x5)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp))

;; def=StlcCbvDbPntSubstNoLists.fst(60,15-60,24); use=StlcCbvDbPntSubstNoLists.fst(60,15-60,24)
(= (StlcCbvDbPntSubstNoLists.step @x1)
@x6)
)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(forall ((@x8 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(48,2-63,13)
(ApplyTT @x7
@x8)
)

 

:pattern ((ApplyTT @x7
@x8))
:qid @query.17))


;; def=StlcCbvDbPntSubstNoLists.fst(60,15-60,24); use=StlcCbvDbPntSubstNoLists.fst(60,15-60,24)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(60,15-60,24); use=StlcCbvDbPntSubstNoLists.fst(60,15-60,24)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(60,15-60,24); use=StlcCbvDbPntSubstNoLists.fst(60,15-60,24)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(60,15-60,24); use=StlcCbvDbPntSubstNoLists.fst(60,15-60,24)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1)))
)
)
label_4)
 
;;no pats
:qid @query.16)))
 
;;no pats
:qid @query.15))
)
 
;;no pats
:qid @query.14))
)
)
 
;;no pats
:qid @query.13))
))
)
 
;;no pats
:qid @query.4)))
 
;;no pats
:qid @query.3))
)
 
;;no pats
:qid @query.2))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.step, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037, binder_x_7597dc0c465777776dc6eae797c43037_0, kinding_StlcCbvDbPntSubstNoLists.exp@tok, lemma_FStar.Pervasives.invertOption, subterm_ordering_StlcCbvDbPntSubstNoLists.EApp

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec step


; <Start encoding let rec step>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun StlcCbvDbPntSubstNoLists.step.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun StlcCbvDbPntSubstNoLists.step.fuel_instrumented_token () Term)
(declare-fun StlcCbvDbPntSubstNoLists.step (Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.step@tok () Term)
;;;;;;;;;;;;;;;;e: exp -> FStar.Pervasives.Native.option exp
(declare-fun Tm_arrow_d46fbe06c2dce73a2566846671046a1f () Term)

; </end encoding let rec step>


; encoding sigelt let env


; <Start encoding let env>

(declare-fun StlcCbvDbPntSubstNoLists.env () Term)
;;;;;;;;;;;;;;;;_: var -> FStar.Pervasives.Native.option ty
(declare-fun Tm_arrow_6e22b554ceab0fc313a719dc8bc73251 () Term)

; </end encoding let env>


; encoding sigelt val StlcCbvDbPntSubstNoLists.empty


; <Skipped val StlcCbvDbPntSubstNoLists.empty/>


; encoding sigelt let empty


; <Start encoding let empty>

(declare-fun StlcCbvDbPntSubstNoLists.empty (Dummy_sort) Term)

; </end encoding let empty>


; encoding sigelt val StlcCbvDbPntSubstNoLists.extend


; <Skipped val StlcCbvDbPntSubstNoLists.extend/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.env; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.env
Tm_type)
:named typing_StlcCbvDbPntSubstNoLists.env))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.env; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType Tm_arrow_6e22b554ceab0fc313a719dc8bc73251
Tm_type)
:named kinding_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.env; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType StlcCbvDbPntSubstNoLists.env
Tm_type)
:named function_token_typing_StlcCbvDbPntSubstNoLists.env))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.env
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.env; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= StlcCbvDbPntSubstNoLists.env
Tm_arrow_6e22b554ceab0fc313a719dc8bc73251)
:named equation_StlcCbvDbPntSubstNoLists.env))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.env; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(65,11-65,33); use=StlcCbvDbPntSubstNoLists.fst(65,11-65,33)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6e22b554ceab0fc313a719dc8bc73251)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.env; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(65,11-65,33); use=StlcCbvDbPntSubstNoLists.fst(65,11-65,33)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6e22b554ceab0fc313a719dc8bc73251)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(65,11-65,33); use=StlcCbvDbPntSubstNoLists.fst(65,11-65,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType (ApplyTT @x0
@x1)
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_6e22b554ceab0fc313a719dc8bc73251))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(71,21-73,33)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (g: StlcCbvDbPntSubstNoLists.env)
;   (x: StlcCbvDbPntSubstNoLists.var)
;   (t: StlcCbvDbPntSubstNoLists.ty)
;   (y: StlcCbvDbPntSubstNoLists.var).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)).
;     (forall (x: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty).
;         {:pattern Prims.guard_free (k x)}
;         Prims.auto_squash (k x)) ==>
;     ~(y < x = true) ==>
;     (forall (b: Prims.bool).
;         y < x == b ==>
;         Prims.hasEq StlcCbvDbPntSubstNoLists.var /\
;         (forall (any_result: Type0).
;             StlcCbvDbPntSubstNoLists.var == any_result ==>
;             (forall (any_result: Prims.bool).
;                 y = x == any_result ==>
;                 (forall (k:
;                     Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)).
;                     (forall (x: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty).
;                         {:pattern Prims.guard_free (k x)}
;                         Prims.auto_squash (k x)) ==>
;                     ~(y = x = true) ==> (forall (b: Prims.bool). y = x == b ==> y - 1 >= 0)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let extend`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
StlcCbvDbPntSubstNoLists.var))
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x5 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(ApplyTT @x4
@x5)
)

 

:pattern ((ApplyTT @x4
@x5))
:qid @query.2))


;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(71,24-71,29); use=StlcCbvDbPntSubstNoLists.fst(71,24-71,29)
(= (Prims.op_LessThan @x3
@x1)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(71,24-73,33); use=StlcCbvDbPntSubstNoLists.fst(71,24-73,33)
(= (Prims.op_LessThan @x3
@x1)
@x5)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(and 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(72,33-72,34)
(or label_1

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(72,33-72,34)
(Valid 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(72,33-72,34)
(Prims.hasEq StlcCbvDbPntSubstNoLists.var)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_type)

;; def=Prims.fst(588,31-588,32); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(= StlcCbvDbPntSubstNoLists.var
@x6)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(72,29-72,34); use=StlcCbvDbPntSubstNoLists.fst(72,29-72,34)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x3
@x1)
@x7)
)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.pure_post (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x9 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(ApplyTT @x8
@x9)
)

 

:pattern ((ApplyTT @x8
@x9))
:qid @query.7))


;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(72,29-72,34); use=StlcCbvDbPntSubstNoLists.fst(72,29-72,34)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x3
@x1)
(BoxBool true))
)
)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(72,29-73,33); use=StlcCbvDbPntSubstNoLists.fst(72,29-73,33)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x3
@x1)
@x9)
)

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(73,28-73,33)
(or label_2

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(73,28-73,33)
(>= (BoxInt_proj_0 (Prims.op_Subtraction @x3
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)
)
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.6)))
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))
)
)
 
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (StlcCbvDbPntSubstNoLists.extend, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.var, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_Subtraction, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let extend


; <Start encoding let extend>

(declare-fun StlcCbvDbPntSubstNoLists.extend (Term Term Term) Term)
;;;;;;;;;;;;;;;;g: env -> x: var -> t: ty -> env
(declare-fun Tm_arrow_08ba57086ef90eecb173c22080c51965 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.extend@tok () Term)

(declare-fun Tm_abs_bb5dcb84faf64402e65d56a8e18c7515 (Term Term Term) Term)

; </end encoding let extend>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; Starting query at StlcCbvDbPntSubstNoLists.fst(75,5-92,38)

(declare-fun StlcCbvDbPntSubstNoLists.rtyping (Term Term Term) Term)
;;;;;;;;;;;;;;;;_: env -> _: exp -> _: ty -> Type
(declare-fun Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f
Tm_type)
:named kinding_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,20-75,44); use=StlcCbvDbPntSubstNoLists.fst(75,20-75,44)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,20-75,44); use=StlcCbvDbPntSubstNoLists.fst(75,20-75,44)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(75,20-75,44); use=StlcCbvDbPntSubstNoLists.fst(75,20-75,44)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(75,20-75,44); use=StlcCbvDbPntSubstNoLists.fst(75,20-75,44)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f.2))


;; def=StlcCbvDbPntSubstNoLists.fst(75,20-75,44); use=StlcCbvDbPntSubstNoLists.fst(75,20-75,44)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))
(declare-fun StlcCbvDbPntSubstNoLists.rtyping@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0)
@x1)
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0)
@x1)
@x2))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.rtyping))

:named token_correspondence_StlcCbvDbPntSubstNoLists.rtyping))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.rtyping@tok
Tm_arrow_7d9c3019e6d5a91b663fe6a6cf7ed05f))

;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x1)
@x2)
@x3)
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
@x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
@x3))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.rtyping.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.rtyping@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.rtyping))

:named function_token_typing_StlcCbvDbPntSubstNoLists.rtyping))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty))
(HasType (StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2)
Tm_type))
 

:pattern ((StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
:qid typing_StlcCbvDbPntSubstNoLists.rtyping))

:named typing_StlcCbvDbPntSubstNoLists.rtyping))
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4cd961d487f7cbe11af5091d80b9e58b (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,30)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))

:named refinement_kinding_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x2))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(77,18-77,29)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x2
@x1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x2)))
:qid refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))

:named refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4cd961d487f7cbe11af5091d80b9e58b
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,30)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.var)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0))))
:qid haseqTm_refine_4cd961d487f7cbe11af5091d80b9e58b))

:named haseqTm_refine_4cd961d487f7cbe11af5091d80b9e58b))

; Encoding query formula : forall (g: StlcCbvDbPntSubstNoLists.env) (x: StlcCbvDbPntSubstNoLists.var{Some? (g x)}).
;   (*  - Subtyping check failed
;   - Expected type _: FStar.Pervasives.Native.option ty {Some? _}
;     got type FStar.Pervasives.Native.option ty
; *)
;   Some? (g x)


; Context: While encoding a query
; While typechecking the top-level declaration `type StlcCbvDbPntSubstNoLists.rtyping`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)))

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(78,42-78,47)
(or label_1

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(78,42-78,47)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x0
@x1)))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.rtyping, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type StlcCbvDbPntSubstNoLists.rtyping


; <Start encoding type StlcCbvDbPntSubstNoLists.rtyping>

;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.rtyping (Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun StlcCbvDbPntSubstNoLists.rtyping@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.TyVar (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyVar_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyVar_x (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.TyVar
(declare-fun StlcCbvDbPntSubstNoLists.TyVar@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs_t (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs_e1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs_t_ (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs__4 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.TyAbs
(declare-fun StlcCbvDbPntSubstNoLists.TyAbs@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun StlcCbvDbPntSubstNoLists.TyApp (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp_g (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp_e1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp_e2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp_t11 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp_t12 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp__5 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun StlcCbvDbPntSubstNoLists.TyApp__6 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: StlcCbvDbPntSubstNoLists.TyApp
(declare-fun StlcCbvDbPntSubstNoLists.TyApp@tok () Term)
(declare-fun Tm_refine_4cd961d487f7cbe11af5091d80b9e58b (Term) Term)

;;;;;;;;;;;;;;;;x: var{Some? (g x)} -> rtyping g (EVar x) (g x).v
(declare-fun Tm_arrow_1521f8431a88015908da25e17986cdc8 () Term)
;;;;;;;;;;;;;;;;t: ty -> _4: rtyping (extend g 0 t) e1 t' -> rtyping g (EAbs t e1) (TArrow t t')
(declare-fun Tm_arrow_f1ca977f561d0742b8a95c83c2b47fed () Term)
;;;;;;;;;;;;;;;;_5: rtyping g e1 (TArrow t11 t12) -> _6: rtyping g e2 t11 -> rtyping g (EApp e1 e2) t12
(declare-fun Tm_arrow_3d9ac65b98afa2a4a2e0e7c51b70dd01 () Term)

; <start constructor StlcCbvDbPntSubstNoLists.rtyping>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.rtyping ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
256)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
 
;;no pats
:qid is-StlcCbvDbPntSubstNoLists.rtyping))))

; </end constructor StlcCbvDbPntSubstNoLists.rtyping>


; <start constructor StlcCbvDbPntSubstNoLists.TyVar>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.TyVar ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
264)
(= __@x0
(StlcCbvDbPntSubstNoLists.TyVar (StlcCbvDbPntSubstNoLists.TyVar_g __@x0)
(StlcCbvDbPntSubstNoLists.TyVar_x __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.TyVar>


; <start constructor StlcCbvDbPntSubstNoLists.TyAbs>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.TyAbs ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
273)
(= __@x0
(StlcCbvDbPntSubstNoLists.TyAbs (StlcCbvDbPntSubstNoLists.TyAbs_g __@x0)
(StlcCbvDbPntSubstNoLists.TyAbs_t __@x0)
(StlcCbvDbPntSubstNoLists.TyAbs_e1 __@x0)
(StlcCbvDbPntSubstNoLists.TyAbs_t_ __@x0)
(StlcCbvDbPntSubstNoLists.TyAbs__4 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.TyAbs>


; <start constructor StlcCbvDbPntSubstNoLists.TyApp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-StlcCbvDbPntSubstNoLists.TyApp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
281)
(= __@x0
(StlcCbvDbPntSubstNoLists.TyApp (StlcCbvDbPntSubstNoLists.TyApp_g __@x0)
(StlcCbvDbPntSubstNoLists.TyApp_e1 __@x0)
(StlcCbvDbPntSubstNoLists.TyApp_e2 __@x0)
(StlcCbvDbPntSubstNoLists.TyApp_t11 __@x0)
(StlcCbvDbPntSubstNoLists.TyApp_t12 __@x0)
(StlcCbvDbPntSubstNoLists.TyApp__5 __@x0)
(StlcCbvDbPntSubstNoLists.TyApp__6 __@x0)))))

; </end constructor StlcCbvDbPntSubstNoLists.TyApp>


; </end encoding type StlcCbvDbPntSubstNoLists.rtyping>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_TyVar


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_TyVar>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TyVar (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: rtyping _ _ _ -> Prims.bool
(declare-fun Tm_arrow_72d1ddeb503a762ecc4bf9e0e72d847d () Term)
(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TyVar@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_TyVar>


; encoding sigelt let uu___is_TyVar


; <Skipped let uu___is_TyVar/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g>

(declare-fun Tm_refine_4a45eaafbd1e608025e81692345ae7ec (Term Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyVar? _} -> env
(declare-fun Tm_arrow_f82c844e5b2cc4049ac60ef292b9cb7d () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g>

;;;;;;;;;;;;;;;;typing_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(71,21-73,33); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_bb5dcb84faf64402e65d56a8e18c7515 @x0
@x1
@x2)
Tm_arrow_6e22b554ceab0fc313a719dc8bc73251)
 

:pattern ((Tm_abs_bb5dcb84faf64402e65d56a8e18c7515 @x0
@x1
@x2))
:qid typing_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515))

:named typing_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_TyVar; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.uu___is_TyVar))

:named typing_StlcCbvDbPntSubstNoLists.uu___is_TyVar))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(71,4-71,10); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty))
(HasType (StlcCbvDbPntSubstNoLists.extend @x0
@x1
@x2)
StlcCbvDbPntSubstNoLists.env))
 

:pattern ((StlcCbvDbPntSubstNoLists.extend @x0
@x1
@x2))
:qid typing_StlcCbvDbPntSubstNoLists.extend))

:named typing_StlcCbvDbPntSubstNoLists.extend))
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
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0)
@x1)
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0)
@x1)
@x2))

:pattern ((StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.rtyping@tok))

:named token_correspondence_StlcCbvDbPntSubstNoLists.rtyping@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x3
@x4
@x5))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x3
@x4
@x5)))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.TyVar))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.TyVar))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x8
@x9
@x10))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x7
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x8
@x9
@x10)))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.TyApp))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.TyApp))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x6
@x7
@x8))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x6
@x7
@x8)))
:qid subterm_ordering_StlcCbvDbPntSubstNoLists.TyAbs))

:named subterm_ordering_StlcCbvDbPntSubstNoLists.TyAbs))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,30)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))

:named refinement_kinding_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_4a45eaafbd1e608025e81692345ae7ec))

:named refinement_kinding_Tm_refine_4a45eaafbd1e608025e81692345ae7ec))
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
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x2))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(77,18-77,29)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x2
@x1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x2)))
:qid refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))

:named refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar @x2
@x3
@x4
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_4a45eaafbd1e608025e81692345ae7ec))

:named refinement_interpretation_Tm_refine_4a45eaafbd1e608025e81692345ae7ec))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyVar_x (StlcCbvDbPntSubstNoLists.TyVar @x0
@x1))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyVar @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyVar_x))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyVar_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyVar_g (StlcCbvDbPntSubstNoLists.TyVar @x0
@x1))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyVar @x0
@x1))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyVar_g))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyVar_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp_t12 (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x4)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_t12))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_t12))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp_t11 (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x3)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_t11))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_t11))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp_g (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_g))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp_e2 (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x2)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_e2))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_e2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp_e1 (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_e1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_e1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp__6 (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x6)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp__6))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp__6))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyApp__5 (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x5)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyApp__5))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyApp__5))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyAbs_t_ (StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
@x3)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t_))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t_))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyAbs_t (StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
@x1)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyAbs_g (StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
@x0)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_g))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_g))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyAbs_e1 (StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
@x2)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_e1))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_e1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.TyAbs__4 (StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
@x4)
 

:pattern ((StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs__4))

:named projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs__4))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! (is-Tm_arrow (PreType StlcCbvDbPntSubstNoLists.rtyping@tok))
:named pre_kinding_StlcCbvDbPntSubstNoLists.rtyping@tok))
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! (and (IsTotFun StlcCbvDbPntSubstNoLists.rtyping@tok)

;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0))
 

:pattern ((ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0))
:qid kinding_StlcCbvDbPntSubstNoLists.rtyping@tok))


;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.rtyping@tok
@x0)
@x1))
:qid kinding_StlcCbvDbPntSubstNoLists.rtyping@tok.1))


;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty))
(HasType (StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2)
Tm_type))
 

:pattern ((StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
:qid kinding_StlcCbvDbPntSubstNoLists.rtyping@tok.2))
)
:named kinding_StlcCbvDbPntSubstNoLists.rtyping@tok))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(71,21-73,33); use=StlcCbvDbPntSubstNoLists.fst(71,21-73,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_bb5dcb84faf64402e65d56a8e18c7515 @x1
@x2
@x3)
@x0)
(let ((@lb4 (Prims.op_LessThan @x0
@x3)))
(ite (= @lb4
(BoxBool true))
(ApplyTT @x1
@x0)
(let ((@lb5 (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x0
@x3)))
(ite (= @lb5
(BoxBool true))
(FStar.Pervasives.Native.Some StlcCbvDbPntSubstNoLists.ty
@x2)
(ApplyTT @x1
(Prims.op_Subtraction @x0
(BoxInt 1))))))))
 

:pattern ((ApplyTT (Tm_abs_bb5dcb84faf64402e65d56a8e18c7515 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515))

:named interpretation_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_4cd961d487f7cbe11af5091d80b9e58b
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,30)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.var)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x0))))
:qid haseqTm_refine_4cd961d487f7cbe11af5091d80b9e58b))

:named haseqTm_refine_4cd961d487f7cbe11af5091d80b9e58b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4a45eaafbd1e608025e81692345ae7ec
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x0
@x1
@x2)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x0
@x1
@x2))))
:qid haseqTm_refine_4a45eaafbd1e608025e81692345ae7ec))

:named haseqTm_refine_4a45eaafbd1e608025e81692345ae7ec))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4))
(or (and (is-StlcCbvDbPntSubstNoLists.TyVar @x1)
(= @x2
(StlcCbvDbPntSubstNoLists.TyVar_g @x1))
(= @x3
(StlcCbvDbPntSubstNoLists.EVar (StlcCbvDbPntSubstNoLists.TyVar_x @x1)))
(= @x4
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT (StlcCbvDbPntSubstNoLists.TyVar_g @x1)
(StlcCbvDbPntSubstNoLists.TyVar_x @x1)))))
(and (is-StlcCbvDbPntSubstNoLists.TyAbs @x1)
(= @x2
(StlcCbvDbPntSubstNoLists.TyAbs_g @x1))
(= @x3
(StlcCbvDbPntSubstNoLists.EAbs (StlcCbvDbPntSubstNoLists.TyAbs_t @x1)
(StlcCbvDbPntSubstNoLists.TyAbs_e1 @x1)))
(= @x4
(StlcCbvDbPntSubstNoLists.TArrow (StlcCbvDbPntSubstNoLists.TyAbs_t @x1)
(StlcCbvDbPntSubstNoLists.TyAbs_t_ @x1))))
(and (is-StlcCbvDbPntSubstNoLists.TyApp @x1)
(= @x2
(StlcCbvDbPntSubstNoLists.TyApp_g @x1))
(= @x3
(StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.TyApp_e1 @x1)
(StlcCbvDbPntSubstNoLists.TyApp_e2 @x1)))
(= @x4
(StlcCbvDbPntSubstNoLists.TyApp_t12 @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4)))
:qid fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping))

:named fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! (= 257
(Term_constr_id StlcCbvDbPntSubstNoLists.rtyping@tok))
:named fresh_token_StlcCbvDbPntSubstNoLists.rtyping@tok))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.extend
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(71,4-71,10); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (StlcCbvDbPntSubstNoLists.extend @x0
@x1
@x2)
(Tm_abs_bb5dcb84faf64402e65d56a8e18c7515 @x0
@x2
@x1))
 

:pattern ((StlcCbvDbPntSubstNoLists.extend @x0
@x1
@x2))
:qid equation_StlcCbvDbPntSubstNoLists.extend))

:named equation_StlcCbvDbPntSubstNoLists.extend))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_TyVar; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
@x3)
(BoxBool (is-StlcCbvDbPntSubstNoLists.TyVar @x3)))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
@x3))
:qid disc_equation_StlcCbvDbPntSubstNoLists.TyVar))

:named disc_equation_StlcCbvDbPntSubstNoLists.TyVar))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)
(HasTypeFuel @u0
@x2
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x1))
(= @x1
@x3)
(= (StlcCbvDbPntSubstNoLists.EVar @x2)
@x4)
(= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x1
@x2))
@x5))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x3
@x4
@x5)))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x3
@x4
@x5)))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.TyVar@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.TyVar@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x3
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x4
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x5
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x6
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))
(HasTypeFuel @u0
@x7
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x3
@x4))
(= @x1
@x8)
(= (StlcCbvDbPntSubstNoLists.EApp @x2
@x3)
@x9)
(= @x5
@x10))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x8
@x9
@x10)))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x8
@x9
@x10)))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.TyApp@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.TyApp@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x3
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x4
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x5
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x3
@x4))
(= @x1
@x6)
(= (StlcCbvDbPntSubstNoLists.EAbs @x2
@x3)
@x7)
(= (StlcCbvDbPntSubstNoLists.TArrow @x2
@x4)
@x8))
(HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x6
@x7
@x8)))
 

:pattern ((HasTypeFuel @u0
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x6
@x7
@x8)))
:qid data_typing_intro_StlcCbvDbPntSubstNoLists.TyAbs@tok))

:named data_typing_intro_StlcCbvDbPntSubstNoLists.TyAbs@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x3
@x4
@x5))
(and (= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x1
@x2))
@x5)
(= (StlcCbvDbPntSubstNoLists.EVar @x2)
@x4)
(= @x1
@x3)
(HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)
(HasTypeFuel @u0
@x2
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping @x3
@x4
@x5)))
:qid data_elim_StlcCbvDbPntSubstNoLists.TyVar))

:named data_elim_StlcCbvDbPntSubstNoLists.TyVar))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x8
@x9
@x10))
(and (= @x5
@x10)
(= (StlcCbvDbPntSubstNoLists.EApp @x2
@x3)
@x9)
(= @x1
@x8)
(HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x3
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x4
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x5
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x6
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))
(HasTypeFuel @u0
@x7
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x3
@x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x8
@x9
@x10)))
:qid data_elim_StlcCbvDbPntSubstNoLists.TyApp))

:named data_elim_StlcCbvDbPntSubstNoLists.TyApp))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x6
@x7
@x8))
(and (= (StlcCbvDbPntSubstNoLists.TArrow @x2
@x4)
@x8)
(= (StlcCbvDbPntSubstNoLists.EAbs @x2
@x3)
@x7)
(= @x1
@x6)
(HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)
(HasTypeFuel @u0
@x2
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x3
StlcCbvDbPntSubstNoLists.exp)
(HasTypeFuel @u0
@x4
StlcCbvDbPntSubstNoLists.ty)
(HasTypeFuel @u0
@x5
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x3
@x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x6
@x7
@x8)))
:qid data_elim_StlcCbvDbPntSubstNoLists.TyAbs))

:named data_elim_StlcCbvDbPntSubstNoLists.TyAbs))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 256
(Term_constr_id (StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2)))
 

:pattern ((StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.rtyping))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.rtyping))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 264
(Term_constr_id (StlcCbvDbPntSubstNoLists.TyVar @x0
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.TyVar @x0
@x1))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.TyVar))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.TyVar))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= 281
(Term_constr_id (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
 

:pattern ((StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.TyApp))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.TyApp))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 273
(Term_constr_id (StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((StlcCbvDbPntSubstNoLists.TyAbs @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_StlcCbvDbPntSubstNoLists.TyAbs))

:named constructor_distinct_StlcCbvDbPntSubstNoLists.TyAbs))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.rtyping; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyVar; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyAbs; Namespace StlcCbvDbPntSubstNoLists; Name StlcCbvDbPntSubstNoLists.TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(75,10-75,17); use=StlcCbvDbPntSubstNoLists.fst(75,10-75,17)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u1
@x0
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4))
(= (StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4)))
:qid StlcCbvDbPntSubstNoLists_pretyping_4a433cb8d6dcff007a0359f742a7c5db))

:named StlcCbvDbPntSubstNoLists_pretyping_4a433cb8d6dcff007a0359f742a7c5db))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(76,13-76,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyVar? _}).
;   (*  - Could not prove post-condition
; *) ~(TyVar? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyVar__item__g`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,13-76,14)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,13-76,14)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyVar__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4a45eaafbd1e608025e81692345ae7ec

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyVar__item__g


; <Skipped let __proj__TyVar__item__g/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyVar__item__x


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyVar__item__x>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyVar__item__x (Term Term Term Term) Term)

(declare-fun Tm_refine_86154a4123716a7411b9f077fade6dc3 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyVar? _} -> x: var{Some? (projectee.g x)}
(declare-fun Tm_arrow_99435ad7dd61b2c2d3b666cdec37b53f () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyVar__item__x@tok () Term)



; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyVar__item__x>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(77,12-77,13)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyVar? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(TyVar? projectee) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.env) (b: x: StlcCbvDbPntSubstNoLists.var{Some? (b x)}).
;       projectee == StlcCbvDbPntSubstNoLists.TyVar b ==>
;       (forall (x: StlcCbvDbPntSubstNoLists.var).
;           (*  - Subtyping check failed
;   - Expected type _: rtyping _ _ _ {TyVar? _}
;     got type rtyping g (EVar x) (g x).v
; *)
;           StlcCbvDbPntSubstNoLists.EVar b == _ /\ ((b b).v == _) /\ (b == _) /\
;           TyVar? (StlcCbvDbPntSubstNoLists.TyVar b)))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyVar__item__x`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_4a45eaafbd1e608025e81692345ae7ec @x0
@x1
@x2)))

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
@x3))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x4))

;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(= @x3
(StlcCbvDbPntSubstNoLists.TyVar @x4
@x5))
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(forall ((@x6 Term))
 (! (implies (HasType @x6
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(or label_2

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(= (StlcCbvDbPntSubstNoLists.EVar @x5)
@x1)
)


;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(or label_3

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x4
@x5))
@x2)
)


;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(or label_4

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(76,4-76,9)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(76,4-76,9); use=StlcCbvDbPntSubstNoLists.fst(77,12-77,13)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyVar @x4
@x5)))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyVar__item__x, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_StlcCbvDbPntSubstNoLists.TyVar, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, refinement_interpretation_Tm_refine_4a45eaafbd1e608025e81692345ae7ec

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyVar__item__x


; <Skipped let __proj__TyVar__item__x/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_TyAbs


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_TyAbs>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TyAbs (Term Term Term Term) Term)

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TyAbs@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_TyAbs>


; encoding sigelt let uu___is_TyAbs


; <Skipped let uu___is_TyAbs/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g>

(declare-fun Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 (Term Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyAbs? _} -> env
(declare-fun Tm_arrow_2760a1cfb4f4ef0530241ec27716c634 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_TyAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.uu___is_TyAbs))

:named typing_StlcCbvDbPntSubstNoLists.uu___is_TyAbs))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1))

:named refinement_kinding_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x2
@x3
@x4
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1))

:named refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_32ff09c8e12b84241dd4caba0335b6f1
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))))
:qid haseqTm_refine_32ff09c8e12b84241dd4caba0335b6f1))

:named haseqTm_refine_32ff09c8e12b84241dd4caba0335b6f1))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_TyAbs; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3)
(BoxBool (is-StlcCbvDbPntSubstNoLists.TyAbs @x3)))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
:qid disc_equation_StlcCbvDbPntSubstNoLists.TyAbs))

:named disc_equation_StlcCbvDbPntSubstNoLists.TyAbs))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(79,13-79,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;   (*  - Could not prove post-condition
; *) ~(TyAbs? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyAbs__item__g`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,13-79,14)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,13-79,14)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyAbs__item__g


; <Skipped let __proj__TyAbs__item__g/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyAbs? _} -> ty
(declare-fun Tm_arrow_3f4347eed845a2872353a3d42481cb6e () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(80,12-80,13)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;   (*  - Could not prove post-condition
; *) ~(TyAbs? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyAbs__item__t`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(80,12-80,13)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(80,12-80,13)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyAbs__item__t


; <Skipped let __proj__TyAbs__item__t/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyAbs? _} -> exp
(declare-fun Tm_arrow_8bb73135f32d462ef01268ec3bc38739 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(81,13-81,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;   (*  - Could not prove post-condition
; *) ~(TyAbs? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyAbs__item__e1`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(81,13-81,15)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(81,13-81,15)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyAbs__item__e1


; <Skipped let __proj__TyAbs__item__e1/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t'


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t'>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t_ (Term Term Term Term) Term)


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t_@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t'>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(82,13-82,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;   (*  - Could not prove post-condition
; *) ~(TyAbs? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyAbs__item__t'`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(82,13-82,15)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(82,13-82,15)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t', 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyAbs__item__t'


; <Skipped let __proj__TyAbs__item__t'/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item___4


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item___4>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item___4 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyAbs? _}   -> rtyping (extend projectee.g 0 projectee.t) projectee.e1 projectee.t'
(declare-fun Tm_arrow_a0fb76cfd9106df568e3c2428d938d8e () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyAbs__item___4@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyAbs__item___4>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(80,12-80,13); use=StlcCbvDbPntSubstNoLists.fst(80,12-80,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.ty))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,13-79,14); use=StlcCbvDbPntSubstNoLists.fst(79,13-79,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.env))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(81,13-81,15); use=StlcCbvDbPntSubstNoLists.fst(81,13-81,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1 @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1 @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(80,12-80,13); use=StlcCbvDbPntSubstNoLists.fst(80,12-80,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyAbs_t @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_t))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_t))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(79,13-79,14); use=StlcCbvDbPntSubstNoLists.fst(79,13-79,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyAbs_g @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_g))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_g))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(81,13-81,15); use=StlcCbvDbPntSubstNoLists.fst(81,13-81,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1 @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyAbs_e1 @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1 @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_e1))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_e1))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

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





; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(TyAbs? projectee) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.env)
;       (b: StlcCbvDbPntSubstNoLists.ty)
;       (b: StlcCbvDbPntSubstNoLists.exp)
;       (b: StlcCbvDbPntSubstNoLists.ty)
;       (b: StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;       projectee == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;       StlcCbvDbPntSubstNoLists.EAbs b b == _ /\
;       (StlcCbvDbPntSubstNoLists.TArrow b b == _) /\ (b == _) /\
;       TyAbs? (StlcCbvDbPntSubstNoLists.TyAbs b b) /\
;       (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;           return_val == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;           (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;               (StlcCbvDbPntSubstNoLists.TyAbs b b).g == any_result ==>
;               StlcCbvDbPntSubstNoLists.EAbs b b == _ /\
;               (StlcCbvDbPntSubstNoLists.TArrow b b == _) /\ (b == _) /\
;               TyAbs? (StlcCbvDbPntSubstNoLists.TyAbs b b) /\
;               (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _}).
;                   return_val == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;                   (forall (any_result: StlcCbvDbPntSubstNoLists.ty).
;                       (StlcCbvDbPntSubstNoLists.TyAbs b b).t == any_result ==>
;                       (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;                           StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.TyAbs b b).g
;                             0
;                             (StlcCbvDbPntSubstNoLists.TyAbs b b).t ==
;                           any_result ==>
;                           StlcCbvDbPntSubstNoLists.EAbs b b == _ /\
;                           (StlcCbvDbPntSubstNoLists.TArrow b b == _) /\ (b == _) /\
;                           TyAbs? (StlcCbvDbPntSubstNoLists.TyAbs b b) /\
;                           (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyAbs? _})
;                             .
;                               return_val == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;                               (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                                   (StlcCbvDbPntSubstNoLists.TyAbs b b).e1 == any_result ==>
;                                   StlcCbvDbPntSubstNoLists.EAbs b b == _ /\
;                                   (StlcCbvDbPntSubstNoLists.TArrow b b == _) /\ (b == _) /\
;                                   TyAbs? (StlcCbvDbPntSubstNoLists.TyAbs b b)))))))) /\
;       StlcCbvDbPntSubstNoLists.extend b 0 b ==
;       StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.TyAbs b b).g
;         0
;         (StlcCbvDbPntSubstNoLists.TyAbs b b).t)


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyAbs__item___4`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
@x3))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x4
(BoxInt 0)
@x5)
@x6
@x7))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= @x3
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_2

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.EAbs @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_3

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.TArrow @x5
@x7)
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_4

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x9
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
StlcCbvDbPntSubstNoLists.env)
(= (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
@x10))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_6

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.EAbs @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_7

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.TArrow @x5
@x7)
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_8

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_9

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x11
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
StlcCbvDbPntSubstNoLists.ty)
(= (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
@x12))

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
StlcCbvDbPntSubstNoLists.env)
(= (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8)))
@x13))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_10

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.EAbs @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_11

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.TArrow @x5
@x7)
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_12

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_13

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_32ff09c8e12b84241dd4caba0335b6f1 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x14
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
StlcCbvDbPntSubstNoLists.exp)
(= (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__e1 @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
@x15))

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_14

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.EAbs @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_15

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= (StlcCbvDbPntSubstNoLists.TArrow @x5
@x7)
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_16

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(or label_17

;; def=StlcCbvDbPntSubstNoLists.fst(79,4-79,9); use=StlcCbvDbPntSubstNoLists.fst(79,4-79,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8)))
)
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


;; def=StlcCbvDbPntSubstNoLists.fst(83,20-83,34); use=dummy(0,0-0,0)
(or label_18

;; def=StlcCbvDbPntSubstNoLists.fst(83,20-83,34); use=StlcCbvDbPntSubstNoLists.fst(83,20-83,34)
(= (StlcCbvDbPntSubstNoLists.extend @x4
(BoxInt 0)
@x5)
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__g @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.__proj__TyAbs__item__t @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyAbs @x4
@x5
@x6
@x7
@x8))))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyAbs__item___4, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_StlcCbvDbPntSubstNoLists.TyAbs, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_g, proj_equation_StlcCbvDbPntSubstNoLists.TyAbs_t, projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_g, projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t, refinement_interpretation_Tm_refine_32ff09c8e12b84241dd4caba0335b6f1

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyAbs__item___4


; <Skipped let __proj__TyAbs__item___4/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.uu___is_TyApp


; <Start encoding val StlcCbvDbPntSubstNoLists.uu___is_TyApp>

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TyApp (Term Term Term Term) Term)

(declare-fun StlcCbvDbPntSubstNoLists.uu___is_TyApp@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.uu___is_TyApp>


; encoding sigelt let uu___is_TyApp


; <Skipped let uu___is_TyApp/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g>

(declare-fun Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 (Term Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyApp? _} -> env
(declare-fun Tm_arrow_a689303e867cd8ff3609e075d7e9d272 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.uu___is_TyApp))

:named typing_StlcCbvDbPntSubstNoLists.uu___is_TyApp))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256))

:named refinement_kinding_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x2
@x3
@x4
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256))

:named refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256))
;;;;;;;;;;;;;;;;haseq for Tm_refine_fd894afd9f0e15ccd32c7abf71d65256
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
@x2))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))))
:qid haseqTm_refine_fd894afd9f0e15ccd32c7abf71d65256))

:named haseqTm_refine_fd894afd9f0e15ccd32c7abf71d65256))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.uu___is_TyApp; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3)
(BoxBool (is-StlcCbvDbPntSubstNoLists.TyApp @x3)))
 

:pattern ((StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
:qid disc_equation_StlcCbvDbPntSubstNoLists.TyApp))

:named disc_equation_StlcCbvDbPntSubstNoLists.TyApp))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(85,13-85,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *) ~(TyApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item__g`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,13-85,14)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,13-85,14)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item__g


; <Skipped let __proj__TyApp__item__g/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyApp? _} -> exp
(declare-fun Tm_arrow_a7f8d78b36ee32e1fc22fb07db262c4f () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(86,13-86,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *) ~(TyApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item__e1`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(86,13-86,15)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(86,13-86,15)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item__e1


; <Skipped let __proj__TyApp__item__e1/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2 (Term Term Term Term) Term)


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(87,13-87,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *) ~(TyApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item__e2`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(87,13-87,15)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(87,13-87,15)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item__e2


; <Skipped let __proj__TyApp__item__e2/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyApp? _} -> ty
(declare-fun Tm_arrow_42b57171efc76e696e0ec877aa55d51b () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(88,13-88,16)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *) ~(TyApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item__t11`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(88,13-88,16)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(88,13-88,16)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item__t11


; <Skipped let __proj__TyApp__item__t11/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t12


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t12>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t12 (Term Term Term Term) Term)


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t12@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t12>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(89,13-89,16)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *) ~(TyApp? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item__t12`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(89,13-89,16)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(89,13-89,16)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t12, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item__t12


; <Skipped let __proj__TyApp__item__t12/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item___5


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item___5>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item___5 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyApp? _}   -> rtyping projectee.g projectee.e1 (TArrow projectee.t11 projectee.t12)
(declare-fun Tm_arrow_4752c20fc80ad86755e82ba548e083b7 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item___5@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item___5>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(88,13-88,16); use=StlcCbvDbPntSubstNoLists.fst(88,13-88,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11 @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.ty))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11 @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,13-85,14); use=StlcCbvDbPntSubstNoLists.fst(85,13-85,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.env))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(86,13-86,15); use=StlcCbvDbPntSubstNoLists.fst(86,13-86,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1 @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1 @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(88,13-88,16); use=StlcCbvDbPntSubstNoLists.fst(88,13-88,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11 @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyApp_t11 @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11 @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyApp_t11))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyApp_t11))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(85,13-85,14); use=StlcCbvDbPntSubstNoLists.fst(85,13-85,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyApp_g @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyApp_g))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyApp_g))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(86,13-86,15); use=StlcCbvDbPntSubstNoLists.fst(86,13-86,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1 @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyApp_e1 @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1 @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyApp_e1))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyApp_e1))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

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





; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(TyApp? projectee) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.env)
;       (b: StlcCbvDbPntSubstNoLists.exp)
;       (b: StlcCbvDbPntSubstNoLists.exp)
;       (b: StlcCbvDbPntSubstNoLists.ty)
;       (b: StlcCbvDbPntSubstNoLists.ty)
;       (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;       (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;       projectee == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;       StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;       TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b) /\
;       (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;           return_val == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;           (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;               (StlcCbvDbPntSubstNoLists.TyApp b b).g == any_result ==>
;               StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;               TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b) /\
;               (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;                   return_val == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;                   (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                       (StlcCbvDbPntSubstNoLists.TyApp b b).e1 == any_result ==>
;                       StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;                       TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b) /\
;                       (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;                           return_val == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;                           (forall (any_result: StlcCbvDbPntSubstNoLists.ty).
;                               (StlcCbvDbPntSubstNoLists.TyApp b b).t11 == any_result ==>
;                               StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;                               TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item___5`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x8 Term))
 (! (implies (HasType @x8
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x5
(StlcCbvDbPntSubstNoLists.TArrow @x7
@x8)))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x6
@x7))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x3
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_2

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_3

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_4

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x11
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
StlcCbvDbPntSubstNoLists.env)
(= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
@x12))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_6

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_7

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_8

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_9

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x13
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
StlcCbvDbPntSubstNoLists.exp)
(= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e1 @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
@x14))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_10

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_11

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_12

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_13

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x15
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
StlcCbvDbPntSubstNoLists.ty)

;; def=StlcCbvDbPntSubstNoLists.fst(20,13-85,9); use=StlcCbvDbPntSubstNoLists.fst(20,13-85,9)
(= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__t11 @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
@x16)
)

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_14

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_15

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_16

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_17

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item___5, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_StlcCbvDbPntSubstNoLists.TyApp, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item___5


; <Skipped let __proj__TyApp__item___5/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.__proj__TyApp__item___6


; <Start encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item___6>


(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item___6 (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: rtyping _ _ _ {TyApp? _} -> rtyping projectee.g projectee.e2 projectee.t11
(declare-fun Tm_arrow_e599b7563d8e511ef0519eafed660874 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.__proj__TyApp__item___6@tok () Term)

; </end encoding val StlcCbvDbPntSubstNoLists.__proj__TyApp__item___6>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(87,13-87,15); use=StlcCbvDbPntSubstNoLists.fst(87,13-87,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2 @x0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2 @x0
@x1
@x2
@x3))
:qid typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2))

:named typing_StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(87,13-87,15); use=StlcCbvDbPntSubstNoLists.fst(87,13-87,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2 @x0
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.TyApp_e2 @x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2 @x0
@x1
@x2
@x3))
:qid proj_equation_StlcCbvDbPntSubstNoLists.TyApp_e2))

:named proj_equation_StlcCbvDbPntSubstNoLists.TyApp_e2))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

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




; Encoding query formula : forall (_: StlcCbvDbPntSubstNoLists.env)
;   (_: StlcCbvDbPntSubstNoLists.exp)
;   (_: StlcCbvDbPntSubstNoLists.ty)
;   (projectee: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(TyApp? projectee) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.env)
;       (b: StlcCbvDbPntSubstNoLists.exp)
;       (b: StlcCbvDbPntSubstNoLists.exp)
;       (b: StlcCbvDbPntSubstNoLists.ty)
;       (b: StlcCbvDbPntSubstNoLists.ty)
;       (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;       (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;       projectee == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;       StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;       TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b) /\
;       (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;           return_val == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;           (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;               (StlcCbvDbPntSubstNoLists.TyApp b b).g == any_result ==>
;               StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;               TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b) /\
;               (forall (return_val: _: StlcCbvDbPntSubstNoLists.rtyping _ _ _ {TyApp? _}).
;                   return_val == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;                   (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                       (StlcCbvDbPntSubstNoLists.TyApp b b).e2 == any_result ==>
;                       StlcCbvDbPntSubstNoLists.EApp b b == _ /\ (b == _) /\ (b == _) /\
;                       TyApp? (StlcCbvDbPntSubstNoLists.TyApp b b))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__TyApp__item___6`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
@x3))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x8 Term))
 (! (implies (HasType @x8
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x5
(StlcCbvDbPntSubstNoLists.TArrow @x7
@x8)))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x6
@x7))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x3
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_2

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_3

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_4

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x11
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
StlcCbvDbPntSubstNoLists.env)
(= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__g @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
@x12))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_6

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_7

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_8

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_9

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(Tm_refine_fd894afd9f0e15ccd32c7abf71d65256 @x0
@x1
@x2))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x13
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
StlcCbvDbPntSubstNoLists.exp)
(= (StlcCbvDbPntSubstNoLists.__proj__TyApp__item__e2 @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10))
@x14))

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(and 
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_10

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= (StlcCbvDbPntSubstNoLists.EApp @x5
@x6)
@x1)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_11

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x8
@x2)
)


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_12

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(= @x4
@x0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(or label_13

;; def=StlcCbvDbPntSubstNoLists.fst(85,4-85,9); use=StlcCbvDbPntSubstNoLists.fst(85,4-85,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp @x0
@x1
@x2
(StlcCbvDbPntSubstNoLists.TyApp @x4
@x5
@x6
@x7
@x8
@x9
@x10)))
)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.__proj__TyApp__item___6, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_StlcCbvDbPntSubstNoLists.TyApp, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, refinement_interpretation_Tm_refine_fd894afd9f0e15ccd32c7abf71d65256

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__TyApp__item___6


; <Skipped let __proj__TyApp__item___6/>


; encoding sigelt val StlcCbvDbPntSubstNoLists.progress


; <Skipped val StlcCbvDbPntSubstNoLists.progress/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.subst_beta; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp))
(HasType (StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2))
:qid typing_StlcCbvDbPntSubstNoLists.subst_beta))

:named typing_StlcCbvDbPntSubstNoLists.subst_beta))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.step; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType (StlcCbvDbPntSubstNoLists.step @x0)
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((StlcCbvDbPntSubstNoLists.step @x0))
:qid typing_StlcCbvDbPntSubstNoLists.step))

:named typing_StlcCbvDbPntSubstNoLists.step))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.empty; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(68,4-68,9); use=StlcCbvDbPntSubstNoLists.fst(68,4-68,9)
(forall ((@u0 Dummy_sort))
 (! (HasType (StlcCbvDbPntSubstNoLists.empty @u0)
StlcCbvDbPntSubstNoLists.env)
 

:pattern ((StlcCbvDbPntSubstNoLists.empty @u0))
:qid typing_StlcCbvDbPntSubstNoLists.empty))

:named typing_StlcCbvDbPntSubstNoLists.empty))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.subst_beta; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp))
(HasType (StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented @u0
@x1
@x2
@x3)
StlcCbvDbPntSubstNoLists.exp))
 

:pattern ((StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))

:named token_correspondence_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.step; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType (StlcCbvDbPntSubstNoLists.step.fuel_instrumented @u0
@x1)
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp)))
 

:pattern ((StlcCbvDbPntSubstNoLists.step.fuel_instrumented @u0
@x1))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))

:named token_correspondence_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: StlcCbvDbPntSubstNoLists.subst_beta
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.subst_beta; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp))
(= (StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-StlcCbvDbPntSubstNoLists.EVar @lb4)
(let ((@lb5 (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
(StlcCbvDbPntSubstNoLists.EVar__0 @lb4)
@x1)))
(ite (= @lb5
(BoxBool true))
@x2
(let ((@lb6 (Prims.op_LessThan (StlcCbvDbPntSubstNoLists.EVar__0 @lb4)
@x1)))
(ite (= @lb6
(BoxBool true))
(StlcCbvDbPntSubstNoLists.EVar (StlcCbvDbPntSubstNoLists.EVar__0 @lb4))
(StlcCbvDbPntSubstNoLists.EVar (Prims.op_Subtraction (StlcCbvDbPntSubstNoLists.EVar__0 @lb4)
(BoxInt 1)))))))
(ite (is-StlcCbvDbPntSubstNoLists.EAbs @lb4)
(StlcCbvDbPntSubstNoLists.EAbs (StlcCbvDbPntSubstNoLists.EAbs__0 @lb4)
(StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented @u0
(Prims.op_Addition @x1
(BoxInt 1))
@x2
(StlcCbvDbPntSubstNoLists.EAbs__1 @lb4)))
(ite (is-StlcCbvDbPntSubstNoLists.EApp @lb4)
(StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented @u0
@x1
@x2
(StlcCbvDbPntSubstNoLists.EApp__0 @lb4))
(StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented @u0
@x1
@x2
(StlcCbvDbPntSubstNoLists.EApp__1 @lb4)))
Tm_unit))))))
 :weight 0


:pattern ((StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))

:named equation_with_fuel_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: StlcCbvDbPntSubstNoLists.step
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.step; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(= (StlcCbvDbPntSubstNoLists.step.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-StlcCbvDbPntSubstNoLists.EApp @lb2)
(let ((@lb3 (StlcCbvDbPntSubstNoLists.is_value (StlcCbvDbPntSubstNoLists.EApp__0 @lb2))))
(ite (= @lb3
(BoxBool true))
(let ((@lb4 (StlcCbvDbPntSubstNoLists.is_value (StlcCbvDbPntSubstNoLists.EApp__1 @lb2))))
(ite (= @lb4
(BoxBool true))
(let ((@lb5 (StlcCbvDbPntSubstNoLists.EApp__0 @lb2)))
(ite (is-StlcCbvDbPntSubstNoLists.EAbs @lb5)
(FStar.Pervasives.Native.Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.subst_beta (BoxInt 0)
(StlcCbvDbPntSubstNoLists.EApp__1 @lb2)
(StlcCbvDbPntSubstNoLists.EAbs__1 @lb5)))
(FStar.Pervasives.Native.None StlcCbvDbPntSubstNoLists.exp)))
(let ((@lb5 (StlcCbvDbPntSubstNoLists.step.fuel_instrumented @u0
(StlcCbvDbPntSubstNoLists.EApp__1 @lb2))))
(ite (is-FStar.Pervasives.Native.Some @lb5)
(FStar.Pervasives.Native.Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.EApp__0 @lb2)
(FStar.Pervasives.Native.Some_v @lb5)))
(ite (is-FStar.Pervasives.Native.None @lb5)
(FStar.Pervasives.Native.None StlcCbvDbPntSubstNoLists.exp)
Tm_unit)))))
(let ((@lb4 (StlcCbvDbPntSubstNoLists.step.fuel_instrumented @u0
(StlcCbvDbPntSubstNoLists.EApp__0 @lb2))))
(ite (is-FStar.Pervasives.Native.Some @lb4)
(FStar.Pervasives.Native.Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.EApp (FStar.Pervasives.Native.Some_v @lb4)
(StlcCbvDbPntSubstNoLists.EApp__1 @lb2)))
(ite (is-FStar.Pervasives.Native.None @lb4)
(FStar.Pervasives.Native.None StlcCbvDbPntSubstNoLists.exp)
Tm_unit)))))
(FStar.Pervasives.Native.None StlcCbvDbPntSubstNoLists.exp)))))
 :weight 0


:pattern ((StlcCbvDbPntSubstNoLists.step.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))

:named equation_with_fuel_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.empty
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.empty; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(68,4-68,9); use=StlcCbvDbPntSubstNoLists.fst(68,4-68,9)
(forall ((@x0 Term))
 (! (= (ApplyTT (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x0)
(FStar.Pervasives.Native.None StlcCbvDbPntSubstNoLists.ty))
 

:pattern ((ApplyTT (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x0))
:qid equation_StlcCbvDbPntSubstNoLists.empty))

:named equation_StlcCbvDbPntSubstNoLists.empty))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.subst_beta; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))

:named @fuel_irrelevance_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.step; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.step.fuel_instrumented (SFuel @u0)
@x1)
(StlcCbvDbPntSubstNoLists.step.fuel_instrumented ZFuel
@x1))
 

:pattern ((StlcCbvDbPntSubstNoLists.step.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))

:named @fuel_irrelevance_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.subst_beta; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(38,8-38,18); use=StlcCbvDbPntSubstNoLists.fst(38,8-38,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2)
(StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((StlcCbvDbPntSubstNoLists.subst_beta @x0
@x1
@x2))
:qid @fuel_correspondence_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))

:named @fuel_correspondence_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.step; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(47,8-47,12); use=StlcCbvDbPntSubstNoLists.fst(47,8-47,12)
(forall ((@x0 Term))
 (! (= (StlcCbvDbPntSubstNoLists.step @x0)
(StlcCbvDbPntSubstNoLists.step.fuel_instrumented MaxFuel
@x0))
 

:pattern ((StlcCbvDbPntSubstNoLists.step @x0))
:qid @fuel_correspondence_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))

:named @fuel_correspondence_StlcCbvDbPntSubstNoLists.step.fuel_instrumented))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(97,2-100,43)

;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_0 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_0
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_0
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_0))
;;;;;;;;;;;;;;;;t : StlcCbvDbPntSubstNoLists.ty (StlcCbvDbPntSubstNoLists.ty)
(declare-fun x_50e78c3fdc2d5cb83ab6b5165045e606_1 () Term)
;;;;;;;;;;;;;;;;binder_x_50e78c3fdc2d5cb83ab6b5165045e606_1
;;; Fact-ids: 
(assert (! (HasType x_50e78c3fdc2d5cb83ab6b5165045e606_1
StlcCbvDbPntSubstNoLists.ty)
:named binder_x_50e78c3fdc2d5cb83ab6b5165045e606_1))
;;;;;;;;;;;;;;;;h : StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t (StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t)
(declare-fun x_fecd6847b5a8d5f5a0404882b9c78c3b_2 () Term)
;;;;;;;;;;;;;;;;binder_x_fecd6847b5a8d5f5a0404882b9c78c3b_2
;;; Fact-ids: 
(assert (! (HasType x_fecd6847b5a8d5f5a0404882b9c78c3b_2
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1))
:named binder_x_fecd6847b5a8d5f5a0404882b9c78c3b_2))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun StlcCbvDbPntSubstNoLists.progress (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun StlcCbvDbPntSubstNoLists.progress@tok () Term)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       StlcCbvDbPntSubstNoLists.is_value e \/ Some? (StlcCbvDbPntSubstNoLists.step e) ==>
;       p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(TyVar? h) /\ ~(TyAbs? h) /\ ~(TyApp? h) ==> Prims.l_False) /\
;       (forall (b: StlcCbvDbPntSubstNoLists.env) (b: x: StlcCbvDbPntSubstNoLists.var{Some? (b x)}).
;           h == StlcCbvDbPntSubstNoLists.TyVar b ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(TyVar? h) ==>
;         (forall (b: StlcCbvDbPntSubstNoLists.env)
;             (b: StlcCbvDbPntSubstNoLists.ty)
;             (b: StlcCbvDbPntSubstNoLists.exp)
;             (b: StlcCbvDbPntSubstNoLists.ty)
;             (b: StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;             h == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;             (forall (any_result: Prims.unit). k any_result)) /\
;         (~(TyAbs? h) ==>
;           (forall (b: StlcCbvDbPntSubstNoLists.env)
;               (b: StlcCbvDbPntSubstNoLists.exp)
;               (b: StlcCbvDbPntSubstNoLists.exp)
;               (b: StlcCbvDbPntSubstNoLists.ty)
;               (b: StlcCbvDbPntSubstNoLists.ty)
;               (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;               (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;               h == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;               b == StlcCbvDbPntSubstNoLists.empty /\ b << h /\
;               (forall (any_result:
;                   StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                   b == any_result ==>
;                   (forall (pure_result: Prims.unit).
;                       StlcCbvDbPntSubstNoLists.is_value b \/ Some? (StlcCbvDbPntSubstNoLists.step b) ==>
;                       b == StlcCbvDbPntSubstNoLists.empty /\ b << h /\
;                       (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping b b b).
;                           b == any_result ==>
;                           (forall (pure_result: Prims.unit).
;                               StlcCbvDbPntSubstNoLists.is_value b \/
;                               Some? (StlcCbvDbPntSubstNoLists.step b) ==>
;                               k pure_result))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec progress`

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
;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=StlcCbvDbPntSubstNoLists.fst(95,37-95,69); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(or label_2

;; def=StlcCbvDbPntSubstNoLists.fst(95,38-95,48); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.is_value x_7597dc0c465777776dc6eae797c43037_0))


;; def=StlcCbvDbPntSubstNoLists.fst(95,52-95,68); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)
)

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(Valid 
;; def=Prims.fst(402,73-402,79); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1
x_fecd6847b5a8d5f5a0404882b9c78c3b_2))
)


;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1
x_fecd6847b5a8d5f5a0404882b9c78c3b_2))
)


;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1
x_fecd6847b5a8d5f5a0404882b9c78c3b_2))
)
)

label_3)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x2))

;; def=StlcCbvDbPntSubstNoLists.fst(96,23-98,11); use=StlcCbvDbPntSubstNoLists.fst(97,8-98,11)
(= x_fecd6847b5a8d5f5a0404882b9c78c3b_2
(StlcCbvDbPntSubstNoLists.TyVar @x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(Valid 
;; def=Prims.fst(451,90-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(ApplyTT @x1
@x4)
)
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
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1
x_fecd6847b5a8d5f5a0404882b9c78c3b_2))
)


;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(and 
;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x2
(BoxInt 0)
@x3)
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(96,23-99,13); use=StlcCbvDbPntSubstNoLists.fst(97,8-99,13)
(= x_fecd6847b5a8d5f5a0404882b9c78c3b_2
(StlcCbvDbPntSubstNoLists.TyAbs @x2
@x3
@x4
@x5
@x6))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(Valid 
;; def=Prims.fst(451,90-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(ApplyTT @x1
@x7)
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
 
;;no pats
:qid @query.8))
)
 
;;no pats
:qid @query.7))

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(96,23-96,24); use=StlcCbvDbPntSubstNoLists.fst(97,8-97,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1
x_fecd6847b5a8d5f5a0404882b9c78c3b_2))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x6 Term))
 (! (implies (HasType @x6
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
(StlcCbvDbPntSubstNoLists.TArrow @x5
@x6)))

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(96,23-100,15); use=StlcCbvDbPntSubstNoLists.fst(97,8-100,15)
(= x_fecd6847b5a8d5f5a0404882b9c78c3b_2
(StlcCbvDbPntSubstNoLists.TyApp @x2
@x3
@x4
@x5
@x6
@x7
@x8))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(94,44-100,12); use=StlcCbvDbPntSubstNoLists.fst(100,28-100,30)
(or label_4

;; def=StlcCbvDbPntSubstNoLists.fst(94,44-100,12); use=StlcCbvDbPntSubstNoLists.fst(100,28-100,30)
(= @x2
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)


;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(100,28-100,30)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(100,28-100,30)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(100,28-100,30)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
(StlcCbvDbPntSubstNoLists.TArrow @x5
@x6))
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1)
@x7
x_fecd6847b5a8d5f5a0404882b9c78c3b_2)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
(StlcCbvDbPntSubstNoLists.TArrow @x5
@x6)))

;; def=StlcCbvDbPntSubstNoLists.fst(94,34-100,12); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(= @x7
@x9)
)

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(100,19-100,27)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(95,37-95,69); use=StlcCbvDbPntSubstNoLists.fst(100,19-100,27)
(or 
;; def=StlcCbvDbPntSubstNoLists.fst(95,38-95,48); use=StlcCbvDbPntSubstNoLists.fst(100,19-100,27)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.is_value @x3))


;; def=StlcCbvDbPntSubstNoLists.fst(95,52-95,68); use=StlcCbvDbPntSubstNoLists.fst(100,19-100,27)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x3)))
)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(94,44-100,12); use=StlcCbvDbPntSubstNoLists.fst(100,41-100,43)
(or label_6

;; def=StlcCbvDbPntSubstNoLists.fst(94,44-100,12); use=StlcCbvDbPntSubstNoLists.fst(100,41-100,43)
(= @x2
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)


;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(100,41-100,43)
(or label_7

;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(100,41-100,43)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(97,2-100,43); use=StlcCbvDbPntSubstNoLists.fst(100,41-100,43)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1)
@x8
x_fecd6847b5a8d5f5a0404882b9c78c3b_2)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(94,34-100,15); use=StlcCbvDbPntSubstNoLists.fst(97,2-100,43)
(= @x8
@x11)
)

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(100,32-100,40)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(95,37-95,69); use=StlcCbvDbPntSubstNoLists.fst(100,32-100,40)
(or 
;; def=StlcCbvDbPntSubstNoLists.fst(95,38-95,48); use=StlcCbvDbPntSubstNoLists.fst(100,32-100,40)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.is_value @x4))


;; def=StlcCbvDbPntSubstNoLists.fst(95,52-95,68); use=StlcCbvDbPntSubstNoLists.fst(100,32-100,40)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x4)))
)
)

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(100,32-100,40)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(100,32-100,40)
(ApplyTT @x1
@x12)
)
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
))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.progress, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_StlcCbvDbPntSubstNoLists.step.fuel_instrumented, @fuel_irrelevance_StlcCbvDbPntSubstNoLists.step.fuel_instrumented, @query, StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606, StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037, binder_x_50e78c3fdc2d5cb83ab6b5165045e606_1, binder_x_7597dc0c465777776dc6eae797c43037_0, binder_x_fecd6847b5a8d5f5a0404882b9c78c3b_2, bool_inversion, constructor_distinct_FStar.Pervasives.Native.None, constructor_distinct_FStar.Pervasives.Native.Some, constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs, constructor_distinct_StlcCbvDbPntSubstNoLists.EApp, data_elim_StlcCbvDbPntSubstNoLists.TyAbs, data_elim_StlcCbvDbPntSubstNoLists.TyApp, data_elim_StlcCbvDbPntSubstNoLists.TyVar, disc_equation_FStar.Pervasives.Native.None, disc_equation_FStar.Pervasives.Native.Some, disc_equation_StlcCbvDbPntSubstNoLists.EAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyApp, disc_equation_StlcCbvDbPntSubstNoLists.TyVar, equation_StlcCbvDbPntSubstNoLists.empty, equation_StlcCbvDbPntSubstNoLists.is_value, equation_with_fuel_StlcCbvDbPntSubstNoLists.step.fuel_instrumented, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, kinding_StlcCbvDbPntSubstNoLists.exp@tok, lemma_FStar.Pervasives.invertOption, projection_inverse_BoxBool_proj_0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1, refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b, subterm_ordering_StlcCbvDbPntSubstNoLists.TyApp, typing_FStar.Pervasives.Native.uu___is_None, typing_StlcCbvDbPntSubstNoLists.is_value, typing_StlcCbvDbPntSubstNoLists.step

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec progress


; <Start encoding let rec progress>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun StlcCbvDbPntSubstNoLists.progress (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun StlcCbvDbPntSubstNoLists.progress@tok () Term)

; </end encoding let rec progress>


; encoding sigelt val StlcCbvDbPntSubstNoLists.appears_free_in


; <Skipped val StlcCbvDbPntSubstNoLists.appears_free_in/>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(104,2-107,41)

;;;;;;;;;;;;;;;;x : StlcCbvDbPntSubstNoLists.var (StlcCbvDbPntSubstNoLists.var)
(declare-fun x_dbcb0a2632e1fed74e708f131516d100_0 () Term)
;;;;;;;;;;;;;;;;binder_x_dbcb0a2632e1fed74e708f131516d100_0
;;; Fact-ids: 
(assert (! (HasType x_dbcb0a2632e1fed74e708f131516d100_0
StlcCbvDbPntSubstNoLists.var)
:named binder_x_dbcb0a2632e1fed74e708f131516d100_0))
;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_1 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_1
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_1
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_1))
(declare-fun Tm_refine_779afc7aae8d7a31679aeb255539e549 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_779afc7aae8d7a31679aeb255539e549
Tm_type)
:named refinement_kinding_Tm_refine_779afc7aae8d7a31679aeb255539e549))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(102,31-107,41); use=StlcCbvDbPntSubstNoLists.fst(102,31-107,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_779afc7aae8d7a31679aeb255539e549)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)

;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_779afc7aae8d7a31679aeb255539e549))
:qid refinement_interpretation_Tm_refine_779afc7aae8d7a31679aeb255539e549))

:named refinement_interpretation_Tm_refine_779afc7aae8d7a31679aeb255539e549))
;;;;;;;;;;;;;;;;haseq for Tm_refine_779afc7aae8d7a31679aeb255539e549
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_779afc7aae8d7a31679aeb255539e549))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.exp)))
:named haseqTm_refine_779afc7aae8d7a31679aeb255539e549))
(declare-fun StlcCbvDbPntSubstNoLists.appears_free_in (Term Term) Term)

;;;;;;;;;;;;;;;;x: var -> e: exp{e << e} -> Prims.Tot Prims.bool
(declare-fun Tm_arrow_709024daea7884c43b90c9abefe68c3f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_709024daea7884c43b90c9abefe68c3f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_709024daea7884c43b90c9abefe68c3f
Tm_type)
:named kinding_Tm_arrow_709024daea7884c43b90c9abefe68c3f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(102,24-107,41); use=StlcCbvDbPntSubstNoLists.fst(102,31-107,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_709024daea7884c43b90c9abefe68c3f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_709024daea7884c43b90c9abefe68c3f))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_709024daea7884c43b90c9abefe68c3f))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_709024daea7884c43b90c9abefe68c3f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_709024daea7884c43b90c9abefe68c3f
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(102,24-107,41); use=StlcCbvDbPntSubstNoLists.fst(102,31-107,41)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_709024daea7884c43b90c9abefe68c3f)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(102,24-107,41); use=StlcCbvDbPntSubstNoLists.fst(102,31-107,41)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
Tm_refine_779afc7aae8d7a31679aeb255539e549))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_709024daea7884c43b90c9abefe68c3f.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(102,24-107,41); use=StlcCbvDbPntSubstNoLists.fst(102,31-107,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_709024daea7884c43b90c9abefe68c3f.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_709024daea7884c43b90c9abefe68c3f))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_709024daea7884c43b90c9abefe68c3f))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_709024daea7884c43b90c9abefe68c3f))
(declare-fun StlcCbvDbPntSubstNoLists.appears_free_in@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.appears_free_in@tok
@x0)
@x1)
(StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.appears_free_in@tok
@x0)
@x1))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in))

:named token_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.appears_free_in@tok
Tm_arrow_709024daea7884c43b90c9abefe68c3f))

;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.appears_free_in@tok
@x1)
@x2)
(StlcCbvDbPntSubstNoLists.appears_free_in @x1
@x2))
 

:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in @x1
@x2))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.appears_free_in.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.appears_free_in@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.appears_free_in))

:named function_token_typing_StlcCbvDbPntSubstNoLists.appears_free_in))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
Tm_refine_779afc7aae8d7a31679aeb255539e549))
(HasType (StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1))
:qid typing_StlcCbvDbPntSubstNoLists.appears_free_in))

:named typing_StlcCbvDbPntSubstNoLists.appears_free_in))
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.bool).
;   (forall (x: Prims.bool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(EVar? e) /\ ~(EApp? e) /\ ~(EAbs? e) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.var).
;       e == StlcCbvDbPntSubstNoLists.EVar b ==> Prims.hasEq StlcCbvDbPntSubstNoLists.var) /\
;   (~(EVar? e) ==>
;     (forall (b: StlcCbvDbPntSubstNoLists.exp) (b: StlcCbvDbPntSubstNoLists.exp).
;         e == StlcCbvDbPntSubstNoLists.EApp b b ==>
;         b << e /\ (~(StlcCbvDbPntSubstNoLists.appears_free_in x b) ==> b << e)) /\
;     (~(EApp? e) ==>
;       (forall (b: StlcCbvDbPntSubstNoLists.ty) (b: StlcCbvDbPntSubstNoLists.exp).
;           e == StlcCbvDbPntSubstNoLists.EAbs b b ==>
;           x + 1 >= 0 /\
;           (forall (return_val: StlcCbvDbPntSubstNoLists.var). return_val == x + 1 ==> b << e))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec appears_free_in`

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

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EVar x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EApp x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EAbs x_7597dc0c465777776dc6eae797c43037_1))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(103,26-105,10); use=StlcCbvDbPntSubstNoLists.fst(104,8-105,10)
(= x_7597dc0c465777776dc6eae797c43037_1
(StlcCbvDbPntSubstNoLists.EVar @x1))
)

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(105,14-105,15)
(or label_2

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(105,14-105,15)
(Valid 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(105,14-105,15)
(Prims.hasEq StlcCbvDbPntSubstNoLists.var)
)
)
)
 
;;no pats
:qid @query.2))

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EVar x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(and 
;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(103,26-106,14); use=StlcCbvDbPntSubstNoLists.fst(104,8-106,14)
(= x_7597dc0c465777776dc6eae797c43037_1
(StlcCbvDbPntSubstNoLists.EApp @x1
@x2))
)

;; def=StlcCbvDbPntSubstNoLists.fst(106,9-106,38); use=StlcCbvDbPntSubstNoLists.fst(106,18-106,62)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(106,36-106,38)
(or label_3

;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(106,36-106,38)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(106,36-106,38)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_1)
)
)

(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(106,18-106,38); use=StlcCbvDbPntSubstNoLists.fst(106,18-106,38)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(106,18-106,38); use=StlcCbvDbPntSubstNoLists.fst(106,18-106,38)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in x_dbcb0a2632e1fed74e708f131516d100_0
@x1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(106,60-106,62)
(or label_4

;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(106,60-106,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(106,60-106,62)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_1)
)
)
))
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(103,26-103,27); use=StlcCbvDbPntSubstNoLists.fst(104,8-104,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_EApp x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(103,26-107,13); use=StlcCbvDbPntSubstNoLists.fst(104,8-107,13)
(= x_7597dc0c465777776dc6eae797c43037_1
(StlcCbvDbPntSubstNoLists.EAbs @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(107,33-107,38)
(or label_5

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(107,33-107,38)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(104,2-107,41)
(= @x3
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
)

;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(107,39-107,41)
(or label_6

;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(107,39-107,41)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(104,2-107,41); use=StlcCbvDbPntSubstNoLists.fst(107,39-107,41)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_1)
)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.appears_free_in, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037, binder_x_7597dc0c465777776dc6eae797c43037_1, binder_x_dbcb0a2632e1fed74e708f131516d100_0, disc_equation_StlcCbvDbPntSubstNoLists.EAbs, disc_equation_StlcCbvDbPntSubstNoLists.EApp, disc_equation_StlcCbvDbPntSubstNoLists.EVar, equation_Prims.eqtype, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.var, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.exp, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, primitive_Prims.op_Addition, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs, subterm_ordering_StlcCbvDbPntSubstNoLists.EApp, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec appears_free_in


; <Start encoding let rec appears_free_in>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented_token () Term)
(declare-fun StlcCbvDbPntSubstNoLists.appears_free_in (Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.appears_free_in@tok () Term)
;;;;;;;;;;;;;;;;x: var -> e: exp -> Prims.Tot Prims.bool
(declare-fun Tm_arrow_18ea7c0d08d807f32c1754cbfb18d99a () Term)

; </end encoding let rec appears_free_in>


; encoding sigelt val StlcCbvDbPntSubstNoLists.free_in_context


; <Skipped val StlcCbvDbPntSubstNoLists.free_in_context/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.appears_free_in; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp))
(HasType (StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1))
:qid typing_StlcCbvDbPntSubstNoLists.appears_free_in))

:named typing_StlcCbvDbPntSubstNoLists.appears_free_in))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(71,4-71,10); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.extend@tok
@x0)
@x1)
@x2)
(StlcCbvDbPntSubstNoLists.extend @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.extend@tok
@x0)
@x1)
@x2))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.extend))

:named token_correspondence_StlcCbvDbPntSubstNoLists.extend))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.appears_free_in; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp))
(HasType (StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented @u0
@x1
@x2)
Prims.bool))
 

:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))

:named token_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_08ba57086ef90eecb173c22080c51965
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! (HasType Tm_arrow_08ba57086ef90eecb173c22080c51965
Tm_type)
:named kinding_Tm_arrow_08ba57086ef90eecb173c22080c51965))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(71,4-71,10); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.extend@tok
Tm_arrow_08ba57086ef90eecb173c22080c51965))

;; def=StlcCbvDbPntSubstNoLists.fst(71,4-71,10); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.extend@tok
@x1)
@x2)
@x3)
(StlcCbvDbPntSubstNoLists.extend @x1
@x2
@x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.extend @x1
@x2
@x3))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.extend.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.extend@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.extend))

:named function_token_typing_StlcCbvDbPntSubstNoLists.extend))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: StlcCbvDbPntSubstNoLists.appears_free_in
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.appears_free_in; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp))
(= (StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (is-StlcCbvDbPntSubstNoLists.EVar @lb3)
(Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x1
(StlcCbvDbPntSubstNoLists.EVar__0 @lb3))
(ite (is-StlcCbvDbPntSubstNoLists.EApp @lb3)
(Prims.op_BarBar (StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented @u0
@x1
(StlcCbvDbPntSubstNoLists.EApp__0 @lb3))
(StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented @u0
@x1
(StlcCbvDbPntSubstNoLists.EApp__1 @lb3)))
(ite (is-StlcCbvDbPntSubstNoLists.EAbs @lb3)
(StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented @u0
(Prims.op_Addition @x1
(BoxInt 1))
(StlcCbvDbPntSubstNoLists.EAbs__1 @lb3))
Tm_unit))))))
 :weight 0


:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))

:named equation_with_fuel_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(70,13-70,40); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_08ba57086ef90eecb173c22080c51965)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_08ba57086ef90eecb173c22080c51965))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_08ba57086ef90eecb173c22080c51965))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_08ba57086ef90eecb173c22080c51965))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_08ba57086ef90eecb173c22080c51965
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.extend; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(70,13-70,40); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_08ba57086ef90eecb173c22080c51965)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(70,13-70,40); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.var)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
StlcCbvDbPntSubstNoLists.env))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_08ba57086ef90eecb173c22080c51965.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(70,13-70,40); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_08ba57086ef90eecb173c22080c51965.2))


;; def=StlcCbvDbPntSubstNoLists.fst(70,13-70,40); use=StlcCbvDbPntSubstNoLists.fst(71,4-71,10)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.var))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_08ba57086ef90eecb173c22080c51965.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_08ba57086ef90eecb173c22080c51965))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_08ba57086ef90eecb173c22080c51965))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_08ba57086ef90eecb173c22080c51965))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.appears_free_in; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented (SFuel @u0)
@x1
@x2)
(StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))

:named @fuel_irrelevance_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.appears_free_in; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(103,8-103,23); use=StlcCbvDbPntSubstNoLists.fst(103,8-103,23)
(forall ((@x0 Term) (@x1 Term))
 (! (= (StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1)
(StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1))
:qid @fuel_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))

:named @fuel_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(112,2-115,61)

;;;;;;;;;;;;;;;;x : StlcCbvDbPntSubstNoLists.var (StlcCbvDbPntSubstNoLists.var)
(declare-fun x_dbcb0a2632e1fed74e708f131516d100_0 () Term)
;;;;;;;;;;;;;;;;binder_x_dbcb0a2632e1fed74e708f131516d100_0
;;; Fact-ids: 
(assert (! (HasType x_dbcb0a2632e1fed74e708f131516d100_0
StlcCbvDbPntSubstNoLists.var)
:named binder_x_dbcb0a2632e1fed74e708f131516d100_0))
;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_1 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_1
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_1
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_1))
;;;;;;;;;;;;;;;;g : StlcCbvDbPntSubstNoLists.env (StlcCbvDbPntSubstNoLists.env)
(declare-fun x_176b6f43311fd990fabc0c011a366e57_2 () Term)
;;;;;;;;;;;;;;;;binder_x_176b6f43311fd990fabc0c011a366e57_2
;;; Fact-ids: 
(assert (! (HasType x_176b6f43311fd990fabc0c011a366e57_2
StlcCbvDbPntSubstNoLists.env)
:named binder_x_176b6f43311fd990fabc0c011a366e57_2))
;;;;;;;;;;;;;;;;t : StlcCbvDbPntSubstNoLists.ty (StlcCbvDbPntSubstNoLists.ty)
(declare-fun x_50e78c3fdc2d5cb83ab6b5165045e606_3 () Term)
;;;;;;;;;;;;;;;;binder_x_50e78c3fdc2d5cb83ab6b5165045e606_3
;;; Fact-ids: 
(assert (! (HasType x_50e78c3fdc2d5cb83ab6b5165045e606_3
StlcCbvDbPntSubstNoLists.ty)
:named binder_x_50e78c3fdc2d5cb83ab6b5165045e606_3))
;;;;;;;;;;;;;;;;h : StlcCbvDbPntSubstNoLists.rtyping g e t (StlcCbvDbPntSubstNoLists.rtyping g e t)
(declare-fun x_fc629662061e6c9429df5f5b5e9daeef_4 () Term)
;;;;;;;;;;;;;;;;binder_x_fc629662061e6c9429df5f5b5e9daeef_4
;;; Fact-ids: 
(assert (! (HasType x_fc629662061e6c9429df5f5b5e9daeef_4
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
:named binder_x_fc629662061e6c9429df5f5b5e9daeef_4))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun StlcCbvDbPntSubstNoLists.free_in_context (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun StlcCbvDbPntSubstNoLists.free_in_context@tok () Term)
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
StlcCbvDbPntSubstNoLists.extend@tok))
:named @kick_partial_app_d0ea13da07fa18be1a997dc0b8d00b77))

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       (StlcCbvDbPntSubstNoLists.appears_free_in x e ==> Some? (g x)) ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(TyVar? h) /\ ~(TyAbs? h) /\ ~(TyApp? h) ==> Prims.l_False) /\
;       (forall (b: StlcCbvDbPntSubstNoLists.env) (b: x: StlcCbvDbPntSubstNoLists.var{Some? (b x)}).
;           h == StlcCbvDbPntSubstNoLists.TyVar b ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(TyVar? h) ==>
;         (forall (b: StlcCbvDbPntSubstNoLists.env)
;             (b: StlcCbvDbPntSubstNoLists.ty)
;             (b: StlcCbvDbPntSubstNoLists.exp)
;             (b: StlcCbvDbPntSubstNoLists.ty)
;             (b: StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;             h == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;             x + 1 >= 0 /\
;             (forall (return_val: StlcCbvDbPntSubstNoLists.var).
;                 return_val == x + 1 ==>
;                 b << h /\
;                 (forall (any_result:
;                     StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;                     b == any_result ==>
;                     (forall (pure_result: Prims.unit).
;                         (StlcCbvDbPntSubstNoLists.appears_free_in (x + 1) b ==>
;                           Some? (StlcCbvDbPntSubstNoLists.extend b 0 b (x + 1))) ==>
;                         k pure_result)))) /\
;         (~(TyAbs? h) ==>
;           (forall (b: StlcCbvDbPntSubstNoLists.env)
;               (b: StlcCbvDbPntSubstNoLists.exp)
;               (b: StlcCbvDbPntSubstNoLists.exp)
;               (b: StlcCbvDbPntSubstNoLists.ty)
;               (b: StlcCbvDbPntSubstNoLists.ty)
;               (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;               (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;               h == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;               b << h /\
;               (forall (any_result:
;                   StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                   b == any_result ==>
;                   (forall (pure_result: Prims.unit).
;                       (StlcCbvDbPntSubstNoLists.appears_free_in x b ==> Some? (b x)) ==>
;                       b << h /\
;                       (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping b b b).
;                           b == any_result ==>
;                           (forall (pure_result: Prims.unit).
;                               (StlcCbvDbPntSubstNoLists.appears_free_in x b ==> Some? (b x)) ==>
;                               k pure_result))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec free_in_context`

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
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))
(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(110,38-110,57); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_1))


;; def=StlcCbvDbPntSubstNoLists.fst(110,62-110,73); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(or label_2

;; def=StlcCbvDbPntSubstNoLists.fst(110,62-110,73); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_176b6f43311fd990fabc0c011a366e57_2
x_dbcb0a2632e1fed74e708f131516d100_0)))
)
))

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(Valid 
;; def=Prims.fst(402,73-402,79); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_fc629662061e6c9429df5f5b5e9daeef_4))
)


;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_fc629662061e6c9429df5f5b5e9daeef_4))
)


;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_fc629662061e6c9429df5f5b5e9daeef_4))
)
)

label_3)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x2))

;; def=StlcCbvDbPntSubstNoLists.fst(111,35-113,11); use=StlcCbvDbPntSubstNoLists.fst(112,8-113,11)
(= x_fc629662061e6c9429df5f5b5e9daeef_4
(StlcCbvDbPntSubstNoLists.TyVar @x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(Valid 
;; def=Prims.fst(451,90-451,102); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(ApplyTT @x1
@x4)
)
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
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_fc629662061e6c9429df5f5b5e9daeef_4))
)


;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(and 
;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x2
(BoxInt 0)
@x3)
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(111,35-114,14); use=StlcCbvDbPntSubstNoLists.fst(112,8-114,14)
(= x_fc629662061e6c9429df5f5b5e9daeef_4
(StlcCbvDbPntSubstNoLists.TyAbs @x2
@x3
@x4
@x5
@x6))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(114,34-114,39)
(or label_4

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(114,34-114,39)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(= @x7
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(114,40-114,42)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(114,40-114,42)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(114,40-114,42)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x2
(BoxInt 0)
@x3)
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x6
x_fc629662061e6c9429df5f5b5e9daeef_4)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x2
(BoxInt 0)
@x3)
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(109,60-114,14); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(= @x6
@x8)
)

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(114,18-114,33)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(110,37-110,74); use=StlcCbvDbPntSubstNoLists.fst(114,18-114,33)
(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(110,38-110,57); use=StlcCbvDbPntSubstNoLists.fst(114,18-114,33)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
@x4))


;; def=StlcCbvDbPntSubstNoLists.fst(110,62-110,73); use=StlcCbvDbPntSubstNoLists.fst(114,18-114,33)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.extend@tok
@x2)
(BoxInt 0))
@x3)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))))
)
)

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(114,18-114,33)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(114,18-114,33)
(ApplyTT @x1
@x9)
)
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
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(111,35-111,36); use=StlcCbvDbPntSubstNoLists.fst(112,8-112,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_fc629662061e6c9429df5f5b5e9daeef_4))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x6 Term))
 (! (implies (HasType @x6
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
(StlcCbvDbPntSubstNoLists.TArrow @x5
@x6)))

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(111,35-115,15); use=StlcCbvDbPntSubstNoLists.fst(112,8-115,15)
(= x_fc629662061e6c9429df5f5b5e9daeef_4
(StlcCbvDbPntSubstNoLists.TyApp @x2
@x3
@x4
@x5
@x6
@x7
@x8))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(115,37-115,39)
(or label_6

;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(115,37-115,39)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(115,37-115,39)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
(StlcCbvDbPntSubstNoLists.TArrow @x5
@x6))
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x7
x_fc629662061e6c9429df5f5b5e9daeef_4)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x3
(StlcCbvDbPntSubstNoLists.TArrow @x5
@x6)))

;; def=StlcCbvDbPntSubstNoLists.fst(109,60-115,12); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(= @x7
@x9)
)

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(115,19-115,34)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(110,37-110,74); use=StlcCbvDbPntSubstNoLists.fst(115,19-115,34)
(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(110,38-110,57); use=StlcCbvDbPntSubstNoLists.fst(115,19-115,34)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in x_dbcb0a2632e1fed74e708f131516d100_0
@x3))


;; def=StlcCbvDbPntSubstNoLists.fst(110,62-110,73); use=StlcCbvDbPntSubstNoLists.fst(115,19-115,34)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x2
x_dbcb0a2632e1fed74e708f131516d100_0)))
)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(115,59-115,61)
(or label_7

;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(115,59-115,61)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(112,2-115,61); use=StlcCbvDbPntSubstNoLists.fst(115,59-115,61)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping @x2
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_2
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x8
x_fc629662061e6c9429df5f5b5e9daeef_4)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x4
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(109,60-115,15); use=StlcCbvDbPntSubstNoLists.fst(112,2-115,61)
(= @x8
@x11)
)

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(115,41-115,56)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(110,37-110,74); use=StlcCbvDbPntSubstNoLists.fst(115,41-115,56)
(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(110,38-110,57); use=StlcCbvDbPntSubstNoLists.fst(115,41-115,56)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in x_dbcb0a2632e1fed74e708f131516d100_0
@x4))


;; def=StlcCbvDbPntSubstNoLists.fst(110,62-110,73); use=StlcCbvDbPntSubstNoLists.fst(115,41-115,56)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x2
x_dbcb0a2632e1fed74e708f131516d100_0)))
)
)

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(115,41-115,56)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(115,41-115,56)
(ApplyTT @x1
@x12)
)
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
 
;;no pats
:qid @query.17))
)
 
;;no pats
:qid @query.16))
)
 
;;no pats
:qid @query.15))
))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.free_in_context, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, @fuel_irrelevance_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, @query, StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606, binder_x_50e78c3fdc2d5cb83ab6b5165045e606_3, binder_x_7597dc0c465777776dc6eae797c43037_1, binder_x_dbcb0a2632e1fed74e708f131516d100_0, binder_x_fc629662061e6c9429df5f5b5e9daeef_4, bool_inversion, constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs, constructor_distinct_StlcCbvDbPntSubstNoLists.EApp, constructor_distinct_StlcCbvDbPntSubstNoLists.EVar, data_elim_StlcCbvDbPntSubstNoLists.TyAbs, data_elim_StlcCbvDbPntSubstNoLists.TyApp, data_elim_StlcCbvDbPntSubstNoLists.TyVar, disc_equation_FStar.Pervasives.Native.Some, disc_equation_StlcCbvDbPntSubstNoLists.TyAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyApp, disc_equation_StlcCbvDbPntSubstNoLists.TyVar, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.extend, equation_StlcCbvDbPntSubstNoLists.var, equation_with_fuel_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, function_token_typing_StlcCbvDbPntSubstNoLists.extend, int_inversion, interpretation_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515, primitive_Prims.op_Addition, primitive_Prims.op_BarBar, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_Subtraction, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1, projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0, refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_StlcCbvDbPntSubstNoLists.TyAbs, subterm_ordering_StlcCbvDbPntSubstNoLists.TyApp, typing_StlcCbvDbPntSubstNoLists.appears_free_in

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec free_in_context


; <Start encoding let rec free_in_context>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun StlcCbvDbPntSubstNoLists.free_in_context (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun StlcCbvDbPntSubstNoLists.free_in_context@tok () Term)

; </end encoding let rec free_in_context>


; encoding sigelt val StlcCbvDbPntSubstNoLists.typable_empty_closed


; <Skipped val StlcCbvDbPntSubstNoLists.typable_empty_closed/>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(120,37-120,56)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (x: StlcCbvDbPntSubstNoLists.var)
;   (e: StlcCbvDbPntSubstNoLists.exp)
;   (t: StlcCbvDbPntSubstNoLists.ty)
;   (h: StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         Prims.op_Negation (StlcCbvDbPntSubstNoLists.appears_free_in x e) ==> p pure_result) ==>
;     (forall (pure_result: Prims.unit).
;         (StlcCbvDbPntSubstNoLists.appears_free_in x e ==> Some? (StlcCbvDbPntSubstNoLists.empty x)) ==>
;         p pure_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let typable_empty_closed`

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
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x1
@x2)))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
Prims.unit))
(or label_2
(not (BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1)))))

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(110,37-110,74); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,52)
(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(110,38-110,57); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,52)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in @x0
@x1))


;; def=StlcCbvDbPntSubstNoLists.fst(110,62-110,73); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,52)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x0)))
)
)

;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
(Valid 
;; def=Prims.fst(441,83-441,96); use=StlcCbvDbPntSubstNoLists.fst(120,37-120,56)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.typable_empty_closed, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606, constructor_distinct_FStar.Pervasives.Native.None, disc_equation_FStar.Pervasives.Native.Some, equation_StlcCbvDbPntSubstNoLists.empty, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let typable_empty_closed


; <Start encoding let typable_empty_closed>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun StlcCbvDbPntSubstNoLists.typable_empty_closed (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun StlcCbvDbPntSubstNoLists.typable_empty_closed@tok () Term)

; </end encoding let typable_empty_closed>


; encoding sigelt val StlcCbvDbPntSubstNoLists.typable_empty_closed'


; <Skipped val StlcCbvDbPntSubstNoLists.typable_empty_closed'/>


; encoding sigelt let typable_empty_closed'


; <Start encoding let typable_empty_closed'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun StlcCbvDbPntSubstNoLists.typable_empty_closed_ (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun StlcCbvDbPntSubstNoLists.typable_empty_closed_@tok () Term)

; </end encoding let typable_empty_closed'>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(126,32-126,59)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (g1: StlcCbvDbPntSubstNoLists.env) (g2: StlcCbvDbPntSubstNoLists.env).
;   (*  - Could not prove post-condition
; *)
;   forall (x: StlcCbvDbPntSubstNoLists.var).
;     (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;     Prims.hasEq (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)


; Context: While encoding a query
; While typechecking the top-level declaration `let equal`

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
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.env))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(126,32-126,59)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(65,22-65,33)
(or label_1

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(126,32-126,59)
(Valid 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(126,32-126,59)
(Prims.hasEq (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.equal, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_FStar.Pervasives.Native.option__uu___haseq, assumption_StlcCbvDbPntSubstNoLists.ty__uu___haseq, kinding_StlcCbvDbPntSubstNoLists.ty@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let equal


; <Start encoding let equal>

(declare-fun StlcCbvDbPntSubstNoLists.equal (Term Term) Term)
;;;;;;;;;;;;;;;;g1: env -> g2: env -> Prims.logical
(declare-fun Tm_arrow_906064dafcb95f4a698d6b0327ac00ca () Term)
(declare-fun StlcCbvDbPntSubstNoLists.equal@tok () Term)

; </end encoding let equal>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(128,7-128,58)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (e: StlcCbvDbPntSubstNoLists.exp)
;   (g1: StlcCbvDbPntSubstNoLists.env)
;   (g2: StlcCbvDbPntSubstNoLists.env).
;   (*  - Could not prove post-condition
; *)
;   forall (x: StlcCbvDbPntSubstNoLists.var).
;     StlcCbvDbPntSubstNoLists.appears_free_in x e ==>
;     Prims.hasEq (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty)


; Context: While encoding a query
; While typechecking the top-level declaration `let equalE`

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
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.env))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(128,7-128,58)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(128,23-128,42); use=StlcCbvDbPntSubstNoLists.fst(128,23-128,42)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in @x3
@x0))
)

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(65,22-65,33)
(or label_1

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(128,23-128,58)
(Valid 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(128,23-128,58)
(Prims.hasEq (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.ty))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.equalE, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_FStar.Pervasives.Native.option__uu___haseq, assumption_StlcCbvDbPntSubstNoLists.ty__uu___haseq, kinding_StlcCbvDbPntSubstNoLists.ty@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let equalE


; <Start encoding let equalE>

(declare-fun StlcCbvDbPntSubstNoLists.equalE (Term Term Term) Term)
;;;;;;;;;;;;;;;;e: exp -> g1: env -> g2: env -> Prims.logical
(declare-fun Tm_arrow_365f291ebc98f404639396fc94530a74 () Term)
(declare-fun StlcCbvDbPntSubstNoLists.equalE@tok () Term)

; </end encoding let equalE>


; encoding sigelt val StlcCbvDbPntSubstNoLists.context_invariance


; <Skipped val StlcCbvDbPntSubstNoLists.context_invariance/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.equalE; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(127,5-127,11); use=StlcCbvDbPntSubstNoLists.fst(127,5-127,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.env))
(HasType (StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x2)
Prims.logical))
 

:pattern ((StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x2))
:qid typing_StlcCbvDbPntSubstNoLists.equalE))

:named typing_StlcCbvDbPntSubstNoLists.equalE))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.equalE
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.equalE; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(127,5-127,11); use=StlcCbvDbPntSubstNoLists.fst(127,5-127,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(128,7-128,58); use=StlcCbvDbPntSubstNoLists.fst(128,7-128,58)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(128,23-128,42); use=StlcCbvDbPntSubstNoLists.fst(128,23-128,42)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in @x3
@x0))
)

;; def=StlcCbvDbPntSubstNoLists.fst(128,47-128,58); use=StlcCbvDbPntSubstNoLists.fst(128,47-128,58)
(= (ApplyTT @x1
@x3)
(ApplyTT @x2
@x3))
)
 
;;no pats
:qid equation_StlcCbvDbPntSubstNoLists.equalE.1))
)
 

:pattern ((StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x2))
:qid equation_StlcCbvDbPntSubstNoLists.equalE))

:named equation_StlcCbvDbPntSubstNoLists.equalE))
;;;;;;;;;;;;;;;;Prop-typing for StlcCbvDbPntSubstNoLists.equalE
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.equalE; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(127,5-127,11); use=StlcCbvDbPntSubstNoLists.fst(127,5-127,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.env))
(Valid (Prims.subtype_of (StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_StlcCbvDbPntSubstNoLists.equalE))

:named defn_equation_StlcCbvDbPntSubstNoLists.equalE))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(134,2-139,63)

;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_0 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_0
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_0
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_0))
;;;;;;;;;;;;;;;;g : StlcCbvDbPntSubstNoLists.env (StlcCbvDbPntSubstNoLists.env)
(declare-fun x_176b6f43311fd990fabc0c011a366e57_1 () Term)
;;;;;;;;;;;;;;;;binder_x_176b6f43311fd990fabc0c011a366e57_1
;;; Fact-ids: 
(assert (! (HasType x_176b6f43311fd990fabc0c011a366e57_1
StlcCbvDbPntSubstNoLists.env)
:named binder_x_176b6f43311fd990fabc0c011a366e57_1))
;;;;;;;;;;;;;;;;t : StlcCbvDbPntSubstNoLists.ty (StlcCbvDbPntSubstNoLists.ty)
(declare-fun x_50e78c3fdc2d5cb83ab6b5165045e606_2 () Term)
;;;;;;;;;;;;;;;;binder_x_50e78c3fdc2d5cb83ab6b5165045e606_2
;;; Fact-ids: 
(assert (! (HasType x_50e78c3fdc2d5cb83ab6b5165045e606_2
StlcCbvDbPntSubstNoLists.ty)
:named binder_x_50e78c3fdc2d5cb83ab6b5165045e606_2))
;;;;;;;;;;;;;;;;h : StlcCbvDbPntSubstNoLists.rtyping g e t (StlcCbvDbPntSubstNoLists.rtyping g e t)
(declare-fun x_f13b353f253e46f81d1f501f9ef4c276_3 () Term)
;;;;;;;;;;;;;;;;binder_x_f13b353f253e46f81d1f501f9ef4c276_3
;;; Fact-ids: 
(assert (! (HasType x_f13b353f253e46f81d1f501f9ef4c276_3
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2))
:named binder_x_f13b353f253e46f81d1f501f9ef4c276_3))
;;;;;;;;;;;;;;;;g' : g': StlcCbvDbPntSubstNoLists.env{StlcCbvDbPntSubstNoLists.equalE e g g'} (g': StlcCbvDbPntSubstNoLists.env{StlcCbvDbPntSubstNoLists.equalE e g g'})
(declare-fun x_b0a0c387eae96635c99da73049677b7d_4 () Term)
(declare-fun Tm_refine_ba34e2ab1508520d8b212977f6e55794 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_ba34e2ab1508520d8b212977f6e55794
Tm_type)
:named refinement_kinding_Tm_refine_ba34e2ab1508520d8b212977f6e55794))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-131,48); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_ba34e2ab1508520d8b212977f6e55794)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(StlcCbvDbPntSubstNoLists.equalE x_7597dc0c465777776dc6eae797c43037_0
x_176b6f43311fd990fabc0c011a366e57_1
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_ba34e2ab1508520d8b212977f6e55794))
:qid refinement_interpretation_Tm_refine_ba34e2ab1508520d8b212977f6e55794))

:named refinement_interpretation_Tm_refine_ba34e2ab1508520d8b212977f6e55794))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ba34e2ab1508520d8b212977f6e55794
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_ba34e2ab1508520d8b212977f6e55794))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
:named haseqTm_refine_ba34e2ab1508520d8b212977f6e55794))
;;;;;;;;;;;;;;;;binder_x_b0a0c387eae96635c99da73049677b7d_4
;;; Fact-ids: 
(assert (! (HasType x_b0a0c387eae96635c99da73049677b7d_4
Tm_refine_ba34e2ab1508520d8b212977f6e55794)
:named binder_x_b0a0c387eae96635c99da73049677b7d_4))
(declare-fun Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1))

:named refinement_kinding_Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(StlcCbvDbPntSubstNoLists.equalE @x2
@x3
@x1)
)


;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)

;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping @x3
@x2
@x4)
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
@x5
x_f13b353f253e46f81d1f501f9ef4c276_3)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1))

:named refinement_interpretation_Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_72255a2ad2bee1d1f4904c7ea91308d1))

:named haseqTm_refine_72255a2ad2bee1d1f4904c7ea91308d1))
(declare-fun StlcCbvDbPntSubstNoLists.context_invariance (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;h: rtyping g e t -> g': (g': env{equalE e g g'}){h << h} -> Prims.Tot (rtyping g' e t)
(declare-fun Tm_arrow_331947fa162af528987c8887c36ebf84 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_331947fa162af528987c8887c36ebf84
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_331947fa162af528987c8887c36ebf84
Tm_type)
:named kinding_Tm_arrow_331947fa162af528987c8887c36ebf84))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_331947fa162af528987c8887c36ebf84)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_331947fa162af528987c8887c36ebf84))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_331947fa162af528987c8887c36ebf84))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_331947fa162af528987c8887c36ebf84))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_331947fa162af528987c8887c36ebf84)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.env)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty)
(HasType @x4
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x1
@x3))
(HasType @x5
(Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x1
@x2
@x3
@x4)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x5
@x1
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84.2))


;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.env))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84.3))


;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.env)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84.4))


;; def=StlcCbvDbPntSubstNoLists.fst(130,28-139,63); use=StlcCbvDbPntSubstNoLists.fst(131,27-139,63)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.env)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty)
(HasType @x4
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x1
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
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84.5))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_331947fa162af528987c8887c36ebf84))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_331947fa162af528987c8887c36ebf84))
(declare-fun StlcCbvDbPntSubstNoLists.context_invariance@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.context_invariance@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.context_invariance@tok
@x0)
@x1)
@x2)
@x3)
@x4))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.context_invariance))

:named token_correspondence_StlcCbvDbPntSubstNoLists.context_invariance))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.context_invariance@tok
Tm_arrow_331947fa162af528987c8887c36ebf84))

;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.context_invariance@tok
@x1)
@x2)
@x3)
@x4)
@x5)
(StlcCbvDbPntSubstNoLists.context_invariance @x1
@x2
@x3
@x4
@x5))
 

:pattern ((StlcCbvDbPntSubstNoLists.context_invariance @x1
@x2
@x3
@x4
@x5))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.context_invariance.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.context_invariance@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.context_invariance))

:named function_token_typing_StlcCbvDbPntSubstNoLists.context_invariance))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x0
@x2))
(HasType @x4
(Tm_refine_72255a2ad2bee1d1f4904c7ea91308d1 @x0
@x1
@x2
@x3)))
(HasType (StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4)
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x0
@x2)))
 

:pattern ((StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4))
:qid typing_StlcCbvDbPntSubstNoLists.context_invariance))

:named typing_StlcCbvDbPntSubstNoLists.context_invariance))
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


(declare-fun Tm_refine_1f9fde90018a0121766287871aee5292 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_1f9fde90018a0121766287871aee5292 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_1f9fde90018a0121766287871aee5292 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_1f9fde90018a0121766287871aee5292))

:named refinement_kinding_Tm_refine_1f9fde90018a0121766287871aee5292))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1f9fde90018a0121766287871aee5292 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(StlcCbvDbPntSubstNoLists.equalE @x2
(StlcCbvDbPntSubstNoLists.extend @x3
(BoxInt 0)
@x4)
@x1)
)


;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)

;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x3
(BoxInt 0)
@x4)
@x2
@x5)
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
@x6
x_f13b353f253e46f81d1f501f9ef4c276_3)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1f9fde90018a0121766287871aee5292 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_1f9fde90018a0121766287871aee5292))

:named refinement_interpretation_Tm_refine_1f9fde90018a0121766287871aee5292))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1f9fde90018a0121766287871aee5292
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,15-137,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1f9fde90018a0121766287871aee5292 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1f9fde90018a0121766287871aee5292 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_1f9fde90018a0121766287871aee5292))

:named haseqTm_refine_1f9fde90018a0121766287871aee5292))



; Encoding query formula : forall (k: Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping g' e t)).
;   (forall (x: StlcCbvDbPntSubstNoLists.rtyping g' e t). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(TyVar? h) /\ ~(TyAbs? h) /\ ~(TyApp? h) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.env) (b: x: StlcCbvDbPntSubstNoLists.var{Some? (b x)}).
;       h == StlcCbvDbPntSubstNoLists.TyVar b ==>
;       (Some? (b b) ==> Some? (g' b)) /\
;       (forall (any_result: x: StlcCbvDbPntSubstNoLists.var{Some? (b x)}).
;           b == any_result ==>
;           (forall (any_result:
;               StlcCbvDbPntSubstNoLists.rtyping g' (StlcCbvDbPntSubstNoLists.EVar b) (g' b).v).
;               StlcCbvDbPntSubstNoLists.TyVar b == any_result ==>
;               StlcCbvDbPntSubstNoLists.EVar b == e /\ (g' b).v == t))) /\
;   (~(TyVar? h) ==>
;     (forall (b: StlcCbvDbPntSubstNoLists.env)
;         (b: StlcCbvDbPntSubstNoLists.ty)
;         (b: StlcCbvDbPntSubstNoLists.exp)
;         (b: StlcCbvDbPntSubstNoLists.ty)
;         (b: StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;         h == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;         StlcCbvDbPntSubstNoLists.equalE b
;           (StlcCbvDbPntSubstNoLists.extend b 0 b)
;           (StlcCbvDbPntSubstNoLists.extend g' 0 b) /\ b << h /\
;         (forall (return_val:
;             g':
;             (g':
;               StlcCbvDbPntSubstNoLists.env
;                 {StlcCbvDbPntSubstNoLists.equalE b (StlcCbvDbPntSubstNoLists.extend b 0 b) g'})
;               {b << h}).
;             return_val == StlcCbvDbPntSubstNoLists.extend g' 0 b ==>
;             (forall (any_result:
;                 StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend g' 0 b) b b).
;                 StlcCbvDbPntSubstNoLists.context_invariance b
;                   (StlcCbvDbPntSubstNoLists.extend g' 0 b) ==
;                 any_result ==>
;                 (forall (any_result:
;                     StlcCbvDbPntSubstNoLists.rtyping g'
;                       (StlcCbvDbPntSubstNoLists.EAbs b b)
;                       (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                     StlcCbvDbPntSubstNoLists.TyAbs b
;                       (StlcCbvDbPntSubstNoLists.context_invariance b
;                           (StlcCbvDbPntSubstNoLists.extend g' 0 b)) ==
;                     any_result ==>
;                     StlcCbvDbPntSubstNoLists.EAbs b b == e /\
;                     StlcCbvDbPntSubstNoLists.TArrow b b == t)))) /\
;     (~(TyAbs? h) ==>
;       (forall (b: StlcCbvDbPntSubstNoLists.env)
;           (b: StlcCbvDbPntSubstNoLists.exp)
;           (b: StlcCbvDbPntSubstNoLists.exp)
;           (b: StlcCbvDbPntSubstNoLists.ty)
;           (b: StlcCbvDbPntSubstNoLists.ty)
;           (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;           (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;           h == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;           (StlcCbvDbPntSubstNoLists.equalE e g g' ==>
;             StlcCbvDbPntSubstNoLists.equalE b b g' /\ b << h) /\
;           (forall (any_result:
;               g': StlcCbvDbPntSubstNoLists.env{StlcCbvDbPntSubstNoLists.equalE e g g'}).
;               g' == any_result ==>
;               (forall (any_result:
;                   StlcCbvDbPntSubstNoLists.rtyping g' b (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                   StlcCbvDbPntSubstNoLists.context_invariance b g' == any_result ==>
;                   (StlcCbvDbPntSubstNoLists.equalE e g g' ==>
;                     StlcCbvDbPntSubstNoLists.equalE b b g' /\ b << h) /\
;                   (forall (any_result:
;                       g': StlcCbvDbPntSubstNoLists.env{StlcCbvDbPntSubstNoLists.equalE e g g'}).
;                       g' == any_result ==>
;                       (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping g' b b).
;                           StlcCbvDbPntSubstNoLists.context_invariance b g' == any_result ==>
;                           (forall (any_result:
;                               StlcCbvDbPntSubstNoLists.rtyping g'
;                                 (StlcCbvDbPntSubstNoLists.EApp b b)
;                                 b).
;                               StlcCbvDbPntSubstNoLists.TyApp
;                                 (StlcCbvDbPntSubstNoLists.context_invariance b g')
;                                 (StlcCbvDbPntSubstNoLists.context_invariance b g') ==
;                               any_result ==>
;                               StlcCbvDbPntSubstNoLists.EApp b b == e /\ b == t))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec context_invariance`

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
(Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping x_b0a0c387eae96635c99da73049677b7d_4
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2
x_f13b353f253e46f81d1f501f9ef4c276_3))
)


;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2
x_f13b353f253e46f81d1f501f9ef4c276_3))
)


;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2
x_f13b353f253e46f81d1f501f9ef4c276_3))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x1))

;; def=StlcCbvDbPntSubstNoLists.fst(133,36-135,11); use=StlcCbvDbPntSubstNoLists.fst(134,8-135,11)
(= x_f13b353f253e46f81d1f501f9ef4c276_3
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(135,21-135,22)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT @x1
@x2)))


;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(135,21-135,22)
(or label_2

;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(135,21-135,22)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_b0a0c387eae96635c99da73049677b7d_4
@x2)))
)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x1))

;; def=StlcCbvDbPntSubstNoLists.fst(77,12-135,11); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= @x2
@x3)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(StlcCbvDbPntSubstNoLists.rtyping x_b0a0c387eae96635c99da73049677b7d_4
(StlcCbvDbPntSubstNoLists.EVar @x2)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_b0a0c387eae96635c99da73049677b7d_4
@x2))))

;; def=StlcCbvDbPntSubstNoLists.fst(132,10-135,22); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= (StlcCbvDbPntSubstNoLists.TyVar x_b0a0c387eae96635c99da73049677b7d_4
@x2)
@x4)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(135,15-135,22)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(78,24-133,29); use=StlcCbvDbPntSubstNoLists.fst(135,15-135,22)
(or label_3

;; def=StlcCbvDbPntSubstNoLists.fst(78,24-133,29); use=StlcCbvDbPntSubstNoLists.fst(135,15-135,22)
(= (StlcCbvDbPntSubstNoLists.EVar @x2)
x_7597dc0c465777776dc6eae797c43037_0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(78,33-133,35); use=StlcCbvDbPntSubstNoLists.fst(135,15-135,22)
(or label_4

;; def=StlcCbvDbPntSubstNoLists.fst(78,33-133,35); use=StlcCbvDbPntSubstNoLists.fst(135,15-135,22)
(= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_b0a0c387eae96635c99da73049677b7d_4
@x2))
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
)
)
)
 
;;no pats
:qid @query.5))
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

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2
x_f13b353f253e46f81d1f501f9ef4c276_3))
)


;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(and 
;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(133,36-136,16); use=StlcCbvDbPntSubstNoLists.fst(134,8-136,16)
(= x_f13b353f253e46f81d1f501f9ef4c276_3
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(137,37-137,54)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(137,37-137,54)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(137,37-137,54)
(StlcCbvDbPntSubstNoLists.equalE @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
(StlcCbvDbPntSubstNoLists.extend x_b0a0c387eae96635c99da73049677b7d_4
(BoxInt 0)
@x2))
)
)


;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,37-137,54)
(or label_6

;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,37-137,54)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(137,37-137,54)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x3
@x4)
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
@x5
x_f13b353f253e46f81d1f501f9ef4c276_3)
)
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Tm_refine_1f9fde90018a0121766287871aee5292 @x3
@x1
@x2
@x4
@x5))

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= @x6
(StlcCbvDbPntSubstNoLists.extend x_b0a0c387eae96635c99da73049677b7d_4
(BoxInt 0)
@x2))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend x_b0a0c387eae96635c99da73049677b7d_4
(BoxInt 0)
@x2)
@x3
@x4))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= (StlcCbvDbPntSubstNoLists.context_invariance @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x4
@x5
(StlcCbvDbPntSubstNoLists.extend x_b0a0c387eae96635c99da73049677b7d_4
(BoxInt 0)
@x2))
@x7)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping x_b0a0c387eae96635c99da73049677b7d_4
(StlcCbvDbPntSubstNoLists.EAbs @x2
@x3)
(StlcCbvDbPntSubstNoLists.TArrow @x2
@x4)))

;; def=StlcCbvDbPntSubstNoLists.fst(132,10-137,55); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= (StlcCbvDbPntSubstNoLists.TyAbs x_b0a0c387eae96635c99da73049677b7d_4
@x2
@x3
@x4
(StlcCbvDbPntSubstNoLists.context_invariance @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x4
@x5
(StlcCbvDbPntSubstNoLists.extend x_b0a0c387eae96635c99da73049677b7d_4
(BoxInt 0)
@x2)))
@x8)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(137,4-137,55)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(84,22-133,29); use=StlcCbvDbPntSubstNoLists.fst(137,4-137,55)
(or label_7

;; def=StlcCbvDbPntSubstNoLists.fst(84,22-133,29); use=StlcCbvDbPntSubstNoLists.fst(137,4-137,55)
(= (StlcCbvDbPntSubstNoLists.EAbs @x2
@x3)
x_7597dc0c465777776dc6eae797c43037_0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(84,34-133,35); use=StlcCbvDbPntSubstNoLists.fst(137,4-137,55)
(or label_8

;; def=StlcCbvDbPntSubstNoLists.fst(84,34-133,35); use=StlcCbvDbPntSubstNoLists.fst(137,4-137,55)
(= (StlcCbvDbPntSubstNoLists.TArrow @x2
@x4)
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(133,36-133,37); use=StlcCbvDbPntSubstNoLists.fst(134,8-134,9)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2
x_f13b353f253e46f81d1f501f9ef4c276_3))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(133,36-138,15); use=StlcCbvDbPntSubstNoLists.fst(134,8-138,15)
(= x_f13b353f253e46f81d1f501f9ef4c276_3
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(StlcCbvDbPntSubstNoLists.equalE x_7597dc0c465777776dc6eae797c43037_0
x_176b6f43311fd990fabc0c011a366e57_1
x_b0a0c387eae96635c99da73049677b7d_4)
)


;; def=StlcCbvDbPntSubstNoLists.fst(131,34-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(or label_9

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(StlcCbvDbPntSubstNoLists.equalE @x2
@x1
x_b0a0c387eae96635c99da73049677b7d_4)
)
)


;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(or label_10

;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,33-139,35)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5))
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
@x6
x_f13b353f253e46f81d1f501f9ef4c276_3)
)
)
)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Tm_refine_ba34e2ab1508520d8b212977f6e55794)

;; def=StlcCbvDbPntSubstNoLists.fst(131,27-133,40); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= x_b0a0c387eae96635c99da73049677b7d_4
@x8)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping x_b0a0c387eae96635c99da73049677b7d_4
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= (StlcCbvDbPntSubstNoLists.context_invariance @x2
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)
@x6
x_b0a0c387eae96635c99da73049677b7d_4)
@x9)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(StlcCbvDbPntSubstNoLists.equalE x_7597dc0c465777776dc6eae797c43037_0
x_176b6f43311fd990fabc0c011a366e57_1
x_b0a0c387eae96635c99da73049677b7d_4)
)


;; def=StlcCbvDbPntSubstNoLists.fst(131,34-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(or label_11

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(StlcCbvDbPntSubstNoLists.equalE @x3
@x1
x_b0a0c387eae96635c99da73049677b7d_4)
)
)


;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(or label_12

;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(134,2-139,63); use=StlcCbvDbPntSubstNoLists.fst(139,60-139,62)
(Prims.precedes (StlcCbvDbPntSubstNoLists.rtyping @x1
@x3
@x4)
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_1
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
@x7
x_f13b353f253e46f81d1f501f9ef4c276_3)
)
)
)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Tm_refine_ba34e2ab1508520d8b212977f6e55794)

;; def=StlcCbvDbPntSubstNoLists.fst(131,27-133,40); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= x_b0a0c387eae96635c99da73049677b7d_4
@x10)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(StlcCbvDbPntSubstNoLists.rtyping x_b0a0c387eae96635c99da73049677b7d_4
@x3
@x4))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= (StlcCbvDbPntSubstNoLists.context_invariance @x3
@x1
@x4
@x7
x_b0a0c387eae96635c99da73049677b7d_4)
@x11)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(StlcCbvDbPntSubstNoLists.rtyping x_b0a0c387eae96635c99da73049677b7d_4
(StlcCbvDbPntSubstNoLists.EApp @x2
@x3)
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(132,10-139,63); use=StlcCbvDbPntSubstNoLists.fst(134,2-139,63)
(= (StlcCbvDbPntSubstNoLists.TyApp x_b0a0c387eae96635c99da73049677b7d_4
@x2
@x3
@x4
@x5
(StlcCbvDbPntSubstNoLists.context_invariance @x2
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)
@x6
x_b0a0c387eae96635c99da73049677b7d_4)
(StlcCbvDbPntSubstNoLists.context_invariance @x3
@x1
@x4
@x7
x_b0a0c387eae96635c99da73049677b7d_4))
@x12)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(139,4-139,63)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(92,22-133,29); use=StlcCbvDbPntSubstNoLists.fst(139,4-139,63)
(or label_13

;; def=StlcCbvDbPntSubstNoLists.fst(92,22-133,29); use=StlcCbvDbPntSubstNoLists.fst(139,4-139,63)
(= (StlcCbvDbPntSubstNoLists.EApp @x2
@x3)
x_7597dc0c465777776dc6eae797c43037_0)
)


;; def=StlcCbvDbPntSubstNoLists.fst(133,34-138,12); use=StlcCbvDbPntSubstNoLists.fst(139,4-139,63)
(or label_14

;; def=StlcCbvDbPntSubstNoLists.fst(133,34-138,12); use=StlcCbvDbPntSubstNoLists.fst(139,4-139,63)
(= @x5
x_50e78c3fdc2d5cb83ab6b5165045e606_2)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.context_invariance, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, @fuel_irrelevance_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, @query, StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606, binder_x_50e78c3fdc2d5cb83ab6b5165045e606_2, binder_x_7597dc0c465777776dc6eae797c43037_0, binder_x_b0a0c387eae96635c99da73049677b7d_4, binder_x_f13b353f253e46f81d1f501f9ef4c276_3, bool_inversion, constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs, constructor_distinct_StlcCbvDbPntSubstNoLists.EApp, constructor_distinct_StlcCbvDbPntSubstNoLists.EVar, data_elim_StlcCbvDbPntSubstNoLists.TyAbs, data_elim_StlcCbvDbPntSubstNoLists.TyApp, data_elim_StlcCbvDbPntSubstNoLists.TyVar, disc_equation_FStar.Pervasives.Native.Some, disc_equation_StlcCbvDbPntSubstNoLists.TyAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyApp, disc_equation_StlcCbvDbPntSubstNoLists.TyVar, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.equalE, equation_StlcCbvDbPntSubstNoLists.extend, equation_StlcCbvDbPntSubstNoLists.var, equation_with_fuel_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, int_inversion, int_typing, interpretation_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515, primitive_Prims.op_Addition, primitive_Prims.op_BarBar, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_Subtraction, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1, projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0, refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_ba34e2ab1508520d8b212977f6e55794, subterm_ordering_StlcCbvDbPntSubstNoLists.TyAbs, subterm_ordering_StlcCbvDbPntSubstNoLists.TyApp, token_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, typing_StlcCbvDbPntSubstNoLists.appears_free_in

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec context_invariance


; <Start encoding let rec context_invariance>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented_token () Term)
(declare-fun StlcCbvDbPntSubstNoLists.context_invariance (Term Term Term Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.context_invariance@tok () Term)
(declare-fun Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 (Term Term) Term)


;;;;;;;;;;;;;;;;h: rtyping g e t -> g': env{equalE e g g'} -> Prims.Tot (rtyping g' e t)
(declare-fun Tm_arrow_5c9379b7501c88ae6636013d4912e905 () Term)

; </end encoding let rec context_invariance>


; encoding sigelt val StlcCbvDbPntSubstNoLists.typing_extensional


; <Skipped val StlcCbvDbPntSubstNoLists.typing_extensional/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.equal; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(126,5-126,10); use=StlcCbvDbPntSubstNoLists.fst(126,5-126,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.env))
(HasType (StlcCbvDbPntSubstNoLists.equal @x0
@x1)
Prims.logical))
 

:pattern ((StlcCbvDbPntSubstNoLists.equal @x0
@x1))
:qid typing_StlcCbvDbPntSubstNoLists.equal))

:named typing_StlcCbvDbPntSubstNoLists.equal))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.equal
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.equal; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(126,5-126,10); use=StlcCbvDbPntSubstNoLists.fst(126,5-126,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (StlcCbvDbPntSubstNoLists.equal @x0
@x1))

;; def=StlcCbvDbPntSubstNoLists.fst(126,32-126,59); use=StlcCbvDbPntSubstNoLists.fst(126,32-126,59)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(126,48-126,59); use=StlcCbvDbPntSubstNoLists.fst(126,48-126,59)
(= (ApplyTT @x0
@x2)
(ApplyTT @x1
@x2))
)
 
;;no pats
:qid equation_StlcCbvDbPntSubstNoLists.equal.1))
)
 

:pattern ((StlcCbvDbPntSubstNoLists.equal @x0
@x1))
:qid equation_StlcCbvDbPntSubstNoLists.equal))

:named equation_StlcCbvDbPntSubstNoLists.equal))
;;;;;;;;;;;;;;;;Prop-typing for StlcCbvDbPntSubstNoLists.equal
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.equal; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(126,5-126,10); use=StlcCbvDbPntSubstNoLists.fst(126,5-126,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.env)
(HasType @x1
StlcCbvDbPntSubstNoLists.env))
(Valid (Prims.subtype_of (StlcCbvDbPntSubstNoLists.equal @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (StlcCbvDbPntSubstNoLists.equal @x0
@x1)
Prims.unit))
:qid defn_equation_StlcCbvDbPntSubstNoLists.equal))

:named defn_equation_StlcCbvDbPntSubstNoLists.equal))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(144,39-144,62)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_321bf01b6873e101c2d388018abc6e2a (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_321bf01b6873e101c2d388018abc6e2a))

:named refinement_kinding_Tm_refine_321bf01b6873e101c2d388018abc6e2a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_321bf01b6873e101c2d388018abc6e2a @x2))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(StlcCbvDbPntSubstNoLists.equal @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_321bf01b6873e101c2d388018abc6e2a @x2)))
:qid refinement_interpretation_Tm_refine_321bf01b6873e101c2d388018abc6e2a))

:named refinement_interpretation_Tm_refine_321bf01b6873e101c2d388018abc6e2a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_321bf01b6873e101c2d388018abc6e2a
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0))))
:qid haseqTm_refine_321bf01b6873e101c2d388018abc6e2a))

:named haseqTm_refine_321bf01b6873e101c2d388018abc6e2a))

; Encoding query formula : forall (e: StlcCbvDbPntSubstNoLists.exp)
;   (g: StlcCbvDbPntSubstNoLists.env)
;   (t: StlcCbvDbPntSubstNoLists.ty)
;   (h: StlcCbvDbPntSubstNoLists.rtyping g e t)
;   (g': StlcCbvDbPntSubstNoLists.env{StlcCbvDbPntSubstNoLists.equal g g'}).
;   (*  - Could not prove post-condition
; *)
;   StlcCbvDbPntSubstNoLists.equal g g' ==> StlcCbvDbPntSubstNoLists.equalE e g g'


; Context: While encoding a query
; While typechecking the top-level declaration `let typing_extensional`

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
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x0
@x2))
(HasType @x4
(Tm_refine_321bf01b6873e101c2d388018abc6e2a @x1))

;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(144,60-144,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(144,60-144,62)
(StlcCbvDbPntSubstNoLists.equal @x1
@x4)
)
)

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(144,60-144,62)
(or label_1

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(144,60-144,62)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(144,60-144,62)
(StlcCbvDbPntSubstNoLists.equalE @x0
@x1
@x4)
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.typing_extensional, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_StlcCbvDbPntSubstNoLists.equal, equation_StlcCbvDbPntSubstNoLists.equalE

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let typing_extensional


; <Start encoding let typing_extensional>

(declare-fun Tm_refine_321bf01b6873e101c2d388018abc6e2a (Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.typing_extensional (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;h: rtyping g e t -> g': env{equal g g'} -> rtyping g' e t
(declare-fun Tm_arrow_cd6ff57f09c8f20df35d5c19dd46a4dc () Term)
(declare-fun StlcCbvDbPntSubstNoLists.typing_extensional@tok () Term)


; </end encoding let typing_extensional>


; encoding sigelt val StlcCbvDbPntSubstNoLists.substitution_preserves_typing


; <Skipped val StlcCbvDbPntSubstNoLists.substitution_preserves_typing/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.typing_extensional; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(144,4-144,22); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x0
@x2))
(HasType @x4
(Tm_refine_321bf01b6873e101c2d388018abc6e2a @x1)))
(HasType (StlcCbvDbPntSubstNoLists.typing_extensional @x0
@x1
@x2
@x3
@x4)
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x0
@x2)))
 

:pattern ((StlcCbvDbPntSubstNoLists.typing_extensional @x0
@x1
@x2
@x3
@x4))
:qid typing_StlcCbvDbPntSubstNoLists.typing_extensional))

:named typing_StlcCbvDbPntSubstNoLists.typing_extensional))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.env)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x0
@x2))
(HasType @x4
(Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x0
@x1)))
(HasType (StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4)
(StlcCbvDbPntSubstNoLists.rtyping @x4
@x0
@x2)))
 

:pattern ((StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4))
:qid typing_StlcCbvDbPntSubstNoLists.context_invariance))

:named typing_StlcCbvDbPntSubstNoLists.context_invariance))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.env)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty)
(HasType @x4
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x1
@x3))
(HasType @x5
(Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x1
@x2)))
(HasType (StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented @u0
@x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.rtyping @x5
@x1
@x3)))
 

:pattern ((StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented @u0
@x1
@x2
@x3
@x4
@x5))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))

:named token_correspondence_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-131,48); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3))

:named refinement_kinding_Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.typing_extensional; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_321bf01b6873e101c2d388018abc6e2a))

:named refinement_kinding_Tm_refine_321bf01b6873e101c2d388018abc6e2a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-131,48); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x2
@x3))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(StlcCbvDbPntSubstNoLists.equalE @x2
@x3
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3))

:named refinement_interpretation_Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.typing_extensional; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_321bf01b6873e101c2d388018abc6e2a @x2))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(StlcCbvDbPntSubstNoLists.equal @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_321bf01b6873e101c2d388018abc6e2a @x2)))
:qid refinement_interpretation_Tm_refine_321bf01b6873e101c2d388018abc6e2a))

:named refinement_interpretation_Tm_refine_321bf01b6873e101c2d388018abc6e2a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(131,27-131,48); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x0
@x1)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x0
@x1))))
:qid haseqTm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3))

:named haseqTm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_321bf01b6873e101c2d388018abc6e2a
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.typing_extensional; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_321bf01b6873e101c2d388018abc6e2a @x0))))
:qid haseqTm_refine_321bf01b6873e101c2d388018abc6e2a))

:named haseqTm_refine_321bf01b6873e101c2d388018abc6e2a))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: StlcCbvDbPntSubstNoLists.context_invariance
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.env)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty)
(HasType @x4
(StlcCbvDbPntSubstNoLists.rtyping @x2
@x1
@x3))
(HasType @x5
(Tm_refine_d5c7ebf508f699bcc83fa4b6e56ec7b3 @x1
@x2)))
(= (StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5)
(let ((@lb6 @x4))
(ite (is-StlcCbvDbPntSubstNoLists.TyVar @lb6)
(StlcCbvDbPntSubstNoLists.TyVar @x5
(StlcCbvDbPntSubstNoLists.TyVar_x @lb6))
(ite (is-StlcCbvDbPntSubstNoLists.TyAbs @lb6)
(StlcCbvDbPntSubstNoLists.TyAbs @x5
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb6)
(StlcCbvDbPntSubstNoLists.TyAbs_e1 @lb6)
(StlcCbvDbPntSubstNoLists.TyAbs_t_ @lb6)
(StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented @u0
(StlcCbvDbPntSubstNoLists.TyAbs_e1 @lb6)
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.TyAbs_g @lb6)
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb6))
(StlcCbvDbPntSubstNoLists.TyAbs_t_ @lb6)
(StlcCbvDbPntSubstNoLists.TyAbs__4 @lb6)
(StlcCbvDbPntSubstNoLists.extend @x5
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb6))))
(ite (is-StlcCbvDbPntSubstNoLists.TyApp @lb6)
(StlcCbvDbPntSubstNoLists.TyApp @x5
(StlcCbvDbPntSubstNoLists.TyApp_e1 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_e2 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_t11 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_t12 @lb6)
(StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented @u0
(StlcCbvDbPntSubstNoLists.TyApp_e1 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_g @lb6)
(StlcCbvDbPntSubstNoLists.TArrow (StlcCbvDbPntSubstNoLists.TyApp_t11 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_t12 @lb6))
(StlcCbvDbPntSubstNoLists.TyApp__5 @lb6)
@x5)
(StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented @u0
(StlcCbvDbPntSubstNoLists.TyApp_e2 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_g @lb6)
(StlcCbvDbPntSubstNoLists.TyApp_t11 @lb6)
(StlcCbvDbPntSubstNoLists.TyApp__6 @lb6)
@x5))
Tm_unit))))))
 :weight 0


:pattern ((StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5))
:qid equation_with_fuel_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))

:named equation_with_fuel_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for StlcCbvDbPntSubstNoLists.typing_extensional
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.typing_extensional; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(144,4-144,22); use=StlcCbvDbPntSubstNoLists.fst(144,4-144,22)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.typing_extensional @x0
@x1
@x2
@x3
@x4)
(StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4))
 

:pattern ((StlcCbvDbPntSubstNoLists.typing_extensional @x0
@x1
@x2
@x3
@x4))
:qid equation_StlcCbvDbPntSubstNoLists.typing_extensional))

:named equation_StlcCbvDbPntSubstNoLists.typing_extensional))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5)
(StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4
@x5))
 

:pattern ((StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5))
:qid @fuel_irrelevance_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))

:named @fuel_irrelevance_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.context_invariance; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(133,8-133,26); use=StlcCbvDbPntSubstNoLists.fst(133,8-133,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4)
(StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3
@x4))
 

:pattern ((StlcCbvDbPntSubstNoLists.context_invariance @x0
@x1
@x2
@x3
@x4))
:qid @fuel_correspondence_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))

:named @fuel_correspondence_StlcCbvDbPntSubstNoLists.context_invariance.fuel_instrumented))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(152,2-165,48)

;;;;;;;;;;;;;;;;x : StlcCbvDbPntSubstNoLists.var (StlcCbvDbPntSubstNoLists.var)
(declare-fun x_dbcb0a2632e1fed74e708f131516d100_0 () Term)
;;;;;;;;;;;;;;;;binder_x_dbcb0a2632e1fed74e708f131516d100_0
;;; Fact-ids: 
(assert (! (HasType x_dbcb0a2632e1fed74e708f131516d100_0
StlcCbvDbPntSubstNoLists.var)
:named binder_x_dbcb0a2632e1fed74e708f131516d100_0))
;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_1 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_1
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_1
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_1))
;;;;;;;;;;;;;;;;v : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_2 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_2
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_2
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_2))
;;;;;;;;;;;;;;;;t_x : StlcCbvDbPntSubstNoLists.ty (StlcCbvDbPntSubstNoLists.ty)
(declare-fun x_50e78c3fdc2d5cb83ab6b5165045e606_3 () Term)
;;;;;;;;;;;;;;;;binder_x_50e78c3fdc2d5cb83ab6b5165045e606_3
;;; Fact-ids: 
(assert (! (HasType x_50e78c3fdc2d5cb83ab6b5165045e606_3
StlcCbvDbPntSubstNoLists.ty)
:named binder_x_50e78c3fdc2d5cb83ab6b5165045e606_3))
;;;;;;;;;;;;;;;;t : StlcCbvDbPntSubstNoLists.ty (StlcCbvDbPntSubstNoLists.ty)
(declare-fun x_50e78c3fdc2d5cb83ab6b5165045e606_4 () Term)
;;;;;;;;;;;;;;;;binder_x_50e78c3fdc2d5cb83ab6b5165045e606_4
;;; Fact-ids: 
(assert (! (HasType x_50e78c3fdc2d5cb83ab6b5165045e606_4
StlcCbvDbPntSubstNoLists.ty)
:named binder_x_50e78c3fdc2d5cb83ab6b5165045e606_4))
;;;;;;;;;;;;;;;;g : StlcCbvDbPntSubstNoLists.env (StlcCbvDbPntSubstNoLists.env)
(declare-fun x_176b6f43311fd990fabc0c011a366e57_5 () Term)
;;;;;;;;;;;;;;;;binder_x_176b6f43311fd990fabc0c011a366e57_5
;;; Fact-ids: 
(assert (! (HasType x_176b6f43311fd990fabc0c011a366e57_5
StlcCbvDbPntSubstNoLists.env)
:named binder_x_176b6f43311fd990fabc0c011a366e57_5))
;;;;;;;;;;;;;;;;h1 : StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty v t_x (StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty v t_x)
(declare-fun x_882d7b6269402c6acfefb2c8b4e6c2d6_6 () Term)
;;;;;;;;;;;;;;;;binder_x_882d7b6269402c6acfefb2c8b4e6c2d6_6
;;; Fact-ids: 
(assert (! (HasType x_882d7b6269402c6acfefb2c8b4e6c2d6_6
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
:named binder_x_882d7b6269402c6acfefb2c8b4e6c2d6_6))
;;;;;;;;;;;;;;;;h2 : StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend g x t_x) e t (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend g x t_x) e t)
(declare-fun x_f498b240629ba8d814a9923ab86d50f6_7 () Term)
;;;;;;;;;;;;;;;;binder_x_f498b240629ba8d814a9923ab86d50f6_7
;;; Fact-ids: 
(assert (! (HasType x_f498b240629ba8d814a9923ab86d50f6_7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4))
:named binder_x_f498b240629ba8d814a9923ab86d50f6_7))
(declare-fun Tm_refine_56f5fc98cc09ceef57629a085dae25b2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(149,6-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_56f5fc98cc09ceef57629a085dae25b2))

:named refinement_kinding_Tm_refine_56f5fc98cc09ceef57629a085dae25b2))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(149,6-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x2
@x3
@x4)
@x6
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)

;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x6
x_7597dc0c465777776dc6eae797c43037_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_56f5fc98cc09ceef57629a085dae25b2))

:named refinement_interpretation_Tm_refine_56f5fc98cc09ceef57629a085dae25b2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_56f5fc98cc09ceef57629a085dae25b2
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(149,6-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x0
@x1
@x2)
@x4
@x3))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_56f5fc98cc09ceef57629a085dae25b2))

:named haseqTm_refine_56f5fc98cc09ceef57629a085dae25b2))
(declare-fun StlcCbvDbPntSubstNoLists.substitution_preserves_typing (Term Term Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;x: var -> h1: rtyping empty v t_x -> h2: rtyping (extend g x t_x) e t {e << e}   -> Prims.Tot (rtyping g (subst_beta x v e) t)
(declare-fun Tm_arrow_364af4aa7ccf12010490411b51a7267d () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_364af4aa7ccf12010490411b51a7267d
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_364af4aa7ccf12010490411b51a7267d
Tm_type)
:named kinding_Tm_arrow_364af4aa7ccf12010490411b51a7267d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_364af4aa7ccf12010490411b51a7267d)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_364af4aa7ccf12010490411b51a7267d))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_364af4aa7ccf12010490411b51a7267d))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_364af4aa7ccf12010490411b51a7267d))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_364af4aa7ccf12010490411b51a7267d)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.ty)
(HasType @x6
StlcCbvDbPntSubstNoLists.env)
(HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x4))
(HasType @x8
(Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x6
@x1
@x4
@x5
@x2)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(StlcCbvDbPntSubstNoLists.rtyping @x6
(StlcCbvDbPntSubstNoLists.subst_beta @x1
@x3
@x2)
@x5)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.2))


;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.3))


;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.4))


;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty))
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
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.5))


;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.ty))
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
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.6))


;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.ty)
(HasType @x6
StlcCbvDbPntSubstNoLists.env))
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
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.7))


;; def=StlcCbvDbPntSubstNoLists.fst(147,8-165,48); use=StlcCbvDbPntSubstNoLists.fst(149,6-165,48)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.ty)
(HasType @x6
StlcCbvDbPntSubstNoLists.env)
(HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
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
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d.8))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_364af4aa7ccf12010490411b51a7267d))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_364af4aa7ccf12010490411b51a7267d))
(declare-fun StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok
@x0)
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))

:named token_correspondence_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok
Tm_arrow_364af4aa7ccf12010490411b51a7267d))

;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok
@x1)
@x2)
@x3)
@x4)
@x5)
@x6)
@x7)
@x8)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
 

:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))

:named function_token_typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.env)
(HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x2
@x3))
(HasType @x7
(Tm_refine_56f5fc98cc09ceef57629a085dae25b2 @x5
@x0
@x3
@x4
@x1)))
(HasType (StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x5
(StlcCbvDbPntSubstNoLists.subst_beta @x0
@x2
@x1)
@x4)))
 

:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))

:named typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))
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

(declare-fun Tm_refine_81d04f5ba483b15eb79d3787cd382c85 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_81d04f5ba483b15eb79d3787cd382c85
Tm_type)
:named refinement_kinding_Tm_refine_81d04f5ba483b15eb79d3787cd382c85))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(77,12-77,30); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_81d04f5ba483b15eb79d3787cd382c85)
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.var)

;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,27)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_176b6f43311fd990fabc0c011a366e57_5
@x1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_81d04f5ba483b15eb79d3787cd382c85))
:qid refinement_interpretation_Tm_refine_81d04f5ba483b15eb79d3787cd382c85))

:named refinement_interpretation_Tm_refine_81d04f5ba483b15eb79d3787cd382c85))
;;;;;;;;;;;;;;;;haseq for Tm_refine_81d04f5ba483b15eb79d3787cd382c85
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_81d04f5ba483b15eb79d3787cd382c85))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.var)))
:named haseqTm_refine_81d04f5ba483b15eb79d3787cd382c85))
(declare-fun Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(158,17-158,35)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd))

:named refinement_kinding_Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(158,17-158,35)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x2
@x3))
(and (HasTypeFuel @u0
@x1
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(158,17-158,35)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(158,17-158,35)
(StlcCbvDbPntSubstNoLists.equal (StlcCbvDbPntSubstNoLists.extend @x2
(BoxInt 0)
@x3)
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x2
@x3)))
:qid refinement_interpretation_Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd))

:named refinement_interpretation_Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(142,27-142,45); use=StlcCbvDbPntSubstNoLists.fst(158,17-158,35)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x0
@x1)))
(Valid (Prims.hasEq StlcCbvDbPntSubstNoLists.env)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x0
@x1))))
:qid haseqTm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd))

:named haseqTm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd))

; Encoding query formula : forall (k:
;   Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping g (StlcCbvDbPntSubstNoLists.subst_beta x v e) t))
; .
;   (forall (x: StlcCbvDbPntSubstNoLists.rtyping g (StlcCbvDbPntSubstNoLists.subst_beta x v e) t).
;       {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(TyVar? h2) /\ ~(TyAbs? h2) /\ ~(TyApp? h2) ==> Prims.l_False) /\
;   (forall (b: StlcCbvDbPntSubstNoLists.env) (b: x: StlcCbvDbPntSubstNoLists.var{Some? (b x)}).
;       h2 == StlcCbvDbPntSubstNoLists.TyVar b ==>
;       Prims.hasEq StlcCbvDbPntSubstNoLists.var /\
;       (forall (any_result: Type0).
;           StlcCbvDbPntSubstNoLists.var == any_result ==>
;           (forall (any_result: Prims.bool).
;               x = b == any_result ==>
;               (forall (k:
;                   Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping g
;                         (StlcCbvDbPntSubstNoLists.subst_beta x v e)
;                         t)).
;                   (forall (x:
;                       StlcCbvDbPntSubstNoLists.rtyping g
;                         (StlcCbvDbPntSubstNoLists.subst_beta x v e)
;                         t).
;                       {:pattern Prims.guard_free (k x)}
;                       Prims.auto_squash (k x)) ==>
;                   (x = b == true ==>
;                     (forall (pure_result: Prims.unit).
;                         (forall (x: StlcCbvDbPntSubstNoLists.var).
;                             Prims.op_Negation (StlcCbvDbPntSubstNoLists.appears_free_in x v)) ==>
;                         Prims.auto_squash (StlcCbvDbPntSubstNoLists.equalE v
;                               StlcCbvDbPntSubstNoLists.empty
;                               g) /\
;                         (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;                             g == any_result ==>
;                             (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping g v t_x).
;                                 StlcCbvDbPntSubstNoLists.context_invariance h1 g == any_result ==>
;                                 v == StlcCbvDbPntSubstNoLists.subst_beta x v e /\ t_x == t)))) /\
;                   (~(x = b = true) ==>
;                     (forall (b: Prims.bool).
;                         x = b == b ==>
;                         (forall (k:
;                             Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping g
;                                   (StlcCbvDbPntSubstNoLists.subst_beta x v e)
;                                   t)).
;                             (forall (x:
;                                 StlcCbvDbPntSubstNoLists.rtyping g
;                                   (StlcCbvDbPntSubstNoLists.subst_beta x v e)
;                                   t).
;                                 {:pattern Prims.guard_free (k x)}
;                                 Prims.auto_squash (k x)) ==>
;                             (b < x == true ==>
;                               Prims.auto_squash (StlcCbvDbPntSubstNoLists.equalE e
;                                     (StlcCbvDbPntSubstNoLists.extend g x t_x)
;                                     g) /\
;                               (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;                                   g == any_result ==>
;                                   (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping g e t).
;                                       StlcCbvDbPntSubstNoLists.context_invariance h2 g == any_result ==>
;                                       e == StlcCbvDbPntSubstNoLists.subst_beta x v e))) /\
;                             (~(b < x = true) ==>
;                               (forall (b: Prims.bool).
;                                   b < x == b ==>
;                                   b - 1 >= 0 /\ Some? (g (b - 1)) /\
;                                   (forall (return_val: x: StlcCbvDbPntSubstNoLists.var{Some? (g x)})
;                                     .
;                                       return_val == b - 1 ==>
;                                       (forall (any_result:
;                                           StlcCbvDbPntSubstNoLists.rtyping g
;                                             (StlcCbvDbPntSubstNoLists.EVar (b - 1))
;                                             (g (b - 1)).v).
;                                           StlcCbvDbPntSubstNoLists.TyVar (b - 1) == any_result ==>
;                                           StlcCbvDbPntSubstNoLists.EVar (b - 1) ==
;                                           StlcCbvDbPntSubstNoLists.subst_beta x v e /\
;                                           (g (b - 1)).v == t))))))))))) /\
;   (~(TyVar? h2) ==>
;     (forall (b: StlcCbvDbPntSubstNoLists.env)
;         (b: StlcCbvDbPntSubstNoLists.ty)
;         (b: StlcCbvDbPntSubstNoLists.exp)
;         (b: StlcCbvDbPntSubstNoLists.ty)
;         (b: StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;         h2 == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;         x + 1 >= 0 /\
;         (x + 1 >= 0) /\
;         (forall (return_val: StlcCbvDbPntSubstNoLists.var).
;             return_val == x + 1 ==>
;             (forall (any_result: StlcCbvDbPntSubstNoLists.env).
;                 StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend g 0 b) (x + 1) t_x ==
;                 any_result ==>
;                 Prims.auto_squash (StlcCbvDbPntSubstNoLists.equal (StlcCbvDbPntSubstNoLists.extend b
;                           0
;                           b)
;                       (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend g 0 b)
;                           (x + 1)
;                           t_x)) /\
;                 (forall (return_val:
;                     g':
;                     StlcCbvDbPntSubstNoLists.env
;                       {StlcCbvDbPntSubstNoLists.equal (StlcCbvDbPntSubstNoLists.extend b 0 b) g'}).
;                     return_val ==
;                     StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend g 0 b)
;                       (x + 1)
;                       t_x ==>
;                     StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend g 0 b)
;                       (x + 1)
;                       t_x ==
;                     return_val ==>
;                     (forall (any_result:
;                         StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend
;                                   g
;                                   0
;                                   b)
;                               (x + 1)
;                               t_x)
;                           b
;                           b).
;                         StlcCbvDbPntSubstNoLists.typing_extensional b
;                           (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend g 0 b)
;                               (x + 1)
;                               t_x) ==
;                         any_result ==>
;                         x + 1 >= 0 /\
;                         (forall (return_val: StlcCbvDbPntSubstNoLists.var).
;                             return_val == x + 1 ==>
;                             (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                                 StlcCbvDbPntSubstNoLists.subst_beta (x + 1) v b == any_result ==>
;                                 x + 1 >= 0 /\
;                                 (forall (return_val: StlcCbvDbPntSubstNoLists.var).
;                                     return_val == x + 1 ==>
;                                     b << e /\
;                                     (forall (any_result:
;                                         StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend
;                                               (StlcCbvDbPntSubstNoLists.extend g 0 b)
;                                               (x + 1)
;                                               t_x)
;                                           b
;                                           b).
;                                         StlcCbvDbPntSubstNoLists.typing_extensional b
;                                           (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend
;                                                   g
;                                                   0
;                                                   b)
;                                               (x + 1)
;                                               t_x) ==
;                                         any_result ==>
;                                         (forall (any_result:
;                                             StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend
;                                                   g
;                                                   0
;                                                   b)
;                                               (StlcCbvDbPntSubstNoLists.subst_beta (x + 1) v b)
;                                               b).
;                                             StlcCbvDbPntSubstNoLists.substitution_preserves_typing (x +
;                                                 1)
;                                               h1
;                                               (StlcCbvDbPntSubstNoLists.typing_extensional b
;                                                   (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend
;                                                           g
;                                                           0
;                                                           b)
;                                                       (x + 1)
;                                                       t_x)) ==
;                                             any_result ==>
;                                             (forall (any_result:
;                                                 StlcCbvDbPntSubstNoLists.rtyping g
;                                                   (StlcCbvDbPntSubstNoLists.EAbs b
;                                                       (StlcCbvDbPntSubstNoLists.subst_beta (x + 1)
;                                                           v
;                                                           b))
;                                                   (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                                                 StlcCbvDbPntSubstNoLists.TyAbs b
;                                                   (StlcCbvDbPntSubstNoLists.substitution_preserves_typing
;                                                       (x + 1)
;                                                       h1
;                                                       (StlcCbvDbPntSubstNoLists.typing_extensional b
;                                                           (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend
;                                                                   g
;                                                                   0
;                                                                   b)
;                                                               (x + 1)
;                                                               t_x))) ==
;                                                 any_result ==>
;                                                 StlcCbvDbPntSubstNoLists.EAbs b
;                                                   (StlcCbvDbPntSubstNoLists.subst_beta (x + 1) v b) ==
;                                                 StlcCbvDbPntSubstNoLists.subst_beta x v e /\
;                                                 StlcCbvDbPntSubstNoLists.TArrow b b == t))))))))))) /\
;     (~(TyAbs? h2) ==>
;       (forall (b: StlcCbvDbPntSubstNoLists.env)
;           (b: StlcCbvDbPntSubstNoLists.exp)
;           (b: StlcCbvDbPntSubstNoLists.exp)
;           (b: StlcCbvDbPntSubstNoLists.ty)
;           (b: StlcCbvDbPntSubstNoLists.ty)
;           (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;           (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;           h2 == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;           b == StlcCbvDbPntSubstNoLists.extend g x t_x /\ b << e /\
;           (forall (any_result:
;               StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b)).
;               b == any_result ==>
;               (forall (any_result:
;                   StlcCbvDbPntSubstNoLists.rtyping g
;                     (StlcCbvDbPntSubstNoLists.subst_beta x v b)
;                     (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                   StlcCbvDbPntSubstNoLists.substitution_preserves_typing x h1 b == any_result ==>
;                   b == StlcCbvDbPntSubstNoLists.extend g x t_x /\ b << e /\
;                   (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping b b b).
;                       b == any_result ==>
;                       (forall (any_result:
;                           StlcCbvDbPntSubstNoLists.rtyping g
;                             (StlcCbvDbPntSubstNoLists.subst_beta x v b)
;                             b).
;                           StlcCbvDbPntSubstNoLists.substitution_preserves_typing x h1 b ==
;                           any_result ==>
;                           (forall (any_result:
;                               StlcCbvDbPntSubstNoLists.rtyping g
;                                 (StlcCbvDbPntSubstNoLists.EApp
;                                     (StlcCbvDbPntSubstNoLists.subst_beta x v b)
;                                     (StlcCbvDbPntSubstNoLists.subst_beta x v b))
;                                 b).
;                               StlcCbvDbPntSubstNoLists.TyApp
;                                 (StlcCbvDbPntSubstNoLists.substitution_preserves_typing x h1 b)
;                                 (StlcCbvDbPntSubstNoLists.substitution_preserves_typing x h1 b) ==
;                               any_result ==>
;                               StlcCbvDbPntSubstNoLists.EApp
;                                 (StlcCbvDbPntSubstNoLists.subst_beta x v b)
;                                 (StlcCbvDbPntSubstNoLists.subst_beta x v b) ==
;                               StlcCbvDbPntSubstNoLists.subst_beta x v e /\ b == t))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec substitution_preserves_typing`

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
(Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1)
x_50e78c3fdc2d5cb83ab6b5165045e606_4)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4
x_f498b240629ba8d814a9923ab86d50f6_7))
)


;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4
x_f498b240629ba8d814a9923ab86d50f6_7))
)


;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4
x_f498b240629ba8d814a9923ab86d50f6_7))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Tm_refine_4cd961d487f7cbe11af5091d80b9e58b @x1))

;; def=StlcCbvDbPntSubstNoLists.fst(151,60-153,11); use=StlcCbvDbPntSubstNoLists.fst(152,8-153,11)
(= x_f498b240629ba8d814a9923ab86d50f6_7
(StlcCbvDbPntSubstNoLists.TyVar @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(154,10-154,11)
(or label_2

;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(154,10-154,11)
(Valid 
;; def=Prims.fst(73,23-73,30); use=StlcCbvDbPntSubstNoLists.fst(154,10-154,11)
(Prims.hasEq StlcCbvDbPntSubstNoLists.var)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(588,31-588,32); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= StlcCbvDbPntSubstNoLists.var
@x3)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(154,8-154,11); use=StlcCbvDbPntSubstNoLists.fst(154,8-154,11)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
x_dbcb0a2632e1fed74e708f131516d100_0
@x2)
@x4)
)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1)
x_50e78c3fdc2d5cb83ab6b5165045e606_4)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x6 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(ApplyTT @x5
@x6)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid @query.7))
)

;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(154,8-154,11); use=StlcCbvDbPntSubstNoLists.fst(154,8-154,11)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
x_dbcb0a2632e1fed74e708f131516d100_0
@x2)
(BoxBool true))


;; def=Prims.fst(441,36-441,97); use=StlcCbvDbPntSubstNoLists.fst(154,23-154,44)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=StlcCbvDbPntSubstNoLists.fst(123,21-123,65); use=StlcCbvDbPntSubstNoLists.fst(154,23-154,44)
(forall ((@x7 Term))
 (! (implies (HasType @x7
StlcCbvDbPntSubstNoLists.var)
(not (BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.appears_free_in @x7
x_7597dc0c465777776dc6eae797c43037_2))))
 
;;no pats
:qid @query.9))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(154,71-154,72)
(or label_3

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(154,71-154,72)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(154,71-154,72)
(StlcCbvDbPntSubstNoLists.equalE x_7597dc0c465777776dc6eae797c43037_2
(StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_176b6f43311fd990fabc0c011a366e57_5)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(131,27-151,56); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= x_176b6f43311fd990fabc0c011a366e57_5
@x7)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3))

;; def=StlcCbvDbPntSubstNoLists.fst(150,10-154,72); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.context_invariance x_7597dc0c465777776dc6eae797c43037_2
(StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
x_176b6f43311fd990fabc0c011a366e57_5)
@x8)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(154,49-154,72)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(150,21-151,45); use=StlcCbvDbPntSubstNoLists.fst(154,49-154,72)
(or label_4

;; def=StlcCbvDbPntSubstNoLists.fst(150,21-151,45); use=StlcCbvDbPntSubstNoLists.fst(154,49-154,72)
(= x_7597dc0c465777776dc6eae797c43037_2
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(151,47-151,53); use=StlcCbvDbPntSubstNoLists.fst(154,49-154,72)
(or label_5

;; def=StlcCbvDbPntSubstNoLists.fst(151,47-151,53); use=StlcCbvDbPntSubstNoLists.fst(154,49-154,72)
(= x_50e78c3fdc2d5cb83ab6b5165045e606_3
x_50e78c3fdc2d5cb83ab6b5165045e606_4)
)
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
:qid @query.8))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(154,8-154,11); use=StlcCbvDbPntSubstNoLists.fst(154,8-154,11)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
x_dbcb0a2632e1fed74e708f131516d100_0
@x2)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(154,8-156,33); use=StlcCbvDbPntSubstNoLists.fst(154,8-156,33)
(= (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
x_dbcb0a2632e1fed74e708f131516d100_0
@x2)
@x6)
)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1)
x_50e78c3fdc2d5cb83ab6b5165045e606_4)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x8 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(ApplyTT @x7
@x8)
)

 

:pattern ((ApplyTT @x7
@x8))
:qid @query.14))
)

;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(155,13-155,16); use=StlcCbvDbPntSubstNoLists.fst(155,13-155,16)
(= (Prims.op_LessThan @x2
x_dbcb0a2632e1fed74e708f131516d100_0)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(155,44-155,45)
(or label_6

;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(155,44-155,45)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(131,34-131,47); use=StlcCbvDbPntSubstNoLists.fst(155,44-155,45)
(StlcCbvDbPntSubstNoLists.equalE x_7597dc0c465777776dc6eae797c43037_1
(StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_176b6f43311fd990fabc0c011a366e57_5)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(131,27-151,56); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= x_176b6f43311fd990fabc0c011a366e57_5
@x8)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4))

;; def=StlcCbvDbPntSubstNoLists.fst(150,10-155,45); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.context_invariance x_7597dc0c465777776dc6eae797c43037_1
(StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_50e78c3fdc2d5cb83ab6b5165045e606_4
x_f498b240629ba8d814a9923ab86d50f6_7
x_176b6f43311fd990fabc0c011a366e57_5)
@x9)
)

;; def=StlcCbvDbPntSubstNoLists.fst(150,21-151,42); use=StlcCbvDbPntSubstNoLists.fst(155,22-155,45)
(or label_7

;; def=StlcCbvDbPntSubstNoLists.fst(150,21-151,42); use=StlcCbvDbPntSubstNoLists.fst(155,22-155,45)
(= x_7597dc0c465777776dc6eae797c43037_1
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1))
)
)
 
;;no pats
:qid @query.16))
)
 
;;no pats
:qid @query.15))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(155,13-155,16); use=StlcCbvDbPntSubstNoLists.fst(155,13-155,16)
(= (Prims.op_LessThan @x2
x_dbcb0a2632e1fed74e708f131516d100_0)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(155,13-156,33); use=StlcCbvDbPntSubstNoLists.fst(155,13-156,33)
(= (Prims.op_LessThan @x2
x_dbcb0a2632e1fed74e708f131516d100_0)
@x8)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(156,28-156,33)
(or label_8

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(156,28-156,33)
(>= (BoxInt_proj_0 (Prims.op_Subtraction @x2
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(156,28-156,33)
(or label_9

;; def=StlcCbvDbPntSubstNoLists.fst(77,18-77,29); use=StlcCbvDbPntSubstNoLists.fst(156,28-156,33)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_176b6f43311fd990fabc0c011a366e57_5
(Prims.op_Subtraction @x2
(BoxInt 1)))))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Tm_refine_81d04f5ba483b15eb79d3787cd382c85)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x9
(Prims.op_Subtraction @x2
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.EVar (Prims.op_Subtraction @x2
(BoxInt 1)))
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_176b6f43311fd990fabc0c011a366e57_5
(Prims.op_Subtraction @x2
(BoxInt 1))))))

;; def=StlcCbvDbPntSubstNoLists.fst(150,10-156,33); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.TyVar x_176b6f43311fd990fabc0c011a366e57_5
(Prims.op_Subtraction @x2
(BoxInt 1)))
@x10)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,33)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(78,24-150,39); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,33)
(or label_10

;; def=StlcCbvDbPntSubstNoLists.fst(78,24-150,39); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,33)
(= (StlcCbvDbPntSubstNoLists.EVar (Prims.op_Subtraction @x2
(BoxInt 1)))
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(78,33-151,53); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,33)
(or label_11

;; def=StlcCbvDbPntSubstNoLists.fst(78,33-151,53); use=StlcCbvDbPntSubstNoLists.fst(156,22-156,33)
(= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.ty
(ApplyTT x_176b6f43311fd990fabc0c011a366e57_5
(Prims.op_Subtraction @x2
(BoxInt 1))))
x_50e78c3fdc2d5cb83ab6b5165045e606_4)
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
))
)
 
;;no pats
:qid @query.13)))
 
;;no pats
:qid @query.12))
))
)
 
;;no pats
:qid @query.6)))
 
;;no pats
:qid @query.5))
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

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyVar (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4
x_f498b240629ba8d814a9923ab86d50f6_7))
)


;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(151,60-157,29); use=StlcCbvDbPntSubstNoLists.fst(152,8-157,29)
(= x_f498b240629ba8d814a9923ab86d50f6_7
(StlcCbvDbPntSubstNoLists.TyAbs @x1
@x2
@x3
@x4
@x5))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(158,65-158,70)
(or label_12

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(158,65-158,70)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(158,65-158,70)
(or label_13

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(158,65-158,70)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x6
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
StlcCbvDbPntSubstNoLists.env)

;; def=StlcCbvDbPntSubstNoLists.fst(142,27-158,75); use=StlcCbvDbPntSubstNoLists.fst(158,17-158,75)
(= (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x7)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(158,40-158,75)
(or label_14

;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(158,40-158,75)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(142,34-142,44); use=StlcCbvDbPntSubstNoLists.fst(158,40-158,75)
(StlcCbvDbPntSubstNoLists.equal (StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
)
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Tm_refine_a9728dfe3c3fa9c8e89b78fbaf871efd @x1
@x2))

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x8
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3))


;; def=StlcCbvDbPntSubstNoLists.fst(142,27-158,75); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x8)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(158,10-158,75); use=StlcCbvDbPntSubstNoLists.fst(158,10-158,75)
(= (StlcCbvDbPntSubstNoLists.typing_extensional @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x4
@x5
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
@x9)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(159,17-159,46)
(or label_15

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(159,17-159,46)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x10
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(81,13-150,39); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.subst_beta (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_7597dc0c465777776dc6eae797c43037_2
@x3)
@x11)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(159,47-159,52)
(or label_16

;; def=Prims.fst(680,18-680,24); use=StlcCbvDbPntSubstNoLists.fst(159,47-159,52)
(>= (BoxInt_proj_0 (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
StlcCbvDbPntSubstNoLists.var)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x12
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(159,56-159,60)
(or label_17

;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(159,56-159,60)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(159,56-159,60)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x3
x_7597dc0c465777776dc6eae797c43037_1)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(149,6-158,14); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.typing_extensional @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x4
@x5
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
@x13)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(StlcCbvDbPntSubstNoLists.subst_beta (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_7597dc0c465777776dc6eae797c43037_2
@x3)
@x4))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
@x3
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3
@x4
(StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
(StlcCbvDbPntSubstNoLists.typing_extensional @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x4
@x5
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3)))
@x14)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.EAbs @x2
(StlcCbvDbPntSubstNoLists.subst_beta (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_7597dc0c465777776dc6eae797c43037_2
@x3))
(StlcCbvDbPntSubstNoLists.TArrow @x2
@x4)))

;; def=StlcCbvDbPntSubstNoLists.fst(150,10-159,61); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.TyAbs x_176b6f43311fd990fabc0c011a366e57_5
@x2
(StlcCbvDbPntSubstNoLists.subst_beta (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_7597dc0c465777776dc6eae797c43037_2
@x3)
@x4
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
@x3
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3
@x4
(StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
(StlcCbvDbPntSubstNoLists.typing_extensional @x3
(StlcCbvDbPntSubstNoLists.extend @x1
(BoxInt 0)
@x2)
@x4
@x5
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
(BoxInt 0)
@x2)
(Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_50e78c3fdc2d5cb83ab6b5165045e606_3))))
@x15)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(159,6-159,61)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(84,22-150,39); use=StlcCbvDbPntSubstNoLists.fst(159,6-159,61)
(or label_18

;; def=StlcCbvDbPntSubstNoLists.fst(84,22-150,39); use=StlcCbvDbPntSubstNoLists.fst(159,6-159,61)
(= (StlcCbvDbPntSubstNoLists.EAbs @x2
(StlcCbvDbPntSubstNoLists.subst_beta (Prims.op_Addition x_dbcb0a2632e1fed74e708f131516d100_0
(BoxInt 1))
x_7597dc0c465777776dc6eae797c43037_2
@x3))
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(84,34-151,53); use=StlcCbvDbPntSubstNoLists.fst(159,6-159,61)
(or label_19

;; def=StlcCbvDbPntSubstNoLists.fst(84,34-151,53); use=StlcCbvDbPntSubstNoLists.fst(159,6-159,61)
(= (StlcCbvDbPntSubstNoLists.TArrow @x2
@x4)
x_50e78c3fdc2d5cb83ab6b5165045e606_4)
)
)
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
)
)
 
;;no pats
:qid @query.30))
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
 
;;no pats
:qid @query.22))
)
 
;;no pats
:qid @query.21))
)
 
;;no pats
:qid @query.20))

(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(151,60-151,62); use=StlcCbvDbPntSubstNoLists.fst(152,8-152,10)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs (StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3)
x_7597dc0c465777776dc6eae797c43037_1
x_50e78c3fdc2d5cb83ab6b5165045e606_4
x_f498b240629ba8d814a9923ab86d50f6_7))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x5 Term))
 (! (implies (HasType @x5
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(151,60-160,39); use=StlcCbvDbPntSubstNoLists.fst(152,8-160,39)
(= x_f498b240629ba8d814a9923ab86d50f6_7
(StlcCbvDbPntSubstNoLists.TyApp @x1
@x2
@x3
@x4
@x5
@x6
@x7))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(149,17-160,13); use=StlcCbvDbPntSubstNoLists.fst(164,43-164,46)
(or label_20

;; def=StlcCbvDbPntSubstNoLists.fst(149,17-160,13); use=StlcCbvDbPntSubstNoLists.fst(164,43-164,46)
(= @x1
(StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
)


;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(164,43-164,46)
(or label_21

;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(164,43-164,46)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(164,43-164,46)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_1)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x2
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))

;; def=StlcCbvDbPntSubstNoLists.fst(149,6-160,35); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x6
@x8)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x2)
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing x_dbcb0a2632e1fed74e708f131516d100_0
@x2
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)
x_176b6f43311fd990fabc0c011a366e57_5
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
@x6)
@x9)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(149,17-160,13); use=StlcCbvDbPntSubstNoLists.fst(165,43-165,46)
(or label_22

;; def=StlcCbvDbPntSubstNoLists.fst(149,17-160,13); use=StlcCbvDbPntSubstNoLists.fst(165,43-165,46)
(= @x1
(StlcCbvDbPntSubstNoLists.extend x_176b6f43311fd990fabc0c011a366e57_5
x_dbcb0a2632e1fed74e708f131516d100_0
x_50e78c3fdc2d5cb83ab6b5165045e606_3))
)


;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(165,43-165,46)
(or label_23

;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(165,43-165,46)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(152,2-165,48); use=StlcCbvDbPntSubstNoLists.fst(165,43-165,46)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x3
x_7597dc0c465777776dc6eae797c43037_1)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(StlcCbvDbPntSubstNoLists.rtyping @x1
@x3
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(149,6-160,39); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= @x7
@x10)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x3)
@x4))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing x_dbcb0a2632e1fed74e708f131516d100_0
@x3
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3
@x4
x_176b6f43311fd990fabc0c011a366e57_5
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
@x7)
@x11)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(StlcCbvDbPntSubstNoLists.rtyping x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x2)
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x3))
@x5))

;; def=StlcCbvDbPntSubstNoLists.fst(150,10-165,48); use=StlcCbvDbPntSubstNoLists.fst(152,2-165,48)
(= (StlcCbvDbPntSubstNoLists.TyApp x_176b6f43311fd990fabc0c011a366e57_5
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x2)
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x3)
@x4
@x5
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing x_dbcb0a2632e1fed74e708f131516d100_0
@x2
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3
(StlcCbvDbPntSubstNoLists.TArrow @x4
@x5)
x_176b6f43311fd990fabc0c011a366e57_5
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
@x6)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing x_dbcb0a2632e1fed74e708f131516d100_0
@x3
x_7597dc0c465777776dc6eae797c43037_2
x_50e78c3fdc2d5cb83ab6b5165045e606_3
@x4
x_176b6f43311fd990fabc0c011a366e57_5
x_882d7b6269402c6acfefb2c8b4e6c2d6_6
@x7))
@x12)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(163,4-165,48)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(92,22-150,39); use=StlcCbvDbPntSubstNoLists.fst(163,4-165,48)
(or label_24

;; def=StlcCbvDbPntSubstNoLists.fst(92,22-150,39); use=StlcCbvDbPntSubstNoLists.fst(163,4-165,48)
(= (StlcCbvDbPntSubstNoLists.EApp (StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x2)
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
@x3))
(StlcCbvDbPntSubstNoLists.subst_beta x_dbcb0a2632e1fed74e708f131516d100_0
x_7597dc0c465777776dc6eae797c43037_2
x_7597dc0c465777776dc6eae797c43037_1))
)


;; def=StlcCbvDbPntSubstNoLists.fst(151,52-160,31); use=StlcCbvDbPntSubstNoLists.fst(163,4-165,48)
(or label_25

;; def=StlcCbvDbPntSubstNoLists.fst(151,52-160,31); use=StlcCbvDbPntSubstNoLists.fst(163,4-165,48)
(= @x5
x_50e78c3fdc2d5cb83ab6b5165045e606_4)
)
)
)
 
;;no pats
:qid @query.46))
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
 
;;no pats
:qid @query.42))
)
)
 
;;no pats
:qid @query.41))
)
 
;;no pats
:qid @query.40))
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
 
;;no pats
:qid @query.35))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.substitution_preserves_typing, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, @fuel_correspondence_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented, @fuel_irrelevance_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented, @query, StlcCbvDbPntSubstNoLists_pretyping_50e78c3fdc2d5cb83ab6b5165045e606, StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037, binder_x_50e78c3fdc2d5cb83ab6b5165045e606_3, binder_x_50e78c3fdc2d5cb83ab6b5165045e606_4, binder_x_7597dc0c465777776dc6eae797c43037_1, binder_x_7597dc0c465777776dc6eae797c43037_2, binder_x_dbcb0a2632e1fed74e708f131516d100_0, binder_x_f498b240629ba8d814a9923ab86d50f6_7, bool_inversion, constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs, constructor_distinct_StlcCbvDbPntSubstNoLists.EApp, constructor_distinct_StlcCbvDbPntSubstNoLists.EVar, data_elim_StlcCbvDbPntSubstNoLists.EVar, data_elim_StlcCbvDbPntSubstNoLists.TyAbs, data_elim_StlcCbvDbPntSubstNoLists.TyApp, data_elim_StlcCbvDbPntSubstNoLists.TyVar, disc_equation_FStar.Pervasives.Native.Some, disc_equation_StlcCbvDbPntSubstNoLists.TyAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyApp, disc_equation_StlcCbvDbPntSubstNoLists.TyVar, equation_Prims.eqtype, equation_Prims.nat, equation_StlcCbvDbPntSubstNoLists.equal, equation_StlcCbvDbPntSubstNoLists.equalE, equation_StlcCbvDbPntSubstNoLists.extend, equation_StlcCbvDbPntSubstNoLists.var, equation_with_fuel_StlcCbvDbPntSubstNoLists.appears_free_in.fuel_instrumented, equation_with_fuel_StlcCbvDbPntSubstNoLists.subst_beta.fuel_instrumented, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, interpretation_Tm_abs_bb5dcb84faf64402e65d56a8e18c7515, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, primitive_Prims.op_Subtraction, proj_equation_FStar.Pervasives.Native.Some_v, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Some_v, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__0, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1, projection_inverse_StlcCbvDbPntSubstNoLists.EVar__0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_4cd961d487f7cbe11af5091d80b9e58b, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_StlcCbvDbPntSubstNoLists.EAbs, subterm_ordering_StlcCbvDbPntSubstNoLists.EApp, typing_Prims.int, typing_StlcCbvDbPntSubstNoLists.appears_free_in, typing_StlcCbvDbPntSubstNoLists.subst_beta

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec substitution_preserves_typing


; <Start encoding let rec substitution_preserves_typing>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented (Fuel Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented_token () Term)
(declare-fun StlcCbvDbPntSubstNoLists.substitution_preserves_typing (Term Term Term Term Term Term Term Term) Term)
(declare-fun StlcCbvDbPntSubstNoLists.substitution_preserves_typing@tok () Term)
;;;;;;;;;;;;;;;;x: var -> h1: rtyping empty v t_x -> h2: rtyping (extend g x t_x) e t   -> Prims.Tot (rtyping g (subst_beta x v e) t)
(declare-fun Tm_arrow_45b4d2765e1a9556aec453abff3a1f3b () Term)

; </end encoding let rec substitution_preserves_typing>

(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(167,0-168,60)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(167,38-167,73)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

:named refinement_kinding_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(167,38-167,73)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(167,58-167,72)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

:named refinement_interpretation_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(167,38-167,73)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x1
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1))))
:qid haseqTm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

:named haseqTm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

; Encoding query formula : forall (e: StlcCbvDbPntSubstNoLists.exp)
;   (t: StlcCbvDbPntSubstNoLists.ty)
;   (h:
;   StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t
;     {Some? (StlcCbvDbPntSubstNoLists.step e)}).
;   (*  - Subtyping check failed
;   - Expected type _: FStar.Pervasives.Native.option exp {Some? _}
;     got type FStar.Pervasives.Native.option exp
; *)
;   Some? (StlcCbvDbPntSubstNoLists.step e)


; Context: While encoding a query
; While typechecking the top-level declaration `val StlcCbvDbPntSubstNoLists.preservation`

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
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(167,0-168,60)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.ty)
(HasType @x2
(Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x1
@x0)))

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(168,34-168,42)
(or label_1

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(168,34-168,42)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x0)))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.preservation, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val StlcCbvDbPntSubstNoLists.preservation


; <Skipped val StlcCbvDbPntSubstNoLists.preservation/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.substitution_preserves_typing; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.var)
(HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.ty)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.env)
(HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x2
@x3))
(HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x5
@x0
@x3)
@x1
@x4)))
(HasType (StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.rtyping @x5
(StlcCbvDbPntSubstNoLists.subst_beta @x0
@x2
@x1)
@x4)))
 

:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))

:named typing_StlcCbvDbPntSubstNoLists.substitution_preserves_typing))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.substitution_preserves_typing; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.ty)
(HasType @x6
StlcCbvDbPntSubstNoLists.env)
(HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x4))
(HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x6
@x1
@x4)
@x2
@x5)))
(HasType (StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented @u0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(StlcCbvDbPntSubstNoLists.rtyping @x6
(StlcCbvDbPntSubstNoLists.subst_beta @x1
@x3
@x2)
@x5)))
 

:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented @u0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))

:named token_correspondence_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: StlcCbvDbPntSubstNoLists.substitution_preserves_typing
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.substitution_preserves_typing; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.var)
(HasType @x2
StlcCbvDbPntSubstNoLists.exp)
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
StlcCbvDbPntSubstNoLists.ty)
(HasType @x6
StlcCbvDbPntSubstNoLists.env)
(HasType @x7
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x4))
(HasType @x8
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x6
@x1
@x4)
@x2
@x5)))
(= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(let ((@lb9 @x8))
(ite (is-StlcCbvDbPntSubstNoLists.TyVar @lb9)
(let ((@lb10 (Prims.op_Equality StlcCbvDbPntSubstNoLists.var
@x1
(StlcCbvDbPntSubstNoLists.TyVar_x @lb9))))
(ite (= @lb10
(BoxBool true))
(StlcCbvDbPntSubstNoLists.context_invariance @x3
(StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x4
@x7
@x6)
(let ((@lb11 (Prims.op_LessThan (StlcCbvDbPntSubstNoLists.TyVar_x @lb9)
@x1)))
(ite (= @lb11
(BoxBool true))
(StlcCbvDbPntSubstNoLists.context_invariance @x2
(StlcCbvDbPntSubstNoLists.extend @x6
@x1
@x4)
@x5
@x8
@x6)
(StlcCbvDbPntSubstNoLists.TyVar @x6
(Prims.op_Subtraction (StlcCbvDbPntSubstNoLists.TyVar_x @lb9)
(BoxInt 1)))))))
(ite (is-StlcCbvDbPntSubstNoLists.TyAbs @lb9)
(StlcCbvDbPntSubstNoLists.TyAbs @x6
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb9)
(StlcCbvDbPntSubstNoLists.subst_beta (Prims.op_Addition @x1
(BoxInt 1))
@x3
(StlcCbvDbPntSubstNoLists.TyAbs_e1 @lb9))
(StlcCbvDbPntSubstNoLists.TyAbs_t_ @lb9)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented @u0
(Prims.op_Addition @x1
(BoxInt 1))
(StlcCbvDbPntSubstNoLists.TyAbs_e1 @lb9)
@x3
@x4
(StlcCbvDbPntSubstNoLists.TyAbs_t_ @lb9)
(StlcCbvDbPntSubstNoLists.extend @x6
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb9))
@x7
(StlcCbvDbPntSubstNoLists.typing_extensional (StlcCbvDbPntSubstNoLists.TyAbs_e1 @lb9)
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.TyAbs_g @lb9)
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb9))
(StlcCbvDbPntSubstNoLists.TyAbs_t_ @lb9)
(StlcCbvDbPntSubstNoLists.TyAbs__4 @lb9)
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.extend @x6
(BoxInt 0)
(StlcCbvDbPntSubstNoLists.TyAbs_t @lb9))
(Prims.op_Addition @x1
(BoxInt 1))
@x4))))
(ite (is-StlcCbvDbPntSubstNoLists.TyApp @lb9)
(StlcCbvDbPntSubstNoLists.TyApp @x6
(StlcCbvDbPntSubstNoLists.subst_beta @x1
@x3
(StlcCbvDbPntSubstNoLists.TyApp_e1 @lb9))
(StlcCbvDbPntSubstNoLists.subst_beta @x1
@x3
(StlcCbvDbPntSubstNoLists.TyApp_e2 @lb9))
(StlcCbvDbPntSubstNoLists.TyApp_t11 @lb9)
(StlcCbvDbPntSubstNoLists.TyApp_t12 @lb9)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented @u0
@x1
(StlcCbvDbPntSubstNoLists.TyApp_e1 @lb9)
@x3
@x4
(StlcCbvDbPntSubstNoLists.TArrow (StlcCbvDbPntSubstNoLists.TyApp_t11 @lb9)
(StlcCbvDbPntSubstNoLists.TyApp_t12 @lb9))
@x6
@x7
(StlcCbvDbPntSubstNoLists.TyApp__5 @lb9))
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented @u0
@x1
(StlcCbvDbPntSubstNoLists.TyApp_e2 @lb9)
@x3
@x4
(StlcCbvDbPntSubstNoLists.TyApp_t11 @lb9)
@x6
@x7
(StlcCbvDbPntSubstNoLists.TyApp__6 @lb9)))
Tm_unit))))))
 :weight 0


:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid equation_with_fuel_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))

:named equation_with_fuel_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.substitution_preserves_typing; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
 

:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid @fuel_irrelevance_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))

:named @fuel_irrelevance_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name StlcCbvDbPntSubstNoLists.substitution_preserves_typing; Namespace StlcCbvDbPntSubstNoLists
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(151,8-151,37); use=StlcCbvDbPntSubstNoLists.fst(151,8-151,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7)
(StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
 

:pattern ((StlcCbvDbPntSubstNoLists.substitution_preserves_typing @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7))
:qid @fuel_correspondence_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))

:named @fuel_correspondence_StlcCbvDbPntSubstNoLists.substitution_preserves_typing.fuel_instrumented))
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(169,30-177,36)

;;;;;;;;;;;;;;;;e : StlcCbvDbPntSubstNoLists.exp (StlcCbvDbPntSubstNoLists.exp)
(declare-fun x_7597dc0c465777776dc6eae797c43037_0 () Term)
;;;;;;;;;;;;;;;;binder_x_7597dc0c465777776dc6eae797c43037_0
;;; Fact-ids: 
(assert (! (HasType x_7597dc0c465777776dc6eae797c43037_0
StlcCbvDbPntSubstNoLists.exp)
:named binder_x_7597dc0c465777776dc6eae797c43037_0))
;;;;;;;;;;;;;;;;t : StlcCbvDbPntSubstNoLists.ty (StlcCbvDbPntSubstNoLists.ty)
(declare-fun x_50e78c3fdc2d5cb83ab6b5165045e606_1 () Term)
;;;;;;;;;;;;;;;;binder_x_50e78c3fdc2d5cb83ab6b5165045e606_1
;;; Fact-ids: 
(assert (! (HasType x_50e78c3fdc2d5cb83ab6b5165045e606_1
StlcCbvDbPntSubstNoLists.ty)
:named binder_x_50e78c3fdc2d5cb83ab6b5165045e606_1))
;;;;;;;;;;;;;;;;h : h: StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t {Some? (StlcCbvDbPntSubstNoLists.step e)} (h: StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t {Some? (StlcCbvDbPntSubstNoLists.step e)})
(declare-fun x_712f8ef1f5239133a92e853010402ae9_2 () Term)
(declare-fun Tm_refine_f37d7c08290e28d70c839a5ceabfa495 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_f37d7c08290e28d70c839a5ceabfa495
Tm_type)
:named refinement_kinding_Tm_refine_f37d7c08290e28d70c839a5ceabfa495))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f37d7c08290e28d70c839a5ceabfa495)
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1))

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f37d7c08290e28d70c839a5ceabfa495))
:qid refinement_interpretation_Tm_refine_f37d7c08290e28d70c839a5ceabfa495))

:named refinement_interpretation_Tm_refine_f37d7c08290e28d70c839a5ceabfa495))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f37d7c08290e28d70c839a5ceabfa495
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f37d7c08290e28d70c839a5ceabfa495))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1))))
:named haseqTm_refine_f37d7c08290e28d70c839a5ceabfa495))
;;;;;;;;;;;;;;;;binder_x_712f8ef1f5239133a92e853010402ae9_2
;;; Fact-ids: 
(assert (! (HasType x_712f8ef1f5239133a92e853010402ae9_2
Tm_refine_f37d7c08290e28d70c839a5ceabfa495)
:named binder_x_712f8ef1f5239133a92e853010402ae9_2))
(declare-fun Tm_refine_823f85c11d47b5190ad6f10040457b99 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_823f85c11d47b5190ad6f10040457b99 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_823f85c11d47b5190ad6f10040457b99 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_823f85c11d47b5190ad6f10040457b99))

:named refinement_kinding_Tm_refine_823f85c11d47b5190ad6f10040457b99))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_823f85c11d47b5190ad6f10040457b99 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x3)))


;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)

;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x3
x_7597dc0c465777776dc6eae797c43037_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_823f85c11d47b5190ad6f10040457b99 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_823f85c11d47b5190ad6f10040457b99))

:named refinement_interpretation_Tm_refine_823f85c11d47b5190ad6f10040457b99))
;;;;;;;;;;;;;;;;haseq for Tm_refine_823f85c11d47b5190ad6f10040457b99
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_823f85c11d47b5190ad6f10040457b99 @x0
@x1)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x1
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_823f85c11d47b5190ad6f10040457b99 @x0
@x1))))
:qid haseqTm_refine_823f85c11d47b5190ad6f10040457b99))

:named haseqTm_refine_823f85c11d47b5190ad6f10040457b99))
(declare-fun StlcCbvDbPntSubstNoLists.preservation (Term Term Term) Term)

;;;;;;;;;;;;;;;;h: (h: rtyping empty e t {Some? (step e)}){e << e} -> Prims.Tot (rtyping empty (step e).v t)
(declare-fun Tm_arrow_1b82b85fe30302376732fc81589f34dd () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1b82b85fe30302376732fc81589f34dd
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_1b82b85fe30302376732fc81589f34dd
Tm_type)
:named kinding_Tm_arrow_1b82b85fe30302376732fc81589f34dd))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,22-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1b82b85fe30302376732fc81589f34dd)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1b82b85fe30302376732fc81589f34dd))
:qid StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_1b82b85fe30302376732fc81589f34dd))

:named StlcCbvDbPntSubstNoLists_pre_typing_Tm_arrow_1b82b85fe30302376732fc81589f34dd))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1b82b85fe30302376732fc81589f34dd
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,22-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1b82b85fe30302376732fc81589f34dd)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(167,22-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty)
(HasType @x3
(Tm_refine_823f85c11d47b5190ad6f10040457b99 @x2
@x1)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1))
@x2)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_1b82b85fe30302376732fc81589f34dd.1))

(IsTotFun @x0)

;; def=StlcCbvDbPntSubstNoLists.fst(167,22-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_1b82b85fe30302376732fc81589f34dd.2))


;; def=StlcCbvDbPntSubstNoLists.fst(167,22-177,36); use=StlcCbvDbPntSubstNoLists.fst(167,38-177,36)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
StlcCbvDbPntSubstNoLists.exp)
(HasType @x2
StlcCbvDbPntSubstNoLists.ty))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_1b82b85fe30302376732fc81589f34dd.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1b82b85fe30302376732fc81589f34dd))
:qid StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_1b82b85fe30302376732fc81589f34dd))

:named StlcCbvDbPntSubstNoLists_interpretation_Tm_arrow_1b82b85fe30302376732fc81589f34dd))
(declare-fun StlcCbvDbPntSubstNoLists.preservation@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(169,8-169,20); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.preservation@tok
@x0)
@x1)
@x2)
(StlcCbvDbPntSubstNoLists.preservation @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.preservation@tok
@x0)
@x1)
@x2))
:qid token_correspondence_StlcCbvDbPntSubstNoLists.preservation))

:named token_correspondence_StlcCbvDbPntSubstNoLists.preservation))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(169,8-169,20); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType StlcCbvDbPntSubstNoLists.preservation@tok
Tm_arrow_1b82b85fe30302376732fc81589f34dd))

;; def=StlcCbvDbPntSubstNoLists.fst(169,8-169,20); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT StlcCbvDbPntSubstNoLists.preservation@tok
@x1)
@x2)
@x3)
(StlcCbvDbPntSubstNoLists.preservation @x1
@x2
@x3))
 

:pattern ((StlcCbvDbPntSubstNoLists.preservation @x1
@x2
@x3))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.preservation.1))
)
 

:pattern ((ApplyTT @x0
StlcCbvDbPntSubstNoLists.preservation@tok))
:qid function_token_typing_StlcCbvDbPntSubstNoLists.preservation))

:named function_token_typing_StlcCbvDbPntSubstNoLists.preservation))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(169,8-169,20); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.ty)
(HasType @x2
(Tm_refine_823f85c11d47b5190ad6f10040457b99 @x1
@x0)))
(HasType (StlcCbvDbPntSubstNoLists.preservation @x0
@x1
@x2)
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x0))
@x1)))
 

:pattern ((StlcCbvDbPntSubstNoLists.preservation @x0
@x1
@x2))
:qid typing_StlcCbvDbPntSubstNoLists.preservation))

:named typing_StlcCbvDbPntSubstNoLists.preservation))
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
(declare-fun Tm_refine_5891c17674442313f31cced796adb679 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_5891c17674442313f31cced796adb679
Tm_type)
:named refinement_kinding_Tm_refine_5891c17674442313f31cced796adb679))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_5891c17674442313f31cced796adb679)
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp))

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_5891c17674442313f31cced796adb679))
:qid refinement_interpretation_Tm_refine_5891c17674442313f31cced796adb679))

:named refinement_interpretation_Tm_refine_5891c17674442313f31cced796adb679))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5891c17674442313f31cced796adb679
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_5891c17674442313f31cced796adb679))
(Valid (Prims.hasEq (FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp))))
:named haseqTm_refine_5891c17674442313f31cced796adb679))


; Encoding query formula : Some? (StlcCbvDbPntSubstNoLists.step e) /\
; (~(TyApp? h) ==> Prims.l_False) /\
; (forall (b: StlcCbvDbPntSubstNoLists.env)
;     (b: StlcCbvDbPntSubstNoLists.exp)
;     (b: StlcCbvDbPntSubstNoLists.exp)
;     (b: StlcCbvDbPntSubstNoLists.ty)
;     (b: StlcCbvDbPntSubstNoLists.ty)
;     (b: StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;     (b: StlcCbvDbPntSubstNoLists.rtyping b b b).
;     h == StlcCbvDbPntSubstNoLists.TyApp b b ==>
;     Some? (StlcCbvDbPntSubstNoLists.step e) /\
;     (forall (k:
;         Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;               (StlcCbvDbPntSubstNoLists.step e).v
;               t)).
;         (forall (x:
;             StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;               (StlcCbvDbPntSubstNoLists.step e).v
;               t).
;             {:pattern Prims.guard_free (k x)}
;             Prims.auto_squash (k x)) ==>
;         (StlcCbvDbPntSubstNoLists.is_value b == true ==>
;           Some? (StlcCbvDbPntSubstNoLists.step e) /\
;           (forall (k:
;               Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;                     (StlcCbvDbPntSubstNoLists.step e).v
;                     t)).
;               (forall (x:
;                   StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;                     (StlcCbvDbPntSubstNoLists.step e).v
;                     t).
;                   {:pattern Prims.guard_free (k x)}
;                   Prims.auto_squash (k x)) ==>
;               (StlcCbvDbPntSubstNoLists.is_value b == true ==>
;                 Some? (StlcCbvDbPntSubstNoLists.step e) /\
;                 (~(TyAbs? b) ==> Prims.l_False) /\
;                 (forall (b: StlcCbvDbPntSubstNoLists.env)
;                     (b: StlcCbvDbPntSubstNoLists.ty)
;                     (b: StlcCbvDbPntSubstNoLists.exp)
;                     (b: StlcCbvDbPntSubstNoLists.ty)
;                     (b:
;                     StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b) b b).
;                     b == StlcCbvDbPntSubstNoLists.TyAbs b b ==>
;                     b == StlcCbvDbPntSubstNoLists.empty /\
;                     (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping b b b).
;                         b == any_result ==>
;                         StlcCbvDbPntSubstNoLists.extend b 0 b ==
;                         StlcCbvDbPntSubstNoLists.extend StlcCbvDbPntSubstNoLists.empty 0 b /\
;                         (forall (any_result:
;                             StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend b 0 b)
;                               b
;                               b).
;                             b == any_result ==>
;                             (forall (any_result:
;                                 StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;                                   (StlcCbvDbPntSubstNoLists.subst_beta 0 b b)
;                                   b).
;                                 StlcCbvDbPntSubstNoLists.substitution_preserves_typing 0 b b ==
;                                 any_result ==>
;                                 StlcCbvDbPntSubstNoLists.subst_beta 0 b b ==
;                                 (StlcCbvDbPntSubstNoLists.step e).v /\ b == t))))) /\
;               (~(StlcCbvDbPntSubstNoLists.is_value b = true) ==>
;                 (forall (b: Prims.bool).
;                     StlcCbvDbPntSubstNoLists.is_value b == b ==>
;                     Some? (StlcCbvDbPntSubstNoLists.step b) /\
;                     (forall (return_val:
;                         _: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp {Some? _}).
;                         return_val == StlcCbvDbPntSubstNoLists.step b ==>
;                         (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                             (StlcCbvDbPntSubstNoLists.step b).v == any_result ==>
;                             b == StlcCbvDbPntSubstNoLists.empty /\
;                             Some? (StlcCbvDbPntSubstNoLists.step b) /\ (b << e) /\
;                             (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping b b b).
;                                 b == any_result ==>
;                                 (forall (any_result:
;                                     StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;                                       (StlcCbvDbPntSubstNoLists.step b).v
;                                       b).
;                                     StlcCbvDbPntSubstNoLists.preservation b == any_result ==>
;                                     StlcCbvDbPntSubstNoLists.empty == b /\
;                                     (forall (return_val:
;                                         StlcCbvDbPntSubstNoLists.rtyping b
;                                           (StlcCbvDbPntSubstNoLists.step b).v
;                                           b).
;                                         return_val == StlcCbvDbPntSubstNoLists.preservation b ==>
;                                         StlcCbvDbPntSubstNoLists.preservation b == return_val ==>
;                                         (forall (any_result:
;                                             StlcCbvDbPntSubstNoLists.rtyping b
;                                               (StlcCbvDbPntSubstNoLists.EApp b
;                                                   (StlcCbvDbPntSubstNoLists.step b).v)
;                                               b).
;                                             StlcCbvDbPntSubstNoLists.TyApp b
;                                               (StlcCbvDbPntSubstNoLists.preservation b) ==
;                                             any_result ==>
;                                             StlcCbvDbPntSubstNoLists.EApp b
;                                               (StlcCbvDbPntSubstNoLists.step b).v ==
;                                             (StlcCbvDbPntSubstNoLists.step e).v /\
;                                             (b == t) /\ (b == StlcCbvDbPntSubstNoLists.empty))))))))
;               ))) /\
;         (~(StlcCbvDbPntSubstNoLists.is_value b = true) ==>
;           (forall (b: Prims.bool).
;               StlcCbvDbPntSubstNoLists.is_value b == b ==>
;               Some? (StlcCbvDbPntSubstNoLists.step b) /\
;               (forall (return_val:
;                   _: FStar.Pervasives.Native.option StlcCbvDbPntSubstNoLists.exp {Some? _}).
;                   return_val == StlcCbvDbPntSubstNoLists.step b ==>
;                   (forall (any_result: StlcCbvDbPntSubstNoLists.exp).
;                       (StlcCbvDbPntSubstNoLists.step b).v == any_result ==>
;                       b == StlcCbvDbPntSubstNoLists.empty /\
;                       Some? (StlcCbvDbPntSubstNoLists.step b) /\ (b << e) /\
;                       (forall (any_result:
;                           StlcCbvDbPntSubstNoLists.rtyping b b (StlcCbvDbPntSubstNoLists.TArrow b b))
;                         .
;                           b == any_result ==>
;                           (forall (any_result:
;                               StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;                                 (StlcCbvDbPntSubstNoLists.step b).v
;                                 (StlcCbvDbPntSubstNoLists.TArrow b b)).
;                               StlcCbvDbPntSubstNoLists.preservation b == any_result ==>
;                               b == StlcCbvDbPntSubstNoLists.empty /\
;                               (forall (any_result: StlcCbvDbPntSubstNoLists.rtyping b b b).
;                                   b == any_result ==>
;                                   (forall (any_result:
;                                       StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty
;                                         (StlcCbvDbPntSubstNoLists.EApp
;                                             (StlcCbvDbPntSubstNoLists.step b).v b)
;                                         b).
;                                       StlcCbvDbPntSubstNoLists.TyApp
;                                         (StlcCbvDbPntSubstNoLists.preservation b) b ==
;                                       any_result ==>
;                                       StlcCbvDbPntSubstNoLists.EApp
;                                         (StlcCbvDbPntSubstNoLists.step b).v b ==
;                                       (StlcCbvDbPntSubstNoLists.step e).v /\ b == t))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec preservation`

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
;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(or label_1

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)

(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(170,6-170,38); use=StlcCbvDbPntSubstNoLists.fst(170,6-170,38)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(170,6-170,38); use=StlcCbvDbPntSubstNoLists.fst(170,6-170,38)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyApp (StlcCbvDbPntSubstNoLists.empty Dummy_value)
x_7597dc0c465777776dc6eae797c43037_0
x_50e78c3fdc2d5cb83ab6b5165045e606_1
x_712f8ef1f5239133a92e853010402ae9_2))
)

label_2)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x0 Term))
 (! (implies (HasType @x0
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x1 Term))
 (! (implies (HasType @x1
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x2 Term))
 (! (implies (HasType @x2
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x3 Term))
 (! (implies (HasType @x3
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x4 Term))
 (! (implies (HasType @x4
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x3
@x4)))

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x2
@x3))

;; def=StlcCbvDbPntSubstNoLists.fst(170,6-170,38); use=StlcCbvDbPntSubstNoLists.fst(170,6-170,38)
(= x_712f8ef1f5239133a92e853010402ae9_2
(StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
@x2
@x3
@x4
@x5
@x6))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(or label_3

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(171,5-177,36)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)

(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0))
x_50e78c3fdc2d5cb83ab6b5165045e606_1)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x8 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(ApplyTT @x7
@x8)
)

 

:pattern ((ApplyTT @x7
@x8))
:qid @query.8))
)

;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(171,8-171,19); use=StlcCbvDbPntSubstNoLists.fst(171,8-171,19)
(= (StlcCbvDbPntSubstNoLists.is_value @x1)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(or label_4

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(172,10-175,43)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)

(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.pure_post (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0))
x_50e78c3fdc2d5cb83ab6b5165045e606_1)))

;; def=Prims.fst(402,27-402,88); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x9 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(Valid 
;; def=Prims.fst(402,84-402,87); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(ApplyTT @x8
@x9)
)

 

:pattern ((ApplyTT @x8
@x9))
:qid @query.10))
)

;; def=Prims.fst(389,2-389,39); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and (implies 
;; def=StlcCbvDbPntSubstNoLists.fst(172,14-172,25); use=StlcCbvDbPntSubstNoLists.fst(172,14-172,25)
(= (StlcCbvDbPntSubstNoLists.is_value @x2)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(or label_5

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(173,15-174,56)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)

(implies 
;; def=StlcCbvDbPntSubstNoLists.fst(173,20-173,35); use=StlcCbvDbPntSubstNoLists.fst(173,20-173,35)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(173,20-173,35); use=StlcCbvDbPntSubstNoLists.fst(173,20-173,35)
(BoxBool_proj_0 (StlcCbvDbPntSubstNoLists.uu___is_TyAbs @x0
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x3
@x4)
@x5))
)

label_6)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x9 Term))
 (! (implies (HasType @x9
StlcCbvDbPntSubstNoLists.env)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x10 Term))
 (! (implies (HasType @x10
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x11 Term))
 (! (implies (HasType @x11
StlcCbvDbPntSubstNoLists.exp)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x12 Term))
 (! (implies (HasType @x12
StlcCbvDbPntSubstNoLists.ty)

;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x9
(BoxInt 0)
@x10)
@x11
@x12))

;; def=StlcCbvDbPntSubstNoLists.fst(173,20-173,35); use=StlcCbvDbPntSubstNoLists.fst(173,20-173,35)
(= @x5
(StlcCbvDbPntSubstNoLists.TyAbs @x9
@x10
@x11
@x12
@x13))
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(148,17-170,14); use=StlcCbvDbPntSubstNoLists.fst(174,48-174,50)
(or label_7

;; def=StlcCbvDbPntSubstNoLists.fst(148,17-170,14); use=StlcCbvDbPntSubstNoLists.fst(174,48-174,50)
(= @x0
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x2
@x3))

;; def=StlcCbvDbPntSubstNoLists.fst(148,6-170,38); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x6
@x14)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(83,20-149,33); use=StlcCbvDbPntSubstNoLists.fst(174,51-174,56)
(or label_8

;; def=StlcCbvDbPntSubstNoLists.fst(83,20-149,33); use=StlcCbvDbPntSubstNoLists.fst(174,51-174,56)
(= (StlcCbvDbPntSubstNoLists.extend @x9
(BoxInt 0)
@x10)
(StlcCbvDbPntSubstNoLists.extend (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(BoxInt 0)
@x3))
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.extend @x9
(BoxInt 0)
@x10)
@x11
@x12))

;; def=StlcCbvDbPntSubstNoLists.fst(149,6-173,35); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x13
@x15)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(StlcCbvDbPntSubstNoLists.subst_beta (BoxInt 0)
@x2
@x11)
@x12))

;; def=StlcCbvDbPntSubstNoLists.fst(168,10-174,56); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (StlcCbvDbPntSubstNoLists.substitution_preserves_typing (BoxInt 0)
@x11
@x2
@x3
@x12
(StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x6
@x13)
@x16)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(174,16-174,56)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(150,21-168,43); use=StlcCbvDbPntSubstNoLists.fst(174,16-174,56)
(or label_9

;; def=StlcCbvDbPntSubstNoLists.fst(150,21-168,43); use=StlcCbvDbPntSubstNoLists.fst(174,16-174,56)
(= (StlcCbvDbPntSubstNoLists.subst_beta (BoxInt 0)
@x2
@x11)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(169,25-173,35); use=StlcCbvDbPntSubstNoLists.fst(174,16-174,56)
(or label_10

;; def=StlcCbvDbPntSubstNoLists.fst(169,25-173,35); use=StlcCbvDbPntSubstNoLists.fst(174,16-174,56)
(= @x12
x_50e78c3fdc2d5cb83ab6b5165045e606_1)
)
)
)
 
;;no pats
:qid @query.18))
)
 
;;no pats
:qid @query.17))
)
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
(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(172,14-172,25); use=StlcCbvDbPntSubstNoLists.fst(172,14-172,25)
(= (StlcCbvDbPntSubstNoLists.is_value @x2)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(172,14-175,42); use=StlcCbvDbPntSubstNoLists.fst(172,14-175,42)
(= (StlcCbvDbPntSubstNoLists.is_value @x2)
@x9)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(175,26-175,38)
(or label_11

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(175,26-175,38)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Tm_refine_5891c17674442313f31cced796adb679)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x10
(StlcCbvDbPntSubstNoLists.step @x2))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(87,13-168,43); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2))
@x11)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(167,48-170,14); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(or label_12

;; def=StlcCbvDbPntSubstNoLists.fst(167,48-170,14); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(= @x0
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)


;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(or label_13

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(or label_14

;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(175,39-175,41)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x2
x_7597dc0c465777776dc6eae797c43037_0)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x2
@x3))

;; def=StlcCbvDbPntSubstNoLists.fst(167,38-170,38); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x6
@x12)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2))
@x3))

;; def=StlcCbvDbPntSubstNoLists.fst(91,12-175,42); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(= (StlcCbvDbPntSubstNoLists.preservation @x2
@x3
@x6)
@x13)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(168,19-170,14); use=StlcCbvDbPntSubstNoLists.fst(175,25-175,42)
(or label_15

;; def=StlcCbvDbPntSubstNoLists.fst(168,19-170,14); use=StlcCbvDbPntSubstNoLists.fst(175,25-175,42)
(= (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x0)
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(StlcCbvDbPntSubstNoLists.rtyping @x0
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2))
@x3))

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x14
(StlcCbvDbPntSubstNoLists.preservation @x2
@x3
@x6))


;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (StlcCbvDbPntSubstNoLists.preservation @x2
@x3
@x6)
@x14)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(StlcCbvDbPntSubstNoLists.rtyping @x0
(StlcCbvDbPntSubstNoLists.EApp @x1
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2)))
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(168,10-175,42); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (StlcCbvDbPntSubstNoLists.TyApp @x0
@x1
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2))
@x3
@x4
@x5
(StlcCbvDbPntSubstNoLists.preservation @x2
@x3
@x6))
@x15)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(92,22-168,43); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(or label_16

;; def=StlcCbvDbPntSubstNoLists.fst(92,22-168,43); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(= (StlcCbvDbPntSubstNoLists.EApp @x1
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x2)))
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(169,25-170,32); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(or label_17

;; def=StlcCbvDbPntSubstNoLists.fst(169,25-170,32); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(= @x4
x_50e78c3fdc2d5cb83ab6b5165045e606_1)
)


;; def=StlcCbvDbPntSubstNoLists.fst(168,19-170,14); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(or label_18

;; def=StlcCbvDbPntSubstNoLists.fst(168,19-170,14); use=StlcCbvDbPntSubstNoLists.fst(175,16-175,42)
(= @x0
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)
)
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
))
)
 
;;no pats
:qid @query.9)))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(not 
;; def=StlcCbvDbPntSubstNoLists.fst(171,8-171,19); use=StlcCbvDbPntSubstNoLists.fst(171,8-171,19)
(= (StlcCbvDbPntSubstNoLists.is_value @x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.bool)

;; def=StlcCbvDbPntSubstNoLists.fst(171,8-177,36); use=StlcCbvDbPntSubstNoLists.fst(171,8-177,36)
(= (StlcCbvDbPntSubstNoLists.is_value @x1)
@x8)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(177,17-177,29)
(or label_19

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(177,17-177,29)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1)))
)


;; def=Prims.fst(356,2-356,58); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Tm_refine_5891c17674442313f31cced796adb679)

;; def=Prims.fst(356,26-356,41); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x9
(StlcCbvDbPntSubstNoLists.step @x1))
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
StlcCbvDbPntSubstNoLists.exp)

;; def=StlcCbvDbPntSubstNoLists.fst(86,13-168,43); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1))
@x10)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(167,48-170,14); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(or label_20

;; def=StlcCbvDbPntSubstNoLists.fst(167,48-170,14); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(= @x0
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)


;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(or label_21

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(or label_22

;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(177,30-177,32)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x1
x_7597dc0c465777776dc6eae797c43037_0)
)
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x1
(StlcCbvDbPntSubstNoLists.TArrow @x3
@x4)))

;; def=StlcCbvDbPntSubstNoLists.fst(167,38-170,35); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x5
@x11)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1))
(StlcCbvDbPntSubstNoLists.TArrow @x3
@x4)))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (StlcCbvDbPntSubstNoLists.preservation @x1
(StlcCbvDbPntSubstNoLists.TArrow @x3
@x4)
@x5)
@x12)
)

;; def=Prims.fst(459,77-459,89); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(168,19-170,14); use=StlcCbvDbPntSubstNoLists.fst(177,34-177,36)
(or label_23

;; def=StlcCbvDbPntSubstNoLists.fst(168,19-170,14); use=StlcCbvDbPntSubstNoLists.fst(177,34-177,36)
(= @x0
(StlcCbvDbPntSubstNoLists.empty Dummy_value))
)


;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(StlcCbvDbPntSubstNoLists.rtyping @x0
@x2
@x3))

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= @x6
@x13)
)

;; def=Prims.fst(451,66-451,102); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(StlcCbvDbPntSubstNoLists.EApp (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1))
@x2)
@x4))

;; def=StlcCbvDbPntSubstNoLists.fst(168,10-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(= (StlcCbvDbPntSubstNoLists.TyApp (StlcCbvDbPntSubstNoLists.empty Dummy_value)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1))
@x2
@x3
@x4
(StlcCbvDbPntSubstNoLists.preservation @x1
(StlcCbvDbPntSubstNoLists.TArrow @x3
@x4)
@x5)
@x6)
@x14)
)

;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(177,10-177,36)
(and 
;; def=StlcCbvDbPntSubstNoLists.fst(92,22-168,43); use=StlcCbvDbPntSubstNoLists.fst(177,10-177,36)
(or label_24

;; def=StlcCbvDbPntSubstNoLists.fst(92,22-168,43); use=StlcCbvDbPntSubstNoLists.fst(177,10-177,36)
(= (StlcCbvDbPntSubstNoLists.EApp (FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x1))
@x2)
(FStar.Pervasives.Native.__proj__Some__item__v StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step x_7597dc0c465777776dc6eae797c43037_0)))
)


;; def=StlcCbvDbPntSubstNoLists.fst(169,25-170,32); use=StlcCbvDbPntSubstNoLists.fst(177,10-177,36)
(or label_25

;; def=StlcCbvDbPntSubstNoLists.fst(169,25-170,32); use=StlcCbvDbPntSubstNoLists.fst(177,10-177,36)
(= @x4
x_50e78c3fdc2d5cb83ab6b5165045e606_1)
)
)
)
 
;;no pats
:qid @query.32))
)
 
;;no pats
:qid @query.31))
)
)
 
;;no pats
:qid @query.30))
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
))
)
 
;;no pats
:qid @query.7)))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.preservation, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_StlcCbvDbPntSubstNoLists.step.fuel_instrumented, @fuel_irrelevance_StlcCbvDbPntSubstNoLists.step.fuel_instrumented, @query, StlcCbvDbPntSubstNoLists_pretyping_7597dc0c465777776dc6eae797c43037, binder_x_50e78c3fdc2d5cb83ab6b5165045e606_1, binder_x_712f8ef1f5239133a92e853010402ae9_2, binder_x_7597dc0c465777776dc6eae797c43037_0, constructor_distinct_FStar.Pervasives.Native.None, constructor_distinct_StlcCbvDbPntSubstNoLists.EAbs, constructor_distinct_StlcCbvDbPntSubstNoLists.EApp, constructor_distinct_StlcCbvDbPntSubstNoLists.EVar, constructor_distinct_Tm_unit, data_elim_StlcCbvDbPntSubstNoLists.TyAbs, disc_equation_FStar.Pervasives.Native.Some, disc_equation_StlcCbvDbPntSubstNoLists.EAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyAbs, disc_equation_StlcCbvDbPntSubstNoLists.TyApp, equation_StlcCbvDbPntSubstNoLists.is_value, equation_with_fuel_StlcCbvDbPntSubstNoLists.step.fuel_instrumented, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.rtyping, fuel_guarded_inversion_StlcCbvDbPntSubstNoLists.ty, proj_equation_FStar.Pervasives.Native.Some_v, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Some_v, projection_inverse_StlcCbvDbPntSubstNoLists.EAbs__1, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__0, projection_inverse_StlcCbvDbPntSubstNoLists.EApp__1, projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t1, projection_inverse_StlcCbvDbPntSubstNoLists.TArrow_t2, projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_e1, projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t, projection_inverse_StlcCbvDbPntSubstNoLists.TyAbs_t_, projection_inverse_StlcCbvDbPntSubstNoLists.TyApp__5, projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_e1, projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_e2, projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_g, projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_t11, projection_inverse_StlcCbvDbPntSubstNoLists.TyApp_t12, refinement_interpretation_Tm_refine_f37d7c08290e28d70c839a5ceabfa495, subterm_ordering_StlcCbvDbPntSubstNoLists.EApp

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at StlcCbvDbPntSubstNoLists.fst(169,0-177,36)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

:named refinement_kinding_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

:named refinement_interpretation_Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-167,73); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x1
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x0
@x1))))
:qid haseqTm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))

:named haseqTm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3))
(declare-fun Tm_refine_35ab80925a8f7211d29a9cb76c5999fb (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,0-177,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_35ab80925a8f7211d29a9cb76c5999fb))

:named refinement_kinding_Tm_refine_35ab80925a8f7211d29a9cb76c5999fb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,0-177,36)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x3
@x2))

;; def=StlcCbvDbPntSubstNoLists.fst(167,58-167,72); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x3)))


;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)

;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(Valid 
;; def=StlcCbvDbPntSubstNoLists.fst(169,30-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,30-177,36)
(Prims.precedes StlcCbvDbPntSubstNoLists.exp
StlcCbvDbPntSubstNoLists.exp
@x3
@x4)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_35ab80925a8f7211d29a9cb76c5999fb))

:named refinement_interpretation_Tm_refine_35ab80925a8f7211d29a9cb76c5999fb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_35ab80925a8f7211d29a9cb76c5999fb
;;; Fact-ids: 
(assert (! 
;; def=StlcCbvDbPntSubstNoLists.fst(167,38-177,36); use=StlcCbvDbPntSubstNoLists.fst(169,0-177,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x0
@x1
@x2)))
(Valid (Prims.hasEq (StlcCbvDbPntSubstNoLists.rtyping (StlcCbvDbPntSubstNoLists.empty Dummy_value)
@x1
@x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x0
@x1
@x2))))
:qid haseqTm_refine_35ab80925a8f7211d29a9cb76c5999fb))

:named haseqTm_refine_35ab80925a8f7211d29a9cb76c5999fb))

; Encoding query formula : forall (e: StlcCbvDbPntSubstNoLists.exp)
;   (t: StlcCbvDbPntSubstNoLists.ty)
;   (h:
;   StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t
;     {Some? (StlcCbvDbPntSubstNoLists.step e)})
;   (e: StlcCbvDbPntSubstNoLists.exp)
;   (t: StlcCbvDbPntSubstNoLists.ty)
;   (h:
;   (h:
;     StlcCbvDbPntSubstNoLists.rtyping StlcCbvDbPntSubstNoLists.empty e t
;       {Some? (StlcCbvDbPntSubstNoLists.step e)}){e << e}).
;   (*  - Subtyping check failed
;   - Expected type _: FStar.Pervasives.Native.option exp {Some? _}
;     got type FStar.Pervasives.Native.option exp
; *)
;   Some? (StlcCbvDbPntSubstNoLists.step e)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec preservation`

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
;; def=dummy(0,0-0,0); use=StlcCbvDbPntSubstNoLists.fst(169,0-177,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
StlcCbvDbPntSubstNoLists.exp)
(HasType @x1
StlcCbvDbPntSubstNoLists.ty)
(HasType @x2
(Tm_refine_7c28f4ae4def0de7a4957ce0bef8e0a3 @x1
@x0))
(HasType @x3
StlcCbvDbPntSubstNoLists.exp)
(HasType @x4
StlcCbvDbPntSubstNoLists.ty)
(HasType @x5
(Tm_refine_35ab80925a8f7211d29a9cb76c5999fb @x4
@x3
@x0)))

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(or label_1

;; def=FStar.Pervasives.Native.fst(33,4-33,8); use=StlcCbvDbPntSubstNoLists.fst(169,8-169,20)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some StlcCbvDbPntSubstNoLists.exp
(StlcCbvDbPntSubstNoLists.step @x3)))
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
; QUERY ID: (StlcCbvDbPntSubstNoLists.preservation, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_35ab80925a8f7211d29a9cb76c5999fb
