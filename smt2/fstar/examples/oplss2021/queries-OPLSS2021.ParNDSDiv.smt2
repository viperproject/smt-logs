
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


; Externals for interface FStar.Universe


; <Start encoding val FStar.Universe.raise_t>

(declare-fun FStar.Universe.raise_t (Term) Term)

(declare-fun FStar.Universe.raise_t@tok () Term)

; </end encoding val FStar.Universe.raise_t>


; <Start encoding val FStar.Universe.raise_val>

(declare-fun FStar.Universe.raise_val (Term Term) Term)
(declare-fun Tm_arrow_7858e31e705b52937c29c7ea19ff60c9 () Term)
(declare-fun FStar.Universe.raise_val@tok () Term)

; </end encoding val FStar.Universe.raise_val>


; <Start encoding val FStar.Universe.downgrade_val>

(declare-fun FStar.Universe.downgrade_val (Term Term) Term)
(declare-fun Tm_arrow_28ed95b87953e0de230c3c986f37f91a () Term)
(declare-fun FStar.Universe.downgrade_val@tok () Term)

; </end encoding val FStar.Universe.downgrade_val>


; <Start encoding val FStar.Universe.downgrade_val_raise_val>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Universe.downgrade_val_raise_val (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Universe.downgrade_val_raise_val@tok () Term)

; </end encoding val FStar.Universe.downgrade_val_raise_val>


; <Start encoding val FStar.Universe.raise_val_downgrade_val>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Universe.raise_val_downgrade_val (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Universe.raise_val_downgrade_val@tok () Term)

; </end encoding val FStar.Universe.raise_val_downgrade_val>


; <Start encoding let lift_dom>


(declare-fun FStar.Universe.lift_dom (Term Term Term) Term)

(declare-fun Tm_arrow_c894005ed744ee7f6075152bc7599c87 (Term Term) Term)
(declare-fun Tm_arrow_f8ed6deb4346a3e19851b364918b114f () Term)
(declare-fun FStar.Universe.lift_dom@tok () Term)



(declare-fun Tm_abs_9bc853331d190243acb272fac645d0e6 (Term Term Term) Term)

; </end encoding let lift_dom>


; <Start encoding let lift_codom>


(declare-fun FStar.Universe.lift_codom (Term Term Term) Term)

(declare-fun Tm_arrow_2f59be6a89be49ff7d1066cc3e91bf90 (Term Term) Term)
(declare-fun Tm_arrow_bd66cba8d2e076626179d3fa24418469 () Term)
(declare-fun FStar.Universe.lift_codom@tok () Term)



(declare-fun Tm_abs_485574072f973e524ebd3e0a8cb3900b (Term Term Term) Term)

; </end encoding let lift_codom>


; End Externals for interface FStar.Universe

(push) ;; push{1

; Internals for OPLSS2021.ParNDSDiv


; encoding sigelt let associative


; <Start encoding let associative>

;;;;;;;;;;;;;;;;_: a -> _: a -> a
(declare-fun Tm_arrow_72ac2ec523211f8603e00b25deb1543b (Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.associative (Term Term) Term)

;;;;;;;;;;;;;;;;f: (_: a -> _: a -> a) -> Prims.logical
(declare-fun Tm_arrow_5916c6fac4901d1cab77fd4d2f001b72 () Term)
(declare-fun OPLSS2021.ParNDSDiv.associative@tok () Term)


; </end encoding let associative>


; encoding sigelt let commutative


; <Start encoding let commutative>


(declare-fun OPLSS2021.ParNDSDiv.commutative (Term Term) Term)


(declare-fun OPLSS2021.ParNDSDiv.commutative@tok () Term)


; </end encoding let commutative>


; encoding sigelt let is_unit


; <Start encoding let is_unit>


(declare-fun OPLSS2021.ParNDSDiv.is_unit (Term Term Term) Term)

;;;;;;;;;;;;;;;;x: a -> f: (_: a -> _: a -> a) -> Prims.logical
(declare-fun Tm_arrow_7f2021b3ff9887854ba4886c94f29fb0 () Term)
(declare-fun OPLSS2021.ParNDSDiv.is_unit@tok () Term)


; </end encoding let is_unit>


; encoding sigelt type OPLSS2021.ParNDSDiv.comm_monoid


; <Start encoding type OPLSS2021.ParNDSDiv.comm_monoid>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.comm_monoid (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun OPLSS2021.ParNDSDiv.comm_monoid@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid_s (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid_r (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid_star (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid_laws (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ParNDSDiv.Mkcomm_monoid
(declare-fun OPLSS2021.ParNDSDiv.Mkcomm_monoid@tok () Term)

;;;;;;;;;;;;;;;;_: r -> _: s -> Prims.prop
(declare-fun Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 (Term Term) Term)
(declare-fun Tm_refine_761f4edd49a1818dd8f251cfd090463a (Term Term Term) Term)



;;;;;;;;;;;;;;;;r: Type ->     emp: r ->     star: (_: r -> _: r -> r) ->     interp: (_: r -> _: s -> Prims.prop) ->     laws: Prims.squash (associative star /\ commutative star /\ is_unit emp star)   -> comm_monoid s
(declare-fun Tm_arrow_305479656d9b193939bb7143a80ffe7a () Term)

; <start constructor OPLSS2021.ParNDSDiv.comm_monoid>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.comm_monoid ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
128)
(exists ((@x0 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.comm_monoid))))

; </end constructor OPLSS2021.ParNDSDiv.comm_monoid>


; <start constructor OPLSS2021.ParNDSDiv.Mkcomm_monoid>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.Mkcomm_monoid ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
140)
(= __@x0
(OPLSS2021.ParNDSDiv.Mkcomm_monoid (OPLSS2021.ParNDSDiv.Mkcomm_monoid_s __@x0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_r __@x0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp __@x0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_star __@x0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp __@x0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_laws __@x0)))))

; </end constructor OPLSS2021.ParNDSDiv.Mkcomm_monoid>


; </end encoding type OPLSS2021.ParNDSDiv.comm_monoid>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: comm_monoid s -> Type
(declare-fun Tm_arrow_1a83abacb80e65a0c6ddaf02ee93df5e () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r>


; encoding sigelt let __proj__Mkcomm_monoid__item__r


; <Skipped let __proj__Mkcomm_monoid__item__r/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: comm_monoid s -> projectee.r
(declare-fun Tm_arrow_95e3238cbfea22b93aead70d931e4219 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp>


; encoding sigelt let __proj__Mkcomm_monoid__item__emp


; <Skipped let __proj__Mkcomm_monoid__item__emp/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star (Term Term) Term)
;;;;;;;;;;;;;;;;_: projectee.r -> _: projectee.r -> projectee.r
(declare-fun Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: comm_monoid s -> _: projectee.r -> _: projectee.r -> projectee.r
(declare-fun Tm_arrow_50d621f6dd29f957a18e4b871df8655e () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star>


; encoding sigelt let __proj__Mkcomm_monoid__item__star


; <Skipped let __proj__Mkcomm_monoid__item__star/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp (Term Term) Term)
;;;;;;;;;;;;;;;;_: projectee.r -> _: s -> Prims.prop
(declare-fun Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: comm_monoid s -> _: projectee.r -> _: s -> Prims.prop
(declare-fun Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp>


; encoding sigelt let __proj__Mkcomm_monoid__item__interp


; <Skipped let __proj__Mkcomm_monoid__item__interp/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__laws


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__laws>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__laws (Term Term) Term)
(declare-fun Tm_refine_9dd16edcb7df2ea1fd0788b3e46e7275 (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: comm_monoid s   -> Prims.squash (associative projectee.star /\ commutative projectee.star /\         is_unit projectee.emp projectee.star)
(declare-fun Tm_arrow_222f6c6083cdbbd3c561e6de94b12e62 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__laws@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__laws>


; encoding sigelt let __proj__Mkcomm_monoid__item__laws


; <Skipped let __proj__Mkcomm_monoid__item__laws/>


; encoding sigelt let post


; <Start encoding let post>

(declare-fun OPLSS2021.ParNDSDiv.post (Term Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> c: comm_monoid s -> Type
(declare-fun Tm_arrow_eb96699fee9cb02ff700aed467da732f () Term)
(declare-fun OPLSS2021.ParNDSDiv.post@tok () Term)
;;;;;;;;;;;;;;;;_: a -> c.r
(declare-fun Tm_arrow_3e23fb80e3331b439284ca8b53071862 (Term Term Term) Term)

; </end encoding let post>


; encoding sigelt type OPLSS2021.ParNDSDiv.action


; <Start encoding type OPLSS2021.ParNDSDiv.action>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.action (Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun OPLSS2021.ParNDSDiv.action@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.Mkaction (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkaction_pre (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkaction_post (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Mkaction_sem (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun OPLSS2021.ParNDSDiv.Mkaction@base (Term Term Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ParNDSDiv.Mkaction
(declare-fun OPLSS2021.ParNDSDiv.Mkaction@tok () Term)

(declare-fun Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 (Term Term Term Term) Term)
(declare-fun Tm_refine_d0c645f82aecb95241c09d154774c502 (Term Term Term Term Term) Term)

(declare-fun Tm_abs_b60432f4f8ca408bbd12aef325b13914 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;frame: c.r -> s0: s{c.interp (c.star pre frame) s0}   -> x: a & s1: s{c.interp (c.star (post x) frame) s1}
(declare-fun Tm_arrow_2538a092842d37d4ae67882e68ec0839 (Term Term Term Term Term) Term)






;;;;;;;;;;;;;;;;pre: c.r ->     post: (_: a -> c.r) ->     sem:       (frame: c.r -> s0: s{c.interp (c.star pre frame) s0}           -> x: a & s1: s{c.interp (c.star (post x) frame) s1})   -> action c a
(declare-fun Tm_arrow_b945f5e869f7bf4cfd0a9c9aef1eb0f0 () Term)

; <start constructor OPLSS2021.ParNDSDiv.action>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.action ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
173)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.action))))

; </end constructor OPLSS2021.ParNDSDiv.action>


; <start constructor OPLSS2021.ParNDSDiv.Mkaction>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.Mkaction ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
188)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
(OPLSS2021.ParNDSDiv.Mkaction_pre __@x0)
(OPLSS2021.ParNDSDiv.Mkaction_post __@x0)
(OPLSS2021.ParNDSDiv.Mkaction_sem __@x0)))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.Mkaction))))

; </end constructor OPLSS2021.ParNDSDiv.Mkaction>








; </end encoding type OPLSS2021.ParNDSDiv.action>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: action c a -> c.r
(declare-fun Tm_arrow_fe6769363bc3cf811359b181867127d6 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre>


; encoding sigelt let __proj__Mkaction__item__pre


; <Skipped let __proj__Mkaction__item__pre/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: action c a -> _: a -> c.r
(declare-fun Tm_arrow_30da0c380f147f10b50ed7f5027b56cb () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post>


; encoding sigelt let __proj__Mkaction__item__post


; <Skipped let __proj__Mkaction__item__post/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem (Term Term Term Term) Term)


(declare-fun Tm_refine_d4bde59cd41938fd4cb119b719d24234 (Term Term Term Term Term) Term)


(declare-fun Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 (Term Term Term Term Term Term) Term)

(declare-fun Tm_abs_b14e5bc8b670136a11b2bbe277350688 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;frame: c.r -> s0: s{c.interp (c.star projectee.pre frame) s0}   -> x: a & s1: s{c.interp (c.star (projectee.post x) frame) s1}
(declare-fun Tm_arrow_f708749f23ec41af57669a9c9d0675d6 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: action c a -> frame: c.r -> s0: s{c.interp (c.star projectee.pre frame) s0}   -> x: a & s1: s{c.interp (c.star (projectee.post x) frame) s1}
(declare-fun Tm_arrow_50558fec51cb3f8e529a0dc97050e786 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok () Term)











; </end encoding val OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem>


; encoding sigelt let __proj__Mkaction__item__sem


; <Skipped let __proj__Mkaction__item__sem/>


; encoding sigelt type OPLSS2021.ParNDSDiv.m


; <Start encoding type OPLSS2021.ParNDSDiv.m>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.m (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun OPLSS2021.ParNDSDiv.m@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.Ret (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Ret_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Ret_post (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Ret_x (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun OPLSS2021.ParNDSDiv.Ret@base (Term Term Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ParNDSDiv.Ret
(declare-fun OPLSS2021.ParNDSDiv.Ret@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.Act (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Act_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Act_post (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Act_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Act_f (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Act_k (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun OPLSS2021.ParNDSDiv.Act@base (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ParNDSDiv.Act
(declare-fun OPLSS2021.ParNDSDiv.Act@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.Par (Term Term Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_pre0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_post0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_m0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_pre1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_post1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_m1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_post (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Par_k (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun OPLSS2021.ParNDSDiv.Par@base (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ParNDSDiv.Par
(declare-fun OPLSS2021.ParNDSDiv.Par@tok () Term)


;;;;;;;;;;;;;;;;x: a -> m a (post x) post
(declare-fun Tm_arrow_aa6d83fc2ae3a3e196730fee17683f7f () Term)


(declare-fun Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca (Term Term Term Term Term Term) Term)



;;;;;;;;;;;;;;;;f: action c b -> k: (x: b -> FStar.Pervasives.Dv (m a (f.post x) post)) -> m a f.pre post
(declare-fun Tm_arrow_9bb92b660a7a6ada4982e58f01a01fff () Term)
;;;;;;;;;;;;;;;;_: FStar.Universe.raise_t Prims.unit -> c.r
(declare-fun Tm_arrow_66637169be1acab937c714e5588d9266 (Term Term) Term)
(declare-fun Tm_abs_eef417df7f04bcb18767c8f35ff44e36 (Term Term Term) Term)






;;;;;;;;;;;;;;;;pre0: c.r ->     post0: c.r ->     m0: m (FStar.Universe.raise_t Prims.unit) pre0 (fun _ -> post0) ->     pre1: c.r ->     post1: c.r ->     m1: m (FStar.Universe.raise_t Prims.unit) pre1 (fun _ -> post1) ->     k: m a (c.star post0 post1) post   -> m a (c.star pre0 pre1) post
(declare-fun Tm_arrow_c1162fe0ad7d66c4c7097404342bddb4 () Term)

; <start constructor OPLSS2021.ParNDSDiv.m>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.m ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
222)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.m))))

; </end constructor OPLSS2021.ParNDSDiv.m>


; <start constructor OPLSS2021.ParNDSDiv.Ret>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.Ret ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
231)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
(OPLSS2021.ParNDSDiv.Ret_a __@x0)
(OPLSS2021.ParNDSDiv.Ret_post __@x0)
(OPLSS2021.ParNDSDiv.Ret_x __@x0)))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.Ret))))

; </end constructor OPLSS2021.ParNDSDiv.Ret>


; <start constructor OPLSS2021.ParNDSDiv.Act>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.Act ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
249)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.Act @x0
@x1
(OPLSS2021.ParNDSDiv.Act_a __@x0)
(OPLSS2021.ParNDSDiv.Act_post __@x0)
(OPLSS2021.ParNDSDiv.Act_b __@x0)
(OPLSS2021.ParNDSDiv.Act_f __@x0)
(OPLSS2021.ParNDSDiv.Act_k __@x0)))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.Act))))

; </end constructor OPLSS2021.ParNDSDiv.Act>


; <start constructor OPLSS2021.ParNDSDiv.Par>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.Par ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
269)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.Par @x0
@x1
(OPLSS2021.ParNDSDiv.Par_pre0 __@x0)
(OPLSS2021.ParNDSDiv.Par_post0 __@x0)
(OPLSS2021.ParNDSDiv.Par_m0 __@x0)
(OPLSS2021.ParNDSDiv.Par_pre1 __@x0)
(OPLSS2021.ParNDSDiv.Par_post1 __@x0)
(OPLSS2021.ParNDSDiv.Par_m1 __@x0)
(OPLSS2021.ParNDSDiv.Par_a __@x0)
(OPLSS2021.ParNDSDiv.Par_post __@x0)
(OPLSS2021.ParNDSDiv.Par_k __@x0)))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.Par))))

; </end constructor OPLSS2021.ParNDSDiv.Par>







; </end encoding type OPLSS2021.ParNDSDiv.m>


; encoding sigelt val OPLSS2021.ParNDSDiv.uu___is_Ret


; <Start encoding val OPLSS2021.ParNDSDiv.uu___is_Ret>

(declare-fun OPLSS2021.ParNDSDiv.uu___is_Ret (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: m a _ _ -> Prims.bool
(declare-fun Tm_arrow_ab96b016740a92bf7088bee769186cb0 () Term)
(declare-fun OPLSS2021.ParNDSDiv.uu___is_Ret@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.uu___is_Ret>


; encoding sigelt let uu___is_Ret


; <Skipped let uu___is_Ret/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Ret__item__a


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Ret__item__a>

(declare-fun Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 (Term Term Term Term Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Ret__item__a (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Ret? _} -> Type
(declare-fun Tm_arrow_91e6d94965bc8a00aeded3d897e2649c () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Ret__item__a@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Ret__item__a>

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
;;;;;;;;;;;;;;;;typing_Tm_abs_eef417df7f04bcb18767c8f35ff44e36
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,20-98,25); use=OPLSS2021.ParNDSDiv.fst(98,69-98,74)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x0
@x1
@x2)
(Tm_arrow_66637169be1acab937c714e5588d9266 @x1
@x2))
 

:pattern ((Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x0
@x1
@x2))
:qid typing_Tm_abs_eef417df7f04bcb18767c8f35ff44e36))

:named typing_Tm_abs_eef417df7f04bcb18767c8f35ff44e36))
;;;;;;;;;;;;;;;;typing_Tm_abs_b60432f4f8ca408bbd12aef325b13914
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_b60432f4f8ca408bbd12aef325b13914 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x4))
 

:pattern ((Tm_abs_b60432f4f8ca408bbd12aef325b13914 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_b60432f4f8ca408bbd12aef325b13914))

:named typing_Tm_abs_b60432f4f8ca408bbd12aef325b13914))
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
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named typing_Prims.prop))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.uu___is_Ret; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5)
Prims.bool))
 

:pattern ((OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.uu___is_Ret))

:named typing_OPLSS2021.ParNDSDiv.uu___is_Ret))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,4-63,8); use=OPLSS2021.ParNDSDiv.fst(63,4-63,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x0)))
(HasType (OPLSS2021.ParNDSDiv.post @x0
@x1
@x2)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.post @x0
@x1
@x2))
:qid typing_OPLSS2021.ParNDSDiv.post))

:named typing_OPLSS2021.ParNDSDiv.post))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.is_unit; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(44,4-44,11); use=OPLSS2021.ParNDSDiv.fst(44,4-44,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0)
(HasType @x2
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)))
(HasType (OPLSS2021.ParNDSDiv.is_unit @x0
@x1
@x2)
Prims.logical))
 

:pattern ((OPLSS2021.ParNDSDiv.is_unit @x0
@x1
@x2))
:qid typing_OPLSS2021.ParNDSDiv.is_unit))

:named typing_OPLSS2021.ParNDSDiv.is_unit))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.commutative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(41,4-41,15); use=OPLSS2021.ParNDSDiv.fst(41,4-41,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)))
(HasType (OPLSS2021.ParNDSDiv.commutative @x0
@x1)
Prims.logical))
 

:pattern ((OPLSS2021.ParNDSDiv.commutative @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.commutative))

:named typing_OPLSS2021.ParNDSDiv.commutative))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.associative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(38,4-38,15); use=OPLSS2021.ParNDSDiv.fst(38,4-38,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)))
(HasType (OPLSS2021.ParNDSDiv.associative @x0
@x1)
Prims.logical))
 

:pattern ((OPLSS2021.ParNDSDiv.associative @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.associative))

:named typing_OPLSS2021.ParNDSDiv.associative))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(57,2-57,6); use=OPLSS2021.ParNDSDiv.fst(57,2-57,6)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x0
@x1)
(Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x1
@x0)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(55,2-55,3); use=OPLSS2021.ParNDSDiv.fst(55,2-55,3)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(58,2-58,8); use=OPLSS2021.ParNDSDiv.fst(58,2-58,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x0
@x1)
(Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x1
@x0)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(76,3-76,6); use=OPLSS2021.ParNDSDiv.fst(76,3-76,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Universe.raise_t; Namespace FStar.Universe
(assert (! 
;; def=FStar.Universe.fsti(25,4-25,11); use=FStar.Universe.fsti(25,4-25,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Universe.raise_t @x0)
Tm_type))
 

:pattern ((FStar.Universe.raise_t @x0))
:qid typing_FStar.Universe.raise_t))

:named typing_FStar.Universe.raise_t))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1)
@x2)
@x3)
@x4))

:pattern ((OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))
:qid token_correspondence_OPLSS2021.ParNDSDiv.m@tok))

:named token_correspondence_OPLSS2021.ParNDSDiv.m@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term))
 (! (= (ApplyTT OPLSS2021.ParNDSDiv.comm_monoid@tok
@x0)
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
 

:pattern ((ApplyTT OPLSS2021.ParNDSDiv.comm_monoid@tok
@x0))

:pattern ((OPLSS2021.ParNDSDiv.comm_monoid @x0))
:qid token_correspondence_OPLSS2021.ParNDSDiv.comm_monoid@tok))

:named token_correspondence_OPLSS2021.ParNDSDiv.comm_monoid@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.action@tok
@x0)
@x1)
@x2)
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.action@tok
@x0)
@x1)
@x2))

:pattern ((OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
:qid token_correspondence_OPLSS2021.ParNDSDiv.action@tok))

:named token_correspondence_OPLSS2021.ParNDSDiv.action@tok))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(57,2-57,6); use=OPLSS2021.ParNDSDiv.fst(57,2-57,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1))
:qid token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star))

:named token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(58,2-58,8); use=OPLSS2021.ParNDSDiv.fst(58,2-58,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1))
:qid token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp))

:named token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x6
@x7
@x8
@x9
@x10))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x6
@x7
@x8
@x9
@x10)))
:qid subterm_ordering_OPLSS2021.ParNDSDiv.Ret))

:named subterm_ordering_OPLSS2021.ParNDSDiv.Ret))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term) (@x15 Term) (@x16 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
(OPLSS2021.ParNDSDiv.m @x12
@x13
@x14
@x15
@x16))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x7
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x8
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x9
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x10
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x11
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
(OPLSS2021.ParNDSDiv.m @x12
@x13
@x14
@x15
@x16)))
:qid subterm_ordering_OPLSS2021.ParNDSDiv.Par))

:named subterm_ordering_OPLSS2021.ParNDSDiv.Par))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.comm_monoid @x7))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.comm_monoid @x7)))
:qid subterm_ordering_OPLSS2021.ParNDSDiv.Mkcomm_monoid))

:named subterm_ordering_OPLSS2021.ParNDSDiv.Mkcomm_monoid))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.action @x7
@x8
@x9))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.action @x7
@x8
@x9)))
:qid subterm_ordering_OPLSS2021.ParNDSDiv.Mkaction))

:named subterm_ordering_OPLSS2021.ParNDSDiv.Mkaction))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(OPLSS2021.ParNDSDiv.m @x8
@x9
@x10
@x11
@x12))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x7
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(OPLSS2021.ParNDSDiv.m @x8
@x9
@x10
@x11
@x12)))
:qid subterm_ordering_OPLSS2021.ParNDSDiv.Act))

:named subterm_ordering_OPLSS2021.ParNDSDiv.Act))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_d0c645f82aecb95241c09d154774c502 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_d0c645f82aecb95241c09d154774c502 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_d0c645f82aecb95241c09d154774c502))

:named refinement_kinding_Tm_refine_d0c645f82aecb95241c09d154774c502))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Ret__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88))

:named refinement_kinding_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(59,15-59,73); use=OPLSS2021.ParNDSDiv.fst(59,15-59,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_761f4edd49a1818dd8f251cfd090463a @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_761f4edd49a1818dd8f251cfd090463a @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_761f4edd49a1818dd8f251cfd090463a))

:named refinement_kinding_Tm_refine_761f4edd49a1818dd8f251cfd090463a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(79,9-79,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8))

:named refinement_kinding_Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d0c645f82aecb95241c09d154774c502 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(80,21-80,56)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(80,21-80,56)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT @x4
@x5))
@x6))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d0c645f82aecb95241c09d154774c502 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_d0c645f82aecb95241c09d154774c502))

:named refinement_interpretation_Tm_refine_d0c645f82aecb95241c09d154774c502))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Ret__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6))

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x2
@x3
@x4
@x5
@x6
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88))

:named refinement_interpretation_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(59,15-59,73); use=OPLSS2021.ParNDSDiv.fst(59,15-59,73)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_761f4edd49a1818dd8f251cfd090463a @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(59,16-59,32); use=OPLSS2021.ParNDSDiv.fst(59,16-59,32)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(59,16-59,32); use=OPLSS2021.ParNDSDiv.fst(59,16-59,32)
(OPLSS2021.ParNDSDiv.associative @x2
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(59,36-59,52); use=OPLSS2021.ParNDSDiv.fst(59,36-59,52)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(59,36-59,52); use=OPLSS2021.ParNDSDiv.fst(59,36-59,52)
(OPLSS2021.ParNDSDiv.commutative @x2
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(59,56-59,72); use=OPLSS2021.ParNDSDiv.fst(59,56-59,72)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(59,56-59,72); use=OPLSS2021.ParNDSDiv.fst(59,56-59,72)
(OPLSS2021.ParNDSDiv.is_unit @x2
@x4
@x3)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_761f4edd49a1818dd8f251cfd090463a @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_761f4edd49a1818dd8f251cfd090463a))

:named refinement_interpretation_Tm_refine_761f4edd49a1818dd8f251cfd090463a))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(79,9-79,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(79,14-79,44)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(79,14-79,44)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
@x4)
@x5))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8))

:named refinement_interpretation_Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ParNDSDiv.Ret_x (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
@x4)
 

:pattern ((OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Ret_x))

:named projection_inverse_OPLSS2021.ParNDSDiv.Ret_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ParNDSDiv.Ret_post (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
@x3)
 

:pattern ((OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Ret_post))

:named projection_inverse_OPLSS2021.ParNDSDiv.Ret_post))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ParNDSDiv.Ret_a (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
@x2)
 

:pattern ((OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Ret_a))

:named projection_inverse_OPLSS2021.ParNDSDiv.Ret_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_pre1 (OPLSS2021.ParNDSDiv.Par @x0
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
@x5)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_pre1))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_pre1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_pre0 (OPLSS2021.ParNDSDiv.Par @x0
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
@x2)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_pre0))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_pre0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_post1 (OPLSS2021.ParNDSDiv.Par @x0
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
@x6)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_post1))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_post1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_post0 (OPLSS2021.ParNDSDiv.Par @x0
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
@x3)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_post0))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_post0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_post (OPLSS2021.ParNDSDiv.Par @x0
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
@x9)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_post))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_post))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_m1 (OPLSS2021.ParNDSDiv.Par @x0
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
@x7)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_m1))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_m1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_m0 (OPLSS2021.ParNDSDiv.Par @x0
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
@x4)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_m0))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_m0))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_k (OPLSS2021.ParNDSDiv.Par @x0
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
@x10)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_k))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_k))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= (OPLSS2021.ParNDSDiv.Par_a (OPLSS2021.ParNDSDiv.Par @x0
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
@x8)
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid projection_inverse_OPLSS2021.ParNDSDiv.Par_a))

:named projection_inverse_OPLSS2021.ParNDSDiv.Par_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkcomm_monoid_star (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
@x3)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkcomm_monoid_s (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
@x0)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_s))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_s))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkcomm_monoid_r (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
@x1)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkcomm_monoid_laws (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
@x5)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_laws))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_laws))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
@x4)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
@x2)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkaction_sem (OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
@x5)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_sem))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_sem))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkaction_pre (OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
@x3)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_pre))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_pre))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.Mkaction_post (OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
@x4)
 

:pattern ((OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_post))

:named projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_post))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (OPLSS2021.ParNDSDiv.Act_post (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x3)
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Act_post))

:named projection_inverse_OPLSS2021.ParNDSDiv.Act_post))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (OPLSS2021.ParNDSDiv.Act_k (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x6)
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Act_k))

:named projection_inverse_OPLSS2021.ParNDSDiv.Act_k))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (OPLSS2021.ParNDSDiv.Act_f (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x5)
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Act_f))

:named projection_inverse_OPLSS2021.ParNDSDiv.Act_f))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (OPLSS2021.ParNDSDiv.Act_b (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x4)
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Act_b))

:named projection_inverse_OPLSS2021.ParNDSDiv.Act_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (OPLSS2021.ParNDSDiv.Act_a (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
@x2)
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Act_a))

:named projection_inverse_OPLSS2021.ParNDSDiv.Act_a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(57,2-57,6); use=OPLSS2021.ParNDSDiv.fst(57,2-57,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x0
@x1)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_star @x1))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x0
@x1))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(55,2-55,3); use=OPLSS2021.ParNDSDiv.fst(55,2-55,3)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_r @x1))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(58,2-58,8); use=OPLSS2021.ParNDSDiv.fst(58,2-58,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x0
@x1)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp @x1))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x0
@x1))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(76,3-76,6); use=OPLSS2021.ParNDSDiv.fst(76,3-76,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3)
(OPLSS2021.ParNDSDiv.Mkaction_pre @x3))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkaction_pre))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkaction_pre))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.dtuple2@tok))
:named pre_kinding_Prims.dtuple2@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! (is-Tm_arrow (PreType OPLSS2021.ParNDSDiv.m@tok))
:named pre_kinding_OPLSS2021.ParNDSDiv.m@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! (is-Tm_arrow (PreType OPLSS2021.ParNDSDiv.comm_monoid@tok))
:named pre_kinding_OPLSS2021.ParNDSDiv.comm_monoid@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! (is-Tm_arrow (PreType OPLSS2021.ParNDSDiv.action@tok))
:named pre_kinding_OPLSS2021.ParNDSDiv.action@tok))
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,39-97,96); use=OPLSS2021.ParNDSDiv.fst(97,67-97,96)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca))

:named non_total_function_typing_Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe))

:named kinding_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,18-58,24); use=OPLSS2021.ParNDSDiv.fst(58,10-58,24)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189))

:named kinding_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f
Tm_type)
:named kinding_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_72ac2ec523211f8603e00b25deb1543b
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.associative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(38,17-38,18); use=OPLSS2021.ParNDSDiv.fst(38,23-38,34)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)
Tm_type))
:qid kinding_Tm_arrow_72ac2ec523211f8603e00b25deb1543b))

:named kinding_Tm_arrow_72ac2ec523211f8603e00b25deb1543b))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_66637169be1acab937c714e5588d9266
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,39-98,53); use=OPLSS2021.ParNDSDiv.fst(63,39-98,36)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_66637169be1acab937c714e5588d9266 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_66637169be1acab937c714e5588d9266 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_66637169be1acab937c714e5588d9266))

:named kinding_Tm_arrow_66637169be1acab937c714e5588d9266))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_50d621f6dd29f957a18e4b871df8655e
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_arrow_50d621f6dd29f957a18e4b871df8655e
Tm_type)
:named kinding_Tm_arrow_50d621f6dd29f957a18e4b871df8655e))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3e23fb80e3331b439284ca8b53071862
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,12-63,42); use=OPLSS2021.ParNDSDiv.fst(63,34-63,42)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_3e23fb80e3331b439284ca8b53071862))

:named kinding_Tm_arrow_3e23fb80e3331b439284ca8b53071862))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2538a092842d37d4ae67882e68ec0839
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid kinding_Tm_arrow_2538a092842d37d4ae67882e68ec0839))

:named kinding_Tm_arrow_2538a092842d37d4ae67882e68ec0839))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3))

:named kinding_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! (and (IsTotFun OPLSS2021.ParNDSDiv.m@tok)

;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0))
 

:pattern ((ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0))
:qid kinding_OPLSS2021.ParNDSDiv.m@tok))


;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1))
:qid kinding_OPLSS2021.ParNDSDiv.m@tok.1))


;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (IsTotFun (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1)
@x2))
:qid kinding_OPLSS2021.ParNDSDiv.m@tok.2))


;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (IsTotFun (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1)
@x2)
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.m@tok
@x0)
@x1)
@x2)
@x3))
:qid kinding_OPLSS2021.ParNDSDiv.m@tok.3))


;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1)))
(HasType (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))
:qid kinding_OPLSS2021.ParNDSDiv.m@tok.4))
)
:named kinding_OPLSS2021.ParNDSDiv.m@tok))
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! (and (IsTotFun OPLSS2021.ParNDSDiv.comm_monoid@tok)

;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (OPLSS2021.ParNDSDiv.comm_monoid @x0)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.comm_monoid @x0))
:qid kinding_OPLSS2021.ParNDSDiv.comm_monoid@tok))
)
:named kinding_OPLSS2021.ParNDSDiv.comm_monoid@tok))
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! (and (IsTotFun OPLSS2021.ParNDSDiv.action@tok)

;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT OPLSS2021.ParNDSDiv.action@tok
@x0))
 

:pattern ((ApplyTT OPLSS2021.ParNDSDiv.action@tok
@x0))
:qid kinding_OPLSS2021.ParNDSDiv.action@tok))


;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.action@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.action@tok
@x0)
@x1))
:qid kinding_OPLSS2021.ParNDSDiv.action@tok.1))


;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type))
(HasType (OPLSS2021.ParNDSDiv.action @x0
@x1
@x2)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
:qid kinding_OPLSS2021.ParNDSDiv.action@tok.2))
)
:named kinding_OPLSS2021.ParNDSDiv.action@tok))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_eef417df7f04bcb18767c8f35ff44e36
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,20-98,25); use=OPLSS2021.ParNDSDiv.fst(98,69-98,74)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x1
@x2
@x3)
@x0)
@x1)
 

:pattern ((ApplyTT (Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_eef417df7f04bcb18767c8f35ff44e36))

:named interpretation_Tm_abs_eef417df7f04bcb18767c8f35ff44e36))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b60432f4f8ca408bbd12aef325b13914
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_b60432f4f8ca408bbd12aef325b13914 @x1
@x2
@x3
@x4
@x5)
@x0)
(Tm_refine_d0c645f82aecb95241c09d154774c502 @x1
@x2
@x3
@x0
@x4))
 

:pattern ((ApplyTT (Tm_abs_b60432f4f8ca408bbd12aef325b13914 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_b60432f4f8ca408bbd12aef325b13914))

:named interpretation_Tm_abs_b60432f4f8ca408bbd12aef325b13914))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d0c645f82aecb95241c09d154774c502
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d0c645f82aecb95241c09d154774c502 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d0c645f82aecb95241c09d154774c502 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_d0c645f82aecb95241c09d154774c502))

:named haseqTm_refine_d0c645f82aecb95241c09d154774c502))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7a12f95d7504f0b959ef9d16756ecc88
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Ret__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_7a12f95d7504f0b959ef9d16756ecc88))

:named haseqTm_refine_7a12f95d7504f0b959ef9d16756ecc88))
;;;;;;;;;;;;;;;;haseq for Tm_refine_761f4edd49a1818dd8f251cfd090463a
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(59,15-59,73); use=OPLSS2021.ParNDSDiv.fst(59,15-59,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_761f4edd49a1818dd8f251cfd090463a @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_761f4edd49a1818dd8f251cfd090463a @x0
@x1
@x2))))
:qid haseqTm_refine_761f4edd49a1818dd8f251cfd090463a))

:named haseqTm_refine_761f4edd49a1818dd8f251cfd090463a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(79,9-79,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_5e91f50d8d593f2b48418e30fa5c43c8))

:named haseqTm_refine_5e91f50d8d593f2b48418e30fa5c43c8))
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
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named function_token_typing_Prims.prop))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(57,2-57,6); use=OPLSS2021.ParNDSDiv.fst(57,2-57,6)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
Tm_arrow_50d621f6dd29f957a18e4b871df8655e))

;; def=OPLSS2021.ParNDSDiv.fst(57,2-57,6); use=OPLSS2021.ParNDSDiv.fst(57,2-57,6)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x1)
@x2)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x1
@x2))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star @x1
@x2))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star))

:named function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(58,2-58,8); use=OPLSS2021.ParNDSDiv.fst(58,2-58,8)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))

;; def=OPLSS2021.ParNDSDiv.fst(58,2-58,8); use=OPLSS2021.ParNDSDiv.fst(58,2-58,8)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x1)
@x2)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x1
@x2))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp @x1
@x2))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp))

:named function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6))
(or (is-OPLSS2021.ParNDSDiv.Ret @x1)
(is-OPLSS2021.ParNDSDiv.Act @x1)
(is-OPLSS2021.ParNDSDiv.Par @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6)))
:qid fuel_guarded_inversion_OPLSS2021.ParNDSDiv.m))

:named fuel_guarded_inversion_OPLSS2021.ParNDSDiv.m))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.comm_monoid @x2))
(and (is-OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1)
(= @x2
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_s @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.comm_monoid @x2)))
:qid fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid))

:named fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.action @x2
@x3
@x4))
(is-OPLSS2021.ParNDSDiv.Mkaction @x1))
 

:pattern ((HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.action @x2
@x3
@x4)))
:qid fuel_guarded_inversion_OPLSS2021.ParNDSDiv.action))

:named fuel_guarded_inversion_OPLSS2021.ParNDSDiv.action))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.dtuple2; Namespace Prims; Name Prims.Mkdtuple2; Namespace Prims
(assert (! (= 259
(Term_constr_id Prims.dtuple2@tok))
:named fresh_token_Prims.dtuple2@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! (= 223
(Term_constr_id OPLSS2021.ParNDSDiv.m@tok))
:named fresh_token_OPLSS2021.ParNDSDiv.m@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! (= 129
(Term_constr_id OPLSS2021.ParNDSDiv.comm_monoid@tok))
:named fresh_token_OPLSS2021.ParNDSDiv.comm_monoid@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! (= 174
(Term_constr_id OPLSS2021.ParNDSDiv.action@tok))
:named fresh_token_OPLSS2021.ParNDSDiv.action@tok))
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
;;;;;;;;;;;;;;;;Equation for Prims.prop
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (= Prims.prop
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf)
:named equation_Prims.prop))
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
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.post
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,4-63,8); use=OPLSS2021.ParNDSDiv.fst(63,4-63,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.ParNDSDiv.post @x0
@x1
@x2)
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x0
@x1))
 

:pattern ((OPLSS2021.ParNDSDiv.post @x0
@x1
@x2))
:qid equation_OPLSS2021.ParNDSDiv.post))

:named equation_OPLSS2021.ParNDSDiv.post))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.is_unit
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.is_unit; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(44,4-44,11); use=OPLSS2021.ParNDSDiv.fst(44,4-44,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (OPLSS2021.ParNDSDiv.is_unit @x0
@x1
@x2))

;; def=OPLSS2021.ParNDSDiv.fst(45,2-45,36); use=OPLSS2021.ParNDSDiv.fst(45,2-45,36)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(45,12-45,36); use=OPLSS2021.ParNDSDiv.fst(45,12-45,36)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(45,12-45,22); use=OPLSS2021.ParNDSDiv.fst(45,12-45,22)
(= (ApplyTT (ApplyTT @x2
@x1)
@x3)
@x3)


;; def=OPLSS2021.ParNDSDiv.fst(45,26-45,36); use=OPLSS2021.ParNDSDiv.fst(45,26-45,36)
(= (ApplyTT (ApplyTT @x2
@x3)
@x1)
@x3)
)
)
 
;;no pats
:qid equation_OPLSS2021.ParNDSDiv.is_unit.1))
)
 

:pattern ((OPLSS2021.ParNDSDiv.is_unit @x0
@x1
@x2))
:qid equation_OPLSS2021.ParNDSDiv.is_unit))

:named equation_OPLSS2021.ParNDSDiv.is_unit))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.commutative
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.commutative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(41,4-41,15); use=OPLSS2021.ParNDSDiv.fst(41,4-41,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (OPLSS2021.ParNDSDiv.commutative @x0
@x1))

;; def=OPLSS2021.ParNDSDiv.fst(42,2-42,28); use=OPLSS2021.ParNDSDiv.fst(42,2-42,28)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(42,14-42,28); use=OPLSS2021.ParNDSDiv.fst(42,14-42,28)
(= (ApplyTT (ApplyTT @x1
@x2)
@x3)
(ApplyTT (ApplyTT @x1
@x3)
@x2))
)
 
;;no pats
:qid equation_OPLSS2021.ParNDSDiv.commutative.1))
)
 

:pattern ((OPLSS2021.ParNDSDiv.commutative @x0
@x1))
:qid equation_OPLSS2021.ParNDSDiv.commutative))

:named equation_OPLSS2021.ParNDSDiv.commutative))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.associative
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.associative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(38,4-38,15); use=OPLSS2021.ParNDSDiv.fst(38,4-38,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (OPLSS2021.ParNDSDiv.associative @x0
@x1))

;; def=OPLSS2021.ParNDSDiv.fst(39,2-39,42); use=OPLSS2021.ParNDSDiv.fst(39,2-39,42)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x0)
(HasType @x4
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(39,16-39,42); use=OPLSS2021.ParNDSDiv.fst(39,16-39,42)
(= (ApplyTT (ApplyTT @x1
@x2)
(ApplyTT (ApplyTT @x1
@x3)
@x4))
(ApplyTT (ApplyTT @x1
(ApplyTT (ApplyTT @x1
@x2)
@x3))
@x4))
)
 
;;no pats
:qid equation_OPLSS2021.ParNDSDiv.associative.1))
)
 

:pattern ((OPLSS2021.ParNDSDiv.associative @x0
@x1))
:qid equation_OPLSS2021.ParNDSDiv.associative))

:named equation_OPLSS2021.ParNDSDiv.associative))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.uu___is_Ret; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5)
(BoxBool (is-OPLSS2021.ParNDSDiv.Ret @x5)))
 

:pattern ((OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5))
:qid disc_equation_OPLSS2021.ParNDSDiv.Ret))

:named disc_equation_OPLSS2021.ParNDSDiv.Ret))
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
;;;;;;;;;;;;;;;;Prop-typing for OPLSS2021.ParNDSDiv.is_unit
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.is_unit; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(44,4-44,11); use=OPLSS2021.ParNDSDiv.fst(44,4-44,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0)
(HasType @x2
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)))
(Valid (Prims.subtype_of (OPLSS2021.ParNDSDiv.is_unit @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (OPLSS2021.ParNDSDiv.is_unit @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_OPLSS2021.ParNDSDiv.is_unit))

:named defn_equation_OPLSS2021.ParNDSDiv.is_unit))
;;;;;;;;;;;;;;;;Prop-typing for OPLSS2021.ParNDSDiv.commutative
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.commutative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(41,4-41,15); use=OPLSS2021.ParNDSDiv.fst(41,4-41,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)))
(Valid (Prims.subtype_of (OPLSS2021.ParNDSDiv.commutative @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (OPLSS2021.ParNDSDiv.commutative @x0
@x1)
Prims.unit))
:qid defn_equation_OPLSS2021.ParNDSDiv.commutative))

:named defn_equation_OPLSS2021.ParNDSDiv.commutative))
;;;;;;;;;;;;;;;;Prop-typing for OPLSS2021.ParNDSDiv.associative
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.associative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(38,4-38,15); use=OPLSS2021.ParNDSDiv.fst(38,4-38,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x0)))
(Valid (Prims.subtype_of (OPLSS2021.ParNDSDiv.associative @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (OPLSS2021.ParNDSDiv.associative @x0
@x1)
Prims.unit))
:qid defn_equation_OPLSS2021.ParNDSDiv.associative))

:named defn_equation_OPLSS2021.ParNDSDiv.associative))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3))
(HasTypeFuel @u0
@x5
@x3)
(= @x3
@x6)
(= (ApplyTT @x4
@x5)
@x7)
(= @x4
@x8))
(HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x6
@x7
@x8)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x6
@x7
@x8)))
:qid data_typing_intro_OPLSS2021.ParNDSDiv.Ret@tok))

:named data_typing_intro_OPLSS2021.ParNDSDiv.Ret@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasTypeFuel @u0
@x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x5
(OPLSS2021.ParNDSDiv.m @x1
@x2
(FStar.Universe.raise_t Prims.unit)
@x3
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x4
@x2
@x1)))
(HasTypeFuel @u0
@x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x8
(OPLSS2021.ParNDSDiv.m @x1
@x2
(FStar.Universe.raise_t Prims.unit)
@x6
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x7
@x2
@x1)))
(HasTypeFuel @u0
@x9
Tm_type)
(HasTypeFuel @u0
@x10
(OPLSS2021.ParNDSDiv.post @x1
@x9
@x2))
(HasTypeFuel @u0
@x11
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x9
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x1)
@x2)
@x4)
@x7)
@x10))
(= @x9
@x12)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x1)
@x2)
@x3)
@x6)
@x13)
(= @x10
@x14))
(HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x12
@x13
@x14)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x12
@x13
@x14)))
:qid data_typing_intro_OPLSS2021.ParNDSDiv.Par@tok))

:named data_typing_intro_OPLSS2021.ParNDSDiv.Par@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
@x2)
(HasTypeFuel @u0
@x4
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x2))
(HasTypeFuel @u0
@x5
(Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x1
@x2))
(HasTypeFuel @u0
@x6
(Tm_refine_761f4edd49a1818dd8f251cfd090463a @x2
@x4
@x3)))
(HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.comm_monoid @x1)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.comm_monoid @x1)))
:qid data_typing_intro_OPLSS2021.ParNDSDiv.Mkcomm_monoid@tok))

:named data_typing_intro_OPLSS2021.ParNDSDiv.Mkcomm_monoid@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3))
(HasTypeFuel @u0
@x6
(Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x5
@x3
@x4
@x2
@x1)))
(HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x3)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x3)))
:qid data_typing_intro_OPLSS2021.ParNDSDiv.Mkaction@tok))

:named data_typing_intro_OPLSS2021.ParNDSDiv.Mkaction@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3))
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x5))
(HasTypeFuel @u0
@x7
(Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca @x5
@x1
@x2
@x3
@x6
@x4))
(= @x3
@x8)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x1
@x2
@x5
@x6)
@x9)
(= @x4
@x10))
(HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x8
@x9
@x10)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x8
@x9
@x10)))
:qid data_typing_intro_OPLSS2021.ParNDSDiv.Act@tok))

:named data_typing_intro_OPLSS2021.ParNDSDiv.Act@tok))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x6
@x7
@x8
@x9
@x10))
(and (= @x4
@x10)
(= (ApplyTT @x4
@x5)
@x9)
(= @x3
@x8)
(HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x7
(OPLSS2021.ParNDSDiv.comm_monoid @x6))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x7
@x6
@x3))
(HasTypeFuel @u0
@x5
@x3)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Ret @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x6
@x7
@x8
@x9
@x10)))
:qid data_elim_OPLSS2021.ParNDSDiv.Ret))

:named data_elim_OPLSS2021.ParNDSDiv.Ret))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term) (@x15 Term) (@x16 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
(OPLSS2021.ParNDSDiv.m @x12
@x13
@x14
@x15
@x16))
(and (= @x10
@x16)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x12)
@x13)
@x3)
@x6)
@x15)
(= @x9
@x14)
(HasTypeFuel @u0
@x12
Tm_type)
(HasTypeFuel @u0
@x13
(OPLSS2021.ParNDSDiv.comm_monoid @x12))
(HasTypeFuel @u0
@x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x12
@x13))
(HasTypeFuel @u0
@x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x12
@x13))
(HasTypeFuel @u0
@x5
(OPLSS2021.ParNDSDiv.m @x12
@x13
(FStar.Universe.raise_t Prims.unit)
@x3
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x4
@x13
@x12)))
(HasTypeFuel @u0
@x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x12
@x13))
(HasTypeFuel @u0
@x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x12
@x13))
(HasTypeFuel @u0
@x8
(OPLSS2021.ParNDSDiv.m @x12
@x13
(FStar.Universe.raise_t Prims.unit)
@x6
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x7
@x13
@x12)))
(HasTypeFuel @u0
@x9
Tm_type)
(HasTypeFuel @u0
@x10
(OPLSS2021.ParNDSDiv.post @x12
@x9
@x13))
(HasTypeFuel @u0
@x11
(OPLSS2021.ParNDSDiv.m @x12
@x13
@x9
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x12)
@x13)
@x4)
@x7)
@x10))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Par @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10
@x11)
(OPLSS2021.ParNDSDiv.m @x12
@x13
@x14
@x15
@x16)))
:qid data_elim_OPLSS2021.ParNDSDiv.Par))

:named data_elim_OPLSS2021.ParNDSDiv.Par))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.comm_monoid @x7))
(and (HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
@x2)
(HasTypeFuel @u0
@x4
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x2))
(HasTypeFuel @u0
@x5
(Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x7
@x2))
(HasTypeFuel @u0
@x6
(Tm_refine_761f4edd49a1818dd8f251cfd090463a @x2
@x4
@x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.comm_monoid @x7)))
:qid data_elim_OPLSS2021.ParNDSDiv.Mkcomm_monoid))

:named data_elim_OPLSS2021.ParNDSDiv.Mkcomm_monoid))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.action @x7
@x8
@x9))
(and (HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x8
(OPLSS2021.ParNDSDiv.comm_monoid @x7))
(HasTypeFuel @u0
@x9
Tm_type)
(HasTypeFuel @u0
@x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x7
@x8))
(HasTypeFuel @u0
@x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x8
@x7
@x9))
(HasTypeFuel @u0
@x6
(Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x5
@x9
@x4
@x8
@x7))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Mkaction @x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.action @x7
@x8
@x9)))
:qid data_elim_OPLSS2021.ParNDSDiv.Mkaction))

:named data_elim_OPLSS2021.ParNDSDiv.Mkaction))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(OPLSS2021.ParNDSDiv.m @x8
@x9
@x10
@x11
@x12))
(and (= @x4
@x12)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x8
@x9
@x5
@x6)
@x11)
(= @x3
@x10)
(HasTypeFuel @u0
@x8
Tm_type)
(HasTypeFuel @u0
@x9
(OPLSS2021.ParNDSDiv.comm_monoid @x8))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x9
@x8
@x3))
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
(OPLSS2021.ParNDSDiv.action @x8
@x9
@x5))
(HasTypeFuel @u0
@x7
(Non_total_Tm_arrow_18e12aec587aee2edc0076e330b129ca @x5
@x8
@x9
@x3
@x6
@x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Act @x1
@x2
@x3
@x4
@x5
@x6
@x7)
(OPLSS2021.ParNDSDiv.m @x8
@x9
@x10
@x11
@x12)))
:qid data_elim_OPLSS2021.ParNDSDiv.Act))

:named data_elim_OPLSS2021.ParNDSDiv.Act))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 222
(Term_constr_id (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.m))

:named constructor_distinct_OPLSS2021.ParNDSDiv.m))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term))
 (! (= 128
(Term_constr_id (OPLSS2021.ParNDSDiv.comm_monoid @x0)))
 

:pattern ((OPLSS2021.ParNDSDiv.comm_monoid @x0))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.comm_monoid))

:named constructor_distinct_OPLSS2021.ParNDSDiv.comm_monoid))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 173
(Term_constr_id (OPLSS2021.ParNDSDiv.action @x0
@x1
@x2)))
 

:pattern ((OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.action))

:named constructor_distinct_OPLSS2021.ParNDSDiv.action))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 231
(Term_constr_id (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.Ret))

:named constructor_distinct_OPLSS2021.ParNDSDiv.Ret))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (= 269
(Term_constr_id (OPLSS2021.ParNDSDiv.Par @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10)))
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid constructor_distinct_OPLSS2021.ParNDSDiv.Par))

:named constructor_distinct_OPLSS2021.ParNDSDiv.Par))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= 140
(Term_constr_id (OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5)))
 

:pattern ((OPLSS2021.ParNDSDiv.Mkcomm_monoid @x0
@x1
@x2
@x3
@x4
@x5))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.Mkcomm_monoid))

:named constructor_distinct_OPLSS2021.ParNDSDiv.Mkcomm_monoid))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= 188
(Term_constr_id (OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5)))
 

:pattern ((OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.Mkaction))

:named constructor_distinct_OPLSS2021.ParNDSDiv.Mkaction))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= 249
(Term_constr_id (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.Act))

:named constructor_distinct_OPLSS2021.ParNDSDiv.Act))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (is-OPLSS2021.ParNDSDiv.Ret (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
(= (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4)
(OPLSS2021.ParNDSDiv.Ret@base @x2
@x3
@x4)))
 

:pattern ((OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
@x3
@x4))
:qid constructor_base_OPLSS2021.ParNDSDiv.Ret))

:named constructor_base_OPLSS2021.ParNDSDiv.Ret))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term))
 (! (implies (is-OPLSS2021.ParNDSDiv.Par (OPLSS2021.ParNDSDiv.Par @x0
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
(= (OPLSS2021.ParNDSDiv.Par @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10)
(OPLSS2021.ParNDSDiv.Par@base @x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9
@x10)))
 

:pattern ((OPLSS2021.ParNDSDiv.Par @x0
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
:qid constructor_base_OPLSS2021.ParNDSDiv.Par))

:named constructor_base_OPLSS2021.ParNDSDiv.Par))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (is-OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
(= (OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Mkaction@base @x3
@x4
@x5)))
 

:pattern ((OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
@x3
@x4
@x5))
:qid constructor_base_OPLSS2021.ParNDSDiv.Mkaction))

:named constructor_base_OPLSS2021.ParNDSDiv.Mkaction))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (is-OPLSS2021.ParNDSDiv.Act (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
(= (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(OPLSS2021.ParNDSDiv.Act@base @x2
@x3
@x4
@x5
@x6)))
 

:pattern ((OPLSS2021.ParNDSDiv.Act @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid constructor_base_OPLSS2021.ParNDSDiv.Act))

:named constructor_base_OPLSS2021.ParNDSDiv.Act))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.comm_monoid @x2))
(= (OPLSS2021.ParNDSDiv.comm_monoid @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.comm_monoid @x2)))
:qid OPLSS2021.ParNDSDiv_pretyping_d612dfdbd5d811c7851885ba648df0b4))

:named OPLSS2021.ParNDSDiv_pretyping_d612dfdbd5d811c7851885ba648df0b4))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(95,5-95,6); use=OPLSS2021.ParNDSDiv.fst(95,5-95,6)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6))
(= (Term_constr_id (OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6)))
:qid OPLSS2021.ParNDSDiv_pretyping_9c16499a404777a84db755adda69314b))

:named OPLSS2021.ParNDSDiv_pretyping_9c16499a404777a84db755adda69314b))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(75,5-75,11); use=OPLSS2021.ParNDSDiv.fst(75,5-75,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.action @x2
@x3
@x4))
(= (Term_constr_id (OPLSS2021.ParNDSDiv.action @x2
@x3
@x4))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.action @x2
@x3
@x4)))
:qid OPLSS2021.ParNDSDiv_pretyping_4810a18adff71630adb93272dc9cf342))

:named OPLSS2021.ParNDSDiv_pretyping_4810a18adff71630adb93272dc9cf342))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x2
@x3)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,18-58,24); use=OPLSS2021.ParNDSDiv.fst(58,10-58,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x2
@x3)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.associative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(38,17-38,18); use=OPLSS2021.ParNDSDiv.fst(38,23-38,34)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x2)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_72ac2ec523211f8603e00b25deb1543b))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_72ac2ec523211f8603e00b25deb1543b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,39-98,53); use=OPLSS2021.ParNDSDiv.fst(63,39-98,36)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_66637169be1acab937c714e5588d9266 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_66637169be1acab937c714e5588d9266 @x2
@x3)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_66637169be1acab937c714e5588d9266))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_66637169be1acab937c714e5588d9266))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,24); use=OPLSS2021.ParNDSDiv.fst(54,5-54,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_50d621f6dd29f957a18e4b871df8655e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_50d621f6dd29f957a18e4b871df8655e))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_50d621f6dd29f957a18e4b871df8655e))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_50d621f6dd29f957a18e4b871df8655e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,12-63,42); use=OPLSS2021.ParNDSDiv.fst(63,34-63,42)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x3
@x4)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_3e23fb80e3331b439284ca8b53071862))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_3e23fb80e3331b439284ca8b53071862))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x2
@x3
@x4
@x5
@x6))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x2
@x3
@x4
@x5
@x6)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_2538a092842d37d4ae67882e68ec0839))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_2538a092842d37d4ae67882e68ec0839))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x2
@x3)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x1
@x2))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1)))
(HasType (ApplyTT (ApplyTT @x0
@x3)
@x4)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,16); use=OPLSS2021.ParNDSDiv.fst(54,5-54,16)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1))
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x1
@x2)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comm_monoid; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkcomm_monoid; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,18-58,24); use=OPLSS2021.ParNDSDiv.fst(58,10-58,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x1
@x2))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,18-58,24); use=OPLSS2021.ParNDSDiv.fst(58,10-58,24)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
@x2)
(HasType @x4
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x3)
@x4)
Prims.prop))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,18-58,24); use=OPLSS2021.ParNDSDiv.fst(58,10-58,24)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189 @x1
@x2)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b0d103fe8aa7426cb2f6c419ec676189))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_7d5a2eb79d29024c3b69443f30106a3f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_72ac2ec523211f8603e00b25deb1543b
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.associative; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(38,17-38,18); use=OPLSS2021.ParNDSDiv.fst(38,23-38,34)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x1))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(38,17-38,18); use=OPLSS2021.ParNDSDiv.fst(38,23-38,34)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x1)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_72ac2ec523211f8603e00b25deb1543b.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(38,17-38,18); use=OPLSS2021.ParNDSDiv.fst(38,23-38,34)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_72ac2ec523211f8603e00b25deb1543b.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_72ac2ec523211f8603e00b25deb1543b @x1)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_72ac2ec523211f8603e00b25deb1543b))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_72ac2ec523211f8603e00b25deb1543b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_66637169be1acab937c714e5588d9266
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.m; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Ret; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Act; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,39-98,53); use=OPLSS2021.ParNDSDiv.fst(63,39-98,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_66637169be1acab937c714e5588d9266 @x1
@x2))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(63,39-98,53); use=OPLSS2021.ParNDSDiv.fst(63,39-98,36)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(FStar.Universe.raise_t Prims.unit))
(HasType (ApplyTT @x0
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_66637169be1acab937c714e5588d9266.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_66637169be1acab937c714e5588d9266 @x1
@x2)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_66637169be1acab937c714e5588d9266))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_66637169be1acab937c714e5588d9266))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_50d621f6dd29f957a18e4b871df8655e
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,24); use=OPLSS2021.ParNDSDiv.fst(54,5-54,24)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_50d621f6dd29f957a18e4b871df8655e)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,24); use=OPLSS2021.ParNDSDiv.fst(54,5-54,24)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_arrow_ba2695ca5378d210eab4e19ea272bfbe @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50d621f6dd29f957a18e4b871df8655e.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,5-54,24); use=OPLSS2021.ParNDSDiv.fst(54,5-54,24)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50d621f6dd29f957a18e4b871df8655e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_50d621f6dd29f957a18e4b871df8655e))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50d621f6dd29f957a18e4b871df8655e))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50d621f6dd29f957a18e4b871df8655e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3e23fb80e3331b439284ca8b53071862
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(63,12-63,42); use=OPLSS2021.ParNDSDiv.fst(63,34-63,42)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x2
@x3))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(63,12-63,42); use=OPLSS2021.ParNDSDiv.fst(63,34-63,42)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x3)
(HasType (ApplyTT @x0
@x4)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_3e23fb80e3331b439284ca8b53071862.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x2
@x3)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_3e23fb80e3331b439284ca8b53071862))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_3e23fb80e3331b439284ca8b53071862))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2538a092842d37d4ae67882e68ec0839
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x1
@x2
@x3
@x4
@x5))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x5
@x4))
(HasType @x7
(Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x5
@x4
@x3
@x6)))
(HasType (ApplyTT (ApplyTT @x0
@x6)
@x7)
(Prims.dtuple2 @x2
(Tm_abs_b60432f4f8ca408bbd12aef325b13914 @x5
@x4
@x1
@x6
@x2))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x6)
@x7))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_2538a092842d37d4ae67882e68ec0839.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x5
@x4))
(IsTotFun (ApplyTT @x0
@x6)))
 

:pattern ((ApplyTT @x0
@x6))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_2538a092842d37d4ae67882e68ec0839.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_2538a092842d37d4ae67882e68ec0839 @x1
@x2
@x3
@x4
@x5)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_2538a092842d37d4ae67882e68ec0839))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_2538a092842d37d4ae67882e68ec0839))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x1
@x2))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1))
(HasType @x4
@x2))
(HasType (ApplyTT (ApplyTT @x0
@x3)
@x4)
Prims.prop))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,5-58,24); use=OPLSS2021.ParNDSDiv.fst(54,5-58,24)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x2
@x1))
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3 @x1
@x2)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_251e7376a976edf5ebeb1ce86b5662f3))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok))
:named @kick_partial_app_345212f4430f019c832634308667689d))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.action; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Mkaction; Namespace OPLSS2021.ParNDSDiv
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok))
:named @kick_partial_app_10e1d92f9b7698d6c9aeb65c15f3cbb1))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(96,11-96,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Ret? _}).
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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,11-96,12)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,11-96,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Ret__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ret__item__a


; <Skipped let __proj__Ret__item__a/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Ret__item__post


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Ret__item__post>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Ret__item__post (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: projectee.a -> c.r
(declare-fun Tm_arrow_c707a174939b0d5ee51a59b2ad427147 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Ret? _} -> _: projectee.a -> c.r
(declare-fun Tm_arrow_3b4dff0cc7d0b0436fb311f923dd48cd () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Ret__item__post@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Ret__item__post>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(96,19-96,23)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Ret? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Ret? projectee) ==> Prims.l_False) /\
;   (forall (b: Type) (b: (_: b -> c.r)) (b: b).
;       projectee == OPLSS2021.ParNDSDiv.Ret b ==>
;       b == a /\ (b b == _) /\ (b == _) /\ Ret? (OPLSS2021.ParNDSDiv.Ret b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Ret__item__post`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
@x6)

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(= @x5
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x6
@x7
@x8))
)

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(= (ApplyTT @x7
@x8)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,19-96,23)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x6
@x7
@x8)))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Ret__item__post, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Ret, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ret__item__post


; <Skipped let __proj__Ret__item__post/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Ret__item__x


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Ret__item__x>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Ret__item__x (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Ret? _} -> projectee.a
(declare-fun Tm_arrow_36423c6e71fed913e8c1a288afb494e6 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Ret__item__x@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Ret__item__x>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(96,38-96,39)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Ret? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Ret? projectee) ==> Prims.l_False) /\
;   (forall (b: Type) (b: (_: b -> c.r)) (b: b).
;       projectee == OPLSS2021.ParNDSDiv.Ret b ==>
;       b == a /\ (b b == _) /\ (b == _) /\ Ret? (OPLSS2021.ParNDSDiv.Ret b))


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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_7a12f95d7504f0b959ef9d16756ecc88 @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
@x6)

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(= @x5
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x6
@x7
@x8))
)

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(= (ApplyTT @x7
@x8)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,4-96,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(96,4-96,7); use=OPLSS2021.ParNDSDiv.fst(96,38-96,39)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x6
@x7
@x8)))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Ret__item__x, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Ret, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_7a12f95d7504f0b959ef9d16756ecc88

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ret__item__x


; <Skipped let __proj__Ret__item__x/>


; encoding sigelt val OPLSS2021.ParNDSDiv.uu___is_Act


; <Start encoding val OPLSS2021.ParNDSDiv.uu___is_Act>

(declare-fun OPLSS2021.ParNDSDiv.uu___is_Act (Term Term Term Term Term Term) Term)

(declare-fun OPLSS2021.ParNDSDiv.uu___is_Act@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.uu___is_Act>


; encoding sigelt let uu___is_Act


; <Skipped let uu___is_Act/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Act__item__a


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__a>

(declare-fun Tm_refine_5617fa90a69813d1735286b6bf410a4e (Term Term Term Term Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__a (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Act? _} -> Type
(declare-fun Tm_arrow_18b697f5d0fa9f4583b277674c1ad0e5 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__a@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__a>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.uu___is_Act; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5)
Prims.bool))
 

:pattern ((OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.uu___is_Act))

:named typing_OPLSS2021.ParNDSDiv.uu___is_Act))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_5617fa90a69813d1735286b6bf410a4e))

:named refinement_kinding_Tm_refine_5617fa90a69813d1735286b6bf410a4e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6))

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x2
@x3
@x4
@x5
@x6
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e))

:named refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5617fa90a69813d1735286b6bf410a4e
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_5617fa90a69813d1735286b6bf410a4e))

:named haseqTm_refine_5617fa90a69813d1735286b6bf410a4e))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.uu___is_Act; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5)
(BoxBool (is-OPLSS2021.ParNDSDiv.Act @x5)))
 

:pattern ((OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
:qid disc_equation_OPLSS2021.ParNDSDiv.Act))

:named disc_equation_OPLSS2021.ParNDSDiv.Act))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(97,11-97,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,11-97,12)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,11-97,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Act__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__a


; <Skipped let __proj__Act__item__a/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Act__item__post


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__post>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__post (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: projectee.a -> c.r
(declare-fun Tm_arrow_e613097d8add4c4c5cd11cfebfff7dcc (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Act? _} -> _: projectee.a -> c.r
(declare-fun Tm_arrow_37a57943c9aec65f054dfd365aad71d9 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__post@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__post>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(97,19-97,23)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



(declare-fun Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52))

:named non_total_function_typing_Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52))

; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: (_: b -> c.r))
;       (b: Type0)
;       (b: OPLSS2021.ParNDSDiv.action c b)
;       (b: (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) b))).
;       projectee == OPLSS2021.ParNDSDiv.Act b b ==>
;       b == a /\ (b.pre == _) /\ (b == _) /\ Act? (OPLSS2021.ParNDSDiv.Act b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__post`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x8
@x0
@x1
@x6
@x9
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(= @x5
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
)

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,19-97,23)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Act__item__post, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Act, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__post


; <Skipped let __proj__Act__item__post/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Act__item__b


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__b>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__b (Term Term Term Term Term Term) Term)


(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__b@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__b>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(97,39-97,40)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,39-97,40)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,39-97,40)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Act__item__b, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__b


; <Skipped let __proj__Act__item__b/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Act__item__f


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__f>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__f (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Act? _} -> action c projectee.b
(declare-fun Tm_arrow_1fbd8a502a4d5cb43a60e33c09f811f1 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__f@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__f>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(97,46-97,47)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



(declare-fun Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52))

:named non_total_function_typing_Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52))

; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: (_: b -> c.r))
;       (b: Type0)
;       (b: OPLSS2021.ParNDSDiv.action c b)
;       (b: (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) b))).
;       projectee == OPLSS2021.ParNDSDiv.Act b b ==>
;       b == a /\ (b.pre == _) /\ (b == _) /\ Act? (OPLSS2021.ParNDSDiv.Act b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Act__item__f`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x8
@x0
@x1
@x6
@x9
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(= @x5
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
)

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Act__item__f, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Act, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__f


; <Skipped let __proj__Act__item__f/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Act__item__k


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__k>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__k (Term Term Term Term Term Term) Term)


(declare-fun Non_total_Tm_arrow_58a18c8ca8bf5edb227434cf8b092169 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Act? _} -> x: projectee.b   -> FStar.Pervasives.Dv (m projectee.a (projectee.f.post x) projectee.post)
(declare-fun Tm_arrow_89a04afd84b1b77b9ee456292bc00c2a () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Act__item__k@tok () Term)



; </end encoding val OPLSS2021.ParNDSDiv.__proj__Act__item__k>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(77,3-77,7); use=OPLSS2021.ParNDSDiv.fst(77,3-77,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x0
@x1
@x2
@x3)
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x2)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__f; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,46-97,47); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Act__item__f @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.action @x0
@x1
(OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
@x5))))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Act__item__f @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Act__item__f))

:named typing_OPLSS2021.ParNDSDiv.__proj__Act__item__f))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__b; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,39-97,40); use=OPLSS2021.ParNDSDiv.fst(97,39-97,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Act__item__b))

:named typing_OPLSS2021.ParNDSDiv.__proj__Act__item__b))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,11-97,12); use=OPLSS2021.ParNDSDiv.fst(97,11-97,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Act__item__a))

:named typing_OPLSS2021.ParNDSDiv.__proj__Act__item__a))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(77,3-77,7); use=OPLSS2021.ParNDSDiv.fst(77,3-77,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post))

:named token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(77,3-77,7); use=OPLSS2021.ParNDSDiv.fst(77,3-77,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x0
@x1
@x2
@x3)
(OPLSS2021.ParNDSDiv.Mkaction_post @x3))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x0
@x1
@x2
@x3))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkaction_post))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkaction_post))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__f; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,46-97,47); use=OPLSS2021.ParNDSDiv.fst(97,46-97,47)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Act__item__f @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Act_f @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Act__item__f @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Act_f))

:named proj_equation_OPLSS2021.ParNDSDiv.Act_f))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__b; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,39-97,40); use=OPLSS2021.ParNDSDiv.fst(97,39-97,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Act_b @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Act_b))

:named proj_equation_OPLSS2021.ParNDSDiv.Act_b))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Act__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(97,11-97,12); use=OPLSS2021.ParNDSDiv.fst(97,11-97,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Act_a @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Act_a))

:named proj_equation_OPLSS2021.ParNDSDiv.Act_a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_arrow_30da0c380f147f10b50ed7f5027b56cb
Tm_type)
:named kinding_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(77,3-77,7); use=OPLSS2021.ParNDSDiv.fst(77,3-77,7)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))

;; def=OPLSS2021.ParNDSDiv.fst(77,3-77,7); use=OPLSS2021.ParNDSDiv.fst(77,3-77,7)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post))

:named function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,20-77,17); use=OPLSS2021.ParNDSDiv.fst(75,5-77,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_30da0c380f147f10b50ed7f5027b56cb)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,20-77,17); use=OPLSS2021.ParNDSDiv.fst(75,5-77,17)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_30da0c380f147f10b50ed7f5027b56cb)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,20-77,17); use=OPLSS2021.ParNDSDiv.fst(75,5-77,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,20-77,17); use=OPLSS2021.ParNDSDiv.fst(75,5-77,17)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb.2))


;; def=OPLSS2021.ParNDSDiv.fst(54,20-77,17); use=OPLSS2021.ParNDSDiv.fst(75,5-77,17)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb.3))


;; def=OPLSS2021.ParNDSDiv.fst(54,20-77,17); use=OPLSS2021.ParNDSDiv.fst(75,5-77,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
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
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_30da0c380f147f10b50ed7f5027b56cb))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok))
:named @kick_partial_app_31557d7694809b6360289392ffa8ae5e))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(97,62-97,63)

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



(declare-fun Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52))

:named non_total_function_typing_Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52))





; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Act? projectee) ==> Prims.l_False) /\
;   (forall (b: Type)
;       (b: (_: b -> c.r))
;       (b: Type0)
;       (b: OPLSS2021.ParNDSDiv.action c b)
;       (b: (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) b))).
;       projectee == OPLSS2021.ParNDSDiv.Act b b ==>
;       b == a /\ (b.pre == _) /\ (b == _) /\ Act? (OPLSS2021.ParNDSDiv.Act b b) /\
;       (forall (x: (OPLSS2021.ParNDSDiv.Act b b).b).
;           b == a /\ (b.pre == _) /\ (b == _) /\ Act? (OPLSS2021.ParNDSDiv.Act b b) /\
;           (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
;               return_val == OPLSS2021.ParNDSDiv.Act b b ==>
;               (forall (any_result: Type).
;                   (OPLSS2021.ParNDSDiv.Act b b).a == any_result ==>
;                   b == a /\ (b.pre == _) /\ (b == _) /\ Act? (OPLSS2021.ParNDSDiv.Act b b) /\
;                   (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
;                       return_val == OPLSS2021.ParNDSDiv.Act b b ==>
;                       (forall (any_result: Type0).
;                           (OPLSS2021.ParNDSDiv.Act b b).b == any_result ==>
;                           b == a /\ (b.pre == _) /\ (b == _) /\ Act? (OPLSS2021.ParNDSDiv.Act b b) /\
;                           (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Act? _}).
;                               return_val == OPLSS2021.ParNDSDiv.Act b b ==>
;                               (forall (any_result:
;                                   OPLSS2021.ParNDSDiv.action c (OPLSS2021.ParNDSDiv.Act b b).b).
;                                   (OPLSS2021.ParNDSDiv.Act b b).f == any_result ==>
;                                   (forall (any_result: c.r).
;                                       (OPLSS2021.ParNDSDiv.Act b b).f.post x == any_result ==>
;                                       b == a /\ (b.pre == _) /\ (b == _) /\
;                                       Act? (OPLSS2021.ParNDSDiv.Act b b))))))))))


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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x6))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Non_total_Tm_arrow_5b0f84a37b9eb40b47afd72f8d849b52 @x8
@x0
@x1
@x6
@x9
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x5
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
)


;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_7

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_8

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x12
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Tm_type)

;; def=OPLSS2021.ParNDSDiv.fst(95,51-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Act__item__a @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
@x13)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_10

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_11

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_12

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_13

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x14
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Tm_type)

;; def=OPLSS2021.ParNDSDiv.fst(75,34-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
@x15)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_14

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_15

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_16

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_17

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Tm_refine_5617fa90a69813d1735286b6bf410a4e @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x16
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(OPLSS2021.ParNDSDiv.action @x0
@x1
(OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))))

;; def=OPLSS2021.ParNDSDiv.fst(75,5-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Act__item__f @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10))
@x17)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Act__item__b @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
(OPLSS2021.ParNDSDiv.__proj__Act__item__f @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x6
@x7
@x8
@x9
@x10)))
@x11)
@x18)
)

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_18

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x6
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_19

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x8
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_20

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(= @x7
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,4-97,7)
(or label_21

;; def=OPLSS2021.ParNDSDiv.fst(97,4-97,7); use=OPLSS2021.ParNDSDiv.fst(97,62-97,63)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Act @x0
@x1
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Act__item__k, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Act, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_5617fa90a69813d1735286b6bf410a4e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Act__item__k


; <Skipped let __proj__Act__item__k/>


; encoding sigelt val OPLSS2021.ParNDSDiv.uu___is_Par


; <Start encoding val OPLSS2021.ParNDSDiv.uu___is_Par>

(declare-fun OPLSS2021.ParNDSDiv.uu___is_Par (Term Term Term Term Term Term) Term)

(declare-fun OPLSS2021.ParNDSDiv.uu___is_Par@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.uu___is_Par>


; encoding sigelt let uu___is_Par


; <Skipped let uu___is_Par/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__pre0


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__pre0>

(declare-fun Tm_refine_b11615648c647a6389a10ff7e2ca1afe (Term Term Term Term Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Par? _} -> c.r
(declare-fun Tm_arrow_48b5474f6c4391b599d83e99118a4c05 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__pre0@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__pre0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.uu___is_Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5)
Prims.bool))
 

:pattern ((OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.uu___is_Par))

:named typing_OPLSS2021.ParNDSDiv.uu___is_Par))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_b11615648c647a6389a10ff7e2ca1afe))

:named refinement_kinding_Tm_refine_b11615648c647a6389a10ff7e2ca1afe))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.m @x2
@x3
@x4
@x5
@x6))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x2
@x3
@x4
@x5
@x6
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe))

:named refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b11615648c647a6389a10ff7e2ca1afe
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_b11615648c647a6389a10ff7e2ca1afe))

:named haseqTm_refine_b11615648c647a6389a10ff7e2ca1afe))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.uu___is_Par; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5)
(BoxBool (is-OPLSS2021.ParNDSDiv.Par @x5)))
 

:pattern ((OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
:qid disc_equation_OPLSS2021.ParNDSDiv.Par))

:named disc_equation_OPLSS2021.ParNDSDiv.Par))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(98,10-98,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *) ~(Par? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__pre0`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,10-98,14)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,10-98,14)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__pre0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__pre0


; <Skipped let __proj__Par__item__pre0/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__post0


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__post0>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__post0 (Term Term Term Term Term Term) Term)


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__post0@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__post0>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(98,20-98,25)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *) ~(Par? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__post0`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,20-98,25)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,20-98,25)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__post0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__post0


; <Skipped let __proj__Par__item__post0/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__m0


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__m0>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__m0 (Term Term Term Term Term Term) Term)


(declare-fun Tm_abs_6364372391e52b339c7bf9c998fc8984 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Par? _}   -> m (FStar.Universe.raise_t Prims.unit) projectee.pre0 (fun _ -> projectee.post0)
(declare-fun Tm_arrow_7f7877d028c515708558007cd86141f8 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__m0@tok () Term)



; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__m0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,10-98,14); use=OPLSS2021.ParNDSDiv.fst(98,10-98,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__pre0))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__pre0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,10-98,14); use=OPLSS2021.ParNDSDiv.fst(98,10-98,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_pre0 @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_pre0))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_pre0))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(98,31-98,33)

(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)










; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Par? projectee) ==> Prims.l_False) /\
;   (forall (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: Type)
;       (b: OPLSS2021.ParNDSDiv.post b c)
;       (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;       projectee == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;       b == a /\ (c.star b b == _) /\ (b == _) /\ Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b) /\
;       (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;           return_val == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;           (forall (any_result: c.r).
;               (OPLSS2021.ParNDSDiv.Par b b b b b b b).pre0 == any_result ==>
;               (forall (_: FStar.Universe.raise_t Prims.unit).
;                   (*  - Could not prove post-condition
; *)
;                   b == a /\ (c.star b b == _) /\ (b == _) /\
;                   Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__m0`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x6
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x7
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x9
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x10
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.post @x0
@x12
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x12
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x7)
@x10)
@x13))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= @x5
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= @x15
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= (OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
@x16)
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(FStar.Universe.raise_t Prims.unit))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_7

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_8

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__m0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Par, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__m0


; <Skipped let __proj__Par__item__m0/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__pre1


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__pre1>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 (Term Term Term Term Term Term) Term)


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__pre1@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__pre1>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(99,10-99,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *) ~(Par? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__pre1`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,10-99,14)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,10-99,14)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__pre1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__pre1


; <Skipped let __proj__Par__item__pre1/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__post1


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__post1>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__post1 (Term Term Term Term Term Term) Term)


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__post1@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__post1>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(99,20-99,25)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *) ~(Par? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__post1`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,20-99,25)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,20-99,25)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__post1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__post1


; <Skipped let __proj__Par__item__post1/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__m1


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__m1>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__m1 (Term Term Term Term Term Term) Term)


(declare-fun Tm_abs_d05c4b96ee62ffca90be25bfc8373904 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Par? _}   -> m (FStar.Universe.raise_t Prims.unit) projectee.pre1 (fun _ -> projectee.post1)
(declare-fun Tm_arrow_50cc64a8b8fdd9ec96cbc8f3bf41d23b () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__m1@tok () Term)



; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__m1>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(99,10-99,14); use=OPLSS2021.ParNDSDiv.fst(99,10-99,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__pre1))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__pre1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__pre1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(99,10-99,14); use=OPLSS2021.ParNDSDiv.fst(99,10-99,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_pre1 @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_pre1))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_pre1))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(99,31-99,33)

(declare-fun label_9 () Bool)
(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)










; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Par? projectee) ==> Prims.l_False) /\
;   (forall (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: Type)
;       (b: OPLSS2021.ParNDSDiv.post b c)
;       (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;       projectee == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;       b == a /\ (c.star b b == _) /\ (b == _) /\ Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b) /\
;       (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;           return_val == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;           (forall (any_result: c.r).
;               (OPLSS2021.ParNDSDiv.Par b b b b b b b).pre1 == any_result ==>
;               (forall (_: FStar.Universe.raise_t Prims.unit).
;                   (*  - Could not prove post-condition
; *)
;                   b == a /\ (c.star b b == _) /\ (b == _) /\
;                   Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__m1`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x6
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x7
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x9
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x10
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.post @x0
@x12
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x12
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x7)
@x10)
@x13))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= @x5
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= @x15
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= (OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
@x16)
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(FStar.Universe.raise_t Prims.unit))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_7

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_8

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__m1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Par, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__m1


; <Skipped let __proj__Par__item__m1/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__a


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__a>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__a (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Par? _} -> Type
(declare-fun Tm_arrow_d9c3ef02f2b0cbcf034d95d095d7779b () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__a@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__a>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(100,11-100,12)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *) ~(Par? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__a`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,11-100,12)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,11-100,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__a


; <Skipped let __proj__Par__item__a/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__post


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__post>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__post (Term Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Par? _} -> post projectee.a c
(declare-fun Tm_arrow_1af4d6d5e56bdfde8cb35e01101e3c01 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__post@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__post>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(100,19-100,23)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)








; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Par? projectee) ==> Prims.l_False) /\
;   (forall (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: Type)
;       (b: OPLSS2021.ParNDSDiv.post b c)
;       (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;       projectee == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;       b == a /\ (c.star b b == _) /\ (b == _) /\ Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__post`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x6
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x7
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x9
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x10
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.post @x0
@x12
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x12
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x7)
@x10)
@x13))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(= @x5
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,19-100,23)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__post, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Par, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__post


; <Skipped let __proj__Par__item__post/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Par__item__k


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__k>


(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__k (Term Term Term Term Term Term) Term)


;;;;;;;;;;;;;;;;projectee: _: m a _ _ {Par? _}   -> m projectee.a (c.star projectee.post0 projectee.post1) projectee.post
(declare-fun Tm_arrow_4fe6055b8eceeb1357f4bffd72302948 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Par__item__k@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.__proj__Par__item__k>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__post1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(99,20-99,25); use=OPLSS2021.ParNDSDiv.fst(99,20-99,25)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__post1))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__post1))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__post0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,20-98,25); use=OPLSS2021.ParNDSDiv.fst(98,20-98,25)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__post0))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__post0))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(100,11-100,12); use=OPLSS2021.ParNDSDiv.fst(100,11-100,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__a @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__a @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__a))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__post1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(99,20-99,25); use=OPLSS2021.ParNDSDiv.fst(99,20-99,25)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_post1 @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_post1))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_post1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__post0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,20-98,25); use=OPLSS2021.ParNDSDiv.fst(98,20-98,25)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_post0 @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_post0))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_post0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__a; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(100,11-100,12); use=OPLSS2021.ParNDSDiv.fst(100,11-100,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__a @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_a @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__a @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_a))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_a))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(100,29-100,30)

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















; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (_: c.r)
;   (_: OPLSS2021.ParNDSDiv.post a c)
;   (projectee: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Par? projectee) ==> Prims.l_False) /\
;   (forall (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: c.r)
;       (b: c.r)
;       (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;       (b: Type)
;       (b: OPLSS2021.ParNDSDiv.post b c)
;       (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;       projectee == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;       b == a /\ (c.star b b == _) /\ (b == _) /\ Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b) /\
;       (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;           return_val == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;           (forall (any_result: Type).
;               (OPLSS2021.ParNDSDiv.Par b b b b b b b).a == any_result ==>
;               b == a /\ (c.star b b == _) /\ (b == _) /\
;               Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b) /\
;               (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;                   return_val == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;                   (forall (any_result: c.r).
;                       (OPLSS2021.ParNDSDiv.Par b b b b b b b).post0 == any_result ==>
;                       b == a /\ (c.star b b == _) /\ (b == _) /\
;                       Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b) /\
;                       (forall (return_val: _: OPLSS2021.ParNDSDiv.m a _ _ {Par? _}).
;                           return_val == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;                           (forall (any_result: c.r).
;                               (OPLSS2021.ParNDSDiv.Par b b b b b b b).post1 == any_result ==>
;                               (forall (any_result: c.r).
;                                   c.star (OPLSS2021.ParNDSDiv.Par b b b b b b b).post0
;                                     (OPLSS2021.ParNDSDiv.Par b b b b b b b).post1 ==
;                                   any_result ==>
;                                   b == a /\ (c.star b b == _) /\ (b == _) /\
;                                   Par? (OPLSS2021.ParNDSDiv.Par b b b b b b b)))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Par__item__k`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x5))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x6
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x7
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x9
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x10
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x12 Term))
 (! (implies (HasType @x12
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.post @x0
@x12
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x12
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x7)
@x10)
@x13))

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x5
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_3

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x15
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
Tm_type)

;; def=OPLSS2021.ParNDSDiv.fst(95,51-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (OPLSS2021.ParNDSDiv.__proj__Par__item__a @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
@x16)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_7

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_8

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x17
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
@x18)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_10

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_11

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_12

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_13

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x19
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14))
@x20)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
(OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
@x21)
)

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_14

;; def=OPLSS2021.ParNDSDiv.fst(95,51-95,52); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x12
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_15

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x6)
@x9)
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_16

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(= @x13
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(or label_17

;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(100,29-100,30)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x6
@x7
@x8
@x9
@x10
@x11
@x12
@x13
@x14)))
)
)
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
; QUERY ID: (OPLSS2021.ParNDSDiv.__proj__Par__item__k, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Par, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, refinement_interpretation_Tm_refine_b11615648c647a6389a10ff7e2ca1afe

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Par__item__k


; <Skipped let __proj__Par__item__k/>


; encoding sigelt val OPLSS2021.ParNDSDiv.bools


; <Start encoding val OPLSS2021.ParNDSDiv.bools>

(declare-fun OPLSS2021.ParNDSDiv.bools (Term) Term)
;;;;;;;;;;;;;;;;_: Prims.nat -> Prims.bool
(declare-fun Tm_arrow_67d1eb0e2b2b0432bd883bf79e9b388c () Term)
(declare-fun OPLSS2021.ParNDSDiv.bools@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.bools>


; encoding sigelt type OPLSS2021.ParNDSDiv.step_result


; <Start encoding type OPLSS2021.ParNDSDiv.step_result>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.step_result (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun OPLSS2021.ParNDSDiv.step_result@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ParNDSDiv.Step (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Step_p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Step__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Step_state (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ParNDSDiv.Step__3 (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun OPLSS2021.ParNDSDiv.Step@base (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ParNDSDiv.Step
(declare-fun OPLSS2021.ParNDSDiv.Step@tok () Term)


;;;;;;;;;;;;;;;;p: c.r -> _1: m a p q -> state: s{c.interp (c.star p frame) state} -> _3: Prims.nat   -> step_result a q frame
(declare-fun Tm_arrow_5f86108eb1e9b6fee5477edcbd740a5d () Term)

; <start constructor OPLSS2021.ParNDSDiv.step_result>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.step_result ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
451)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.step_result))))

; </end constructor OPLSS2021.ParNDSDiv.step_result>


; <start constructor OPLSS2021.ParNDSDiv.Step>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ParNDSDiv.Step ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
459)
(exists ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= __@x0
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
(OPLSS2021.ParNDSDiv.Step_p __@x0)
(OPLSS2021.ParNDSDiv.Step__1 __@x0)
(OPLSS2021.ParNDSDiv.Step_state __@x0)
(OPLSS2021.ParNDSDiv.Step__3 __@x0)))
 
;;no pats
:qid is-OPLSS2021.ParNDSDiv.Step))))

; </end constructor OPLSS2021.ParNDSDiv.Step>






; </end encoding type OPLSS2021.ParNDSDiv.step_result>


; encoding sigelt val OPLSS2021.ParNDSDiv.uu___is_Step


; <Start encoding val OPLSS2021.ParNDSDiv.uu___is_Step>

(declare-fun OPLSS2021.ParNDSDiv.uu___is_Step (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result a q frame -> Prims.bool
(declare-fun Tm_arrow_78a7a84a37d91bc8e1770131341b0e35 () Term)
(declare-fun OPLSS2021.ParNDSDiv.uu___is_Step@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.uu___is_Step>


; encoding sigelt let uu___is_Step


; <Skipped let uu___is_Step/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Step__item__p


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Step__item__p>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item__p (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result a q frame -> c.r
(declare-fun Tm_arrow_35a8449979f16fd280018aa0dbf2d3cc () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item__p@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Step__item__p>


; encoding sigelt let __proj__Step__item__p


; <Skipped let __proj__Step__item__p/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Step__item___1


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Step__item___1>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item___1 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result a q frame -> m a projectee.p q
(declare-fun Tm_arrow_e5235846089b298cf4a4f848155a7404 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item___1@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Step__item___1>


; encoding sigelt let __proj__Step__item___1


; <Skipped let __proj__Step__item___1/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Step__item__state


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Step__item__state>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item__state (Term Term Term Term Term Term) Term)


(declare-fun Tm_refine_af1f0e2db1d04951c80d2ff2440b2df9 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result a q frame -> state: s{c.interp (c.star projectee.p frame) state}
(declare-fun Tm_arrow_6afd05dfa54b736d2d37afa87905ee6d () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item__state@tok () Term)




; </end encoding val OPLSS2021.ParNDSDiv.__proj__Step__item__state>


; encoding sigelt let __proj__Step__item__state


; <Skipped let __proj__Step__item__state/>


; encoding sigelt val OPLSS2021.ParNDSDiv.__proj__Step__item___3


; <Start encoding val OPLSS2021.ParNDSDiv.__proj__Step__item___3>

(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item___3 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: step_result a q frame -> Prims.nat
(declare-fun Tm_arrow_3ece51a0526ca85fe741c8a8366371e5 () Term)
(declare-fun OPLSS2021.ParNDSDiv.__proj__Step__item___3@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.__proj__Step__item___3>


; encoding sigelt let __proj__Step__item___3


; <Skipped let __proj__Step__item___3/>

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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;typing_Tm_abs_d05c4b96ee62ffca90be25bfc8373904
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_66637169be1acab937c714e5588d9266 @x4
@x5))
 

:pattern ((Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_d05c4b96ee62ffca90be25bfc8373904))

:named typing_Tm_abs_d05c4b96ee62ffca90be25bfc8373904))
;;;;;;;;;;;;;;;;typing_Tm_abs_b14e5bc8b670136a11b2bbe277350688
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x4))
 

:pattern ((Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_b14e5bc8b670136a11b2bbe277350688))

:named typing_Tm_abs_b14e5bc8b670136a11b2bbe277350688))
;;;;;;;;;;;;;;;;typing_Tm_abs_6364372391e52b339c7bf9c998fc8984
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_6364372391e52b339c7bf9c998fc8984 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_66637169be1acab937c714e5588d9266 @x4
@x5))
 

:pattern ((Tm_abs_6364372391e52b339c7bf9c998fc8984 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_6364372391e52b339c7bf9c998fc8984))

:named typing_Tm_abs_6364372391e52b339c7bf9c998fc8984))
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
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named typing_Prims.int))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.bools; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(107,4-107,9); use=OPLSS2021.ParNDSDiv.fst(107,4-107,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.nat)
(HasType (OPLSS2021.ParNDSDiv.bools @x0)
Prims.bool))
 

:pattern ((OPLSS2021.ParNDSDiv.bools @x0))
:qid typing_OPLSS2021.ParNDSDiv.bools))

:named typing_OPLSS2021.ParNDSDiv.bools))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(99,31-99,33); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x2
@x3
@x4
@x5
@x1
@x0))))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__m1))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__m1))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,31-98,33); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x5
(Tm_refine_b11615648c647a6389a10ff7e2ca1afe @x0
@x1
@x2
@x3
@x4)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_abs_6364372391e52b339c7bf9c998fc8984 @x2
@x3
@x4
@x5
@x1
@x0))))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Par__item__m0))

:named typing_OPLSS2021.ParNDSDiv.__proj__Par__item__m0))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,3-78,6); use=OPLSS2021.ParNDSDiv.fst(78,3-78,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x0
@x1
@x2
@x3)
(Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x3
@x2
@x1
@x0)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1)
@x2)
@x3)
@x4))

:pattern ((OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4))
:qid token_correspondence_OPLSS2021.ParNDSDiv.step_result@tok))

:named token_correspondence_OPLSS2021.ParNDSDiv.step_result@tok))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,3-78,6); use=OPLSS2021.ParNDSDiv.fst(78,3-78,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem))

:named token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(OPLSS2021.ParNDSDiv.step_result @x10
@x11
@x12
@x13
@x14))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(OPLSS2021.ParNDSDiv.Step @x1
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
(OPLSS2021.ParNDSDiv.Step @x1
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
(OPLSS2021.ParNDSDiv.Step @x1
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
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(OPLSS2021.ParNDSDiv.step_result @x10
@x11
@x12
@x13
@x14)))
:qid subterm_ordering_OPLSS2021.ParNDSDiv.Step))

:named subterm_ordering_OPLSS2021.ParNDSDiv.Step))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(79,9-79,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_d4bde59cd41938fd4cb119b719d24234))

:named refinement_kinding_Tm_refine_d4bde59cd41938fd4cb119b719d24234))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type)
 

:pattern ((HasType (Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid refinement_kinding_Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0))

:named refinement_kinding_Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Tm_refine_774ba3f728d91ead8ef40be66c9802e5
Tm_type)
:named refinement_kinding_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Tm_refine_542f9d4f129664613f2483a6c88bc7c2
Tm_type)
:named refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
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
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (HasType Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
Tm_type)
:named refinement_kinding_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(79,9-79,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(79,14-79,44)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(79,14-79,44)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x2
@x3
@x4
@x5))
@x6))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_d4bde59cd41938fd4cb119b719d24234))

:named refinement_interpretation_Tm_refine_d4bde59cd41938fd4cb119b719d24234))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x2
@x3
@x4
@x5
@x6
@x7))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(80,21-80,56)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(80,21-80,56)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x2)
@x3)
@x4)
@x5)
@x6))
@x7))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x2
@x3
@x4
@x5
@x6
@x7)))
:qid refinement_interpretation_Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0))

:named refinement_interpretation_Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (OPLSS2021.ParNDSDiv.Step_state (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x7)
 

:pattern ((OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Step_state))

:named projection_inverse_OPLSS2021.ParNDSDiv.Step_state))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (OPLSS2021.ParNDSDiv.Step_p (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x5)
 

:pattern ((OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Step_p))

:named projection_inverse_OPLSS2021.ParNDSDiv.Step_p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (OPLSS2021.ParNDSDiv.Step__3 (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x8)
 

:pattern ((OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Step__3))

:named projection_inverse_OPLSS2021.ParNDSDiv.Step__3))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= (OPLSS2021.ParNDSDiv.Step__1 (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
@x6)
 

:pattern ((OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid projection_inverse_OPLSS2021.ParNDSDiv.Step__1))

:named projection_inverse_OPLSS2021.ParNDSDiv.Step__1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(99,31-99,33); use=OPLSS2021.ParNDSDiv.fst(99,31-99,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_m1 @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_m1))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_m1))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,31-98,33); use=OPLSS2021.ParNDSDiv.fst(98,31-98,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ParNDSDiv.Par_m0 @x5))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x2
@x3
@x4
@x5))
:qid proj_equation_OPLSS2021.ParNDSDiv.Par_m0))

:named proj_equation_OPLSS2021.ParNDSDiv.Par_m0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,3-78,6); use=OPLSS2021.ParNDSDiv.fst(78,3-78,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x0
@x1
@x2
@x3)
(OPLSS2021.ParNDSDiv.Mkaction_sem @x3))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x0
@x1
@x2
@x3))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkaction_sem))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkaction_sem))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! (is-Tm_arrow (PreType OPLSS2021.ParNDSDiv.step_result@tok))
:named pre_kinding_OPLSS2021.ParNDSDiv.step_result@tok))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f708749f23ec41af57669a9c9d0675d6
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x0
@x1
@x2
@x3)
Tm_type))
:qid kinding_Tm_arrow_f708749f23ec41af57669a9c9d0675d6))

:named kinding_Tm_arrow_f708749f23ec41af57669a9c9d0675d6))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_50558fec51cb3f8e529a0dc97050e786
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_arrow_50558fec51cb3f8e529a0dc97050e786
Tm_type)
:named kinding_Tm_arrow_50558fec51cb3f8e529a0dc97050e786))
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! (and (IsTotFun OPLSS2021.ParNDSDiv.step_result@tok)

;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0))
 

:pattern ((ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0))
:qid kinding_OPLSS2021.ParNDSDiv.step_result@tok))


;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1))
:qid kinding_OPLSS2021.ParNDSDiv.step_result@tok.1))


;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (IsTotFun (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1)
@x2))
:qid kinding_OPLSS2021.ParNDSDiv.step_result@tok.2))


;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (IsTotFun (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1)
@x2)
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.step_result@tok
@x0)
@x1)
@x2)
@x3))
:qid kinding_OPLSS2021.ParNDSDiv.step_result@tok.3))


;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.post @x0
@x2
@x1))
(HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
(HasType (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4))
:qid kinding_OPLSS2021.ParNDSDiv.step_result@tok.4))
)
:named kinding_OPLSS2021.ParNDSDiv.step_result@tok))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_d05c4b96ee62ffca90be25bfc8373904
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m1; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__post1 @x6
@x5
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_d05c4b96ee62ffca90be25bfc8373904))

:named interpretation_Tm_abs_d05c4b96ee62ffca90be25bfc8373904))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b14e5bc8b670136a11b2bbe277350688
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x1
@x2
@x3
@x4
@x5)
@x0)
(Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x1
@x2
@x5
@x3
@x0
@x4))
 

:pattern ((ApplyTT (Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_b14e5bc8b670136a11b2bbe277350688))

:named interpretation_Tm_abs_b14e5bc8b670136a11b2bbe277350688))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_6364372391e52b339c7bf9c998fc8984
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Par__item__m0; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(98,4-98,7); use=OPLSS2021.ParNDSDiv.fst(98,4-98,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_6364372391e52b339c7bf9c998fc8984 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__post0 @x6
@x5
@x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (Tm_abs_6364372391e52b339c7bf9c998fc8984 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_6364372391e52b339c7bf9c998fc8984))

:named interpretation_Tm_abs_6364372391e52b339c7bf9c998fc8984))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_d4bde59cd41938fd4cb119b719d24234
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(79,9-79,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_d4bde59cd41938fd4cb119b719d24234))

:named haseqTm_refine_d4bde59cd41938fd4cb119b719d24234))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(80,16-80,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x0
@x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x0
@x1
@x2
@x3
@x4
@x5))))
:qid haseqTm_refine_7cd3cf06ac65b3464d411ddcc1204ff0))

:named haseqTm_refine_7cd3cf06ac65b3464d411ddcc1204ff0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_774ba3f728d91ead8ef40be66c9802e5
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_542f9d4f129664613f2483a6c88bc7c2
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named function_token_typing_Prims.int))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,3-78,6); use=OPLSS2021.ParNDSDiv.fst(78,3-78,6)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
Tm_arrow_50558fec51cb3f8e529a0dc97050e786))

;; def=OPLSS2021.ParNDSDiv.fst(78,3-78,6); use=OPLSS2021.ParNDSDiv.fst(78,3-78,6)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok))
:qid function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem))

:named function_token_typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x4
@x5
@x6))
(is-OPLSS2021.ParNDSDiv.Step @x1))
 

:pattern ((HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x4
@x5
@x6)))
:qid fuel_guarded_inversion_OPLSS2021.ParNDSDiv.step_result))

:named fuel_guarded_inversion_OPLSS2021.ParNDSDiv.step_result))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! (= 452
(Term_constr_id OPLSS2021.ParNDSDiv.step_result@tok))
:named fresh_token_OPLSS2021.ParNDSDiv.step_result@tok))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
(OPLSS2021.ParNDSDiv.post @x1
@x3
@x2))
(HasTypeFuel @u0
@x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x1
@x2))
(HasTypeFuel @u0
@x7
(OPLSS2021.ParNDSDiv.m @x1
@x2
@x3
@x6
@x4))
(HasTypeFuel @u0
@x8
(Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x1
@x2
@x6
@x5))
(HasTypeFuel @u0
@x9
Prims.nat))
(HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(OPLSS2021.ParNDSDiv.step_result @x1
@x2
@x3
@x4
@x5)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(OPLSS2021.ParNDSDiv.step_result @x1
@x2
@x3
@x4
@x5)))
:qid data_typing_intro_OPLSS2021.ParNDSDiv.Step@tok))

:named data_typing_intro_OPLSS2021.ParNDSDiv.Step@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(OPLSS2021.ParNDSDiv.step_result @x10
@x11
@x12
@x13
@x14))
(and (HasTypeFuel @u0
@x10
Tm_type)
(HasTypeFuel @u0
@x11
(OPLSS2021.ParNDSDiv.comm_monoid @x10))
(HasTypeFuel @u0
@x12
Tm_type)
(HasTypeFuel @u0
@x13
(OPLSS2021.ParNDSDiv.post @x10
@x12
@x11))
(HasTypeFuel @u0
@x14
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x10
@x11))
(HasTypeFuel @u0
@x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x10
@x11))
(HasTypeFuel @u0
@x7
(OPLSS2021.ParNDSDiv.m @x10
@x11
@x12
@x6
@x13))
(HasTypeFuel @u0
@x8
(Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8 @x10
@x11
@x6
@x14))
(HasTypeFuel @u0
@x9
Prims.nat)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ParNDSDiv.Step @x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8
@x9)
(OPLSS2021.ParNDSDiv.step_result @x10
@x11
@x12
@x13
@x14)))
:qid data_elim_OPLSS2021.ParNDSDiv.Step))

:named data_elim_OPLSS2021.ParNDSDiv.Step))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 116
(Term_constr_id Prims.trivial))
:named constructor_distinct_Prims.trivial))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (= 303
(Term_constr_id Prims.int))
:named constructor_distinct_Prims.int))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 451
(Term_constr_id (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.step_result))

:named constructor_distinct_OPLSS2021.ParNDSDiv.step_result))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (= 459
(Term_constr_id (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)))
 

:pattern ((OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid constructor_distinct_OPLSS2021.ParNDSDiv.Step))

:named constructor_distinct_OPLSS2021.ParNDSDiv.Step))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(127,4-127,8); use=OPLSS2021.ParNDSDiv.fst(127,4-127,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (is-OPLSS2021.ParNDSDiv.Step (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8)
(OPLSS2021.ParNDSDiv.Step@base @x5
@x6
@x7
@x8)))
 

:pattern ((OPLSS2021.ParNDSDiv.Step @x0
@x1
@x2
@x3
@x4
@x5
@x6
@x7
@x8))
:qid constructor_base_OPLSS2021.ParNDSDiv.Step))

:named constructor_base_OPLSS2021.ParNDSDiv.Step))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.step_result; Namespace OPLSS2021.ParNDSDiv; Name OPLSS2021.ParNDSDiv.Step; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(126,5-126,16); use=OPLSS2021.ParNDSDiv.fst(126,5-126,16)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x4
@x5
@x6))
(= (Term_constr_id (OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x4
@x5
@x6))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x4
@x5
@x6)))
:qid OPLSS2021.ParNDSDiv_pretyping_917c8511b9e46012f2c8fe0453d8d67e))

:named OPLSS2021.ParNDSDiv_pretyping_917c8511b9e46012f2c8fe0453d8d67e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x2
@x3
@x4
@x5))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x2
@x3
@x4
@x5)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_f708749f23ec41af57669a9c9d0675d6))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_f708749f23ec41af57669a9c9d0675d6))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,20-80,58); use=OPLSS2021.ParNDSDiv.fst(75,5-80,58)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_50558fec51cb3f8e529a0dc97050e786)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_50558fec51cb3f8e529a0dc97050e786))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_50558fec51cb3f8e529a0dc97050e786))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_50558fec51cb3f8e529a0dc97050e786))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f708749f23ec41af57669a9c9d0675d6
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x1
@x2
@x3
@x4))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x4
@x3))
(HasType @x6
(Tm_refine_d4bde59cd41938fd4cb119b719d24234 @x4
@x3
@x2
@x1
@x5)))
(HasType (ApplyTT (ApplyTT @x0
@x5)
@x6)
(Prims.dtuple2 @x2
(Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x4
@x3
@x1
@x5
@x2))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x5)
@x6))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f708749f23ec41af57669a9c9d0675d6.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(78,15-80,58)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x4
@x3))
(IsTotFun (ApplyTT @x0
@x5)))
 

:pattern ((ApplyTT @x0
@x5))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f708749f23ec41af57669a9c9d0675d6.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x1
@x2
@x3
@x4)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f708749f23ec41af57669a9c9d0675d6))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f708749f23ec41af57669a9c9d0675d6))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(54,20-80,58); use=OPLSS2021.ParNDSDiv.fst(75,5-80,58)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_50558fec51cb3f8e529a0dc97050e786)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(54,20-80,58); use=OPLSS2021.ParNDSDiv.fst(75,5-80,58)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x3)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(Tm_arrow_f708749f23ec41af57669a9c9d0675d6 @x4
@x3
@x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(54,20-80,58); use=OPLSS2021.ParNDSDiv.fst(75,5-80,58)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786.2))


;; def=OPLSS2021.ParNDSDiv.fst(54,20-80,58); use=OPLSS2021.ParNDSDiv.fst(75,5-80,58)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786.3))


;; def=OPLSS2021.ParNDSDiv.fst(54,20-80,58); use=OPLSS2021.ParNDSDiv.fst(75,5-80,58)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
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
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_50558fec51cb3f8e529a0dc97050e786))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_50558fec51cb3f8e529a0dc97050e786))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(143,4-174,86)

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.step (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.step@tok () Term)
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









(declare-fun Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0))

:named non_total_function_typing_Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0))















;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok))
:named @kick_partial_app_8a532fbafe8e561435a3bdb48469865f))






























(declare-fun Tm_refine_2da48220457ebe32d13de68fe7c78331 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_refine_2da48220457ebe32d13de68fe7c78331 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type)
 

:pattern ((HasType (Tm_refine_2da48220457ebe32d13de68fe7c78331 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type))
:qid refinement_kinding_Tm_refine_2da48220457ebe32d13de68fe7c78331))

:named refinement_kinding_Tm_refine_2da48220457ebe32d13de68fe7c78331))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2da48220457ebe32d13de68fe7c78331 @x2
@x3
@x4
@x5
@x6
@x7
@x8))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.step_result @x3
@x4
(FStar.Universe.raise_t Prims.unit)
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x2
@x4
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x3)
@x4)
@x6)
@x7)))

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x3)
@x4)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x3)
@x4)
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x3)
@x4)
@x6)
@x7)))
@x8)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2da48220457ebe32d13de68fe7c78331 @x2
@x3
@x4
@x5
@x6
@x7
@x8)))
:qid refinement_interpretation_Tm_refine_2da48220457ebe32d13de68fe7c78331))

:named refinement_interpretation_Tm_refine_2da48220457ebe32d13de68fe7c78331))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2da48220457ebe32d13de68fe7c78331
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2da48220457ebe32d13de68fe7c78331 @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.step_result @x1
@x2
(FStar.Universe.raise_t Prims.unit)
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x0
@x2
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x1)
@x2)
@x4)
@x5)))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2da48220457ebe32d13de68fe7c78331 @x0
@x1
@x2
@x3
@x4
@x5
@x6))))
:qid haseqTm_refine_2da48220457ebe32d13de68fe7c78331))

:named haseqTm_refine_2da48220457ebe32d13de68fe7c78331))





(declare-fun Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(129,10-129,53); use=OPLSS2021.ParNDSDiv.fst(167,17-167,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee))

:named refinement_kinding_Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(129,10-129,53); use=OPLSS2021.ParNDSDiv.fst(167,17-167,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(167,17-167,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(167,17-167,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
@x4)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
@x5)
@x6)))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee))

:named refinement_interpretation_Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee))
;;;;;;;;;;;;;;;;haseq for Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(129,10-129,53); use=OPLSS2021.ParNDSDiv.fst(167,17-167,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_509b28e522ac3e9a08a5e29acdcb74ee))

:named haseqTm_refine_509b28e522ac3e9a08a5e29acdcb74ee))
























































(declare-fun Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type)
 

:pattern ((HasType (Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type))
:qid refinement_kinding_Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa))

:named refinement_kinding_Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x2
@x3
@x4
@x5
@x6
@x7
@x8))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.step_result @x4
@x5
@x2
@x3
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x4)
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x4)
@x5)
@x6)
@x7))
@x8)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x2
@x3
@x4
@x5
@x6
@x7
@x8)))
:qid refinement_interpretation_Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa))

:named refinement_interpretation_Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa))
;;;;;;;;;;;;;;;;haseq for Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x0
@x1
@x5))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x0
@x1
@x2
@x3
@x4
@x5
@x6))))
:qid haseqTm_refine_afd7effb35c4e67fc714e71ddf43a8aa))

:named haseqTm_refine_afd7effb35c4e67fc714e71ddf43a8aa))

; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (i: Prims.nat)
;   (pre: c.r)
;   (a: Type)
;   (post: OPLSS2021.ParNDSDiv.post a c)
;   (f: OPLSS2021.ParNDSDiv.m a pre post)
;   (frame: c.r)
;   (state: s).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.ParNDSDiv.step_result a post frame)).
;     c.interp (c.star pre frame) state /\
;     (forall (a: _: OPLSS2021.ParNDSDiv.step_result a post frame {c.interp (c.star pre frame) state})
;       .
;         Prims.auto_squash (p a)) ==>
;     (forall (k: Prims.pure_post (OPLSS2021.ParNDSDiv.step_result a post frame)).
;         (forall (x: OPLSS2021.ParNDSDiv.step_result a post frame). {:pattern Prims.guard_free (k x)}
;             p x ==> k x) ==>
;         (~(Ret? f) /\ ~(Act? f) /\ ~(Par? f && Ret? f.m0 && Ret? f.m1) /\ ~(Par? f) ==>
;           Prims.l_False) /\
;         (forall (b: Type) (b: (_: b -> c.r)) (b: b).
;             f == OPLSS2021.ParNDSDiv.Ret b ==>
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==>
;                 (forall (any_result: c.r).
;                     post b == any_result ==>
;                     Prims.has_type b a /\
;                     (forall (any_result: b).
;                         b == any_result ==>
;                         (forall (any_result: OPLSS2021.ParNDSDiv.m a (post b) post).
;                             OPLSS2021.ParNDSDiv.Ret b == any_result ==>
;                             Prims.auto_squash (c.interp (c.star (post b) frame) state) /\
;                             (forall (any_result: s).
;                                 state == any_result ==>
;                                 (forall (any_result: OPLSS2021.ParNDSDiv.step_result a post frame).
;                                     any_result ==
;                                     OPLSS2021.ParNDSDiv.Step (post b)
;                                       (OPLSS2021.ParNDSDiv.Ret b)
;                                       state
;                                       i ==>
;                                     (forall (return_val:
;                                         OPLSS2021.ParNDSDiv.step_result a post frame).
;                                         return_val == any_result ==> k return_val)))))))) /\
;         (~(Ret? f) ==>
;           (forall (b: Type)
;               (b: (_: b -> c.r))
;               (b: Type0)
;               (b: OPLSS2021.ParNDSDiv.action c b)
;               (b: (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) b))).
;               f == OPLSS2021.ParNDSDiv.Act b b ==>
;               Prims.auto_squash (c.interp (c.star b.pre frame) state) /\
;               (forall (any_result: s).
;                   state == any_result ==>
;                   (forall (any_result: x: b & s1: s{c.interp (c.star (b.post x) frame) s1}).
;                       b.sem frame state == any_result ==>
;                       (forall (b: b) (b: s1: s{c.interp (c.star (b.post b) frame) s1}).
;                           b.sem frame state == (| b, b |) ==>
;                           (forall (any_result: OPLSS2021.ParNDSDiv.m b (b.post b) b).
;                               b == a /\ b == post /\
;                               (forall (return_val: OPLSS2021.ParNDSDiv.step_result a post frame).
;                                   return_val == OPLSS2021.ParNDSDiv.Step (b.post b) any_result b i ==>
;                                   return_val == OPLSS2021.ParNDSDiv.Step (b.post b) any_result b i ==>
;                                   (forall (return_val: OPLSS2021.ParNDSDiv.step_result a post frame)
;                                     .
;                                       return_val == return_val ==> k return_val))))))) /\
;           (~(Act? f) ==>
;             (forall (b: c.r) (b: c.r) (b: Type) (b: (_: b -> c.r)) (b: b) (b: c.r) (b: c.r)
;                 (b: Type) (b: (_: b -> c.r)) (b: b) (b: Type) (b: OPLSS2021.ParNDSDiv.post b c)
;                 (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;                 f ==
;                 OPLSS2021.ParNDSDiv.Par b
;                   b
;                   (OPLSS2021.ParNDSDiv.Ret b)
;                   b
;                   b
;                   (OPLSS2021.ParNDSDiv.Ret b)
;                   b ==>
;                 Prims.auto_squash (c.interp (c.star (c.star b b) frame) state) /\
;                 (forall (any_result: s).
;                     state == any_result ==>
;                     (forall (any_result: OPLSS2021.ParNDSDiv.step_result b b frame).
;                         OPLSS2021.ParNDSDiv.Step (c.star b b) b state i == any_result ==>
;                         b == a /\ b == post /\
;                         (forall (return_val: OPLSS2021.ParNDSDiv.step_result a post frame).
;                             return_val == OPLSS2021.ParNDSDiv.Step (c.star b b) b state i ==>
;                             return_val == OPLSS2021.ParNDSDiv.Step (c.star b b) b state i ==>
;                             (forall (return_val: OPLSS2021.ParNDSDiv.step_result a post frame).
;                                 return_val == return_val ==> k return_val))))) /\
;             (~(Par? f && Ret? f.m0 && Ret? f.m1) ==>
;               (forall (b: c.r)
;                   (b: c.r)
;                   (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                   (b: c.r)
;                   (b: c.r)
;                   (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                   (b: Type)
;                   (b: OPLSS2021.ParNDSDiv.post b c)
;                   (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;                   f == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;                   (forall (k: Prims.pure_post (OPLSS2021.ParNDSDiv.step_result a post frame)).
;                       (forall (x: OPLSS2021.ParNDSDiv.step_result a post frame).
;                           {:pattern Prims.guard_free (k x)}
;                           k x ==> k x) ==>
;                       (OPLSS2021.ParNDSDiv.bools i == true ==>
;                         i + 1 >= 0 /\
;                         (forall (return_val: Prims.nat).
;                             return_val == i + 1 ==>
;                             c.interp (c.star b (c.star b frame)) state /\
;                             (forall (a:
;                                 _:
;                                 OPLSS2021.ParNDSDiv.step_result (FStar.Universe.raise_t Prims.unit)
;                                   (fun _ -> b)
;                                   (c.star b frame) {c.interp (c.star b (c.star b frame)) state})
;                                 (b: c.r)
;                                 (b:
;                                 OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit)
;                                   b
;                                   (fun _ -> b))
;                                 (b: state: s{c.interp (c.star b (c.star b frame)) state})
;                                 (b: Prims.nat).
;                                 a == OPLSS2021.ParNDSDiv.Step b b b b ==>
;                                 (c.interp (c.star b (c.star b frame)) b ==>
;                                   c.interp (c.star (c.star b b) frame) b) /\
;                                 (forall (any_result:
;                                     state: s{c.interp (c.star b (c.star b frame)) state}).
;                                     b == any_result ==>
;                                     (forall (any_result: OPLSS2021.ParNDSDiv.step_result b b frame).
;                                         OPLSS2021.ParNDSDiv.Step (c.star b b)
;                                           (OPLSS2021.ParNDSDiv.Par b b b b b b b)
;                                           b
;                                           b ==
;                                         any_result ==>
;                                         b == a /\ b == post /\
;                                         (forall (return_val:
;                                             OPLSS2021.ParNDSDiv.step_result a post frame).
;                                             return_val ==
;                                             OPLSS2021.ParNDSDiv.Step (c.star b b)
;                                               (OPLSS2021.ParNDSDiv.Par b b b b b b b)
;                                               b
;                                               b ==>
;                                             return_val ==
;                                             (let OPLSS2021.ParNDSDiv.Step pre0' m0' state' j = a in
;                                               OPLSS2021.ParNDSDiv.Step (c.star pre0' b)
;                                                 (OPLSS2021.ParNDSDiv.Par pre0' b m0' b b b b)
;                                                 state'
;                                                 j) ==>
;                                             (forall (return_val:
;                                                 OPLSS2021.ParNDSDiv.step_result a post frame).
;                                                 return_val == return_val ==> k return_val))))))) /\
;                       (~(OPLSS2021.ParNDSDiv.bools i = true) ==>
;                         (forall (b: Prims.bool).
;                             OPLSS2021.ParNDSDiv.bools i == b ==>
;                             i + 1 >= 0 /\
;                             (forall (return_val: Prims.nat).
;                                 return_val == i + 1 ==>
;                                 c.interp (c.star b (c.star b frame)) state /\
;                                 (forall (a:
;                                     _:
;                                     OPLSS2021.ParNDSDiv.step_result (FStar.Universe.raise_t Prims.unit
;                                         )
;                                       (fun _ -> b)
;                                       (c.star b frame) {c.interp (c.star b (c.star b frame)) state})
;                                     (b: c.r)
;                                     (b:
;                                     OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit)
;                                       b
;                                       (fun _ -> b))
;                                     (b: state: s{c.interp (c.star b (c.star b frame)) state})
;                                     (b: Prims.nat).
;                                     a == OPLSS2021.ParNDSDiv.Step b b b b ==>
;                                     (c.interp (c.star b (c.star b frame)) b ==>
;                                       c.interp (c.star (c.star b b) frame) b) /\
;                                     (forall (any_result:
;                                         state: s{c.interp (c.star b (c.star b frame)) state}).
;                                         b == any_result ==>
;                                         (forall (any_result:
;                                             OPLSS2021.ParNDSDiv.step_result b b frame).
;                                             OPLSS2021.ParNDSDiv.Step (c.star b b)
;                                               (OPLSS2021.ParNDSDiv.Par b b b b b b b)
;                                               b
;                                               b ==
;                                             any_result ==>
;                                             b == a /\ b == post /\
;                                             (forall (return_val:
;                                                 OPLSS2021.ParNDSDiv.step_result a post frame).
;                                                 return_val ==
;                                                 OPLSS2021.ParNDSDiv.Step (c.star b b)
;                                                   (OPLSS2021.ParNDSDiv.Par b b b b b b b)
;                                                   b
;                                                   b ==>
;                                                 return_val ==
;                                                 (let OPLSS2021.ParNDSDiv.Step pre1' m1' state' j =
;                                                     a
;                                                   in
;                                                   OPLSS2021.ParNDSDiv.Step (c.star b pre1')
;                                                     (OPLSS2021.ParNDSDiv.Par b b b pre1' b m1' b)
;                                                     state'
;                                                     j) ==>
;                                                 (forall (return_val:
;                                                     OPLSS2021.ParNDSDiv.step_result a post frame).
;                                                     return_val == return_val ==> k return_val)))))))
;                       )))))))


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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
Tm_type)
(HasType @x5
(OPLSS2021.ParNDSDiv.post @x0
@x4
@x1))
(HasType @x6
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
@x3
@x5))
(HasType @x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x8
@x0))

;; def=Prims.fst(406,51-406,91); use=FStar.Pervasives.fsti(396,15-396,28)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7)))

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x7))
@x8)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@x10 Term))
 (! (implies (or label_1
(HasType @x10
(Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x4
@x5
@x0
@x1
@x3
@x7
@x8)))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x9
@x10)
)
)
 

:pattern (
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x9
@x10)
)
)
:qid @query.2))
)

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Prims.pure_post (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7)))

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x9
@x11)
)


;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x11)
)
)
 :weight 0


:pattern ((ApplyTT @x10
@x11))
:qid @query.4))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x4
@x3
@x5
@x6)
(OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_6364372391e52b339c7bf9c998fc8984 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x4
@x3
@x5
@x6))))
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x4
@x3
@x5
@x6))))
)


;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x4
@x3
@x5
@x6))
)
)

label_2)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(138,42-144,11); use=OPLSS2021.ParNDSDiv.fst(143,10-144,11)
(= @x6
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x11
@x12
@x13))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(144,10-144,11); use=OPLSS2021.ParNDSDiv.fst(146,19-146,20)
(or label_3
(HasType @x13
@x4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
@x11)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x13
@x14)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=OPLSS2021.ParNDSDiv.fst(127,10-146,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (ApplyTT @x5
@x13)
@x15)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(144,10-144,11); use=OPLSS2021.ParNDSDiv.fst(146,27-146,28)
(or label_4
(HasType @x13
@x4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(96,38-144,11); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x13
@x16)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
(ApplyTT @x5
@x13)
@x5))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x4
@x5
@x13)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(146,30-146,35)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(146,30-146,35)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(146,30-146,35)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x5
@x13))
@x7))
@x8)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(129,10-138,76); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x8
@x18)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-146,37); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x19
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x4
@x5
@x7
(ApplyTT @x5
@x13)
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x4
@x5
@x13)
@x8
@x2))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x20
@x19)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x20)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x13))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x13
@x0
@x1
@x11
@x14
@x12))

;; def=OPLSS2021.ParNDSDiv.fst(138,42-148,16); use=OPLSS2021.ParNDSDiv.fst(143,10-148,16)
(= @x6
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x11
@x12
@x13
@x14
@x15))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(150,45-150,50)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(150,45-150,50)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(150,45-150,50)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x13
@x14))
@x7))
@x8)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(79,9-138,76); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x8
@x16)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(Prims.dtuple2 @x13
(Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x0
@x1
@x14
@x7
@x13)))

;; def=OPLSS2021.ParNDSDiv.fst(150,12-150,50); use=OPLSS2021.ParNDSDiv.fst(150,12-150,50)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x13)
@x14)
@x7)
@x8)
@x17)
)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (HasType @x18
@x13)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x0
@x1
@x13
@x14
@x18
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(150,12-150,27); use=OPLSS2021.ParNDSDiv.fst(150,12-150,27)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x13)
@x14)
@x7)
@x8)
(Prims.Mkdtuple2 @x13
(Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x0
@x1
@x14
@x7
@x13)
@x18
@x19))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x11
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x18)
@x12))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(or label_7

;; def=OPLSS2021.ParNDSDiv.fst(138,33-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(= @x11
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(or label_8

;; def=OPLSS2021.ParNDSDiv.fst(138,36-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(= @x12
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x21
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x11
@x12
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x18)
@x20
@x19
@x2))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-151,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x21
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x11
@x12
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x18)
@x20
@x19
@x2))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x22
@x21)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x22)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x13))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (HasType @x15
@x13)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (HasType @x18
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (HasType @x19
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x18))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x18)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (HasType @x21
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (HasType @x22
(OPLSS2021.ParNDSDiv.post @x0
@x21
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x21
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x22))

;; def=OPLSS2021.ParNDSDiv.fst(138,42-155,11); use=OPLSS2021.ParNDSDiv.fst(143,10-155,11)
(= @x6
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x13
@x14
@x15)
@x16
@x17
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x18
@x19
@x20)
@x21
@x22
@x23))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(158,38-158,43)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(158,38-158,43)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(158,38-158,43)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17))
@x7))
@x8)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x24 Term))
 (! (implies (and (HasType @x24
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(129,10-138,76); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x8
@x24)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x21
@x22
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-158,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x21
@x22
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x23
@x8
@x2)
@x25)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(or label_10

;; def=OPLSS2021.ParNDSDiv.fst(138,33-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(= @x21
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(or label_11

;; def=OPLSS2021.ParNDSDiv.fst(138,36-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(= @x22
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x26
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x21
@x22
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x23
@x8
@x2))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-158,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x26
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x21
@x22
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x23
@x8
@x2))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x27
@x26)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x27)
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
)
 
;;no pats
:qid @query.29))
)
 
;;no pats
:qid @query.28))
)
 
;;no pats
:qid @query.27))

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x4
@x3
@x5
@x6)
(OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_6364372391e52b339c7bf9c998fc8984 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x4
@x3
@x5
@x6))))
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x4
@x3
@x5
@x6))))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x11
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x14
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (HasType @x17
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(OPLSS2021.ParNDSDiv.post @x0
@x17
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x17
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x15)
@x18))

;; def=OPLSS2021.ParNDSDiv.fst(138,42-162,11); use=OPLSS2021.ParNDSDiv.fst(143,10-162,11)
(= @x6
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x14
@x15
@x16
@x17
@x18
@x19))
)

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(Prims.pure_post (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7)))

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x21)
)


;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x20
@x21)
)
)
 :weight 0


:pattern ((ApplyTT @x20
@x21))
:qid @query.54))
)

;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(166,11-166,18); use=OPLSS2021.ParNDSDiv.fst(166,11-166,18)
(= (OPLSS2021.ParNDSDiv.bools @x2)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(170,22-170,29)
(or label_12

;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(170,22-170,29)
(>= (BoxInt_proj_0 (Prims.op_Addition @x2
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x21
(Prims.op_Addition @x2
(BoxInt 1)))
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(or label_13

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
@x7)))
@x8)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (HasType @x22
(Tm_refine_2da48220457ebe32d13de68fe7c78331 @x12
@x0
@x1
@x11
@x14
@x7
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x23 Term))
 (! (implies (HasType @x23
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x24 Term))
 (! (implies (HasType @x24
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x23
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x25 Term))
 (! (implies (HasType @x25
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x23
@x14
@x7))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
Prims.nat)

;; def=OPLSS2021.ParNDSDiv.fst(167,17-167,40); use=OPLSS2021.ParNDSDiv.fst(167,17-167,40)
(= @x22
(OPLSS2021.ParNDSDiv.Step @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
@x7)
@x23
@x24
@x25
@x26))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
@x7)))
@x25)
)


;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(or label_14

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
@x14))
@x7))
@x25)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x23
@x14
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(129,10-167,38); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x25
@x27)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x17
@x18
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-171,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
@x14)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x23
@x12
@x24
@x14
@x15
@x16
@x17
@x18
@x19)
@x25
@x26)
@x28)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(or label_15

;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(= @x17
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(or label_16

;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(= @x18
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x29 Term))
 (! (implies (and (HasType @x29
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x29
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
@x14)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x23
@x12
@x24
@x14
@x15
@x16
@x17
@x18
@x19)
@x25
@x26))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-171,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x29
(let ((@lb30 @x22))
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.Step_p @lb30))
@x14)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
(OPLSS2021.ParNDSDiv.Step_p @lb30)
@x12
(OPLSS2021.ParNDSDiv.Step__1 @lb30)
@x14
@x15
@x16
@x17
@x18
@x19)
(OPLSS2021.ParNDSDiv.Step_state @lb30)
(OPLSS2021.ParNDSDiv.Step__3 @lb30))))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x30 Term))
 (! (implies (and (HasType @x30
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x30
@x29)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x20
@x30)
)
)
 
;;no pats
:qid @query.64))
)
 
;;no pats
:qid @query.63))
)
)
 
;;no pats
:qid @query.62))
)
 
;;no pats
:qid @query.61))
)
)
 
;;no pats
:qid @query.60))
)
 
;;no pats
:qid @query.59))
)
 
;;no pats
:qid @query.58))
)
 
;;no pats
:qid @query.57))
)
 
;;no pats
:qid @query.56))
)
)
 
;;no pats
:qid @query.55))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(166,11-166,18); use=OPLSS2021.ParNDSDiv.fst(166,11-166,18)
(= (OPLSS2021.ParNDSDiv.bools @x2)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
Prims.bool)

;; def=OPLSS2021.ParNDSDiv.fst(166,11-174,86); use=OPLSS2021.ParNDSDiv.fst(166,11-174,86)
(= (OPLSS2021.ParNDSDiv.bools @x2)
@x21)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(173,22-173,29)
(or label_17

;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(173,22-173,29)
(>= (BoxInt_proj_0 (Prims.op_Addition @x2
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x22
(Prims.op_Addition @x2
(BoxInt 1)))
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(173,17-173,21)
(or label_18

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(173,17-173,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(173,17-173,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x7)))
@x8)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x23 Term))
 (! (implies (HasType @x23
(Tm_refine_2da48220457ebe32d13de68fe7c78331 @x15
@x0
@x1
@x14
@x11
@x7
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x24 Term))
 (! (implies (HasType @x24
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x25 Term))
 (! (implies (HasType @x25
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x24
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x26 Term))
 (! (implies (HasType @x26
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x24
@x11
@x7))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
Prims.nat)

;; def=OPLSS2021.ParNDSDiv.fst(172,17-172,40); use=OPLSS2021.ParNDSDiv.fst(172,17-172,40)
(= @x23
(OPLSS2021.ParNDSDiv.Step @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x7)
@x24
@x25
@x26
@x27))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x24)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x7)))
@x26)
)


;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(or label_19

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x24))
@x7))
@x26)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x24
@x11
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(129,10-172,38); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x26
@x28)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x29 Term))
 (! (implies (and (HasType @x29
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x17
@x18
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-174,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x24)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x24
@x15
@x25
@x17
@x18
@x19)
@x26
@x27)
@x29)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(or label_20

;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(= @x17
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(or label_21

;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(= @x18
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x30 Term))
 (! (implies (and (HasType @x30
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x30
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x24)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x24
@x15
@x25
@x17
@x18
@x19)
@x26
@x27))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-174,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x30
(let ((@lb31 @x23))
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
(OPLSS2021.ParNDSDiv.Step_p @lb31))
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
(OPLSS2021.ParNDSDiv.Step_p @lb31)
@x15
(OPLSS2021.ParNDSDiv.Step__1 @lb31)
@x17
@x18
@x19)
(OPLSS2021.ParNDSDiv.Step_state @lb31)
(OPLSS2021.ParNDSDiv.Step__3 @lb31))))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x31 Term))
 (! (implies (and (HasType @x31
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x31
@x30)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x20
@x31)
)
)
 
;;no pats
:qid @query.75))
)
 
;;no pats
:qid @query.74))
)
)
 
;;no pats
:qid @query.73))
)
 
;;no pats
:qid @query.72))
)
)
 
;;no pats
:qid @query.71))
)
 
;;no pats
:qid @query.70))
)
 
;;no pats
:qid @query.69))
)
 
;;no pats
:qid @query.68))
)
 
;;no pats
:qid @query.67))
)
)
 
;;no pats
:qid @query.66))
)
)
 
;;no pats
:qid @query.65))
))
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
 
;;no pats
:qid @query.49))
)
 
;;no pats
:qid @query.48))
)
 
;;no pats
:qid @query.47))
)
 
;;no pats
:qid @query.46))
)
 
;;no pats
:qid @query.45))
)
 
;;no pats
:qid @query.44))
))
))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.step, 1)
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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
Tm_type)
(HasType @x5
(OPLSS2021.ParNDSDiv.post @x0
@x4
@x1))
(HasType @x6
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
@x3
@x5))
(HasType @x7
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x8
@x0))

;; def=Prims.fst(406,51-406,91); use=FStar.Pervasives.fsti(396,15-396,28)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7)))

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x7))
@x8)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@x10 Term))
 (! (implies (or label_1
(HasType @x10
(Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa @x4
@x5
@x0
@x1
@x3
@x7
@x8)))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x9
@x10)
)
)
 

:pattern (
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x9
@x10)
)
)
:qid @query.2))
)

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Prims.pure_post (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7)))

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x9
@x11)
)


;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x11)
)
)
 :weight 0


:pattern ((ApplyTT @x10
@x11))
:qid @query.4))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x4
@x3
@x5
@x6)
(OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_6364372391e52b339c7bf9c998fc8984 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x4
@x3
@x5
@x6))))
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x4
@x3
@x5
@x6))))
)


;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x4
@x3
@x5
@x6))
)
)

label_2)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(138,42-144,11); use=OPLSS2021.ParNDSDiv.fst(143,10-144,11)
(= @x6
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x11
@x12
@x13))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(144,10-144,11); use=OPLSS2021.ParNDSDiv.fst(146,19-146,20)
(or label_3
(HasType @x13
@x4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
@x11)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x13
@x14)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=OPLSS2021.ParNDSDiv.fst(127,10-146,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (ApplyTT @x5
@x13)
@x15)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(144,10-144,11); use=OPLSS2021.ParNDSDiv.fst(146,27-146,28)
(or label_4
(HasType @x13
@x4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(96,38-144,11); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x13
@x16)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
(ApplyTT @x5
@x13)
@x5))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x4
@x5
@x13)
@x17)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(146,30-146,35)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(146,30-146,35)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(146,30-146,35)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x5
@x13))
@x7))
@x8)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(129,10-138,76); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x8
@x18)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-146,37); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x19
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x4
@x5
@x7
(ApplyTT @x5
@x13)
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x4
@x5
@x13)
@x8
@x2))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x20
@x19)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x20)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x13))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x13
@x0
@x1
@x11
@x14
@x12))

;; def=OPLSS2021.ParNDSDiv.fst(138,42-148,16); use=OPLSS2021.ParNDSDiv.fst(143,10-148,16)
(= @x6
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x11
@x12
@x13
@x14
@x15))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(150,45-150,50)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(150,45-150,50)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(150,45-150,50)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x13
@x14))
@x7))
@x8)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(79,9-138,76); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x8
@x16)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(Prims.dtuple2 @x13
(Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x0
@x1
@x14
@x7
@x13)))

;; def=OPLSS2021.ParNDSDiv.fst(150,12-150,50); use=OPLSS2021.ParNDSDiv.fst(150,12-150,50)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x13)
@x14)
@x7)
@x8)
@x17)
)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (HasType @x18
@x13)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(Tm_refine_7cd3cf06ac65b3464d411ddcc1204ff0 @x0
@x1
@x13
@x14
@x18
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(150,12-150,27); use=OPLSS2021.ParNDSDiv.fst(150,12-150,27)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x13)
@x14)
@x7)
@x8)
(Prims.Mkdtuple2 @x13
(Tm_abs_b14e5bc8b670136a11b2bbe277350688 @x0
@x1
@x14
@x7
@x13)
@x18
@x19))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x11
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x18)
@x12))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(or label_7

;; def=OPLSS2021.ParNDSDiv.fst(138,33-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(= @x11
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(or label_8

;; def=OPLSS2021.ParNDSDiv.fst(138,36-148,14); use=OPLSS2021.ParNDSDiv.fst(151,8-151,41)
(= @x12
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x21
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x11
@x12
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x18)
@x20
@x19
@x2))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-151,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x21
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x11
@x12
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x18)
@x20
@x19
@x2))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x22
@x21)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x22)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-138,43); use=OPLSS2021.ParNDSDiv.fst(143,10-143,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x13))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (HasType @x15
@x13)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (HasType @x17
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (HasType @x18
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (HasType @x19
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x18))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x18)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (HasType @x21
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (HasType @x22
(OPLSS2021.ParNDSDiv.post @x0
@x21
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x23 Term))
 (! (implies (and (HasType @x23
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x21
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x22))

;; def=OPLSS2021.ParNDSDiv.fst(138,42-155,11); use=OPLSS2021.ParNDSDiv.fst(143,10-155,11)
(= @x6
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x13
@x14
@x15)
@x16
@x17
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x18
@x19
@x20)
@x21
@x22
@x23))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(158,38-158,43)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(158,38-158,43)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(158,38-158,43)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17))
@x7))
@x8)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x24 Term))
 (! (implies (and (HasType @x24
@x0)

;; def=OPLSS2021.ParNDSDiv.fst(129,10-138,76); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x8
@x24)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x25 Term))
 (! (implies (and (HasType @x25
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x21
@x22
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-158,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x21
@x22
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x23
@x8
@x2)
@x25)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(or label_10

;; def=OPLSS2021.ParNDSDiv.fst(138,33-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(= @x21
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(or label_11

;; def=OPLSS2021.ParNDSDiv.fst(138,36-155,11); use=OPLSS2021.ParNDSDiv.fst(158,8-158,45)
(= @x22
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x26
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x21
@x22
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x23
@x8
@x2))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-158,45); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x26
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x21
@x22
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x17)
@x23
@x8
@x2))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x27
@x26)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x27)
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
)
 
;;no pats
:qid @query.29))
)
 
;;no pats
:qid @query.28))
)
 
;;no pats
:qid @query.27))

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(138,42-153,9); use=OPLSS2021.ParNDSDiv.fst(143,10-153,9)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x4
@x3
@x5
@x6)
(OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre0 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_6364372391e52b339c7bf9c998fc8984 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m0 @x0
@x1
@x4
@x3
@x5
@x6))))
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(OPLSS2021.ParNDSDiv.__proj__Par__item__pre1 @x0
@x1
@x4
@x3
@x5
@x6)
(Tm_abs_d05c4b96ee62ffca90be25bfc8373904 @x4
@x3
@x5
@x6
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Par__item__m1 @x0
@x1
@x4
@x3
@x5
@x6))))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x11
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x14
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x17 Term))
 (! (implies (HasType @x17
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(OPLSS2021.ParNDSDiv.post @x0
@x17
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x17
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x15)
@x18))

;; def=OPLSS2021.ParNDSDiv.fst(138,42-162,11); use=OPLSS2021.ParNDSDiv.fst(143,10-162,11)
(= @x6
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x14
@x15
@x16
@x17
@x18
@x19))
)

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(Prims.pure_post (OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7)))

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x10
@x21)
)


;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x20
@x21)
)
)
 :weight 0


:pattern ((ApplyTT @x20
@x21))
:qid @query.54))
)

;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(166,11-166,18); use=OPLSS2021.ParNDSDiv.fst(166,11-166,18)
(= (OPLSS2021.ParNDSDiv.bools @x2)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(170,22-170,29)
(or label_12

;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(170,22-170,29)
(>= (BoxInt_proj_0 (Prims.op_Addition @x2
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x21
(Prims.op_Addition @x2
(BoxInt 1)))
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(or label_13

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(170,17-170,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
@x7)))
@x8)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (HasType @x22
(Tm_refine_2da48220457ebe32d13de68fe7c78331 @x12
@x0
@x1
@x11
@x14
@x7
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x23 Term))
 (! (implies (HasType @x23
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x24 Term))
 (! (implies (HasType @x24
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x23
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x25 Term))
 (! (implies (HasType @x25
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x23
@x14
@x7))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x26 Term))
 (! (implies (and (HasType @x26
Prims.nat)

;; def=OPLSS2021.ParNDSDiv.fst(167,17-167,40); use=OPLSS2021.ParNDSDiv.fst(167,17-167,40)
(= @x22
(OPLSS2021.ParNDSDiv.Step @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
@x7)
@x23
@x24
@x25
@x26))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
@x7)))
@x25)
)


;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(or label_14

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(171,78-171,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
@x14))
@x7))
@x25)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x23
@x14
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(129,10-167,38); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x25
@x27)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x17
@x18
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-171,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
@x14)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x23
@x12
@x24
@x14
@x15
@x16
@x17
@x18
@x19)
@x25
@x26)
@x28)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(or label_15

;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(= @x17
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(or label_16

;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(171,13-171,86)
(= @x18
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x29 Term))
 (! (implies (and (HasType @x29
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x29
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x23)
@x14)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x23
@x12
@x24
@x14
@x15
@x16
@x17
@x18
@x19)
@x25
@x26))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-171,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x29
(let ((@lb30 @x22))
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.Step_p @lb30))
@x14)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
(OPLSS2021.ParNDSDiv.Step_p @lb30)
@x12
(OPLSS2021.ParNDSDiv.Step__1 @lb30)
@x14
@x15
@x16
@x17
@x18
@x19)
(OPLSS2021.ParNDSDiv.Step_state @lb30)
(OPLSS2021.ParNDSDiv.Step__3 @lb30))))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x30 Term))
 (! (implies (and (HasType @x30
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x30
@x29)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x20
@x30)
)
)
 
;;no pats
:qid @query.64))
)
 
;;no pats
:qid @query.63))
)
)
 
;;no pats
:qid @query.62))
)
 
;;no pats
:qid @query.61))
)
)
 
;;no pats
:qid @query.60))
)
 
;;no pats
:qid @query.59))
)
 
;;no pats
:qid @query.58))
)
 
;;no pats
:qid @query.57))
)
 
;;no pats
:qid @query.56))
)
)
 
;;no pats
:qid @query.55))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(166,11-166,18); use=OPLSS2021.ParNDSDiv.fst(166,11-166,18)
(= (OPLSS2021.ParNDSDiv.bools @x2)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
Prims.bool)

;; def=OPLSS2021.ParNDSDiv.fst(166,11-174,86); use=OPLSS2021.ParNDSDiv.fst(166,11-174,86)
(= (OPLSS2021.ParNDSDiv.bools @x2)
@x21)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(173,22-173,29)
(or label_17

;; def=Prims.fst(680,18-680,24); use=OPLSS2021.ParNDSDiv.fst(173,22-173,29)
(>= (BoxInt_proj_0 (Prims.op_Addition @x2
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x22 Term))
 (! (implies (and (HasType @x22
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x22
(Prims.op_Addition @x2
(BoxInt 1)))
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(173,17-173,21)
(or label_18

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(173,17-173,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(173,17-173,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x7)))
@x8)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x23 Term))
 (! (implies (HasType @x23
(Tm_refine_2da48220457ebe32d13de68fe7c78331 @x15
@x0
@x1
@x14
@x11
@x7
@x8))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x24 Term))
 (! (implies (HasType @x24
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x25 Term))
 (! (implies (HasType @x25
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x24
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x26 Term))
 (! (implies (HasType @x26
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x24
@x11
@x7))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x27 Term))
 (! (implies (and (HasType @x27
Prims.nat)

;; def=OPLSS2021.ParNDSDiv.fst(172,17-172,40); use=OPLSS2021.ParNDSDiv.fst(172,17-172,40)
(= @x23
(OPLSS2021.ParNDSDiv.Step @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x7)
@x24
@x25
@x26
@x27))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x24)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x7)))
@x26)
)


;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(or label_19

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(174,78-174,84)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x24))
@x7))
@x26)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x28 Term))
 (! (implies (and (HasType @x28
(Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee @x0
@x1
@x24
@x11
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(129,10-172,38); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x26
@x28)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x29 Term))
 (! (implies (and (HasType @x29
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x17
@x18
@x7))

;; def=OPLSS2021.ParNDSDiv.fst(139,8-174,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= (OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x24)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x24
@x15
@x25
@x17
@x18
@x19)
@x26
@x27)
@x29)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(or label_20

;; def=OPLSS2021.ParNDSDiv.fst(138,33-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(= @x17
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(or label_21

;; def=OPLSS2021.ParNDSDiv.fst(138,36-162,11); use=OPLSS2021.ParNDSDiv.fst(174,13-174,86)
(= @x18
@x5)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x30 Term))
 (! (implies (and (HasType @x30
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x30
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x24)
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x24
@x15
@x25
@x17
@x18
@x19)
@x26
@x27))


;; def=OPLSS2021.ParNDSDiv.fst(139,8-174,86); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x30
(let ((@lb31 @x23))
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x17
@x18
@x7
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
(OPLSS2021.ParNDSDiv.Step_p @lb31))
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
(OPLSS2021.ParNDSDiv.Step_p @lb31)
@x15
(OPLSS2021.ParNDSDiv.Step__1 @lb31)
@x17
@x18
@x19)
(OPLSS2021.ParNDSDiv.Step_state @lb31)
(OPLSS2021.ParNDSDiv.Step__3 @lb31))))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(forall ((@x31 Term))
 (! (implies (and (HasType @x31
(OPLSS2021.ParNDSDiv.step_result @x0
@x1
@x4
@x5
@x7))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(= @x31
@x30)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(143,4-174,86)
(ApplyTT @x20
@x31)
)
)
 
;;no pats
:qid @query.75))
)
 
;;no pats
:qid @query.74))
)
)
 
;;no pats
:qid @query.73))
)
 
;;no pats
:qid @query.72))
)
)
 
;;no pats
:qid @query.71))
)
 
;;no pats
:qid @query.70))
)
 
;;no pats
:qid @query.69))
)
 
;;no pats
:qid @query.68))
)
 
;;no pats
:qid @query.67))
)
)
 
;;no pats
:qid @query.66))
)
)
 
;;no pats
:qid @query.65))
))
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
 
;;no pats
:qid @query.49))
)
 
;;no pats
:qid @query.48))
)
 
;;no pats
:qid @query.47))
)
 
;;no pats
:qid @query.46))
)
 
;;no pats
:qid @query.45))
)
 
;;no pats
:qid @query.44))
))
))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.step, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Act, data_elim_OPLSS2021.ParNDSDiv.Mkcomm_monoid, data_elim_OPLSS2021.ParNDSDiv.Par, data_elim_OPLSS2021.ParNDSDiv.Ret, data_elim_OPLSS2021.ParNDSDiv.Step, disc_equation_OPLSS2021.ParNDSDiv.Act, disc_equation_OPLSS2021.ParNDSDiv.Par, disc_equation_OPLSS2021.ParNDSDiv.Ret, equation_OPLSS2021.ParNDSDiv.associative, equation_OPLSS2021.ParNDSDiv.commutative, equation_Prims.nat, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.m, int_inversion, interpretation_Tm_abs_eef417df7f04bcb18767c8f35ff44e36, primitive_Prims.op_Addition, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_OPLSS2021.ParNDSDiv.Par_a, projection_inverse_OPLSS2021.ParNDSDiv.Par_m0, projection_inverse_OPLSS2021.ParNDSDiv.Par_m1, projection_inverse_OPLSS2021.ParNDSDiv.Par_post, projection_inverse_OPLSS2021.ParNDSDiv.Par_post0, projection_inverse_OPLSS2021.ParNDSDiv.Par_post1, projection_inverse_OPLSS2021.ParNDSDiv.Par_pre0, projection_inverse_OPLSS2021.ParNDSDiv.Par_pre1, refinement_interpretation_Tm_refine_509b28e522ac3e9a08a5e29acdcb74ee, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_5e91f50d8d593f2b48418e30fa5c43c8, refinement_interpretation_Tm_refine_761f4edd49a1818dd8f251cfd090463a, refinement_interpretation_Tm_refine_afd7effb35c4e67fc714e71ddf43a8aa, token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec step


; <Start encoding let rec step>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.step (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.step@tok () Term)

; </end encoding let rec step>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(56,2-56,5); use=OPLSS2021.ParNDSDiv.fst(56,2-56,5)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0)))
(HasType (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x0
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp))

:named typing_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(56,2-56,5); use=OPLSS2021.ParNDSDiv.fst(56,2-56,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x0
@x1)
(OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp @x1))
 

:pattern ((OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x0
@x1))
:qid proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp))

:named proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp))
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

; Starting query at OPLSS2021.ParNDSDiv.fst(190,4-194,21)

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.run (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.run@tok () Term)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)





(declare-fun Tm_refine_92692ec9fcfa76a83d3c07501534d571 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type)
 

:pattern ((HasType (Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid refinement_kinding_Tm_refine_92692ec9fcfa76a83d3c07501534d571))

:named refinement_kinding_Tm_refine_92692ec9fcfa76a83d3c07501534d571))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x2
@x3
@x4
@x5
@x6
@x7))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.step_result @x4
@x5
@x2
@x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x4
@x5)))

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(193,34-193,38)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(193,34-193,38)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x4)
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x4)
@x5)
@x6)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x4
@x5)))
@x7)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x2
@x3
@x4
@x5
@x6
@x7)))
:qid refinement_interpretation_Tm_refine_92692ec9fcfa76a83d3c07501534d571))

:named refinement_interpretation_Tm_refine_92692ec9fcfa76a83d3c07501534d571))
;;;;;;;;;;;;;;;;haseq for Tm_refine_92692ec9fcfa76a83d3c07501534d571
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x0
@x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.step_result @x2
@x3
@x0
@x1
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x2
@x3)))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x0
@x1
@x2
@x3
@x4
@x5))))
:qid haseqTm_refine_92692ec9fcfa76a83d3c07501534d571))

:named haseqTm_refine_92692ec9fcfa76a83d3c07501534d571))


(declare-fun Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(129,10-129,53); use=OPLSS2021.ParNDSDiv.fst(193,10-193,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1))

:named refinement_kinding_Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(129,10-129,53); use=OPLSS2021.ParNDSDiv.fst(193,10-193,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(193,10-193,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(129,19-129,52); use=OPLSS2021.ParNDSDiv.fst(193,10-193,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
@x4)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x2
@x3)))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1))

:named refinement_interpretation_Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(129,10-129,53); use=OPLSS2021.ParNDSDiv.fst(193,10-193,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x0
@x1
@x2)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x0
@x1
@x2))))
:qid haseqTm_refine_0640b2309f6e9bb4ec382dad82c77ff1))

:named haseqTm_refine_0640b2309f6e9bb4ec382dad82c77ff1))


(declare-fun Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0))

:named refinement_kinding_Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 @x2
@x3))

;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x3)
@x4)
@x5)
@x6)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0))

:named refinement_interpretation_Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(407,32-407,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0))

:named haseqTm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0))






; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (i: Prims.nat)
;   (pre: c.r)
;   (a: Type)
;   (post: OPLSS2021.ParNDSDiv.post a c)
;   (f: OPLSS2021.ParNDSDiv.m a pre post)
;   (state: s).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (a & s)).
;     c.interp pre state /\
;     (forall (a: _: (a & s){c.interp pre state}).
;         (let x, state' = a in
;           c.interp (post x) state') ==>
;         p a) ==>
;     (forall (k: Prims.pure_post (a & s)).
;         (forall (x: a & s). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;         (forall (b: Type) (b: (_: b -> c.r)) (b: b).
;             f == OPLSS2021.ParNDSDiv.Ret b ==>
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==>
;                 (forall (any_result: a & s).
;                     any_result == (b, state) ==>
;                     (forall (return_val: a & s). return_val == any_result ==> k return_val)))) /\
;         (~(Ret? f) ==>
;           (forall (b: OPLSS2021.ParNDSDiv.m a pre post).
;               f == b ==>
;               c.interp (c.star pre c.emp) state /\
;               (forall (a:
;                   _:
;                   OPLSS2021.ParNDSDiv.step_result a post c.emp {c.interp (c.star pre c.emp) state})
;                   (b: c.r)
;                   (b: OPLSS2021.ParNDSDiv.m a b post)
;                   (b: state: s{c.interp (c.star b c.emp) state})
;                   (b: Prims.nat).
;                   a == OPLSS2021.ParNDSDiv.Step b b b b ==>
;                   c.interp b b /\
;                   (forall (a: _: (a & s){c.interp b b}).
;                       (let x, state' = a in
;                         c.interp (post x) state') ==>
;                       k a)))))


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
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
Tm_type)
(HasType @x5
(OPLSS2021.ParNDSDiv.post @x0
@x4
@x1))
(HasType @x6
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
@x3
@x5))
(HasType @x7
@x0))

;; def=Prims.fst(406,51-406,91); use=FStar.Pervasives.fsti(396,15-396,28)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.pure_post (FStar.Pervasives.Native.tuple2 @x4
@x0)))

;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
@x3)
@x7)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=FStar.Pervasives.fsti(412,9-412,24)
(forall ((@x9 Term))
 (! (implies (and (or label_1
(HasType @x9
(Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x4
@x0
@x1
@x3
@x7)))
(let ((@lb10 @x9))

;; def=OPLSS2021.ParNDSDiv.fst(189,6-189,30); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(189,6-189,30); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(189,6-189,30); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT @x5
(FStar.Pervasives.Native.Mktuple2__1 @lb10)))
(FStar.Pervasives.Native.Mktuple2__2 @lb10))
)
)
))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x8
@x9)
)
)
 

:pattern (
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=FStar.Pervasives.fsti(412,9-412,24)
(ApplyTT @x8
@x9)
)
)
:qid @query.2))
)

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (FStar.Pervasives.Native.tuple2 @x4
@x0)))

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x10 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(Valid 
;; def=Prims.fst(402,73-402,79); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(ApplyTT @x8
@x10)
)


;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(ApplyTT @x9
@x10)
)
)
 :weight 0


:pattern ((ApplyTT @x9
@x10))
:qid @query.4))
)

;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x10 Term))
 (! (implies (HasType @x10
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x10))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
@x10)

;; def=OPLSS2021.ParNDSDiv.fst(184,41-191,11); use=OPLSS2021.ParNDSDiv.fst(190,10-191,11)
(= @x6
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x10
@x11
@x12))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(191,10-191,11); use=OPLSS2021.ParNDSDiv.fst(191,15-191,16)
(or label_3
(HasType @x12
@x4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
@x10)

;; def=FStar.Pervasives.Native.fst(59,33-59,35); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(= @x12
@x13)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(FStar.Pervasives.Native.tuple2 @x4
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(185,8-191,23); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(= @x14
(FStar.Pervasives.Native.Mktuple2 @x4
@x0
@x12
@x7))
)

;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(FStar.Pervasives.Native.tuple2 @x4
@x0))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(= @x15
@x14)
)

;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(Valid 
;; def=Prims.fst(356,46-356,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(ApplyTT @x9
@x15)
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
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(184,41-184,42); use=OPLSS2021.ParNDSDiv.fst(190,10-190,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x4
@x3
@x5
@x6))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
@x3
@x5))

;; def=OPLSS2021.ParNDSDiv.fst(184,41-192,7); use=OPLSS2021.ParNDSDiv.fst(190,10-192,7)
(= @x6
@x10)
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(193,34-193,38)
(or label_4

;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(193,34-193,38)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(141,10-141,45); use=OPLSS2021.ParNDSDiv.fst(193,34-193,38)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x0
@x1)))
@x7)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_refine_92692ec9fcfa76a83d3c07501534d571 @x4
@x5
@x0
@x1
@x3
@x7))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x4
@x12
@x5))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1 @x0
@x1
@x12))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
Prims.nat)

;; def=OPLSS2021.ParNDSDiv.fst(193,10-193,31); use=OPLSS2021.ParNDSDiv.fst(193,10-193,31)
(= @x11
(OPLSS2021.ParNDSDiv.Step @x0
@x1
@x4
@x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__emp @x0
@x1)
@x12
@x13
@x14
@x15))
)

;; def=FStar.Pervasives.fsti(409,25-409,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(187,6-187,24); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
@x12)
@x14)
)
)


;; def=FStar.Pervasives.fsti(409,32-409,58); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0 @x4
@x0
@x1
@x12
@x14))
(let ((@lb17 @x16))

;; def=OPLSS2021.ParNDSDiv.fst(189,6-189,30); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(189,6-189,30); use=OPLSS2021.ParNDSDiv.fst(194,6-194,9)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT @x5
(FStar.Pervasives.Native.Mktuple2__1 @lb17)))
(FStar.Pervasives.Native.Mktuple2__2 @lb17))
)
))

;; def=FStar.Pervasives.fsti(409,54-409,57); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(Valid 
;; def=FStar.Pervasives.fsti(409,54-409,57); use=OPLSS2021.ParNDSDiv.fst(190,4-194,21)
(ApplyTT @x9
@x16)
)
)
 
;;no pats
:qid @query.17))
)
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
; QUERY ID: (OPLSS2021.ParNDSDiv.run, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Mkcomm_monoid, data_elim_OPLSS2021.ParNDSDiv.Ret, equation_OPLSS2021.ParNDSDiv.is_unit, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_emp, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_interp, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, refinement_interpretation_Tm_refine_0640b2309f6e9bb4ec382dad82c77ff1, refinement_interpretation_Tm_refine_5dfdbd7c769e5dbb11bbacdf985db8c0, refinement_interpretation_Tm_refine_761f4edd49a1818dd8f251cfd090463a, token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec run


; <Start encoding let rec run>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.run (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.run@tok () Term)

; </end encoding let rec run>


; encoding sigelt let return


; <Start encoding let return>


(declare-fun OPLSS2021.ParNDSDiv.return (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;x: a -> post: (_: a -> c.r) -> m a (post x) post
(declare-fun Tm_arrow_68e01d30ee2b3e705de49a21c6f481d2 () Term)
(declare-fun OPLSS2021.ParNDSDiv.return@tok () Term)


; </end encoding let return>

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
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(218,4-234,23)

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.bind (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.bind@tok () Term)
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




(declare-fun Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(210,15-216,41); use=OPLSS2021.ParNDSDiv.fst(216,20-216,41)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2))

:named non_total_function_typing_Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2))



(declare-fun Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0))

:named non_total_function_typing_Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0))




(declare-fun Non_total_Tm_arrow_19df82a2d0ef59d819a30c6c6165f217 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_19df82a2d0ef59d819a30c6c6165f217 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_19df82a2d0ef59d819a30c6c6165f217 @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_19df82a2d0ef59d819a30c6c6165f217))

:named non_total_function_typing_Non_total_Tm_arrow_19df82a2d0ef59d819a30c6c6165f217))
;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_OPLSS2021.ParNDSDiv_570 (Term Term Term Term Term Term Term Term Term Term) Term)















; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (b: Type)
;   (p: c.r)
;   (q: (_: a -> c.r))
;   (r: (_: b -> c.r))
;   (f: OPLSS2021.ParNDSDiv.m a p q)
;   (g: (x: a -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (q x) r))).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.ParNDSDiv.m b p r)).
;     (forall (any_result: OPLSS2021.ParNDSDiv.m b p r). p any_result) ==>
;     (forall (k: Prims.pure_post (OPLSS2021.ParNDSDiv.m b p r)).
;         (forall (x: OPLSS2021.ParNDSDiv.m b p r). {:pattern Prims.guard_free (k x)}
;             Prims.auto_squash (k x)) ==>
;         (~(Ret? f) /\ ~(Act? f) /\ ~(Par? f) ==> Prims.l_False) /\
;         (forall (b: Type) (b: (_: b -> c.r)) (b: b).
;             f == OPLSS2021.ParNDSDiv.Ret b ==>
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==> (forall (any_result: OPLSS2021.ParNDSDiv.m b (q b) r). q b == p)
;             )) /\
;         (~(Ret? f) ==>
;           (forall (b: Type)
;               (b: (_: b -> c.r))
;               (b: Type0)
;               (b: OPLSS2021.ParNDSDiv.action c b)
;               (b: (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) b))).
;               f == OPLSS2021.ParNDSDiv.Act b b ==>
;               (forall (x: b).
;                   (*  - Could not prove post-condition
; *)
;                   forall (p: Prims.pure_post (OPLSS2021.ParNDSDiv.m b (b.post x) r)).
;                     (forall (any_result: OPLSS2021.ParNDSDiv.m b (b.post x) r). p any_result) ==>
;                     (forall (any_result: OPLSS2021.ParNDSDiv.m b (b.post x) b).
;                         (forall (_: b). Prims.has_type _ a) /\ (forall (x: a). q x == b x))) /\
;               (forall (any_result:
;                   (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) r)))
;                   (any_result: OPLSS2021.ParNDSDiv.m b b.pre r).
;                   OPLSS2021.ParNDSDiv.Act b
;                     (fun x ->
;                         let _ = b x in
;                         OPLSS2021.ParNDSDiv.bind _ g) ==
;                   any_result ==>
;                   b.pre == p)) /\
;           (~(Act? f) ==>
;             (forall (b: c.r)
;                 (b: c.r)
;                 (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                 (b: c.r)
;                 (b: c.r)
;                 (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                 (b: Type)
;                 (b: OPLSS2021.ParNDSDiv.post b c)
;                 (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;                 f == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;                 (forall (_: b). Prims.has_type _ a) /\ (forall (x: a). q x == b x) /\
;                 (forall (any_result:
;                     (x: a -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (q x) r)))
;                     (any_result: OPLSS2021.ParNDSDiv.m b (c.star b b) r)
;                     (any_result:
;                     OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                     (any_result:
;                     OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b)).
;                     c.star b b == p)))))


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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x2))
(HasType @x6
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x3))
(HasType @x7
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x4
@x5))
(HasType @x8
(Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2 @x2
@x0
@x1
@x3
@x5
@x6)))
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.pure_post (OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
@x4
@x6)))

;; def=Prims.fst(451,66-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(forall ((@x10 Term))
 (! (implies (or label_1
(HasType @x10
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
@x4
@x6)))

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
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Prims.pure_post (OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
@x4
@x6)))

;; def=Prims.fst(402,27-402,88); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x11 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(ApplyTT @x10
@x11)
)

 

:pattern ((ApplyTT @x10
@x11))
:qid @query.4))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x4
@x5
@x7))
)


;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x4
@x5
@x7))
)


;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x4
@x5
@x7))
)
)

label_2)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(215,14-219,11); use=OPLSS2021.ParNDSDiv.fst(218,10-219,11)
(= @x7
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x11
@x12
@x13))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(219,10-219,11); use=OPLSS2021.ParNDSDiv.fst(219,17-219,18)
(or label_3
(HasType @x13
@x2))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(216,18-219,11); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(= @x13
@x14)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
(ApplyTT @x5
@x13)
@x6))

;; def=OPLSS2021.ParNDSDiv.fst(212,15-216,38); use=OPLSS2021.ParNDSDiv.fst(219,15-219,18)
(or label_4

;; def=OPLSS2021.ParNDSDiv.fst(212,15-216,38); use=OPLSS2021.ParNDSDiv.fst(219,15-219,18)
(= (ApplyTT @x5
@x13)
@x4)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x4
@x5
@x7))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x13 Term))
 (! (implies (HasType @x13
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x13))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Non_total_Tm_arrow_b6a4ff44e53d963172f47b31d1431ce0 @x13
@x0
@x1
@x11
@x14
@x12))

;; def=OPLSS2021.ParNDSDiv.fst(215,14-220,15); use=OPLSS2021.ParNDSDiv.fst(218,10-220,15)
(= @x7
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x11
@x12
@x13
@x14
@x15))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x16 Term))
 (! (implies (HasType @x16
@x13)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(Prims.pure_post (OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x16)
@x6)))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x18 Term))
 (! (implies (or label_5
(HasType @x18
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x16)
@x6)))

;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(ApplyTT @x17
@x18)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(ApplyTT @x17
@x18)
)
)
:qid @query.17))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(221,24-221,36)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x11
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x13)
@x14)
@x16)
@x12))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(221,35-221,36)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(221,35-221,36)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x11)

;; def=OPLSS2021.ParNDSDiv.fst(216,14-216,15); use=OPLSS2021.ParNDSDiv.fst(221,35-221,36)
(or label_6
(HasType @x19
@x2))
)
 
;;no pats
:qid @query.19))


;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(221,35-221,36)
(forall ((@x19 Term))
 (! (implies (HasType @x19
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(216,33-216,38); use=OPLSS2021.ParNDSDiv.fst(221,35-221,36)
(or label_7

;; def=OPLSS2021.ParNDSDiv.fst(216,33-216,38); use=OPLSS2021.ParNDSDiv.fst(221,35-221,36)
(= (ApplyTT @x5
@x19)
(ApplyTT @x12
@x19))
)
)
 
;;no pats
:qid @query.20))
)
)
 
;;no pats
:qid @query.18))
)
 
;;no pats
:qid @query.16))
)
 
;;no pats
:qid @query.15))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(Non_total_Tm_arrow_19df82a2d0ef59d819a30c6c6165f217 @x13
@x0
@x1
@x3
@x14
@x6))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x13
@x14)
@x6))

;; def=OPLSS2021.ParNDSDiv.fst(217,7-221,37); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(= (OPLSS2021.ParNDSDiv.Act @x0
@x1
@x3
@x6
@x13
@x14
(Tm_abs_OPLSS2021.ParNDSDiv_570 @x13
@x0
@x1
@x11
@x3
@x14
@x12
@x6
@x8
@x15))
@x17)
)

;; def=OPLSS2021.ParNDSDiv.fst(97,105-212,16); use=OPLSS2021.ParNDSDiv.fst(221,6-221,37)
(or label_8

;; def=OPLSS2021.ParNDSDiv.fst(97,105-212,16); use=OPLSS2021.ParNDSDiv.fst(221,6-221,37)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x13
@x14)
@x4)
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
 
;;no pats
:qid @query.10))

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(215,14-215,15); use=OPLSS2021.ParNDSDiv.fst(218,10-218,11)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x4
@x5
@x7))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x11
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x15 Term))
 (! (implies (HasType @x15
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x14
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x17 Term))
 (! (implies (HasType @x17
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(OPLSS2021.ParNDSDiv.post @x0
@x17
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x19 Term))
 (! (implies (and (HasType @x19
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x17
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x15)
@x18))

;; def=OPLSS2021.ParNDSDiv.fst(215,14-224,11); use=OPLSS2021.ParNDSDiv.fst(218,10-224,11)
(= @x7
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x11
@x12
@x13
@x14
@x15
@x16
@x17
@x18
@x19))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(225,52-225,53)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x17)

;; def=OPLSS2021.ParNDSDiv.fst(216,14-216,15); use=OPLSS2021.ParNDSDiv.fst(225,52-225,53)
(or label_9
(HasType @x20
@x2))
)
 
;;no pats
:qid @query.32))


;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(225,52-225,53)
(forall ((@x20 Term))
 (! (implies (HasType @x20
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(216,33-216,38); use=OPLSS2021.ParNDSDiv.fst(225,52-225,53)
(or label_10

;; def=OPLSS2021.ParNDSDiv.fst(216,33-216,38); use=OPLSS2021.ParNDSDiv.fst(225,52-225,53)
(= (ApplyTT @x5
@x20)
(ApplyTT @x18
@x20))
)
)
 
;;no pats
:qid @query.33))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x20 Term))
 (! (implies (HasType @x20
(Non_total_Tm_arrow_a25ad9b09971c72b54fb69d4ec4ebac2 @x2
@x0
@x1
@x3
@x5
@x6))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x21 Term))
 (! (implies (HasType @x21
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x3
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x12)
@x15)
@x6))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x22 Term))
 (! (implies (HasType @x22
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x11
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x12
@x1
@x0)))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(218,4-234,23)
(forall ((@x23 Term))
 (! (implies (HasType @x23
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x14
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x15
@x1
@x0)))

;; def=OPLSS2021.ParNDSDiv.fst(101,14-212,16); use=OPLSS2021.ParNDSDiv.fst(232,6-234,23)
(or label_11

;; def=OPLSS2021.ParNDSDiv.fst(101,14-212,16); use=OPLSS2021.ParNDSDiv.fst(232,6-234,23)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x11)
@x14)
@x4)
)
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
 
;;no pats
:qid @query.34))
)
)
 
;;no pats
:qid @query.31))
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
))
))
)
 
;;no pats
:qid @query.3)))
 
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
; QUERY ID: (OPLSS2021.ParNDSDiv.bind, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Act, data_elim_OPLSS2021.ParNDSDiv.Par, data_elim_OPLSS2021.ParNDSDiv.Ret, disc_equation_OPLSS2021.ParNDSDiv.Act, disc_equation_OPLSS2021.ParNDSDiv.Par, disc_equation_OPLSS2021.ParNDSDiv.Ret, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.m, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec bind


; <Start encoding let rec bind>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.bind (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.bind@tok () Term)

; </end encoding let rec bind>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(246,3-255,17)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



(declare-fun Tm_refine_d0fdf293377c48d3d00587c355c0c05a (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,24-248,62); use=OPLSS2021.ParNDSDiv.fst(248,24-248,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type)
 

:pattern ((HasType (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid refinement_kinding_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))

:named refinement_kinding_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,24-248,62); use=OPLSS2021.ParNDSDiv.fst(248,24-248,62)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x2
@x3
@x4
@x5
@x6
@x7))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(248,30-248,60); use=OPLSS2021.ParNDSDiv.fst(248,30-248,60)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(248,30-248,60); use=OPLSS2021.ParNDSDiv.fst(248,30-248,60)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x2
@x3
@x4
@x5))
@x6))
@x7))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x2
@x3
@x4
@x5
@x6
@x7)))
:qid refinement_interpretation_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))

:named refinement_interpretation_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d0fdf293377c48d3d00587c355c0c05a
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,24-248,62); use=OPLSS2021.ParNDSDiv.fst(248,24-248,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5))))
:qid haseqTm_refine_d0fdf293377c48d3d00587c355c0c05a))

:named haseqTm_refine_d0fdf293377c48d3d00587c355c0c05a))














(declare-fun Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type)
 

:pattern ((HasType (Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type))
:qid refinement_kinding_Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26))

:named refinement_kinding_Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x2
@x3
@x4
@x5
@x6
@x7
@x8))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x2)
@x3)
@x4)
@x5)
@x6))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
@x7)
@x8)))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x2
@x3
@x4
@x5
@x6
@x7
@x8)))
:qid refinement_interpretation_Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26))

:named refinement_interpretation_Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x0
@x1
@x2
@x3
@x4
@x5
@x6))))
:qid haseqTm_refine_d20b6795dd495f1dbfcd85bbc6003f26))

:named haseqTm_refine_d20b6795dd495f1dbfcd85bbc6003f26))

(declare-fun Tm_abs_ddf62441534c670b937500e371300d03 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_ddf62441534c670b937500e371300d03
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_ddf62441534c670b937500e371300d03 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x5))
 

:pattern ((Tm_abs_ddf62441534c670b937500e371300d03 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_ddf62441534c670b937500e371300d03))

:named typing_Tm_abs_ddf62441534c670b937500e371300d03))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_ddf62441534c670b937500e371300d03
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_ddf62441534c670b937500e371300d03 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x1
@x2
@x6
@x3
@x0
@x4
@x5))
 

:pattern ((ApplyTT (Tm_abs_ddf62441534c670b937500e371300d03 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_ddf62441534c670b937500e371300d03))

:named interpretation_Tm_abs_ddf62441534c670b937500e371300d03))














;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok))
:named @kick_partial_app_8a532fbafe8e561435a3bdb48469865f))

















(declare-fun Tm_refine_b80b8a11f888513096d6a81ce2681e43 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type)
 

:pattern ((HasType (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type))
:qid refinement_kinding_Tm_refine_b80b8a11f888513096d6a81ce2681e43))

:named refinement_kinding_Tm_refine_b80b8a11f888513096d6a81ce2681e43))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x2
@x3
@x4
@x5
@x6
@x7
@x8))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x2)
@x3)
@x4)
@x5)
@x6))
@x7))
@x8))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x2
@x3
@x4
@x5
@x6
@x7
@x8)))
:qid refinement_interpretation_Tm_refine_b80b8a11f888513096d6a81ce2681e43))

:named refinement_interpretation_Tm_refine_b80b8a11f888513096d6a81ce2681e43))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b80b8a11f888513096d6a81ce2681e43
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6))))
:qid haseqTm_refine_b80b8a11f888513096d6a81ce2681e43))

:named haseqTm_refine_b80b8a11f888513096d6a81ce2681e43))

(declare-fun Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x5))
 

:pattern ((Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))

:named typing_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x1
@x2
@x6
@x3
@x0
@x4
@x5))
 

:pattern ((ApplyTT (Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))

:named interpretation_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))
;;;;;;;;;;;;;;;;frame: c.r -> s0: s{c.interp (c.star (c.star f.pre fr) frame) s0}   -> x: a & s1: s{c.interp (c.star (c.star (f.post x) fr) frame) s1}
(declare-fun Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid kinding_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))

:named kinding_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x2
@x3
@x4
@x5
@x6))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x2
@x3
@x4
@x5
@x6)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x1
@x2
@x3
@x4
@x5))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x5
@x4))
(HasType @x7
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x5
@x4
@x3
@x2
@x1
@x6)))
(HasType (ApplyTT (ApplyTT @x0
@x6)
@x7)
(Prims.dtuple2 @x3
(Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x5
@x4
@x2
@x1
@x6
@x3))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x6)
@x7))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x5
@x4))
(IsTotFun (ApplyTT @x0
@x6)))
 

:pattern ((ApplyTT @x0
@x6))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x1
@x2
@x3
@x4
@x5)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))




(declare-fun Tm_abs_f30d5a7c45428c392e921699516bb67b (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_f30d5a7c45428c392e921699516bb67b
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(247,17-247,37); use=OPLSS2021.ParNDSDiv.fst(247,17-247,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_f30d5a7c45428c392e921699516bb67b @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x3
@x4))
 

:pattern ((Tm_abs_f30d5a7c45428c392e921699516bb67b @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_f30d5a7c45428c392e921699516bb67b))

:named typing_Tm_abs_f30d5a7c45428c392e921699516bb67b))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_f30d5a7c45428c392e921699516bb67b
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(247,17-247,37); use=OPLSS2021.ParNDSDiv.fst(247,17-247,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_f30d5a7c45428c392e921699516bb67b @x1
@x2
@x3
@x4
@x5)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x4)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x4)
@x3)
@x5)
@x1)
@x0))
@x2))
 

:pattern ((ApplyTT (Tm_abs_f30d5a7c45428c392e921699516bb67b @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_f30d5a7c45428c392e921699516bb67b))

:named interpretation_Tm_abs_f30d5a7c45428c392e921699516bb67b))

























(declare-fun Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(250,7-251,19); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x0
@x1
@x2
@x3
@x4))
 

:pattern ((Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))

:named typing_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(250,7-251,19); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x2
@x3
@x4
@x5
@x6)
@x0)
@x1)
(let ((@lb7 (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x6)
@x5)
@x4)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x6)
@x5)
@x2)
@x0))
@x1)))
(Prims.Mkdtuple2 @x4
(Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x6
@x5
@x3
@x2
@x0
@x4)
(Prims.Mkdtuple2__1 @lb7)
(Prims.Mkdtuple2__2 @lb7))))
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x2
@x3
@x4
@x5
@x6)
@x0)
@x1))
:qid interpretation_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))

:named interpretation_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))































































; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (f: OPLSS2021.ParNDSDiv.action c a)
;   (fr: c.r).
;   (*  - Could not prove post-condition
; *)
;   (forall (frame: c.r) (s0: s{c.interp (c.star (c.star f.pre fr) frame) s0}).
;       (*  - Could not prove post-condition
; *)
;       (c.interp (c.star (c.star f.pre fr) frame) s0 ==> c.interp (c.star f.pre (c.star fr frame)) s0
;       ) /\
;       (forall (any_result: s0: s{c.interp (c.star (c.star f.pre fr) frame) s0}).
;           s0 == any_result ==>
;           (forall (any_result: x: a & s1: s{c.interp (c.star (f.post x) (c.star fr frame)) s1}).
;               f.sem (c.star fr frame) s0 == any_result ==>
;               (forall (b: a) (b: s1: s{c.interp (c.star (f.post b) (c.star fr frame)) s1}).
;                   f.sem (c.star fr frame) s0 == (| b, b |) ==>
;                   c.interp (c.star (f.post b) (c.star fr frame)) b ==>
;                   c.interp (c.star (c.star (f.post b) fr) frame) b)))) /\
;   (forall (any_result:
;       (frame: c.r -> s0: s{c.interp (c.star (c.star f.pre fr) frame) s0}
;           -> x: a & s1: s{c.interp (c.star (c.star (f.post x) fr) frame) s1})).
;       (fun frame s0 ->
;           (let (| x , s1 |) = f.sem (c.star fr frame) s0 in
;             (| x, s1 |))
;           <:
;           x: a & s1: s{c.interp (c.star (c.star (f.post x) fr) frame) s1}) ==
;       any_result ==>
;       (OPLSS2021.ParNDSDiv.Mkaction (c.star f.pre fr)
;           (fun x -> c.star (f.post x) fr)
;           (fun frame s0 ->
;               (let (| x , s1 |) = f.sem (c.star fr frame) s0 in
;                 (| x, s1 |))
;               <:
;               x: a & s1: s{c.interp (c.star (c.star (f.post x) fr) frame) s1}))
;         .post ==
;       (fun x -> c.star (f.post x) fr) /\
;       (OPLSS2021.ParNDSDiv.Mkaction (c.star f.pre fr)
;           (fun x -> c.star (f.post x) fr)
;           (fun frame s0 ->
;               (let (| x , s1 |) = f.sem (c.star fr frame) s0 in
;                 (| x, s1 |))
;               <:
;               x: a & s1: s{c.interp (c.star (c.star (f.post x) fr) frame) s1}))
;         .pre ==
;       c.star f.pre fr)


; Context: While encoding a query
; While typechecking the top-level declaration `let frame_action`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
(HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x6
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(248,30-248,60); use=OPLSS2021.ParNDSDiv.fst(250,52-250,54)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(248,30-248,60); use=OPLSS2021.ParNDSDiv.fst(250,52-250,54)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
@x4))
@x5))
@x6)
)


;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(250,52-250,54)
(or label_1

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(250,52-250,54)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(250,52-250,54)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x4)
@x5)))
@x6)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5))

;; def=OPLSS2021.ParNDSDiv.fst(79,9-248,27); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(= @x6
@x7)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.dtuple2 @x2
(Tm_abs_ddf62441534c670b937500e371300d03 @x0
@x1
@x3
@x4
@x5
@x2)))

;; def=OPLSS2021.ParNDSDiv.fst(250,12-250,54); use=OPLSS2021.ParNDSDiv.fst(250,12-250,54)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x4)
@x5))
@x6)
@x8)
)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x9 Term))
 (! (implies (HasType @x9
@x2)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Tm_refine_d20b6795dd495f1dbfcd85bbc6003f26 @x0
@x1
@x2
@x3
@x9
@x4
@x5))

;; def=OPLSS2021.ParNDSDiv.fst(250,12-250,23); use=OPLSS2021.ParNDSDiv.fst(250,12-250,23)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x0)
@x1)
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x4)
@x5))
@x6)
(Prims.Mkdtuple2 @x2
(Tm_abs_ddf62441534c670b937500e371300d03 @x0
@x1
@x3
@x4
@x5
@x2)
@x9
@x10))


;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(251,14-251,16)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(251,14-251,16)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x2)
@x3)
@x9))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x4)
@x5)))
@x10)
)
)

;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(251,14-251,16)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(251,14-251,16)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(251,14-251,16)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x0)
@x1)
@x2)
@x3)
@x9))
@x4))
@x5))
@x10)
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
)
 
;;no pats
:qid @query.1))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(246,3-255,17)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x4
@x3
@x2
@x1
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(248,8-251,19); use=OPLSS2021.ParNDSDiv.fst(248,8-251,19)
(= (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x4
@x3
@x2
@x1
@x0)
@x5)
)

;; def=OPLSS2021.ParNDSDiv.fst(244,19-245,45); use=OPLSS2021.ParNDSDiv.fst(253,6-255,15)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(244,19-244,60); use=OPLSS2021.ParNDSDiv.fst(253,6-255,15)
(or label_3

;; def=OPLSS2021.ParNDSDiv.fst(244,19-244,60); use=OPLSS2021.ParNDSDiv.fst(253,6-255,15)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x0
@x1
@x2
(OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
@x4)
(Tm_abs_f30d5a7c45428c392e921699516bb67b @x3
@x4
@x1
@x0
@x2)
(Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x4
@x3
@x2
@x1
@x0)))
(Tm_abs_f30d5a7c45428c392e921699516bb67b @x3
@x4
@x1
@x0
@x2))
)


;; def=OPLSS2021.ParNDSDiv.fst(245,19-245,45); use=OPLSS2021.ParNDSDiv.fst(253,6-255,15)
(or label_4

;; def=OPLSS2021.ParNDSDiv.fst(245,19-245,45); use=OPLSS2021.ParNDSDiv.fst(253,6-255,15)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
(OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
@x4)
(Tm_abs_f30d5a7c45428c392e921699516bb67b @x3
@x4
@x1
@x0
@x2)
(Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x4
@x3
@x2
@x1
@x0)))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
@x4))
)
)
)
 
;;no pats
:qid @query.6))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.frame_action, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_3e23fb80e3331b439284ca8b53071862, data_elim_OPLSS2021.ParNDSDiv.Mkaction, data_elim_OPLSS2021.ParNDSDiv.Mkcomm_monoid, equation_OPLSS2021.ParNDSDiv.associative, equation_OPLSS2021.ParNDSDiv.is_unit, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.action, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_post, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_pre, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_post, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_pre, refinement_interpretation_Tm_refine_761f4edd49a1818dd8f251cfd090463a, refinement_interpretation_Tm_refine_d0fdf293377c48d3d00587c355c0c05a, token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post, token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star, typing_OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let frame_action


; <Start encoding let frame_action>

(declare-fun OPLSS2021.ParNDSDiv.frame_action (Term Term Term Term Term) Term)



(declare-fun Tm_abs_f30d5a7c45428c392e921699516bb67b (Term Term Term Term Term) Term)

(declare-fun Tm_refine_6bf98002a40348319c94dd1b780b4313 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;f: action c a -> fr: c.r   -> g: action c a {g.post == (fun x -> c.star (f.post x) fr) /\ g.pre == c.star f.pre fr}
(declare-fun Tm_arrow_872e7952b778e279df23ca8f071faf99 () Term)
(declare-fun OPLSS2021.ParNDSDiv.frame_action@tok () Term)














(declare-fun Tm_refine_d0fdf293377c48d3d00587c355c0c05a (Term Term Term Term Term Term) Term)





(declare-fun Tm_refine_b80b8a11f888513096d6a81ce2681e43 (Term Term Term Term Term Term Term) Term)

(declare-fun Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 (Term Term Term Term Term Term) Term)











;;;;;;;;;;;;;;;;frame: c.r -> s0: s{c.interp (c.star (c.star f.pre fr) frame) s0}   -> x: a & s1: s{c.interp (c.star (c.star (f.post x) fr) frame) s1}
(declare-fun Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad (Term Term Term Term Term) Term)
(declare-fun Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 (Term Term Term Term Term) Term)

; </end encoding let frame_action>

;;;;;;;;;;;;;;;;typing_Tm_abs_f30d5a7c45428c392e921699516bb67b
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(244,39-244,59); use=OPLSS2021.ParNDSDiv.fst(244,39-244,59)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_f30d5a7c45428c392e921699516bb67b @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x3
@x4))
 

:pattern ((Tm_abs_f30d5a7c45428c392e921699516bb67b @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_f30d5a7c45428c392e921699516bb67b))

:named typing_Tm_abs_f30d5a7c45428c392e921699516bb67b))
;;;;;;;;;;;;;;;;typing_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(249,15-249,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x0
@x1
@x2
@x3
@x4
@x5)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x5))
 

:pattern ((Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))

:named typing_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))
;;;;;;;;;;;;;;;;typing_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(250,7-251,19); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x0
@x1
@x2
@x3
@x4))
 

:pattern ((Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))

:named typing_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(243,4-243,16); use=OPLSS2021.ParNDSDiv.fst(243,4-243,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))
(HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1)))
(HasType (OPLSS2021.ParNDSDiv.frame_action @x0
@x1
@x2
@x3
@x4)
(Tm_refine_6bf98002a40348319c94dd1b780b4313 @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((OPLSS2021.ParNDSDiv.frame_action @x0
@x1
@x2
@x3
@x4))
:qid typing_OPLSS2021.ParNDSDiv.frame_action))

:named typing_OPLSS2021.ParNDSDiv.frame_action))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,24-248,62); use=OPLSS2021.ParNDSDiv.fst(248,24-248,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type)
 

:pattern ((HasType (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid refinement_kinding_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))

:named refinement_kinding_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(249,15-249,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type)
 

:pattern ((HasType (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type))
:qid refinement_kinding_Tm_refine_b80b8a11f888513096d6a81ce2681e43))

:named refinement_kinding_Tm_refine_b80b8a11f888513096d6a81ce2681e43))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(244,4-245,47); use=OPLSS2021.ParNDSDiv.fst(244,4-245,47)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_6bf98002a40348319c94dd1b780b4313 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_6bf98002a40348319c94dd1b780b4313 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_6bf98002a40348319c94dd1b780b4313))

:named refinement_kinding_Tm_refine_6bf98002a40348319c94dd1b780b4313))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,24-248,62); use=OPLSS2021.ParNDSDiv.fst(248,24-248,62)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x2
@x3
@x4
@x5
@x6
@x7))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(248,30-248,60); use=OPLSS2021.ParNDSDiv.fst(248,30-248,60)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(248,30-248,60); use=OPLSS2021.ParNDSDiv.fst(248,30-248,60)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x2
@x3
@x4
@x5))
@x6))
@x7))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x2
@x3
@x4
@x5
@x6
@x7)))
:qid refinement_interpretation_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))

:named refinement_interpretation_Tm_refine_d0fdf293377c48d3d00587c355c0c05a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(249,15-249,56)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x2
@x3
@x4
@x5
@x6
@x7
@x8))
(and (HasTypeFuel @u0
@x1
@x2)

;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(249,20-249,55)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(249,20-249,55); use=OPLSS2021.ParNDSDiv.fst(249,20-249,55)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x2)
@x3)
@x4)
@x5)
@x6))
@x7))
@x8))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x2
@x3
@x4
@x5
@x6
@x7
@x8)))
:qid refinement_interpretation_Tm_refine_b80b8a11f888513096d6a81ce2681e43))

:named refinement_interpretation_Tm_refine_b80b8a11f888513096d6a81ce2681e43))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(244,4-245,47); use=OPLSS2021.ParNDSDiv.fst(244,4-245,47)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_6bf98002a40348319c94dd1b780b4313 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ParNDSDiv.action @x2
@x3
@x4))

;; def=OPLSS2021.ParNDSDiv.fst(244,19-244,60); use=OPLSS2021.ParNDSDiv.fst(244,19-244,60)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post @x2
@x3
@x4
@x1)
(Tm_abs_f30d5a7c45428c392e921699516bb67b @x5
@x6
@x3
@x2
@x4))


;; def=OPLSS2021.ParNDSDiv.fst(245,19-245,45); use=OPLSS2021.ParNDSDiv.fst(245,19-245,45)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x2
@x3
@x4
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x2)
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x2
@x3
@x4
@x5))
@x6))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_6bf98002a40348319c94dd1b780b4313 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_6bf98002a40348319c94dd1b780b4313))

:named refinement_interpretation_Tm_refine_6bf98002a40348319c94dd1b780b4313))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(248,19-249,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid kinding_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))

:named kinding_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_f30d5a7c45428c392e921699516bb67b
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(244,39-244,59); use=OPLSS2021.ParNDSDiv.fst(244,39-244,59)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_f30d5a7c45428c392e921699516bb67b @x1
@x2
@x3
@x4
@x5)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x4)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post@tok
@x4)
@x3)
@x5)
@x1)
@x0))
@x2))
 

:pattern ((ApplyTT (Tm_abs_f30d5a7c45428c392e921699516bb67b @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_f30d5a7c45428c392e921699516bb67b))

:named interpretation_Tm_abs_f30d5a7c45428c392e921699516bb67b))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(249,15-249,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x1
@x2
@x3
@x4
@x5
@x6)
@x0)
(Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x1
@x2
@x6
@x3
@x0
@x4
@x5))
 

:pattern ((ApplyTT (Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))

:named interpretation_Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(250,7-251,19); use=OPLSS2021.ParNDSDiv.fst(250,7-251,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x2
@x3
@x4
@x5
@x6)
@x0)
@x1)
(let ((@lb7 (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok
@x6)
@x5)
@x4)
@x3)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x6)
@x5)
@x2)
@x0))
@x1)))
(Prims.Mkdtuple2 @x4
(Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x6
@x5
@x3
@x2
@x0
@x4)
(Prims.Mkdtuple2__1 @lb7)
(Prims.Mkdtuple2__2 @lb7))))
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x2
@x3
@x4
@x5
@x6)
@x0)
@x1))
:qid interpretation_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))

:named interpretation_Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d0fdf293377c48d3d00587c355c0c05a
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,24-248,62); use=OPLSS2021.ParNDSDiv.fst(248,24-248,62)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x0
@x1
@x2
@x3
@x4
@x5))))
:qid haseqTm_refine_d0fdf293377c48d3d00587c355c0c05a))

:named haseqTm_refine_d0fdf293377c48d3d00587c355c0c05a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b80b8a11f888513096d6a81ce2681e43
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(249,15-249,56); use=OPLSS2021.ParNDSDiv.fst(249,15-249,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.hasEq @x0)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b80b8a11f888513096d6a81ce2681e43 @x0
@x1
@x2
@x3
@x4
@x5
@x6))))
:qid haseqTm_refine_b80b8a11f888513096d6a81ce2681e43))

:named haseqTm_refine_b80b8a11f888513096d6a81ce2681e43))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6bf98002a40348319c94dd1b780b4313
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(244,4-245,47); use=OPLSS2021.ParNDSDiv.fst(244,4-245,47)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_6bf98002a40348319c94dd1b780b4313 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq (OPLSS2021.ParNDSDiv.action @x0
@x1
@x2))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_6bf98002a40348319c94dd1b780b4313 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_6bf98002a40348319c94dd1b780b4313))

:named haseqTm_refine_6bf98002a40348319c94dd1b780b4313))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.frame_action
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(243,4-243,16); use=OPLSS2021.ParNDSDiv.fst(243,4-243,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ParNDSDiv.frame_action @x0
@x1
@x2
@x3
@x4)
(OPLSS2021.ParNDSDiv.Mkaction @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x2
@x3))
@x4)
(Tm_abs_f30d5a7c45428c392e921699516bb67b @x3
@x4
@x1
@x0
@x2)
(Tm_abs_8c0fd30caad7b97869d97b4626a2c6e2 @x4
@x3
@x2
@x1
@x0)))
 

:pattern ((OPLSS2021.ParNDSDiv.frame_action @x0
@x1
@x2
@x3
@x4))
:qid equation_OPLSS2021.ParNDSDiv.frame_action))

:named equation_OPLSS2021.ParNDSDiv.frame_action))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(248,19-249,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x2
@x3
@x4
@x5
@x6))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x2
@x3
@x4
@x5
@x6)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(248,19-249,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x1
@x2
@x3
@x4
@x5))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(248,19-249,57)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x5
@x4))
(HasType @x7
(Tm_refine_d0fdf293377c48d3d00587c355c0c05a @x5
@x4
@x3
@x2
@x1
@x6)))
(HasType (ApplyTT (ApplyTT @x0
@x6)
@x7)
(Prims.dtuple2 @x3
(Tm_abs_cac313c57f051ed465fe1a53cd2fe7f6 @x5
@x4
@x2
@x1
@x6
@x3))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x6)
@x7))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(248,19-249,57); use=OPLSS2021.ParNDSDiv.fst(248,19-249,57)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x5
@x4))
(IsTotFun (ApplyTT @x0
@x6)))
 

:pattern ((ApplyTT @x0
@x6))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad @x1
@x2
@x3
@x4
@x5)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9c889d600b22d346c9fc5beee73ab2ad))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.frame_action; Namespace OPLSS2021.ParNDSDiv
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.__proj__Mkaction__item__sem@tok))
:named @kick_partial_app_8a532fbafe8e561435a3bdb48469865f))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(268,5-275,23)

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.frame (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.frame@tok () Term)
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




(declare-fun Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(267,39-267,54); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x0
@x1
@x2
@x3
@x4)
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x3
@x4))
 

:pattern ((Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4))

:named typing_Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(267,39-267,54); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x1
@x2
@x3
@x4
@x5)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x4)
@x3)
(ApplyTT @x1
@x0))
@x2))
 

:pattern ((ApplyTT (Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4))

:named interpretation_Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4))
















(declare-fun Non_total_Tm_arrow_998f81b52e061c2daab6caa61f52598c (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(OPLSS2021.ParNDSDiv.comm_monoid @x1))
(HasType @x3
Tm_type)
(HasType @x4
(OPLSS2021.ParNDSDiv.action @x1
@x2
@x0))
(HasType @x5
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x2
@x1
@x3)))
(HasType (Non_total_Tm_arrow_998f81b52e061c2daab6caa61f52598c @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_998f81b52e061c2daab6caa61f52598c @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_998f81b52e061c2daab6caa61f52598c))

:named non_total_function_typing_Non_total_Tm_arrow_998f81b52e061c2daab6caa61f52598c))











(declare-fun Tm_abs_5544b57698f70e235b47f406c939cc89 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_5544b57698f70e235b47f406c939cc89
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(273,30-273,49); use=OPLSS2021.ParNDSDiv.fst(273,51-273,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_5544b57698f70e235b47f406c939cc89 @x0
@x1
@x2
@x3)
(Tm_arrow_66637169be1acab937c714e5588d9266 @x2
@x3))
 

:pattern ((Tm_abs_5544b57698f70e235b47f406c939cc89 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_5544b57698f70e235b47f406c939cc89))

:named typing_Tm_abs_5544b57698f70e235b47f406c939cc89))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_5544b57698f70e235b47f406c939cc89
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(273,30-273,49); use=OPLSS2021.ParNDSDiv.fst(273,51-273,56)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_5544b57698f70e235b47f406c939cc89 @x1
@x2
@x3
@x4)
@x0)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x4)
@x3)
@x1)
@x2))
 

:pattern ((ApplyTT (Tm_abs_5544b57698f70e235b47f406c939cc89 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_5544b57698f70e235b47f406c939cc89))

:named interpretation_Tm_abs_5544b57698f70e235b47f406c939cc89))




























; Encoding query formula : forall (s: Type)
;   (c: OPLSS2021.ParNDSDiv.comm_monoid s)
;   (a: Type)
;   (p: c.r)
;   (q: (_: a -> c.r))
;   (fr: c.r)
;   (f: OPLSS2021.ParNDSDiv.m a p q).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.ParNDSDiv.m a (c.star p fr) (fun x -> c.star (q x) fr))).
;     (forall (any_result: OPLSS2021.ParNDSDiv.m a (c.star p fr) (fun x -> c.star (q x) fr)).
;         p any_result) ==>
;     (forall (k: Prims.pure_post (OPLSS2021.ParNDSDiv.m a (c.star p fr) (fun x -> c.star (q x) fr))).
;         (forall (x: OPLSS2021.ParNDSDiv.m a (c.star p fr) (fun x -> c.star (q x) fr)).
;             {:pattern Prims.guard_free (k x)}
;             Prims.auto_squash (k x)) ==>
;         (~(Ret? f) /\ ~(Act? f) /\ ~(Par? f) ==> Prims.l_False) /\
;         (forall (b: Type) (b: (_: b -> c.r)) (b: b).
;             f == OPLSS2021.ParNDSDiv.Ret b ==>
;             Prims.has_type b a /\
;             (forall (any_result: b).
;                 b == any_result ==>
;                 (forall (any_result:
;                     OPLSS2021.ParNDSDiv.m a (c.star (q b) fr) (fun x -> c.star (q x) fr)).
;                     OPLSS2021.ParNDSDiv.Ret b == any_result ==> c.star (q b) fr == c.star p fr))) /\
;         (~(Ret? f) ==>
;           (forall (b: Type)
;               (b: (_: b -> c.r))
;               (b: Type0)
;               (b: OPLSS2021.ParNDSDiv.action c b)
;               (b: (x: b -> FStar.Pervasives.Dv (OPLSS2021.ParNDSDiv.m b (b.post x) b))).
;               f == OPLSS2021.ParNDSDiv.Act b b ==>
;               b == a /\
;               ((OPLSS2021.ParNDSDiv.frame_action b fr).pre == c.star p fr) /\
;               ((b == a) /\ (forall (x: b). c.star (b x) fr == c.star (q x) fr))) /\
;           (~(Act? f) ==>
;             (forall (b: c.r)
;                 (b: c.r)
;                 (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                 (b: c.r)
;                 (b: c.r)
;                 (b: OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit) b (fun _ -> b))
;                 (b: Type)
;                 (b: OPLSS2021.ParNDSDiv.post b c)
;                 (b: OPLSS2021.ParNDSDiv.m b (c.star b b) b).
;                 f == OPLSS2021.ParNDSDiv.Par b b b b b b b ==>
;                 (forall (any_result:
;                     OPLSS2021.ParNDSDiv.m (FStar.Universe.raise_t Prims.unit)
;                       (c.star b fr)
;                       (fun _ -> c.star b fr))
;                     (any_result:
;                     OPLSS2021.ParNDSDiv.m b (c.star (c.star b b) fr) (fun x -> c.star (b x) fr)).
;                     c.star (c.star b b) fr == c.star (c.star b fr) b /\
;                     (forall (return_val:
;                         OPLSS2021.ParNDSDiv.m b (c.star (c.star b fr) b) (fun x -> c.star (b x) fr))
;                       .
;                         return_val == any_result ==>
;                         b == a /\
;                         (c.star (c.star b fr) b == c.star p fr) /\
;                         ((b == a) /\ (forall (x: b). c.star (b x) fr == c.star (q x) fr))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec frame`

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
(OPLSS2021.ParNDSDiv.comm_monoid @x0))
(HasType @x2
Tm_type)
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x4
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x2))
(HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))
(HasType @x6
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
@x3
@x4)))
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.pure_post (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x5)
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x4
@x5
@x1
@x0
@x2))))

;; def=Prims.fst(451,66-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(forall ((@x8 Term))
 (! (implies (or label_1
(HasType @x8
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x5)
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x4
@x5
@x1
@x0
@x2))))

;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(ApplyTT @x7
@x8)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=FStar.Pervasives.fsti(366,2-366,15)
(ApplyTT @x7
@x8)
)
)
:qid @query.2))
)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Prims.pure_post (OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x5)
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x4
@x5
@x1
@x0
@x2))))

;; def=Prims.fst(402,27-402,88); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x9 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(ApplyTT @x8
@x9)
)

 

:pattern ((ApplyTT @x8
@x9))
:qid @query.4))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x6))
)


;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x6))
)


;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Par @x0
@x1
@x2
@x3
@x4
@x6))
)
)

label_2)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x9))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
@x9)

;; def=OPLSS2021.ParNDSDiv.fst(266,15-269,12); use=OPLSS2021.ParNDSDiv.fst(268,11-269,12)
(= @x6
(OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x9
@x10
@x11))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(269,11-269,12); use=OPLSS2021.ParNDSDiv.fst(269,20-269,21)
(or label_3
(HasType @x11
@x2))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
@x9)

;; def=OPLSS2021.ParNDSDiv.fst(96,38-269,12); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(= @x11
@x12)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x2
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x4
@x11))
@x5)
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x4
@x5
@x1
@x0
@x2)))

;; def=OPLSS2021.ParNDSDiv.fst(267,8-269,21); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(= (OPLSS2021.ParNDSDiv.Ret @x0
@x1
@x2
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x4
@x5
@x1
@x0
@x2)
@x11)
@x13)
)

;; def=OPLSS2021.ParNDSDiv.fst(267,13-267,54); use=OPLSS2021.ParNDSDiv.fst(269,16-269,21)
(or label_4

;; def=OPLSS2021.ParNDSDiv.fst(267,13-267,54); use=OPLSS2021.ParNDSDiv.fst(269,16-269,21)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x4
@x11))
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x5))
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Ret @x0
@x1
@x2
@x3
@x4
@x6))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(Tm_arrow_3e23fb80e3331b439284ca8b53071862 @x1
@x0
@x9))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.action @x0
@x1
@x11))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(Non_total_Tm_arrow_998f81b52e061c2daab6caa61f52598c @x11
@x0
@x1
@x9
@x12
@x10))

;; def=OPLSS2021.ParNDSDiv.fst(266,15-270,14); use=OPLSS2021.ParNDSDiv.fst(268,11-270,14)
(= @x6
(OPLSS2021.ParNDSDiv.Act @x0
@x1
@x9
@x10
@x11
@x12
@x13))
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(262,16-270,12); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(262,16-270,12); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(= @x9
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(97,105-267,28); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(or label_6

;; def=OPLSS2021.ParNDSDiv.fst(97,105-267,28); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre @x0
@x1
@x11
(OPLSS2021.ParNDSDiv.frame_action @x0
@x1
@x11
@x12
@x5))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x5))
)


;; def=OPLSS2021.ParNDSDiv.fst(262,16-270,12); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(or label_7

;; def=OPLSS2021.ParNDSDiv.fst(262,16-270,12); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(= @x9
@x2)
)


;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(forall ((@x14 Term))
 (! (implies (HasType @x14
@x9)

;; def=OPLSS2021.ParNDSDiv.fst(267,39-267,54); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(or label_8

;; def=OPLSS2021.ParNDSDiv.fst(267,39-267,54); use=OPLSS2021.ParNDSDiv.fst(271,7-271,56)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x10
@x14))
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x4
@x14))
@x5))
)
)
 
;;no pats
:qid @query.15))
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
 
;;no pats
:qid @query.10))

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(not 
;; def=OPLSS2021.ParNDSDiv.fst(266,15-266,16); use=OPLSS2021.ParNDSDiv.fst(268,11-268,12)
(BoxBool_proj_0 (OPLSS2021.ParNDSDiv.uu___is_Act @x0
@x1
@x2
@x3
@x4
@x6))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x10 Term))
 (! (implies (HasType @x10
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x9
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x10
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r @x0
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
@x12
(Tm_abs_eef417df7f04bcb18767c8f35ff44e36 @x13
@x1
@x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x15 Term))
 (! (implies (HasType @x15
Tm_type)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x16 Term))
 (! (implies (HasType @x16
(OPLSS2021.ParNDSDiv.post @x0
@x15
@x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x15
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x10)
@x13)
@x16))

;; def=OPLSS2021.ParNDSDiv.fst(266,15-272,40); use=OPLSS2021.ParNDSDiv.fst(268,11-272,40)
(= @x6
(OPLSS2021.ParNDSDiv.Par @x0
@x1
@x9
@x10
@x11
@x12
@x13
@x14
@x15
@x16
@x17))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x18 Term))
 (! (implies (HasType @x18
(OPLSS2021.ParNDSDiv.m @x0
@x1
(FStar.Universe.raise_t Prims.unit)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x9)
@x5)
(Tm_abs_5544b57698f70e235b47f406c939cc89 @x10
@x5
@x1
@x0)))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x19 Term))
 (! (implies (HasType @x19
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x15
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x10)
@x13))
@x5)
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x16
@x5
@x1
@x0
@x15)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(100,35-267,28); use=OPLSS2021.ParNDSDiv.fst(275,11-275,23)
(or label_9

;; def=OPLSS2021.ParNDSDiv.fst(100,35-267,28); use=OPLSS2021.ParNDSDiv.fst(275,11-275,23)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x10)
@x13))
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x10)
@x5))
@x13))
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(OPLSS2021.ParNDSDiv.m @x0
@x1
@x15
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x10)
@x5))
@x13)
(Tm_abs_b996cc2bd5ac6a50d3bb739dc2edf2d4 @x16
@x5
@x1
@x0
@x15)))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ParNDSDiv.fst(268,5-275,23)
(= @x20
@x19)
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(262,16-272,40); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(or label_10

;; def=OPLSS2021.ParNDSDiv.fst(262,16-272,40); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(= @x15
@x2)
)


;; def=OPLSS2021.ParNDSDiv.fst(101,14-267,28); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(or label_11

;; def=OPLSS2021.ParNDSDiv.fst(101,14-267,28); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x9)
@x5))
@x12)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
@x3)
@x5))
)


;; def=OPLSS2021.ParNDSDiv.fst(262,16-272,40); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(or label_12

;; def=OPLSS2021.ParNDSDiv.fst(262,16-272,40); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(= @x15
@x2)
)


;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(forall ((@x21 Term))
 (! (implies (HasType @x21
@x15)

;; def=OPLSS2021.ParNDSDiv.fst(267,39-267,54); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(or label_13

;; def=OPLSS2021.ParNDSDiv.fst(267,39-267,54); use=OPLSS2021.ParNDSDiv.fst(273,7-275,23)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x16
@x21))
@x5)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
@x0)
@x1)
(ApplyTT @x4
@x21))
@x5))
)
)
 
;;no pats
:qid @query.28))
)
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
))
))
)
 
;;no pats
:qid @query.3)))
 
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
; QUERY ID: (OPLSS2021.ParNDSDiv.frame, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ParNDSDiv.Act, data_elim_OPLSS2021.ParNDSDiv.Mkcomm_monoid, data_elim_OPLSS2021.ParNDSDiv.Par, data_elim_OPLSS2021.ParNDSDiv.Ret, disc_equation_OPLSS2021.ParNDSDiv.Act, disc_equation_OPLSS2021.ParNDSDiv.Par, disc_equation_OPLSS2021.ParNDSDiv.Ret, equation_OPLSS2021.ParNDSDiv.associative, equation_OPLSS2021.ParNDSDiv.commutative, equation_OPLSS2021.ParNDSDiv.frame_action, equation_OPLSS2021.ParNDSDiv.is_unit, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.comm_monoid, fuel_guarded_inversion_OPLSS2021.ParNDSDiv.m, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_pre, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_r, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star, projection_inverse_BoxBool_proj_0, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_pre, refinement_interpretation_Tm_refine_761f4edd49a1818dd8f251cfd090463a, token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec frame


; <Start encoding let rec frame>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.frame (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.frame@tok () Term)

; </end encoding let rec frame>


; encoding sigelt let par


; <Start encoding let par>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.par (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.par@tok () Term)

; </end encoding let par>


; encoding sigelt val OPLSS2021.ParNDSDiv.heap


; <Start encoding val OPLSS2021.ParNDSDiv.heap>

(declare-fun OPLSS2021.ParNDSDiv.heap () Term)

; </end encoding val OPLSS2021.ParNDSDiv.heap>


; encoding sigelt val OPLSS2021.ParNDSDiv.r


; <Start encoding val OPLSS2021.ParNDSDiv.r>

(declare-fun OPLSS2021.ParNDSDiv.r () Term)

; </end encoding val OPLSS2021.ParNDSDiv.r>


; encoding sigelt val OPLSS2021.ParNDSDiv.emp


; <Start encoding val OPLSS2021.ParNDSDiv.emp>

(declare-fun OPLSS2021.ParNDSDiv.emp (Dummy_sort) Term)

; </end encoding val OPLSS2021.ParNDSDiv.emp>


; encoding sigelt val OPLSS2021.ParNDSDiv.star


; <Start encoding val OPLSS2021.ParNDSDiv.star>

(declare-fun OPLSS2021.ParNDSDiv.star (Term Term) Term)
;;;;;;;;;;;;;;;;_: r -> _: r -> r
(declare-fun Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3 () Term)
(declare-fun OPLSS2021.ParNDSDiv.star@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.star>


; encoding sigelt val OPLSS2021.ParNDSDiv.interp


; <Start encoding val OPLSS2021.ParNDSDiv.interp>

(declare-fun OPLSS2021.ParNDSDiv.interp (Term Term) Term)
;;;;;;;;;;;;;;;;_: r -> _: heap -> Prims.prop
(declare-fun Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0 () Term)
(declare-fun OPLSS2021.ParNDSDiv.interp@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.interp>


; encoding sigelt let hm


; <Start encoding let hm>

(declare-fun OPLSS2021.ParNDSDiv.hm (Dummy_sort) Term)



(declare-fun Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197 () Term)

; </end encoding let hm>


; encoding sigelt let comp


; <Start encoding let comp>

;;;;;;;;;;;;;;;;_: a -> hm.r
(declare-fun Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 (Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.comp (Term Term Term) Term)

;;;;;;;;;;;;;;;;a: Type -> p: hm.r -> q: (_: a -> hm.r) -> Type
(declare-fun Tm_arrow_8ad293b4403f01d8576825259cc81c67 () Term)
(declare-fun OPLSS2021.ParNDSDiv.comp@tok () Term)


(declare-fun Non_total_Tm_arrow_061cea0cad4dc285d951ae0b1bcf3e7d (Term Term Term) Term)

; </end encoding let comp>


; encoding sigelt let ret


; <Start encoding let ret>


(declare-fun OPLSS2021.ParNDSDiv.ret (Term Term Term) Term)

;;;;;;;;;;;;;;;;a: Type -> x: a -> p: (_: a -> hm.r) -> comp a (p x) p
(declare-fun Tm_arrow_c2a444341d425a18a92e63c77d5f3fcd () Term)
(declare-fun OPLSS2021.ParNDSDiv.ret@tok () Term)

;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_OPLSS2021.ParNDSDiv_719 (Term Term Term) Term)

; </end encoding let ret>


; encoding sigelt let bnd


; <Start encoding let bnd>



;;;;;;;;;;;;;;;;x: a -> comp b (q x) r
(declare-fun Tm_arrow_67f70abf512999ccd417a83cd80dcc67 (Term Term Term Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.bnd (Term Term Term Term Term Term Term) Term)



;;;;;;;;;;;;;;;;a: Type ->     b: Type ->     p: hm.r ->     q: (_: a -> hm.r) ->     r: (_: b -> hm.r) ->     f: comp a p q ->     g: (x: a -> comp b (q x) r)   -> comp b p r
(declare-fun Tm_arrow_78d8ed8595fd5e64acaedf400508337a () Term)
(declare-fun OPLSS2021.ParNDSDiv.bnd@tok () Term)



;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_OPLSS2021.ParNDSDiv_740 (Term Term Term Term Term Term Term) Term)

; </end encoding let bnd>


; encoding sigelt layered_effect { C ... }


; <Skipped layered_effect { C ... }/>


; encoding sigelt val OPLSS2021.ParNDSDiv.bind_pure_c_


; <Start encoding val OPLSS2021.ParNDSDiv.bind_pure_c_>


(declare-fun Tm_refine_c16bc1b61f58b349bf6fc1c94dcaf83b (Term) Term)

;;;;;;;;;;;;;;;;y: _: a{Prims.l_True} -> Prims.GTot Type
(declare-fun Tm_arrow_61bb9550f39772f18eaab129c43c3788 (Term) Term)
(declare-fun Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 (Term Term) Term)
(declare-fun Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 (Term Term) Term)



(declare-fun Tm_abs_735bfa0400a12573ed48312f042e45e7 (Term) Term)
;;;;;;;;;;;;;;;;_: (Prims.unit <: Type) -> Prims.PURE a
(declare-fun Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd (Term Term) Term)
;;;;;;;;;;;;;;;;x: a -> comp b pre post
(declare-fun Tm_arrow_7b2d7459fbb2badfdad07085c611c348 (Term Term Term Term) Term)


(declare-fun OPLSS2021.ParNDSDiv.bind_pure_c_ (Term Term Term Term Term Term Term) Term)












(declare-fun Tm_refine_b86c938a968b123a93117006f5b662c7 (Term Term Term) Term)


;;;;;;;;;;;;;;;;a: Type ->     b: Type ->     wp: Prims.pure_wp a ->     pre: hm.r ->     post: (_: b -> hm.r) ->     f: (_: (Prims.unit <: Type) -> Prims.PURE a) ->     g: (x: a -> comp b pre post)   -> Prims.Pure (comp b pre post)
(declare-fun Tm_arrow_f6699b8a6c132396587276af27c2a725 () Term)
(declare-fun OPLSS2021.ParNDSDiv.bind_pure_c_@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.bind_pure_c_>

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
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (HasType Prims.pure_pre
Tm_type)
:named typing_Prims.pure_pre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.magic; Namespace Prims
(assert (! 
;; def=Prims.fst(654,4-654,9); use=Prims.fst(654,4-654,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Prims.unit))
(HasType (Prims.magic @x0
@x1)
@x0))
 

:pattern ((Prims.magic @x0
@x1))
:qid typing_Prims.magic))

:named typing_Prims.magic))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(309,11-309,15); use=OPLSS2021.ParNDSDiv.fst(309,11-309,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.ParNDSDiv.r)
(HasType @x1
OPLSS2021.ParNDSDiv.r))
(HasType (OPLSS2021.ParNDSDiv.star @x0
@x1)
OPLSS2021.ParNDSDiv.r))
 

:pattern ((OPLSS2021.ParNDSDiv.star @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.star))

:named typing_OPLSS2021.ParNDSDiv.star))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.r; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType OPLSS2021.ParNDSDiv.r
Tm_type)
:named typing_OPLSS2021.ParNDSDiv.r))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(310,11-310,17); use=OPLSS2021.ParNDSDiv.fst(310,11-310,17)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.ParNDSDiv.r)
(HasType @x1
OPLSS2021.ParNDSDiv.heap))
(HasType (OPLSS2021.ParNDSDiv.interp @x0
@x1)
Prims.prop))
 

:pattern ((OPLSS2021.ParNDSDiv.interp @x0
@x1))
:qid typing_OPLSS2021.ParNDSDiv.interp))

:named typing_OPLSS2021.ParNDSDiv.interp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(312,4-312,6); use=OPLSS2021.ParNDSDiv.fst(312,4-312,6)
(forall ((@u0 Dummy_sort))
 (! (HasType (OPLSS2021.ParNDSDiv.hm @u0)
(OPLSS2021.ParNDSDiv.comm_monoid OPLSS2021.ParNDSDiv.heap))
 

:pattern ((OPLSS2021.ParNDSDiv.hm @u0))
:qid typing_OPLSS2021.ParNDSDiv.hm))

:named typing_OPLSS2021.ParNDSDiv.hm))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.heap; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType OPLSS2021.ParNDSDiv.heap
Tm_type)
:named typing_OPLSS2021.ParNDSDiv.heap))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.emp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(308,11-308,14); use=OPLSS2021.ParNDSDiv.fst(308,11-308,14)
(forall ((@u0 Dummy_sort))
 (! (HasType (OPLSS2021.ParNDSDiv.emp @u0)
OPLSS2021.ParNDSDiv.r)
 

:pattern ((OPLSS2021.ParNDSDiv.emp @u0))
:qid typing_OPLSS2021.ParNDSDiv.emp))

:named typing_OPLSS2021.ParNDSDiv.emp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,4-322,8); use=OPLSS2021.ParNDSDiv.fst(322,4-322,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x2
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x0)))
(HasType (OPLSS2021.ParNDSDiv.comp @x0
@x1
@x2)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.comp @x0
@x1
@x2))
:qid typing_OPLSS2021.ParNDSDiv.comp))

:named typing_OPLSS2021.ParNDSDiv.comp))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(309,11-309,15); use=OPLSS2021.ParNDSDiv.fst(309,11-309,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.star@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.star @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.star@tok
@x0)
@x1))
:qid token_correspondence_OPLSS2021.ParNDSDiv.star))

:named token_correspondence_OPLSS2021.ParNDSDiv.star))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(310,11-310,17); use=OPLSS2021.ParNDSDiv.fst(310,11-310,17)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.interp@tok
@x0)
@x1)
(OPLSS2021.ParNDSDiv.interp @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.interp@tok
@x0)
@x1))
:qid token_correspondence_OPLSS2021.ParNDSDiv.interp))

:named token_correspondence_OPLSS2021.ParNDSDiv.interp))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197
Tm_type)
:named refinement_kinding_Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(59,15-59,73); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197)
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(59,16-59,32); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(59,16-59,32); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(OPLSS2021.ParNDSDiv.associative OPLSS2021.ParNDSDiv.r
OPLSS2021.ParNDSDiv.star@tok)
)


;; def=OPLSS2021.ParNDSDiv.fst(59,36-59,52); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(59,36-59,52); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(OPLSS2021.ParNDSDiv.commutative OPLSS2021.ParNDSDiv.r
OPLSS2021.ParNDSDiv.star@tok)
)


;; def=OPLSS2021.ParNDSDiv.fst(59,56-59,72); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(59,56-59,72); use=OPLSS2021.ParNDSDiv.fst(317,9-317,14)
(OPLSS2021.ParNDSDiv.is_unit OPLSS2021.ParNDSDiv.r
(OPLSS2021.ParNDSDiv.emp Dummy_value)
OPLSS2021.ParNDSDiv.star@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197))
:qid refinement_interpretation_Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197))

:named refinement_interpretation_Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197))
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
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(323,4-323,24); use=OPLSS2021.ParNDSDiv.fst(323,4-323,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x2
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x0)))
(HasType (Non_total_Tm_arrow_061cea0cad4dc285d951ae0b1bcf3e7d @x0
@x1
@x2)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_061cea0cad4dc285d951ae0b1bcf3e7d @x0
@x1
@x2)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_061cea0cad4dc285d951ae0b1bcf3e7d))

:named non_total_function_typing_Non_total_Tm_arrow_061cea0cad4dc285d951ae0b1bcf3e7d))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.interp; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0
Tm_type)
:named kinding_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.star; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3
Tm_type)
:named kinding_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,10-322,43); use=OPLSS2021.ParNDSDiv.fst(322,34-322,43)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x0)
Tm_type))
:qid kinding_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853))

:named kinding_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! (iff (Valid (Prims.hasEq Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_753d28d8b216c19d2d2cba6a6aa7a197))
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
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (HasType Prims.pure_pre
Tm_type)
:named function_token_typing_Prims.pure_pre))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(309,11-309,15); use=OPLSS2021.ParNDSDiv.fst(309,11-309,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ParNDSDiv.star@tok
Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))

;; def=OPLSS2021.ParNDSDiv.fst(309,11-309,15); use=OPLSS2021.ParNDSDiv.fst(309,11-309,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.star@tok
@x1)
@x2)
(OPLSS2021.ParNDSDiv.star @x1
@x2))
 

:pattern ((OPLSS2021.ParNDSDiv.star @x1
@x2))
:qid function_token_typing_OPLSS2021.ParNDSDiv.star.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ParNDSDiv.star@tok))
:qid function_token_typing_OPLSS2021.ParNDSDiv.star))

:named function_token_typing_OPLSS2021.ParNDSDiv.star))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.r; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType OPLSS2021.ParNDSDiv.r
Tm_type)
:named function_token_typing_OPLSS2021.ParNDSDiv.r))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(310,11-310,17); use=OPLSS2021.ParNDSDiv.fst(310,11-310,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ParNDSDiv.interp@tok
Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))

;; def=OPLSS2021.ParNDSDiv.fst(310,11-310,17); use=OPLSS2021.ParNDSDiv.fst(310,11-310,17)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.interp@tok
@x1)
@x2)
(OPLSS2021.ParNDSDiv.interp @x1
@x2))
 

:pattern ((OPLSS2021.ParNDSDiv.interp @x1
@x2))
:qid function_token_typing_OPLSS2021.ParNDSDiv.interp.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ParNDSDiv.interp@tok))
:qid function_token_typing_OPLSS2021.ParNDSDiv.interp))

:named function_token_typing_OPLSS2021.ParNDSDiv.interp))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.heap; Namespace OPLSS2021.ParNDSDiv
(assert (! (HasType OPLSS2021.ParNDSDiv.heap
Tm_type)
:named function_token_typing_OPLSS2021.ParNDSDiv.heap))
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
;;;;;;;;;;;;;;;;Equation for Prims.pure_pre
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (= Prims.pure_pre
Tm_type)
:named equation_Prims.pure_pre))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.hm
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(312,4-312,6); use=OPLSS2021.ParNDSDiv.fst(312,4-312,6)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=OPLSS2021.ParNDSDiv.fst(312,4-312,6); use=OPLSS2021.ParNDSDiv.fst(312,4-312,6)
(OPLSS2021.ParNDSDiv.hm @u0)

(OPLSS2021.ParNDSDiv.Mkcomm_monoid OPLSS2021.ParNDSDiv.heap
OPLSS2021.ParNDSDiv.r
(OPLSS2021.ParNDSDiv.emp Dummy_value)
OPLSS2021.ParNDSDiv.star@tok
OPLSS2021.ParNDSDiv.interp@tok
(Prims.magic Tm_refine_753d28d8b216c19d2d2cba6a6aa7a197
Tm_unit)))
 

:pattern (
;; def=OPLSS2021.ParNDSDiv.fst(312,4-312,6); use=OPLSS2021.ParNDSDiv.fst(312,4-312,6)
(OPLSS2021.ParNDSDiv.hm @u0)
)
:qid equation_OPLSS2021.ParNDSDiv.hm))

:named equation_OPLSS2021.ParNDSDiv.hm))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ParNDSDiv.comp
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,4-322,8); use=OPLSS2021.ParNDSDiv.fst(322,4-322,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.ParNDSDiv.comp @x0
@x1
@x2)
(Non_total_Tm_arrow_061cea0cad4dc285d951ae0b1bcf3e7d @x0
@x1
@x2))
 

:pattern ((OPLSS2021.ParNDSDiv.comp @x0
@x1
@x2))
:qid equation_OPLSS2021.ParNDSDiv.comp))

:named equation_OPLSS2021.ParNDSDiv.comp))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(310,20-310,37); use=OPLSS2021.ParNDSDiv.fst(310,20-310,37)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(309,18-309,29); use=OPLSS2021.ParNDSDiv.fst(309,18-309,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,10-322,43); use=OPLSS2021.ParNDSDiv.fst(322,34-322,43)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x2)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.interp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(310,20-310,37); use=OPLSS2021.ParNDSDiv.fst(310,20-310,37)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(310,20-310,37); use=OPLSS2021.ParNDSDiv.fst(310,20-310,37)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.ParNDSDiv.r)
(HasType @x2
OPLSS2021.ParNDSDiv.heap))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.prop))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(310,20-310,37); use=OPLSS2021.ParNDSDiv.fst(310,20-310,37)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.ParNDSDiv.r)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_e29dc410ea48ddc21ddebb2e803eb7e0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.star; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(309,18-309,29); use=OPLSS2021.ParNDSDiv.fst(309,18-309,29)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(309,18-309,29); use=OPLSS2021.ParNDSDiv.fst(309,18-309,29)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.ParNDSDiv.r)
(HasType @x2
OPLSS2021.ParNDSDiv.r))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
OPLSS2021.ParNDSDiv.r))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(309,18-309,29); use=OPLSS2021.ParNDSDiv.fst(309,18-309,29)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.ParNDSDiv.r)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_8302d911aec4cef8a8ab7f48883a2da3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.comp; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,10-322,43); use=OPLSS2021.ParNDSDiv.fst(322,34-322,43)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x1))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(322,10-322,43); use=OPLSS2021.ParNDSDiv.fst(322,34-322,43)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(HasType (ApplyTT @x0
@x2)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value))))
 

:pattern ((ApplyTT @x0
@x2))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x1)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.interp@tok))
:named @kick_partial_app_d8d72d1ffff6b68f349ab189cba7db94))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.hm; Namespace OPLSS2021.ParNDSDiv
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ParNDSDiv.star@tok))
:named @kick_partial_app_a13eb50ee66577671a33f8fe99262dcb))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)






; Encoding query formula : forall (a: Type)
;   (b: Type)
;   (wp: Prims.pure_wp a)
;   (pre: OPLSS2021.ParNDSDiv.hm.r)
;   (post: (_: b -> OPLSS2021.ParNDSDiv.hm.r))
;   (p: Prims.pure_post (OPLSS2021.ParNDSDiv.comp b pre post))
;   (q: Prims.pure_post (OPLSS2021.ParNDSDiv.comp b pre post)).
;   (forall (x: OPLSS2021.ParNDSDiv.comp b pre post). p x ==> q x) ==>
;   wp (fun _ -> Prims.l_True) /\
;   (forall (pure_result: OPLSS2021.ParNDSDiv.comp b pre post). Prims.auto_squash (p pure_result)) ==>
;   wp (fun _ -> Prims.l_True) /\
;   (forall (pure_result: OPLSS2021.ParNDSDiv.comp b pre post). Prims.auto_squash (q pure_result))


; Context: While encoding a query
; While typechecking the top-level declaration `polymonadic_bind (Prims.PURE, OPLSS2021.ParNDSDiv.C) |> OPLSS2021.ParNDSDiv.C`

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
(Prims.pure_wp @x0))
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x4
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x1))
(HasType @x5
(Prims.pure_post (OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4)))
(HasType @x6
(Prims.pure_post (OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4)))

;; def=Prims.fst(334,28-334,55); use=Prims.fst(334,28-334,55)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(OPLSS2021.ParNDSDiv.comp @x1
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


;; def=OPLSS2021.ParNDSDiv.fst(357,18-357,36); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(357,18-357,36); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(ApplyTT @x2
(Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0))
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(ApplyTT @x5
@x7)
)
)
 
;;no pats
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(357,18-357,36); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(or label_1

;; def=OPLSS2021.ParNDSDiv.fst(357,18-357,36); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(357,18-357,36); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(ApplyTT @x2
(Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0))
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(or label_2

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(360,34-360,46)
(ApplyTT @x6
@x7)
)
)
)
 
;;no pats
:qid @query.3))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt polymonadic_bind (Prims.PURE, OPLSS2021.ParNDSDiv.C) |> OPLSS2021.ParNDSDiv.C


; <Skipped polymonadic_bind (Prims.PURE, OPLSS2021.ParNDSDiv.C) |> OPLSS2021.ParNDSDiv.C/>


; encoding sigelt val OPLSS2021.ParNDSDiv.bind_div_c_


; <Start encoding val OPLSS2021.ParNDSDiv.bind_div_c_>


(declare-fun Non_total_Tm_arrow_5c406b97ddad37c6603b490d3c966e48 (Term Term) Term)



(declare-fun OPLSS2021.ParNDSDiv.bind_div_c_ (Term Term Term Term Term Term Term) Term)






;;;;;;;;;;;;;;;;a: Type ->     b: Type ->     wp: Prims.pure_wp a ->     pre: hm.r ->     post: (_: b -> hm.r) ->     f: (_: (Prims.unit <: Type) -> FStar.Pervasives.DIV a) ->     g: (x: a -> comp b pre post)   -> Prims.Pure (comp b pre post)
(declare-fun Tm_arrow_f57ca03093e9adf58beb5c17baf35c3b () Term)
(declare-fun OPLSS2021.ParNDSDiv.bind_div_c_@tok () Term)


; </end encoding val OPLSS2021.ParNDSDiv.bind_div_c_>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)






; Encoding query formula : forall (a: Type)
;   (b: Type)
;   (wp: Prims.pure_wp a)
;   (pre: OPLSS2021.ParNDSDiv.hm.r)
;   (post: (_: b -> OPLSS2021.ParNDSDiv.hm.r))
;   (p: Prims.pure_post (OPLSS2021.ParNDSDiv.comp b pre post))
;   (q: Prims.pure_post (OPLSS2021.ParNDSDiv.comp b pre post)).
;   (forall (x: OPLSS2021.ParNDSDiv.comp b pre post). p x ==> q x) ==>
;   wp (fun _ -> Prims.l_True) /\
;   (forall (pure_result: OPLSS2021.ParNDSDiv.comp b pre post). Prims.auto_squash (p pure_result)) ==>
;   wp (fun _ -> Prims.l_True) /\
;   (forall (pure_result: OPLSS2021.ParNDSDiv.comp b pre post). Prims.auto_squash (q pure_result))


; Context: While encoding a query
; While typechecking the top-level declaration `polymonadic_bind (FStar.Pervasives.DIV, OPLSS2021.ParNDSDiv.C) |> OPLSS2021.ParNDSDiv.C`

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
(Prims.pure_wp @x0))
(HasType @x3
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x4
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x1))
(HasType @x5
(Prims.pure_post (OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4)))
(HasType @x6
(Prims.pure_post (OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4)))

;; def=Prims.fst(334,28-334,55); use=Prims.fst(334,28-334,55)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(OPLSS2021.ParNDSDiv.comp @x1
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


;; def=OPLSS2021.ParNDSDiv.fst(372,18-372,36); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(372,18-372,36); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(ApplyTT @x2
(Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0))
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(ApplyTT @x5
@x7)
)
)
 
;;no pats
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(372,18-372,36); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(or label_1

;; def=OPLSS2021.ParNDSDiv.fst(372,18-372,36); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(372,18-372,36); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(ApplyTT @x2
(Tm_abs_5e34897418ce4950a4effcc8c159cf53 @x0))
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(forall ((@x7 Term))
 (! (implies (HasType @x7
(OPLSS2021.ParNDSDiv.comp @x1
@x3
@x4))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(or label_2

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ParNDSDiv.fst(375,33-375,44)
(ApplyTT @x6
@x7)
)
)
)
 
;;no pats
:qid @query.3))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.0, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt polymonadic_bind (FStar.Pervasives.DIV, OPLSS2021.ParNDSDiv.C) |> OPLSS2021.ParNDSDiv.C


; <Skipped polymonadic_bind (FStar.Pervasives.DIV, OPLSS2021.ParNDSDiv.C) |> OPLSS2021.ParNDSDiv.C/>


; encoding sigelt val OPLSS2021.ParNDSDiv.hm_affine


; <Start encoding val OPLSS2021.ParNDSDiv.hm_affine>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.hm_affine (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.hm_affine@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.hm_affine>


; encoding sigelt val OPLSS2021.ParNDSDiv.ref


; <Start encoding val OPLSS2021.ParNDSDiv.ref>

(declare-fun OPLSS2021.ParNDSDiv.ref (Term) Term)

(declare-fun OPLSS2021.ParNDSDiv.ref@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.ref>


; encoding sigelt val OPLSS2021.ParNDSDiv.pts_to


; <Start encoding val OPLSS2021.ParNDSDiv.pts_to>

(declare-fun OPLSS2021.ParNDSDiv.pts_to (Term Term Term) Term)
;;;;;;;;;;;;;;;;r: ref 'a -> x: 'a -> hm.r
(declare-fun Tm_arrow_1f0858b8e76d282ad00ec9667baa4e72 () Term)
(declare-fun OPLSS2021.ParNDSDiv.pts_to@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.pts_to>


; encoding sigelt val OPLSS2021.ParNDSDiv.pure


; <Start encoding val OPLSS2021.ParNDSDiv.pure>

(declare-fun OPLSS2021.ParNDSDiv.pure (Term) Term)
;;;;;;;;;;;;;;;;p: Prims.prop -> hm.r
(declare-fun Tm_arrow_e68ff91908c952ae02bb159b8c5f67d7 () Term)
(declare-fun OPLSS2021.ParNDSDiv.pure@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.pure>


; encoding sigelt val OPLSS2021.ParNDSDiv.sel


; <Start encoding val OPLSS2021.ParNDSDiv.sel>


(declare-fun Tm_refine_0967966af45c9589071d38d2d048e481 (Term Term Term) Term)
(declare-fun OPLSS2021.ParNDSDiv.sel (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;x: ref 'a -> v: FStar.Ghost.erased 'a -> h: heap{hm.interp (pts_to x v) h} -> 'a
(declare-fun Tm_arrow_502508307c3f213d867b0c456505e0b4 () Term)
(declare-fun OPLSS2021.ParNDSDiv.sel@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.sel>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.ref; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(391,4-391,7); use=OPLSS2021.ParNDSDiv.fst(391,4-391,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (OPLSS2021.ParNDSDiv.ref @x0)
Tm_type))
 

:pattern ((OPLSS2021.ParNDSDiv.ref @x0))
:qid typing_OPLSS2021.ParNDSDiv.ref))

:named typing_OPLSS2021.ParNDSDiv.ref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.pts_to; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(395,4-395,10); use=OPLSS2021.ParNDSDiv.fst(395,4-395,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.ref @x0))
(HasType @x2
@x0))
(HasType (OPLSS2021.ParNDSDiv.pts_to @x0
@x1
@x2)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value))))
 

:pattern ((OPLSS2021.ParNDSDiv.pts_to @x0
@x1
@x2))
:qid typing_OPLSS2021.ParNDSDiv.pts_to))

:named typing_OPLSS2021.ParNDSDiv.pts_to))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Ghost.reveal; Namespace FStar.Ghost
(assert (! 
;; def=FStar.Ghost.fsti(53,4-53,10); use=FStar.Ghost.fsti(53,4-53,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Ghost.erased @x0)))
(HasType (FStar.Ghost.reveal @x0
@x1)
@x0))
 

:pattern ((FStar.Ghost.reveal @x0
@x1))
:qid typing_FStar.Ghost.reveal))

:named typing_FStar.Ghost.reveal))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Ghost.hide; Namespace FStar.Ghost
(assert (! 
;; def=FStar.Ghost.fsti(55,4-55,8); use=FStar.Ghost.fsti(55,4-55,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0))
(HasType (FStar.Ghost.hide @x0
@x1)
(FStar.Ghost.erased @x0)))
 

:pattern ((FStar.Ghost.hide @x0
@x1))
:qid typing_FStar.Ghost.hide))

:named typing_FStar.Ghost.hide))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Ghost.erased; Namespace FStar.Ghost
(assert (! 
;; def=FStar.Ghost.fsti(49,4-49,10); use=FStar.Ghost.fsti(49,4-49,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Ghost.erased @x0)
Tm_type))
 

:pattern ((FStar.Ghost.erased @x0))
:qid typing_FStar.Ghost.erased))

:named typing_FStar.Ghost.erased))
;;;;;;;;;;;;;;;;Lemma: FStar.Ghost.reveal_hide
;;; Fact-ids: Name FStar.Ghost.reveal_hide; Namespace FStar.Ghost
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0))

;; def=FStar.Ghost.fsti(60,51-60,73); use=FStar.Ghost.fsti(60,51-60,73)
(= (FStar.Ghost.reveal @x0
(FStar.Ghost.hide @x0
@x1))
@x1)
)
 

:pattern ((FStar.Ghost.hide @x0
@x1))
:qid lemma_FStar.Ghost.reveal_hide))
:named lemma_FStar.Ghost.reveal_hide))
;;;;;;;;;;;;;;;;Lemma: FStar.Ghost.hide_reveal
;;; Fact-ids: Name FStar.Ghost.hide_reveal; Namespace FStar.Ghost
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Ghost.erased @x0)))

;; def=FStar.Ghost.fsti(58,21-58,43); use=FStar.Ghost.fsti(58,21-58,43)
(= (FStar.Ghost.hide @x0
(FStar.Ghost.reveal @x0
@x1))
@x1)
)
 

:pattern ((FStar.Ghost.reveal @x0
@x1))
:qid lemma_FStar.Ghost.hide_reveal))
:named lemma_FStar.Ghost.hide_reveal))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Ghost.erased; Namespace FStar.Ghost
(assert (! 
;; def=FStar.Ghost.fsti(49,4-49,10); use=FStar.Ghost.fsti(49,4-49,10)
(forall ((@x0 Term))
 (! (= 103
(Term_constr_id (FStar.Ghost.erased @x0)))
 

:pattern ((FStar.Ghost.erased @x0))
:qid constructor_distinct_FStar.Ghost.erased))

:named constructor_distinct_FStar.Ghost.erased))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Ghost.erased; Namespace FStar.Ghost
(assert (! 
;; def=FStar.Ghost.fsti(49,4-49,10); use=FStar.Ghost.fsti(49,4-49,10)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Ghost.erased @x2))
(= (FStar.Ghost.erased @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Ghost.erased @x2)))
:qid FStar.Ghost_pretyping_22d6a8ce99cd028abbb08411c23f7a32))

:named FStar.Ghost_pretyping_22d6a8ce99cd028abbb08411c23f7a32))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(407,0-411,88)

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
;; def=OPLSS2021.ParNDSDiv.fst(408,4-411,88); use=OPLSS2021.ParNDSDiv.fst(408,4-408,9)
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







; Encoding query formula : forall ('a: Type0)
;   (x: OPLSS2021.ParNDSDiv.ref 'a)
;   (v: FStar.Ghost.erased 'a)
;   (h: OPLSS2021.ParNDSDiv.heap)
;   (frame: OPLSS2021.ParNDSDiv.hm.r)
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to x v) frame)
;     h ==>
;   (forall (pure_result: Prims.unit).
;       (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to x v)
;               frame)
;           h ==>
;         OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v) h) ==>
;       Prims.auto_squash (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v) h))


; Context: While encoding a query
; While typechecking the top-level declaration `val OPLSS2021.ParNDSDiv.sel_ok`

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
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(407,0-411,88)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.ref @x0))
(HasType @x2
(FStar.Ghost.erased @x0))
(HasType @x3
OPLSS2021.ParNDSDiv.heap)
(HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x5
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)

;; def=OPLSS2021.ParNDSDiv.fst(408,11-408,51); use=OPLSS2021.ParNDSDiv.fst(408,11-408,51)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(408,11-408,51); use=OPLSS2021.ParNDSDiv.fst(408,11-408,51)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x4))
@x3)
)
)

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(409,12-409,21)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(386,10-387,26); use=OPLSS2021.ParNDSDiv.fst(409,12-409,21)
(implies 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(409,12-409,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(409,12-409,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x4))
@x3)
)


;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(409,12-409,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(409,12-409,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x3)
)
)
)

;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(410,29-410,30)
(or label_1

;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(410,29-410,30)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(410,29-410,30)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x3)
)
)
)
 
;;no pats
:qid @query.1))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.sel_ok, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val OPLSS2021.ParNDSDiv.sel_ok


; <Start encoding val OPLSS2021.ParNDSDiv.sel_ok>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.sel_ok (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.sel_ok@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.sel_ok>


; encoding sigelt val OPLSS2021.ParNDSDiv.upd


; <Start encoding val OPLSS2021.ParNDSDiv.upd>



(declare-fun OPLSS2021.ParNDSDiv.upd (Term Term Term Term Term) Term)


;;;;;;;;;;;;;;;;x: ref 'a -> v0: FStar.Ghost.erased 'a -> v: 'a -> h: heap{hm.interp (pts_to x v0) h} -> heap
(declare-fun Tm_arrow_2c300f31e2fda4f07c117c1571f01480 () Term)
(declare-fun OPLSS2021.ParNDSDiv.upd@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.upd>

(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(420,0-424,55)

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
;; def=OPLSS2021.ParNDSDiv.fst(421,4-424,55); use=OPLSS2021.ParNDSDiv.fst(421,4-421,9)
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







; Encoding query formula : forall ('a: Type0)
;   (x: OPLSS2021.ParNDSDiv.ref 'a)
;   (v0: FStar.Ghost.erased 'a)
;   (v: 'a)
;   (h: OPLSS2021.ParNDSDiv.heap)
;   (frame: OPLSS2021.ParNDSDiv.hm.r)
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to x v0) frame
;     )
;     h ==>
;   (forall (pure_result: Prims.unit).
;       (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;               frame)
;           h ==>
;         OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v0) h) ==>
;       Prims.auto_squash (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v0) h))


; Context: While encoding a query
; While typechecking the top-level declaration `val OPLSS2021.ParNDSDiv.upd_ok`

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
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(420,0-424,55)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.ref @x0))
(HasType @x2
(FStar.Ghost.erased @x0))
(HasType @x3
@x0)
(HasType @x4
OPLSS2021.ParNDSDiv.heap)
(HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x6
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)

;; def=OPLSS2021.ParNDSDiv.fst(421,11-421,52); use=OPLSS2021.ParNDSDiv.fst(421,11-421,52)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(421,11-421,52); use=OPLSS2021.ParNDSDiv.fst(421,11-421,52)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x5))
@x4)
)
)

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(422,12-422,21)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(386,10-387,26); use=OPLSS2021.ParNDSDiv.fst(422,12-422,21)
(implies 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(422,12-422,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(422,12-422,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x5))
@x4)
)


;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(422,12-422,21)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(422,12-422,21)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x4)
)
)
)

;; def=OPLSS2021.ParNDSDiv.fst(415,49-415,74); use=OPLSS2021.ParNDSDiv.fst(423,32-423,33)
(or label_1

;; def=OPLSS2021.ParNDSDiv.fst(415,49-415,74); use=OPLSS2021.ParNDSDiv.fst(423,32-423,33)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(415,49-415,74); use=OPLSS2021.ParNDSDiv.fst(423,32-423,33)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x1
(FStar.Ghost.reveal @x0
@x2)))
@x4)
)
)
)
 
;;no pats
:qid @query.1))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.upd_ok, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val OPLSS2021.ParNDSDiv.upd_ok


; <Start encoding val OPLSS2021.ParNDSDiv.upd_ok>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.upd_ok (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.upd_ok@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.upd_ok>


; encoding sigelt val OPLSS2021.ParNDSDiv.rewrite


; <Start encoding val OPLSS2021.ParNDSDiv.rewrite>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.rewrite (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.rewrite@tok () Term)

; </end encoding val OPLSS2021.ParNDSDiv.rewrite>

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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.sel; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(402,4-402,7); use=OPLSS2021.ParNDSDiv.fst(402,4-402,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.ref @x0))
(HasType @x2
(FStar.Ghost.erased @x0))
(HasType @x3
(Tm_refine_0967966af45c9589071d38d2d048e481 @x0
@x1
@x2)))
(HasType (OPLSS2021.ParNDSDiv.sel @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((OPLSS2021.ParNDSDiv.sel @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ParNDSDiv.sel))

:named typing_OPLSS2021.ParNDSDiv.sel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.pure; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(397,4-397,8); use=OPLSS2021.ParNDSDiv.fst(397,4-397,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.prop)
(HasType (OPLSS2021.ParNDSDiv.pure @x0)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value))))
 

:pattern ((OPLSS2021.ParNDSDiv.pure @x0))
:qid typing_OPLSS2021.ParNDSDiv.pure))

:named typing_OPLSS2021.ParNDSDiv.pure))
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
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.sel; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(402,33-402,67); use=OPLSS2021.ParNDSDiv.fst(402,33-402,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_0967966af45c9589071d38d2d048e481 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_0967966af45c9589071d38d2d048e481 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_0967966af45c9589071d38d2d048e481))

:named refinement_kinding_Tm_refine_0967966af45c9589071d38d2d048e481))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.sel; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(402,33-402,67); use=OPLSS2021.ParNDSDiv.fst(402,33-402,67)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0967966af45c9589071d38d2d048e481 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
OPLSS2021.ParNDSDiv.heap)

;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(402,41-402,65)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(402,41-402,65)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x2
@x3
(FStar.Ghost.reveal @x2
@x4)))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0967966af45c9589071d38d2d048e481 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_0967966af45c9589071d38d2d048e481))

:named refinement_interpretation_Tm_refine_0967966af45c9589071d38d2d048e481))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.equals@tok))
:named pre_kinding_Prims.equals@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_0967966af45c9589071d38d2d048e481
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.sel; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(402,33-402,67); use=OPLSS2021.ParNDSDiv.fst(402,33-402,67)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0967966af45c9589071d38d2d048e481 @x0
@x1
@x2)))
(Valid (Prims.hasEq OPLSS2021.ParNDSDiv.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0967966af45c9589071d38d2d048e481 @x0
@x1
@x2))))
:qid haseqTm_refine_0967966af45c9589071d38d2d048e481))

:named haseqTm_refine_0967966af45c9589071d38d2d048e481))
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
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (= 135
(Term_constr_id Prims.equals@tok))
:named fresh_token_Prims.equals@tok))
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
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(435,4-445,16)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

(declare-fun Tm_abs_3cc4549145acd11131cf84e0e819a850 (Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_3cc4549145acd11131cf84e0e819a850
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(434,33-434,73); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_3cc4549145acd11131cf84e0e819a850 @x0
@x1
@x2)
(Tm_arrow_520f3a1f9b5218bbc4865547b1d5d853 @x2))
 

:pattern ((Tm_abs_3cc4549145acd11131cf84e0e819a850 @x0
@x1
@x2))
:qid typing_Tm_abs_3cc4549145acd11131cf84e0e819a850))

:named typing_Tm_abs_3cc4549145acd11131cf84e0e819a850))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_3cc4549145acd11131cf84e0e819a850
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(434,33-434,73); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_3cc4549145acd11131cf84e0e819a850 @x1
@x2
@x3)
@x0)
(OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to @x3
@x1
(FStar.Ghost.reveal @x3
@x2))
(OPLSS2021.ParNDSDiv.pure (Prims.eq2 @x3
(FStar.Ghost.reveal @x3
@x2)
@x0))))
 

:pattern ((ApplyTT (Tm_abs_3cc4549145acd11131cf84e0e819a850 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_3cc4549145acd11131cf84e0e819a850))

:named interpretation_Tm_abs_3cc4549145acd11131cf84e0e819a850))


(declare-fun Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(438,6-443,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))

:named refinement_kinding_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(438,6-443,30)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
OPLSS2021.ParNDSDiv.heap)

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(438,6-443,30)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(438,6-443,30)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x2
@x3
(FStar.Ghost.reveal @x2
@x4)))
@x5))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))

:named refinement_interpretation_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c97cb32426b9d692eac4a9b3357c73f5
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(438,6-443,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq OPLSS2021.ParNDSDiv.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_c97cb32426b9d692eac4a9b3357c73f5))

:named haseqTm_refine_c97cb32426b9d692eac4a9b3357c73f5))























(declare-fun Tm_refine_2748368669abea405dead4a266e8d6b0 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_2748368669abea405dead4a266e8d6b0 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_2748368669abea405dead4a266e8d6b0 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_2748368669abea405dead4a266e8d6b0))

:named refinement_kinding_Tm_refine_2748368669abea405dead4a266e8d6b0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2748368669abea405dead4a266e8d6b0 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
OPLSS2021.ParNDSDiv.heap)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to @x2
@x3
(FStar.Ghost.reveal @x2
@x4))
(OPLSS2021.ParNDSDiv.pure (Prims.eq2 @x2
(FStar.Ghost.reveal @x2
@x4)
@x5))))
@x6))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2748368669abea405dead4a266e8d6b0 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_2748368669abea405dead4a266e8d6b0))

:named refinement_interpretation_Tm_refine_2748368669abea405dead4a266e8d6b0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2748368669abea405dead4a266e8d6b0
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2748368669abea405dead4a266e8d6b0 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq OPLSS2021.ParNDSDiv.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2748368669abea405dead4a266e8d6b0 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_2748368669abea405dead4a266e8d6b0))

:named haseqTm_refine_2748368669abea405dead4a266e8d6b0))

(declare-fun Tm_abs_17900d4f2a1fc282edb9113a0a8682ae (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_17900d4f2a1fc282edb9113a0a8682ae
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_17900d4f2a1fc282edb9113a0a8682ae @x0
@x1
@x2
@x3)
(Tm_arrow_2eaa01e78f73e9bab5d0955fc1a662da @x3))
 

:pattern ((Tm_abs_17900d4f2a1fc282edb9113a0a8682ae @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_17900d4f2a1fc282edb9113a0a8682ae))

:named typing_Tm_abs_17900d4f2a1fc282edb9113a0a8682ae))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_17900d4f2a1fc282edb9113a0a8682ae
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_17900d4f2a1fc282edb9113a0a8682ae @x1
@x2
@x3
@x4)
@x0)
(Tm_refine_2748368669abea405dead4a266e8d6b0 @x4
@x1
@x2
@x0
@x3))
 

:pattern ((ApplyTT (Tm_abs_17900d4f2a1fc282edb9113a0a8682ae @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_17900d4f2a1fc282edb9113a0a8682ae))

:named interpretation_Tm_abs_17900d4f2a1fc282edb9113a0a8682ae))
;;;;;;;;;;;;;;;;frame: hm.r -> s0: heap{hm.interp (hm.star (pts_to x v0) frame) s0}   -> x: 'a & s1: heap{hm.interp (hm.star (star (pts_to x v0) (pure (v0 == x))) frame) s1}
(declare-fun Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 (Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0))

:named kinding_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x2
@x3
@x4)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x1
@x2
@x3))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x5
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x3
@x2
@x1
@x4)))
(HasType (ApplyTT (ApplyTT @x0
@x4)
@x5)
(Prims.dtuple2 @x3
(Tm_abs_17900d4f2a1fc282edb9113a0a8682ae @x2
@x1
@x4
@x3))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x4)
@x5))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(IsTotFun (ApplyTT @x0
@x4)))
 

:pattern ((ApplyTT @x0
@x4))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x1
@x2
@x3)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0))



















(declare-fun Tm_abs_7d8110940397d48722bd1459e1f6e9c2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_7d8110940397d48722bd1459e1f6e9c2
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(441,8-443,29); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x0
@x1
@x2)
(Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x0
@x1
@x2))
 

:pattern ((Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x0
@x1
@x2))
:qid typing_Tm_abs_7d8110940397d48722bd1459e1f6e9c2))

:named typing_Tm_abs_7d8110940397d48722bd1459e1f6e9c2))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_7d8110940397d48722bd1459e1f6e9c2
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(441,8-443,29); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x2
@x3
@x4)
@x0)
@x1)
(Prims.Mkdtuple2 @x4
(Tm_abs_17900d4f2a1fc282edb9113a0a8682ae @x3
@x2
@x0
@x4)
(OPLSS2021.ParNDSDiv.sel @x4
@x3
@x2
@x1)
@x1))
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x2
@x3
@x4)
@x0)
@x1))
:qid interpretation_Tm_abs_7d8110940397d48722bd1459e1f6e9c2))

:named interpretation_Tm_abs_7d8110940397d48722bd1459e1f6e9c2))































































; Encoding query formula : forall ('a: Type) (v0: FStar.Ghost.erased 'a) (x: OPLSS2021.ParNDSDiv.ref 'a).
;   (*  - Could not prove post-condition
; *)
;   forall (_: Prims.unit).
;     (*  - Could not prove post-condition
; *)
;     forall (p:
;       Prims.pure_post (OPLSS2021.ParNDSDiv.m 'a
;             (OPLSS2021.ParNDSDiv.pts_to x v0)
;             (fun v ->
;                 OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                   (OPLSS2021.ParNDSDiv.pure (v0 == v))))).
;       (forall (any_result:
;           OPLSS2021.ParNDSDiv.m 'a
;             (OPLSS2021.ParNDSDiv.pts_to x v0)
;             (fun v ->
;                 OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                   (OPLSS2021.ParNDSDiv.pure (v0 == v)))).
;           p any_result) ==>
;       (forall (frame: OPLSS2021.ParNDSDiv.hm.r)
;           (h0:
;           s0:
;           OPLSS2021.ParNDSDiv.heap
;             { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                         x
;                         v0)
;                     frame)
;                 s0 }).
;           (*  - Could not prove post-condition
; *)
;           forall (pure_result: Prims.unit).
;             (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to x
;                         v0)
;                     frame)
;                 h0 ==>
;               OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v0) h0) ==>
;             (forall (pure_result: Prims.unit).
;                 (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                             x
;                             v0)
;                         frame)
;                     h0 ==>
;                   OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.hm
;                             .star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                             (OPLSS2021.ParNDSDiv.pure (v0 == OPLSS2021.ParNDSDiv.sel x v0 h0)))
;                         frame)
;                     h0) ==>
;                 (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                             x
;                             v0)
;                         frame)
;                     h0 ==>
;                   OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v0) h0) /\
;                 (forall (any_result:
;                     s0:
;                     OPLSS2021.ParNDSDiv.heap
;                       { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                                   x
;                                   v0)
;                               frame)
;                           s0 }).
;                     h0 == any_result ==>
;                     (forall (any_result: 'a).
;                         OPLSS2021.ParNDSDiv.sel x v0 h0 == any_result ==>
;                         OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                                   x
;                                   v0)
;                               frame)
;                           h0 ==>
;                         OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.star
;                                   (OPLSS2021.ParNDSDiv.pts_to x v0)
;                                   (OPLSS2021.ParNDSDiv.pure (v0 == OPLSS2021.ParNDSDiv.sel x v0 h0))
;                               )
;                               frame)
;                           h0)))) /\
;       (forall (any_result:
;           (
;                 frame: OPLSS2021.ParNDSDiv.hm.r ->
;                 s0:
;                   OPLSS2021.ParNDSDiv.heap
;                     { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                                 x
;                                 v0)
;                             frame)
;                         s0 }
;               -> x: 'a &
;                 s1:
;                 OPLSS2021.ParNDSDiv.heap
;                   { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.star
;                               (OPLSS2021.ParNDSDiv.pts_to x v0)
;                               (OPLSS2021.ParNDSDiv.pure (v0 == x)))
;                           frame)
;                       s1 })).
;           (fun frame h0 -> (| OPLSS2021.ParNDSDiv.sel x v0 h0, h0 |)) == any_result ==>
;           (forall (any_result: OPLSS2021.ParNDSDiv.action OPLSS2021.ParNDSDiv.hm 'a).
;               OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.pts_to x v0)
;                 (fun v ->
;                     OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                       (OPLSS2021.ParNDSDiv.pure (v0 == v)))
;                 (fun frame h0 -> (| OPLSS2021.ParNDSDiv.sel x v0 h0, h0 |)) ==
;               any_result ==>
;               (OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.pts_to x v0)
;                   (fun v ->
;                       OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                         (OPLSS2021.ParNDSDiv.pure (v0 == v)))
;                   (fun frame h0 -> (| OPLSS2021.ParNDSDiv.sel x v0 h0, h0 |)))
;                 .pre ==
;               OPLSS2021.ParNDSDiv.pts_to x v0 /\
;               (fun v ->
;                   OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                     (OPLSS2021.ParNDSDiv.pure (v0 == v))) ==
;               (OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.pts_to x v0)
;                   (fun v ->
;                       OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to x v0)
;                         (OPLSS2021.ParNDSDiv.pure (v0 == v)))
;                   (fun frame h0 -> (| OPLSS2021.ParNDSDiv.sel x v0 h0, h0 |)))
;                 .post))


; Context: While encoding a query
; While typechecking the top-level declaration `let op_Bang`

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
(FStar.Ghost.erased @x0))
(HasType @x2
(OPLSS2021.ParNDSDiv.ref @x0)))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.unit)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (OPLSS2021.ParNDSDiv.m OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_3cc4549145acd11131cf84e0e819a850 @x2
@x1
@x0))))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x5 Term))
 (! (implies (or label_1
(HasType @x5
(OPLSS2021.ParNDSDiv.m OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_3cc4549145acd11131cf84e0e819a850 @x2
@x1
@x0))))

;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(ApplyTT @x4
@x5)
)
)
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x6
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x2
@x1
@x5)))

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(441,8-441,17)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(386,10-387,26); use=OPLSS2021.ParNDSDiv.fst(441,8-441,17)
(implies 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(441,8-441,17)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(441,8-441,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x5))
@x6)
)


;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(441,8-441,17)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(441,8-441,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x6)
)
)
)

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(442,8-442,14)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(408,10-411,88); use=OPLSS2021.ParNDSDiv.fst(442,8-442,14)
(implies 
;; def=OPLSS2021.ParNDSDiv.fst(408,11-408,51); use=OPLSS2021.ParNDSDiv.fst(442,8-442,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(408,11-408,51); use=OPLSS2021.ParNDSDiv.fst(442,8-442,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x5))
@x6)
)


;; def=OPLSS2021.ParNDSDiv.fst(411,12-411,86); use=OPLSS2021.ParNDSDiv.fst(442,8-442,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(411,12-411,86); use=OPLSS2021.ParNDSDiv.fst(442,8-442,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
(OPLSS2021.ParNDSDiv.pure (Prims.eq2 @x0
(FStar.Ghost.reveal @x0
@x1)
(OPLSS2021.ParNDSDiv.sel @x0
@x2
@x1
@x6)))))
@x5))
@x6)
)
)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(443,20-443,22)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(443,20-443,22)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x5))
@x6)
)


;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(443,20-443,22)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(443,20-443,22)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(402,41-402,65); use=OPLSS2021.ParNDSDiv.fst(443,20-443,22)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x6)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x2
@x1
@x5))

;; def=OPLSS2021.ParNDSDiv.fst(402,34-440,25); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(= @x6
@x9)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
@x0)

;; def=Prims.fst(504,16-504,18); use=OPLSS2021.ParNDSDiv.fst(441,8-443,29)
(= (OPLSS2021.ParNDSDiv.sel @x0
@x2
@x1
@x6)
@x10)


;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(443,24-443,26)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(443,24-443,26)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x5))
@x6)
)
)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(443,24-443,26)
(or label_3

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(443,24-443,26)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(443,24-443,26)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.star (OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(OPLSS2021.ParNDSDiv.pure (Prims.eq2 @x0
(FStar.Ghost.reveal @x0
@x1)
(OPLSS2021.ParNDSDiv.sel @x0
@x2
@x1
@x6)))))
@x5))
@x6)
)
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
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Tm_arrow_9b66674e40af10fd59d0e1e8a5b2a7b0 @x1
@x2
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(78,3-443,29); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(= (Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x1
@x2
@x0)
@x5)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(435,24-445,15)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ParNDSDiv.action OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(436,8-443,30); use=OPLSS2021.ParNDSDiv.fst(436,8-443,30)
(= (OPLSS2021.ParNDSDiv.Mkaction OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_3cc4549145acd11131cf84e0e819a850 @x2
@x1
@x0)
(Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x1
@x2
@x0))
@x6)
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(445,4-445,15)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(97,105-434,22); use=OPLSS2021.ParNDSDiv.fst(445,4-445,15)
(or label_4

;; def=OPLSS2021.ParNDSDiv.fst(97,105-434,22); use=OPLSS2021.ParNDSDiv.fst(445,4-445,15)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.Mkaction OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_3cc4549145acd11131cf84e0e819a850 @x2
@x1
@x0)
(Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x1
@x2
@x0)))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
)


;; def=OPLSS2021.ParNDSDiv.fst(97,80-434,73); use=OPLSS2021.ParNDSDiv.fst(445,4-445,15)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(97,80-434,73); use=OPLSS2021.ParNDSDiv.fst(445,4-445,15)
(= (Tm_abs_3cc4549145acd11131cf84e0e819a850 @x2
@x1
@x0)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.Mkaction OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
@x0
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_3cc4549145acd11131cf84e0e819a850 @x2
@x1
@x0)
(Tm_abs_7d8110940397d48722bd1459e1f6e9c2 @x1
@x2
@x0))))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.op_Bang, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_OPLSS2021.ParNDSDiv.hm, function_token_typing_OPLSS2021.ParNDSDiv.star, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_post, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_pre, proj_equation_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_post, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_pre, projection_inverse_OPLSS2021.ParNDSDiv.Mkcomm_monoid_star, token_correspondence_OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let op_Bang


; <Start encoding let op_Bang>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.ParNDSDiv.op_Bang (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.ParNDSDiv.op_Bang@tok () Term)

; </end encoding let op_Bang>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ParNDSDiv.upd; Namespace OPLSS2021.ParNDSDiv
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(415,4-415,7); use=OPLSS2021.ParNDSDiv.fst(415,4-415,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(OPLSS2021.ParNDSDiv.ref @x0))
(HasType @x2
(FStar.Ghost.erased @x0))
(HasType @x3
@x0)
(HasType @x4
(Tm_refine_0967966af45c9589071d38d2d048e481 @x0
@x1
@x2)))
(HasType (OPLSS2021.ParNDSDiv.upd @x0
@x1
@x2
@x3
@x4)
OPLSS2021.ParNDSDiv.heap))
 

:pattern ((OPLSS2021.ParNDSDiv.upd @x0
@x1
@x2
@x3
@x4))
:qid typing_OPLSS2021.ParNDSDiv.upd))

:named typing_OPLSS2021.ParNDSDiv.upd))
(push) ;; push{2

; Starting query at OPLSS2021.ParNDSDiv.fst(450,4-460,16)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;_: Prims.unit -> hm.r
(declare-fun Tm_arrow_f2b2cf1137d7310511124130fba8d44f () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f2b2cf1137d7310511124130fba8d44f
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_f2b2cf1137d7310511124130fba8d44f
Tm_type)
:named kinding_Tm_arrow_f2b2cf1137d7310511124130fba8d44f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,39-449,10); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_f2b2cf1137d7310511124130fba8d44f)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_f2b2cf1137d7310511124130fba8d44f))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_f2b2cf1137d7310511124130fba8d44f))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_f2b2cf1137d7310511124130fba8d44f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f2b2cf1137d7310511124130fba8d44f
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(322,39-449,10); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_f2b2cf1137d7310511124130fba8d44f)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(322,39-449,10); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.unit)
(HasType (ApplyTT @x0
@x1)
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value))))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f2b2cf1137d7310511124130fba8d44f.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_f2b2cf1137d7310511124130fba8d44f))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f2b2cf1137d7310511124130fba8d44f))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_f2b2cf1137d7310511124130fba8d44f))
(declare-fun Tm_abs_d7913a40ed5f14bb48bed78db404dfad (Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_d7913a40ed5f14bb48bed78db404dfad
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(449,35-449,45); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x1
@x2)
Tm_arrow_f2b2cf1137d7310511124130fba8d44f)
 

:pattern ((Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x1
@x2))
:qid typing_Tm_abs_d7913a40ed5f14bb48bed78db404dfad))

:named typing_Tm_abs_d7913a40ed5f14bb48bed78db404dfad))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_d7913a40ed5f14bb48bed78db404dfad
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(449,35-449,45); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x1
@x2
@x3)
@x0)
(OPLSS2021.ParNDSDiv.pts_to @x1
@x2
@x3))
 

:pattern ((ApplyTT (Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_d7913a40ed5f14bb48bed78db404dfad))

:named interpretation_Tm_abs_d7913a40ed5f14bb48bed78db404dfad))


(declare-fun Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(453,6-458,32)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))

:named refinement_kinding_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(453,6-458,32)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
OPLSS2021.ParNDSDiv.heap)

;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(453,6-458,32)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(453,6-458,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x2
@x3
(FStar.Ghost.reveal @x2
@x4)))
@x5))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))

:named refinement_interpretation_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c97cb32426b9d692eac4a9b3357c73f5
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(79,9-79,45); use=OPLSS2021.ParNDSDiv.fst(453,6-458,32)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq OPLSS2021.ParNDSDiv.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_c97cb32426b9d692eac4a9b3357c73f5))

:named haseqTm_refine_c97cb32426b9d692eac4a9b3357c73f5))




















(declare-fun Tm_refine_fa89d3e26aebf2f277749487d6434d9f (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_fa89d3e26aebf2f277749487d6434d9f))

:named refinement_kinding_Tm_refine_fa89d3e26aebf2f277749487d6434d9f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
OPLSS2021.ParNDSDiv.heap)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x2
@x3
@x4))
@x5))
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_fa89d3e26aebf2f277749487d6434d9f))

:named refinement_interpretation_Tm_refine_fa89d3e26aebf2f277749487d6434d9f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_fa89d3e26aebf2f277749487d6434d9f
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq OPLSS2021.ParNDSDiv.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_fa89d3e26aebf2f277749487d6434d9f))

:named haseqTm_refine_fa89d3e26aebf2f277749487d6434d9f))
;;;;;;;;;;;;;;;;x: Prims.unit -> Prims.GTot Type
(declare-fun Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
Tm_type)
:named kinding_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
;;; Fact-ids: 
(assert (! 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.unit)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
(declare-fun Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 @x0
@x1
@x2
@x3)
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
 

:pattern ((Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1))

:named typing_Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(80,16-80,57); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 @x1
@x2
@x3
@x4)
@x0)
(Tm_refine_fa89d3e26aebf2f277749487d6434d9f @x1
@x2
@x3
@x4))
 

:pattern ((ApplyTT (Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 @x1
@x2
@x3
@x4)
@x0))
:qid interpretation_Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1))

:named interpretation_Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1))
;;;;;;;;;;;;;;;;frame: hm.r -> s0: heap{hm.interp (hm.star (pts_to x v0) frame) s0}   -> x: Prims.unit & s1: heap{hm.interp (hm.star (pts_to x v) frame) s1}
(declare-fun Tm_arrow_37a843f43348db31fde28472dd4bb116 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_37a843f43348db31fde28472dd4bb116
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_arrow_37a843f43348db31fde28472dd4bb116 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_arrow_37a843f43348db31fde28472dd4bb116 @x0
@x1
@x2
@x3)
Tm_type))
:qid kinding_Tm_arrow_37a843f43348db31fde28472dd4bb116))

:named kinding_Tm_arrow_37a843f43348db31fde28472dd4bb116))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_37a843f43348db31fde28472dd4bb116 @x2
@x3
@x4
@x5))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_37a843f43348db31fde28472dd4bb116 @x2
@x3
@x4
@x5)))
:qid OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_37a843f43348db31fde28472dd4bb116))

:named OPLSS2021.ParNDSDiv_pre_typing_Tm_arrow_37a843f43348db31fde28472dd4bb116))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_37a843f43348db31fde28472dd4bb116
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_37a843f43348db31fde28472dd4bb116 @x1
@x2
@x3
@x4))
(and 
;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x6
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x4
@x3
@x2
@x5)))
(HasType (ApplyTT (ApplyTT @x0
@x5)
@x6)
(Prims.dtuple2 Prims.unit
(Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 @x4
@x3
@x1
@x5))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x5)
@x6))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_37a843f43348db31fde28472dd4bb116.1))

(IsTotFun @x0)

;; def=OPLSS2021.ParNDSDiv.fst(78,15-80,58); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(IsTotFun (ApplyTT @x0
@x5)))
 

:pattern ((ApplyTT @x0
@x5))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_37a843f43348db31fde28472dd4bb116.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_37a843f43348db31fde28472dd4bb116 @x1
@x2
@x3
@x4)))
:qid OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_37a843f43348db31fde28472dd4bb116))

:named OPLSS2021.ParNDSDiv_interpretation_Tm_arrow_37a843f43348db31fde28472dd4bb116))



















(declare-fun Tm_abs_d1cccd847c18272b34f26be5a179c33d (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_d1cccd847c18272b34f26be5a179c33d
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(456,8-458,31); use=OPLSS2021.ParNDSDiv.fst(456,8-458,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_abs_d1cccd847c18272b34f26be5a179c33d @x0
@x1
@x2
@x3)
(Tm_arrow_37a843f43348db31fde28472dd4bb116 @x0
@x1
@x2
@x3))
 

:pattern ((Tm_abs_d1cccd847c18272b34f26be5a179c33d @x0
@x1
@x2
@x3))
:qid typing_Tm_abs_d1cccd847c18272b34f26be5a179c33d))

:named typing_Tm_abs_d1cccd847c18272b34f26be5a179c33d))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_d1cccd847c18272b34f26be5a179c33d
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ParNDSDiv.fst(456,8-458,31); use=OPLSS2021.ParNDSDiv.fst(456,8-458,31)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_d1cccd847c18272b34f26be5a179c33d @x2
@x3
@x4
@x5)
@x0)
@x1)
(Prims.Mkdtuple2 Prims.unit
(Tm_abs_47e23187d97b0ff379550c3b4bb0c3d1 @x5
@x4
@x2
@x0)
Tm_unit
(OPLSS2021.ParNDSDiv.upd @x5
@x4
@x3
@x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_d1cccd847c18272b34f26be5a179c33d @x2
@x3
@x4
@x5)
@x0)
@x1))
:qid interpretation_Tm_abs_d1cccd847c18272b34f26be5a179c33d))

:named interpretation_Tm_abs_d1cccd847c18272b34f26be5a179c33d))































































; Encoding query formula : forall ('a: Type) (v0: FStar.Ghost.erased 'a) (x: OPLSS2021.ParNDSDiv.ref 'a) (v: 'a).
;   (*  - Could not prove post-condition
; *)
;   forall (_: Prims.unit).
;     (*  - Could not prove post-condition
; *)
;     forall (p:
;       Prims.pure_post (OPLSS2021.ParNDSDiv.m Prims.unit
;             (OPLSS2021.ParNDSDiv.pts_to x v0)
;             (fun _ -> OPLSS2021.ParNDSDiv.pts_to x v))).
;       (forall (any_result:
;           OPLSS2021.ParNDSDiv.m Prims.unit
;             (OPLSS2021.ParNDSDiv.pts_to x v0)
;             (fun _ -> OPLSS2021.ParNDSDiv.pts_to x v)).
;           p any_result) ==>
;       (forall (frame: OPLSS2021.ParNDSDiv.hm.r)
;           (h0:
;           s0:
;           OPLSS2021.ParNDSDiv.heap
;             { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                         x
;                         v0)
;                     frame)
;                 s0 }).
;           (*  - Could not prove post-condition
; *)
;           forall (pure_result: Prims.unit).
;             (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to x
;                         v0)
;                     frame)
;                 h0 ==>
;               OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v0) h0) ==>
;             (forall (pure_result: Prims.unit).
;                 (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                             x
;                             v0)
;                         frame)
;                     h0 ==>
;                   OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                             x
;                             v)
;                         frame)
;                     (OPLSS2021.ParNDSDiv.upd x v0 v h0)) ==>
;                 (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                             x
;                             v0)
;                         frame)
;                     h0 ==>
;                   OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.pts_to x v0) h0) /\
;                 (forall (any_result:
;                     s0:
;                     OPLSS2021.ParNDSDiv.heap
;                       { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                                   x
;                                   v0)
;                               frame)
;                           s0 }).
;                     h0 == any_result ==>
;                     (forall (any_result: OPLSS2021.ParNDSDiv.heap).
;                         OPLSS2021.ParNDSDiv.upd x v0 v h0 == any_result ==>
;                         Prims.auto_squash (OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm
;                                   .star (OPLSS2021.ParNDSDiv.pts_to x v)
;                                   frame)
;                               (OPLSS2021.ParNDSDiv.upd x v0 v h0)))))) /\
;       (forall (any_result:
;           (
;                 frame: OPLSS2021.ParNDSDiv.hm.r ->
;                 s0:
;                   OPLSS2021.ParNDSDiv.heap
;                     { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                                 x
;                                 v0)
;                             frame)
;                         s0 }
;               -> x: Prims.unit &
;                 s1:
;                 OPLSS2021.ParNDSDiv.heap
;                   { OPLSS2021.ParNDSDiv.hm.interp (OPLSS2021.ParNDSDiv.hm.star (OPLSS2021.ParNDSDiv.pts_to
;                               x
;                               v)
;                           frame)
;                       s1 })).
;           (fun frame h0 -> (| (), OPLSS2021.ParNDSDiv.upd x v0 v h0 |)) == any_result ==>
;           (forall (any_result: OPLSS2021.ParNDSDiv.action OPLSS2021.ParNDSDiv.hm Prims.unit).
;               OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.pts_to x v0)
;                 (fun _ -> OPLSS2021.ParNDSDiv.pts_to x v)
;                 (fun frame h0 -> (| (), OPLSS2021.ParNDSDiv.upd x v0 v h0 |)) ==
;               any_result ==>
;               (OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.pts_to x v0)
;                   (fun _ -> OPLSS2021.ParNDSDiv.pts_to x v)
;                   (fun frame h0 -> (| (), OPLSS2021.ParNDSDiv.upd x v0 v h0 |)))
;                 .pre ==
;               OPLSS2021.ParNDSDiv.pts_to x v0 /\
;               (fun _ -> OPLSS2021.ParNDSDiv.pts_to x v) ==
;               (OPLSS2021.ParNDSDiv.Mkaction (OPLSS2021.ParNDSDiv.pts_to x v0)
;                   (fun _ -> OPLSS2021.ParNDSDiv.pts_to x v)
;                   (fun frame h0 -> (| (), OPLSS2021.ParNDSDiv.upd x v0 v h0 |)))
;                 .post))


; Context: While encoding a query
; While typechecking the top-level declaration `let op_Colon_Equals`

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
(FStar.Ghost.erased @x0))
(HasType @x2
(OPLSS2021.ParNDSDiv.ref @x0))
(HasType @x3
@x0))

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post (OPLSS2021.ParNDSDiv.m OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x2
@x3))))

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x6 Term))
 (! (implies (or label_1
(HasType @x6
(OPLSS2021.ParNDSDiv.m OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x2
@x3))))

;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(ApplyTT @x5
@x6)
)
)
 

:pattern (
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(ApplyTT @x5
@x6)
)
)
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__r OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)))
(HasType @x7
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x2
@x1
@x6)))

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(456,8-456,17)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(386,10-387,26); use=OPLSS2021.ParNDSDiv.fst(456,8-456,17)
(implies 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(456,8-456,17)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(386,11-386,40); use=OPLSS2021.ParNDSDiv.fst(456,8-456,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x6))
@x7)
)


;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(456,8-456,17)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(387,11-387,25); use=OPLSS2021.ParNDSDiv.fst(456,8-456,17)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x7)
)
)
)

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ParNDSDiv.fst(457,8-457,14)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.unit)

;; def=OPLSS2021.ParNDSDiv.fst(421,10-424,55); use=OPLSS2021.ParNDSDiv.fst(457,8-457,14)
(implies 
;; def=OPLSS2021.ParNDSDiv.fst(421,11-421,52); use=OPLSS2021.ParNDSDiv.fst(457,8-457,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(421,11-421,52); use=OPLSS2021.ParNDSDiv.fst(457,8-457,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x6))
@x7)
)


;; def=OPLSS2021.ParNDSDiv.fst(424,12-424,53); use=OPLSS2021.ParNDSDiv.fst(457,8-457,14)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(424,12-424,53); use=OPLSS2021.ParNDSDiv.fst(457,8-457,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
@x3))
@x6))
(OPLSS2021.ParNDSDiv.upd @x0
@x2
@x1
@x3
@x7))
)
)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ParNDSDiv.fst(456,8-458,31)
(and (implies 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(458,26-458,28)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(79,14-79,44); use=OPLSS2021.ParNDSDiv.fst(458,26-458,28)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x6))
@x7)
)


;; def=OPLSS2021.ParNDSDiv.fst(415,49-415,74); use=OPLSS2021.ParNDSDiv.fst(458,26-458,28)
(or label_2

;; def=OPLSS2021.ParNDSDiv.fst(415,49-415,74); use=OPLSS2021.ParNDSDiv.fst(458,26-458,28)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(415,49-415,74); use=OPLSS2021.ParNDSDiv.fst(458,26-458,28)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
@x7)
)
)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(456,8-458,31)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(Tm_refine_c97cb32426b9d692eac4a9b3357c73f5 @x0
@x2
@x1
@x6))

;; def=OPLSS2021.ParNDSDiv.fst(415,42-455,25); use=OPLSS2021.ParNDSDiv.fst(456,8-458,31)
(= @x7
@x10)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(456,8-458,31)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
OPLSS2021.ParNDSDiv.heap)

;; def=Prims.fst(504,29-504,33); use=OPLSS2021.ParNDSDiv.fst(458,8-458,31)
(= (OPLSS2021.ParNDSDiv.upd @x0
@x2
@x1
@x3
@x7)
@x11)
)

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(458,15-458,28)
(or label_3

;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(458,15-458,28)
(Valid 
;; def=OPLSS2021.ParNDSDiv.fst(80,21-80,56); use=OPLSS2021.ParNDSDiv.fst(458,15-458,28)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__interp@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ParNDSDiv.__proj__Mkcomm_monoid__item__star@tok
OPLSS2021.ParNDSDiv.heap)
(OPLSS2021.ParNDSDiv.hm Dummy_value))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
@x3))
@x6))
(OPLSS2021.ParNDSDiv.upd @x0
@x2
@x1
@x3
@x7))
)
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
 
;;no pats
:qid @query.5))
)
 
;;no pats
:qid @query.4))


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Tm_arrow_37a843f43348db31fde28472dd4bb116 @x3
@x1
@x2
@x0))

;; def=OPLSS2021.ParNDSDiv.fst(78,3-458,31); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(= (Tm_abs_d1cccd847c18272b34f26be5a179c33d @x3
@x1
@x2
@x0)
@x6)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ParNDSDiv.fst(450,24-460,15)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(OPLSS2021.ParNDSDiv.action OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit))

;; def=OPLSS2021.ParNDSDiv.fst(451,8-458,32); use=OPLSS2021.ParNDSDiv.fst(451,8-458,32)
(= (OPLSS2021.ParNDSDiv.Mkaction OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x2
@x3)
(Tm_abs_d1cccd847c18272b34f26be5a179c33d @x3
@x1
@x2
@x0))
@x7)
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ParNDSDiv.fst(460,4-460,15)
(and 
;; def=OPLSS2021.ParNDSDiv.fst(97,105-449,24); use=OPLSS2021.ParNDSDiv.fst(460,4-460,15)
(or label_4

;; def=OPLSS2021.ParNDSDiv.fst(97,105-449,24); use=OPLSS2021.ParNDSDiv.fst(460,4-460,15)
(= (OPLSS2021.ParNDSDiv.__proj__Mkaction__item__pre OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.Mkaction OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x2
@x3)
(Tm_abs_d1cccd847c18272b34f26be5a179c33d @x3
@x1
@x2
@x0)))
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1)))
)


;; def=OPLSS2021.ParNDSDiv.fst(97,80-449,45); use=OPLSS2021.ParNDSDiv.fst(460,4-460,15)
(or label_5

;; def=OPLSS2021.ParNDSDiv.fst(97,80-449,45); use=OPLSS2021.ParNDSDiv.fst(460,4-460,15)
(= (Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x2
@x3)
(OPLSS2021.ParNDSDiv.__proj__Mkaction__item__post OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.Mkaction OPLSS2021.ParNDSDiv.heap
(OPLSS2021.ParNDSDiv.hm Dummy_value)
Prims.unit
(OPLSS2021.ParNDSDiv.pts_to @x0
@x2
(FStar.Ghost.reveal @x0
@x1))
(Tm_abs_d7913a40ed5f14bb48bed78db404dfad @x0
@x2
@x3)
(Tm_abs_d1cccd847c18272b34f26be5a179c33d @x3
@x1
@x2
@x0))))
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
; QUERY ID: (OPLSS2021.ParNDSDiv.op_Colon_Equals, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_f8666440faa91836cc5a13998af863fc, equation_OPLSS2021.ParNDSDiv.hm, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_post, proj_equation_OPLSS2021.ParNDSDiv.Mkaction_pre, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_post, projection_inverse_OPLSS2021.ParNDSDiv.Mkaction_pre, refinement_interpretation_Tm_refine_c97cb32426b9d692eac4a9b3357c73f5, unit_typing
