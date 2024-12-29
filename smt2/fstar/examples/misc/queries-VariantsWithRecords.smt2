
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

; Internals for VariantsWithRecords


; encoding sigelt type VariantsWithRecords.record


; <Start encoding type VariantsWithRecords.record>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.record () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkrecord (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkrecord_field1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkrecord_field2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkrecord
(declare-fun VariantsWithRecords.Mkrecord@tok () Term)
;;;;;;;;;;;;;;;;field1: Prims.int -> field2: Prims.string -> record
(declare-fun Tm_arrow_a7733f97283d7b3322e8809760b88519 () Term)

; <start constructor VariantsWithRecords.record>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.record ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
124)
(= __@x0
VariantsWithRecords.record)))

; </end constructor VariantsWithRecords.record>


; <start constructor VariantsWithRecords.Mkrecord>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkrecord ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
130)
(= __@x0
(VariantsWithRecords.Mkrecord (VariantsWithRecords.Mkrecord_field1 __@x0)
(VariantsWithRecords.Mkrecord_field2 __@x0)))))

; </end constructor VariantsWithRecords.Mkrecord>


; </end encoding type VariantsWithRecords.record>


; encoding sigelt assume VariantsWithRecords.record__uu___haseq


; <Start encoding assume VariantsWithRecords.record__uu___haseq>


; </end encoding assume VariantsWithRecords.record__uu___haseq>


; encoding sigelt val VariantsWithRecords.__proj__Mkrecord__item__field1


; <Start encoding val VariantsWithRecords.__proj__Mkrecord__item__field1>

(declare-fun VariantsWithRecords.__proj__Mkrecord__item__field1 (Term) Term)
;;;;;;;;;;;;;;;;projectee: record -> Prims.int
(declare-fun Tm_arrow_a8b2a42481bb75aba33d47243975d71a () Term)
(declare-fun VariantsWithRecords.__proj__Mkrecord__item__field1@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkrecord__item__field1>


; encoding sigelt let __proj__Mkrecord__item__field1


; <Skipped let __proj__Mkrecord__item__field1/>


; encoding sigelt val VariantsWithRecords.__proj__Mkrecord__item__field2


; <Start encoding val VariantsWithRecords.__proj__Mkrecord__item__field2>

(declare-fun VariantsWithRecords.__proj__Mkrecord__item__field2 (Term) Term)
;;;;;;;;;;;;;;;;projectee: record -> Prims.string
(declare-fun Tm_arrow_5cbeaad2fbe2dab77f23036041731df9 () Term)
(declare-fun VariantsWithRecords.__proj__Mkrecord__item__field2@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkrecord__item__field2>


; encoding sigelt let __proj__Mkrecord__item__field2


; <Skipped let __proj__Mkrecord__item__field2/>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type VariantsWithRecords.foo__E__payload


; <Start encoding type VariantsWithRecords.foo__E__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.foo__E__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.foo () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkfoo__E__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkfoo__E__payload_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkfoo__E__payload_b (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkfoo__E__payload
(declare-fun VariantsWithRecords.Mkfoo__E__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.A (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.A__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.A__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.A
(declare-fun VariantsWithRecords.A@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.B (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.B_named (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.B_other (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.B
(declare-fun VariantsWithRecords.B@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.C (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.C__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.C
(declare-fun VariantsWithRecords.C@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.D () Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.D
(declare-fun VariantsWithRecords.D@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.E (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.E__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.E
(declare-fun VariantsWithRecords.E@tok () Term)
;;;;;;;;;;;;;;;;a: Prims.int -> b: Prims.int -> foo__E__payload
(declare-fun Tm_arrow_d9db7cbda92e31a171bcce6c21b57be4 () Term)
;;;;;;;;;;;;;;;;_0: Prims.int -> _1: Prims.string -> foo
(declare-fun Tm_arrow_4b36035fbf636935fa7a6bead7d0ef75 () Term)

;;;;;;;;;;;;;;;;_0: Prims.int & Prims.string -> foo
(declare-fun Tm_arrow_8088bcbf165bf931fc58edff194e4bc2 () Term)
;;;;;;;;;;;;;;;;_0: foo__E__payload -> foo
(declare-fun Tm_arrow_b05b5fb8827c5c94001fef68e6b6e97b () Term)

; <start constructor VariantsWithRecords.foo__E__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.foo__E__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
175)
(= __@x0
VariantsWithRecords.foo__E__payload)))

; </end constructor VariantsWithRecords.foo__E__payload>


; <start constructor VariantsWithRecords.foo>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.foo ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
180)
(= __@x0
VariantsWithRecords.foo)))

; </end constructor VariantsWithRecords.foo>


; <start constructor VariantsWithRecords.Mkfoo__E__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkfoo__E__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
186)
(= __@x0
(VariantsWithRecords.Mkfoo__E__payload (VariantsWithRecords.Mkfoo__E__payload_a __@x0)
(VariantsWithRecords.Mkfoo__E__payload_b __@x0)))))

; </end constructor VariantsWithRecords.Mkfoo__E__payload>


; <start constructor VariantsWithRecords.A>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.A ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
191)
(= __@x0
(VariantsWithRecords.A (VariantsWithRecords.A__0 __@x0)
(VariantsWithRecords.A__1 __@x0)))))

; </end constructor VariantsWithRecords.A>


; <start constructor VariantsWithRecords.B>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.B ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
196)
(= __@x0
(VariantsWithRecords.B (VariantsWithRecords.B_named __@x0)
(VariantsWithRecords.B_other __@x0)))))

; </end constructor VariantsWithRecords.B>


; <start constructor VariantsWithRecords.C>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.C ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
201)
(= __@x0
(VariantsWithRecords.C (VariantsWithRecords.C__0 __@x0)))))

; </end constructor VariantsWithRecords.C>


; <start constructor VariantsWithRecords.D>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.D ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
206)
(= __@x0
VariantsWithRecords.D)))

; </end constructor VariantsWithRecords.D>


; <start constructor VariantsWithRecords.E>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.E ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
208)
(= __@x0
(VariantsWithRecords.E (VariantsWithRecords.E__0 __@x0)))))

; </end constructor VariantsWithRecords.E>


; </end encoding type VariantsWithRecords.foo__E__payload>

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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.D@tok
VariantsWithRecords.foo)
:named typing_tok_VariantsWithRecords.D@tok))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (HasType Prims.string
Prims.eqtype)
:named typing_Prims.string))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
:qid subterm_ordering_VariantsWithRecords.Mkfoo__E__payload))

:named subterm_ordering_VariantsWithRecords.Mkfoo__E__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.E @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.E))

:named subterm_ordering_VariantsWithRecords.E))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.C @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.C))

:named subterm_ordering_VariantsWithRecords.C))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.B @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.B @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.B))

:named subterm_ordering_VariantsWithRecords.B))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.A @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.A @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.A))

:named subterm_ordering_VariantsWithRecords.A))
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
;;;;;;;;;;;;;;;;string inversion
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.string)
(is-BoxString @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.string))
:qid string_inversion))
:named string_inversion))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkfoo__E__payload_b (VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkfoo__E__payload_b))

:named projection_inverse_VariantsWithRecords.Mkfoo__E__payload_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkfoo__E__payload_a (VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkfoo__E__payload_a))

:named projection_inverse_VariantsWithRecords.Mkfoo__E__payload_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.E__0 (VariantsWithRecords.E @x0))
@x0)
 

:pattern ((VariantsWithRecords.E @x0))
:qid projection_inverse_VariantsWithRecords.E__0))

:named projection_inverse_VariantsWithRecords.E__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.C__0 (VariantsWithRecords.C @x0))
@x0)
 

:pattern ((VariantsWithRecords.C @x0))
:qid projection_inverse_VariantsWithRecords.C__0))

:named projection_inverse_VariantsWithRecords.C__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.B_other (VariantsWithRecords.B @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.B @x0
@x1))
:qid projection_inverse_VariantsWithRecords.B_other))

:named projection_inverse_VariantsWithRecords.B_other))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.B_named (VariantsWithRecords.B @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.B @x0
@x1))
:qid projection_inverse_VariantsWithRecords.B_named))

:named projection_inverse_VariantsWithRecords.B_named))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.A__1 (VariantsWithRecords.A @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.A @x0
@x1))
:qid projection_inverse_VariantsWithRecords.A__1))

:named projection_inverse_VariantsWithRecords.A__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.A__0 (VariantsWithRecords.A @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.A @x0
@x1))
:qid projection_inverse_VariantsWithRecords.A__0))

:named projection_inverse_VariantsWithRecords.A__0))
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
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.foo__E__payload
Tm_type)
:named kinding_VariantsWithRecords.foo__E__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.foo
Tm_type)
:named kinding_VariantsWithRecords.foo@tok))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (HasType Prims.string
Prims.eqtype)
:named function_token_typing_Prims.string))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload)
(is-VariantsWithRecords.Mkfoo__E__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.foo__E__payload))

:named fuel_guarded_inversion_VariantsWithRecords.foo__E__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(10,5-10,8); use=VariantsWithRecords.fst(10,5-10,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.foo)
(or (is-VariantsWithRecords.A @x1)
(is-VariantsWithRecords.B @x1)
(is-VariantsWithRecords.C @x1)
(is-VariantsWithRecords.D @x1)
(is-VariantsWithRecords.E @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.foo))
:qid fuel_guarded_inversion_VariantsWithRecords.foo))

:named fuel_guarded_inversion_VariantsWithRecords.foo))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= VariantsWithRecords.D@tok
VariantsWithRecords.D)
:named equality_tok_VariantsWithRecords.D@tok))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
:qid data_typing_intro_VariantsWithRecords.Mkfoo__E__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkfoo__E__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload)
(HasTypeFuel @u0
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.E@tok))

:named data_typing_intro_VariantsWithRecords.E@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(18,4-18,5); use=VariantsWithRecords.fst(18,4-18,5)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
VariantsWithRecords.D
VariantsWithRecords.foo)
 

:pattern ((HasTypeFuel @u0
VariantsWithRecords.D
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.D@tok))

:named data_typing_intro_VariantsWithRecords.D@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 Prims.int
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.C@tok))

:named data_typing_intro_VariantsWithRecords.C@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.B@tok))

:named data_typing_intro_VariantsWithRecords.B@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.A@tok))

:named data_typing_intro_VariantsWithRecords.A@tok))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
:qid data_elim_VariantsWithRecords.Mkfoo__E__payload))

:named data_elim_VariantsWithRecords.Mkfoo__E__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo)
(HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.E))

:named data_elim_VariantsWithRecords.E))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo)
(HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 Prims.int
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.C))

:named data_elim_VariantsWithRecords.C))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.B))

:named data_elim_VariantsWithRecords.B))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.A))

:named data_elim_VariantsWithRecords.A))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= 175
(Term_constr_id VariantsWithRecords.foo__E__payload))
:named constructor_distinct_VariantsWithRecords.foo__E__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= 180
(Term_constr_id VariantsWithRecords.foo))
:named constructor_distinct_VariantsWithRecords.foo))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 186
(Term_constr_id (VariantsWithRecords.Mkfoo__E__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkfoo__E__payload))

:named constructor_distinct_VariantsWithRecords.Mkfoo__E__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term))
 (! (= 208
(Term_constr_id (VariantsWithRecords.E @x0)))
 

:pattern ((VariantsWithRecords.E @x0))
:qid constructor_distinct_VariantsWithRecords.E))

:named constructor_distinct_VariantsWithRecords.E))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= 206
(Term_constr_id VariantsWithRecords.D))
:named constructor_distinct_VariantsWithRecords.D))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@x0 Term))
 (! (= 201
(Term_constr_id (VariantsWithRecords.C @x0)))
 

:pattern ((VariantsWithRecords.C @x0))
:qid constructor_distinct_VariantsWithRecords.C))

:named constructor_distinct_VariantsWithRecords.C))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 196
(Term_constr_id (VariantsWithRecords.B @x0
@x1)))
 

:pattern ((VariantsWithRecords.B @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.B))

:named constructor_distinct_VariantsWithRecords.B))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 191
(Term_constr_id (VariantsWithRecords.A @x0
@x1)))
 

:pattern ((VariantsWithRecords.A @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.A))

:named constructor_distinct_VariantsWithRecords.A))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (= 207
(Term_constr_id Prims.string))
:named constructor_distinct_Prims.string))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (= 303
(Term_constr_id Prims.int))
:named constructor_distinct_Prims.int))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(10,5-10,8); use=VariantsWithRecords.fst(10,5-10,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.foo)
(= VariantsWithRecords.foo
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.foo))
:qid VariantsWithRecords_pretyping_d2f1b7922db6d70f2c8c81ac901ffdbc))

:named VariantsWithRecords_pretyping_d2f1b7922db6d70f2c8c81ac901ffdbc))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.foo__E__payload)
(= VariantsWithRecords.foo__E__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.foo__E__payload))
:qid VariantsWithRecords_pretyping_746fa5a43a08000967cdeb47bfd6ee08))

:named VariantsWithRecords_pretyping_746fa5a43a08000967cdeb47bfd6ee08))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! 
;; def=Prims.fst(239,5-239,11); use=Prims.fst(239,5-239,11)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.string)
(= Prims.string
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.string))
:qid Prims_pretyping_ce036b6b736ef4e0bc3a9ff132a12aed))

:named Prims_pretyping_ce036b6b736ef4e0bc3a9ff132a12aed))
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
(push) ;; push{4

; Starting query at VariantsWithRecords.fst(10,0-20,24)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq VariantsWithRecords.foo__E__payload /\ Prims.hasEq VariantsWithRecords.foo ==>
; (forall (_0: Prims.int & Prims.string).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.foo'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq (Prims.int & Prims.string)) /\
; (forall (_0: VariantsWithRecords.foo__E__payload).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.foo'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq VariantsWithRecords.foo__E__payload)


; Context: While encoding a query
; While typechecking the top-level declaration `type VariantsWithRecords.foo__E__payload`

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
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(and 
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Valid 
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Prims.hasEq VariantsWithRecords.foo__E__payload)
)


;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Valid 
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Prims.hasEq VariantsWithRecords.foo)
)
)


;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(and 
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Pervasives.Native.tuple2 Prims.int
Prims.string))

;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(16,9-16,21)
(or label_1

;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Valid 
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Prims.hasEq (FStar.Pervasives.Native.tuple2 Prims.int
Prims.string))
)
)
)
 
;;no pats
:qid @query))


;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.foo__E__payload)

;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(20,4-20,5)
(or label_2

;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Valid 
;; def=VariantsWithRecords.fst(10,0-20,24); use=VariantsWithRecords.fst(10,0-20,24)
(Prims.hasEq VariantsWithRecords.foo__E__payload)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (VariantsWithRecords.foo__E__payload, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_FStar.Pervasives.Native.tuple2__uu___haseq, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int, typing_Prims.string

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type VariantsWithRecords.foo__E__payload


; <Start encoding type VariantsWithRecords.foo__E__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.foo__E__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.foo () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkfoo__E__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkfoo__E__payload_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkfoo__E__payload_b (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkfoo__E__payload
(declare-fun VariantsWithRecords.Mkfoo__E__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.A (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.A__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.A__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.A
(declare-fun VariantsWithRecords.A@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.B (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.B_named (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.B_other (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.B
(declare-fun VariantsWithRecords.B@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.C (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.C__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.C
(declare-fun VariantsWithRecords.C@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.D () Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.D
(declare-fun VariantsWithRecords.D@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.E (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.E__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.E
(declare-fun VariantsWithRecords.E@tok () Term)
;;;;;;;;;;;;;;;;a: Prims.int -> b: Prims.int -> foo__E__payload
(declare-fun Tm_arrow_d9db7cbda92e31a171bcce6c21b57be4 () Term)
;;;;;;;;;;;;;;;;_0: Prims.int -> _1: Prims.string -> foo
(declare-fun Tm_arrow_4b36035fbf636935fa7a6bead7d0ef75 () Term)

;;;;;;;;;;;;;;;;_0: Prims.int & Prims.string -> foo
(declare-fun Tm_arrow_8088bcbf165bf931fc58edff194e4bc2 () Term)
;;;;;;;;;;;;;;;;_0: foo__E__payload -> foo
(declare-fun Tm_arrow_b05b5fb8827c5c94001fef68e6b6e97b () Term)

; <start constructor VariantsWithRecords.foo__E__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.foo__E__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
212)
(= __@x0
VariantsWithRecords.foo__E__payload)))

; </end constructor VariantsWithRecords.foo__E__payload>


; <start constructor VariantsWithRecords.foo>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.foo ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
217)
(= __@x0
VariantsWithRecords.foo)))

; </end constructor VariantsWithRecords.foo>


; <start constructor VariantsWithRecords.Mkfoo__E__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkfoo__E__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
223)
(= __@x0
(VariantsWithRecords.Mkfoo__E__payload (VariantsWithRecords.Mkfoo__E__payload_a __@x0)
(VariantsWithRecords.Mkfoo__E__payload_b __@x0)))))

; </end constructor VariantsWithRecords.Mkfoo__E__payload>


; <start constructor VariantsWithRecords.A>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.A ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
228)
(= __@x0
(VariantsWithRecords.A (VariantsWithRecords.A__0 __@x0)
(VariantsWithRecords.A__1 __@x0)))))

; </end constructor VariantsWithRecords.A>


; <start constructor VariantsWithRecords.B>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.B ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
233)
(= __@x0
(VariantsWithRecords.B (VariantsWithRecords.B_named __@x0)
(VariantsWithRecords.B_other __@x0)))))

; </end constructor VariantsWithRecords.B>


; <start constructor VariantsWithRecords.C>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.C ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
238)
(= __@x0
(VariantsWithRecords.C (VariantsWithRecords.C__0 __@x0)))))

; </end constructor VariantsWithRecords.C>


; <start constructor VariantsWithRecords.D>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.D ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
243)
(= __@x0
VariantsWithRecords.D)))

; </end constructor VariantsWithRecords.D>


; <start constructor VariantsWithRecords.E>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.E ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
245)
(= __@x0
(VariantsWithRecords.E (VariantsWithRecords.E__0 __@x0)))))

; </end constructor VariantsWithRecords.E>


; </end encoding type VariantsWithRecords.foo__E__payload>


; encoding sigelt assume VariantsWithRecords.foo__E__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.foo__E__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.foo__E__payload__uu___haseq>


; encoding sigelt assume VariantsWithRecords.foo__uu___haseq


; <Start encoding assume VariantsWithRecords.foo__uu___haseq>


; </end encoding assume VariantsWithRecords.foo__uu___haseq>


; encoding sigelt val VariantsWithRecords.__proj__Mkfoo__E__payload__item__a


; <Start encoding val VariantsWithRecords.__proj__Mkfoo__E__payload__item__a>

(declare-fun VariantsWithRecords.__proj__Mkfoo__E__payload__item__a (Term) Term)
;;;;;;;;;;;;;;;;projectee: foo__E__payload -> Prims.int
(declare-fun Tm_arrow_1848017b622089a856eae501dfba090e () Term)
(declare-fun VariantsWithRecords.__proj__Mkfoo__E__payload__item__a@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkfoo__E__payload__item__a>


; encoding sigelt let __proj__Mkfoo__E__payload__item__a


; <Skipped let __proj__Mkfoo__E__payload__item__a/>


; encoding sigelt val VariantsWithRecords.__proj__Mkfoo__E__payload__item__b


; <Start encoding val VariantsWithRecords.__proj__Mkfoo__E__payload__item__b>

(declare-fun VariantsWithRecords.__proj__Mkfoo__E__payload__item__b (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkfoo__E__payload__item__b@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkfoo__E__payload__item__b>


; encoding sigelt let __proj__Mkfoo__E__payload__item__b


; <Skipped let __proj__Mkfoo__E__payload__item__b/>


; encoding sigelt val VariantsWithRecords.uu___is_A


; <Start encoding val VariantsWithRecords.uu___is_A>

(declare-fun VariantsWithRecords.uu___is_A (Term) Term)
;;;;;;;;;;;;;;;;projectee: foo -> Prims.bool
(declare-fun Tm_arrow_3db3d8a05413cdd3ade7d0abfab6feee () Term)
(declare-fun VariantsWithRecords.uu___is_A@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_A>


; encoding sigelt let uu___is_A


; <Skipped let uu___is_A/>


; encoding sigelt val VariantsWithRecords.__proj__A__item___0


; <Start encoding val VariantsWithRecords.__proj__A__item___0>

(declare-fun Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05 () Term)
(declare-fun VariantsWithRecords.__proj__A__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: foo{A? _} -> Prims.int
(declare-fun Tm_arrow_16b0b1fcf4e27597378cf632e8bd1f9a () Term)
(declare-fun VariantsWithRecords.__proj__A__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__A__item___0>

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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.D@tok
VariantsWithRecords.foo)
:named typing_tok_VariantsWithRecords.D@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_A; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.foo)
(HasType (VariantsWithRecords.uu___is_A @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_A @x0))
:qid typing_VariantsWithRecords.uu___is_A))

:named typing_VariantsWithRecords.uu___is_A))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (HasType Prims.string
Prims.eqtype)
:named typing_Prims.string))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
:qid subterm_ordering_VariantsWithRecords.Mkfoo__E__payload))

:named subterm_ordering_VariantsWithRecords.Mkfoo__E__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.E @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.E))

:named subterm_ordering_VariantsWithRecords.E))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.C @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.C))

:named subterm_ordering_VariantsWithRecords.C))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.B @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.B @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.B))

:named subterm_ordering_VariantsWithRecords.B))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.A @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.A @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
:qid subterm_ordering_VariantsWithRecords.A))

:named subterm_ordering_VariantsWithRecords.A))
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
;;;;;;;;;;;;;;;;string inversion
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.string)
(is-BoxString @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Prims.string))
:qid string_inversion))
:named string_inversion))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__A__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05
Tm_type)
:named refinement_kinding_Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05))
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
;;; Fact-ids: Name VariantsWithRecords.__proj__A__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.foo)

;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_A @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05))
:qid refinement_interpretation_Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05))

:named refinement_interpretation_Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkfoo__E__payload_b (VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkfoo__E__payload_b))

:named projection_inverse_VariantsWithRecords.Mkfoo__E__payload_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkfoo__E__payload_a (VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkfoo__E__payload_a))

:named projection_inverse_VariantsWithRecords.Mkfoo__E__payload_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.E__0 (VariantsWithRecords.E @x0))
@x0)
 

:pattern ((VariantsWithRecords.E @x0))
:qid projection_inverse_VariantsWithRecords.E__0))

:named projection_inverse_VariantsWithRecords.E__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.C__0 (VariantsWithRecords.C @x0))
@x0)
 

:pattern ((VariantsWithRecords.C @x0))
:qid projection_inverse_VariantsWithRecords.C__0))

:named projection_inverse_VariantsWithRecords.C__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.B_other (VariantsWithRecords.B @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.B @x0
@x1))
:qid projection_inverse_VariantsWithRecords.B_other))

:named projection_inverse_VariantsWithRecords.B_other))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.B_named (VariantsWithRecords.B @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.B @x0
@x1))
:qid projection_inverse_VariantsWithRecords.B_named))

:named projection_inverse_VariantsWithRecords.B_named))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.A__1 (VariantsWithRecords.A @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.A @x0
@x1))
:qid projection_inverse_VariantsWithRecords.A__1))

:named projection_inverse_VariantsWithRecords.A__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.A__0 (VariantsWithRecords.A @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.A @x0
@x1))
:qid projection_inverse_VariantsWithRecords.A__0))

:named projection_inverse_VariantsWithRecords.A__0))
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
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.foo__E__payload
Tm_type)
:named kinding_VariantsWithRecords.foo__E__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.foo
Tm_type)
:named kinding_VariantsWithRecords.foo@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05
;;; Fact-ids: Name VariantsWithRecords.__proj__A__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05))
(Valid (Prims.hasEq VariantsWithRecords.foo)))
:named haseqTm_refine_c27b27db2a80fb1f8dda007a3cb1af05))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (HasType Prims.string
Prims.eqtype)
:named function_token_typing_Prims.string))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload)
(is-VariantsWithRecords.Mkfoo__E__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.foo__E__payload))

:named fuel_guarded_inversion_VariantsWithRecords.foo__E__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(10,5-10,8); use=VariantsWithRecords.fst(10,5-10,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.foo)
(or (is-VariantsWithRecords.A @x1)
(is-VariantsWithRecords.B @x1)
(is-VariantsWithRecords.C @x1)
(is-VariantsWithRecords.D @x1)
(is-VariantsWithRecords.E @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.foo))
:qid fuel_guarded_inversion_VariantsWithRecords.foo))

:named fuel_guarded_inversion_VariantsWithRecords.foo))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= VariantsWithRecords.D@tok
VariantsWithRecords.D)
:named equality_tok_VariantsWithRecords.D@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_A; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_A @x0)
(BoxBool (is-VariantsWithRecords.A @x0)))
 

:pattern ((VariantsWithRecords.uu___is_A @x0))
:qid disc_equation_VariantsWithRecords.A))

:named disc_equation_VariantsWithRecords.A))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
:qid data_typing_intro_VariantsWithRecords.Mkfoo__E__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkfoo__E__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload)
(HasTypeFuel @u0
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.E@tok))

:named data_typing_intro_VariantsWithRecords.E@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(18,4-18,5); use=VariantsWithRecords.fst(18,4-18,5)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
VariantsWithRecords.D
VariantsWithRecords.foo)
 

:pattern ((HasTypeFuel @u0
VariantsWithRecords.D
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.D@tok))

:named data_typing_intro_VariantsWithRecords.D@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 Prims.int
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.C@tok))

:named data_typing_intro_VariantsWithRecords.C@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.B@tok))

:named data_typing_intro_VariantsWithRecords.B@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
:qid data_typing_intro_VariantsWithRecords.A@tok))

:named data_typing_intro_VariantsWithRecords.A@tok))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkfoo__E__payload @x1
@x2)
VariantsWithRecords.foo__E__payload))
:qid data_elim_VariantsWithRecords.Mkfoo__E__payload))

:named data_elim_VariantsWithRecords.Mkfoo__E__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo)
(HasTypeFuel @u0
@x1
VariantsWithRecords.foo__E__payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.E @x1)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.E))

:named data_elim_VariantsWithRecords.E))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo)
(HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 Prims.int
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.C @x1)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.C))

:named data_elim_VariantsWithRecords.C))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.B @x1
@x2)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.B))

:named data_elim_VariantsWithRecords.B))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.A @x1
@x2)
VariantsWithRecords.foo))
:qid data_elim_VariantsWithRecords.A))

:named data_elim_VariantsWithRecords.A))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= 212
(Term_constr_id VariantsWithRecords.foo__E__payload))
:named constructor_distinct_VariantsWithRecords.foo__E__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= 217
(Term_constr_id VariantsWithRecords.foo))
:named constructor_distinct_VariantsWithRecords.foo))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 223
(Term_constr_id (VariantsWithRecords.Mkfoo__E__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkfoo__E__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkfoo__E__payload))

:named constructor_distinct_VariantsWithRecords.Mkfoo__E__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term))
 (! (= 245
(Term_constr_id (VariantsWithRecords.E @x0)))
 

:pattern ((VariantsWithRecords.E @x0))
:qid constructor_distinct_VariantsWithRecords.E))

:named constructor_distinct_VariantsWithRecords.E))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! (= 243
(Term_constr_id VariantsWithRecords.D))
:named constructor_distinct_VariantsWithRecords.D))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@x0 Term))
 (! (= 238
(Term_constr_id (VariantsWithRecords.C @x0)))
 

:pattern ((VariantsWithRecords.C @x0))
:qid constructor_distinct_VariantsWithRecords.C))

:named constructor_distinct_VariantsWithRecords.C))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 233
(Term_constr_id (VariantsWithRecords.B @x0
@x1)))
 

:pattern ((VariantsWithRecords.B @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.B))

:named constructor_distinct_VariantsWithRecords.B))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 228
(Term_constr_id (VariantsWithRecords.A @x0
@x1)))
 

:pattern ((VariantsWithRecords.A @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.A))

:named constructor_distinct_VariantsWithRecords.A))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (= 207
(Term_constr_id Prims.string))
:named constructor_distinct_Prims.string))
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
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.foo__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.foo__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.foo))
:named assumption_VariantsWithRecords.foo__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.foo__E__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.foo__E__payload))
:named assumption_VariantsWithRecords.foo__E__payload__uu___haseq))
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
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(10,5-10,8); use=VariantsWithRecords.fst(10,5-10,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.foo)
(= VariantsWithRecords.foo
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.foo))
:qid VariantsWithRecords_pretyping_d2f1b7922db6d70f2c8c81ac901ffdbc))

:named VariantsWithRecords_pretyping_d2f1b7922db6d70f2c8c81ac901ffdbc))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.foo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkfoo__E__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.foo; Namespace VariantsWithRecords; Name VariantsWithRecords.A; Namespace VariantsWithRecords; Name VariantsWithRecords.B; Namespace VariantsWithRecords; Name VariantsWithRecords.C; Namespace VariantsWithRecords; Name VariantsWithRecords.D; Namespace VariantsWithRecords; Name VariantsWithRecords.E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.foo__E__payload)
(= VariantsWithRecords.foo__E__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.foo__E__payload))
:qid VariantsWithRecords_pretyping_746fa5a43a08000967cdeb47bfd6ee08))

:named VariantsWithRecords_pretyping_746fa5a43a08000967cdeb47bfd6ee08))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! 
;; def=Prims.fst(239,5-239,11); use=Prims.fst(239,5-239,11)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.string)
(= Prims.string
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.string))
:qid Prims_pretyping_ce036b6b736ef4e0bc3a9ff132a12aed))

:named Prims_pretyping_ce036b6b736ef4e0bc3a9ff132a12aed))
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

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.foo{A? _}).
;   (*  - Could not prove post-condition
; *) ~(A? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__A__item___0`

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
Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05)

;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(not 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_A @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__A__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__A__item___0


; <Skipped let __proj__A__item___0/>


; encoding sigelt val VariantsWithRecords.__proj__A__item___1


; <Start encoding val VariantsWithRecords.__proj__A__item___1>


(declare-fun VariantsWithRecords.__proj__A__item___1 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: foo{A? _} -> Prims.string
(declare-fun Tm_arrow_c880dca3af0ab8bf875e43d169986184 () Term)
(declare-fun VariantsWithRecords.__proj__A__item___1@tok () Term)

; </end encoding val VariantsWithRecords.__proj__A__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.foo{A? _}).
;   (*  - Could not prove post-condition
; *) ~(A? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__A__item___1`

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
Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05)

;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(not 
;; def=VariantsWithRecords.fst(12,4-12,5); use=VariantsWithRecords.fst(12,4-12,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_A @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__A__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_c27b27db2a80fb1f8dda007a3cb1af05

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__A__item___1


; <Skipped let __proj__A__item___1/>


; encoding sigelt val VariantsWithRecords.uu___is_B


; <Start encoding val VariantsWithRecords.uu___is_B>

(declare-fun VariantsWithRecords.uu___is_B (Term) Term)

(declare-fun VariantsWithRecords.uu___is_B@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_B>


; encoding sigelt let uu___is_B


; <Skipped let uu___is_B/>


; encoding sigelt val VariantsWithRecords.__proj__B__item__named


; <Start encoding val VariantsWithRecords.__proj__B__item__named>

(declare-fun Tm_refine_e2c2f8ed43752057ac15c282b447448f () Term)
(declare-fun VariantsWithRecords.__proj__B__item__named (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: foo{B? _} -> Prims.int
(declare-fun Tm_arrow_d428cdc7e30556a62947794a07cd285e () Term)
(declare-fun VariantsWithRecords.__proj__B__item__named@tok () Term)

; </end encoding val VariantsWithRecords.__proj__B__item__named>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_B; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.foo)
(HasType (VariantsWithRecords.uu___is_B @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_B @x0))
:qid typing_VariantsWithRecords.uu___is_B))

:named typing_VariantsWithRecords.uu___is_B))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__B__item__named; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_e2c2f8ed43752057ac15c282b447448f
Tm_type)
:named refinement_kinding_Tm_refine_e2c2f8ed43752057ac15c282b447448f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__B__item__named; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e2c2f8ed43752057ac15c282b447448f)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.foo)

;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_B @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e2c2f8ed43752057ac15c282b447448f))
:qid refinement_interpretation_Tm_refine_e2c2f8ed43752057ac15c282b447448f))

:named refinement_interpretation_Tm_refine_e2c2f8ed43752057ac15c282b447448f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e2c2f8ed43752057ac15c282b447448f
;;; Fact-ids: Name VariantsWithRecords.__proj__B__item__named; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e2c2f8ed43752057ac15c282b447448f))
(Valid (Prims.hasEq VariantsWithRecords.foo)))
:named haseqTm_refine_e2c2f8ed43752057ac15c282b447448f))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_B; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,4-14,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_B @x0)
(BoxBool (is-VariantsWithRecords.B @x0)))
 

:pattern ((VariantsWithRecords.uu___is_B @x0))
:qid disc_equation_VariantsWithRecords.B))

:named disc_equation_VariantsWithRecords.B))
(push) ;; push{2

; Starting query at VariantsWithRecords.fst(14,7-14,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.foo{B? _}).
;   (*  - Could not prove post-condition
; *) ~(B? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__B__item__named`

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
Tm_refine_e2c2f8ed43752057ac15c282b447448f)

;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,7-14,12)
(not 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,7-14,12)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_B @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__B__item__named, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e2c2f8ed43752057ac15c282b447448f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__B__item__named


; <Skipped let __proj__B__item__named/>


; encoding sigelt val VariantsWithRecords.__proj__B__item__other


; <Start encoding val VariantsWithRecords.__proj__B__item__other>


(declare-fun VariantsWithRecords.__proj__B__item__other (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: foo{B? _} -> Prims.string
(declare-fun Tm_arrow_00c99142ac12548193121995b59a2a51 () Term)
(declare-fun VariantsWithRecords.__proj__B__item__other@tok () Term)

; </end encoding val VariantsWithRecords.__proj__B__item__other>

(push) ;; push{2

; Starting query at VariantsWithRecords.fst(14,20-14,25)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.foo{B? _}).
;   (*  - Could not prove post-condition
; *) ~(B? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__B__item__other`

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
Tm_refine_e2c2f8ed43752057ac15c282b447448f)

;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,20-14,25)
(not 
;; def=VariantsWithRecords.fst(14,4-14,5); use=VariantsWithRecords.fst(14,20-14,25)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_B @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__B__item__other, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e2c2f8ed43752057ac15c282b447448f

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__B__item__other


; <Skipped let __proj__B__item__other/>


; encoding sigelt val VariantsWithRecords.uu___is_C


; <Start encoding val VariantsWithRecords.uu___is_C>

(declare-fun VariantsWithRecords.uu___is_C (Term) Term)

(declare-fun VariantsWithRecords.uu___is_C@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_C>


; encoding sigelt let uu___is_C


; <Skipped let uu___is_C/>


; encoding sigelt val VariantsWithRecords.__proj__C__item___0


; <Start encoding val VariantsWithRecords.__proj__C__item___0>

(declare-fun Tm_refine_45b918618631b7012c14d9b85e2f0ae3 () Term)
(declare-fun VariantsWithRecords.__proj__C__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: foo{C? _} -> Prims.int & Prims.string
(declare-fun Tm_arrow_eec701956921d23ccb1bb1a7d8228001 () Term)
(declare-fun VariantsWithRecords.__proj__C__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__C__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_C; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.foo)
(HasType (VariantsWithRecords.uu___is_C @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_C @x0))
:qid typing_VariantsWithRecords.uu___is_C))

:named typing_VariantsWithRecords.uu___is_C))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__C__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_45b918618631b7012c14d9b85e2f0ae3
Tm_type)
:named refinement_kinding_Tm_refine_45b918618631b7012c14d9b85e2f0ae3))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__C__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_45b918618631b7012c14d9b85e2f0ae3)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.foo)

;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_C @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_45b918618631b7012c14d9b85e2f0ae3))
:qid refinement_interpretation_Tm_refine_45b918618631b7012c14d9b85e2f0ae3))

:named refinement_interpretation_Tm_refine_45b918618631b7012c14d9b85e2f0ae3))
;;;;;;;;;;;;;;;;haseq for Tm_refine_45b918618631b7012c14d9b85e2f0ae3
;;; Fact-ids: Name VariantsWithRecords.__proj__C__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_45b918618631b7012c14d9b85e2f0ae3))
(Valid (Prims.hasEq VariantsWithRecords.foo)))
:named haseqTm_refine_45b918618631b7012c14d9b85e2f0ae3))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_C; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_C @x0)
(BoxBool (is-VariantsWithRecords.C @x0)))
 

:pattern ((VariantsWithRecords.uu___is_C @x0))
:qid disc_equation_VariantsWithRecords.C))

:named disc_equation_VariantsWithRecords.C))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.foo{C? _}).
;   (*  - Could not prove post-condition
; *) ~(C? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__C__item___0`

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
Tm_refine_45b918618631b7012c14d9b85e2f0ae3)

;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(not 
;; def=VariantsWithRecords.fst(16,4-16,5); use=VariantsWithRecords.fst(16,4-16,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_C @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__C__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_45b918618631b7012c14d9b85e2f0ae3

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__C__item___0


; <Skipped let __proj__C__item___0/>


; encoding sigelt val VariantsWithRecords.uu___is_D


; <Start encoding val VariantsWithRecords.uu___is_D>

(declare-fun VariantsWithRecords.uu___is_D (Term) Term)

(declare-fun VariantsWithRecords.uu___is_D@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_D>


; encoding sigelt let uu___is_D


; <Skipped let uu___is_D/>


; encoding sigelt val VariantsWithRecords.uu___is_E


; <Start encoding val VariantsWithRecords.uu___is_E>

(declare-fun VariantsWithRecords.uu___is_E (Term) Term)

(declare-fun VariantsWithRecords.uu___is_E@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_E>


; encoding sigelt let uu___is_E


; <Skipped let uu___is_E/>


; encoding sigelt val VariantsWithRecords.__proj__E__item___0


; <Start encoding val VariantsWithRecords.__proj__E__item___0>

(declare-fun Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9 () Term)
(declare-fun VariantsWithRecords.__proj__E__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: foo{E? _} -> foo__E__payload
(declare-fun Tm_arrow_3b1190f44748c1837dcf2b0b3ac8db43 () Term)
(declare-fun VariantsWithRecords.__proj__E__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__E__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.foo)
(HasType (VariantsWithRecords.uu___is_E @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_E @x0))
:qid typing_VariantsWithRecords.uu___is_E))

:named typing_VariantsWithRecords.uu___is_E))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__E__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9
Tm_type)
:named refinement_kinding_Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__E__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.foo)

;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_E @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9))
:qid refinement_interpretation_Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9))

:named refinement_interpretation_Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9
;;; Fact-ids: Name VariantsWithRecords.__proj__E__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9))
(Valid (Prims.hasEq VariantsWithRecords.foo)))
:named haseqTm_refine_2eb846cfa8f07a725ce0025bd2d365e9))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_E; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_E @x0)
(BoxBool (is-VariantsWithRecords.E @x0)))
 

:pattern ((VariantsWithRecords.uu___is_E @x0))
:qid disc_equation_VariantsWithRecords.E))

:named disc_equation_VariantsWithRecords.E))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.foo{E? _}).
;   (*  - Could not prove post-condition
; *) ~(E? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__E__item___0`

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
Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9)

;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(not 
;; def=VariantsWithRecords.fst(20,4-20,5); use=VariantsWithRecords.fst(20,4-20,5)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_E @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__E__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_2eb846cfa8f07a725ce0025bd2d365e9

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__E__item___0


; <Skipped let __proj__E__item___0/>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type VariantsWithRecords.expr__Add__payload


; <Start encoding type VariantsWithRecords.expr__Add__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.expr__Add__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.expr__StringOfInt__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.expr (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun VariantsWithRecords.expr@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkexpr__Add__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkexpr__Add__payload_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkexpr__Add__payload_y (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkexpr__Add__payload
(declare-fun VariantsWithRecords.Mkexpr__Add__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkexpr__StringOfInt__payload (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkexpr__StringOfInt__payload_value (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkexpr__StringOfInt__payload
(declare-fun VariantsWithRecords.Mkexpr__StringOfInt__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.ConstInt (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.ConstInt__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.ConstInt
(declare-fun VariantsWithRecords.ConstInt@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.ConstStr (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.ConstStr__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.ConstStr
(declare-fun VariantsWithRecords.ConstStr@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Add (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Add__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Add
(declare-fun VariantsWithRecords.Add@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.StringOfInt (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.StringOfInt__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.StringOfInt
(declare-fun VariantsWithRecords.StringOfInt@tok () Term)
;;;;;;;;;;;;;;;;x: expr Prims.int -> y: expr Prims.int -> expr__Add__payload
(declare-fun Tm_arrow_a1b874c879ecaa3eb6c03443865c6a50 () Term)
;;;;;;;;;;;;;;;;value: expr Prims.int -> expr__StringOfInt__payload
(declare-fun Tm_arrow_b919f6e648c3d33c379dfc157cab0860 () Term)
;;;;;;;;;;;;;;;;_0: Prims.int -> expr Prims.int
(declare-fun Tm_arrow_124e318301f8794a4b6c16de3dd4c5df () Term)
;;;;;;;;;;;;;;;;_0: Prims.string -> expr Prims.string
(declare-fun Tm_arrow_1c80b13e3542e8f90e71620bb3a7a175 () Term)
;;;;;;;;;;;;;;;;_0: expr__Add__payload -> expr Prims.int
(declare-fun Tm_arrow_d07e004935addade618d5b895b07986c () Term)
;;;;;;;;;;;;;;;;_0: expr__StringOfInt__payload -> expr Prims.string
(declare-fun Tm_arrow_6333b2e8ea1cb263c7910f0343b092ce () Term)

; <start constructor VariantsWithRecords.expr__Add__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.expr__Add__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
343)
(= __@x0
VariantsWithRecords.expr__Add__payload)))

; </end constructor VariantsWithRecords.expr__Add__payload>


; <start constructor VariantsWithRecords.expr__StringOfInt__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.expr__StringOfInt__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
348)
(= __@x0
VariantsWithRecords.expr__StringOfInt__payload)))

; </end constructor VariantsWithRecords.expr__StringOfInt__payload>


; <start constructor VariantsWithRecords.expr>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.expr ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
353)
(exists ((@x0 Term))
 (! (= __@x0
(VariantsWithRecords.expr @x0))
 
;;no pats
:qid is-VariantsWithRecords.expr))))

; </end constructor VariantsWithRecords.expr>


; <start constructor VariantsWithRecords.Mkexpr__Add__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkexpr__Add__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
360)
(= __@x0
(VariantsWithRecords.Mkexpr__Add__payload (VariantsWithRecords.Mkexpr__Add__payload_x __@x0)
(VariantsWithRecords.Mkexpr__Add__payload_y __@x0)))))

; </end constructor VariantsWithRecords.Mkexpr__Add__payload>


; <start constructor VariantsWithRecords.Mkexpr__StringOfInt__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkexpr__StringOfInt__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
365)
(= __@x0
(VariantsWithRecords.Mkexpr__StringOfInt__payload (VariantsWithRecords.Mkexpr__StringOfInt__payload_value __@x0)))))

; </end constructor VariantsWithRecords.Mkexpr__StringOfInt__payload>


; <start constructor VariantsWithRecords.ConstInt>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.ConstInt ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
370)
(= __@x0
(VariantsWithRecords.ConstInt (VariantsWithRecords.ConstInt__0 __@x0)))))

; </end constructor VariantsWithRecords.ConstInt>


; <start constructor VariantsWithRecords.ConstStr>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.ConstStr ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
376)
(= __@x0
(VariantsWithRecords.ConstStr (VariantsWithRecords.ConstStr__0 __@x0)))))

; </end constructor VariantsWithRecords.ConstStr>


; <start constructor VariantsWithRecords.Add>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Add ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
382)
(= __@x0
(VariantsWithRecords.Add (VariantsWithRecords.Add__0 __@x0)))))

; </end constructor VariantsWithRecords.Add>


; <start constructor VariantsWithRecords.StringOfInt>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.StringOfInt ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
388)
(= __@x0
(VariantsWithRecords.StringOfInt (VariantsWithRecords.StringOfInt__0 __@x0)))))

; </end constructor VariantsWithRecords.StringOfInt>


; </end encoding type VariantsWithRecords.expr__Add__payload>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term))
 (! (= (ApplyTT VariantsWithRecords.expr@tok
@x0)
(VariantsWithRecords.expr @x0))
 

:pattern ((ApplyTT VariantsWithRecords.expr@tok
@x0))

:pattern ((VariantsWithRecords.expr @x0))
:qid token_correspondence_VariantsWithRecords.expr@tok))

:named token_correspondence_VariantsWithRecords.expr@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.StringOfInt @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.StringOfInt))

:named subterm_ordering_VariantsWithRecords.StringOfInt))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
:qid subterm_ordering_VariantsWithRecords.Mkexpr__StringOfInt__payload))

:named subterm_ordering_VariantsWithRecords.Mkexpr__StringOfInt__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
:qid subterm_ordering_VariantsWithRecords.Mkexpr__Add__payload))

:named subterm_ordering_VariantsWithRecords.Mkexpr__Add__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.ConstStr @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.ConstStr))

:named subterm_ordering_VariantsWithRecords.ConstStr))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.ConstInt @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.ConstInt))

:named subterm_ordering_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Add @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.Add))

:named subterm_ordering_VariantsWithRecords.Add))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.StringOfInt__0 (VariantsWithRecords.StringOfInt @x0))
@x0)
 

:pattern ((VariantsWithRecords.StringOfInt @x0))
:qid projection_inverse_VariantsWithRecords.StringOfInt__0))

:named projection_inverse_VariantsWithRecords.StringOfInt__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Mkexpr__StringOfInt__payload_value (VariantsWithRecords.Mkexpr__StringOfInt__payload @x0))
@x0)
 

:pattern ((VariantsWithRecords.Mkexpr__StringOfInt__payload @x0))
:qid projection_inverse_VariantsWithRecords.Mkexpr__StringOfInt__payload_value))

:named projection_inverse_VariantsWithRecords.Mkexpr__StringOfInt__payload_value))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkexpr__Add__payload_y (VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_y))

:named projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkexpr__Add__payload_x (VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_x))

:named projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.ConstStr__0 (VariantsWithRecords.ConstStr @x0))
@x0)
 

:pattern ((VariantsWithRecords.ConstStr @x0))
:qid projection_inverse_VariantsWithRecords.ConstStr__0))

:named projection_inverse_VariantsWithRecords.ConstStr__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.ConstInt__0 (VariantsWithRecords.ConstInt @x0))
@x0)
 

:pattern ((VariantsWithRecords.ConstInt @x0))
:qid projection_inverse_VariantsWithRecords.ConstInt__0))

:named projection_inverse_VariantsWithRecords.ConstInt__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Add__0 (VariantsWithRecords.Add @x0))
@x0)
 

:pattern ((VariantsWithRecords.Add @x0))
:qid projection_inverse_VariantsWithRecords.Add__0))

:named projection_inverse_VariantsWithRecords.Add__0))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (is-Tm_arrow (PreType VariantsWithRecords.expr@tok))
:named pre_kinding_VariantsWithRecords.expr@tok))
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.expr__StringOfInt__payload
Tm_type)
:named kinding_VariantsWithRecords.expr__StringOfInt__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.expr__Add__payload
Tm_type)
:named kinding_VariantsWithRecords.expr__Add__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (and (IsTotFun VariantsWithRecords.expr@tok)

;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (VariantsWithRecords.expr @x0)
Tm_type))
 

:pattern ((VariantsWithRecords.expr @x0))
:qid kinding_VariantsWithRecords.expr@tok))
)
:named kinding_VariantsWithRecords.expr@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload)
(is-VariantsWithRecords.Mkexpr__StringOfInt__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.expr__StringOfInt__payload))

:named fuel_guarded_inversion_VariantsWithRecords.expr__StringOfInt__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload)
(is-VariantsWithRecords.Mkexpr__Add__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.expr__Add__payload))

:named fuel_guarded_inversion_VariantsWithRecords.expr__Add__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(VariantsWithRecords.expr @x2))
(or (and (is-VariantsWithRecords.ConstInt @x1)
(= @x2
Prims.int))
(and (is-VariantsWithRecords.ConstStr @x1)
(= @x2
Prims.string))
(and (is-VariantsWithRecords.Add @x1)
(= @x2
Prims.int))
(and (is-VariantsWithRecords.StringOfInt @x1)
(= @x2
Prims.string))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(VariantsWithRecords.expr @x2)))
:qid fuel_guarded_inversion_VariantsWithRecords.expr))

:named fuel_guarded_inversion_VariantsWithRecords.expr))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (= 354
(Term_constr_id VariantsWithRecords.expr@tok))
:named fresh_token_VariantsWithRecords.expr@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload)
(= Prims.string
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.StringOfInt@tok))

:named data_typing_intro_VariantsWithRecords.StringOfInt@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
:qid data_typing_intro_VariantsWithRecords.Mkexpr__StringOfInt__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkexpr__StringOfInt__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int))
(HasTypeFuel @u0
@x2
(VariantsWithRecords.expr Prims.int)))
(HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
:qid data_typing_intro_VariantsWithRecords.Mkexpr__Add__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkexpr__Add__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.string)
(= Prims.string
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.ConstStr@tok))

:named data_typing_intro_VariantsWithRecords.ConstStr@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(= Prims.int
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.ConstInt@tok))

:named data_typing_intro_VariantsWithRecords.ConstInt@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload)
(= Prims.int
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.Add@tok))

:named data_typing_intro_VariantsWithRecords.Add@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.string
@x2)
(HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.StringOfInt))

:named data_elim_VariantsWithRecords.StringOfInt))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload)
(HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
:qid data_elim_VariantsWithRecords.Mkexpr__StringOfInt__payload))

:named data_elim_VariantsWithRecords.Mkexpr__StringOfInt__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload)
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int))
(HasTypeFuel @u0
@x2
(VariantsWithRecords.expr Prims.int))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
:qid data_elim_VariantsWithRecords.Mkexpr__Add__payload))

:named data_elim_VariantsWithRecords.Mkexpr__Add__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.string
@x2)
(HasTypeFuel @u0
@x1
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.ConstStr))

:named data_elim_VariantsWithRecords.ConstStr))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.int
@x2)
(HasTypeFuel @u0
@x1
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.ConstInt))

:named data_elim_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.int
@x2)
(HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.Add))

:named data_elim_VariantsWithRecords.Add))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (= 348
(Term_constr_id VariantsWithRecords.expr__StringOfInt__payload))
:named constructor_distinct_VariantsWithRecords.expr__StringOfInt__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (= 343
(Term_constr_id VariantsWithRecords.expr__Add__payload))
:named constructor_distinct_VariantsWithRecords.expr__Add__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term))
 (! (= 353
(Term_constr_id (VariantsWithRecords.expr @x0)))
 

:pattern ((VariantsWithRecords.expr @x0))
:qid constructor_distinct_VariantsWithRecords.expr))

:named constructor_distinct_VariantsWithRecords.expr))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= 388
(Term_constr_id (VariantsWithRecords.StringOfInt @x0)))
 

:pattern ((VariantsWithRecords.StringOfInt @x0))
:qid constructor_distinct_VariantsWithRecords.StringOfInt))

:named constructor_distinct_VariantsWithRecords.StringOfInt))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= 365
(Term_constr_id (VariantsWithRecords.Mkexpr__StringOfInt__payload @x0)))
 

:pattern ((VariantsWithRecords.Mkexpr__StringOfInt__payload @x0))
:qid constructor_distinct_VariantsWithRecords.Mkexpr__StringOfInt__payload))

:named constructor_distinct_VariantsWithRecords.Mkexpr__StringOfInt__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= 360
(Term_constr_id (VariantsWithRecords.Mkexpr__Add__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkexpr__Add__payload))

:named constructor_distinct_VariantsWithRecords.Mkexpr__Add__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (= 376
(Term_constr_id (VariantsWithRecords.ConstStr @x0)))
 

:pattern ((VariantsWithRecords.ConstStr @x0))
:qid constructor_distinct_VariantsWithRecords.ConstStr))

:named constructor_distinct_VariantsWithRecords.ConstStr))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term))
 (! (= 370
(Term_constr_id (VariantsWithRecords.ConstInt @x0)))
 

:pattern ((VariantsWithRecords.ConstInt @x0))
:qid constructor_distinct_VariantsWithRecords.ConstInt))

:named constructor_distinct_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term))
 (! (= 382
(Term_constr_id (VariantsWithRecords.Add @x0)))
 

:pattern ((VariantsWithRecords.Add @x0))
:qid constructor_distinct_VariantsWithRecords.Add))

:named constructor_distinct_VariantsWithRecords.Add))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.expr__Add__payload)
(= VariantsWithRecords.expr__Add__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.expr__Add__payload))
:qid VariantsWithRecords_pretyping_df0f135349032f0f62cea1ef12ffa67e))

:named VariantsWithRecords_pretyping_df0f135349032f0f62cea1ef12ffa67e))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(VariantsWithRecords.expr @x2))
(= (VariantsWithRecords.expr @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(VariantsWithRecords.expr @x2)))
:qid VariantsWithRecords_pretyping_0d2d25a4e907400f8accf759bc38b69a))

:named VariantsWithRecords_pretyping_0d2d25a4e907400f8accf759bc38b69a))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.expr__StringOfInt__payload)
(= VariantsWithRecords.expr__StringOfInt__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.expr__StringOfInt__payload))
:qid VariantsWithRecords_pretyping_08d1eea85a466d3a0c32bbb1e238f75a))

:named VariantsWithRecords_pretyping_08d1eea85a466d3a0c32bbb1e238f75a))
(push) ;; push{4

; Starting query at VariantsWithRecords.fst(23,0-30,48)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Type).
;   Prims.hasEq VariantsWithRecords.expr__Add__payload /\
;   Prims.hasEq VariantsWithRecords.expr__StringOfInt__payload /\
;   (forall (_: Type0). {:pattern Prims.hasEq (VariantsWithRecords.expr _)}
;       Prims.hasEq (VariantsWithRecords.expr _)) ==>
;   (forall (x: VariantsWithRecords.expr Prims.int) (y: VariantsWithRecords.expr Prims.int).
;       Prims.hasEq (VariantsWithRecords.expr Prims.int) /\
;       Prims.hasEq (VariantsWithRecords.expr Prims.int)) /\
;   (forall (value: VariantsWithRecords.expr Prims.int).
;       (*  - Failed to prove that the type
;     'VariantsWithRecords.expr__StringOfInt__payload'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;       Prims.hasEq (VariantsWithRecords.expr Prims.int)) /\
;   (forall (_0: VariantsWithRecords.expr__Add__payload).
;       (*  - Failed to prove that the type
;     'VariantsWithRecords.expr'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;       Prims.hasEq VariantsWithRecords.expr__Add__payload) /\
;   (forall (_0: VariantsWithRecords.expr__StringOfInt__payload).
;       (*  - Failed to prove that the type
;     'VariantsWithRecords.expr'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;       Prims.hasEq VariantsWithRecords.expr__StringOfInt__payload)


; Context: While encoding a query
; While typechecking the top-level declaration `type VariantsWithRecords.expr__Add__payload`

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
Tm_type)

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq VariantsWithRecords.expr__Add__payload)
)


;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq VariantsWithRecords.expr__StringOfInt__payload)
)


;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq (VariantsWithRecords.expr @x1))
)
)
 

:pattern ((Prims.hasEq (VariantsWithRecords.expr @x1)))
:qid @query.1))
)

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(and 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(VariantsWithRecords.expr Prims.int))
(HasType @x2
(VariantsWithRecords.expr Prims.int)))

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(and 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(29,13-29,21)
(or label_1

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq (VariantsWithRecords.expr Prims.int))
)
)


;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(29,26-29,34)
(or label_2

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq (VariantsWithRecords.expr Prims.int))
)
)
)
)
 
;;no pats
:qid @query.2))


;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(30,25-30,33)
(or label_3

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq (VariantsWithRecords.expr Prims.int))
)
)
)
 
;;no pats
:qid @query.3))


;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
VariantsWithRecords.expr__Add__payload)

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(29,4-29,7)
(or label_4

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq VariantsWithRecords.expr__Add__payload)
)
)
)
 
;;no pats
:qid @query.4))


;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(forall ((@x1 Term))
 (! (implies (HasType @x1
VariantsWithRecords.expr__StringOfInt__payload)

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(30,4-30,15)
(or label_5

;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Valid 
;; def=VariantsWithRecords.fst(23,0-30,48); use=VariantsWithRecords.fst(23,0-30,48)
(Prims.hasEq VariantsWithRecords.expr__StringOfInt__payload)
)
)
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
; QUERY ID: (VariantsWithRecords.expr__Add__payload, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type VariantsWithRecords.expr__Add__payload


; <Start encoding type VariantsWithRecords.expr__Add__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.expr__Add__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.expr__StringOfInt__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.expr (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun VariantsWithRecords.expr@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkexpr__Add__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkexpr__Add__payload_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkexpr__Add__payload_y (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkexpr__Add__payload
(declare-fun VariantsWithRecords.Mkexpr__Add__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkexpr__StringOfInt__payload (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkexpr__StringOfInt__payload_value (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkexpr__StringOfInt__payload
(declare-fun VariantsWithRecords.Mkexpr__StringOfInt__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.ConstInt (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.ConstInt__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.ConstInt
(declare-fun VariantsWithRecords.ConstInt@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.ConstStr (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.ConstStr__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.ConstStr
(declare-fun VariantsWithRecords.ConstStr@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Add (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Add__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Add
(declare-fun VariantsWithRecords.Add@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.StringOfInt (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.StringOfInt__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.StringOfInt
(declare-fun VariantsWithRecords.StringOfInt@tok () Term)
;;;;;;;;;;;;;;;;x: expr Prims.int -> y: expr Prims.int -> expr__Add__payload
(declare-fun Tm_arrow_a1b874c879ecaa3eb6c03443865c6a50 () Term)
;;;;;;;;;;;;;;;;value: expr Prims.int -> expr__StringOfInt__payload
(declare-fun Tm_arrow_b919f6e648c3d33c379dfc157cab0860 () Term)
;;;;;;;;;;;;;;;;_0: Prims.int -> expr Prims.int
(declare-fun Tm_arrow_124e318301f8794a4b6c16de3dd4c5df () Term)
;;;;;;;;;;;;;;;;_0: Prims.string -> expr Prims.string
(declare-fun Tm_arrow_1c80b13e3542e8f90e71620bb3a7a175 () Term)
;;;;;;;;;;;;;;;;_0: expr__Add__payload -> expr Prims.int
(declare-fun Tm_arrow_d07e004935addade618d5b895b07986c () Term)
;;;;;;;;;;;;;;;;_0: expr__StringOfInt__payload -> expr Prims.string
(declare-fun Tm_arrow_6333b2e8ea1cb263c7910f0343b092ce () Term)

; <start constructor VariantsWithRecords.expr__Add__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.expr__Add__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
393)
(= __@x0
VariantsWithRecords.expr__Add__payload)))

; </end constructor VariantsWithRecords.expr__Add__payload>


; <start constructor VariantsWithRecords.expr__StringOfInt__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.expr__StringOfInt__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
398)
(= __@x0
VariantsWithRecords.expr__StringOfInt__payload)))

; </end constructor VariantsWithRecords.expr__StringOfInt__payload>


; <start constructor VariantsWithRecords.expr>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.expr ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
403)
(exists ((@x0 Term))
 (! (= __@x0
(VariantsWithRecords.expr @x0))
 
;;no pats
:qid is-VariantsWithRecords.expr))))

; </end constructor VariantsWithRecords.expr>


; <start constructor VariantsWithRecords.Mkexpr__Add__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkexpr__Add__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
410)
(= __@x0
(VariantsWithRecords.Mkexpr__Add__payload (VariantsWithRecords.Mkexpr__Add__payload_x __@x0)
(VariantsWithRecords.Mkexpr__Add__payload_y __@x0)))))

; </end constructor VariantsWithRecords.Mkexpr__Add__payload>


; <start constructor VariantsWithRecords.Mkexpr__StringOfInt__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkexpr__StringOfInt__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
415)
(= __@x0
(VariantsWithRecords.Mkexpr__StringOfInt__payload (VariantsWithRecords.Mkexpr__StringOfInt__payload_value __@x0)))))

; </end constructor VariantsWithRecords.Mkexpr__StringOfInt__payload>


; <start constructor VariantsWithRecords.ConstInt>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.ConstInt ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
420)
(= __@x0
(VariantsWithRecords.ConstInt (VariantsWithRecords.ConstInt__0 __@x0)))))

; </end constructor VariantsWithRecords.ConstInt>


; <start constructor VariantsWithRecords.ConstStr>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.ConstStr ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
426)
(= __@x0
(VariantsWithRecords.ConstStr (VariantsWithRecords.ConstStr__0 __@x0)))))

; </end constructor VariantsWithRecords.ConstStr>


; <start constructor VariantsWithRecords.Add>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Add ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
432)
(= __@x0
(VariantsWithRecords.Add (VariantsWithRecords.Add__0 __@x0)))))

; </end constructor VariantsWithRecords.Add>


; <start constructor VariantsWithRecords.StringOfInt>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.StringOfInt ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
438)
(= __@x0
(VariantsWithRecords.StringOfInt (VariantsWithRecords.StringOfInt__0 __@x0)))))

; </end constructor VariantsWithRecords.StringOfInt>


; </end encoding type VariantsWithRecords.expr__Add__payload>


; encoding sigelt assume VariantsWithRecords.expr__Add__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.expr__Add__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.expr__Add__payload__uu___haseq>


; encoding sigelt assume VariantsWithRecords.expr__StringOfInt__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.expr__StringOfInt__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.expr__StringOfInt__payload__uu___haseq>


; encoding sigelt assume VariantsWithRecords.expr__uu___haseq


; <Start encoding assume VariantsWithRecords.expr__uu___haseq>


; </end encoding assume VariantsWithRecords.expr__uu___haseq>


; encoding sigelt val VariantsWithRecords.__proj__Mkexpr__Add__payload__item__x


; <Start encoding val VariantsWithRecords.__proj__Mkexpr__Add__payload__item__x>

(declare-fun VariantsWithRecords.__proj__Mkexpr__Add__payload__item__x (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkexpr__Add__payload__item__x@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkexpr__Add__payload__item__x>


; encoding sigelt let __proj__Mkexpr__Add__payload__item__x


; <Skipped let __proj__Mkexpr__Add__payload__item__x/>


; encoding sigelt val VariantsWithRecords.__proj__Mkexpr__Add__payload__item__y


; <Start encoding val VariantsWithRecords.__proj__Mkexpr__Add__payload__item__y>

(declare-fun VariantsWithRecords.__proj__Mkexpr__Add__payload__item__y (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkexpr__Add__payload__item__y@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkexpr__Add__payload__item__y>


; encoding sigelt let __proj__Mkexpr__Add__payload__item__y


; <Skipped let __proj__Mkexpr__Add__payload__item__y/>


; encoding sigelt val VariantsWithRecords.__proj__Mkexpr__StringOfInt__payload__item__value


; <Start encoding val VariantsWithRecords.__proj__Mkexpr__StringOfInt__payload__item__value>

(declare-fun VariantsWithRecords.__proj__Mkexpr__StringOfInt__payload__item__value (Term) Term)
;;;;;;;;;;;;;;;;projectee: expr__StringOfInt__payload -> expr Prims.int
(declare-fun Tm_arrow_538cd8a0c8e1ce3894d386b6e009c227 () Term)
(declare-fun VariantsWithRecords.__proj__Mkexpr__StringOfInt__payload__item__value@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkexpr__StringOfInt__payload__item__value>


; encoding sigelt let __proj__Mkexpr__StringOfInt__payload__item__value


; <Skipped let __proj__Mkexpr__StringOfInt__payload__item__value/>


; encoding sigelt val VariantsWithRecords.uu___is_ConstInt


; <Start encoding val VariantsWithRecords.uu___is_ConstInt>

(declare-fun VariantsWithRecords.uu___is_ConstInt (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: expr _ -> Prims.bool
(declare-fun Tm_arrow_b95523fe6d0c93dedab577f135594362 () Term)
(declare-fun VariantsWithRecords.uu___is_ConstInt@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_ConstInt>


; encoding sigelt let uu___is_ConstInt


; <Skipped let uu___is_ConstInt/>


; encoding sigelt val VariantsWithRecords.__proj__ConstInt__item___0


; <Start encoding val VariantsWithRecords.__proj__ConstInt__item___0>

(declare-fun Tm_refine_6933647acdc703956b5d276367ef6455 (Term) Term)
(declare-fun VariantsWithRecords.__proj__ConstInt__item___0 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: expr _ {ConstInt? _} -> Prims.int
(declare-fun Tm_arrow_711d0bdea9be08c5d32e7a2b4e652b0e () Term)
(declare-fun VariantsWithRecords.__proj__ConstInt__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__ConstInt__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_ConstInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(VariantsWithRecords.expr @x0)))
(HasType (VariantsWithRecords.uu___is_ConstInt @x0
@x1)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_ConstInt @x0
@x1))
:qid typing_VariantsWithRecords.uu___is_ConstInt))

:named typing_VariantsWithRecords.uu___is_ConstInt))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term))
 (! (= (ApplyTT VariantsWithRecords.expr@tok
@x0)
(VariantsWithRecords.expr @x0))
 

:pattern ((ApplyTT VariantsWithRecords.expr@tok
@x0))

:pattern ((VariantsWithRecords.expr @x0))
:qid token_correspondence_VariantsWithRecords.expr@tok))

:named token_correspondence_VariantsWithRecords.expr@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.StringOfInt @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.StringOfInt))

:named subterm_ordering_VariantsWithRecords.StringOfInt))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
:qid subterm_ordering_VariantsWithRecords.Mkexpr__StringOfInt__payload))

:named subterm_ordering_VariantsWithRecords.Mkexpr__StringOfInt__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
:qid subterm_ordering_VariantsWithRecords.Mkexpr__Add__payload))

:named subterm_ordering_VariantsWithRecords.Mkexpr__Add__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.ConstStr @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.ConstStr))

:named subterm_ordering_VariantsWithRecords.ConstStr))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.ConstInt @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.ConstInt))

:named subterm_ordering_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Add @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
:qid subterm_ordering_VariantsWithRecords.Add))

:named subterm_ordering_VariantsWithRecords.Add))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__ConstInt__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_6933647acdc703956b5d276367ef6455 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_6933647acdc703956b5d276367ef6455 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_6933647acdc703956b5d276367ef6455))

:named refinement_kinding_Tm_refine_6933647acdc703956b5d276367ef6455))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__ConstInt__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_6933647acdc703956b5d276367ef6455 @x2))
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr @x2))

;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstInt @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_6933647acdc703956b5d276367ef6455 @x2)))
:qid refinement_interpretation_Tm_refine_6933647acdc703956b5d276367ef6455))

:named refinement_interpretation_Tm_refine_6933647acdc703956b5d276367ef6455))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.StringOfInt__0 (VariantsWithRecords.StringOfInt @x0))
@x0)
 

:pattern ((VariantsWithRecords.StringOfInt @x0))
:qid projection_inverse_VariantsWithRecords.StringOfInt__0))

:named projection_inverse_VariantsWithRecords.StringOfInt__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Mkexpr__StringOfInt__payload_value (VariantsWithRecords.Mkexpr__StringOfInt__payload @x0))
@x0)
 

:pattern ((VariantsWithRecords.Mkexpr__StringOfInt__payload @x0))
:qid projection_inverse_VariantsWithRecords.Mkexpr__StringOfInt__payload_value))

:named projection_inverse_VariantsWithRecords.Mkexpr__StringOfInt__payload_value))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkexpr__Add__payload_y (VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_y))

:named projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkexpr__Add__payload_x (VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_x))

:named projection_inverse_VariantsWithRecords.Mkexpr__Add__payload_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.ConstStr__0 (VariantsWithRecords.ConstStr @x0))
@x0)
 

:pattern ((VariantsWithRecords.ConstStr @x0))
:qid projection_inverse_VariantsWithRecords.ConstStr__0))

:named projection_inverse_VariantsWithRecords.ConstStr__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.ConstInt__0 (VariantsWithRecords.ConstInt @x0))
@x0)
 

:pattern ((VariantsWithRecords.ConstInt @x0))
:qid projection_inverse_VariantsWithRecords.ConstInt__0))

:named projection_inverse_VariantsWithRecords.ConstInt__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Add__0 (VariantsWithRecords.Add @x0))
@x0)
 

:pattern ((VariantsWithRecords.Add @x0))
:qid projection_inverse_VariantsWithRecords.Add__0))

:named projection_inverse_VariantsWithRecords.Add__0))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (is-Tm_arrow (PreType VariantsWithRecords.expr@tok))
:named pre_kinding_VariantsWithRecords.expr@tok))
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.expr__StringOfInt__payload
Tm_type)
:named kinding_VariantsWithRecords.expr__StringOfInt__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.expr__Add__payload
Tm_type)
:named kinding_VariantsWithRecords.expr__Add__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (and (IsTotFun VariantsWithRecords.expr@tok)

;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (VariantsWithRecords.expr @x0)
Tm_type))
 

:pattern ((VariantsWithRecords.expr @x0))
:qid kinding_VariantsWithRecords.expr@tok))
)
:named kinding_VariantsWithRecords.expr@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6933647acdc703956b5d276367ef6455
;;; Fact-ids: Name VariantsWithRecords.__proj__ConstInt__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_6933647acdc703956b5d276367ef6455 @x0)))
(Valid (Prims.hasEq (VariantsWithRecords.expr @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_6933647acdc703956b5d276367ef6455 @x0))))
:qid haseqTm_refine_6933647acdc703956b5d276367ef6455))

:named haseqTm_refine_6933647acdc703956b5d276367ef6455))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload)
(is-VariantsWithRecords.Mkexpr__StringOfInt__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.expr__StringOfInt__payload))

:named fuel_guarded_inversion_VariantsWithRecords.expr__StringOfInt__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload)
(is-VariantsWithRecords.Mkexpr__Add__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.expr__Add__payload))

:named fuel_guarded_inversion_VariantsWithRecords.expr__Add__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(VariantsWithRecords.expr @x2))
(or (and (is-VariantsWithRecords.ConstInt @x1)
(= @x2
Prims.int))
(and (is-VariantsWithRecords.ConstStr @x1)
(= @x2
Prims.string))
(and (is-VariantsWithRecords.Add @x1)
(= @x2
Prims.int))
(and (is-VariantsWithRecords.StringOfInt @x1)
(= @x2
Prims.string))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(VariantsWithRecords.expr @x2)))
:qid fuel_guarded_inversion_VariantsWithRecords.expr))

:named fuel_guarded_inversion_VariantsWithRecords.expr))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (= 404
(Term_constr_id VariantsWithRecords.expr@tok))
:named fresh_token_VariantsWithRecords.expr@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_ConstInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.uu___is_ConstInt @x0
@x1)
(BoxBool (is-VariantsWithRecords.ConstInt @x1)))
 

:pattern ((VariantsWithRecords.uu___is_ConstInt @x0
@x1))
:qid disc_equation_VariantsWithRecords.ConstInt))

:named disc_equation_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload)
(= Prims.string
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.StringOfInt@tok))

:named data_typing_intro_VariantsWithRecords.StringOfInt@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
:qid data_typing_intro_VariantsWithRecords.Mkexpr__StringOfInt__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkexpr__StringOfInt__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int))
(HasTypeFuel @u0
@x2
(VariantsWithRecords.expr Prims.int)))
(HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
:qid data_typing_intro_VariantsWithRecords.Mkexpr__Add__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkexpr__Add__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.string)
(= Prims.string
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.ConstStr@tok))

:named data_typing_intro_VariantsWithRecords.ConstStr@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(= Prims.int
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.ConstInt@tok))

:named data_typing_intro_VariantsWithRecords.ConstInt@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload)
(= Prims.int
@x2))
(HasTypeFuel @u0
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
:qid data_typing_intro_VariantsWithRecords.Add@tok))

:named data_typing_intro_VariantsWithRecords.Add@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.string
@x2)
(HasTypeFuel @u0
@x1
VariantsWithRecords.expr__StringOfInt__payload)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.StringOfInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.StringOfInt))

:named data_elim_VariantsWithRecords.StringOfInt))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload)
(HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)
VariantsWithRecords.expr__StringOfInt__payload))
:qid data_elim_VariantsWithRecords.Mkexpr__StringOfInt__payload))

:named data_elim_VariantsWithRecords.Mkexpr__StringOfInt__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload)
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr Prims.int))
(HasTypeFuel @u0
@x2
(VariantsWithRecords.expr Prims.int))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)
VariantsWithRecords.expr__Add__payload))
:qid data_elim_VariantsWithRecords.Mkexpr__Add__payload))

:named data_elim_VariantsWithRecords.Mkexpr__Add__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.string
@x2)
(HasTypeFuel @u0
@x1
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstStr @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.ConstStr))

:named data_elim_VariantsWithRecords.ConstStr))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.int
@x2)
(HasTypeFuel @u0
@x1
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.ConstInt @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.ConstInt))

:named data_elim_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2))
(and (= Prims.int
@x2)
(HasTypeFuel @u0
@x1
VariantsWithRecords.expr__Add__payload)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Add @x1)
(VariantsWithRecords.expr @x2)))
:qid data_elim_VariantsWithRecords.Add))

:named data_elim_VariantsWithRecords.Add))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (= 398
(Term_constr_id VariantsWithRecords.expr__StringOfInt__payload))
:named constructor_distinct_VariantsWithRecords.expr__StringOfInt__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! (= 393
(Term_constr_id VariantsWithRecords.expr__Add__payload))
:named constructor_distinct_VariantsWithRecords.expr__Add__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term))
 (! (= 403
(Term_constr_id (VariantsWithRecords.expr @x0)))
 

:pattern ((VariantsWithRecords.expr @x0))
:qid constructor_distinct_VariantsWithRecords.expr))

:named constructor_distinct_VariantsWithRecords.expr))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= 438
(Term_constr_id (VariantsWithRecords.StringOfInt @x0)))
 

:pattern ((VariantsWithRecords.StringOfInt @x0))
:qid constructor_distinct_VariantsWithRecords.StringOfInt))

:named constructor_distinct_VariantsWithRecords.StringOfInt))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (= 415
(Term_constr_id (VariantsWithRecords.Mkexpr__StringOfInt__payload @x0)))
 

:pattern ((VariantsWithRecords.Mkexpr__StringOfInt__payload @x0))
:qid constructor_distinct_VariantsWithRecords.Mkexpr__StringOfInt__payload))

:named constructor_distinct_VariantsWithRecords.Mkexpr__StringOfInt__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= 410
(Term_constr_id (VariantsWithRecords.Mkexpr__Add__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkexpr__Add__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkexpr__Add__payload))

:named constructor_distinct_VariantsWithRecords.Mkexpr__Add__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (= 426
(Term_constr_id (VariantsWithRecords.ConstStr @x0)))
 

:pattern ((VariantsWithRecords.ConstStr @x0))
:qid constructor_distinct_VariantsWithRecords.ConstStr))

:named constructor_distinct_VariantsWithRecords.ConstStr))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(forall ((@x0 Term))
 (! (= 420
(Term_constr_id (VariantsWithRecords.ConstInt @x0)))
 

:pattern ((VariantsWithRecords.ConstInt @x0))
:qid constructor_distinct_VariantsWithRecords.ConstInt))

:named constructor_distinct_VariantsWithRecords.ConstInt))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term))
 (! (= 432
(Term_constr_id (VariantsWithRecords.Add @x0)))
 

:pattern ((VariantsWithRecords.Add @x0))
:qid constructor_distinct_VariantsWithRecords.Add))

:named constructor_distinct_VariantsWithRecords.Add))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.expr__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.expr__uu___haseq; Namespace VariantsWithRecords
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(Valid (Prims.hasEq (VariantsWithRecords.expr @x0))))
 

:pattern ((Prims.hasEq (VariantsWithRecords.expr @x0)))
:qid assumption_VariantsWithRecords.expr__uu___haseq))
:named assumption_VariantsWithRecords.expr__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.expr__StringOfInt__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.expr__StringOfInt__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.expr__StringOfInt__payload))
:named assumption_VariantsWithRecords.expr__StringOfInt__payload__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.expr__Add__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.expr__Add__payload))
:named assumption_VariantsWithRecords.expr__Add__payload__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.expr__Add__payload)
(= VariantsWithRecords.expr__Add__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.expr__Add__payload))
:qid VariantsWithRecords_pretyping_df0f135349032f0f62cea1ef12ffa67e))

:named VariantsWithRecords_pretyping_df0f135349032f0f62cea1ef12ffa67e))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(23,5-23,9); use=VariantsWithRecords.fst(23,5-23,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(VariantsWithRecords.expr @x2))
(= (VariantsWithRecords.expr @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(VariantsWithRecords.expr @x2)))
:qid VariantsWithRecords_pretyping_0d2d25a4e907400f8accf759bc38b69a))

:named VariantsWithRecords_pretyping_0d2d25a4e907400f8accf759bc38b69a))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.expr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__Add__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkexpr__StringOfInt__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.expr; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstInt; Namespace VariantsWithRecords; Name VariantsWithRecords.ConstStr; Namespace VariantsWithRecords; Name VariantsWithRecords.Add; Namespace VariantsWithRecords; Name VariantsWithRecords.StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.expr__StringOfInt__payload)
(= VariantsWithRecords.expr__StringOfInt__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.expr__StringOfInt__payload))
:qid VariantsWithRecords_pretyping_08d1eea85a466d3a0c32bbb1e238f75a))

:named VariantsWithRecords_pretyping_08d1eea85a466d3a0c32bbb1e238f75a))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: VariantsWithRecords.expr _ {ConstInt? _}).
;   (*  - Could not prove post-condition
; *) ~(ConstInt? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ConstInt__item___0`

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
(Tm_refine_6933647acdc703956b5d276367ef6455 @x0))

;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(not 
;; def=VariantsWithRecords.fst(25,4-25,12); use=VariantsWithRecords.fst(25,4-25,12)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstInt @x0
@x1))
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
; QUERY ID: (VariantsWithRecords.__proj__ConstInt__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_6933647acdc703956b5d276367ef6455

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ConstInt__item___0


; <Skipped let __proj__ConstInt__item___0/>


; encoding sigelt val VariantsWithRecords.uu___is_ConstStr


; <Start encoding val VariantsWithRecords.uu___is_ConstStr>

(declare-fun VariantsWithRecords.uu___is_ConstStr (Term Term) Term)

(declare-fun VariantsWithRecords.uu___is_ConstStr@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_ConstStr>


; encoding sigelt let uu___is_ConstStr


; <Skipped let uu___is_ConstStr/>


; encoding sigelt val VariantsWithRecords.__proj__ConstStr__item___0


; <Start encoding val VariantsWithRecords.__proj__ConstStr__item___0>

(declare-fun Tm_refine_efd044fdd32774eddccadd03d5316d67 (Term) Term)
(declare-fun VariantsWithRecords.__proj__ConstStr__item___0 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: expr _ {ConstStr? _} -> Prims.string
(declare-fun Tm_arrow_2ebdc98a63e7392b792bbfa7110883b6 () Term)
(declare-fun VariantsWithRecords.__proj__ConstStr__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__ConstStr__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_ConstStr; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(VariantsWithRecords.expr @x0)))
(HasType (VariantsWithRecords.uu___is_ConstStr @x0
@x1)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_ConstStr @x0
@x1))
:qid typing_VariantsWithRecords.uu___is_ConstStr))

:named typing_VariantsWithRecords.uu___is_ConstStr))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__ConstStr__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_efd044fdd32774eddccadd03d5316d67 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_efd044fdd32774eddccadd03d5316d67 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_efd044fdd32774eddccadd03d5316d67))

:named refinement_kinding_Tm_refine_efd044fdd32774eddccadd03d5316d67))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__ConstStr__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_efd044fdd32774eddccadd03d5316d67 @x2))
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr @x2))

;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstStr @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_efd044fdd32774eddccadd03d5316d67 @x2)))
:qid refinement_interpretation_Tm_refine_efd044fdd32774eddccadd03d5316d67))

:named refinement_interpretation_Tm_refine_efd044fdd32774eddccadd03d5316d67))
;;;;;;;;;;;;;;;;haseq for Tm_refine_efd044fdd32774eddccadd03d5316d67
;;; Fact-ids: Name VariantsWithRecords.__proj__ConstStr__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_efd044fdd32774eddccadd03d5316d67 @x0)))
(Valid (Prims.hasEq (VariantsWithRecords.expr @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_efd044fdd32774eddccadd03d5316d67 @x0))))
:qid haseqTm_refine_efd044fdd32774eddccadd03d5316d67))

:named haseqTm_refine_efd044fdd32774eddccadd03d5316d67))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_ConstStr; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.uu___is_ConstStr @x0
@x1)
(BoxBool (is-VariantsWithRecords.ConstStr @x1)))
 

:pattern ((VariantsWithRecords.uu___is_ConstStr @x0
@x1))
:qid disc_equation_VariantsWithRecords.ConstStr))

:named disc_equation_VariantsWithRecords.ConstStr))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: VariantsWithRecords.expr _ {ConstStr? _}).
;   (*  - Could not prove post-condition
; *) ~(ConstStr? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ConstStr__item___0`

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
(Tm_refine_efd044fdd32774eddccadd03d5316d67 @x0))

;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(not 
;; def=VariantsWithRecords.fst(27,4-27,12); use=VariantsWithRecords.fst(27,4-27,12)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstStr @x0
@x1))
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
; QUERY ID: (VariantsWithRecords.__proj__ConstStr__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_efd044fdd32774eddccadd03d5316d67

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ConstStr__item___0


; <Skipped let __proj__ConstStr__item___0/>


; encoding sigelt val VariantsWithRecords.uu___is_Add


; <Start encoding val VariantsWithRecords.uu___is_Add>

(declare-fun VariantsWithRecords.uu___is_Add (Term Term) Term)

(declare-fun VariantsWithRecords.uu___is_Add@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_Add>


; encoding sigelt let uu___is_Add


; <Skipped let uu___is_Add/>


; encoding sigelt val VariantsWithRecords.__proj__Add__item___0


; <Start encoding val VariantsWithRecords.__proj__Add__item___0>

(declare-fun Tm_refine_62b6baacf4f41f217b88adaeaec07655 (Term) Term)
(declare-fun VariantsWithRecords.__proj__Add__item___0 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: expr _ {Add? _} -> expr__Add__payload
(declare-fun Tm_arrow_9f3f2819bf35924402c1370786df38a9 () Term)
(declare-fun VariantsWithRecords.__proj__Add__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Add__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_Add; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(VariantsWithRecords.expr @x0)))
(HasType (VariantsWithRecords.uu___is_Add @x0
@x1)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_Add @x0
@x1))
:qid typing_VariantsWithRecords.uu___is_Add))

:named typing_VariantsWithRecords.uu___is_Add))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__Add__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_62b6baacf4f41f217b88adaeaec07655))

:named refinement_kinding_Tm_refine_62b6baacf4f41f217b88adaeaec07655))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__Add__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x2))
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr @x2))

;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Add @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x2)))
:qid refinement_interpretation_Tm_refine_62b6baacf4f41f217b88adaeaec07655))

:named refinement_interpretation_Tm_refine_62b6baacf4f41f217b88adaeaec07655))
;;;;;;;;;;;;;;;;haseq for Tm_refine_62b6baacf4f41f217b88adaeaec07655
;;; Fact-ids: Name VariantsWithRecords.__proj__Add__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x0)))
(Valid (Prims.hasEq (VariantsWithRecords.expr @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x0))))
:qid haseqTm_refine_62b6baacf4f41f217b88adaeaec07655))

:named haseqTm_refine_62b6baacf4f41f217b88adaeaec07655))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_Add; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.uu___is_Add @x0
@x1)
(BoxBool (is-VariantsWithRecords.Add @x1)))
 

:pattern ((VariantsWithRecords.uu___is_Add @x0
@x1))
:qid disc_equation_VariantsWithRecords.Add))

:named disc_equation_VariantsWithRecords.Add))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: VariantsWithRecords.expr _ {Add? _}).
;   (*  - Could not prove post-condition
; *) ~(Add? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Add__item___0`

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
(Tm_refine_62b6baacf4f41f217b88adaeaec07655 @x0))

;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(not 
;; def=VariantsWithRecords.fst(29,4-29,7); use=VariantsWithRecords.fst(29,4-29,7)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Add @x0
@x1))
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
; QUERY ID: (VariantsWithRecords.__proj__Add__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_62b6baacf4f41f217b88adaeaec07655

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Add__item___0


; <Skipped let __proj__Add__item___0/>


; encoding sigelt val VariantsWithRecords.uu___is_StringOfInt


; <Start encoding val VariantsWithRecords.uu___is_StringOfInt>

(declare-fun VariantsWithRecords.uu___is_StringOfInt (Term Term) Term)

(declare-fun VariantsWithRecords.uu___is_StringOfInt@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_StringOfInt>


; encoding sigelt let uu___is_StringOfInt


; <Skipped let uu___is_StringOfInt/>


; encoding sigelt val VariantsWithRecords.__proj__StringOfInt__item___0


; <Start encoding val VariantsWithRecords.__proj__StringOfInt__item___0>

(declare-fun Tm_refine_131e2e8618a2f5129dbd195fee3760dd (Term) Term)
(declare-fun VariantsWithRecords.__proj__StringOfInt__item___0 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: expr _ {StringOfInt? _} -> expr__StringOfInt__payload
(declare-fun Tm_arrow_ad8cf2b0d51b856f641b405fc16ebbc5 () Term)
(declare-fun VariantsWithRecords.__proj__StringOfInt__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__StringOfInt__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(VariantsWithRecords.expr @x0)))
(HasType (VariantsWithRecords.uu___is_StringOfInt @x0
@x1)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_StringOfInt @x0
@x1))
:qid typing_VariantsWithRecords.uu___is_StringOfInt))

:named typing_VariantsWithRecords.uu___is_StringOfInt))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__StringOfInt__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_131e2e8618a2f5129dbd195fee3760dd))

:named refinement_kinding_Tm_refine_131e2e8618a2f5129dbd195fee3760dd))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__StringOfInt__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x2))
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr @x2))

;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_StringOfInt @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x2)))
:qid refinement_interpretation_Tm_refine_131e2e8618a2f5129dbd195fee3760dd))

:named refinement_interpretation_Tm_refine_131e2e8618a2f5129dbd195fee3760dd))
;;;;;;;;;;;;;;;;haseq for Tm_refine_131e2e8618a2f5129dbd195fee3760dd
;;; Fact-ids: Name VariantsWithRecords.__proj__StringOfInt__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x0)))
(Valid (Prims.hasEq (VariantsWithRecords.expr @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x0))))
:qid haseqTm_refine_131e2e8618a2f5129dbd195fee3760dd))

:named haseqTm_refine_131e2e8618a2f5129dbd195fee3760dd))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_StringOfInt; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.uu___is_StringOfInt @x0
@x1)
(BoxBool (is-VariantsWithRecords.StringOfInt @x1)))
 

:pattern ((VariantsWithRecords.uu___is_StringOfInt @x0
@x1))
:qid disc_equation_VariantsWithRecords.StringOfInt))

:named disc_equation_VariantsWithRecords.StringOfInt))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: VariantsWithRecords.expr _ {StringOfInt? _}).
;   (*  - Could not prove post-condition
; *) ~(StringOfInt? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__StringOfInt__item___0`

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
(Tm_refine_131e2e8618a2f5129dbd195fee3760dd @x0))

;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(not 
;; def=VariantsWithRecords.fst(30,4-30,15); use=VariantsWithRecords.fst(30,4-30,15)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_StringOfInt @x0
@x1))
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
; QUERY ID: (VariantsWithRecords.__proj__StringOfInt__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_131e2e8618a2f5129dbd195fee3760dd

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__StringOfInt__item___0


; <Skipped let __proj__StringOfInt__item___0/>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.string_of_int; Namespace Prims
(assert (! 
;; def=Prims.fst(727,4-727,17); use=Prims.fst(727,4-727,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)
(HasType (Prims.string_of_int @x0)
Prims.string))
 

:pattern ((Prims.string_of_int @x0))
:qid typing_Prims.string_of_int))

:named typing_Prims.string_of_int))
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

; Starting query at VariantsWithRecords.fst(33,4-37,53)

;;;;;;;;;;;;;;;;'a : Type0 (Type)
(declare-fun x_fe28d8bcde588226b4e538b35321de05_0 () Term)
;;;;;;;;;;;;;;;;binder_x_fe28d8bcde588226b4e538b35321de05_0
;;; Fact-ids: 
(assert (! (HasType x_fe28d8bcde588226b4e538b35321de05_0
Tm_type)
:named binder_x_fe28d8bcde588226b4e538b35321de05_0))
;;;;;;;;;;;;;;;;e : VariantsWithRecords.expr 'a (VariantsWithRecords.expr 'a)
(declare-fun x_19eb941d56834622b8bbb6047e9f9c54_1 () Term)
;;;;;;;;;;;;;;;;binder_x_19eb941d56834622b8bbb6047e9f9c54_1
;;; Fact-ids: 
(assert (! (HasType x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0))
:named binder_x_19eb941d56834622b8bbb6047e9f9c54_1))
(declare-fun Tm_refine_9e8a6232e1c2d7ca67446f473346a28c (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(32,14-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_9e8a6232e1c2d7ca67446f473346a28c))

:named refinement_kinding_Tm_refine_9e8a6232e1c2d7ca67446f473346a28c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(32,14-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x2))
(and (HasTypeFuel @u0
@x1
(VariantsWithRecords.expr @x2))

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(33,4-37,53)

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(33,4-37,53)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(33,4-37,53)
(Prims.precedes (VariantsWithRecords.expr @x2)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x1
x_19eb941d56834622b8bbb6047e9f9c54_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x2)))
:qid refinement_interpretation_Tm_refine_9e8a6232e1c2d7ca67446f473346a28c))

:named refinement_interpretation_Tm_refine_9e8a6232e1c2d7ca67446f473346a28c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9e8a6232e1c2d7ca67446f473346a28c
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(32,14-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x0)))
(Valid (Prims.hasEq (VariantsWithRecords.expr @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x0))))
:qid haseqTm_refine_9e8a6232e1c2d7ca67446f473346a28c))

:named haseqTm_refine_9e8a6232e1c2d7ca67446f473346a28c))
(declare-fun VariantsWithRecords.eval (Term Term) Term)

;;;;;;;;;;;;;;;;e: expr 'a {e << e} -> 'a
(declare-fun Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52
Tm_type)
:named kinding_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(23,11-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))
:qid VariantsWithRecords_pre_typing_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))

:named VariantsWithRecords_pre_typing_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(23,11-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52)
(and 
;; def=VariantsWithRecords.fst(23,11-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid VariantsWithRecords_interpretation_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52.1))

(IsTotFun @x0)

;; def=VariantsWithRecords.fst(23,11-37,53); use=VariantsWithRecords.fst(32,14-37,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid VariantsWithRecords_interpretation_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))
:qid VariantsWithRecords_interpretation_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))

:named VariantsWithRecords_interpretation_Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))
(declare-fun VariantsWithRecords.eval@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(32,8-32,12); use=VariantsWithRecords.fst(32,8-32,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT VariantsWithRecords.eval@tok
@x0)
@x1)
(VariantsWithRecords.eval @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT VariantsWithRecords.eval@tok
@x0)
@x1))
:qid token_correspondence_VariantsWithRecords.eval))

:named token_correspondence_VariantsWithRecords.eval))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(32,8-32,12); use=VariantsWithRecords.fst(32,8-32,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType VariantsWithRecords.eval@tok
Tm_arrow_5ba0678c2e0f5221cf1949ce06deac52))

;; def=VariantsWithRecords.fst(32,8-32,12); use=VariantsWithRecords.fst(32,8-32,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT VariantsWithRecords.eval@tok
@x1)
@x2)
(VariantsWithRecords.eval @x1
@x2))
 

:pattern ((VariantsWithRecords.eval @x1
@x2))
:qid function_token_typing_VariantsWithRecords.eval.1))
)
 

:pattern ((ApplyTT @x0
VariantsWithRecords.eval@tok))
:qid function_token_typing_VariantsWithRecords.eval))

:named function_token_typing_VariantsWithRecords.eval))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=VariantsWithRecords.fst(32,8-32,12); use=VariantsWithRecords.fst(32,8-32,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_9e8a6232e1c2d7ca67446f473346a28c @x0)))
(HasType (VariantsWithRecords.eval @x0
@x1)
@x0))
 

:pattern ((VariantsWithRecords.eval @x0
@x1))
:qid typing_VariantsWithRecords.eval))

:named typing_VariantsWithRecords.eval))
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post 'a).
;   (forall (x: 'a). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(ConstInt? e) /\ ~(ConstStr? e) /\ ~(Add? e) /\ ~(StringOfInt? e) ==> Prims.l_False) /\
;   (forall (b: Prims.int). e == VariantsWithRecords.ConstInt b ==> Prims.has_type b 'a) /\
;   (~(ConstInt? e) ==>
;     (forall (b: Prims.string). e == VariantsWithRecords.ConstStr b ==> Prims.has_type b 'a) /\
;     (~(ConstStr? e) ==>
;       (forall (b: VariantsWithRecords.expr Prims.int) (b: VariantsWithRecords.expr Prims.int).
;           e == VariantsWithRecords.Add (VariantsWithRecords.Mkexpr__Add__payload b b) ==>
;           b << e /\
;           (forall (any_result: VariantsWithRecords.expr Prims.int).
;               b == any_result ==>
;               (forall (any_result: Prims.int).
;                   VariantsWithRecords.eval b == any_result ==>
;                   b << e /\
;                   (forall (any_result: VariantsWithRecords.expr Prims.int).
;                       b == any_result ==>
;                       (forall (any_result: Prims.int).
;                           VariantsWithRecords.eval b == any_result ==>
;                           (forall (any_result: Prims.int).
;                               VariantsWithRecords.eval b + VariantsWithRecords.eval b == any_result ==>
;                               Prims.has_type (VariantsWithRecords.eval b +
;                                   VariantsWithRecords.eval b)
;                                 'a)))))) /\
;       (~(Add? e) ==>
;         (forall (b: VariantsWithRecords.expr Prims.int).
;             e ==
;             VariantsWithRecords.StringOfInt (VariantsWithRecords.Mkexpr__StringOfInt__payload b) ==>
;             b << e /\
;             (forall (any_result: VariantsWithRecords.expr Prims.int).
;                 b == any_result ==>
;                 (forall (any_result: Prims.int).
;                     VariantsWithRecords.eval b == any_result ==>
;                     (forall (any_result: Prims.string).
;                         Prims.string_of_int (VariantsWithRecords.eval b) == any_result ==>
;                         Prims.has_type (Prims.string_of_int (VariantsWithRecords.eval b)) 'a)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec eval`

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
(Prims.pure_post x_fe28d8bcde588226b4e538b35321de05_0))

;; def=Prims.fst(402,27-402,88); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=VariantsWithRecords.fst(33,4-37,53)
(Valid 
;; def=Prims.fst(402,84-402,87); use=VariantsWithRecords.fst(33,4-37,53)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and (implies 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(and 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstInt x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstStr x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Add x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_StringOfInt x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.int)

;; def=VariantsWithRecords.fst(32,14-34,14); use=VariantsWithRecords.fst(33,10-34,14)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.ConstInt @x1))
)

;; def=VariantsWithRecords.fst(34,13-34,14); use=VariantsWithRecords.fst(34,18-34,19)
(or label_2
(HasType @x1
x_fe28d8bcde588226b4e538b35321de05_0))
)
 
;;no pats
:qid @query.2))

(implies 
;; def=Prims.fst(389,19-389,21); use=VariantsWithRecords.fst(33,4-37,53)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstInt x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=Prims.fst(389,2-389,39); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.string)

;; def=VariantsWithRecords.fst(32,14-35,14); use=VariantsWithRecords.fst(33,10-35,14)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.ConstStr @x1))
)

;; def=VariantsWithRecords.fst(35,13-35,14); use=VariantsWithRecords.fst(35,18-35,19)
(or label_3
(HasType @x1
x_fe28d8bcde588226b4e538b35321de05_0))
)
 
;;no pats
:qid @query.3))

(implies 
;; def=Prims.fst(389,19-389,21); use=VariantsWithRecords.fst(33,4-37,53)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstStr x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=Prims.fst(389,2-389,39); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(VariantsWithRecords.expr Prims.int))

;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-36,14); use=VariantsWithRecords.fst(33,10-36,14)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.Add (VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)))
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,23-36,24)
(or label_4

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,23-36,24)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,23-36,24)
(Prims.precedes (VariantsWithRecords.expr Prims.int)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x1
x_19eb941d56834622b8bbb6047e9f9c54_1)
)
)


;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-36,10); use=VariantsWithRecords.fst(33,4-37,53)
(= @x1
@x3)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.int)

;; def=dummy(0,0-0,0); use=VariantsWithRecords.fst(33,4-37,53)
(= (VariantsWithRecords.eval Prims.int
@x1)
@x4)
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,32-36,33)
(or label_5

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,32-36,33)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,32-36,33)
(Prims.precedes (VariantsWithRecords.expr Prims.int)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x2
x_19eb941d56834622b8bbb6047e9f9c54_1)
)
)


;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-36,13); use=VariantsWithRecords.fst(33,4-37,53)
(= @x2
@x5)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.int)

;; def=dummy(0,0-0,0); use=VariantsWithRecords.fst(33,4-37,53)
(= (VariantsWithRecords.eval Prims.int
@x2)
@x6)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.int)

;; def=VariantsWithRecords.fst(32,22-36,33); use=VariantsWithRecords.fst(33,4-37,53)
(= (Prims.op_Addition (VariantsWithRecords.eval Prims.int
@x1)
(VariantsWithRecords.eval Prims.int
@x2))
@x7)
)

;; def=VariantsWithRecords.fst(36,18-36,33); use=VariantsWithRecords.fst(36,18-36,33)
(or label_6
(HasType (Prims.op_Addition (VariantsWithRecords.eval Prims.int
@x1)
(VariantsWithRecords.eval Prims.int
@x2))
x_fe28d8bcde588226b4e538b35321de05_0))
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
)
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))

(implies 
;; def=Prims.fst(389,19-389,21); use=VariantsWithRecords.fst(33,4-37,53)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Add x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-37,23); use=VariantsWithRecords.fst(33,10-37,23)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.StringOfInt (VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)))
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(37,47-37,52)
(or label_7

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(37,47-37,52)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(37,47-37,52)
(Prims.precedes (VariantsWithRecords.expr Prims.int)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x1
x_19eb941d56834622b8bbb6047e9f9c54_1)
)
)


;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-37,22); use=VariantsWithRecords.fst(33,4-37,53)
(= @x1
@x2)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.int)

;; def=dummy(0,0-0,0); use=VariantsWithRecords.fst(33,4-37,53)
(= (VariantsWithRecords.eval Prims.int
@x1)
@x3)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.string)

;; def=VariantsWithRecords.fst(32,22-37,53); use=VariantsWithRecords.fst(33,4-37,53)
(= (Prims.string_of_int (VariantsWithRecords.eval Prims.int
@x1))
@x4)
)

;; def=VariantsWithRecords.fst(37,27-37,53); use=VariantsWithRecords.fst(37,27-37,53)
(or label_8
(HasType (Prims.string_of_int (VariantsWithRecords.eval Prims.int
@x1))
x_fe28d8bcde588226b4e538b35321de05_0))
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
)
 
;;no pats
:qid @query.11))
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
; QUERY ID: (VariantsWithRecords.eval, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

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
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post x_fe28d8bcde588226b4e538b35321de05_0))

;; def=Prims.fst(402,27-402,88); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=VariantsWithRecords.fst(33,4-37,53)
(Valid 
;; def=Prims.fst(402,84-402,87); use=VariantsWithRecords.fst(33,4-37,53)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and (implies 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(and 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstInt x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstStr x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Add x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_StringOfInt x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)
)

label_1)

;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.int)

;; def=VariantsWithRecords.fst(32,14-34,14); use=VariantsWithRecords.fst(33,10-34,14)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.ConstInt @x1))
)

;; def=VariantsWithRecords.fst(34,13-34,14); use=VariantsWithRecords.fst(34,18-34,19)
(or label_2
(HasType @x1
x_fe28d8bcde588226b4e538b35321de05_0))
)
 
;;no pats
:qid @query.2))

(implies 
;; def=Prims.fst(389,19-389,21); use=VariantsWithRecords.fst(33,4-37,53)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstInt x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=Prims.fst(389,2-389,39); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.string)

;; def=VariantsWithRecords.fst(32,14-35,14); use=VariantsWithRecords.fst(33,10-35,14)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.ConstStr @x1))
)

;; def=VariantsWithRecords.fst(35,13-35,14); use=VariantsWithRecords.fst(35,18-35,19)
(or label_3
(HasType @x1
x_fe28d8bcde588226b4e538b35321de05_0))
)
 
;;no pats
:qid @query.3))

(implies 
;; def=Prims.fst(389,19-389,21); use=VariantsWithRecords.fst(33,4-37,53)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_ConstStr x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=Prims.fst(389,2-389,39); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(VariantsWithRecords.expr Prims.int))

;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-36,14); use=VariantsWithRecords.fst(33,10-36,14)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.Add (VariantsWithRecords.Mkexpr__Add__payload @x1
@x2)))
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,23-36,24)
(or label_4

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,23-36,24)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,23-36,24)
(Prims.precedes (VariantsWithRecords.expr Prims.int)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x1
x_19eb941d56834622b8bbb6047e9f9c54_1)
)
)


;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-36,10); use=VariantsWithRecords.fst(33,4-37,53)
(= @x1
@x3)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.int)

;; def=dummy(0,0-0,0); use=VariantsWithRecords.fst(33,4-37,53)
(= (VariantsWithRecords.eval Prims.int
@x1)
@x4)
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,32-36,33)
(or label_5

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,32-36,33)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(36,32-36,33)
(Prims.precedes (VariantsWithRecords.expr Prims.int)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x2
x_19eb941d56834622b8bbb6047e9f9c54_1)
)
)


;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-36,13); use=VariantsWithRecords.fst(33,4-37,53)
(= @x2
@x5)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.int)

;; def=dummy(0,0-0,0); use=VariantsWithRecords.fst(33,4-37,53)
(= (VariantsWithRecords.eval Prims.int
@x2)
@x6)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.int)

;; def=VariantsWithRecords.fst(32,22-36,33); use=VariantsWithRecords.fst(33,4-37,53)
(= (Prims.op_Addition (VariantsWithRecords.eval Prims.int
@x1)
(VariantsWithRecords.eval Prims.int
@x2))
@x7)
)

;; def=VariantsWithRecords.fst(36,18-36,33); use=VariantsWithRecords.fst(36,18-36,33)
(or label_6
(HasType (Prims.op_Addition (VariantsWithRecords.eval Prims.int
@x1)
(VariantsWithRecords.eval Prims.int
@x2))
x_fe28d8bcde588226b4e538b35321de05_0))
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
)
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))

(implies 
;; def=Prims.fst(389,19-389,21); use=VariantsWithRecords.fst(33,4-37,53)
(not 
;; def=VariantsWithRecords.fst(32,14-32,15); use=VariantsWithRecords.fst(33,10-33,11)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Add x_fe28d8bcde588226b4e538b35321de05_0
x_19eb941d56834622b8bbb6047e9f9c54_1))
)


;; def=Prims.fst(413,99-413,120); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-37,23); use=VariantsWithRecords.fst(33,10-37,23)
(= x_19eb941d56834622b8bbb6047e9f9c54_1
(VariantsWithRecords.StringOfInt (VariantsWithRecords.Mkexpr__StringOfInt__payload @x1)))
)

;; def=Prims.fst(459,77-459,89); use=VariantsWithRecords.fst(33,4-37,53)
(and 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(37,47-37,52)
(or label_7

;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(37,47-37,52)
(Valid 
;; def=VariantsWithRecords.fst(33,4-37,53); use=VariantsWithRecords.fst(37,47-37,52)
(Prims.precedes (VariantsWithRecords.expr Prims.int)
(VariantsWithRecords.expr x_fe28d8bcde588226b4e538b35321de05_0)
@x1
x_19eb941d56834622b8bbb6047e9f9c54_1)
)
)


;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(VariantsWithRecords.expr Prims.int))

;; def=VariantsWithRecords.fst(32,14-37,22); use=VariantsWithRecords.fst(33,4-37,53)
(= @x1
@x2)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.int)

;; def=dummy(0,0-0,0); use=VariantsWithRecords.fst(33,4-37,53)
(= (VariantsWithRecords.eval Prims.int
@x1)
@x3)
)

;; def=Prims.fst(451,66-451,102); use=VariantsWithRecords.fst(33,4-37,53)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.string)

;; def=VariantsWithRecords.fst(32,22-37,53); use=VariantsWithRecords.fst(33,4-37,53)
(= (Prims.string_of_int (VariantsWithRecords.eval Prims.int
@x1))
@x4)
)

;; def=VariantsWithRecords.fst(37,27-37,53); use=VariantsWithRecords.fst(37,27-37,53)
(or label_8
(HasType (Prims.string_of_int (VariantsWithRecords.eval Prims.int
@x1))
x_fe28d8bcde588226b4e538b35321de05_0))
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
)
 
;;no pats
:qid @query.11))
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
; QUERY ID: (VariantsWithRecords.eval, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, binder_x_19eb941d56834622b8bbb6047e9f9c54_1, data_elim_VariantsWithRecords.Add, data_elim_VariantsWithRecords.ConstInt, data_elim_VariantsWithRecords.ConstStr, data_elim_VariantsWithRecords.StringOfInt, disc_equation_VariantsWithRecords.Add, disc_equation_VariantsWithRecords.ConstInt, disc_equation_VariantsWithRecords.ConstStr, disc_equation_VariantsWithRecords.StringOfInt, fuel_guarded_inversion_VariantsWithRecords.expr, function_token_typing_Prims.__cache_version_number__, projection_inverse_BoxBool_proj_0, subterm_ordering_VariantsWithRecords.Add, subterm_ordering_VariantsWithRecords.Mkexpr__Add__payload, subterm_ordering_VariantsWithRecords.Mkexpr__StringOfInt__payload, subterm_ordering_VariantsWithRecords.StringOfInt

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec eval


; <Start encoding let rec eval>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun VariantsWithRecords.eval.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun VariantsWithRecords.eval.fuel_instrumented_token () Term)
(declare-fun VariantsWithRecords.eval (Term Term) Term)
(declare-fun VariantsWithRecords.eval@tok () Term)
;;;;;;;;;;;;;;;;e: expr 'a -> 'a
(declare-fun Tm_arrow_4048b59167ce3c291005393eea5dad11 () Term)

; </end encoding let rec eval>


; encoding sigelt let e


; <Start encoding let e>

(declare-fun VariantsWithRecords.e (Dummy_sort) Term)

; </end encoding let e>


; encoding sigelt let uu___0


; <Start encoding let uu___0>

(declare-fun VariantsWithRecords.uu___0 (Dummy_sort) Term)

; </end encoding let uu___0>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type VariantsWithRecords.bar__Y__payload


; <Start encoding type VariantsWithRecords.bar__Y__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar__Y__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar__Z__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar__Y__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Y__payload_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Y__payload_y (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar__Y__payload
(declare-fun VariantsWithRecords.Mkbar__Y__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar__Z__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Z__payload_z (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Z__payload_t (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar__Z__payload
(declare-fun VariantsWithRecords.Mkbar__Z__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.X () Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.X
(declare-fun VariantsWithRecords.X@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Y (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Y__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Y
(declare-fun VariantsWithRecords.Y@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Z (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Z__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Z
(declare-fun VariantsWithRecords.Z@tok () Term)
;;;;;;;;;;;;;;;;x: Prims.int -> y: Prims.int -> bar__Y__payload
(declare-fun Tm_arrow_c63a6d538db34f81b47c7c2cbf7d461c () Term)
;;;;;;;;;;;;;;;;z: Prims.int -> t: Prims.int -> bar__Z__payload
(declare-fun Tm_arrow_ecd60ad0213de1d4d07cb9132614c798 () Term)
;;;;;;;;;;;;;;;;_0: bar__Y__payload -> bar
(declare-fun Tm_arrow_f4415f13cea97f9b58846f1cc6f7cfe1 () Term)
;;;;;;;;;;;;;;;;_0: bar__Z__payload -> bar
(declare-fun Tm_arrow_12624269210eeae804310be7bc8f8480 () Term)

; <start constructor VariantsWithRecords.bar__Y__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar__Y__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
521)
(= __@x0
VariantsWithRecords.bar__Y__payload)))

; </end constructor VariantsWithRecords.bar__Y__payload>


; <start constructor VariantsWithRecords.bar__Z__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar__Z__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
526)
(= __@x0
VariantsWithRecords.bar__Z__payload)))

; </end constructor VariantsWithRecords.bar__Z__payload>


; <start constructor VariantsWithRecords.bar>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
531)
(= __@x0
VariantsWithRecords.bar)))

; </end constructor VariantsWithRecords.bar>


; <start constructor VariantsWithRecords.Mkbar__Y__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar__Y__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
537)
(= __@x0
(VariantsWithRecords.Mkbar__Y__payload (VariantsWithRecords.Mkbar__Y__payload_x __@x0)
(VariantsWithRecords.Mkbar__Y__payload_y __@x0)))))

; </end constructor VariantsWithRecords.Mkbar__Y__payload>


; <start constructor VariantsWithRecords.Mkbar__Z__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar__Z__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
542)
(= __@x0
(VariantsWithRecords.Mkbar__Z__payload (VariantsWithRecords.Mkbar__Z__payload_z __@x0)
(VariantsWithRecords.Mkbar__Z__payload_t __@x0)))))

; </end constructor VariantsWithRecords.Mkbar__Z__payload>


; <start constructor VariantsWithRecords.X>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.X ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
547)
(= __@x0
VariantsWithRecords.X)))

; </end constructor VariantsWithRecords.X>


; <start constructor VariantsWithRecords.Y>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Y ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
549)
(= __@x0
(VariantsWithRecords.Y (VariantsWithRecords.Y__0 __@x0)))))

; </end constructor VariantsWithRecords.Y>


; <start constructor VariantsWithRecords.Z>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Z ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
554)
(= __@x0
(VariantsWithRecords.Z (VariantsWithRecords.Z__0 __@x0)))))

; </end constructor VariantsWithRecords.Z>


; </end encoding type VariantsWithRecords.bar__Y__payload>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.X@tok
VariantsWithRecords.bar)
:named typing_tok_VariantsWithRecords.X@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Z @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
:qid subterm_ordering_VariantsWithRecords.Z))

:named subterm_ordering_VariantsWithRecords.Z))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Y @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
:qid subterm_ordering_VariantsWithRecords.Y))

:named subterm_ordering_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar__Z__payload))

:named subterm_ordering_VariantsWithRecords.Mkbar__Z__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar__Y__payload))

:named subterm_ordering_VariantsWithRecords.Mkbar__Y__payload))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Z__0 (VariantsWithRecords.Z @x0))
@x0)
 

:pattern ((VariantsWithRecords.Z @x0))
:qid projection_inverse_VariantsWithRecords.Z__0))

:named projection_inverse_VariantsWithRecords.Z__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Y__0 (VariantsWithRecords.Y @x0))
@x0)
 

:pattern ((VariantsWithRecords.Y @x0))
:qid projection_inverse_VariantsWithRecords.Y__0))

:named projection_inverse_VariantsWithRecords.Y__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Z__payload_z (VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Z__payload_z))

:named projection_inverse_VariantsWithRecords.Mkbar__Z__payload_z))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Z__payload_t (VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Z__payload_t))

:named projection_inverse_VariantsWithRecords.Mkbar__Z__payload_t))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Y__payload_y (VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Y__payload_y))

:named projection_inverse_VariantsWithRecords.Mkbar__Y__payload_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Y__payload_x (VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Y__payload_x))

:named projection_inverse_VariantsWithRecords.Mkbar__Y__payload_x))
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar__Z__payload
Tm_type)
:named kinding_VariantsWithRecords.bar__Z__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar__Y__payload
Tm_type)
:named kinding_VariantsWithRecords.bar__Y__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar
Tm_type)
:named kinding_VariantsWithRecords.bar@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload)
(is-VariantsWithRecords.Mkbar__Z__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar__Z__payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar__Z__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload)
(is-VariantsWithRecords.Mkbar__Y__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar__Y__payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar__Y__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(44,5-44,8); use=VariantsWithRecords.fst(44,5-44,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar)
(or (is-VariantsWithRecords.X @x1)
(is-VariantsWithRecords.Y @x1)
(is-VariantsWithRecords.Z @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar))
:qid fuel_guarded_inversion_VariantsWithRecords.bar))

:named fuel_guarded_inversion_VariantsWithRecords.bar))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= VariantsWithRecords.X@tok
VariantsWithRecords.X)
:named equality_tok_VariantsWithRecords.X@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload)
(HasTypeFuel @u0
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
:qid data_typing_intro_VariantsWithRecords.Z@tok))

:named data_typing_intro_VariantsWithRecords.Z@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload)
(HasTypeFuel @u0
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
:qid data_typing_intro_VariantsWithRecords.Y@tok))

:named data_typing_intro_VariantsWithRecords.Y@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(44,13-44,14); use=VariantsWithRecords.fst(44,13-44,14)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
VariantsWithRecords.X
VariantsWithRecords.bar)
 

:pattern ((HasTypeFuel @u0
VariantsWithRecords.X
VariantsWithRecords.bar))
:qid data_typing_intro_VariantsWithRecords.X@tok))

:named data_typing_intro_VariantsWithRecords.X@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar__Z__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar__Z__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar__Y__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar__Y__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
:qid data_elim_VariantsWithRecords.Z))

:named data_elim_VariantsWithRecords.Z))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
:qid data_elim_VariantsWithRecords.Y))

:named data_elim_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
:qid data_elim_VariantsWithRecords.Mkbar__Z__payload))

:named data_elim_VariantsWithRecords.Mkbar__Z__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
:qid data_elim_VariantsWithRecords.Mkbar__Y__payload))

:named data_elim_VariantsWithRecords.Mkbar__Y__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 526
(Term_constr_id VariantsWithRecords.bar__Z__payload))
:named constructor_distinct_VariantsWithRecords.bar__Z__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 521
(Term_constr_id VariantsWithRecords.bar__Y__payload))
:named constructor_distinct_VariantsWithRecords.bar__Y__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 531
(Term_constr_id VariantsWithRecords.bar))
:named constructor_distinct_VariantsWithRecords.bar))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term))
 (! (= 554
(Term_constr_id (VariantsWithRecords.Z @x0)))
 

:pattern ((VariantsWithRecords.Z @x0))
:qid constructor_distinct_VariantsWithRecords.Z))

:named constructor_distinct_VariantsWithRecords.Z))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term))
 (! (= 549
(Term_constr_id (VariantsWithRecords.Y @x0)))
 

:pattern ((VariantsWithRecords.Y @x0))
:qid constructor_distinct_VariantsWithRecords.Y))

:named constructor_distinct_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 547
(Term_constr_id VariantsWithRecords.X))
:named constructor_distinct_VariantsWithRecords.X))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= 542
(Term_constr_id (VariantsWithRecords.Mkbar__Z__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar__Z__payload))

:named constructor_distinct_VariantsWithRecords.Mkbar__Z__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= 537
(Term_constr_id (VariantsWithRecords.Mkbar__Y__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar__Y__payload))

:named constructor_distinct_VariantsWithRecords.Mkbar__Y__payload))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Y__payload)
(= VariantsWithRecords.bar__Y__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Y__payload))
:qid VariantsWithRecords_pretyping_ee8ae6c171193a80d630b826cadd23f5))

:named VariantsWithRecords_pretyping_ee8ae6c171193a80d630b826cadd23f5))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Z__payload)
(= VariantsWithRecords.bar__Z__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Z__payload))
:qid VariantsWithRecords_pretyping_05cd243a3f288c1fdc88ef0766b9b22d))

:named VariantsWithRecords_pretyping_05cd243a3f288c1fdc88ef0766b9b22d))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(44,5-44,8); use=VariantsWithRecords.fst(44,5-44,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar)
(= VariantsWithRecords.bar
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar))
:qid VariantsWithRecords_pretyping_02972ed2303e008aaea6b281a3b8b9dc))

:named VariantsWithRecords_pretyping_02972ed2303e008aaea6b281a3b8b9dc))
(push) ;; push{4

; Starting query at VariantsWithRecords.fst(44,0-46,38)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq VariantsWithRecords.bar__Y__payload /\ Prims.hasEq VariantsWithRecords.bar__Z__payload /\
; Prims.hasEq VariantsWithRecords.bar ==>
; (forall (_0: VariantsWithRecords.bar__Y__payload).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.bar'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq VariantsWithRecords.bar__Y__payload) /\
; (forall (_0: VariantsWithRecords.bar__Z__payload).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.bar'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq VariantsWithRecords.bar__Z__payload)


; Context: While encoding a query
; While typechecking the top-level declaration `type VariantsWithRecords.bar__Y__payload`

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
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(and 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Valid 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Prims.hasEq VariantsWithRecords.bar__Y__payload)
)


;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Valid 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Prims.hasEq VariantsWithRecords.bar__Z__payload)
)


;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Valid 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Prims.hasEq VariantsWithRecords.bar)
)
)


;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(and 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar__Y__payload)

;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(45,13-45,14)
(or label_1

;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Valid 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Prims.hasEq VariantsWithRecords.bar__Y__payload)
)
)
)
 
;;no pats
:qid @query))


;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar__Z__payload)

;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(46,13-46,14)
(or label_2

;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Valid 
;; def=VariantsWithRecords.fst(44,0-46,38); use=VariantsWithRecords.fst(44,0-46,38)
(Prims.hasEq VariantsWithRecords.bar__Z__payload)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (VariantsWithRecords.bar__Y__payload, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type VariantsWithRecords.bar__Y__payload


; <Start encoding type VariantsWithRecords.bar__Y__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar__Y__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar__Z__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar__Y__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Y__payload_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Y__payload_y (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar__Y__payload
(declare-fun VariantsWithRecords.Mkbar__Y__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar__Z__payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Z__payload_z (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar__Z__payload_t (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar__Z__payload
(declare-fun VariantsWithRecords.Mkbar__Z__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.X () Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.X
(declare-fun VariantsWithRecords.X@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Y (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Y__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Y
(declare-fun VariantsWithRecords.Y@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Z (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Z__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Z
(declare-fun VariantsWithRecords.Z@tok () Term)
;;;;;;;;;;;;;;;;x: Prims.int -> y: Prims.int -> bar__Y__payload
(declare-fun Tm_arrow_c63a6d538db34f81b47c7c2cbf7d461c () Term)
;;;;;;;;;;;;;;;;z: Prims.int -> t: Prims.int -> bar__Z__payload
(declare-fun Tm_arrow_ecd60ad0213de1d4d07cb9132614c798 () Term)
;;;;;;;;;;;;;;;;_0: bar__Y__payload -> bar
(declare-fun Tm_arrow_f4415f13cea97f9b58846f1cc6f7cfe1 () Term)
;;;;;;;;;;;;;;;;_0: bar__Z__payload -> bar
(declare-fun Tm_arrow_12624269210eeae804310be7bc8f8480 () Term)

; <start constructor VariantsWithRecords.bar__Y__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar__Y__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
558)
(= __@x0
VariantsWithRecords.bar__Y__payload)))

; </end constructor VariantsWithRecords.bar__Y__payload>


; <start constructor VariantsWithRecords.bar__Z__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar__Z__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
563)
(= __@x0
VariantsWithRecords.bar__Z__payload)))

; </end constructor VariantsWithRecords.bar__Z__payload>


; <start constructor VariantsWithRecords.bar>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
568)
(= __@x0
VariantsWithRecords.bar)))

; </end constructor VariantsWithRecords.bar>


; <start constructor VariantsWithRecords.Mkbar__Y__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar__Y__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
574)
(= __@x0
(VariantsWithRecords.Mkbar__Y__payload (VariantsWithRecords.Mkbar__Y__payload_x __@x0)
(VariantsWithRecords.Mkbar__Y__payload_y __@x0)))))

; </end constructor VariantsWithRecords.Mkbar__Y__payload>


; <start constructor VariantsWithRecords.Mkbar__Z__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar__Z__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
579)
(= __@x0
(VariantsWithRecords.Mkbar__Z__payload (VariantsWithRecords.Mkbar__Z__payload_z __@x0)
(VariantsWithRecords.Mkbar__Z__payload_t __@x0)))))

; </end constructor VariantsWithRecords.Mkbar__Z__payload>


; <start constructor VariantsWithRecords.X>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.X ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
584)
(= __@x0
VariantsWithRecords.X)))

; </end constructor VariantsWithRecords.X>


; <start constructor VariantsWithRecords.Y>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Y ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
586)
(= __@x0
(VariantsWithRecords.Y (VariantsWithRecords.Y__0 __@x0)))))

; </end constructor VariantsWithRecords.Y>


; <start constructor VariantsWithRecords.Z>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Z ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
591)
(= __@x0
(VariantsWithRecords.Z (VariantsWithRecords.Z__0 __@x0)))))

; </end constructor VariantsWithRecords.Z>


; </end encoding type VariantsWithRecords.bar__Y__payload>


; encoding sigelt assume VariantsWithRecords.bar__Y__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.bar__Y__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.bar__Y__payload__uu___haseq>


; encoding sigelt assume VariantsWithRecords.bar__Z__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.bar__Z__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.bar__Z__payload__uu___haseq>


; encoding sigelt assume VariantsWithRecords.bar__uu___haseq


; <Start encoding assume VariantsWithRecords.bar__uu___haseq>


; </end encoding assume VariantsWithRecords.bar__uu___haseq>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar__Y__payload__item__x


; <Start encoding val VariantsWithRecords.__proj__Mkbar__Y__payload__item__x>

(declare-fun VariantsWithRecords.__proj__Mkbar__Y__payload__item__x (Term) Term)
;;;;;;;;;;;;;;;;projectee: bar__Y__payload -> Prims.int
(declare-fun Tm_arrow_750c9ff5897282a316b373a4c1a80e8e () Term)
(declare-fun VariantsWithRecords.__proj__Mkbar__Y__payload__item__x@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar__Y__payload__item__x>


; encoding sigelt let __proj__Mkbar__Y__payload__item__x


; <Skipped let __proj__Mkbar__Y__payload__item__x/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar__Y__payload__item__y


; <Start encoding val VariantsWithRecords.__proj__Mkbar__Y__payload__item__y>

(declare-fun VariantsWithRecords.__proj__Mkbar__Y__payload__item__y (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkbar__Y__payload__item__y@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar__Y__payload__item__y>


; encoding sigelt let __proj__Mkbar__Y__payload__item__y


; <Skipped let __proj__Mkbar__Y__payload__item__y/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar__Z__payload__item__z


; <Start encoding val VariantsWithRecords.__proj__Mkbar__Z__payload__item__z>

(declare-fun VariantsWithRecords.__proj__Mkbar__Z__payload__item__z (Term) Term)
;;;;;;;;;;;;;;;;projectee: bar__Z__payload -> Prims.int
(declare-fun Tm_arrow_feefc29e589d339276fe179534e0f6c3 () Term)
(declare-fun VariantsWithRecords.__proj__Mkbar__Z__payload__item__z@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar__Z__payload__item__z>


; encoding sigelt let __proj__Mkbar__Z__payload__item__z


; <Skipped let __proj__Mkbar__Z__payload__item__z/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar__Z__payload__item__t


; <Start encoding val VariantsWithRecords.__proj__Mkbar__Z__payload__item__t>

(declare-fun VariantsWithRecords.__proj__Mkbar__Z__payload__item__t (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkbar__Z__payload__item__t@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar__Z__payload__item__t>


; encoding sigelt let __proj__Mkbar__Z__payload__item__t


; <Skipped let __proj__Mkbar__Z__payload__item__t/>


; encoding sigelt val VariantsWithRecords.uu___is_X


; <Start encoding val VariantsWithRecords.uu___is_X>

(declare-fun VariantsWithRecords.uu___is_X (Term) Term)
;;;;;;;;;;;;;;;;projectee: bar -> Prims.bool
(declare-fun Tm_arrow_a0f1f237c7071b1214cd6f477dfcf278 () Term)
(declare-fun VariantsWithRecords.uu___is_X@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_X>


; encoding sigelt let uu___is_X


; <Skipped let uu___is_X/>


; encoding sigelt val VariantsWithRecords.uu___is_Y


; <Start encoding val VariantsWithRecords.uu___is_Y>

(declare-fun VariantsWithRecords.uu___is_Y (Term) Term)

(declare-fun VariantsWithRecords.uu___is_Y@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_Y>


; encoding sigelt let uu___is_Y


; <Skipped let uu___is_Y/>


; encoding sigelt val VariantsWithRecords.__proj__Y__item___0


; <Start encoding val VariantsWithRecords.__proj__Y__item___0>

(declare-fun Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421 () Term)
(declare-fun VariantsWithRecords.__proj__Y__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: bar{Y? _} -> bar__Y__payload
(declare-fun Tm_arrow_2ad8278745432dcbc34e27f7da0222f5 () Term)
(declare-fun VariantsWithRecords.__proj__Y__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Y__item___0>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.X@tok
VariantsWithRecords.bar)
:named typing_tok_VariantsWithRecords.X@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_Y; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar)
(HasType (VariantsWithRecords.uu___is_Y @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_Y @x0))
:qid typing_VariantsWithRecords.uu___is_Y))

:named typing_VariantsWithRecords.uu___is_Y))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Z @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
:qid subterm_ordering_VariantsWithRecords.Z))

:named subterm_ordering_VariantsWithRecords.Z))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Y @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
:qid subterm_ordering_VariantsWithRecords.Y))

:named subterm_ordering_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar__Z__payload))

:named subterm_ordering_VariantsWithRecords.Mkbar__Z__payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar__Y__payload))

:named subterm_ordering_VariantsWithRecords.Mkbar__Y__payload))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__Y__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421
Tm_type)
:named refinement_kinding_Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__Y__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.bar)

;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Y @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421))
:qid refinement_interpretation_Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421))

:named refinement_interpretation_Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Z__0 (VariantsWithRecords.Z @x0))
@x0)
 

:pattern ((VariantsWithRecords.Z @x0))
:qid projection_inverse_VariantsWithRecords.Z__0))

:named projection_inverse_VariantsWithRecords.Z__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Y__0 (VariantsWithRecords.Y @x0))
@x0)
 

:pattern ((VariantsWithRecords.Y @x0))
:qid projection_inverse_VariantsWithRecords.Y__0))

:named projection_inverse_VariantsWithRecords.Y__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Z__payload_z (VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Z__payload_z))

:named projection_inverse_VariantsWithRecords.Mkbar__Z__payload_z))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Z__payload_t (VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Z__payload_t))

:named projection_inverse_VariantsWithRecords.Mkbar__Z__payload_t))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Y__payload_y (VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Y__payload_y))

:named projection_inverse_VariantsWithRecords.Mkbar__Y__payload_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar__Y__payload_x (VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar__Y__payload_x))

:named projection_inverse_VariantsWithRecords.Mkbar__Y__payload_x))
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar__Z__payload
Tm_type)
:named kinding_VariantsWithRecords.bar__Z__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar__Y__payload
Tm_type)
:named kinding_VariantsWithRecords.bar__Y__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar
Tm_type)
:named kinding_VariantsWithRecords.bar@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421
;;; Fact-ids: Name VariantsWithRecords.__proj__Y__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421))
(Valid (Prims.hasEq VariantsWithRecords.bar)))
:named haseqTm_refine_e6dcb57b7b6328d7e2d7c626de70a421))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload)
(is-VariantsWithRecords.Mkbar__Z__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar__Z__payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar__Z__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload)
(is-VariantsWithRecords.Mkbar__Y__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar__Y__payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar__Y__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(44,5-44,8); use=VariantsWithRecords.fst(44,5-44,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar)
(or (is-VariantsWithRecords.X @x1)
(is-VariantsWithRecords.Y @x1)
(is-VariantsWithRecords.Z @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar))
:qid fuel_guarded_inversion_VariantsWithRecords.bar))

:named fuel_guarded_inversion_VariantsWithRecords.bar))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= VariantsWithRecords.X@tok
VariantsWithRecords.X)
:named equality_tok_VariantsWithRecords.X@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_Y; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_Y @x0)
(BoxBool (is-VariantsWithRecords.Y @x0)))
 

:pattern ((VariantsWithRecords.uu___is_Y @x0))
:qid disc_equation_VariantsWithRecords.Y))

:named disc_equation_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload)
(HasTypeFuel @u0
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
:qid data_typing_intro_VariantsWithRecords.Z@tok))

:named data_typing_intro_VariantsWithRecords.Z@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload)
(HasTypeFuel @u0
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
:qid data_typing_intro_VariantsWithRecords.Y@tok))

:named data_typing_intro_VariantsWithRecords.Y@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(44,13-44,14); use=VariantsWithRecords.fst(44,13-44,14)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
VariantsWithRecords.X
VariantsWithRecords.bar)
 

:pattern ((HasTypeFuel @u0
VariantsWithRecords.X
VariantsWithRecords.bar))
:qid data_typing_intro_VariantsWithRecords.X@tok))

:named data_typing_intro_VariantsWithRecords.X@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar__Z__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar__Z__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar__Y__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar__Y__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Z__payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z @x1)
VariantsWithRecords.bar))
:qid data_elim_VariantsWithRecords.Z))

:named data_elim_VariantsWithRecords.Z))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar__Y__payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y @x1)
VariantsWithRecords.bar))
:qid data_elim_VariantsWithRecords.Y))

:named data_elim_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Z__payload @x1
@x2)
VariantsWithRecords.bar__Z__payload))
:qid data_elim_VariantsWithRecords.Mkbar__Z__payload))

:named data_elim_VariantsWithRecords.Mkbar__Z__payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar__Y__payload @x1
@x2)
VariantsWithRecords.bar__Y__payload))
:qid data_elim_VariantsWithRecords.Mkbar__Y__payload))

:named data_elim_VariantsWithRecords.Mkbar__Y__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 563
(Term_constr_id VariantsWithRecords.bar__Z__payload))
:named constructor_distinct_VariantsWithRecords.bar__Z__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 558
(Term_constr_id VariantsWithRecords.bar__Y__payload))
:named constructor_distinct_VariantsWithRecords.bar__Y__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 568
(Term_constr_id VariantsWithRecords.bar))
:named constructor_distinct_VariantsWithRecords.bar))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term))
 (! (= 591
(Term_constr_id (VariantsWithRecords.Z @x0)))
 

:pattern ((VariantsWithRecords.Z @x0))
:qid constructor_distinct_VariantsWithRecords.Z))

:named constructor_distinct_VariantsWithRecords.Z))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term))
 (! (= 586
(Term_constr_id (VariantsWithRecords.Y @x0)))
 

:pattern ((VariantsWithRecords.Y @x0))
:qid constructor_distinct_VariantsWithRecords.Y))

:named constructor_distinct_VariantsWithRecords.Y))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! (= 584
(Term_constr_id VariantsWithRecords.X))
:named constructor_distinct_VariantsWithRecords.X))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= 579
(Term_constr_id (VariantsWithRecords.Mkbar__Z__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar__Z__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar__Z__payload))

:named constructor_distinct_VariantsWithRecords.Mkbar__Z__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= 574
(Term_constr_id (VariantsWithRecords.Mkbar__Y__payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar__Y__payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar__Y__payload))

:named constructor_distinct_VariantsWithRecords.Mkbar__Y__payload))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.bar__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.bar__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.bar))
:named assumption_VariantsWithRecords.bar__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.bar__Z__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.bar__Z__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.bar__Z__payload))
:named assumption_VariantsWithRecords.bar__Z__payload__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.bar__Y__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.bar__Y__payload))
:named assumption_VariantsWithRecords.bar__Y__payload__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Y__payload)
(= VariantsWithRecords.bar__Y__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Y__payload))
:qid VariantsWithRecords_pretyping_ee8ae6c171193a80d630b826cadd23f5))

:named VariantsWithRecords_pretyping_ee8ae6c171193a80d630b826cadd23f5))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Z__payload)
(= VariantsWithRecords.bar__Z__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar__Z__payload))
:qid VariantsWithRecords_pretyping_05cd243a3f288c1fdc88ef0766b9b22d))

:named VariantsWithRecords_pretyping_05cd243a3f288c1fdc88ef0766b9b22d))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Y__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar__Z__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar; Namespace VariantsWithRecords; Name VariantsWithRecords.X; Namespace VariantsWithRecords; Name VariantsWithRecords.Y; Namespace VariantsWithRecords; Name VariantsWithRecords.Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(44,5-44,8); use=VariantsWithRecords.fst(44,5-44,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar)
(= VariantsWithRecords.bar
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar))
:qid VariantsWithRecords_pretyping_02972ed2303e008aaea6b281a3b8b9dc))

:named VariantsWithRecords_pretyping_02972ed2303e008aaea6b281a3b8b9dc))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.bar{Y? _}).
;   (*  - Could not prove post-condition
; *) ~(Y? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Y__item___0`

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
Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421)

;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(not 
;; def=VariantsWithRecords.fst(45,13-45,14); use=VariantsWithRecords.fst(45,13-45,14)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Y @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__Y__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e6dcb57b7b6328d7e2d7c626de70a421

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Y__item___0


; <Skipped let __proj__Y__item___0/>


; encoding sigelt val VariantsWithRecords.uu___is_Z


; <Start encoding val VariantsWithRecords.uu___is_Z>

(declare-fun VariantsWithRecords.uu___is_Z (Term) Term)

(declare-fun VariantsWithRecords.uu___is_Z@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_Z>


; encoding sigelt let uu___is_Z


; <Skipped let uu___is_Z/>


; encoding sigelt val VariantsWithRecords.__proj__Z__item___0


; <Start encoding val VariantsWithRecords.__proj__Z__item___0>

(declare-fun Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe () Term)
(declare-fun VariantsWithRecords.__proj__Z__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: bar{Z? _} -> bar__Z__payload
(declare-fun Tm_arrow_b041a8380e6e92f24e01b16d9ea4e838 () Term)
(declare-fun VariantsWithRecords.__proj__Z__item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Z__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar)
(HasType (VariantsWithRecords.uu___is_Z @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_Z @x0))
:qid typing_VariantsWithRecords.uu___is_Z))

:named typing_VariantsWithRecords.uu___is_Z))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__Z__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe
Tm_type)
:named refinement_kinding_Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__Z__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.bar)

;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Z @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe))
:qid refinement_interpretation_Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe))

:named refinement_interpretation_Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe
;;; Fact-ids: Name VariantsWithRecords.__proj__Z__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe))
(Valid (Prims.hasEq VariantsWithRecords.bar)))
:named haseqTm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_Z; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_Z @x0)
(BoxBool (is-VariantsWithRecords.Z @x0)))
 

:pattern ((VariantsWithRecords.uu___is_Z @x0))
:qid disc_equation_VariantsWithRecords.Z))

:named disc_equation_VariantsWithRecords.Z))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.bar{Z? _}).
;   (*  - Could not prove post-condition
; *) ~(Z? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Z__item___0`

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
Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe)

;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(not 
;; def=VariantsWithRecords.fst(46,13-46,14); use=VariantsWithRecords.fst(46,13-46,14)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Z @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__Z__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_f2b0b9a9d230fe79ae7dc1274c7e08fe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Z__item___0


; <Skipped let __proj__Z__item___0/>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type VariantsWithRecords.bar'


; <Start encoding type VariantsWithRecords.bar'>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar_ () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar___Y___payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar___Z___payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.X_ () Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.X'
(declare-fun VariantsWithRecords.X_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Y_ (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Y___0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Y'
(declare-fun VariantsWithRecords.Y_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Z_ (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Z___0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Z'
(declare-fun VariantsWithRecords.Z_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar___Y___payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Y___payload_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Y___payload_y (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar'__Y'__payload
(declare-fun VariantsWithRecords.Mkbar___Y___payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar___Z___payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Z___payload_z (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Z___payload_t (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar'__Z'__payload
(declare-fun VariantsWithRecords.Mkbar___Z___payload@tok () Term)
;;;;;;;;;;;;;;;;_0: bar'__Y'__payload -> bar'
(declare-fun Tm_arrow_a89585909d33408f32f5c27908d5d60e () Term)
;;;;;;;;;;;;;;;;_0: bar'__Z'__payload -> bar'
(declare-fun Tm_arrow_46eee8ededaa8918d6d6457fdaa16ad6 () Term)
;;;;;;;;;;;;;;;;x: Prims.int -> y: Prims.int -> bar'__Y'__payload
(declare-fun Tm_arrow_9a93f09ec4514820f6b4c0a33a13810b () Term)
;;;;;;;;;;;;;;;;z: Prims.int -> t: Prims.int -> bar'__Z'__payload
(declare-fun Tm_arrow_a6d57d5a6cee0d4414bdc733b77aa6ef () Term)

; <start constructor VariantsWithRecords.bar_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
656)
(= __@x0
VariantsWithRecords.bar_)))

; </end constructor VariantsWithRecords.bar_>


; <start constructor VariantsWithRecords.bar___Y___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar___Y___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
661)
(= __@x0
VariantsWithRecords.bar___Y___payload)))

; </end constructor VariantsWithRecords.bar___Y___payload>


; <start constructor VariantsWithRecords.bar___Z___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar___Z___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
666)
(= __@x0
VariantsWithRecords.bar___Z___payload)))

; </end constructor VariantsWithRecords.bar___Z___payload>


; <start constructor VariantsWithRecords.X_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.X_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
672)
(= __@x0
VariantsWithRecords.X_)))

; </end constructor VariantsWithRecords.X_>


; <start constructor VariantsWithRecords.Y_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Y_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
674)
(= __@x0
(VariantsWithRecords.Y_ (VariantsWithRecords.Y___0 __@x0)))))

; </end constructor VariantsWithRecords.Y_>


; <start constructor VariantsWithRecords.Z_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Z_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
679)
(= __@x0
(VariantsWithRecords.Z_ (VariantsWithRecords.Z___0 __@x0)))))

; </end constructor VariantsWithRecords.Z_>


; <start constructor VariantsWithRecords.Mkbar___Y___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar___Y___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
684)
(= __@x0
(VariantsWithRecords.Mkbar___Y___payload (VariantsWithRecords.Mkbar___Y___payload_x __@x0)
(VariantsWithRecords.Mkbar___Y___payload_y __@x0)))))

; </end constructor VariantsWithRecords.Mkbar___Y___payload>


; <start constructor VariantsWithRecords.Mkbar___Z___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar___Z___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
689)
(= __@x0
(VariantsWithRecords.Mkbar___Z___payload (VariantsWithRecords.Mkbar___Z___payload_z __@x0)
(VariantsWithRecords.Mkbar___Z___payload_t __@x0)))))

; </end constructor VariantsWithRecords.Mkbar___Z___payload>


; </end encoding type VariantsWithRecords.bar'>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.X_@tok
VariantsWithRecords.bar_)
:named typing_tok_VariantsWithRecords.X_@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Z_ @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
:qid subterm_ordering_VariantsWithRecords.Z_))

:named subterm_ordering_VariantsWithRecords.Z_))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Y_ @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
:qid subterm_ordering_VariantsWithRecords.Y_))

:named subterm_ordering_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar___Z___payload))

:named subterm_ordering_VariantsWithRecords.Mkbar___Z___payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar___Y___payload))

:named subterm_ordering_VariantsWithRecords.Mkbar___Y___payload))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Z___0 (VariantsWithRecords.Z_ @x0))
@x0)
 

:pattern ((VariantsWithRecords.Z_ @x0))
:qid projection_inverse_VariantsWithRecords.Z___0))

:named projection_inverse_VariantsWithRecords.Z___0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Y___0 (VariantsWithRecords.Y_ @x0))
@x0)
 

:pattern ((VariantsWithRecords.Y_ @x0))
:qid projection_inverse_VariantsWithRecords.Y___0))

:named projection_inverse_VariantsWithRecords.Y___0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Z___payload_z (VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Z___payload_z))

:named projection_inverse_VariantsWithRecords.Mkbar___Z___payload_z))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Z___payload_t (VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Z___payload_t))

:named projection_inverse_VariantsWithRecords.Mkbar___Z___payload_t))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Y___payload_y (VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Y___payload_y))

:named projection_inverse_VariantsWithRecords.Mkbar___Y___payload_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Y___payload_x (VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Y___payload_x))

:named projection_inverse_VariantsWithRecords.Mkbar___Y___payload_x))
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar___Z___payload
Tm_type)
:named kinding_VariantsWithRecords.bar___Z___payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar___Y___payload
Tm_type)
:named kinding_VariantsWithRecords.bar___Y___payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar_
Tm_type)
:named kinding_VariantsWithRecords.bar_@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload)
(is-VariantsWithRecords.Mkbar___Z___payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar___Z___payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar___Z___payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload)
(is-VariantsWithRecords.Mkbar___Y___payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar___Y___payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar___Y___payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(50,5-50,9); use=VariantsWithRecords.fst(50,5-50,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar_)
(or (is-VariantsWithRecords.X_ @x1)
(is-VariantsWithRecords.Y_ @x1)
(is-VariantsWithRecords.Z_ @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar_))
:qid fuel_guarded_inversion_VariantsWithRecords.bar_))

:named fuel_guarded_inversion_VariantsWithRecords.bar_))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= VariantsWithRecords.X_@tok
VariantsWithRecords.X_)
:named equality_tok_VariantsWithRecords.X_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload)
(HasTypeFuel @u0
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
:qid data_typing_intro_VariantsWithRecords.Z_@tok))

:named data_typing_intro_VariantsWithRecords.Z_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload)
(HasTypeFuel @u0
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
:qid data_typing_intro_VariantsWithRecords.Y_@tok))

:named data_typing_intro_VariantsWithRecords.Y_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(50,14-50,16); use=VariantsWithRecords.fst(50,14-50,16)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
VariantsWithRecords.X_
VariantsWithRecords.bar_)
 

:pattern ((HasTypeFuel @u0
VariantsWithRecords.X_
VariantsWithRecords.bar_))
:qid data_typing_intro_VariantsWithRecords.X_@tok))

:named data_typing_intro_VariantsWithRecords.X_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar___Z___payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar___Z___payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar___Y___payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar___Y___payload@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
:qid data_elim_VariantsWithRecords.Z_))

:named data_elim_VariantsWithRecords.Z_))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
:qid data_elim_VariantsWithRecords.Y_))

:named data_elim_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
:qid data_elim_VariantsWithRecords.Mkbar___Z___payload))

:named data_elim_VariantsWithRecords.Mkbar___Z___payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
:qid data_elim_VariantsWithRecords.Mkbar___Y___payload))

:named data_elim_VariantsWithRecords.Mkbar___Y___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 666
(Term_constr_id VariantsWithRecords.bar___Z___payload))
:named constructor_distinct_VariantsWithRecords.bar___Z___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 661
(Term_constr_id VariantsWithRecords.bar___Y___payload))
:named constructor_distinct_VariantsWithRecords.bar___Y___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 656
(Term_constr_id VariantsWithRecords.bar_))
:named constructor_distinct_VariantsWithRecords.bar_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@x0 Term))
 (! (= 679
(Term_constr_id (VariantsWithRecords.Z_ @x0)))
 

:pattern ((VariantsWithRecords.Z_ @x0))
:qid constructor_distinct_VariantsWithRecords.Z_))

:named constructor_distinct_VariantsWithRecords.Z_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@x0 Term))
 (! (= 674
(Term_constr_id (VariantsWithRecords.Y_ @x0)))
 

:pattern ((VariantsWithRecords.Y_ @x0))
:qid constructor_distinct_VariantsWithRecords.Y_))

:named constructor_distinct_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 672
(Term_constr_id VariantsWithRecords.X_))
:named constructor_distinct_VariantsWithRecords.X_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= 689
(Term_constr_id (VariantsWithRecords.Mkbar___Z___payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar___Z___payload))

:named constructor_distinct_VariantsWithRecords.Mkbar___Z___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= 684
(Term_constr_id (VariantsWithRecords.Mkbar___Y___payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar___Y___payload))

:named constructor_distinct_VariantsWithRecords.Mkbar___Y___payload))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(50,5-50,9); use=VariantsWithRecords.fst(50,5-50,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar_)
(= VariantsWithRecords.bar_
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar_))
:qid VariantsWithRecords_pretyping_f523a8ba140688618462c8266f515493))

:named VariantsWithRecords_pretyping_f523a8ba140688618462c8266f515493))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Y___payload)
(= VariantsWithRecords.bar___Y___payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Y___payload))
:qid VariantsWithRecords_pretyping_15324246d6fa0cf2d5dc0b437f74857c))

:named VariantsWithRecords_pretyping_15324246d6fa0cf2d5dc0b437f74857c))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Z___payload)
(= VariantsWithRecords.bar___Z___payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Z___payload))
:qid VariantsWithRecords_pretyping_02fb1eff66dfcdeeef4970c479e75574))

:named VariantsWithRecords_pretyping_02fb1eff66dfcdeeef4970c479e75574))
(push) ;; push{4

; Starting query at VariantsWithRecords.fst(50,0-54,42)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq VariantsWithRecords.bar' /\ Prims.hasEq VariantsWithRecords.bar'__Y'__payload /\
; Prims.hasEq VariantsWithRecords.bar'__Z'__payload ==>
; (forall (_0: VariantsWithRecords.bar'__Y'__payload).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.bar''
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq VariantsWithRecords.bar'__Y'__payload) /\
; (forall (_0: VariantsWithRecords.bar'__Z'__payload).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.bar''
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq VariantsWithRecords.bar'__Z'__payload)


; Context: While encoding a query
; While typechecking the top-level declaration `type VariantsWithRecords.bar'`

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
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(and 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Valid 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Prims.hasEq VariantsWithRecords.bar_)
)


;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Valid 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Prims.hasEq VariantsWithRecords.bar___Y___payload)
)


;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Valid 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Prims.hasEq VariantsWithRecords.bar___Z___payload)
)
)


;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(and 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar___Y___payload)

;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(51,20-51,37)
(or label_1

;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Valid 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Prims.hasEq VariantsWithRecords.bar___Y___payload)
)
)
)
 
;;no pats
:qid @query))


;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar___Z___payload)

;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(52,18-52,35)
(or label_2

;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Valid 
;; def=VariantsWithRecords.fst(50,0-54,42); use=VariantsWithRecords.fst(50,0-54,42)
(Prims.hasEq VariantsWithRecords.bar___Z___payload)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (VariantsWithRecords.bar', 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type VariantsWithRecords.bar'


; <Start encoding type VariantsWithRecords.bar'>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar_ () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar___Y___payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.bar___Z___payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.X_ () Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.X'
(declare-fun VariantsWithRecords.X_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Y_ (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Y___0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Y'
(declare-fun VariantsWithRecords.Y_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Z_ (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Z___0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Z'
(declare-fun VariantsWithRecords.Z_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar___Y___payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Y___payload_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Y___payload_y (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar'__Y'__payload
(declare-fun VariantsWithRecords.Mkbar___Y___payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkbar___Z___payload (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Z___payload_z (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkbar___Z___payload_t (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkbar'__Z'__payload
(declare-fun VariantsWithRecords.Mkbar___Z___payload@tok () Term)
;;;;;;;;;;;;;;;;_0: bar'__Y'__payload -> bar'
(declare-fun Tm_arrow_a89585909d33408f32f5c27908d5d60e () Term)
;;;;;;;;;;;;;;;;_0: bar'__Z'__payload -> bar'
(declare-fun Tm_arrow_46eee8ededaa8918d6d6457fdaa16ad6 () Term)
;;;;;;;;;;;;;;;;x: Prims.int -> y: Prims.int -> bar'__Y'__payload
(declare-fun Tm_arrow_9a93f09ec4514820f6b4c0a33a13810b () Term)
;;;;;;;;;;;;;;;;z: Prims.int -> t: Prims.int -> bar'__Z'__payload
(declare-fun Tm_arrow_a6d57d5a6cee0d4414bdc733b77aa6ef () Term)

; <start constructor VariantsWithRecords.bar_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
693)
(= __@x0
VariantsWithRecords.bar_)))

; </end constructor VariantsWithRecords.bar_>


; <start constructor VariantsWithRecords.bar___Y___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar___Y___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
698)
(= __@x0
VariantsWithRecords.bar___Y___payload)))

; </end constructor VariantsWithRecords.bar___Y___payload>


; <start constructor VariantsWithRecords.bar___Z___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.bar___Z___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
703)
(= __@x0
VariantsWithRecords.bar___Z___payload)))

; </end constructor VariantsWithRecords.bar___Z___payload>


; <start constructor VariantsWithRecords.X_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.X_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
709)
(= __@x0
VariantsWithRecords.X_)))

; </end constructor VariantsWithRecords.X_>


; <start constructor VariantsWithRecords.Y_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Y_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
711)
(= __@x0
(VariantsWithRecords.Y_ (VariantsWithRecords.Y___0 __@x0)))))

; </end constructor VariantsWithRecords.Y_>


; <start constructor VariantsWithRecords.Z_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Z_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
716)
(= __@x0
(VariantsWithRecords.Z_ (VariantsWithRecords.Z___0 __@x0)))))

; </end constructor VariantsWithRecords.Z_>


; <start constructor VariantsWithRecords.Mkbar___Y___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar___Y___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
721)
(= __@x0
(VariantsWithRecords.Mkbar___Y___payload (VariantsWithRecords.Mkbar___Y___payload_x __@x0)
(VariantsWithRecords.Mkbar___Y___payload_y __@x0)))))

; </end constructor VariantsWithRecords.Mkbar___Y___payload>


; <start constructor VariantsWithRecords.Mkbar___Z___payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkbar___Z___payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
726)
(= __@x0
(VariantsWithRecords.Mkbar___Z___payload (VariantsWithRecords.Mkbar___Z___payload_z __@x0)
(VariantsWithRecords.Mkbar___Z___payload_t __@x0)))))

; </end constructor VariantsWithRecords.Mkbar___Z___payload>


; </end encoding type VariantsWithRecords.bar'>


; encoding sigelt assume VariantsWithRecords.bar'__uu___haseq


; <Start encoding assume VariantsWithRecords.bar'__uu___haseq>


; </end encoding assume VariantsWithRecords.bar'__uu___haseq>


; encoding sigelt assume VariantsWithRecords.bar'__Y'__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.bar'__Y'__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.bar'__Y'__payload__uu___haseq>


; encoding sigelt assume VariantsWithRecords.bar'__Z'__payload__uu___haseq


; <Start encoding assume VariantsWithRecords.bar'__Z'__payload__uu___haseq>


; </end encoding assume VariantsWithRecords.bar'__Z'__payload__uu___haseq>


; encoding sigelt val VariantsWithRecords.uu___is_X'


; <Start encoding val VariantsWithRecords.uu___is_X'>

(declare-fun VariantsWithRecords.uu___is_X_ (Term) Term)
;;;;;;;;;;;;;;;;projectee: bar' -> Prims.bool
(declare-fun Tm_arrow_fa0910553c9d9d10d8a1bb96f12e918a () Term)
(declare-fun VariantsWithRecords.uu___is_X_@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_X'>


; encoding sigelt let uu___is_X'


; <Skipped let uu___is_X'/>


; encoding sigelt val VariantsWithRecords.uu___is_Y'


; <Start encoding val VariantsWithRecords.uu___is_Y'>

(declare-fun VariantsWithRecords.uu___is_Y_ (Term) Term)

(declare-fun VariantsWithRecords.uu___is_Y_@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_Y'>


; encoding sigelt let uu___is_Y'


; <Skipped let uu___is_Y'/>


; encoding sigelt val VariantsWithRecords.__proj__Y'__item___0


; <Start encoding val VariantsWithRecords.__proj__Y'__item___0>

(declare-fun Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b () Term)
(declare-fun VariantsWithRecords.__proj__Y___item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: bar'{Y'? _} -> bar'__Y'__payload
(declare-fun Tm_arrow_6e51e3ad2ebc799605503515c38b93f2 () Term)
(declare-fun VariantsWithRecords.__proj__Y___item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Y'__item___0>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.X_@tok
VariantsWithRecords.bar_)
:named typing_tok_VariantsWithRecords.X_@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_Y'; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar_)
(HasType (VariantsWithRecords.uu___is_Y_ @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_Y_ @x0))
:qid typing_VariantsWithRecords.uu___is_Y_))

:named typing_VariantsWithRecords.uu___is_Y_))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Z_ @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
:qid subterm_ordering_VariantsWithRecords.Z_))

:named subterm_ordering_VariantsWithRecords.Z_))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Y_ @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
:qid subterm_ordering_VariantsWithRecords.Y_))

:named subterm_ordering_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar___Z___payload))

:named subterm_ordering_VariantsWithRecords.Mkbar___Z___payload))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
:qid subterm_ordering_VariantsWithRecords.Mkbar___Y___payload))

:named subterm_ordering_VariantsWithRecords.Mkbar___Y___payload))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__Y'__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b
Tm_type)
:named refinement_kinding_Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__Y'__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.bar_)

;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Y_ @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b))
:qid refinement_interpretation_Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b))

:named refinement_interpretation_Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Z___0 (VariantsWithRecords.Z_ @x0))
@x0)
 

:pattern ((VariantsWithRecords.Z_ @x0))
:qid projection_inverse_VariantsWithRecords.Z___0))

:named projection_inverse_VariantsWithRecords.Z___0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Y___0 (VariantsWithRecords.Y_ @x0))
@x0)
 

:pattern ((VariantsWithRecords.Y_ @x0))
:qid projection_inverse_VariantsWithRecords.Y___0))

:named projection_inverse_VariantsWithRecords.Y___0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Z___payload_z (VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Z___payload_z))

:named projection_inverse_VariantsWithRecords.Mkbar___Z___payload_z))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Z___payload_t (VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Z___payload_t))

:named projection_inverse_VariantsWithRecords.Mkbar___Z___payload_t))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Y___payload_y (VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Y___payload_y))

:named projection_inverse_VariantsWithRecords.Mkbar___Y___payload_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Mkbar___Y___payload_x (VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Mkbar___Y___payload_x))

:named projection_inverse_VariantsWithRecords.Mkbar___Y___payload_x))
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar___Z___payload
Tm_type)
:named kinding_VariantsWithRecords.bar___Z___payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar___Y___payload
Tm_type)
:named kinding_VariantsWithRecords.bar___Y___payload@tok))
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.bar_
Tm_type)
:named kinding_VariantsWithRecords.bar_@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b
;;; Fact-ids: Name VariantsWithRecords.__proj__Y'__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b))
(Valid (Prims.hasEq VariantsWithRecords.bar_)))
:named haseqTm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload)
(is-VariantsWithRecords.Mkbar___Z___payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar___Z___payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar___Z___payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload)
(is-VariantsWithRecords.Mkbar___Y___payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload))
:qid fuel_guarded_inversion_VariantsWithRecords.bar___Y___payload))

:named fuel_guarded_inversion_VariantsWithRecords.bar___Y___payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(50,5-50,9); use=VariantsWithRecords.fst(50,5-50,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar_)
(or (is-VariantsWithRecords.X_ @x1)
(is-VariantsWithRecords.Y_ @x1)
(is-VariantsWithRecords.Z_ @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
VariantsWithRecords.bar_))
:qid fuel_guarded_inversion_VariantsWithRecords.bar_))

:named fuel_guarded_inversion_VariantsWithRecords.bar_))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= VariantsWithRecords.X_@tok
VariantsWithRecords.X_)
:named equality_tok_VariantsWithRecords.X_@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_Y'; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_Y_ @x0)
(BoxBool (is-VariantsWithRecords.Y_ @x0)))
 

:pattern ((VariantsWithRecords.uu___is_Y_ @x0))
:qid disc_equation_VariantsWithRecords.Y_))

:named disc_equation_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload)
(HasTypeFuel @u0
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
:qid data_typing_intro_VariantsWithRecords.Z_@tok))

:named data_typing_intro_VariantsWithRecords.Z_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload)
(HasTypeFuel @u0
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
:qid data_typing_intro_VariantsWithRecords.Y_@tok))

:named data_typing_intro_VariantsWithRecords.Y_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(50,14-50,16); use=VariantsWithRecords.fst(50,14-50,16)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
VariantsWithRecords.X_
VariantsWithRecords.bar_)
 

:pattern ((HasTypeFuel @u0
VariantsWithRecords.X_
VariantsWithRecords.bar_))
:qid data_typing_intro_VariantsWithRecords.X_@tok))

:named data_typing_intro_VariantsWithRecords.X_@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar___Z___payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar___Z___payload@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int))
(HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
:qid data_typing_intro_VariantsWithRecords.Mkbar___Y___payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkbar___Y___payload@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Z___payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Z_ @x1)
VariantsWithRecords.bar_))
:qid data_elim_VariantsWithRecords.Z_))

:named data_elim_VariantsWithRecords.Z_))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_)
(HasTypeFuel @u0
@x1
VariantsWithRecords.bar___Y___payload))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Y_ @x1)
VariantsWithRecords.bar_))
:qid data_elim_VariantsWithRecords.Y_))

:named data_elim_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Z___payload @x1
@x2)
VariantsWithRecords.bar___Z___payload))
:qid data_elim_VariantsWithRecords.Mkbar___Z___payload))

:named data_elim_VariantsWithRecords.Mkbar___Z___payload))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
Prims.int)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkbar___Y___payload @x1
@x2)
VariantsWithRecords.bar___Y___payload))
:qid data_elim_VariantsWithRecords.Mkbar___Y___payload))

:named data_elim_VariantsWithRecords.Mkbar___Y___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 703
(Term_constr_id VariantsWithRecords.bar___Z___payload))
:named constructor_distinct_VariantsWithRecords.bar___Z___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 698
(Term_constr_id VariantsWithRecords.bar___Y___payload))
:named constructor_distinct_VariantsWithRecords.bar___Y___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 693
(Term_constr_id VariantsWithRecords.bar_))
:named constructor_distinct_VariantsWithRecords.bar_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@x0 Term))
 (! (= 716
(Term_constr_id (VariantsWithRecords.Z_ @x0)))
 

:pattern ((VariantsWithRecords.Z_ @x0))
:qid constructor_distinct_VariantsWithRecords.Z_))

:named constructor_distinct_VariantsWithRecords.Z_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(forall ((@x0 Term))
 (! (= 711
(Term_constr_id (VariantsWithRecords.Y_ @x0)))
 

:pattern ((VariantsWithRecords.Y_ @x0))
:qid constructor_distinct_VariantsWithRecords.Y_))

:named constructor_distinct_VariantsWithRecords.Y_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! (= 709
(Term_constr_id VariantsWithRecords.X_))
:named constructor_distinct_VariantsWithRecords.X_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= 726
(Term_constr_id (VariantsWithRecords.Mkbar___Z___payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar___Z___payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar___Z___payload))

:named constructor_distinct_VariantsWithRecords.Mkbar___Z___payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= 721
(Term_constr_id (VariantsWithRecords.Mkbar___Y___payload @x0
@x1)))
 

:pattern ((VariantsWithRecords.Mkbar___Y___payload @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Mkbar___Y___payload))

:named constructor_distinct_VariantsWithRecords.Mkbar___Y___payload))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.bar'__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.bar'__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.bar_))
:named assumption_VariantsWithRecords.bar___uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.bar'__Z'__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.bar'__Z'__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.bar___Z___payload))
:named assumption_VariantsWithRecords.bar___Z___payload__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: VariantsWithRecords.bar'__Y'__payload__uu___haseq
;;; Fact-ids: Name VariantsWithRecords.bar'__Y'__payload__uu___haseq; Namespace VariantsWithRecords
(assert (! (Valid (Prims.hasEq VariantsWithRecords.bar___Y___payload))
:named assumption_VariantsWithRecords.bar___Y___payload__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(50,5-50,9); use=VariantsWithRecords.fst(50,5-50,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar_)
(= VariantsWithRecords.bar_
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar_))
:qid VariantsWithRecords_pretyping_f523a8ba140688618462c8266f515493))

:named VariantsWithRecords_pretyping_f523a8ba140688618462c8266f515493))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(53,4-53,21); use=VariantsWithRecords.fst(53,4-53,21)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Y___payload)
(= VariantsWithRecords.bar___Y___payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Y___payload))
:qid VariantsWithRecords_pretyping_15324246d6fa0cf2d5dc0b437f74857c))

:named VariantsWithRecords_pretyping_15324246d6fa0cf2d5dc0b437f74857c))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.bar'; Namespace VariantsWithRecords; Name VariantsWithRecords.X'; Namespace VariantsWithRecords; Name VariantsWithRecords.Y'; Namespace VariantsWithRecords; Name VariantsWithRecords.Z'; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Y'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.bar'__Z'__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkbar'__Z'__payload; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(54,4-54,21); use=VariantsWithRecords.fst(54,4-54,21)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Z___payload)
(= VariantsWithRecords.bar___Z___payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.bar___Z___payload))
:qid VariantsWithRecords_pretyping_02fb1eff66dfcdeeef4970c479e75574))

:named VariantsWithRecords_pretyping_02fb1eff66dfcdeeef4970c479e75574))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.bar'{Y'? _}).
;   (*  - Could not prove post-condition
; *) ~(Y'? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Y'__item___0`

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
Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b)

;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(not 
;; def=VariantsWithRecords.fst(51,14-51,16); use=VariantsWithRecords.fst(51,14-51,16)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Y_ @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__Y'__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_7c5b11c2e5ce6cb9f15b0eee650b344b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Y'__item___0


; <Skipped let __proj__Y'__item___0/>


; encoding sigelt val VariantsWithRecords.uu___is_Z'


; <Start encoding val VariantsWithRecords.uu___is_Z'>

(declare-fun VariantsWithRecords.uu___is_Z_ (Term) Term)

(declare-fun VariantsWithRecords.uu___is_Z_@tok () Term)

; </end encoding val VariantsWithRecords.uu___is_Z'>


; encoding sigelt let uu___is_Z'


; <Skipped let uu___is_Z'/>


; encoding sigelt val VariantsWithRecords.__proj__Z'__item___0


; <Start encoding val VariantsWithRecords.__proj__Z'__item___0>

(declare-fun Tm_refine_9aa1dc24b960ee154565857237b2a606 () Term)
(declare-fun VariantsWithRecords.__proj__Z___item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: bar'{Z'? _} -> bar'__Z'__payload
(declare-fun Tm_arrow_25185a31c58428c9aaba521afe942c1a () Term)
(declare-fun VariantsWithRecords.__proj__Z___item___0@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Z'__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name VariantsWithRecords.uu___is_Z'; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
VariantsWithRecords.bar_)
(HasType (VariantsWithRecords.uu___is_Z_ @x0)
Prims.bool))
 

:pattern ((VariantsWithRecords.uu___is_Z_ @x0))
:qid typing_VariantsWithRecords.uu___is_Z_))

:named typing_VariantsWithRecords.uu___is_Z_))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name VariantsWithRecords.__proj__Z'__item___0; Namespace VariantsWithRecords
(assert (! (HasType Tm_refine_9aa1dc24b960ee154565857237b2a606
Tm_type)
:named refinement_kinding_Tm_refine_9aa1dc24b960ee154565857237b2a606))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name VariantsWithRecords.__proj__Z'__item___0; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_9aa1dc24b960ee154565857237b2a606)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.bar_)

;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Z_ @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_9aa1dc24b960ee154565857237b2a606))
:qid refinement_interpretation_Tm_refine_9aa1dc24b960ee154565857237b2a606))

:named refinement_interpretation_Tm_refine_9aa1dc24b960ee154565857237b2a606))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9aa1dc24b960ee154565857237b2a606
;;; Fact-ids: Name VariantsWithRecords.__proj__Z'__item___0; Namespace VariantsWithRecords
(assert (! (iff (Valid (Prims.hasEq Tm_refine_9aa1dc24b960ee154565857237b2a606))
(Valid (Prims.hasEq VariantsWithRecords.bar_)))
:named haseqTm_refine_9aa1dc24b960ee154565857237b2a606))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name VariantsWithRecords.uu___is_Z'; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.uu___is_Z_ @x0)
(BoxBool (is-VariantsWithRecords.Z_ @x0)))
 

:pattern ((VariantsWithRecords.uu___is_Z_ @x0))
:qid disc_equation_VariantsWithRecords.Z_))

:named disc_equation_VariantsWithRecords.Z_))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: VariantsWithRecords.bar'{Z'? _}).
;   (*  - Could not prove post-condition
; *) ~(Z'? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Z'__item___0`

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
Tm_refine_9aa1dc24b960ee154565857237b2a606)

;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(not 
;; def=VariantsWithRecords.fst(52,14-52,16); use=VariantsWithRecords.fst(52,14-52,16)
(BoxBool_proj_0 (VariantsWithRecords.uu___is_Z_ @x0))
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
; QUERY ID: (VariantsWithRecords.__proj__Z'__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_9aa1dc24b960ee154565857237b2a606

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Z'__item___0


; <Skipped let __proj__Z'__item___0/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar'__Y'__payload__item__x


; <Start encoding val VariantsWithRecords.__proj__Mkbar'__Y'__payload__item__x>

(declare-fun VariantsWithRecords.__proj__Mkbar___Y___payload__item__x (Term) Term)
;;;;;;;;;;;;;;;;projectee: bar'__Y'__payload -> Prims.int
(declare-fun Tm_arrow_279e53fea4d24befb7853b8f6e56c36f () Term)
(declare-fun VariantsWithRecords.__proj__Mkbar___Y___payload__item__x@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar'__Y'__payload__item__x>


; encoding sigelt let __proj__Mkbar'__Y'__payload__item__x


; <Skipped let __proj__Mkbar'__Y'__payload__item__x/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar'__Y'__payload__item__y


; <Start encoding val VariantsWithRecords.__proj__Mkbar'__Y'__payload__item__y>

(declare-fun VariantsWithRecords.__proj__Mkbar___Y___payload__item__y (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkbar___Y___payload__item__y@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar'__Y'__payload__item__y>


; encoding sigelt let __proj__Mkbar'__Y'__payload__item__y


; <Skipped let __proj__Mkbar'__Y'__payload__item__y/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar'__Z'__payload__item__z


; <Start encoding val VariantsWithRecords.__proj__Mkbar'__Z'__payload__item__z>

(declare-fun VariantsWithRecords.__proj__Mkbar___Z___payload__item__z (Term) Term)
;;;;;;;;;;;;;;;;projectee: bar'__Z'__payload -> Prims.int
(declare-fun Tm_arrow_9d790b3cc40ea59e606e25fa0338aa1b () Term)
(declare-fun VariantsWithRecords.__proj__Mkbar___Z___payload__item__z@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar'__Z'__payload__item__z>


; encoding sigelt let __proj__Mkbar'__Z'__payload__item__z


; <Skipped let __proj__Mkbar'__Z'__payload__item__z/>


; encoding sigelt val VariantsWithRecords.__proj__Mkbar'__Z'__payload__item__t


; <Start encoding val VariantsWithRecords.__proj__Mkbar'__Z'__payload__item__t>

(declare-fun VariantsWithRecords.__proj__Mkbar___Z___payload__item__t (Term) Term)

(declare-fun VariantsWithRecords.__proj__Mkbar___Z___payload__item__t@tok () Term)

; </end encoding val VariantsWithRecords.__proj__Mkbar'__Z'__payload__item__t>


; encoding sigelt let __proj__Mkbar'__Z'__payload__item__t


; <Skipped let __proj__Mkbar'__Z'__payload__item__t/>


; encoding sigelt let uu___1


; <Start encoding let uu___1>

(declare-fun VariantsWithRecords.uu___1 (Dummy_sort) Term)

; </end encoding let uu___1>


; encoding sigelt let uu___2


; <Start encoding let uu___2>

(declare-fun VariantsWithRecords.uu___2 (Dummy_sort) Term)

; </end encoding let uu___2>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type VariantsWithRecords.odd__Odd__payload


; <Start encoding type VariantsWithRecords.odd__Odd__payload>

;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.odd__Odd__payload () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.odd () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Mkodd__Odd__payload (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Mkodd__Odd__payload_something (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Mkodd__Odd__payload
(declare-fun VariantsWithRecords.Mkodd__Odd__payload@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun VariantsWithRecords.Odd (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Odd__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun VariantsWithRecords.Odd__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: VariantsWithRecords.Odd
(declare-fun VariantsWithRecords.Odd@tok () Term)
;;;;;;;;;;;;;;;;something: Prims.int -> odd__Odd__payload
(declare-fun Tm_arrow_c340f7422bcaf8bd069ff78477d418d4 () Term)
;;;;;;;;;;;;;;;;_0: odd__Odd__payload -> _1: Prims.string -> odd
(declare-fun Tm_arrow_6c4957a44bcb6703d56053b524673a6f () Term)

; <start constructor VariantsWithRecords.odd__Odd__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.odd__Odd__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
774)
(= __@x0
VariantsWithRecords.odd__Odd__payload)))

; </end constructor VariantsWithRecords.odd__Odd__payload>


; <start constructor VariantsWithRecords.odd>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.odd ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
779)
(= __@x0
VariantsWithRecords.odd)))

; </end constructor VariantsWithRecords.odd>


; <start constructor VariantsWithRecords.Mkodd__Odd__payload>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Mkodd__Odd__payload ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
785)
(= __@x0
(VariantsWithRecords.Mkodd__Odd__payload (VariantsWithRecords.Mkodd__Odd__payload_something __@x0)))))

; </end constructor VariantsWithRecords.Mkodd__Odd__payload>


; <start constructor VariantsWithRecords.Odd>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-VariantsWithRecords.Odd ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
790)
(= __@x0
(VariantsWithRecords.Odd (VariantsWithRecords.Odd__0 __@x0)
(VariantsWithRecords.Odd__1 __@x0)))))

; </end constructor VariantsWithRecords.Odd>


; </end encoding type VariantsWithRecords.odd__Odd__payload>

;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Odd @x1
@x2)
VariantsWithRecords.odd)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Odd @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(VariantsWithRecords.Odd @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Odd @x1
@x2)
VariantsWithRecords.odd))
:qid subterm_ordering_VariantsWithRecords.Odd))

:named subterm_ordering_VariantsWithRecords.Odd))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkodd__Odd__payload @x1)
VariantsWithRecords.odd__Odd__payload)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(VariantsWithRecords.Mkodd__Odd__payload @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkodd__Odd__payload @x1)
VariantsWithRecords.odd__Odd__payload))
:qid subterm_ordering_VariantsWithRecords.Mkodd__Odd__payload))

:named subterm_ordering_VariantsWithRecords.Mkodd__Odd__payload))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Odd__1 (VariantsWithRecords.Odd @x0
@x1))
@x1)
 

:pattern ((VariantsWithRecords.Odd @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Odd__1))

:named projection_inverse_VariantsWithRecords.Odd__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (VariantsWithRecords.Odd__0 (VariantsWithRecords.Odd @x0
@x1))
@x0)
 

:pattern ((VariantsWithRecords.Odd @x0
@x1))
:qid projection_inverse_VariantsWithRecords.Odd__0))

:named projection_inverse_VariantsWithRecords.Odd__0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@x0 Term))
 (! (= (VariantsWithRecords.Mkodd__Odd__payload_something (VariantsWithRecords.Mkodd__Odd__payload @x0))
@x0)
 

:pattern ((VariantsWithRecords.Mkodd__Odd__payload @x0))
:qid projection_inverse_VariantsWithRecords.Mkodd__Odd__payload_something))

:named projection_inverse_VariantsWithRecords.Mkodd__Odd__payload_something))
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.odd__Odd__payload
Tm_type)
:named kinding_VariantsWithRecords.odd__Odd__payload@tok))
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! (HasType VariantsWithRecords.odd
Tm_type)
:named kinding_VariantsWithRecords.odd@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.odd__Odd__payload)
(is-VariantsWithRecords.Mkodd__Odd__payload @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.odd__Odd__payload))
:qid fuel_guarded_inversion_VariantsWithRecords.odd__Odd__payload))

:named fuel_guarded_inversion_VariantsWithRecords.odd__Odd__payload))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,5-64,8); use=VariantsWithRecords.fst(64,5-64,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
VariantsWithRecords.odd)
(is-VariantsWithRecords.Odd @x1))
 

:pattern ((HasTypeFuel @u0
@x1
VariantsWithRecords.odd))
:qid fuel_guarded_inversion_VariantsWithRecords.odd))

:named fuel_guarded_inversion_VariantsWithRecords.odd))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
VariantsWithRecords.odd__Odd__payload)
(HasTypeFuel @u0
@x2
Prims.string))
(HasTypeFuel @u0
(VariantsWithRecords.Odd @x1
@x2)
VariantsWithRecords.odd))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Odd @x1
@x2)
VariantsWithRecords.odd))
:qid data_typing_intro_VariantsWithRecords.Odd@tok))

:named data_typing_intro_VariantsWithRecords.Odd@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
(VariantsWithRecords.Mkodd__Odd__payload @x1)
VariantsWithRecords.odd__Odd__payload))
 

:pattern ((HasTypeFuel @u0
(VariantsWithRecords.Mkodd__Odd__payload @x1)
VariantsWithRecords.odd__Odd__payload))
:qid data_typing_intro_VariantsWithRecords.Mkodd__Odd__payload@tok))

:named data_typing_intro_VariantsWithRecords.Mkodd__Odd__payload@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Odd @x1
@x2)
VariantsWithRecords.odd)
(and (HasTypeFuel @u0
@x1
VariantsWithRecords.odd__Odd__payload)
(HasTypeFuel @u0
@x2
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Odd @x1
@x2)
VariantsWithRecords.odd))
:qid data_elim_VariantsWithRecords.Odd))

:named data_elim_VariantsWithRecords.Odd))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkodd__Odd__payload @x1)
VariantsWithRecords.odd__Odd__payload)
(HasTypeFuel @u0
@x1
Prims.int))
 

:pattern ((HasTypeFuel (SFuel @u0)
(VariantsWithRecords.Mkodd__Odd__payload @x1)
VariantsWithRecords.odd__Odd__payload))
:qid data_elim_VariantsWithRecords.Mkodd__Odd__payload))

:named data_elim_VariantsWithRecords.Mkodd__Odd__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! (= 774
(Term_constr_id VariantsWithRecords.odd__Odd__payload))
:named constructor_distinct_VariantsWithRecords.odd__Odd__payload))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! (= 779
(Term_constr_id VariantsWithRecords.odd))
:named constructor_distinct_VariantsWithRecords.odd))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= 790
(Term_constr_id (VariantsWithRecords.Odd @x0
@x1)))
 

:pattern ((VariantsWithRecords.Odd @x0
@x1))
:qid constructor_distinct_VariantsWithRecords.Odd))

:named constructor_distinct_VariantsWithRecords.Odd))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@x0 Term))
 (! (= 785
(Term_constr_id (VariantsWithRecords.Mkodd__Odd__payload @x0)))
 

:pattern ((VariantsWithRecords.Mkodd__Odd__payload @x0))
:qid constructor_distinct_VariantsWithRecords.Mkodd__Odd__payload))

:named constructor_distinct_VariantsWithRecords.Mkodd__Odd__payload))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,5-64,8); use=VariantsWithRecords.fst(64,5-64,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.odd)
(= VariantsWithRecords.odd
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.odd))
:qid VariantsWithRecords_pretyping_d0ef4768dd7c703dabd5b40c67e729bc))

:named VariantsWithRecords_pretyping_d0ef4768dd7c703dabd5b40c67e729bc))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name VariantsWithRecords.odd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.Mkodd__Odd__payload; Namespace VariantsWithRecords; Name VariantsWithRecords.odd; Namespace VariantsWithRecords; Name VariantsWithRecords.Odd; Namespace VariantsWithRecords
(assert (! 
;; def=VariantsWithRecords.fst(64,13-64,16); use=VariantsWithRecords.fst(64,13-64,16)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
VariantsWithRecords.odd__Odd__payload)
(= VariantsWithRecords.odd__Odd__payload
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
VariantsWithRecords.odd__Odd__payload))
:qid VariantsWithRecords_pretyping_73e661b357ccd49d9fbf26008f8f25f4))

:named VariantsWithRecords_pretyping_73e661b357ccd49d9fbf26008f8f25f4))
(push) ;; push{4

; Starting query at VariantsWithRecords.fst(64,0-64,48)

(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq VariantsWithRecords.odd__Odd__payload /\ Prims.hasEq VariantsWithRecords.odd ==>
; (forall (_0: VariantsWithRecords.odd__Odd__payload) (_1: Prims.string).
;     (*  - Failed to prove that the type
;     'VariantsWithRecords.odd'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq VariantsWithRecords.odd__Odd__payload)


; Context: While encoding a query
; While typechecking the top-level declaration `type VariantsWithRecords.odd__Odd__payload`

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
;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(and 
;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(Valid 
;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(Prims.hasEq VariantsWithRecords.odd__Odd__payload)
)


;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(Valid 
;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(Prims.hasEq VariantsWithRecords.odd)
)
)


;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
VariantsWithRecords.odd__Odd__payload)
(HasType @x1
Prims.string))

;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,13-64,16)
(or label_1

;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(Valid 
;; def=VariantsWithRecords.fst(64,0-64,48); use=VariantsWithRecords.fst(64,0-64,48)
(Prims.hasEq VariantsWithRecords.odd__Odd__payload)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (VariantsWithRecords.odd__Odd__payload, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query
