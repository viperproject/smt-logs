
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


; Externals for module FStar.Mul


; <Start encoding let op_Star>

(declare-fun FStar.Mul.op_Star (Term Term) Term)

(declare-fun FStar.Mul.op_Star@tok () Term)

; </end encoding let op_Star>


; End Externals for module FStar.Mul


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


; Externals for module OPLSS2021.Vale


; <Skipped #set-options "--warn_error -290"/>


; <Start encoding let pow2_64>

(declare-fun OPLSS2021.Vale.pow2_64 (Dummy_sort) Term)

; </end encoding let pow2_64>


; <Start encoding let nat64>

(declare-fun OPLSS2021.Vale.nat64 () Term)
(declare-fun Tm_refine_c5c5dd75ebebb1f25581102c583fe79e () Term)

; </end encoding let nat64>


; <Start encoding type OPLSS2021.Vale.reg>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.reg () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Rax () Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Rax
(declare-fun OPLSS2021.Vale.Rax@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Rbx () Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Rbx
(declare-fun OPLSS2021.Vale.Rbx@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Rcx () Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Rcx
(declare-fun OPLSS2021.Vale.Rcx@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Rdx () Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Rdx
(declare-fun OPLSS2021.Vale.Rdx@tok () Term)

; <start constructor OPLSS2021.Vale.reg>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.reg ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
102)
(= __@x0
OPLSS2021.Vale.reg)))

; </end constructor OPLSS2021.Vale.reg>


; <start constructor OPLSS2021.Vale.Rax>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Rax ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
108)
(= __@x0
OPLSS2021.Vale.Rax)))

; </end constructor OPLSS2021.Vale.Rax>


; <start constructor OPLSS2021.Vale.Rbx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Rbx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
110)
(= __@x0
OPLSS2021.Vale.Rbx)))

; </end constructor OPLSS2021.Vale.Rbx>


; <start constructor OPLSS2021.Vale.Rcx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Rcx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
112)
(= __@x0
OPLSS2021.Vale.Rcx)))

; </end constructor OPLSS2021.Vale.Rcx>


; <start constructor OPLSS2021.Vale.Rdx>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Rdx ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
114)
(= __@x0
OPLSS2021.Vale.Rdx)))

; </end constructor OPLSS2021.Vale.Rdx>


; </end encoding type OPLSS2021.Vale.reg>


; <Start encoding assume OPLSS2021.Vale.reg__uu___haseq>


; </end encoding assume OPLSS2021.Vale.reg__uu___haseq>


; <Start encoding val OPLSS2021.Vale.uu___is_Rax>

(declare-fun OPLSS2021.Vale.uu___is_Rax (Term) Term)
;;;;;;;;;;;;;;;;projectee: reg -> Prims.bool
(declare-fun Tm_arrow_65d668fc68be3b3b7186db88e6688f2d () Term)
(declare-fun OPLSS2021.Vale.uu___is_Rax@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Rax>


; <Skipped let uu___is_Rax/>


; <Start encoding val OPLSS2021.Vale.uu___is_Rbx>

(declare-fun OPLSS2021.Vale.uu___is_Rbx (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_Rbx@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Rbx>


; <Skipped let uu___is_Rbx/>


; <Start encoding val OPLSS2021.Vale.uu___is_Rcx>

(declare-fun OPLSS2021.Vale.uu___is_Rcx (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_Rcx@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Rcx>


; <Skipped let uu___is_Rcx/>


; <Start encoding val OPLSS2021.Vale.uu___is_Rdx>

(declare-fun OPLSS2021.Vale.uu___is_Rdx (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_Rdx@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Rdx>


; <Skipped let uu___is_Rdx/>


; <Start encoding type OPLSS2021.Vale.operand>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.operand () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.OReg (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.OReg_r (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.OReg
(declare-fun OPLSS2021.Vale.OReg@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.OConst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.OConst_n (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.OConst
(declare-fun OPLSS2021.Vale.OConst@tok () Term)
;;;;;;;;;;;;;;;;r: reg -> operand
(declare-fun Tm_arrow_dfdc310c79655480fc384c02a878eaab () Term)
;;;;;;;;;;;;;;;;n: nat64 -> operand
(declare-fun Tm_arrow_afe1b5cdfa6c5c24630024e414939d80 () Term)

; <start constructor OPLSS2021.Vale.operand>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.operand ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
123)
(= __@x0
OPLSS2021.Vale.operand)))

; </end constructor OPLSS2021.Vale.operand>


; <start constructor OPLSS2021.Vale.OReg>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.OReg ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
129)
(= __@x0
(OPLSS2021.Vale.OReg (OPLSS2021.Vale.OReg_r __@x0)))))

; </end constructor OPLSS2021.Vale.OReg>


; <start constructor OPLSS2021.Vale.OConst>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.OConst ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
134)
(= __@x0
(OPLSS2021.Vale.OConst (OPLSS2021.Vale.OConst_n __@x0)))))

; </end constructor OPLSS2021.Vale.OConst>


; </end encoding type OPLSS2021.Vale.operand>


; <Start encoding assume OPLSS2021.Vale.operand__uu___haseq>


; </end encoding assume OPLSS2021.Vale.operand__uu___haseq>


; <Start encoding val OPLSS2021.Vale.uu___is_OReg>

(declare-fun OPLSS2021.Vale.uu___is_OReg (Term) Term)
;;;;;;;;;;;;;;;;projectee: operand -> Prims.bool
(declare-fun Tm_arrow_d7bc1957004bcac53a49f1ecfbddc1ad () Term)
(declare-fun OPLSS2021.Vale.uu___is_OReg@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_OReg>


; <Skipped let uu___is_OReg/>


; <Start encoding val OPLSS2021.Vale.__proj__OReg__item__r>

(declare-fun Tm_refine_767b1c02b1152eda22dfc5f487f5bd48 () Term)
(declare-fun OPLSS2021.Vale.__proj__OReg__item__r (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: operand{OReg? _} -> reg
(declare-fun Tm_arrow_04a702107a95598cb0989136dfb216f0 () Term)
(declare-fun OPLSS2021.Vale.__proj__OReg__item__r@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__OReg__item__r>


; <Skipped let __proj__OReg__item__r/>


; <Start encoding val OPLSS2021.Vale.uu___is_OConst>

(declare-fun OPLSS2021.Vale.uu___is_OConst (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_OConst@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_OConst>


; <Skipped let uu___is_OConst/>


; <Start encoding val OPLSS2021.Vale.__proj__OConst__item__n>

(declare-fun Tm_refine_31435c1220821636b1b8215c6864737e () Term)
(declare-fun OPLSS2021.Vale.__proj__OConst__item__n (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: operand{OConst? _} -> nat64
(declare-fun Tm_arrow_51a511a46889052d4e722ccd693f8723 () Term)
(declare-fun OPLSS2021.Vale.__proj__OConst__item__n@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__OConst__item__n>


; <Skipped let __proj__OConst__item__n/>


; <Start encoding type OPLSS2021.Vale.ins>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.ins () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Mov64 (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.Mov64_dst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.Mov64_src (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Mov64
(declare-fun OPLSS2021.Vale.Mov64@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Add64 (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.Add64_dst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.Add64_src (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Add64
(declare-fun OPLSS2021.Vale.Add64@tok () Term)
;;;;;;;;;;;;;;;;dst: operand -> src: operand -> ins
(declare-fun Tm_arrow_3100970c886ccb799665d8a32e083dc5 () Term)


; <start constructor OPLSS2021.Vale.ins>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.ins ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
150)
(= __@x0
OPLSS2021.Vale.ins)))

; </end constructor OPLSS2021.Vale.ins>


; <start constructor OPLSS2021.Vale.Mov64>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Mov64 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
156)
(= __@x0
(OPLSS2021.Vale.Mov64 (OPLSS2021.Vale.Mov64_dst __@x0)
(OPLSS2021.Vale.Mov64_src __@x0)))))

; </end constructor OPLSS2021.Vale.Mov64>


; <start constructor OPLSS2021.Vale.Add64>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Add64 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
161)
(= __@x0
(OPLSS2021.Vale.Add64 (OPLSS2021.Vale.Add64_dst __@x0)
(OPLSS2021.Vale.Add64_src __@x0)))))

; </end constructor OPLSS2021.Vale.Add64>


; </end encoding type OPLSS2021.Vale.ins>


; <Start encoding assume OPLSS2021.Vale.ins__uu___haseq>


; </end encoding assume OPLSS2021.Vale.ins__uu___haseq>


; <Start encoding val OPLSS2021.Vale.uu___is_Mov64>

(declare-fun OPLSS2021.Vale.uu___is_Mov64 (Term) Term)
;;;;;;;;;;;;;;;;projectee: ins -> Prims.bool
(declare-fun Tm_arrow_63f64154a187bde921fd72cef4955d4d () Term)
(declare-fun OPLSS2021.Vale.uu___is_Mov64@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Mov64>


; <Skipped let uu___is_Mov64/>


; <Start encoding val OPLSS2021.Vale.__proj__Mov64__item__dst>

(declare-fun Tm_refine_1e014b3f2009124f1e9820298621d9cd () Term)
(declare-fun OPLSS2021.Vale.__proj__Mov64__item__dst (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ins{Mov64? _} -> operand
(declare-fun Tm_arrow_c33c2df0988a84d09f8a538c2e4e4381 () Term)
(declare-fun OPLSS2021.Vale.__proj__Mov64__item__dst@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__Mov64__item__dst>


; <Skipped let __proj__Mov64__item__dst/>


; <Start encoding val OPLSS2021.Vale.__proj__Mov64__item__src>


(declare-fun OPLSS2021.Vale.__proj__Mov64__item__src (Term) Term)


(declare-fun OPLSS2021.Vale.__proj__Mov64__item__src@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__Mov64__item__src>


; <Skipped let __proj__Mov64__item__src/>


; <Start encoding val OPLSS2021.Vale.uu___is_Add64>

(declare-fun OPLSS2021.Vale.uu___is_Add64 (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_Add64@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Add64>


; <Skipped let uu___is_Add64/>


; <Start encoding val OPLSS2021.Vale.__proj__Add64__item__dst>

(declare-fun Tm_refine_55376096b1a989ae6a21c8f8034f5071 () Term)
(declare-fun OPLSS2021.Vale.__proj__Add64__item__dst (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ins{Add64? _} -> operand
(declare-fun Tm_arrow_3410a91a60adab7a3584980f287ddb5e () Term)
(declare-fun OPLSS2021.Vale.__proj__Add64__item__dst@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__Add64__item__dst>


; <Skipped let __proj__Add64__item__dst/>


; <Start encoding val OPLSS2021.Vale.__proj__Add64__item__src>


(declare-fun OPLSS2021.Vale.__proj__Add64__item__src (Term) Term)


(declare-fun OPLSS2021.Vale.__proj__Add64__item__src@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__Add64__item__src>


; <Skipped let __proj__Add64__item__src/>


; <Start encoding type OPLSS2021.Vale.code>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.code () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Ins (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.Ins_ins (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Ins
(declare-fun OPLSS2021.Vale.Ins@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.Block (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.Block_block (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.Block
(declare-fun OPLSS2021.Vale.Block@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.Vale.WhileLessThan (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.WhileLessThan_src1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.WhileLessThan_src2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.Vale.WhileLessThan_whileBody (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.Vale.WhileLessThan
(declare-fun OPLSS2021.Vale.WhileLessThan@tok () Term)
;;;;;;;;;;;;;;;;ins: ins -> code
(declare-fun Tm_arrow_1054db6045d045aa5eae84a594062b82 () Term)
;;;;;;;;;;;;;;;;block: Prims.list code -> code
(declare-fun Tm_arrow_a9cd4298a31bc8f31540618b7b20b06d () Term)
;;;;;;;;;;;;;;;;src1: operand -> src2: operand -> whileBody: code -> code
(declare-fun Tm_arrow_45dc11093715f9c363557dc9efeb7125 () Term)

; <start constructor OPLSS2021.Vale.code>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.code ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
185)
(= __@x0
OPLSS2021.Vale.code)))

; </end constructor OPLSS2021.Vale.code>


; <start constructor OPLSS2021.Vale.Ins>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Ins ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
191)
(= __@x0
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Ins_ins __@x0)))))

; </end constructor OPLSS2021.Vale.Ins>


; <start constructor OPLSS2021.Vale.Block>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.Block ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
196)
(= __@x0
(OPLSS2021.Vale.Block (OPLSS2021.Vale.Block_block __@x0)))))

; </end constructor OPLSS2021.Vale.Block>


; <start constructor OPLSS2021.Vale.WhileLessThan>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.Vale.WhileLessThan ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
201)
(= __@x0
(OPLSS2021.Vale.WhileLessThan (OPLSS2021.Vale.WhileLessThan_src1 __@x0)
(OPLSS2021.Vale.WhileLessThan_src2 __@x0)
(OPLSS2021.Vale.WhileLessThan_whileBody __@x0)))))

; </end constructor OPLSS2021.Vale.WhileLessThan>


; </end encoding type OPLSS2021.Vale.code>


; <Start encoding assume OPLSS2021.Vale.code__uu___haseq>


; </end encoding assume OPLSS2021.Vale.code__uu___haseq>


; <Start encoding val OPLSS2021.Vale.uu___is_Ins>

(declare-fun OPLSS2021.Vale.uu___is_Ins (Term) Term)
;;;;;;;;;;;;;;;;projectee: code -> Prims.bool
(declare-fun Tm_arrow_377899d8fd105003674f397535f6a0f0 () Term)
(declare-fun OPLSS2021.Vale.uu___is_Ins@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Ins>


; <Skipped let uu___is_Ins/>


; <Start encoding val OPLSS2021.Vale.__proj__Ins__item__ins>

(declare-fun Tm_refine_7e365516ac35fda7226aed28c5e84ab2 () Term)
(declare-fun OPLSS2021.Vale.__proj__Ins__item__ins (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: code{Ins? _} -> ins
(declare-fun Tm_arrow_48e52eb182fc736a1c6e0b7ae1a641e7 () Term)
(declare-fun OPLSS2021.Vale.__proj__Ins__item__ins@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__Ins__item__ins>


; <Skipped let __proj__Ins__item__ins/>


; <Start encoding val OPLSS2021.Vale.uu___is_Block>

(declare-fun OPLSS2021.Vale.uu___is_Block (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_Block@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_Block>


; <Skipped let uu___is_Block/>


; <Start encoding val OPLSS2021.Vale.__proj__Block__item__block>

(declare-fun Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d () Term)
(declare-fun OPLSS2021.Vale.__proj__Block__item__block (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: code{Block? _} -> Prims.list code
(declare-fun Tm_arrow_f5307ab0660c5ec7813df5a57c7ea986 () Term)
(declare-fun OPLSS2021.Vale.__proj__Block__item__block@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__Block__item__block>


; <Skipped let __proj__Block__item__block/>


; <Start encoding val OPLSS2021.Vale.uu___is_WhileLessThan>

(declare-fun OPLSS2021.Vale.uu___is_WhileLessThan (Term) Term)

(declare-fun OPLSS2021.Vale.uu___is_WhileLessThan@tok () Term)

; </end encoding val OPLSS2021.Vale.uu___is_WhileLessThan>


; <Skipped let uu___is_WhileLessThan/>


; <Start encoding val OPLSS2021.Vale.__proj__WhileLessThan__item__src1>

(declare-fun Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534 () Term)
(declare-fun OPLSS2021.Vale.__proj__WhileLessThan__item__src1 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: code{WhileLessThan? _} -> operand
(declare-fun Tm_arrow_560b05b5053e26871e0488b726f096dd () Term)
(declare-fun OPLSS2021.Vale.__proj__WhileLessThan__item__src1@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__WhileLessThan__item__src1>


; <Skipped let __proj__WhileLessThan__item__src1/>


; <Start encoding val OPLSS2021.Vale.__proj__WhileLessThan__item__src2>


(declare-fun OPLSS2021.Vale.__proj__WhileLessThan__item__src2 (Term) Term)


(declare-fun OPLSS2021.Vale.__proj__WhileLessThan__item__src2@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__WhileLessThan__item__src2>


; <Skipped let __proj__WhileLessThan__item__src2/>


; <Start encoding val OPLSS2021.Vale.__proj__WhileLessThan__item__whileBody>


(declare-fun OPLSS2021.Vale.__proj__WhileLessThan__item__whileBody (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: code{WhileLessThan? _} -> code
(declare-fun Tm_arrow_5f2c31bc6f1ef5e0228381f65ba50c1e () Term)
(declare-fun OPLSS2021.Vale.__proj__WhileLessThan__item__whileBody@tok () Term)

; </end encoding val OPLSS2021.Vale.__proj__WhileLessThan__item__whileBody>


; <Skipped let __proj__WhileLessThan__item__whileBody/>


; <Start encoding let state>

(declare-fun OPLSS2021.Vale.state () Term)
;;;;;;;;;;;;;;;;_: reg -> nat64
(declare-fun Tm_arrow_da5b174febdf6335edfee518c5804755 () Term)

; </end encoding let state>


; <Start encoding let fuel>

(declare-fun OPLSS2021.Vale.fuel () Term)

; </end encoding let fuel>


; <Start encoding let eval_operand>

(declare-fun OPLSS2021.Vale.eval_operand (Term Term) Term)
;;;;;;;;;;;;;;;;o: operand -> s: state -> nat64
(declare-fun Tm_arrow_f44475e3120e469d96d29d6dddb64264 () Term)
(declare-fun OPLSS2021.Vale.eval_operand@tok () Term)

; </end encoding let eval_operand>


; <Start encoding let update_reg>

(declare-fun OPLSS2021.Vale.update_reg (Term Term Term) Term)
;;;;;;;;;;;;;;;;s: state -> r: reg -> v: nat64 -> state
(declare-fun Tm_arrow_182267b519e7a6aad7f532d16affc8c6 () Term)
(declare-fun OPLSS2021.Vale.update_reg@tok () Term)

(declare-fun Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63 (Term Term Term) Term)

; </end encoding let update_reg>


; <Start encoding let update_state>

(declare-fun OPLSS2021.Vale.update_state (Term Term Term) Term)
;;;;;;;;;;;;;;;;r: reg -> s': state -> s: state -> state
(declare-fun Tm_arrow_da3fe3c32d3414d809f0e008d8351b19 () Term)
(declare-fun OPLSS2021.Vale.update_state@tok () Term)

; </end encoding let update_state>


; <Start encoding val OPLSS2021.Vale.unknown_state>

(declare-fun OPLSS2021.Vale.unknown_state (Term) Term)
;;;;;;;;;;;;;;;;s: state -> state
(declare-fun Tm_arrow_d3ed798666ec9dd202beb67fcf8ecb58 () Term)
(declare-fun OPLSS2021.Vale.unknown_state@tok () Term)

; </end encoding val OPLSS2021.Vale.unknown_state>


; <Start encoding let eval_ins>

(declare-fun OPLSS2021.Vale.eval_ins (Term Term) Term)
;;;;;;;;;;;;;;;;ins: ins -> s: state -> state
(declare-fun Tm_arrow_4dc8fcba85649dc81c2299e3b81a72b1 () Term)
(declare-fun OPLSS2021.Vale.eval_ins@tok () Term)

; </end encoding let eval_ins>


; <Start encoding let rec eval_code and eval_codes>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun OPLSS2021.Vale.eval_codes.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun OPLSS2021.Vale.eval_codes.fuel_instrumented_token () Term)
;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun OPLSS2021.Vale.eval_code.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun OPLSS2021.Vale.eval_code.fuel_instrumented_token () Term)
(declare-fun OPLSS2021.Vale.eval_code (Term Term Term) Term)
(declare-fun OPLSS2021.Vale.eval_code@tok () Term)
(declare-fun OPLSS2021.Vale.eval_codes (Term Term Term) Term)
(declare-fun OPLSS2021.Vale.eval_codes@tok () Term)
;;;;;;;;;;;;;;;;c: code -> f: fuel -> s: state -> FStar.Pervasives.Native.option state
(declare-fun Tm_arrow_5425a67bcf4510911a49a697361a4198 () Term)
;;;;;;;;;;;;;;;;cs: Prims.list code -> f: fuel -> s: state -> FStar.Pervasives.Native.option state
(declare-fun Tm_arrow_ce31a8f0d99e81353009bd0cefe8d79c () Term)

; </end encoding let rec eval_code and eval_codes>


; <Start encoding let rec increase_fuel and increase_fuels>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.Vale.increase_fuel (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.Vale.increase_fuel@tok () Term)
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun OPLSS2021.Vale.increase_fuels (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun OPLSS2021.Vale.increase_fuels@tok () Term)

; </end encoding let rec increase_fuel and increase_fuels>


; <Start encoding let lemma_merge>

(declare-fun OPLSS2021.Vale.lemma_merge (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_refine_1e8487533475bca4281b9d3e55f640ad (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;c: code -> cs: Prims.list code -> s0: state -> f0: fuel -> sM: state -> fM: fuel -> sN: state   -> Prims.Pure fuel
(declare-fun Tm_arrow_6720e01940bc6d481dd835d1ce00ee47 () Term)
(declare-fun OPLSS2021.Vale.lemma_merge@tok () Term)


; </end encoding let lemma_merge>


; <Start encoding let lemma_Move>

(declare-fun OPLSS2021.Vale.lemma_Move (Term Term Term) Term)
(declare-fun Tm_refine_b50803dd6ebf6f5e503071af576e8122 (Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: state -> dst: operand -> src: operand -> Prims.Pure (state & fuel)
(declare-fun Tm_arrow_326931608ebb4d326c5795a8991388ee () Term)
(declare-fun OPLSS2021.Vale.lemma_Move@tok () Term)


; </end encoding let lemma_Move>


; <Start encoding let lemma_Add>

(declare-fun OPLSS2021.Vale.lemma_Add (Term Term Term) Term)
(declare-fun Tm_refine_ceebf2ea184c3d02014760209dba017e (Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: state -> dst: operand -> src: operand -> Prims.Pure (state & fuel)
(declare-fun Tm_arrow_1ed3cabbca8c5c6bdc5c80e790212548 () Term)
(declare-fun OPLSS2021.Vale.lemma_Add@tok () Term)


; </end encoding let lemma_Add>


; <Start encoding let codes_Triple>

(declare-fun OPLSS2021.Vale.codes_Triple (Dummy_sort) Term)

; </end encoding let codes_Triple>


; <Start encoding let lemma_Triple>

(declare-fun OPLSS2021.Vale.lemma_Triple (Term) Term)
;;;;;;;;;;;;;;;;_: reg -> Type
(declare-fun Tm_arrow_c80cde31f6be451645261b07f2e46a70 () Term)
(declare-fun Tm_abs_25286b0e73883168f2c2ebd191323c31 () Term)
(declare-fun Tm_refine_6497554bc06e936bf1f2f1db5e9128d8 (Term) Term)
;;;;;;;;;;;;;;;;s0: state -> Prims.Pure (state & fuel)
(declare-fun Tm_arrow_2d1c7342db2be23d08ee56b73cf68df4 () Term)
(declare-fun OPLSS2021.Vale.lemma_Triple@tok () Term)




; </end encoding let lemma_Triple>


; End Externals for module OPLSS2021.Vale

(push) ;; push{1

; Internals for OPLSS2021.ValeVC


; encoding sigelt let qattr


; <Start encoding let qattr>

(declare-fun OPLSS2021.ValeVC.qattr (Dummy_sort) Term)

; </end encoding let qattr>


; encoding sigelt let t_post


; <Start encoding let t_post>

(declare-fun OPLSS2021.ValeVC.t_post () Term)
;;;;;;;;;;;;;;;;_: OPLSS2021.Vale.state -> Prims.prop
(declare-fun Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867 () Term)

; </end encoding let t_post>


; encoding sigelt let t_pre


; <Start encoding let t_pre>

(declare-fun OPLSS2021.ValeVC.t_pre () Term)


; </end encoding let t_pre>


; encoding sigelt let t_wp


; <Start encoding let t_wp>

(declare-fun OPLSS2021.ValeVC.t_wp () Term)
;;;;;;;;;;;;;;;;_: t_post -> t_pre
(declare-fun Tm_arrow_f56388514c053dcee106dea108fb77e1 () Term)

; </end encoding let t_wp>


; encoding sigelt let has_wp


; <Start encoding let has_wp>

(declare-fun OPLSS2021.ValeVC.has_wp (Term Term) Term)
;;;;;;;;;;;;;;;;c: OPLSS2021.Vale.code -> wp: t_wp -> Type
(declare-fun Tm_arrow_edfffd12c023b05332e0ca4270924412 () Term)
(declare-fun OPLSS2021.ValeVC.has_wp@tok () Term)
(declare-fun Tm_refine_332ddca170a7a425236fbda2bd857919 (Term Term Term) Term)
;;;;;;;;;;;;;;;;k: t_post -> s0: OPLSS2021.Vale.state -> Prims.Pure (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
(declare-fun Tm_arrow_88bfaa860df36b17e65d0d6c1439330b (Term Term) Term)

; </end encoding let has_wp>


; encoding sigelt let t_lemma


; <Start encoding let t_lemma>

(declare-fun OPLSS2021.ValeVC.t_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;pre: Prims.prop -> post: Prims.prop -> Type
(declare-fun Tm_arrow_dafb34c752fe372509f12ed34b99e8e6 () Term)
(declare-fun OPLSS2021.ValeVC.t_lemma@tok () Term)
(declare-fun Tm_refine_39824678e6bd7420a9de93968d793b3b (Term Term) Term)
;;;;;;;;;;;;;;;;_: Prims.unit -> FStar.Pervasives.Lemma (requires pre) (ensures post)
(declare-fun Tm_arrow_a733618074c9a8728deadbd23cb7b8bb (Term Term) Term)

; </end encoding let t_lemma>


; encoding sigelt type OPLSS2021.ValeVC.with_wp


; <Start encoding type OPLSS2021.ValeVC.with_wp>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ValeVC.with_wp (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun OPLSS2021.ValeVC.with_wp@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ValeVC.QProc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QProc_c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QProc_wp (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QProc_hasWp (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ValeVC.QProc
(declare-fun OPLSS2021.ValeVC.QProc@tok () Term)
;;;;;;;;;;;;;;;;c: OPLSS2021.Vale.code -> wp: t_wp -> hasWp: has_wp c wp -> with_wp c
(declare-fun Tm_arrow_95849c954998859b38e177132b92c1f8 () Term)

; <start constructor OPLSS2021.ValeVC.with_wp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ValeVC.with_wp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
120)
(exists ((@x0 Term))
 (! (= __@x0
(OPLSS2021.ValeVC.with_wp @x0))
 
;;no pats
:qid is-OPLSS2021.ValeVC.with_wp))))

; </end constructor OPLSS2021.ValeVC.with_wp>


; <start constructor OPLSS2021.ValeVC.QProc>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ValeVC.QProc ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
127)
(= __@x0
(OPLSS2021.ValeVC.QProc (OPLSS2021.ValeVC.QProc_c __@x0)
(OPLSS2021.ValeVC.QProc_wp __@x0)
(OPLSS2021.ValeVC.QProc_hasWp __@x0)))))

; </end constructor OPLSS2021.ValeVC.QProc>


; </end encoding type OPLSS2021.ValeVC.with_wp>


; encoding sigelt val OPLSS2021.ValeVC.uu___is_QProc


; <Start encoding val OPLSS2021.ValeVC.uu___is_QProc>

(declare-fun OPLSS2021.ValeVC.uu___is_QProc (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: with_wp _ -> Prims.bool
(declare-fun Tm_arrow_68aec75b88753ef3b149145759367440 () Term)
(declare-fun OPLSS2021.ValeVC.uu___is_QProc@tok () Term)

; </end encoding val OPLSS2021.ValeVC.uu___is_QProc>


; encoding sigelt let uu___is_QProc


; <Skipped let uu___is_QProc/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QProc__item__c


; <Start encoding val OPLSS2021.ValeVC.__proj__QProc__item__c>

(declare-fun OPLSS2021.ValeVC.__proj__QProc__item__c (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: with_wp _ -> OPLSS2021.Vale.code
(declare-fun Tm_arrow_4a4ff1628d44c7f1709ffb6f9042612c () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QProc__item__c@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QProc__item__c>


; encoding sigelt let __proj__QProc__item__c


; <Skipped let __proj__QProc__item__c/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QProc__item__wp


; <Start encoding val OPLSS2021.ValeVC.__proj__QProc__item__wp>

(declare-fun OPLSS2021.ValeVC.__proj__QProc__item__wp (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: with_wp _ -> t_wp
(declare-fun Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152 () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QProc__item__wp@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QProc__item__wp>


; encoding sigelt let __proj__QProc__item__wp


; <Skipped let __proj__QProc__item__wp/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QProc__item__hasWp


; <Start encoding val OPLSS2021.ValeVC.__proj__QProc__item__hasWp>

(declare-fun OPLSS2021.ValeVC.__proj__QProc__item__hasWp (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: with_wp _ -> has_wp projectee.c projectee.wp
(declare-fun Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77 () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QProc__item__hasWp>

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
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.Rdx@tok
OPLSS2021.Vale.reg)
:named typing_tok_OPLSS2021.Vale.Rdx@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.Rcx@tok
OPLSS2021.Vale.reg)
:named typing_tok_OPLSS2021.Vale.Rcx@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.Rbx@tok
OPLSS2021.Vale.reg)
:named typing_tok_OPLSS2021.Vale.Rbx@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.Rax@tok
OPLSS2021.Vale.reg)
:named typing_tok_OPLSS2021.Vale.Rax@tok))
;;;;;;;;;;;;;;;;typing_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63
;;; Fact-ids: Name OPLSS2021.Vale.update_reg; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(81,12-81,38); use=OPLSS2021.Vale.fst(81,12-81,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63 @x0
@x1
@x2)
Tm_arrow_da5b174febdf6335edfee518c5804755)
 

:pattern ((Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63 @x0
@x1
@x2))
:qid typing_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63))

:named typing_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63))
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
;;; Fact-ids: Name OPLSS2021.ValeVC.t_wp; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.t_wp
Tm_type)
:named typing_OPLSS2021.ValeVC.t_wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.t_pre; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.t_pre
Tm_type)
:named typing_OPLSS2021.ValeVC.t_pre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.t_post; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.t_post
Tm_type)
:named typing_OPLSS2021.ValeVC.t_post))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(64,4-64,10); use=OPLSS2021.ValeVC.fst(64,4-64,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.code)
(HasType @x1
OPLSS2021.ValeVC.t_wp))
(HasType (OPLSS2021.ValeVC.has_wp @x0
@x1)
Tm_type))
 

:pattern ((OPLSS2021.ValeVC.has_wp @x0
@x1))
:qid typing_OPLSS2021.ValeVC.has_wp))

:named typing_OPLSS2021.ValeVC.has_wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__c; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,9-81,10); use=OPLSS2021.ValeVC.fst(81,9-81,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.code)
(HasType @x1
(OPLSS2021.ValeVC.with_wp @x0)))
(HasType (OPLSS2021.ValeVC.__proj__QProc__item__c @x0
@x1)
OPLSS2021.Vale.code))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__c @x0
@x1))
:qid typing_OPLSS2021.ValeVC.__proj__QProc__item__c))

:named typing_OPLSS2021.ValeVC.__proj__QProc__item__c))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.code)
(HasType (OPLSS2021.Vale.uu___is_WhileLessThan @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_WhileLessThan @x0))
:qid typing_OPLSS2021.Vale.uu___is_WhileLessThan))

:named typing_OPLSS2021.Vale.uu___is_WhileLessThan))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_OReg; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.operand)
(HasType (OPLSS2021.Vale.uu___is_OReg @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_OReg @x0))
:qid typing_OPLSS2021.Vale.uu___is_OReg))

:named typing_OPLSS2021.Vale.uu___is_OReg))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.operand)
(HasType (OPLSS2021.Vale.uu___is_OConst @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_OConst @x0))
:qid typing_OPLSS2021.Vale.uu___is_OConst))

:named typing_OPLSS2021.Vale.uu___is_OConst))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Mov64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.ins)
(HasType (OPLSS2021.Vale.uu___is_Mov64 @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_Mov64 @x0))
:qid typing_OPLSS2021.Vale.uu___is_Mov64))

:named typing_OPLSS2021.Vale.uu___is_Mov64))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Ins; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.code)
(HasType (OPLSS2021.Vale.uu___is_Ins @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_Ins @x0))
:qid typing_OPLSS2021.Vale.uu___is_Ins))

:named typing_OPLSS2021.Vale.uu___is_Ins))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Block; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.code)
(HasType (OPLSS2021.Vale.uu___is_Block @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_Block @x0))
:qid typing_OPLSS2021.Vale.uu___is_Block))

:named typing_OPLSS2021.Vale.uu___is_Block))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.ins)
(HasType (OPLSS2021.Vale.uu___is_Add64 @x0)
Prims.bool))
 

:pattern ((OPLSS2021.Vale.uu___is_Add64 @x0))
:qid typing_OPLSS2021.Vale.uu___is_Add64))

:named typing_OPLSS2021.Vale.uu___is_Add64))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.update_reg; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(80,4-80,14); use=OPLSS2021.Vale.fst(80,4-80,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.state)
(HasType @x1
OPLSS2021.Vale.reg)
(HasType @x2
OPLSS2021.Vale.nat64))
(HasType (OPLSS2021.Vale.update_reg @x0
@x1
@x2)
OPLSS2021.Vale.state))
 

:pattern ((OPLSS2021.Vale.update_reg @x0
@x1
@x2))
:qid typing_OPLSS2021.Vale.update_reg))

:named typing_OPLSS2021.Vale.update_reg))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.unknown_state; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(90,4-90,17); use=OPLSS2021.Vale.fst(90,4-90,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.state)
(HasType (OPLSS2021.Vale.unknown_state @x0)
OPLSS2021.Vale.state))
 

:pattern ((OPLSS2021.Vale.unknown_state @x0))
:qid typing_OPLSS2021.Vale.unknown_state))

:named typing_OPLSS2021.Vale.unknown_state))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.state; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.state
Tm_type)
:named typing_OPLSS2021.Vale.state))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.pow2_64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(33,4-33,11); use=OPLSS2021.Vale.fst(33,4-33,11)
(forall ((@u0 Dummy_sort))
 (! (HasType (OPLSS2021.Vale.pow2_64 @u0)
Prims.int)
 

:pattern ((OPLSS2021.Vale.pow2_64 @u0))
:qid typing_OPLSS2021.Vale.pow2_64))

:named typing_OPLSS2021.Vale.pow2_64))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.nat64; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.nat64
Tm_type)
:named typing_OPLSS2021.Vale.nat64))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.fuel; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.fuel
Tm_type)
:named typing_OPLSS2021.Vale.fuel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.eval_operand; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(73,4-73,16); use=OPLSS2021.Vale.fst(73,4-73,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.eval_operand @x0
@x1)
OPLSS2021.Vale.nat64))
 

:pattern ((OPLSS2021.Vale.eval_operand @x0
@x1))
:qid typing_OPLSS2021.Vale.eval_operand))

:named typing_OPLSS2021.Vale.eval_operand))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.eval_ins; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(98,4-98,12); use=OPLSS2021.Vale.fst(98,4-98,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.ins)
(HasType @x1
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.eval_ins @x0
@x1)
OPLSS2021.Vale.state))
 

:pattern ((OPLSS2021.Vale.eval_ins @x0
@x1))
:qid typing_OPLSS2021.Vale.eval_ins))

:named typing_OPLSS2021.Vale.eval_ins))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(115,8-115,17); use=OPLSS2021.Vale.fst(115,8-115,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.code)
(HasType @x1
OPLSS2021.Vale.fuel)
(HasType @x2
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.eval_code @x0
@x1
@x2)
(FStar.Pervasives.Native.option OPLSS2021.Vale.state)))
 

:pattern ((OPLSS2021.Vale.eval_code @x0
@x1
@x2))
:qid typing_OPLSS2021.Vale.eval_code))

:named typing_OPLSS2021.Vale.eval_code))
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
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,5-80,12); use=OPLSS2021.ValeVC.fst(80,5-80,12)
(forall ((@x0 Term))
 (! (= (ApplyTT OPLSS2021.ValeVC.with_wp@tok
@x0)
(OPLSS2021.ValeVC.with_wp @x0))
 

:pattern ((ApplyTT OPLSS2021.ValeVC.with_wp@tok
@x0))

:pattern ((OPLSS2021.ValeVC.with_wp @x0))
:qid token_correspondence_OPLSS2021.ValeVC.with_wp@tok))

:named token_correspondence_OPLSS2021.ValeVC.with_wp@tok))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(132,4-132,14); use=OPLSS2021.Vale.fst(132,4-132,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
OPLSS2021.Vale.fuel)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.eval_codes.fuel_instrumented @u0
@x1
@x2
@x3)
(FStar.Pervasives.Native.option OPLSS2021.Vale.state)))
 

:pattern ((OPLSS2021.Vale.eval_codes.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_OPLSS2021.Vale.eval_codes.fuel_instrumented))

:named token_correspondence_OPLSS2021.Vale.eval_codes.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(115,8-115,17); use=OPLSS2021.Vale.fst(115,8-115,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.code)
(HasType @x2
OPLSS2021.Vale.fuel)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.eval_code.fuel_instrumented @u0
@x1
@x2
@x3)
(FStar.Pervasives.Native.option OPLSS2021.Vale.state)))
 

:pattern ((OPLSS2021.Vale.eval_code.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_OPLSS2021.Vale.eval_code.fuel_instrumented))

:named token_correspondence_OPLSS2021.Vale.eval_code.fuel_instrumented))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)
(OPLSS2021.ValeVC.with_wp @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)
(OPLSS2021.ValeVC.with_wp @x4)))
:qid subterm_ordering_OPLSS2021.ValeVC.QProc))

:named subterm_ordering_OPLSS2021.ValeVC.QProc))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)
OPLSS2021.Vale.code)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)
OPLSS2021.Vale.code))
:qid subterm_ordering_OPLSS2021.Vale.WhileLessThan))

:named subterm_ordering_OPLSS2021.Vale.WhileLessThan))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OReg @x1)
OPLSS2021.Vale.operand)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.OReg @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OReg @x1)
OPLSS2021.Vale.operand))
:qid subterm_ordering_OPLSS2021.Vale.OReg))

:named subterm_ordering_OPLSS2021.Vale.OReg))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OConst @x1)
OPLSS2021.Vale.operand)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.OConst @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OConst @x1)
OPLSS2021.Vale.operand))
:qid subterm_ordering_OPLSS2021.Vale.OConst))

:named subterm_ordering_OPLSS2021.Vale.OConst))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Mov64 @x1
@x2)
OPLSS2021.Vale.ins)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.Mov64 @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.Vale.Mov64 @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Mov64 @x1
@x2)
OPLSS2021.Vale.ins))
:qid subterm_ordering_OPLSS2021.Vale.Mov64))

:named subterm_ordering_OPLSS2021.Vale.Mov64))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Ins @x1)
OPLSS2021.Vale.code)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.Ins @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Ins @x1)
OPLSS2021.Vale.code))
:qid subterm_ordering_OPLSS2021.Vale.Ins))

:named subterm_ordering_OPLSS2021.Vale.Ins))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Block @x1)
OPLSS2021.Vale.code)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.Block @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Block @x1)
OPLSS2021.Vale.code))
:qid subterm_ordering_OPLSS2021.Vale.Block))

:named subterm_ordering_OPLSS2021.Vale.Block))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Add64 @x1
@x2)
OPLSS2021.Vale.ins)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.Vale.Add64 @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.Vale.Add64 @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Add64 @x1
@x2)
OPLSS2021.Vale.ins))
:qid subterm_ordering_OPLSS2021.Vale.Add64))

:named subterm_ordering_OPLSS2021.Vale.Add64))
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
;;; Fact-ids: Name OPLSS2021.Vale.nat64; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_c5c5dd75ebebb1f25581102c583fe79e
Tm_type)
:named refinement_kinding_Tm_refine_c5c5dd75ebebb1f25581102c583fe79e))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Ins__item__ins; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_7e365516ac35fda7226aed28c5e84ab2
Tm_type)
:named refinement_kinding_Tm_refine_7e365516ac35fda7226aed28c5e84ab2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Tm_refine_774ba3f728d91ead8ef40be66c9802e5
Tm_type)
:named refinement_kinding_Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OReg__item__r; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_767b1c02b1152eda22dfc5f487f5bd48
Tm_type)
:named refinement_kinding_Tm_refine_767b1c02b1152eda22dfc5f487f5bd48))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Add64__item__dst; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_55376096b1a989ae6a21c8f8034f5071
Tm_type)
:named refinement_kinding_Tm_refine_55376096b1a989ae6a21c8f8034f5071))
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
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(67,7-67,21); use=OPLSS2021.ValeVC.fst(67,7-67,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_332ddca170a7a425236fbda2bd857919 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_332ddca170a7a425236fbda2bd857919 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_332ddca170a7a425236fbda2bd857919))

:named refinement_kinding_Tm_refine_332ddca170a7a425236fbda2bd857919))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OConst__item__n; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_31435c1220821636b1b8215c6864737e
Tm_type)
:named refinement_kinding_Tm_refine_31435c1220821636b1b8215c6864737e))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Block__item__block; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d
Tm_type)
:named refinement_kinding_Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Mov64__item__dst; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_1e014b3f2009124f1e9820298621d9cd
Tm_type)
:named refinement_kinding_Tm_refine_1e014b3f2009124f1e9820298621d9cd))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.__proj__WhileLessThan__item__src1; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534
Tm_type)
:named refinement_kinding_Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534))
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
;;; Fact-ids: Name OPLSS2021.Vale.nat64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(36,13-36,41); use=OPLSS2021.Vale.fst(36,13-36,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_c5c5dd75ebebb1f25581102c583fe79e)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=OPLSS2021.Vale.fst(36,19-36,25); use=OPLSS2021.Vale.fst(36,19-36,25)
(<= (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 @x1))


;; def=OPLSS2021.Vale.fst(36,29-36,40); use=OPLSS2021.Vale.fst(36,29-36,40)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_c5c5dd75ebebb1f25581102c583fe79e))
:qid refinement_interpretation_Tm_refine_c5c5dd75ebebb1f25581102c583fe79e))

:named refinement_interpretation_Tm_refine_c5c5dd75ebebb1f25581102c583fe79e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Ins__item__ins; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_7e365516ac35fda7226aed28c5e84ab2)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)

;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_Ins @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_7e365516ac35fda7226aed28c5e84ab2))
:qid refinement_interpretation_Tm_refine_7e365516ac35fda7226aed28c5e84ab2))

:named refinement_interpretation_Tm_refine_7e365516ac35fda7226aed28c5e84ab2))
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
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OReg__item__r; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_767b1c02b1152eda22dfc5f487f5bd48)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)

;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_767b1c02b1152eda22dfc5f487f5bd48))
:qid refinement_interpretation_Tm_refine_767b1c02b1152eda22dfc5f487f5bd48))

:named refinement_interpretation_Tm_refine_767b1c02b1152eda22dfc5f487f5bd48))
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
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Add64__item__dst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_55376096b1a989ae6a21c8f8034f5071)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.ins)

;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_Add64 @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_55376096b1a989ae6a21c8f8034f5071))
:qid refinement_interpretation_Tm_refine_55376096b1a989ae6a21c8f8034f5071))

:named refinement_interpretation_Tm_refine_55376096b1a989ae6a21c8f8034f5071))
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
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(67,7-67,21); use=OPLSS2021.ValeVC.fst(67,7-67,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_332ddca170a7a425236fbda2bd857919 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb5 @x1))

;; def=OPLSS2021.ValeVC.fst(70,6-71,10); use=OPLSS2021.ValeVC.fst(70,6-71,10)
(and 
;; def=OPLSS2021.ValeVC.fst(70,6-70,34); use=OPLSS2021.ValeVC.fst(70,6-70,34)
(= (OPLSS2021.Vale.eval_code @x2
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb5)))


;; def=OPLSS2021.ValeVC.fst(71,6-71,10); use=OPLSS2021.ValeVC.fst(71,6-71,10)
(Valid 
;; def=OPLSS2021.ValeVC.fst(71,6-71,10); use=OPLSS2021.ValeVC.fst(71,6-71,10)
(ApplyTT @x4
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
)
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_332ddca170a7a425236fbda2bd857919 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_332ddca170a7a425236fbda2bd857919))

:named refinement_interpretation_Tm_refine_332ddca170a7a425236fbda2bd857919))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OConst__item__n; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_31435c1220821636b1b8215c6864737e)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)

;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OConst @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_31435c1220821636b1b8215c6864737e))
:qid refinement_interpretation_Tm_refine_31435c1220821636b1b8215c6864737e))

:named refinement_interpretation_Tm_refine_31435c1220821636b1b8215c6864737e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Block__item__block; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)

;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_Block @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d))
:qid refinement_interpretation_Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d))

:named refinement_interpretation_Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Mov64__item__dst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_1e014b3f2009124f1e9820298621d9cd)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.ins)

;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_Mov64 @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_1e014b3f2009124f1e9820298621d9cd))
:qid refinement_interpretation_Tm_refine_1e014b3f2009124f1e9820298621d9cd))

:named refinement_interpretation_Tm_refine_1e014b3f2009124f1e9820298621d9cd))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.__proj__WhileLessThan__item__src1; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)

;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_WhileLessThan @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534))
:qid refinement_interpretation_Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534))

:named refinement_interpretation_Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534))
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.ValeVC.QProc_wp (OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
@x1)
 

:pattern ((OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
:qid projection_inverse_OPLSS2021.ValeVC.QProc_wp))

:named projection_inverse_OPLSS2021.ValeVC.QProc_wp))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.ValeVC.QProc_hasWp (OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
@x2)
 

:pattern ((OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
:qid projection_inverse_OPLSS2021.ValeVC.QProc_hasWp))

:named projection_inverse_OPLSS2021.ValeVC.QProc_hasWp))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.ValeVC.QProc_c (OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
@x0)
 

:pattern ((OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
:qid projection_inverse_OPLSS2021.ValeVC.QProc_c))

:named projection_inverse_OPLSS2021.ValeVC.QProc_c))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.WhileLessThan_whileBody (OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
@x2)
 

:pattern ((OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
:qid projection_inverse_OPLSS2021.Vale.WhileLessThan_whileBody))

:named projection_inverse_OPLSS2021.Vale.WhileLessThan_whileBody))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.WhileLessThan_src2 (OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
@x1)
 

:pattern ((OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
:qid projection_inverse_OPLSS2021.Vale.WhileLessThan_src2))

:named projection_inverse_OPLSS2021.Vale.WhileLessThan_src2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.WhileLessThan_src1 (OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
@x0)
 

:pattern ((OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
:qid projection_inverse_OPLSS2021.Vale.WhileLessThan_src1))

:named projection_inverse_OPLSS2021.Vale.WhileLessThan_src1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.OReg_r (OPLSS2021.Vale.OReg @x0))
@x0)
 

:pattern ((OPLSS2021.Vale.OReg @x0))
:qid projection_inverse_OPLSS2021.Vale.OReg_r))

:named projection_inverse_OPLSS2021.Vale.OReg_r))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.OConst_n (OPLSS2021.Vale.OConst @x0))
@x0)
 

:pattern ((OPLSS2021.Vale.OConst @x0))
:qid projection_inverse_OPLSS2021.Vale.OConst_n))

:named projection_inverse_OPLSS2021.Vale.OConst_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.Vale.Mov64_src (OPLSS2021.Vale.Mov64 @x0
@x1))
@x1)
 

:pattern ((OPLSS2021.Vale.Mov64 @x0
@x1))
:qid projection_inverse_OPLSS2021.Vale.Mov64_src))

:named projection_inverse_OPLSS2021.Vale.Mov64_src))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.Vale.Mov64_dst (OPLSS2021.Vale.Mov64 @x0
@x1))
@x0)
 

:pattern ((OPLSS2021.Vale.Mov64 @x0
@x1))
:qid projection_inverse_OPLSS2021.Vale.Mov64_dst))

:named projection_inverse_OPLSS2021.Vale.Mov64_dst))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.Ins_ins (OPLSS2021.Vale.Ins @x0))
@x0)
 

:pattern ((OPLSS2021.Vale.Ins @x0))
:qid projection_inverse_OPLSS2021.Vale.Ins_ins))

:named projection_inverse_OPLSS2021.Vale.Ins_ins))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.Block_block (OPLSS2021.Vale.Block @x0))
@x0)
 

:pattern ((OPLSS2021.Vale.Block @x0))
:qid projection_inverse_OPLSS2021.Vale.Block_block))

:named projection_inverse_OPLSS2021.Vale.Block_block))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.Vale.Add64_src (OPLSS2021.Vale.Add64 @x0
@x1))
@x1)
 

:pattern ((OPLSS2021.Vale.Add64 @x0
@x1))
:qid projection_inverse_OPLSS2021.Vale.Add64_src))

:named projection_inverse_OPLSS2021.Vale.Add64_src))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.Vale.Add64_dst (OPLSS2021.Vale.Add64 @x0
@x1))
@x0)
 

:pattern ((OPLSS2021.Vale.Add64 @x0
@x1))
:qid projection_inverse_OPLSS2021.Vale.Add64_dst))

:named projection_inverse_OPLSS2021.Vale.Add64_dst))
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
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__c; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,9-81,10); use=OPLSS2021.ValeVC.fst(81,9-81,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.__proj__QProc__item__c @x0
@x1)
(OPLSS2021.ValeVC.QProc_c @x1))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__c @x0
@x1))
:qid proj_equation_OPLSS2021.ValeVC.QProc_c))

:named proj_equation_OPLSS2021.ValeVC.QProc_c))
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
;;; Fact-ids: Name Prims.op_Modulus; Namespace Prims
(assert (! 
;; def=Prims.fst(697,4-697,14); use=Prims.fst(697,4-697,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (not (= (BoxInt_proj_0 @x1)
0))
(= (Prims.op_Modulus @x0
@x1)
(BoxInt (mod (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1)))))
 

:pattern ((Prims.op_Modulus @x0
@x1))
:qid primitive_Prims.op_Modulus))

:named primitive_Prims.op_Modulus))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! (is-Tm_arrow (PreType OPLSS2021.ValeVC.with_wp@tok))
:named pre_kinding_OPLSS2021.ValeVC.with_wp@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867
;;; Fact-ids: Name OPLSS2021.ValeVC.t_post; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867
Tm_type)
:named kinding_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f56388514c053dcee106dea108fb77e1
;;; Fact-ids: Name OPLSS2021.ValeVC.t_wp; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_f56388514c053dcee106dea108fb77e1
Tm_type)
:named kinding_Tm_arrow_f56388514c053dcee106dea108fb77e1))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_da5b174febdf6335edfee518c5804755
;;; Fact-ids: Name OPLSS2021.Vale.state; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_arrow_da5b174febdf6335edfee518c5804755
Tm_type)
:named kinding_Tm_arrow_da5b174febdf6335edfee518c5804755))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(65,4-67,21); use=OPLSS2021.ValeVC.fst(65,4-67,21)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b))

:named kinding_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b))
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
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! (and (IsTotFun OPLSS2021.ValeVC.with_wp@tok)

;; def=OPLSS2021.ValeVC.fst(80,5-80,12); use=OPLSS2021.ValeVC.fst(80,5-80,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
OPLSS2021.Vale.code)
(HasType (OPLSS2021.ValeVC.with_wp @x0)
Tm_type))
 

:pattern ((OPLSS2021.ValeVC.with_wp @x0))
:qid kinding_OPLSS2021.ValeVC.with_wp@tok))
)
:named kinding_OPLSS2021.ValeVC.with_wp@tok))
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.reg
Tm_type)
:named kinding_OPLSS2021.Vale.reg@tok))
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.operand
Tm_type)
:named kinding_OPLSS2021.Vale.operand@tok))
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.ins
Tm_type)
:named kinding_OPLSS2021.Vale.ins@tok))
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.code
Tm_type)
:named kinding_OPLSS2021.Vale.code@tok))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63
;;; Fact-ids: Name OPLSS2021.Vale.update_reg; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(81,12-81,38); use=OPLSS2021.Vale.fst(81,12-81,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63 @x1
@x2
@x3)
@x0)
(let ((@lb4 (Prims.op_Equality OPLSS2021.Vale.reg
@x3
@x0)))
(ite (= @lb4
(BoxBool true))
@x1
(ApplyTT @x2
@x0))))
 

:pattern ((ApplyTT (Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63 @x1
@x2
@x3)
@x0))
:qid interpretation_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63))

:named interpretation_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_c5c5dd75ebebb1f25581102c583fe79e
;;; Fact-ids: Name OPLSS2021.Vale.nat64; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_c5c5dd75ebebb1f25581102c583fe79e))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_c5c5dd75ebebb1f25581102c583fe79e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7e365516ac35fda7226aed28c5e84ab2
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Ins__item__ins; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_7e365516ac35fda7226aed28c5e84ab2))
(Valid (Prims.hasEq OPLSS2021.Vale.code)))
:named haseqTm_refine_7e365516ac35fda7226aed28c5e84ab2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_774ba3f728d91ead8ef40be66c9802e5
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_774ba3f728d91ead8ef40be66c9802e5))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_774ba3f728d91ead8ef40be66c9802e5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_767b1c02b1152eda22dfc5f487f5bd48
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OReg__item__r; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_767b1c02b1152eda22dfc5f487f5bd48))
(Valid (Prims.hasEq OPLSS2021.Vale.operand)))
:named haseqTm_refine_767b1c02b1152eda22dfc5f487f5bd48))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_55376096b1a989ae6a21c8f8034f5071
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Add64__item__dst; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_55376096b1a989ae6a21c8f8034f5071))
(Valid (Prims.hasEq OPLSS2021.Vale.ins)))
:named haseqTm_refine_55376096b1a989ae6a21c8f8034f5071))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_332ddca170a7a425236fbda2bd857919
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(67,7-67,21); use=OPLSS2021.ValeVC.fst(67,7-67,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_332ddca170a7a425236fbda2bd857919 @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_332ddca170a7a425236fbda2bd857919 @x0
@x1
@x2))))
:qid haseqTm_refine_332ddca170a7a425236fbda2bd857919))

:named haseqTm_refine_332ddca170a7a425236fbda2bd857919))
;;;;;;;;;;;;;;;;haseq for Tm_refine_31435c1220821636b1b8215c6864737e
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OConst__item__n; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_31435c1220821636b1b8215c6864737e))
(Valid (Prims.hasEq OPLSS2021.Vale.operand)))
:named haseqTm_refine_31435c1220821636b1b8215c6864737e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Block__item__block; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d))
(Valid (Prims.hasEq OPLSS2021.Vale.code)))
:named haseqTm_refine_2f37b752c25f2c8afc9b4f05a0d6d39d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1e014b3f2009124f1e9820298621d9cd
;;; Fact-ids: Name OPLSS2021.Vale.__proj__Mov64__item__dst; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_1e014b3f2009124f1e9820298621d9cd))
(Valid (Prims.hasEq OPLSS2021.Vale.ins)))
:named haseqTm_refine_1e014b3f2009124f1e9820298621d9cd))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534
;;; Fact-ids: Name OPLSS2021.Vale.__proj__WhileLessThan__item__src1; Namespace OPLSS2021.Vale
(assert (! (iff (Valid (Prims.hasEq Tm_refine_1ba7e4fd9b9638abb41d1df94e35f534))
(Valid (Prims.hasEq OPLSS2021.Vale.code)))
:named haseqTm_refine_1ba7e4fd9b9638abb41d1df94e35f534))
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
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named function_token_typing_Prims.prop))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.t_wp; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.t_wp
Tm_type)
:named function_token_typing_OPLSS2021.ValeVC.t_wp))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.t_pre; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.t_pre
Tm_type)
:named function_token_typing_OPLSS2021.ValeVC.t_pre))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.t_post; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.t_post
Tm_type)
:named function_token_typing_OPLSS2021.ValeVC.t_post))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.Vale.state; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.state
Tm_type)
:named function_token_typing_OPLSS2021.Vale.state))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.Vale.nat64; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.nat64
Tm_type)
:named function_token_typing_OPLSS2021.Vale.nat64))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.Vale.fuel; Namespace OPLSS2021.Vale
(assert (! (HasType OPLSS2021.Vale.fuel
Tm_type)
:named function_token_typing_OPLSS2021.Vale.fuel))
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
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,5-80,12); use=OPLSS2021.ValeVC.fst(80,5-80,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(OPLSS2021.ValeVC.with_wp @x2))
(and (is-OPLSS2021.ValeVC.QProc @x1)
(= @x2
(OPLSS2021.ValeVC.QProc_c @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(OPLSS2021.ValeVC.with_wp @x2)))
:qid fuel_guarded_inversion_OPLSS2021.ValeVC.with_wp))

:named fuel_guarded_inversion_OPLSS2021.ValeVC.with_wp))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(39,5-39,8); use=OPLSS2021.Vale.fst(39,5-39,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.reg)
(or (is-OPLSS2021.Vale.Rax @x1)
(is-OPLSS2021.Vale.Rbx @x1)
(is-OPLSS2021.Vale.Rcx @x1)
(is-OPLSS2021.Vale.Rdx @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.reg))
:qid fuel_guarded_inversion_OPLSS2021.Vale.reg))

:named fuel_guarded_inversion_OPLSS2021.Vale.reg))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(42,5-42,12); use=OPLSS2021.Vale.fst(42,5-42,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.operand)
(or (is-OPLSS2021.Vale.OReg @x1)
(is-OPLSS2021.Vale.OConst @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.operand))
:qid fuel_guarded_inversion_OPLSS2021.Vale.operand))

:named fuel_guarded_inversion_OPLSS2021.Vale.operand))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(48,5-48,8); use=OPLSS2021.Vale.fst(48,5-48,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.ins)
(or (is-OPLSS2021.Vale.Mov64 @x1)
(is-OPLSS2021.Vale.Add64 @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.ins))
:qid fuel_guarded_inversion_OPLSS2021.Vale.ins))

:named fuel_guarded_inversion_OPLSS2021.Vale.ins))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(56,5-56,9); use=OPLSS2021.Vale.fst(56,5-56,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.code)
(or (is-OPLSS2021.Vale.Ins @x1)
(is-OPLSS2021.Vale.Block @x1)
(is-OPLSS2021.Vale.WhileLessThan @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
OPLSS2021.Vale.code))
:qid fuel_guarded_inversion_OPLSS2021.Vale.code))

:named fuel_guarded_inversion_OPLSS2021.Vale.code))
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
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! (= 121
(Term_constr_id OPLSS2021.ValeVC.with_wp@tok))
:named fresh_token_OPLSS2021.ValeVC.with_wp@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (= 126
(Term_constr_id FStar.Pervasives.Native.tuple2@tok))
:named fresh_token_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.option; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.None; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Some; Namespace FStar.Pervasives.Native
(assert (! (= 102
(Term_constr_id FStar.Pervasives.Native.option@tok))
:named fresh_token_FStar.Pervasives.Native.option@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: OPLSS2021.Vale.eval_codes
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(132,4-132,14); use=OPLSS2021.Vale.fst(132,4-132,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
OPLSS2021.Vale.fuel)
(HasType @x3
OPLSS2021.Vale.state))
(= (OPLSS2021.Vale.eval_codes.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x1))
(ite (is-Prims.Nil @lb4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x3)
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (OPLSS2021.Vale.eval_code.fuel_instrumented @u0
(Prims.Cons_hd @lb4)
@x2
@x3)))
(ite (is-FStar.Pervasives.Native.None @lb5)
(FStar.Pervasives.Native.None OPLSS2021.Vale.state)
(ite (is-FStar.Pervasives.Native.Some @lb5)
(OPLSS2021.Vale.eval_codes.fuel_instrumented @u0
(Prims.Cons_tl @lb4)
@x2
(FStar.Pervasives.Native.Some_v @lb5))
Tm_unit)))
Tm_unit)))))
 :weight 0


:pattern ((OPLSS2021.Vale.eval_codes.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_OPLSS2021.Vale.eval_codes.fuel_instrumented))

:named equation_with_fuel_OPLSS2021.Vale.eval_codes.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: OPLSS2021.Vale.eval_code
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(115,8-115,17); use=OPLSS2021.Vale.fst(115,8-115,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.code)
(HasType @x2
OPLSS2021.Vale.fuel)
(HasType @x3
OPLSS2021.Vale.state))
(= (OPLSS2021.Vale.eval_code.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x1))
(ite (is-OPLSS2021.Vale.Ins @lb4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(OPLSS2021.Vale.eval_ins (OPLSS2021.Vale.Ins_ins @lb4)
@x3))
(ite (is-OPLSS2021.Vale.Block @lb4)
(OPLSS2021.Vale.eval_codes.fuel_instrumented @u0
(OPLSS2021.Vale.Block_block @lb4)
@x2
@x3)
(ite (is-OPLSS2021.Vale.WhileLessThan @lb4)
(let ((@lb5 (Prims.op_Equality Prims.int
@x2
(BoxInt 0))))
(ite (= @lb5
(BoxBool true))
(FStar.Pervasives.Native.None OPLSS2021.Vale.state)
(let ((@lb6 (Prims.op_LessThan (OPLSS2021.Vale.eval_operand (OPLSS2021.Vale.WhileLessThan_src1 @lb4)
@x3)
(OPLSS2021.Vale.eval_operand (OPLSS2021.Vale.WhileLessThan_src2 @lb4)
@x3))))
(ite (= @lb6
(BoxBool true))
(let ((@lb7 (OPLSS2021.Vale.eval_code.fuel_instrumented @u0
(OPLSS2021.Vale.WhileLessThan_whileBody @lb4)
@x2
@x3)))
(ite (is-FStar.Pervasives.Native.None @lb7)
(FStar.Pervasives.Native.None OPLSS2021.Vale.state)
(ite (is-FStar.Pervasives.Native.Some @lb7)
(OPLSS2021.Vale.eval_code.fuel_instrumented @u0
@x1
(Prims.op_Subtraction @x2
(BoxInt 1))
(FStar.Pervasives.Native.Some_v @lb7))
Tm_unit)))
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x3)))))
Tm_unit))))))
 :weight 0


:pattern ((OPLSS2021.Vale.eval_code.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_OPLSS2021.Vale.eval_code.fuel_instrumented))

:named equation_with_fuel_OPLSS2021.Vale.eval_code.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.t_wp
;;; Fact-ids: Name OPLSS2021.ValeVC.t_wp; Namespace OPLSS2021.ValeVC
(assert (! (= OPLSS2021.ValeVC.t_wp
Tm_arrow_f56388514c053dcee106dea108fb77e1)
:named equation_OPLSS2021.ValeVC.t_wp))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.t_pre
;;; Fact-ids: Name OPLSS2021.ValeVC.t_pre; Namespace OPLSS2021.ValeVC
(assert (! (= OPLSS2021.ValeVC.t_pre
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
:named equation_OPLSS2021.ValeVC.t_pre))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.t_post
;;; Fact-ids: Name OPLSS2021.ValeVC.t_post; Namespace OPLSS2021.ValeVC
(assert (! (= OPLSS2021.ValeVC.t_post
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
:named equation_OPLSS2021.ValeVC.t_post))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.has_wp
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(64,4-64,10); use=OPLSS2021.ValeVC.fst(64,4-64,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.has_wp @x0
@x1)
(Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x0
@x1))
 

:pattern ((OPLSS2021.ValeVC.has_wp @x0
@x1))
:qid equation_OPLSS2021.ValeVC.has_wp))

:named equation_OPLSS2021.ValeVC.has_wp))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.update_reg
;;; Fact-ids: Name OPLSS2021.Vale.update_reg; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(80,4-80,14); use=OPLSS2021.Vale.fst(80,4-80,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.update_reg @x0
@x1
@x2)
(Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63 @x2
@x0
@x1))
 

:pattern ((OPLSS2021.Vale.update_reg @x0
@x1
@x2))
:qid equation_OPLSS2021.Vale.update_reg))

:named equation_OPLSS2021.Vale.update_reg))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.state
;;; Fact-ids: Name OPLSS2021.Vale.state; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.state
Tm_arrow_da5b174febdf6335edfee518c5804755)
:named equation_OPLSS2021.Vale.state))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.pow2_64
;;; Fact-ids: Name OPLSS2021.Vale.pow2_64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(33,4-33,11); use=OPLSS2021.Vale.fst(33,4-33,11)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=OPLSS2021.Vale.fst(33,4-33,11); use=OPLSS2021.Vale.fst(33,4-33,11)
(OPLSS2021.Vale.pow2_64 @u0)

(BoxInt 18446744073709551616))
 

:pattern (
;; def=OPLSS2021.Vale.fst(33,4-33,11); use=OPLSS2021.Vale.fst(33,4-33,11)
(OPLSS2021.Vale.pow2_64 @u0)
)
:qid equation_OPLSS2021.Vale.pow2_64))

:named equation_OPLSS2021.Vale.pow2_64))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.nat64
;;; Fact-ids: Name OPLSS2021.Vale.nat64; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.nat64
Tm_refine_c5c5dd75ebebb1f25581102c583fe79e)
:named equation_OPLSS2021.Vale.nat64))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.fuel
;;; Fact-ids: Name OPLSS2021.Vale.fuel; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.fuel
Prims.nat)
:named equation_OPLSS2021.Vale.fuel))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.eval_operand
;;; Fact-ids: Name OPLSS2021.Vale.eval_operand; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(73,4-73,16); use=OPLSS2021.Vale.fst(73,4-73,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.Vale.eval_operand @x0
@x1)
(let ((@lb2 @x0))
(ite (is-OPLSS2021.Vale.OReg @lb2)
(ApplyTT @x1
(OPLSS2021.Vale.OReg_r @lb2))
(ite (is-OPLSS2021.Vale.OConst @lb2)
(OPLSS2021.Vale.OConst_n @lb2)
Tm_unit))))
 

:pattern ((OPLSS2021.Vale.eval_operand @x0
@x1))
:qid equation_OPLSS2021.Vale.eval_operand))

:named equation_OPLSS2021.Vale.eval_operand))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.eval_ins
;;; Fact-ids: Name OPLSS2021.Vale.eval_ins; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(98,4-98,12); use=OPLSS2021.Vale.fst(98,4-98,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.Vale.eval_ins @x0
@x1)
(let ((@lb2 @x0))
(ite (and (is-OPLSS2021.Vale.Mov64 @lb2)
(is-OPLSS2021.Vale.OConst (OPLSS2021.Vale.Mov64_dst @lb2)))
(OPLSS2021.Vale.unknown_state @x1)
(ite (and (is-OPLSS2021.Vale.Mov64 @lb2)
(is-OPLSS2021.Vale.OReg (OPLSS2021.Vale.Mov64_dst @lb2)))
(OPLSS2021.Vale.update_reg @x1
(OPLSS2021.Vale.OReg_r (OPLSS2021.Vale.Mov64_dst @lb2))
(OPLSS2021.Vale.eval_operand (OPLSS2021.Vale.Mov64_src @lb2)
@x1))
(ite (and (is-OPLSS2021.Vale.Add64 @lb2)
(is-OPLSS2021.Vale.OConst (OPLSS2021.Vale.Add64_dst @lb2)))
(OPLSS2021.Vale.unknown_state @x1)
(ite (and (is-OPLSS2021.Vale.Add64 @lb2)
(is-OPLSS2021.Vale.OReg (OPLSS2021.Vale.Add64_dst @lb2)))
(OPLSS2021.Vale.update_reg @x1
(OPLSS2021.Vale.OReg_r (OPLSS2021.Vale.Add64_dst @lb2))
(Prims.op_Modulus (Prims.op_Addition (ApplyTT @x1
(OPLSS2021.Vale.OReg_r (OPLSS2021.Vale.Add64_dst @lb2)))
(OPLSS2021.Vale.eval_operand (OPLSS2021.Vale.Add64_src @lb2)
@x1))
(BoxInt 18446744073709551616)))
Tm_unit))))))
 

:pattern ((OPLSS2021.Vale.eval_ins @x0
@x1))
:qid equation_OPLSS2021.Vale.eval_ins))

:named equation_OPLSS2021.Vale.eval_ins))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.Rdx@tok
OPLSS2021.Vale.Rdx)
:named equality_tok_OPLSS2021.Vale.Rdx@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.Rcx@tok
OPLSS2021.Vale.Rcx)
:named equality_tok_OPLSS2021.Vale.Rcx@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.Rbx@tok
OPLSS2021.Vale.Rbx)
:named equality_tok_OPLSS2021.Vale.Rbx@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= OPLSS2021.Vale.Rax@tok
OPLSS2021.Vale.Rax)
:named equality_tok_OPLSS2021.Vale.Rax@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_WhileLessThan @x0)
(BoxBool (is-OPLSS2021.Vale.WhileLessThan @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_WhileLessThan @x0))
:qid disc_equation_OPLSS2021.Vale.WhileLessThan))

:named disc_equation_OPLSS2021.Vale.WhileLessThan))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_OReg; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_OReg @x0)
(BoxBool (is-OPLSS2021.Vale.OReg @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_OReg @x0))
:qid disc_equation_OPLSS2021.Vale.OReg))

:named disc_equation_OPLSS2021.Vale.OReg))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_OConst @x0)
(BoxBool (is-OPLSS2021.Vale.OConst @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_OConst @x0))
:qid disc_equation_OPLSS2021.Vale.OConst))

:named disc_equation_OPLSS2021.Vale.OConst))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Mov64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_Mov64 @x0)
(BoxBool (is-OPLSS2021.Vale.Mov64 @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_Mov64 @x0))
:qid disc_equation_OPLSS2021.Vale.Mov64))

:named disc_equation_OPLSS2021.Vale.Mov64))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Ins; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_Ins @x0)
(BoxBool (is-OPLSS2021.Vale.Ins @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_Ins @x0))
:qid disc_equation_OPLSS2021.Vale.Ins))

:named disc_equation_OPLSS2021.Vale.Ins))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Block; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_Block @x0)
(BoxBool (is-OPLSS2021.Vale.Block @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_Block @x0))
:qid disc_equation_OPLSS2021.Vale.Block))

:named disc_equation_OPLSS2021.Vale.Block))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.Vale.uu___is_Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.uu___is_Add64 @x0)
(BoxBool (is-OPLSS2021.Vale.Add64 @x0)))
 

:pattern ((OPLSS2021.Vale.uu___is_Add64 @x0))
:qid disc_equation_OPLSS2021.Vale.Add64))

:named disc_equation_OPLSS2021.Vale.Add64))
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
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)
(HasTypeFuel @u0
@x2
OPLSS2021.ValeVC.t_wp)
(HasTypeFuel @u0
@x3
(OPLSS2021.ValeVC.has_wp @x1
@x2))
(= @x1
@x4))
(HasTypeFuel @u0
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)
(OPLSS2021.ValeVC.with_wp @x4)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)
(OPLSS2021.ValeVC.with_wp @x4)))
:qid data_typing_intro_OPLSS2021.ValeVC.QProc@tok))

:named data_typing_intro_OPLSS2021.ValeVC.QProc@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x2
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x3
OPLSS2021.Vale.code))
(HasTypeFuel @u0
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)
OPLSS2021.Vale.code))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)
OPLSS2021.Vale.code))
:qid data_typing_intro_OPLSS2021.Vale.WhileLessThan@tok))

:named data_typing_intro_OPLSS2021.Vale.WhileLessThan@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(39,31-39,34); use=OPLSS2021.Vale.fst(39,31-39,34)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
OPLSS2021.Vale.Rdx
OPLSS2021.Vale.reg)
 

:pattern ((HasTypeFuel @u0
OPLSS2021.Vale.Rdx
OPLSS2021.Vale.reg))
:qid data_typing_intro_OPLSS2021.Vale.Rdx@tok))

:named data_typing_intro_OPLSS2021.Vale.Rdx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(39,25-39,28); use=OPLSS2021.Vale.fst(39,25-39,28)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
OPLSS2021.Vale.Rcx
OPLSS2021.Vale.reg)
 

:pattern ((HasTypeFuel @u0
OPLSS2021.Vale.Rcx
OPLSS2021.Vale.reg))
:qid data_typing_intro_OPLSS2021.Vale.Rcx@tok))

:named data_typing_intro_OPLSS2021.Vale.Rcx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(39,19-39,22); use=OPLSS2021.Vale.fst(39,19-39,22)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
OPLSS2021.Vale.Rbx
OPLSS2021.Vale.reg)
 

:pattern ((HasTypeFuel @u0
OPLSS2021.Vale.Rbx
OPLSS2021.Vale.reg))
:qid data_typing_intro_OPLSS2021.Vale.Rbx@tok))

:named data_typing_intro_OPLSS2021.Vale.Rbx@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(39,13-39,16); use=OPLSS2021.Vale.fst(39,13-39,16)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
OPLSS2021.Vale.Rax
OPLSS2021.Vale.reg)
 

:pattern ((HasTypeFuel @u0
OPLSS2021.Vale.Rax
OPLSS2021.Vale.reg))
:qid data_typing_intro_OPLSS2021.Vale.Rax@tok))

:named data_typing_intro_OPLSS2021.Vale.Rax@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
OPLSS2021.Vale.reg)
(HasTypeFuel @u0
(OPLSS2021.Vale.OReg @x1)
OPLSS2021.Vale.operand))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.OReg @x1)
OPLSS2021.Vale.operand))
:qid data_typing_intro_OPLSS2021.Vale.OReg@tok))

:named data_typing_intro_OPLSS2021.Vale.OReg@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
OPLSS2021.Vale.nat64)
(HasTypeFuel @u0
(OPLSS2021.Vale.OConst @x1)
OPLSS2021.Vale.operand))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.OConst @x1)
OPLSS2021.Vale.operand))
:qid data_typing_intro_OPLSS2021.Vale.OConst@tok))

:named data_typing_intro_OPLSS2021.Vale.OConst@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x2
OPLSS2021.Vale.operand))
(HasTypeFuel @u0
(OPLSS2021.Vale.Mov64 @x1
@x2)
OPLSS2021.Vale.ins))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.Mov64 @x1
@x2)
OPLSS2021.Vale.ins))
:qid data_typing_intro_OPLSS2021.Vale.Mov64@tok))

:named data_typing_intro_OPLSS2021.Vale.Mov64@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
OPLSS2021.Vale.ins)
(HasTypeFuel @u0
(OPLSS2021.Vale.Ins @x1)
OPLSS2021.Vale.code))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.Ins @x1)
OPLSS2021.Vale.code))
:qid data_typing_intro_OPLSS2021.Vale.Ins@tok))

:named data_typing_intro_OPLSS2021.Vale.Ins@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Prims.list OPLSS2021.Vale.code))
(HasTypeFuel @u0
(OPLSS2021.Vale.Block @x1)
OPLSS2021.Vale.code))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.Block @x1)
OPLSS2021.Vale.code))
:qid data_typing_intro_OPLSS2021.Vale.Block@tok))

:named data_typing_intro_OPLSS2021.Vale.Block@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x2
OPLSS2021.Vale.operand))
(HasTypeFuel @u0
(OPLSS2021.Vale.Add64 @x1
@x2)
OPLSS2021.Vale.ins))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.Vale.Add64 @x1
@x2)
OPLSS2021.Vale.ins))
:qid data_typing_intro_OPLSS2021.Vale.Add64@tok))

:named data_typing_intro_OPLSS2021.Vale.Add64@tok))
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
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)
(OPLSS2021.ValeVC.with_wp @x4))
(and (= @x1
@x4)
(HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)
(HasTypeFuel @u0
@x2
OPLSS2021.ValeVC.t_wp)
(HasTypeFuel @u0
@x3
(OPLSS2021.ValeVC.has_wp @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QProc @x1
@x2
@x3)
(OPLSS2021.ValeVC.with_wp @x4)))
:qid data_elim_OPLSS2021.ValeVC.QProc))

:named data_elim_OPLSS2021.ValeVC.QProc))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)
OPLSS2021.Vale.code)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x2
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x3
OPLSS2021.Vale.code)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.WhileLessThan @x1
@x2
@x3)
OPLSS2021.Vale.code))
:qid data_elim_OPLSS2021.Vale.WhileLessThan))

:named data_elim_OPLSS2021.Vale.WhileLessThan))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OReg @x1)
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x1
OPLSS2021.Vale.reg))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OReg @x1)
OPLSS2021.Vale.operand))
:qid data_elim_OPLSS2021.Vale.OReg))

:named data_elim_OPLSS2021.Vale.OReg))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OConst @x1)
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x1
OPLSS2021.Vale.nat64))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.OConst @x1)
OPLSS2021.Vale.operand))
:qid data_elim_OPLSS2021.Vale.OConst))

:named data_elim_OPLSS2021.Vale.OConst))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Mov64 @x1
@x2)
OPLSS2021.Vale.ins)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x2
OPLSS2021.Vale.operand)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Mov64 @x1
@x2)
OPLSS2021.Vale.ins))
:qid data_elim_OPLSS2021.Vale.Mov64))

:named data_elim_OPLSS2021.Vale.Mov64))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Ins @x1)
OPLSS2021.Vale.code)
(HasTypeFuel @u0
@x1
OPLSS2021.Vale.ins))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Ins @x1)
OPLSS2021.Vale.code))
:qid data_elim_OPLSS2021.Vale.Ins))

:named data_elim_OPLSS2021.Vale.Ins))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Block @x1)
OPLSS2021.Vale.code)
(HasTypeFuel @u0
@x1
(Prims.list OPLSS2021.Vale.code)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Block @x1)
OPLSS2021.Vale.code))
:qid data_elim_OPLSS2021.Vale.Block))

:named data_elim_OPLSS2021.Vale.Block))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Add64 @x1
@x2)
OPLSS2021.Vale.ins)
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.operand)
(HasTypeFuel @u0
@x2
OPLSS2021.Vale.operand)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.Vale.Add64 @x1
@x2)
OPLSS2021.Vale.ins))
:qid data_elim_OPLSS2021.Vale.Add64))

:named data_elim_OPLSS2021.Vale.Add64))
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
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,5-80,12); use=OPLSS2021.ValeVC.fst(80,5-80,12)
(forall ((@x0 Term))
 (! (= 120
(Term_constr_id (OPLSS2021.ValeVC.with_wp @x0)))
 

:pattern ((OPLSS2021.ValeVC.with_wp @x0))
:qid constructor_distinct_OPLSS2021.ValeVC.with_wp))

:named constructor_distinct_OPLSS2021.ValeVC.with_wp))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 127
(Term_constr_id (OPLSS2021.ValeVC.QProc @x0
@x1
@x2)))
 

:pattern ((OPLSS2021.ValeVC.QProc @x0
@x1
@x2))
:qid constructor_distinct_OPLSS2021.ValeVC.QProc))

:named constructor_distinct_OPLSS2021.ValeVC.QProc))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= 102
(Term_constr_id OPLSS2021.Vale.reg))
:named constructor_distinct_OPLSS2021.Vale.reg))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! (= 123
(Term_constr_id OPLSS2021.Vale.operand))
:named constructor_distinct_OPLSS2021.Vale.operand))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! (= 150
(Term_constr_id OPLSS2021.Vale.ins))
:named constructor_distinct_OPLSS2021.Vale.ins))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! (= 185
(Term_constr_id OPLSS2021.Vale.code))
:named constructor_distinct_OPLSS2021.Vale.code))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(59,4-59,17); use=OPLSS2021.Vale.fst(59,4-59,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 201
(Term_constr_id (OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2)))
 

:pattern ((OPLSS2021.Vale.WhileLessThan @x0
@x1
@x2))
:qid constructor_distinct_OPLSS2021.Vale.WhileLessThan))

:named constructor_distinct_OPLSS2021.Vale.WhileLessThan))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= 114
(Term_constr_id OPLSS2021.Vale.Rdx))
:named constructor_distinct_OPLSS2021.Vale.Rdx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= 112
(Term_constr_id OPLSS2021.Vale.Rcx))
:named constructor_distinct_OPLSS2021.Vale.Rcx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= 110
(Term_constr_id OPLSS2021.Vale.Rbx))
:named constructor_distinct_OPLSS2021.Vale.Rbx))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! (= 108
(Term_constr_id OPLSS2021.Vale.Rax))
:named constructor_distinct_OPLSS2021.Vale.Rax))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.Vale.fst(43,4-43,8)
(forall ((@x0 Term))
 (! (= 129
(Term_constr_id (OPLSS2021.Vale.OReg @x0)))
 

:pattern ((OPLSS2021.Vale.OReg @x0))
:qid constructor_distinct_OPLSS2021.Vale.OReg))

:named constructor_distinct_OPLSS2021.Vale.OReg))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(44,4-44,10); use=OPLSS2021.Vale.fst(44,4-44,10)
(forall ((@x0 Term))
 (! (= 134
(Term_constr_id (OPLSS2021.Vale.OConst @x0)))
 

:pattern ((OPLSS2021.Vale.OConst @x0))
:qid constructor_distinct_OPLSS2021.Vale.OConst))

:named constructor_distinct_OPLSS2021.Vale.OConst))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(49,4-49,9); use=OPLSS2021.Vale.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 156
(Term_constr_id (OPLSS2021.Vale.Mov64 @x0
@x1)))
 

:pattern ((OPLSS2021.Vale.Mov64 @x0
@x1))
:qid constructor_distinct_OPLSS2021.Vale.Mov64))

:named constructor_distinct_OPLSS2021.Vale.Mov64))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(57,4-57,7); use=OPLSS2021.Vale.fst(57,4-57,7)
(forall ((@x0 Term))
 (! (= 191
(Term_constr_id (OPLSS2021.Vale.Ins @x0)))
 

:pattern ((OPLSS2021.Vale.Ins @x0))
:qid constructor_distinct_OPLSS2021.Vale.Ins))

:named constructor_distinct_OPLSS2021.Vale.Ins))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(58,4-58,9); use=OPLSS2021.Vale.fst(58,4-58,9)
(forall ((@x0 Term))
 (! (= 196
(Term_constr_id (OPLSS2021.Vale.Block @x0)))
 

:pattern ((OPLSS2021.Vale.Block @x0))
:qid constructor_distinct_OPLSS2021.Vale.Block))

:named constructor_distinct_OPLSS2021.Vale.Block))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(50,4-50,9); use=OPLSS2021.Vale.fst(50,4-50,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 161
(Term_constr_id (OPLSS2021.Vale.Add64 @x0
@x1)))
 

:pattern ((OPLSS2021.Vale.Add64 @x0
@x1))
:qid constructor_distinct_OPLSS2021.Vale.Add64))

:named constructor_distinct_OPLSS2021.Vale.Add64))
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
;;;;;;;;;;;;;;;;Assumption: OPLSS2021.Vale.reg__uu___haseq
;;; Fact-ids: Name OPLSS2021.Vale.reg__uu___haseq; Namespace OPLSS2021.Vale
(assert (! (Valid (Prims.hasEq OPLSS2021.Vale.reg))
:named assumption_OPLSS2021.Vale.reg__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: OPLSS2021.Vale.operand__uu___haseq
;;; Fact-ids: Name OPLSS2021.Vale.operand__uu___haseq; Namespace OPLSS2021.Vale
(assert (! (Valid (Prims.hasEq OPLSS2021.Vale.operand))
:named assumption_OPLSS2021.Vale.operand__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: OPLSS2021.Vale.ins__uu___haseq
;;; Fact-ids: Name OPLSS2021.Vale.ins__uu___haseq; Namespace OPLSS2021.Vale
(assert (! (Valid (Prims.hasEq OPLSS2021.Vale.ins))
:named assumption_OPLSS2021.Vale.ins__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: OPLSS2021.Vale.code__uu___haseq
;;; Fact-ids: Name OPLSS2021.Vale.code__uu___haseq; Namespace OPLSS2021.Vale
(assert (! (Valid (Prims.hasEq OPLSS2021.Vale.code))
:named assumption_OPLSS2021.Vale.code__uu___haseq))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.Vale.operand; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OReg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.OConst; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(42,5-42,12); use=OPLSS2021.Vale.fst(42,5-42,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
OPLSS2021.Vale.operand)
(= OPLSS2021.Vale.operand
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
OPLSS2021.Vale.operand))
:qid OPLSS2021.Vale_pretyping_cd1de02936f5cae9086fd0f2ab09835e))

:named OPLSS2021.Vale_pretyping_cd1de02936f5cae9086fd0f2ab09835e))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.Vale.code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Block; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.WhileLessThan; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(56,5-56,9); use=OPLSS2021.Vale.fst(56,5-56,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
OPLSS2021.Vale.code)
(= OPLSS2021.Vale.code
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
OPLSS2021.Vale.code))
:qid OPLSS2021.Vale_pretyping_9fa0b525568a247c7b6ceebcdc364564))

:named OPLSS2021.Vale_pretyping_9fa0b525568a247c7b6ceebcdc364564))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.Vale.reg; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rax; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rbx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rcx; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Rdx; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(39,5-39,8); use=OPLSS2021.Vale.fst(39,5-39,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
OPLSS2021.Vale.reg)
(= OPLSS2021.Vale.reg
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
OPLSS2021.Vale.reg))
:qid OPLSS2021.Vale_pretyping_38bfc0c987351cdd198f2fc697e674bf))

:named OPLSS2021.Vale_pretyping_38bfc0c987351cdd198f2fc697e674bf))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.Vale.ins; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Mov64; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.Add64; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(48,5-48,8); use=OPLSS2021.Vale.fst(48,5-48,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
OPLSS2021.Vale.ins)
(= OPLSS2021.Vale.ins
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
OPLSS2021.Vale.ins))
:qid OPLSS2021.Vale_pretyping_13b0f330cc4323a24e7063d3e335fb7e))

:named OPLSS2021.Vale_pretyping_13b0f330cc4323a24e7063d3e335fb7e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.Vale.state; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(63,13-63,25); use=OPLSS2021.Vale.fst(63,13-63,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_da5b174febdf6335edfee518c5804755)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_da5b174febdf6335edfee518c5804755))
:qid OPLSS2021.Vale_pre_typing_Tm_arrow_da5b174febdf6335edfee518c5804755))

:named OPLSS2021.Vale_pre_typing_Tm_arrow_da5b174febdf6335edfee518c5804755))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_da5b174febdf6335edfee518c5804755
;;; Fact-ids: Name OPLSS2021.Vale.state; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(63,13-63,25); use=OPLSS2021.Vale.fst(63,13-63,25)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_da5b174febdf6335edfee518c5804755)
(and 
;; def=OPLSS2021.Vale.fst(63,13-63,25); use=OPLSS2021.Vale.fst(63,13-63,25)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.reg)
(HasType (ApplyTT @x0
@x1)
OPLSS2021.Vale.nat64))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.Vale_interpretation_Tm_arrow_da5b174febdf6335edfee518c5804755.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_da5b174febdf6335edfee518c5804755))
:qid OPLSS2021.Vale_interpretation_Tm_arrow_da5b174febdf6335edfee518c5804755))

:named OPLSS2021.Vale_interpretation_Tm_arrow_da5b174febdf6335edfee518c5804755))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wp; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QProc; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,5-80,12); use=OPLSS2021.ValeVC.fst(80,5-80,12)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(OPLSS2021.ValeVC.with_wp @x2))
(= (OPLSS2021.ValeVC.with_wp @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(OPLSS2021.ValeVC.with_wp @x2)))
:qid OPLSS2021.ValeVC_pretyping_9e53d3695f8149545ffde9de44fa73c4))

:named OPLSS2021.ValeVC_pretyping_9e53d3695f8149545ffde9de44fa73c4))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.t_post; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(55,13-55,26); use=OPLSS2021.ValeVC.fst(55,13-55,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.t_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(61,11-61,26); use=OPLSS2021.ValeVC.fst(61,11-61,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_f56388514c053dcee106dea108fb77e1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_f56388514c053dcee106dea108fb77e1))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_f56388514c053dcee106dea108fb77e1))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_f56388514c053dcee106dea108fb77e1))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(65,4-67,21); use=OPLSS2021.ValeVC.fst(65,4-67,21)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x2
@x3)))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867
;;; Fact-ids: Name OPLSS2021.ValeVC.t_post; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(55,13-55,26); use=OPLSS2021.ValeVC.fst(55,13-55,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(and 
;; def=OPLSS2021.ValeVC.fst(55,13-55,26); use=OPLSS2021.ValeVC.fst(55,13-55,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.state)
(HasType (ApplyTT @x0
@x1)
Prims.prop))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f56388514c053dcee106dea108fb77e1
;;; Fact-ids: Name OPLSS2021.ValeVC.t_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(61,11-61,26); use=OPLSS2021.ValeVC.fst(61,11-61,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_f56388514c053dcee106dea108fb77e1)
(and 
;; def=OPLSS2021.ValeVC.fst(61,11-61,26); use=OPLSS2021.ValeVC.fst(61,11-61,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.ValeVC.t_post)
(HasType (ApplyTT @x0
@x1)
OPLSS2021.ValeVC.t_pre))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_f56388514c053dcee106dea108fb77e1.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_f56388514c053dcee106dea108fb77e1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_f56388514c053dcee106dea108fb77e1))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_f56388514c053dcee106dea108fb77e1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b
;;; Fact-ids: Name OPLSS2021.ValeVC.has_wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(65,4-67,21); use=OPLSS2021.ValeVC.fst(65,4-67,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x1
@x2))
(and 
;; def=OPLSS2021.ValeVC.fst(65,4-67,21); use=OPLSS2021.ValeVC.fst(65,4-67,21)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(68,14-68,21); use=OPLSS2021.ValeVC.fst(68,14-68,21)
(Valid 
;; def=OPLSS2021.ValeVC.fst(68,14-68,21); use=OPLSS2021.ValeVC.fst(68,14-68,21)
(ApplyTT (ApplyTT @x2
@x3)
@x4)
)

(HasType @x3
OPLSS2021.ValeVC.t_post)
(HasType @x4
OPLSS2021.Vale.state))
(HasType (ApplyTT (ApplyTT @x0
@x3)
@x4)
(Tm_refine_332ddca170a7a425236fbda2bd857919 @x1
@x4
@x3)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(65,4-67,21); use=OPLSS2021.ValeVC.fst(65,4-67,21)
(forall ((@x3 Term))
 (! (implies (HasType @x3
OPLSS2021.ValeVC.t_post)
(IsTotFun (ApplyTT @x0
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_88bfaa860df36b17e65d0d6c1439330b @x1
@x2)))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_88bfaa860df36b17e65d0d6c1439330b))
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
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(132,4-132,14); use=OPLSS2021.Vale.fst(132,4-132,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.Vale.eval_codes.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(OPLSS2021.Vale.eval_codes.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((OPLSS2021.Vale.eval_codes.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_OPLSS2021.Vale.eval_codes.fuel_instrumented))

:named @fuel_irrelevance_OPLSS2021.Vale.eval_codes.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(115,8-115,17); use=OPLSS2021.Vale.fst(115,8-115,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.Vale.eval_code.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(OPLSS2021.Vale.eval_code.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((OPLSS2021.Vale.eval_code.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_OPLSS2021.Vale.eval_code.fuel_instrumented))

:named @fuel_irrelevance_OPLSS2021.Vale.eval_code.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name OPLSS2021.Vale.eval_code; Namespace OPLSS2021.Vale; Name OPLSS2021.Vale.eval_codes; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(115,8-115,17); use=OPLSS2021.Vale.fst(115,8-115,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.eval_code @x0
@x1
@x2)
(OPLSS2021.Vale.eval_code.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((OPLSS2021.Vale.eval_code @x0
@x1
@x2))
:qid @fuel_correspondence_OPLSS2021.Vale.eval_code.fuel_instrumented))

:named @fuel_correspondence_OPLSS2021.Vale.eval_code.fuel_instrumented))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(81,30-81,35)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: OPLSS2021.Vale.code) (projectee: OPLSS2021.ValeVC.with_wp _).
;   (*  - Could not prove post-condition
; *)
;   forall (b: OPLSS2021.Vale.code) (b: OPLSS2021.ValeVC.t_wp) (b: OPLSS2021.ValeVC.has_wp b b).
;     projectee == OPLSS2021.ValeVC.QProc b b b ==>
;     b == _ /\
;     (forall (return_val: OPLSS2021.ValeVC.with_wp _).
;         return_val == OPLSS2021.ValeVC.QProc b b b ==>
;         (forall (any_result: OPLSS2021.Vale.code).
;             (OPLSS2021.ValeVC.QProc b b b).c == any_result ==> b == _))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QProc__item__hasWp`

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
OPLSS2021.Vale.code)
(HasType @x1
(OPLSS2021.ValeVC.with_wp @x0)))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x2 Term))
 (! (implies (HasType @x2
OPLSS2021.Vale.code)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x3 Term))
 (! (implies (HasType @x3
OPLSS2021.ValeVC.t_wp)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(OPLSS2021.ValeVC.has_wp @x2
@x3))

;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(= @x1
(OPLSS2021.ValeVC.QProc @x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(and 
;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(or label_1

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(= @x2
@x0)
)


;; def=Prims.fst(356,2-356,58); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ValeVC.with_wp @x0))

;; def=Prims.fst(356,26-356,41); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(= @x5
(OPLSS2021.ValeVC.QProc @x2
@x3
@x4))
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
OPLSS2021.Vale.code)

;; def=OPLSS2021.ValeVC.fst(64,12-81,7); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(= (OPLSS2021.ValeVC.__proj__QProc__item__c @x0
(OPLSS2021.ValeVC.QProc @x2
@x3
@x4))
@x6)
)

;; def=OPLSS2021.ValeVC.fst(81,2-81,7); use=OPLSS2021.ValeVC.fst(81,2-81,7)
(or label_2

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(= @x2
@x0)
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QProc__item__hasWp, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ValeVC.QProc

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QProc__item__hasWp


; <Skipped let __proj__QProc__item__hasWp/>


; encoding sigelt type OPLSS2021.ValeVC.with_wps


; <Start encoding type OPLSS2021.ValeVC.with_wps>

;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ValeVC.with_wps (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun OPLSS2021.ValeVC.with_wps@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ValeVC.QEmpty () Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ValeVC.QEmpty
(declare-fun OPLSS2021.ValeVC.QEmpty@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ValeVC.QSeq (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QSeq_c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QSeq_cs (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QSeq_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QSeq_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ValeVC.QSeq
(declare-fun OPLSS2021.ValeVC.QSeq@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun OPLSS2021.ValeVC.QLemma (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QLemma_cs (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QLemma_pre (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QLemma_post (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QLemma__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun OPLSS2021.ValeVC.QLemma__4 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: OPLSS2021.ValeVC.QLemma
(declare-fun OPLSS2021.ValeVC.QLemma@tok () Term)
;;;;;;;;;;;;;;;;hd: with_wp c -> tl: with_wps cs -> with_wps (c :: cs)
(declare-fun Tm_arrow_132f0f03ee8156ce89c3dc7df4279dbd () Term)
;;;;;;;;;;;;;;;;pre: Prims.prop -> post: Prims.prop -> _3: t_lemma pre post -> _4: with_wps cs -> with_wps cs
(declare-fun Tm_arrow_c6ab7ee0c88502eb6e3d1c56a0fe6a5e () Term)

; <start constructor OPLSS2021.ValeVC.with_wps>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ValeVC.with_wps ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
140)
(exists ((@x0 Term))
 (! (= __@x0
(OPLSS2021.ValeVC.with_wps @x0))
 
;;no pats
:qid is-OPLSS2021.ValeVC.with_wps))))

; </end constructor OPLSS2021.ValeVC.with_wps>


; <start constructor OPLSS2021.ValeVC.QEmpty>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ValeVC.QEmpty ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
147)
(= __@x0
OPLSS2021.ValeVC.QEmpty)))

; </end constructor OPLSS2021.ValeVC.QEmpty>


; <start constructor OPLSS2021.ValeVC.QSeq>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ValeVC.QSeq ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
150)
(= __@x0
(OPLSS2021.ValeVC.QSeq (OPLSS2021.ValeVC.QSeq_c __@x0)
(OPLSS2021.ValeVC.QSeq_cs __@x0)
(OPLSS2021.ValeVC.QSeq_hd __@x0)
(OPLSS2021.ValeVC.QSeq_tl __@x0)))))

; </end constructor OPLSS2021.ValeVC.QSeq>


; <start constructor OPLSS2021.ValeVC.QLemma>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-OPLSS2021.ValeVC.QLemma ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
156)
(= __@x0
(OPLSS2021.ValeVC.QLemma (OPLSS2021.ValeVC.QLemma_cs __@x0)
(OPLSS2021.ValeVC.QLemma_pre __@x0)
(OPLSS2021.ValeVC.QLemma_post __@x0)
(OPLSS2021.ValeVC.QLemma__3 __@x0)
(OPLSS2021.ValeVC.QLemma__4 __@x0)))))

; </end constructor OPLSS2021.ValeVC.QLemma>


; </end encoding type OPLSS2021.ValeVC.with_wps>


; encoding sigelt val OPLSS2021.ValeVC.uu___is_QEmpty


; <Start encoding val OPLSS2021.ValeVC.uu___is_QEmpty>

(declare-fun OPLSS2021.ValeVC.uu___is_QEmpty (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: with_wps _ -> Prims.bool
(declare-fun Tm_arrow_f3534ccdc0e12f2b11175456c2f56c2f () Term)
(declare-fun OPLSS2021.ValeVC.uu___is_QEmpty@tok () Term)

; </end encoding val OPLSS2021.ValeVC.uu___is_QEmpty>


; encoding sigelt let uu___is_QEmpty


; <Skipped let uu___is_QEmpty/>


; encoding sigelt val OPLSS2021.ValeVC.uu___is_QSeq


; <Start encoding val OPLSS2021.ValeVC.uu___is_QSeq>

(declare-fun OPLSS2021.ValeVC.uu___is_QSeq (Term Term) Term)

(declare-fun OPLSS2021.ValeVC.uu___is_QSeq@tok () Term)

; </end encoding val OPLSS2021.ValeVC.uu___is_QSeq>


; encoding sigelt let uu___is_QSeq


; <Skipped let uu___is_QSeq/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QSeq__item__c


; <Start encoding val OPLSS2021.ValeVC.__proj__QSeq__item__c>

(declare-fun Tm_refine_7188de91919c2e2cc9199174205a400e (Term) Term)
(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__c (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QSeq? _} -> OPLSS2021.Vale.code
(declare-fun Tm_arrow_6cb40549d6cd084901b7b1ef73123314 () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__c@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QSeq__item__c>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! (HasType OPLSS2021.ValeVC.QEmpty@tok
(OPLSS2021.ValeVC.with_wps (Prims.Nil OPLSS2021.Vale.code)))
:named typing_tok_OPLSS2021.ValeVC.QEmpty@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.uu___is_QSeq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0)))
(HasType (OPLSS2021.ValeVC.uu___is_QSeq @x0
@x1)
Prims.bool))
 

:pattern ((OPLSS2021.ValeVC.uu___is_QSeq @x0
@x1))
:qid typing_OPLSS2021.ValeVC.uu___is_QSeq))

:named typing_OPLSS2021.ValeVC.uu___is_QSeq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(74,4-74,11); use=OPLSS2021.ValeVC.fst(74,4-74,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.prop)
(HasType @x1
Prims.prop))
(HasType (OPLSS2021.ValeVC.t_lemma @x0
@x1)
Tm_type))
 

:pattern ((OPLSS2021.ValeVC.t_lemma @x0
@x1))
:qid typing_OPLSS2021.ValeVC.t_lemma))

:named typing_OPLSS2021.ValeVC.t_lemma))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(85,5-85,13); use=OPLSS2021.ValeVC.fst(85,5-85,13)
(forall ((@x0 Term))
 (! (= (ApplyTT OPLSS2021.ValeVC.with_wps@tok
@x0)
(OPLSS2021.ValeVC.with_wps @x0))
 

:pattern ((ApplyTT OPLSS2021.ValeVC.with_wps@tok
@x0))

:pattern ((OPLSS2021.ValeVC.with_wps @x0))
:qid token_correspondence_OPLSS2021.ValeVC.with_wps@tok))

:named token_correspondence_OPLSS2021.ValeVC.with_wps@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.with_wps @x5))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.with_wps @x5)))
:qid subterm_ordering_OPLSS2021.ValeVC.QSeq))

:named subterm_ordering_OPLSS2021.ValeVC.QSeq))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ValeVC.with_wps @x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ValeVC.with_wps @x6)))
:qid subterm_ordering_OPLSS2021.ValeVC.QLemma))

:named subterm_ordering_OPLSS2021.ValeVC.QLemma))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QSeq__item__c; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_7188de91919c2e2cc9199174205a400e @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_7188de91919c2e2cc9199174205a400e @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_7188de91919c2e2cc9199174205a400e))

:named refinement_kinding_Tm_refine_7188de91919c2e2cc9199174205a400e))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(75,10-75,45); use=OPLSS2021.ValeVC.fst(75,10-75,45)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_39824678e6bd7420a9de93968d793b3b @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_39824678e6bd7420a9de93968d793b3b @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_39824678e6bd7420a9de93968d793b3b))

:named refinement_kinding_Tm_refine_39824678e6bd7420a9de93968d793b3b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QSeq__item__c; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7188de91919c2e2cc9199174205a400e @x2))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7188de91919c2e2cc9199174205a400e @x2)))
:qid refinement_interpretation_Tm_refine_7188de91919c2e2cc9199174205a400e))

:named refinement_interpretation_Tm_refine_7188de91919c2e2cc9199174205a400e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(75,10-75,45); use=OPLSS2021.ValeVC.fst(75,10-75,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_39824678e6bd7420a9de93968d793b3b @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(635,71-635,97); use=OPLSS2021.ValeVC.fst(75,10-75,45)
(not 
;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(75,10-75,15)
(and 
;; def=OPLSS2021.ValeVC.fst(74,13-74,16); use=OPLSS2021.ValeVC.fst(75,26-75,29)
(Valid 
;; def=OPLSS2021.ValeVC.fst(74,13-74,16); use=OPLSS2021.ValeVC.fst(75,26-75,29)
@x2
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(75,10-75,15)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=OPLSS2021.ValeVC.fst(74,24-74,28); use=OPLSS2021.ValeVC.fst(75,40-75,44)
(Valid 
;; def=OPLSS2021.ValeVC.fst(74,24-74,28); use=OPLSS2021.ValeVC.fst(75,40-75,44)
@x3
)
)

;; def=Prims.fst(635,86-635,95); use=OPLSS2021.ValeVC.fst(75,10-75,45)
(not 
;; def=Prims.fst(635,86-635,95); use=OPLSS2021.ValeVC.fst(75,10-75,45)
(= @x4
@x1)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_39824678e6bd7420a9de93968d793b3b.1))
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_39824678e6bd7420a9de93968d793b3b @x2
@x3)))
:qid refinement_interpretation_Tm_refine_39824678e6bd7420a9de93968d793b3b))

:named refinement_interpretation_Tm_refine_39824678e6bd7420a9de93968d793b3b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.QSeq_tl (OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
:qid projection_inverse_OPLSS2021.ValeVC.QSeq_tl))

:named projection_inverse_OPLSS2021.ValeVC.QSeq_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.QSeq_hd (OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
:qid projection_inverse_OPLSS2021.ValeVC.QSeq_hd))

:named projection_inverse_OPLSS2021.ValeVC.QSeq_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.QSeq_cs (OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
:qid projection_inverse_OPLSS2021.ValeVC.QSeq_cs))

:named projection_inverse_OPLSS2021.ValeVC.QSeq_cs))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.QSeq_c (OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
:qid projection_inverse_OPLSS2021.ValeVC.QSeq_c))

:named projection_inverse_OPLSS2021.ValeVC.QSeq_c))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ValeVC.QLemma_pre (OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
@x1)
 

:pattern ((OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ValeVC.QLemma_pre))

:named projection_inverse_OPLSS2021.ValeVC.QLemma_pre))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ValeVC.QLemma_post (OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
@x2)
 

:pattern ((OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ValeVC.QLemma_post))

:named projection_inverse_OPLSS2021.ValeVC.QLemma_post))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ValeVC.QLemma_cs (OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
@x0)
 

:pattern ((OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ValeVC.QLemma_cs))

:named projection_inverse_OPLSS2021.ValeVC.QLemma_cs))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ValeVC.QLemma__4 (OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
@x4)
 

:pattern ((OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ValeVC.QLemma__4))

:named projection_inverse_OPLSS2021.ValeVC.QLemma__4))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ValeVC.QLemma__3 (OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
@x3)
 

:pattern ((OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_OPLSS2021.ValeVC.QLemma__3))

:named projection_inverse_OPLSS2021.ValeVC.QLemma__3))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! (is-Tm_arrow (PreType OPLSS2021.ValeVC.with_wps@tok))
:named pre_kinding_OPLSS2021.ValeVC.with_wps@tok))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(75,2-75,45); use=OPLSS2021.ValeVC.fst(75,2-75,45)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb))

:named kinding_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb))
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! (and (IsTotFun OPLSS2021.ValeVC.with_wps@tok)

;; def=OPLSS2021.ValeVC.fst(85,5-85,13); use=OPLSS2021.ValeVC.fst(85,5-85,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType (OPLSS2021.ValeVC.with_wps @x0)
Tm_type))
 

:pattern ((OPLSS2021.ValeVC.with_wps @x0))
:qid kinding_OPLSS2021.ValeVC.with_wps@tok))
)
:named kinding_OPLSS2021.ValeVC.with_wps@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7188de91919c2e2cc9199174205a400e
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QSeq__item__c; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7188de91919c2e2cc9199174205a400e @x0)))
(Valid (Prims.hasEq (OPLSS2021.ValeVC.with_wps @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7188de91919c2e2cc9199174205a400e @x0))))
:qid haseqTm_refine_7188de91919c2e2cc9199174205a400e))

:named haseqTm_refine_7188de91919c2e2cc9199174205a400e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_39824678e6bd7420a9de93968d793b3b
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(75,10-75,45); use=OPLSS2021.ValeVC.fst(75,10-75,45)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_39824678e6bd7420a9de93968d793b3b @x0
@x1)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_39824678e6bd7420a9de93968d793b3b @x0
@x1))))
:qid haseqTm_refine_39824678e6bd7420a9de93968d793b3b))

:named haseqTm_refine_39824678e6bd7420a9de93968d793b3b))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(85,5-85,13); use=OPLSS2021.ValeVC.fst(85,5-85,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(OPLSS2021.ValeVC.with_wps @x2))
(or (and (is-OPLSS2021.ValeVC.QEmpty @x1)
(= @x2
(Prims.Nil OPLSS2021.Vale.code)))
(and (is-OPLSS2021.ValeVC.QSeq @x1)
(= @x2
(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.ValeVC.QSeq_c @x1)
(OPLSS2021.ValeVC.QSeq_cs @x1))))
(and (is-OPLSS2021.ValeVC.QLemma @x1)
(= @x2
(OPLSS2021.ValeVC.QLemma_cs @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(OPLSS2021.ValeVC.with_wps @x2)))
:qid fuel_guarded_inversion_OPLSS2021.ValeVC.with_wps))

:named fuel_guarded_inversion_OPLSS2021.ValeVC.with_wps))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! (= 141
(Term_constr_id OPLSS2021.ValeVC.with_wps@tok))
:named fresh_token_OPLSS2021.ValeVC.with_wps@tok))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.t_lemma
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(74,4-74,11); use=OPLSS2021.ValeVC.fst(74,4-74,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.t_lemma @x0
@x1)
(Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x1
@x0))
 

:pattern ((OPLSS2021.ValeVC.t_lemma @x0
@x1))
:qid equation_OPLSS2021.ValeVC.t_lemma))

:named equation_OPLSS2021.ValeVC.t_lemma))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! (= OPLSS2021.ValeVC.QEmpty@tok
OPLSS2021.ValeVC.QEmpty)
:named equality_tok_OPLSS2021.ValeVC.QEmpty@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.ValeVC.uu___is_QSeq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.uu___is_QSeq @x0
@x1)
(BoxBool (is-OPLSS2021.ValeVC.QSeq @x1)))
 

:pattern ((OPLSS2021.ValeVC.uu___is_QSeq @x0
@x1))
:qid disc_equation_OPLSS2021.ValeVC.QSeq))

:named disc_equation_OPLSS2021.ValeVC.QSeq))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)
(HasTypeFuel @u0
@x2
(Prims.list OPLSS2021.Vale.code))
(HasTypeFuel @u0
@x3
(OPLSS2021.ValeVC.with_wp @x1))
(HasTypeFuel @u0
@x4
(OPLSS2021.ValeVC.with_wps @x2))
(= (Prims.Cons OPLSS2021.Vale.code
@x1
@x2)
@x5))
(HasTypeFuel @u0
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.with_wps @x5)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.with_wps @x5)))
:qid data_typing_intro_OPLSS2021.ValeVC.QSeq@tok))

:named data_typing_intro_OPLSS2021.ValeVC.QSeq@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Prims.list OPLSS2021.Vale.code))
(HasTypeFuel @u0
@x2
Prims.prop)
(HasTypeFuel @u0
@x3
Prims.prop)
(HasTypeFuel @u0
@x4
(OPLSS2021.ValeVC.t_lemma @x2
@x3))
(HasTypeFuel @u0
@x5
(OPLSS2021.ValeVC.with_wps @x1))
(= @x1
@x6))
(HasTypeFuel @u0
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ValeVC.with_wps @x6)))
 

:pattern ((HasTypeFuel @u0
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ValeVC.with_wps @x6)))
:qid data_typing_intro_OPLSS2021.ValeVC.QLemma@tok))

:named data_typing_intro_OPLSS2021.ValeVC.QLemma@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(86,2-86,8); use=OPLSS2021.ValeVC.fst(86,2-86,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (= (Prims.Nil OPLSS2021.Vale.code)
@x1)
(HasTypeFuel @u0
OPLSS2021.ValeVC.QEmpty
(OPLSS2021.ValeVC.with_wps @x1)))
 

:pattern ((HasTypeFuel @u0
OPLSS2021.ValeVC.QEmpty
(OPLSS2021.ValeVC.with_wps @x1)))
:qid data_typing_intro_OPLSS2021.ValeVC.QEmpty@tok))

:named data_typing_intro_OPLSS2021.ValeVC.QEmpty@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.with_wps @x5))
(and (= (Prims.Cons OPLSS2021.Vale.code
@x1
@x2)
@x5)
(HasTypeFuel @u0
@x1
OPLSS2021.Vale.code)
(HasTypeFuel @u0
@x2
(Prims.list OPLSS2021.Vale.code))
(HasTypeFuel @u0
@x3
(OPLSS2021.ValeVC.with_wp @x1))
(HasTypeFuel @u0
@x4
(OPLSS2021.ValeVC.with_wps @x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.with_wps @x5)))
:qid data_elim_OPLSS2021.ValeVC.QSeq))

:named data_elim_OPLSS2021.ValeVC.QSeq))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ValeVC.with_wps @x6))
(and (= @x1
@x6)
(HasTypeFuel @u0
@x1
(Prims.list OPLSS2021.Vale.code))
(HasTypeFuel @u0
@x2
Prims.prop)
(HasTypeFuel @u0
@x3
Prims.prop)
(HasTypeFuel @u0
@x4
(OPLSS2021.ValeVC.t_lemma @x2
@x3))
(HasTypeFuel @u0
@x5
(OPLSS2021.ValeVC.with_wps @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5)
(OPLSS2021.ValeVC.with_wps @x6)))
:qid data_elim_OPLSS2021.ValeVC.QLemma))

:named data_elim_OPLSS2021.ValeVC.QLemma))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(86,2-86,8); use=OPLSS2021.ValeVC.fst(86,2-86,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
OPLSS2021.ValeVC.QEmpty
(OPLSS2021.ValeVC.with_wps @x1))
(= (Prims.Nil OPLSS2021.Vale.code)
@x1))
 

:pattern ((HasTypeFuel (SFuel @u0)
OPLSS2021.ValeVC.QEmpty
(OPLSS2021.ValeVC.with_wps @x1)))
:qid data_elim_OPLSS2021.ValeVC.QEmpty))

:named data_elim_OPLSS2021.ValeVC.QEmpty))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(85,5-85,13); use=OPLSS2021.ValeVC.fst(85,5-85,13)
(forall ((@x0 Term))
 (! (= 140
(Term_constr_id (OPLSS2021.ValeVC.with_wps @x0)))
 

:pattern ((OPLSS2021.ValeVC.with_wps @x0))
:qid constructor_distinct_OPLSS2021.ValeVC.with_wps))

:named constructor_distinct_OPLSS2021.ValeVC.with_wps))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 150
(Term_constr_id (OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3)))
 

:pattern ((OPLSS2021.ValeVC.QSeq @x0
@x1
@x2
@x3))
:qid constructor_distinct_OPLSS2021.ValeVC.QSeq))

:named constructor_distinct_OPLSS2021.ValeVC.QSeq))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 156
(Term_constr_id (OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((OPLSS2021.ValeVC.QLemma @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_OPLSS2021.ValeVC.QLemma))

:named constructor_distinct_OPLSS2021.ValeVC.QLemma))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! (= 147
(Term_constr_id OPLSS2021.ValeVC.QEmpty))
:named constructor_distinct_OPLSS2021.ValeVC.QEmpty))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name OPLSS2021.ValeVC.with_wps; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QEmpty; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QSeq; Namespace OPLSS2021.ValeVC; Name OPLSS2021.ValeVC.QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(85,5-85,13); use=OPLSS2021.ValeVC.fst(85,5-85,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(OPLSS2021.ValeVC.with_wps @x2))
(= (OPLSS2021.ValeVC.with_wps @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(OPLSS2021.ValeVC.with_wps @x2)))
:qid OPLSS2021.ValeVC_pretyping_6c269814d09bd027c3ba0bff1b7d9303))

:named OPLSS2021.ValeVC_pretyping_6c269814d09bd027c3ba0bff1b7d9303))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(75,2-75,45); use=OPLSS2021.ValeVC.fst(75,2-75,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x2
@x3)))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb
;;; Fact-ids: Name OPLSS2021.ValeVC.t_lemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(75,2-75,45); use=OPLSS2021.ValeVC.fst(75,2-75,45)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x1
@x2))
(and 
;; def=OPLSS2021.ValeVC.fst(75,2-75,45); use=OPLSS2021.ValeVC.fst(75,2-75,45)
(forall ((@x3 Term))
 (! (implies (and 
;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(75,10-75,15)
(Valid 
;; def=OPLSS2021.ValeVC.fst(74,13-74,16); use=OPLSS2021.ValeVC.fst(75,26-75,29)
@x2
)

(HasType @x3
Prims.unit))
(HasType (ApplyTT @x0
@x3)
(Tm_refine_39824678e6bd7420a9de93968d793b3b @x2
@x1)))
 

:pattern ((ApplyTT @x0
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_a733618074c9a8728deadbd23cb7b8bb @x1
@x2)))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_a733618074c9a8728deadbd23cb7b8bb))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(90,4-90,5)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QSeq? _}).
;   (*  - Could not prove post-condition
; *) ~(QSeq? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QSeq__item__c`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_7188de91919c2e2cc9199174205a400e @x0))

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(90,4-90,5)
(not 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(90,4-90,5)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x0
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QSeq__item__c, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_7188de91919c2e2cc9199174205a400e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QSeq__item__c


; <Skipped let __proj__QSeq__item__c/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QSeq__item__cs


; <Start encoding val OPLSS2021.ValeVC.__proj__QSeq__item__cs>


(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__cs (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QSeq? _} -> Prims.list OPLSS2021.Vale.code
(declare-fun Tm_arrow_bc270abc3682d67a73ddcb1363a3ba95 () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__cs@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QSeq__item__cs>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(91,4-91,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QSeq? _}).
;   (*  - Could not prove post-condition
; *) ~(QSeq? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QSeq__item__cs`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_7188de91919c2e2cc9199174205a400e @x0))

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(91,4-91,6)
(not 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(91,4-91,6)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x0
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QSeq__item__cs, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_7188de91919c2e2cc9199174205a400e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QSeq__item__cs


; <Skipped let __proj__QSeq__item__cs/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QSeq__item__hd


; <Start encoding val OPLSS2021.ValeVC.__proj__QSeq__item__hd>


(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__hd (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QSeq? _} -> with_wp projectee.c
(declare-fun Tm_arrow_4a0100007ab4a84caa93856c00fe17fa () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__hd@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QSeq__item__hd>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(92,3-92,5)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QSeq? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(QSeq? projectee) ==> Prims.l_False) /\
;   (forall (b: OPLSS2021.Vale.code)
;       (b: Prims.list OPLSS2021.Vale.code)
;       (b: OPLSS2021.ValeVC.with_wp b)
;       (b: OPLSS2021.ValeVC.with_wps b).
;       projectee == OPLSS2021.ValeVC.QSeq b b ==> b :: b == _ /\ QSeq? (OPLSS2021.ValeVC.QSeq b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QSeq__item__hd`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_7188de91919c2e2cc9199174205a400e @x0)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(not 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(forall ((@x2 Term))
 (! (implies (HasType @x2
OPLSS2021.Vale.code)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(OPLSS2021.ValeVC.with_wp @x2))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ValeVC.with_wps @x3))

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(= @x1
(OPLSS2021.ValeVC.QSeq @x2
@x3
@x4
@x5))
)

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(and 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(or label_2

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(= (Prims.Cons OPLSS2021.Vale.code
@x2
@x3)
@x0)
)


;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(or label_3

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(92,3-92,5)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x0
(OPLSS2021.ValeVC.QSeq @x2
@x3
@x4
@x5)))
)
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (OPLSS2021.ValeVC.__proj__QSeq__item__hd, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ValeVC.QSeq, refinement_interpretation_Tm_refine_7188de91919c2e2cc9199174205a400e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QSeq__item__hd


; <Skipped let __proj__QSeq__item__hd/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QSeq__item__tl


; <Start encoding val OPLSS2021.ValeVC.__proj__QSeq__item__tl>


(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__tl (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QSeq? _} -> with_wps projectee.cs
(declare-fun Tm_arrow_627aed0a05250d38134af10cb1035e4c () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QSeq__item__tl@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QSeq__item__tl>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(93,3-93,5)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QSeq? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(QSeq? projectee) ==> Prims.l_False) /\
;   (forall (b: OPLSS2021.Vale.code)
;       (b: Prims.list OPLSS2021.Vale.code)
;       (b: OPLSS2021.ValeVC.with_wp b)
;       (b: OPLSS2021.ValeVC.with_wps b).
;       projectee == OPLSS2021.ValeVC.QSeq b b ==> b :: b == _ /\ QSeq? (OPLSS2021.ValeVC.QSeq b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QSeq__item__tl`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_7188de91919c2e2cc9199174205a400e @x0)))

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(not 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(forall ((@x2 Term))
 (! (implies (HasType @x2
OPLSS2021.Vale.code)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(OPLSS2021.ValeVC.with_wp @x2))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ValeVC.with_wps @x3))

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(= @x1
(OPLSS2021.ValeVC.QSeq @x2
@x3
@x4
@x5))
)

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(and 
;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(or label_2

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(= (Prims.Cons OPLSS2021.Vale.code
@x2
@x3)
@x0)
)


;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(89,2-89,6)
(or label_3

;; def=OPLSS2021.ValeVC.fst(89,2-89,6); use=OPLSS2021.ValeVC.fst(93,3-93,5)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq @x0
(OPLSS2021.ValeVC.QSeq @x2
@x3
@x4
@x5)))
)
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (OPLSS2021.ValeVC.__proj__QSeq__item__tl, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ValeVC.QSeq, refinement_interpretation_Tm_refine_7188de91919c2e2cc9199174205a400e

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QSeq__item__tl


; <Skipped let __proj__QSeq__item__tl/>


; encoding sigelt val OPLSS2021.ValeVC.uu___is_QLemma


; <Start encoding val OPLSS2021.ValeVC.uu___is_QLemma>

(declare-fun OPLSS2021.ValeVC.uu___is_QLemma (Term Term) Term)

(declare-fun OPLSS2021.ValeVC.uu___is_QLemma@tok () Term)

; </end encoding val OPLSS2021.ValeVC.uu___is_QLemma>


; encoding sigelt let uu___is_QLemma


; <Skipped let uu___is_QLemma/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QLemma__item__cs


; <Start encoding val OPLSS2021.ValeVC.__proj__QLemma__item__cs>

(declare-fun Tm_refine_6723a33414f0aa8250465c1a7196a79d (Term) Term)
(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item__cs (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QLemma? _} -> Prims.list OPLSS2021.Vale.code
(declare-fun Tm_arrow_b2e7812655b1d3f612153805c9b6595d () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item__cs@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QLemma__item__cs>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.uu___is_QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0)))
(HasType (OPLSS2021.ValeVC.uu___is_QLemma @x0
@x1)
Prims.bool))
 

:pattern ((OPLSS2021.ValeVC.uu___is_QLemma @x0
@x1))
:qid typing_OPLSS2021.ValeVC.uu___is_QLemma))

:named typing_OPLSS2021.ValeVC.uu___is_QLemma))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QLemma__item__cs; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_6723a33414f0aa8250465c1a7196a79d))

:named refinement_kinding_Tm_refine_6723a33414f0aa8250465c1a7196a79d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QLemma__item__cs; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x2))
(and (HasTypeFuel @u0
@x1
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x2)))
:qid refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d))

:named refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6723a33414f0aa8250465c1a7196a79d
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QLemma__item__cs; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0)))
(Valid (Prims.hasEq (OPLSS2021.ValeVC.with_wps @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0))))
:qid haseqTm_refine_6723a33414f0aa8250465c1a7196a79d))

:named haseqTm_refine_6723a33414f0aa8250465c1a7196a79d))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.ValeVC.uu___is_QLemma; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.uu___is_QLemma @x0
@x1)
(BoxBool (is-OPLSS2021.ValeVC.QLemma @x1)))
 

:pattern ((OPLSS2021.ValeVC.uu___is_QLemma @x0
@x1))
:qid disc_equation_OPLSS2021.ValeVC.QLemma))

:named disc_equation_OPLSS2021.ValeVC.QLemma))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(97,4-97,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QLemma? _}).
;   (*  - Could not prove post-condition
; *) ~(QLemma? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QLemma__item__cs`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0))

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(97,4-97,6)
(not 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(97,4-97,6)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QLemma__item__cs, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QLemma__item__cs


; <Skipped let __proj__QLemma__item__cs/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QLemma__item__pre


; <Start encoding val OPLSS2021.ValeVC.__proj__QLemma__item__pre>


(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item__pre (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QLemma? _} -> Prims.prop
(declare-fun Tm_arrow_2c9748774297bc765efd8f394d89e88a () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item__pre@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QLemma__item__pre>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(98,3-98,6)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QLemma? _}).
;   (*  - Could not prove post-condition
; *) ~(QLemma? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QLemma__item__pre`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0))

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(98,3-98,6)
(not 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(98,3-98,6)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QLemma__item__pre, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QLemma__item__pre


; <Skipped let __proj__QLemma__item__pre/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QLemma__item__post


; <Start encoding val OPLSS2021.ValeVC.__proj__QLemma__item__post>


(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item__post (Term Term) Term)


(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item__post@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QLemma__item__post>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(99,3-99,7)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QLemma? _}).
;   (*  - Could not prove post-condition
; *) ~(QLemma? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QLemma__item__post`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0))

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(99,3-99,7)
(not 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(99,3-99,7)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QLemma__item__post, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QLemma__item__post


; <Skipped let __proj__QLemma__item__post/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QLemma__item___3


; <Start encoding val OPLSS2021.ValeVC.__proj__QLemma__item___3>


(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item___3 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QLemma? _} -> t_lemma projectee.pre projectee.post
(declare-fun Tm_arrow_e02bd4a1f5b82308f7bf3acbb5a107cf () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item___3@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QLemma__item___3>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QLemma__item__pre; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(98,3-98,6); use=OPLSS2021.ValeVC.fst(98,3-98,6)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0)))
(HasType (OPLSS2021.ValeVC.__proj__QLemma__item__pre @x0
@x1)
Prims.prop))
 

:pattern ((OPLSS2021.ValeVC.__proj__QLemma__item__pre @x0
@x1))
:qid typing_OPLSS2021.ValeVC.__proj__QLemma__item__pre))

:named typing_OPLSS2021.ValeVC.__proj__QLemma__item__pre))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QLemma__item__pre; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(98,3-98,6); use=OPLSS2021.ValeVC.fst(98,3-98,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.__proj__QLemma__item__pre @x0
@x1)
(OPLSS2021.ValeVC.QLemma_pre @x1))
 

:pattern ((OPLSS2021.ValeVC.__proj__QLemma__item__pre @x0
@x1))
:qid proj_equation_OPLSS2021.ValeVC.QLemma_pre))

:named proj_equation_OPLSS2021.ValeVC.QLemma_pre))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QLemma? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(QLemma? projectee) ==> Prims.l_False) /\
;   (forall (b: Prims.list OPLSS2021.Vale.code)
;       (b: Prims.prop)
;       (b: Prims.prop)
;       (b: OPLSS2021.ValeVC.t_lemma b b)
;       (b: OPLSS2021.ValeVC.with_wps b).
;       projectee == OPLSS2021.ValeVC.QLemma b b b b ==>
;       b == _ /\ QLemma? (OPLSS2021.ValeVC.QLemma b b b b) /\
;       (forall (return_val: _: OPLSS2021.ValeVC.with_wps _ {QLemma? _}).
;           return_val == OPLSS2021.ValeVC.QLemma b b b b ==>
;           (forall (any_result: Prims.prop).
;               (OPLSS2021.ValeVC.QLemma b b b b).pre == any_result ==>
;               b == _ /\ QLemma? (OPLSS2021.ValeVC.QLemma b b b b))))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QLemma__item___3`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(not 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(OPLSS2021.ValeVC.t_lemma @x3
@x4))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(= @x1
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6))
)

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(or label_2

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(= @x2
@x0)
)


;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(or label_3

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6)))
)


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x7
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.prop)

;; def=OPLSS2021.ValeVC.fst(74,13-96,8); use=OPLSS2021.ValeVC.fst(74,13-96,8)
(= (OPLSS2021.ValeVC.__proj__QLemma__item__pre @x0
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6))
@x8)
)

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(or label_4

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(= @x2
@x0)
)


;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(or label_5

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6)))
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
; QUERY ID: (OPLSS2021.ValeVC.__proj__QLemma__item___3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ValeVC.QLemma, refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QLemma__item___3


; <Skipped let __proj__QLemma__item___3/>


; encoding sigelt val OPLSS2021.ValeVC.__proj__QLemma__item___4


; <Start encoding val OPLSS2021.ValeVC.__proj__QLemma__item___4>


(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item___4 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: with_wps _ {QLemma? _} -> with_wps projectee.cs
(declare-fun Tm_arrow_e08fb016013dad2214793846d4912f05 () Term)
(declare-fun OPLSS2021.ValeVC.__proj__QLemma__item___4@tok () Term)

; </end encoding val OPLSS2021.ValeVC.__proj__QLemma__item___4>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Prims.list OPLSS2021.Vale.code) (projectee: _: OPLSS2021.ValeVC.with_wps _ {QLemma? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(QLemma? projectee) ==> Prims.l_False) /\
;   (forall (b: Prims.list OPLSS2021.Vale.code)
;       (b: Prims.prop)
;       (b: Prims.prop)
;       (b: OPLSS2021.ValeVC.t_lemma b b)
;       (b: OPLSS2021.ValeVC.with_wps b).
;       projectee == OPLSS2021.ValeVC.QLemma b b b b ==>
;       b == _ /\ QLemma? (OPLSS2021.ValeVC.QLemma b b b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QLemma__item___4`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(Tm_refine_6723a33414f0aa8250465c1a7196a79d @x0)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(not 
;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(OPLSS2021.ValeVC.t_lemma @x3
@x4))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(= @x1
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6))
)

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(and 
;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(or label_2

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(= @x2
@x0)
)


;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(or label_3

;; def=OPLSS2021.ValeVC.fst(96,2-96,8); use=OPLSS2021.ValeVC.fst(96,2-96,8)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma @x0
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6)))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (OPLSS2021.ValeVC.__proj__QLemma__item___4, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_OPLSS2021.ValeVC.QLemma, refinement_interpretation_Tm_refine_6723a33414f0aa8250465c1a7196a79d

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QLemma__item___4


; <Skipped let __proj__QLemma__item___4/>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
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
;;; Fact-ids: Name Prims.__proj__Cons__item__tl; Namespace Prims
(assert (! 
;; def=Prims.fst(616,20-616,22); use=Prims.fst(616,20-616,22)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x0)))
(HasType (Prims.__proj__Cons__item__tl @x0
@x1)
(Prims.list @x0)))
 

:pattern ((Prims.__proj__Cons__item__tl @x0
@x1))
:qid typing_Prims.__proj__Cons__item__tl))

:named typing_Prims.__proj__Cons__item__tl))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.uu___is_QEmpty; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(86,2-86,8); use=OPLSS2021.ValeVC.fst(86,2-86,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0)))
(HasType (OPLSS2021.ValeVC.uu___is_QEmpty @x0
@x1)
Prims.bool))
 

:pattern ((OPLSS2021.ValeVC.uu___is_QEmpty @x0
@x1))
:qid typing_OPLSS2021.ValeVC.uu___is_QEmpty))

:named typing_OPLSS2021.ValeVC.uu___is_QEmpty))
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
;;; Fact-ids: Name Prims.__proj__Cons__item__hd; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32))

:named refinement_kinding_Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32))
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
;;; Fact-ids: Name Prims.__proj__Cons__item__hd; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x2))
(and (HasTypeFuel @u0
@x1
(Prims.list @x2))

;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(BoxBool_proj_0 (Prims.uu___is_Cons @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x2)))
:qid refinement_interpretation_Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32))

:named refinement_interpretation_Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32))
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
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name Prims.__proj__Cons__item__tl; Namespace Prims
(assert (! 
;; def=Prims.fst(616,20-616,22); use=Prims.fst(616,20-616,22)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.__proj__Cons__item__tl @x0
@x1)
(Prims.Cons_tl @x1))
 

:pattern ((Prims.__proj__Cons__item__tl @x0
@x1))
:qid proj_equation_Prims.Cons_tl))

:named proj_equation_Prims.Cons_tl))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32
;;; Fact-ids: Name Prims.__proj__Cons__item__hd; Namespace Prims
(assert (! 
;; def=Prims.fst(616,4-616,8); use=Prims.fst(616,4-616,8)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x0)))
(Valid (Prims.hasEq (Prims.list @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7aac12c24449a22c34d98a0ea8ed4a32 @x0))))
:qid haseqTm_refine_7aac12c24449a22c34d98a0ea8ed4a32))

:named haseqTm_refine_7aac12c24449a22c34d98a0ea8ed4a32))
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
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name OPLSS2021.ValeVC.uu___is_QEmpty; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(86,2-86,8); use=OPLSS2021.ValeVC.fst(86,2-86,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.uu___is_QEmpty @x0
@x1)
(BoxBool (is-OPLSS2021.ValeVC.QEmpty @x1)))
 

:pattern ((OPLSS2021.ValeVC.uu___is_QEmpty @x0
@x1))
:qid disc_equation_OPLSS2021.ValeVC.QEmpty))

:named disc_equation_OPLSS2021.ValeVC.QEmpty))
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

; Starting query at OPLSS2021.ValeVC.fst(109,2-118,33)

;;;;;;;;;;;;;;;;cs : Prims.list OPLSS2021.Vale.code (Prims.list OPLSS2021.Vale.code)
(declare-fun x_b2b7cde4456e5d6ed2fa059f2eafc491_0 () Term)
;;;;;;;;;;;;;;;;binder_x_b2b7cde4456e5d6ed2fa059f2eafc491_0
;;; Fact-ids: 
(assert (! (HasType x_b2b7cde4456e5d6ed2fa059f2eafc491_0
(Prims.list OPLSS2021.Vale.code))
:named binder_x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
;;;;;;;;;;;;;;;;qcs : OPLSS2021.ValeVC.with_wps cs (OPLSS2021.ValeVC.with_wps cs)
(declare-fun x_82fab325801a30f97df72829635fb790_1 () Term)
;;;;;;;;;;;;;;;;binder_x_82fab325801a30f97df72829635fb790_1
;;; Fact-ids: 
(assert (! (HasType x_82fab325801a30f97df72829635fb790_1
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
:named binder_x_82fab325801a30f97df72829635fb790_1))
;;;;;;;;;;;;;;;;k : OPLSS2021.ValeVC.t_post (OPLSS2021.ValeVC.t_post)
(declare-fun x_922322028da919a29d82e869528d157e_2 () Term)
;;;;;;;;;;;;;;;;binder_x_922322028da919a29d82e869528d157e_2
;;; Fact-ids: 
(assert (! (HasType x_922322028da919a29d82e869528d157e_2
OPLSS2021.ValeVC.t_post)
:named binder_x_922322028da919a29d82e869528d157e_2))
;;;;;;;;;;;;;;;;s0 : OPLSS2021.Vale.state (OPLSS2021.Vale.state)
(declare-fun x_1ef0b435af407be38ebd773e60bcc6cb_3 () Term)
;;;;;;;;;;;;;;;;binder_x_1ef0b435af407be38ebd773e60bcc6cb_3
;;; Fact-ids: 
(assert (! (HasType x_1ef0b435af407be38ebd773e60bcc6cb_3
OPLSS2021.Vale.state)
:named binder_x_1ef0b435af407be38ebd773e60bcc6cb_3))
(declare-fun Tm_refine_ac8396d413dc734f398688698ff5807f (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_ac8396d413dc734f398688698ff5807f @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_ac8396d413dc734f398688698ff5807f @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_ac8396d413dc734f398688698ff5807f))

:named refinement_kinding_Tm_refine_ac8396d413dc734f398688698ff5807f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ac8396d413dc734f398688698ff5807f @x2
@x3))
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(Valid 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(Prims.precedes (OPLSS2021.ValeVC.with_wps @x2)
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x3
x_82fab325801a30f97df72829635fb790_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ac8396d413dc734f398688698ff5807f @x2
@x3)))
:qid refinement_interpretation_Tm_refine_ac8396d413dc734f398688698ff5807f))

:named refinement_interpretation_Tm_refine_ac8396d413dc734f398688698ff5807f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ac8396d413dc734f398688698ff5807f
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ac8396d413dc734f398688698ff5807f @x0
@x1)))
(Valid (Prims.hasEq OPLSS2021.Vale.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ac8396d413dc734f398688698ff5807f @x0
@x1))))
:qid haseqTm_refine_ac8396d413dc734f398688698ff5807f))

:named haseqTm_refine_ac8396d413dc734f398688698ff5807f))
(declare-fun OPLSS2021.ValeVC.vc_gen (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;cs: Prims.list OPLSS2021.Vale.code ->     qcs: with_wps cs ->     k: t_post ->     _: _: OPLSS2021.Vale.state{qcs << qcs}   -> Prims.Tot Prims.prop
(declare-fun Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983
Tm_type)
:named kinding_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,19-118,33); use=OPLSS2021.ValeVC.fst(105,19-118,33)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,19-118,33); use=OPLSS2021.ValeVC.fst(105,19-118,33)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983)
(and 
;; def=OPLSS2021.ValeVC.fst(105,19-118,33); use=OPLSS2021.ValeVC.fst(105,19-118,33)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
OPLSS2021.ValeVC.t_post)
(HasType @x4
(Tm_refine_ac8396d413dc734f398688698ff5807f @x1
@x2)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
Prims.prop))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(105,19-118,33); use=OPLSS2021.ValeVC.fst(105,19-118,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983.2))


;; def=OPLSS2021.ValeVC.fst(105,19-118,33); use=OPLSS2021.ValeVC.fst(105,19-118,33)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983.3))


;; def=OPLSS2021.ValeVC.fst(105,19-118,33); use=OPLSS2021.ValeVC.fst(105,19-118,33)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
OPLSS2021.ValeVC.t_post))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))
(declare-fun OPLSS2021.ValeVC.vc_gen@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.vc_gen))

:named token_correspondence_OPLSS2021.ValeVC.vc_gen))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.vc_gen@tok
Tm_arrow_0bb0ff8d24ee3f6bdd0cdfbf78b0c983))

;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.vc_gen @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.vc_gen @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.vc_gen.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.vc_gen@tok))
:qid function_token_typing_OPLSS2021.ValeVC.vc_gen))

:named function_token_typing_OPLSS2021.ValeVC.vc_gen))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0))
(HasType @x2
OPLSS2021.ValeVC.t_post)
(HasType @x3
(Tm_refine_ac8396d413dc734f398688698ff5807f @x0
@x1)))
(HasType (OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2
@x3)
Prims.prop))
 

:pattern ((OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.vc_gen))

:named typing_OPLSS2021.ValeVC.vc_gen))
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_ba115efc4aebe526f171d28d6f120b93 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_ba115efc4aebe526f171d28d6f120b93))

:named refinement_kinding_Tm_refine_ba115efc4aebe526f171d28d6f120b93))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x2))
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(Valid 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(Prims.precedes (OPLSS2021.ValeVC.with_wps (Prims.__proj__Cons__item__tl OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x2
x_82fab325801a30f97df72829635fb790_1)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x2)))
:qid refinement_interpretation_Tm_refine_ba115efc4aebe526f171d28d6f120b93))

:named refinement_interpretation_Tm_refine_ba115efc4aebe526f171d28d6f120b93))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ba115efc4aebe526f171d28d6f120b93
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x0)))
(Valid (Prims.hasEq OPLSS2021.Vale.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x0))))
:qid haseqTm_refine_ba115efc4aebe526f171d28d6f120b93))

:named haseqTm_refine_ba115efc4aebe526f171d28d6f120b93))
;;;;;;;;;;;;;;;;_: _: OPLSS2021.Vale.state{b << qcs} -> Prims.Tot Prims.prop
(declare-fun Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(106,22-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x0)
Tm_type))
:qid kinding_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6))

:named kinding_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(106,22-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x2)))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(106,22-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x1))
(and 
;; def=OPLSS2021.ValeVC.fst(106,22-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Tm_refine_ba115efc4aebe526f171d28d6f120b93 @x1))
(HasType (ApplyTT @x0
@x2)
Prims.prop))
 

:pattern ((ApplyTT @x0
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x1)))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.vc_gen@tok))
:named @kick_partial_app_b805a89f7a83a1c0d81dd3dfb9c18b26))

; Encoding query formula : forall (k: Prims.pure_post Prims.prop).
;   (forall (x: Prims.prop). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(QEmpty? qcs) /\ ~(QSeq? qcs) /\ ~(QLemma? qcs) ==> Prims.l_False) /\
;   (~(QEmpty? qcs) ==>
;     (forall (b: OPLSS2021.Vale.code)
;         (b: Prims.list OPLSS2021.Vale.code)
;         (b: OPLSS2021.ValeVC.with_wp b)
;         (b: OPLSS2021.ValeVC.with_wps b).
;         qcs == OPLSS2021.ValeVC.QSeq b b ==>
;         Cons? cs /\
;         (forall (any_result: Prims.list OPLSS2021.Vale.code).
;             cs == any_result ==>
;             (forall (any_result: Prims.list OPLSS2021.Vale.code).
;                 cs.tl == any_result ==>
;                 b == cs.tl /\
;                 (forall (any_result: OPLSS2021.ValeVC.with_wps b).
;                     b == any_result ==>
;                     (forall (any_result:
;                         (_: _: OPLSS2021.Vale.state{b << qcs} -> Prims.Tot Prims.prop)).
;                         OPLSS2021.ValeVC.vc_gen cs.tl b k == any_result ==>
;                         (forall (_: OPLSS2021.Vale.state).
;                             (*  - Could not prove termination of this recursive call
; *) b << qcs))))
;         )) /\
;     (~(QSeq? qcs) ==>
;       (forall (b: Prims.list OPLSS2021.Vale.code)
;           (b: Prims.prop)
;           (b: Prims.prop)
;           (b: OPLSS2021.ValeVC.t_lemma b b)
;           (b: OPLSS2021.ValeVC.with_wps b).
;           qcs == OPLSS2021.ValeVC.QLemma b b b b ==>
;           b ==>
;           b ==>
;           b == cs /\
;           (forall (any_result: OPLSS2021.ValeVC.with_wps b). b == any_result ==> b << qcs))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vc_gen`

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
(Prims.pure_post Prims.prop))

;; def=Prims.fst(402,27-402,88); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(and 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(not 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QEmpty x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(not 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(not 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(not 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QEmpty x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.code)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(OPLSS2021.ValeVC.with_wp @x1))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(105,31-113,15); use=OPLSS2021.ValeVC.fst(109,8-113,15)
(= x_82fab325801a30f97df72829635fb790_1
(OPLSS2021.ValeVC.QSeq @x1
@x2
@x3
@x4))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(and 
;; def=Prims.fst(616,4-616,8); use=OPLSS2021.ValeVC.fst(114,28-114,30)
(or label_2

;; def=Prims.fst(616,4-616,8); use=OPLSS2021.ValeVC.fst(114,28-114,30)
(BoxBool_proj_0 (Prims.uu___is_Cons OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(616,4-616,8); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(= x_b2b7cde4456e5d6ed2fa059f2eafc491_0
@x5)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.list OPLSS2021.Vale.code))

;; def=OPLSS2021.ValeVC.fst(105,16-114,31); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(= (Prims.__proj__Cons__item__tl OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x6)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(and 
;; def=OPLSS2021.ValeVC.fst(113,9-114,31); use=OPLSS2021.ValeVC.fst(114,32-114,35)
(or label_3

;; def=OPLSS2021.ValeVC.fst(113,9-114,31); use=OPLSS2021.ValeVC.fst(114,32-114,35)
(= @x2
(Prims.__proj__Cons__item__tl OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(105,31-113,15); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(= @x4
@x7)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(Tm_arrow_2e0c1a41742fbe632b52a8ddfab098c6 @x4))

;; def=OPLSS2021.ValeVC.fst(61,11-114,38); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(= (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
(Prims.__proj__Cons__item__tl OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
@x4)
x_922322028da919a29d82e869528d157e_2)
@x8)
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(114,10-114,38)
(forall ((@x9 Term))
 (! (implies (HasType @x9
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(114,10-114,38)
(or label_4

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(114,10-114,38)
(Valid 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(114,10-114,38)
(Prims.precedes (OPLSS2021.ValeVC.with_wps (Prims.__proj__Cons__item__tl OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x4
x_82fab325801a30f97df72829635fb790_1)
)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(not 
;; def=OPLSS2021.ValeVC.fst(105,31-105,34); use=OPLSS2021.ValeVC.fst(109,8-109,11)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(OPLSS2021.ValeVC.t_lemma @x2
@x3))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ValeVC.with_wps @x1))

;; def=OPLSS2021.ValeVC.fst(105,31-116,25); use=OPLSS2021.ValeVC.fst(109,8-116,25)
(= x_82fab325801a30f97df72829635fb790_1
(OPLSS2021.ValeVC.QLemma @x1
@x2
@x3
@x4
@x5))


;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x2
)


;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x3
)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(118,4-118,33)
(and 
;; def=OPLSS2021.ValeVC.fst(105,16-116,14); use=OPLSS2021.ValeVC.fst(118,24-118,27)
(or label_5

;; def=OPLSS2021.ValeVC.fst(105,16-116,14); use=OPLSS2021.ValeVC.fst(118,24-118,27)
(= @x1
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(118,4-118,33)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ValeVC.with_wps @x1))

;; def=OPLSS2021.ValeVC.fst(105,31-116,25); use=OPLSS2021.ValeVC.fst(118,4-118,33)
(= @x5
@x6)
)

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(118,30-118,32)
(or label_6

;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(118,30-118,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(118,30-118,32)
(Prims.precedes (OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x5
x_82fab325801a30f97df72829635fb790_1)
)
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
; QUERY ID: (OPLSS2021.ValeVC.vc_gen, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_82fab325801a30f97df72829635fb790_1, constructor_distinct_Prims.Cons, data_elim_OPLSS2021.ValeVC.QLemma, data_elim_OPLSS2021.ValeVC.QSeq, disc_equation_OPLSS2021.ValeVC.QEmpty, disc_equation_OPLSS2021.ValeVC.QLemma, disc_equation_OPLSS2021.ValeVC.QSeq, disc_equation_Prims.Cons, fuel_guarded_inversion_OPLSS2021.ValeVC.with_wps, proj_equation_Prims.Cons_tl, projection_inverse_BoxBool_proj_0, projection_inverse_Prims.Cons_a, projection_inverse_Prims.Cons_hd, projection_inverse_Prims.Cons_tl, subterm_ordering_OPLSS2021.ValeVC.QLemma, subterm_ordering_OPLSS2021.ValeVC.QSeq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec vc_gen


; <Start encoding let rec vc_gen>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun OPLSS2021.ValeVC.vc_gen.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token () Term)
(declare-fun OPLSS2021.ValeVC.vc_gen (Term Term Term) Term)
(declare-fun OPLSS2021.ValeVC.vc_gen@tok () Term)

(declare-fun Tm_abs_8640ee35b7683108f846c405878d837a (Term Fuel Term Term Term) Term)


;;;;;;;;;;;;;;;;cs: Prims.list OPLSS2021.Vale.code -> qcs: with_wps cs -> k: t_post -> _: OPLSS2021.Vale.state   -> Prims.Tot Prims.prop
(declare-fun Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb () Term)


; </end encoding let rec vc_gen>

;;;;;;;;;;;;;;;;typing_Tm_abs_8640ee35b7683108f846c405878d837a
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_8640ee35b7683108f846c405878d837a @x0
@u1
@x2
@x3
@x4)
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
 

:pattern ((Tm_abs_8640ee35b7683108f846c405878d837a @x0
@u1
@x2
@x3
@x4))
:qid typing_Tm_abs_8640ee35b7683108f846c405878d837a))

:named typing_Tm_abs_8640ee35b7683108f846c405878d837a))
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
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0))
(HasType @x2
OPLSS2021.ValeVC.t_post))
(HasType (OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2)
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
 

:pattern ((OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2))
:qid typing_OPLSS2021.ValeVC.vc_gen))

:named typing_OPLSS2021.ValeVC.vc_gen))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,19-81,21); use=OPLSS2021.ValeVC.fst(81,19-81,21)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.code)
(HasType @x1
(OPLSS2021.ValeVC.with_wp @x0)))
(HasType (OPLSS2021.ValeVC.__proj__QProc__item__wp @x0
@x1)
OPLSS2021.ValeVC.t_wp))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__wp @x0
@x1))
:qid typing_OPLSS2021.ValeVC.__proj__QProc__item__wp))

:named typing_OPLSS2021.ValeVC.__proj__QProc__item__wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,30-81,35); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.code)
(HasType @x1
(OPLSS2021.ValeVC.with_wp @x0)))
(HasType (OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x0
@x1)
(OPLSS2021.ValeVC.has_wp (OPLSS2021.ValeVC.__proj__QProc__item__c @x0
@x1)
(OPLSS2021.ValeVC.__proj__QProc__item__wp @x0
@x1))))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x0
@x1))
:qid typing_OPLSS2021.ValeVC.__proj__QProc__item__hasWp))

:named typing_OPLSS2021.ValeVC.__proj__QProc__item__hasWp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.lemma_merge; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(192,4-192,15); use=OPLSS2021.Vale.fst(192,4-192,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and 
;; def=OPLSS2021.Vale.fst(195,6-195,34); use=OPLSS2021.Vale.fst(195,6-195,34)
(= (OPLSS2021.Vale.eval_code @x0
@x3
@x2)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x4))


;; def=OPLSS2021.Vale.fst(196,6-196,43); use=OPLSS2021.Vale.fst(196,6-196,43)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x1)
@x5
@x4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x6))

(HasType @x0
OPLSS2021.Vale.code)
(HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
OPLSS2021.Vale.state)
(HasType @x3
OPLSS2021.Vale.fuel)
(HasType @x4
OPLSS2021.Vale.state)
(HasType @x5
OPLSS2021.Vale.fuel)
(HasType @x6
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.lemma_merge @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(Tm_refine_1e8487533475bca4281b9d3e55f640ad @x0
@x1
@x2
@x6)))
 

:pattern ((OPLSS2021.Vale.lemma_merge @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_OPLSS2021.Vale.lemma_merge))

:named typing_OPLSS2021.Vale.lemma_merge))
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
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
OPLSS2021.ValeVC.t_post))
(HasType (OPLSS2021.ValeVC.vc_gen.fuel_instrumented @u0
@x1
@x2
@x3)
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
 

:pattern ((OPLSS2021.ValeVC.vc_gen.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))

:named token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
(OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2))
:qid token_correspondence_OPLSS2021.ValeVC.vc_gen))

:named token_correspondence_OPLSS2021.ValeVC.vc_gen))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,19-81,21); use=OPLSS2021.ValeVC.fst(81,19-81,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__wp@tok
@x0)
@x1)
(OPLSS2021.ValeVC.__proj__QProc__item__wp @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__wp@tok
@x0)
@x1))
:qid token_correspondence_OPLSS2021.ValeVC.__proj__QProc__item__wp))

:named token_correspondence_OPLSS2021.ValeVC.__proj__QProc__item__wp))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,30-81,35); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
@x0)
@x1)
(OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
@x0)
@x1))
:qid token_correspondence_OPLSS2021.ValeVC.__proj__QProc__item__hasWp))

:named token_correspondence_OPLSS2021.ValeVC.__proj__QProc__item__hasWp))
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
;;; Fact-ids: Name OPLSS2021.Vale.lemma_merge; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(193,9-193,13); use=OPLSS2021.Vale.fst(193,9-193,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_1e8487533475bca4281b9d3e55f640ad @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_1e8487533475bca4281b9d3e55f640ad @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_1e8487533475bca4281b9d3e55f640ad))

:named refinement_kinding_Tm_refine_1e8487533475bca4281b9d3e55f640ad))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.lemma_merge; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(193,9-193,13); use=OPLSS2021.Vale.fst(193,9-193,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1e8487533475bca4281b9d3e55f640ad @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.fuel)

;; def=OPLSS2021.Vale.fst(198,6-198,48); use=OPLSS2021.Vale.fst(198,6-198,48)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block (Prims.Cons OPLSS2021.Vale.code
@x2
@x3))
@x1
@x4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x5))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1e8487533475bca4281b9d3e55f640ad @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_1e8487533475bca4281b9d3e55f640ad))

:named refinement_interpretation_Tm_refine_1e8487533475bca4281b9d3e55f640ad))
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
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,19-81,21); use=OPLSS2021.ValeVC.fst(81,19-81,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.__proj__QProc__item__wp @x0
@x1)
(OPLSS2021.ValeVC.QProc_wp @x1))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__wp @x0
@x1))
:qid proj_equation_OPLSS2021.ValeVC.QProc_wp))

:named proj_equation_OPLSS2021.ValeVC.QProc_wp))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,30-81,35); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x0
@x1)
(OPLSS2021.ValeVC.QProc_hasWp @x1))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x0
@x1))
:qid proj_equation_OPLSS2021.ValeVC.QProc_hasWp))

:named proj_equation_OPLSS2021.ValeVC.QProc_hasWp))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152
Tm_type)
:named kinding_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77
Tm_type)
:named kinding_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb
Tm_type)
:named kinding_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8640ee35b7683108f846c405878d837a
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(109,2-118,33); use=OPLSS2021.ValeVC.fst(109,2-118,33)
(forall ((@x0 Term) (@x1 Term) (@u2 Fuel) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_8640ee35b7683108f846c405878d837a @x1
@u2
@x3
@x4
@x5)
@x0)
(let ((@lb6 @x5))
(ite (is-OPLSS2021.ValeVC.QEmpty @lb6)
(ApplyTT @x1
@x0)
(ite (is-OPLSS2021.ValeVC.QSeq @lb6)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__wp@tok
(OPLSS2021.ValeVC.QSeq_c @lb6))
(OPLSS2021.ValeVC.QSeq_hd @lb6))
(OPLSS2021.ValeVC.vc_gen.fuel_instrumented @u2
(Prims.__proj__Cons__item__tl OPLSS2021.Vale.code
@x3)
(OPLSS2021.ValeVC.QSeq_tl @lb6)
@x1))
@x0)
(ite (is-OPLSS2021.ValeVC.QLemma @lb6)
(Prims.l_and (OPLSS2021.ValeVC.QLemma_pre @lb6)
(Prims.l_imp (OPLSS2021.ValeVC.QLemma_post @lb6)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT (ApplyTF @x4
@u2)
@x3)
(OPLSS2021.ValeVC.QLemma__4 @lb6))
@x1)
@x0)))
Tm_unit)))))
 

:pattern ((ApplyTT (Tm_abs_8640ee35b7683108f846c405878d837a @x1
@u2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_8640ee35b7683108f846c405878d837a))

:named interpretation_Tm_abs_8640ee35b7683108f846c405878d837a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1e8487533475bca4281b9d3e55f640ad
;;; Fact-ids: Name OPLSS2021.Vale.lemma_merge; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(193,9-193,13); use=OPLSS2021.Vale.fst(193,9-193,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1e8487533475bca4281b9d3e55f640ad @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq OPLSS2021.Vale.fuel)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1e8487533475bca4281b9d3e55f640ad @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_1e8487533475bca4281b9d3e55f640ad))

:named haseqTm_refine_1e8487533475bca4281b9d3e55f640ad))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.vc_gen@tok
Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))

;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.vc_gen @x1
@x2
@x3))
 

:pattern ((OPLSS2021.ValeVC.vc_gen @x1
@x2
@x3))
:qid function_token_typing_OPLSS2021.ValeVC.vc_gen.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.vc_gen@tok))
:qid function_token_typing_OPLSS2021.ValeVC.vc_gen))

:named function_token_typing_OPLSS2021.ValeVC.vc_gen))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,19-81,21); use=OPLSS2021.ValeVC.fst(81,19-81,21)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.__proj__QProc__item__wp@tok
Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))

;; def=OPLSS2021.ValeVC.fst(81,19-81,21); use=OPLSS2021.ValeVC.fst(81,19-81,21)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__wp@tok
@x1)
@x2)
(OPLSS2021.ValeVC.__proj__QProc__item__wp @x1
@x2))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__wp @x1
@x2))
:qid function_token_typing_OPLSS2021.ValeVC.__proj__QProc__item__wp.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.__proj__QProc__item__wp@tok))
:qid function_token_typing_OPLSS2021.ValeVC.__proj__QProc__item__wp))

:named function_token_typing_OPLSS2021.ValeVC.__proj__QProc__item__wp))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(81,30-81,35); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))

;; def=OPLSS2021.ValeVC.fst(81,30-81,35); use=OPLSS2021.ValeVC.fst(81,30-81,35)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
@x1)
@x2)
(OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x1
@x2))
 

:pattern ((OPLSS2021.ValeVC.__proj__QProc__item__hasWp @x1
@x2))
:qid function_token_typing_OPLSS2021.ValeVC.__proj__QProc__item__hasWp.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok))
:qid function_token_typing_OPLSS2021.ValeVC.__proj__QProc__item__hasWp))

:named function_token_typing_OPLSS2021.ValeVC.__proj__QProc__item__hasWp))
;;;;;;;;;;;;;;;;Fuel token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! (and 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.vc_gen.fuel_instrumented @u0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0)
@x1)
@x2)
@x3))
:qid fuel_token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token))

(IsTotFun OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token)

;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel))
 (! (IsTotFun (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0))
 

:pattern ((ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0))
:qid fuel_token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token.1))


;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0)
@x1))
 

:pattern ((ApplyTT (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0)
@x1))
:qid fuel_token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token.2))


;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (IsTotFun (ApplyTT (ApplyTT (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0)
@x1)
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTF OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@u0)
@x1)
@x2))
:qid fuel_token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token.3))
)
:named fuel_token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token))
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
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: OPLSS2021.ValeVC.vc_gen
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
OPLSS2021.ValeVC.t_post))
(= (OPLSS2021.ValeVC.vc_gen.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(Tm_abs_8640ee35b7683108f846c405878d837a @x3
@u0
@x1
OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token
@x2)))
 :weight 0


:pattern ((OPLSS2021.ValeVC.vc_gen.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))

:named equation_with_fuel_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.lemma_merge
;;; Fact-ids: Name OPLSS2021.Vale.lemma_merge; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(192,4-192,15); use=OPLSS2021.Vale.fst(192,4-192,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (OPLSS2021.Vale.lemma_merge @x0
@x1
@x2
@x3
@x4
@x5
@x6)
(let ((@lb7 (Prims.op_GreaterThan @x3
@x5)))
(ite (= @lb7
(BoxBool true))
@x3
@x5)))
 

:pattern ((OPLSS2021.Vale.lemma_merge @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid equation_OPLSS2021.Vale.lemma_merge))

:named equation_OPLSS2021.Vale.lemma_merge))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,15-81,26); use=OPLSS2021.ValeVC.fst(80,15-81,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,15-81,47); use=OPLSS2021.ValeVC.fst(80,15-81,47)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,19-106,26); use=OPLSS2021.ValeVC.fst(105,19-106,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__wp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,15-81,26); use=OPLSS2021.ValeVC.fst(80,15-81,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152)
(and 
;; def=OPLSS2021.ValeVC.fst(80,15-81,26); use=OPLSS2021.ValeVC.fst(80,15-81,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.code)
(HasType @x2
(OPLSS2021.ValeVC.with_wp @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
OPLSS2021.ValeVC.t_wp))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(80,15-81,26); use=OPLSS2021.ValeVC.fst(80,15-81,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.code)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_84d21c1aa2cccf1aabb87ba16dfa3152))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77
;;; Fact-ids: Name OPLSS2021.ValeVC.__proj__QProc__item__hasWp; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(80,15-81,47); use=OPLSS2021.ValeVC.fst(80,15-81,47)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77)
(and 
;; def=OPLSS2021.ValeVC.fst(80,15-81,47); use=OPLSS2021.ValeVC.fst(80,15-81,47)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.code)
(HasType @x2
(OPLSS2021.ValeVC.with_wp @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(OPLSS2021.ValeVC.has_wp (OPLSS2021.ValeVC.__proj__QProc__item__c @x1
@x2)
(OPLSS2021.ValeVC.__proj__QProc__item__wp @x1
@x2))))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(80,15-81,47); use=OPLSS2021.ValeVC.fst(80,15-81,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.code)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_6877cbfe81de8b2a1f326ac92eac7d77))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,19-106,26); use=OPLSS2021.ValeVC.fst(105,19-106,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb)
(and 
;; def=OPLSS2021.ValeVC.fst(105,19-106,26); use=OPLSS2021.ValeVC.fst(105,19-106,26)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
OPLSS2021.ValeVC.t_post))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(105,19-106,26); use=OPLSS2021.ValeVC.fst(105,19-106,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb.2))


;; def=OPLSS2021.ValeVC.fst(105,19-106,26); use=OPLSS2021.ValeVC.fst(105,19-106,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_515f09ebc5b95d7fd151d1790e45cfeb))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.__proj__QProc__item__wp@tok))
:named @kick_partial_app_034a1c4e6aea3771243e9d3e47dca6bd))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.vc_gen.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(OPLSS2021.ValeVC.vc_gen.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((OPLSS2021.ValeVC.vc_gen.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))

:named @fuel_irrelevance_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_gen; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2)
(OPLSS2021.ValeVC.vc_gen.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((OPLSS2021.ValeVC.vc_gen @x0
@x1
@x2))
:qid @fuel_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))

:named @fuel_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(128,4-138,27)

;;;;;;;;;;;;;;;;cs : Prims.list OPLSS2021.Vale.code (Prims.list OPLSS2021.Vale.code)
(declare-fun x_b2b7cde4456e5d6ed2fa059f2eafc491_0 () Term)
;;;;;;;;;;;;;;;;binder_x_b2b7cde4456e5d6ed2fa059f2eafc491_0
;;; Fact-ids: 
(assert (! (HasType x_b2b7cde4456e5d6ed2fa059f2eafc491_0
(Prims.list OPLSS2021.Vale.code))
:named binder_x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
;;;;;;;;;;;;;;;;qcs : OPLSS2021.ValeVC.with_wps cs (OPLSS2021.ValeVC.with_wps cs)
(declare-fun x_82fab325801a30f97df72829635fb790_1 () Term)
;;;;;;;;;;;;;;;;binder_x_82fab325801a30f97df72829635fb790_1
;;; Fact-ids: 
(assert (! (HasType x_82fab325801a30f97df72829635fb790_1
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
:named binder_x_82fab325801a30f97df72829635fb790_1))
;;;;;;;;;;;;;;;;k : _: OPLSS2021.Vale.state -> Prims.prop (_: OPLSS2021.Vale.state -> Prims.prop)
(declare-fun x_3434474a270aab8204e6da61a54cfcec_2 () Term)

;;;;;;;;;;;;;;;;binder_x_3434474a270aab8204e6da61a54cfcec_2
;;; Fact-ids: 
(assert (! (HasType x_3434474a270aab8204e6da61a54cfcec_2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
:named binder_x_3434474a270aab8204e6da61a54cfcec_2))
;;;;;;;;;;;;;;;;s0 : OPLSS2021.Vale.state (OPLSS2021.Vale.state)
(declare-fun x_1ef0b435af407be38ebd773e60bcc6cb_3 () Term)
;;;;;;;;;;;;;;;;binder_x_1ef0b435af407be38ebd773e60bcc6cb_3
;;; Fact-ids: 
(assert (! (HasType x_1ef0b435af407be38ebd773e60bcc6cb_3
OPLSS2021.Vale.state)
:named binder_x_1ef0b435af407be38ebd773e60bcc6cb_3))

(declare-fun Tm_refine_4ec89f589a648e7c51f3c18f895d343f (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_4ec89f589a648e7c51f3c18f895d343f))

:named refinement_kinding_Tm_refine_4ec89f589a648e7c51f3c18f895d343f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x2
@x3))
(and (HasTypeFuel @u0
@x1
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)

;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(or 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Prims.precedes (Prims.list OPLSS2021.Vale.code)
(Prims.list OPLSS2021.Vale.code)
@x2
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(121,18-121,20); use=OPLSS2021.ValeVC.fst(121,18-121,20)
(Valid 
;; def=OPLSS2021.ValeVC.fst(121,18-121,20); use=OPLSS2021.ValeVC.fst(121,18-121,20)
(Prims.op_Equals_Equals_Equals (Prims.list OPLSS2021.Vale.code)
(Prims.list OPLSS2021.Vale.code)
@x2
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Prims.precedes (OPLSS2021.ValeVC.with_wps @x2)
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x3
x_82fab325801a30f97df72829635fb790_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x2
@x3)))
:qid refinement_interpretation_Tm_refine_4ec89f589a648e7c51f3c18f895d343f))

:named refinement_interpretation_Tm_refine_4ec89f589a648e7c51f3c18f895d343f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4ec89f589a648e7c51f3c18f895d343f
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x0
@x1)))
(Valid (Prims.hasEq OPLSS2021.Vale.state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x0
@x1))))
:qid haseqTm_refine_4ec89f589a648e7c51f3c18f895d343f))

:named haseqTm_refine_4ec89f589a648e7c51f3c18f895d343f))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.vc_gen@tok))
:named @kick_partial_app_b805a89f7a83a1c0d81dd3dfb9c18b26))
(declare-fun OPLSS2021.ValeVC.vc_sound (Term Term Term Term) Term)


(declare-fun Tm_refine_97c311e07275852bc500eaa26333fccb (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(125,9-125,23); use=OPLSS2021.ValeVC.fst(125,9-125,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_97c311e07275852bc500eaa26333fccb))

:named refinement_kinding_Tm_refine_97c311e07275852bc500eaa26333fccb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(125,9-125,23); use=OPLSS2021.ValeVC.fst(125,9-125,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_97c311e07275852bc500eaa26333fccb @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb5 @x1))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(127,29-127,74)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(127,29-127,66)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x2)
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb5)))


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(127,70-127,74)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(127,70-127,74)
(ApplyTT @x4
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
)
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_97c311e07275852bc500eaa26333fccb @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_97c311e07275852bc500eaa26333fccb))

:named refinement_interpretation_Tm_refine_97c311e07275852bc500eaa26333fccb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_97c311e07275852bc500eaa26333fccb
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(125,9-125,23); use=OPLSS2021.ValeVC.fst(125,9-125,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2))))
:qid haseqTm_refine_97c311e07275852bc500eaa26333fccb))

:named haseqTm_refine_97c311e07275852bc500eaa26333fccb))

;;;;;;;;;;;;;;;;cs: Prims.list OPLSS2021.Vale.code ->     qcs: with_wps cs ->     k: (_: OPLSS2021.Vale.state -> Prims.prop) ->     s0: OPLSS2021.Vale.state{cs << cs \/ cs === cs /\ qcs << qcs}   -> Prims.Pure (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
(declare-fun Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188
Tm_type)
:named kinding_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188)
(and 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x1)
@x2)
@x3)
@x4)
)

(HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
(Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x1
@x2)))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(Tm_refine_97c311e07275852bc500eaa26333fccb @x1
@x4
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188.2))


;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188.3))


;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(121,18-138,27)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))
(declare-fun OPLSS2021.ValeVC.vc_sound@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_sound@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_sound@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.vc_sound))

:named token_correspondence_OPLSS2021.ValeVC.vc_sound))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.vc_sound@tok
Tm_arrow_2f0a48ea1fab4032e5253c161c6ec188))

;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_sound@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.vc_sound @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.vc_sound @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.vc_sound.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.vc_sound@tok))
:qid function_token_typing_OPLSS2021.ValeVC.vc_sound))

:named function_token_typing_OPLSS2021.ValeVC.vc_sound))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3)
)

(HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0))
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
(Tm_refine_4ec89f589a648e7c51f3c18f895d343f @x0
@x1)))
(HasType (OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3)
(Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x3
@x2)))
 

:pattern ((OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.vc_sound))

:named typing_OPLSS2021.ValeVC.vc_sound))
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
OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok))
:named @kick_partial_app_0c4aecaedbc92925d9c584b70127a2a1))









; Encoding query formula : (forall (p: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;     OPLSS2021.ValeVC.vc_gen cs qcs k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sN, fN = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block cs) fN s0 ==
;           FStar.Pervasives.Native.Some sN /\ k sN) ==>
;         p pure_result) ==>
;     (forall (k: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;         (forall (x: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel). {:pattern Prims.guard_free (k x)}
;             (x ==
;               (match qcs with
;                 | OPLSS2021.ValeVC.QEmpty -> s0, 0
;                 | OPLSS2021.ValeVC.QSeq #_ #_ qc qcs ->
;                   (let c :: cs' = cs in
;                     (let sM, fM = qc.hasWp (OPLSS2021.ValeVC.vc_gen cs' qcs k) s0 in
;                       (let sN, fN = OPLSS2021.ValeVC.vc_sound cs' qcs k sM in
;                         sN, OPLSS2021.Vale.lemma_merge c cs' s0 fM sM fN sN)
;                       <:
;                       OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
;                     <:
;                     OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
;                   <:
;                   OPLSS2021.Vale.state & OPLSS2021.Vale.fuel
;                 | OPLSS2021.ValeVC.QLemma _ _ _ qcs' -> OPLSS2021.ValeVC.vc_sound cs qcs' k s0) ==>
;               (forall (return_val: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;                   return_val == x ==> p return_val)) ==>
;             k x) ==>
;         (~(QEmpty? qcs) /\ ~(QSeq? qcs) /\ ~(QLemma? qcs) ==> Prims.l_False) /\
;         (qcs == OPLSS2021.ValeVC.QEmpty ==>
;           (forall (any_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel). k any_result)) /\
;         (~(QEmpty? qcs) ==>
;           (forall (b: OPLSS2021.Vale.code)
;               (b: Prims.list OPLSS2021.Vale.code)
;               (b: OPLSS2021.ValeVC.with_wp b)
;               (b: OPLSS2021.ValeVC.with_wps b).
;               qcs == OPLSS2021.ValeVC.QSeq b b ==>
;               (~(Cons? cs) ==> Prims.l_False) /\
;               (forall (b: OPLSS2021.Vale.code) (b: Prims.list OPLSS2021.Vale.code).
;                   cs == b :: b ==>
;                   b == b /\
;                   (forall (any_result: OPLSS2021.ValeVC.with_wps b).
;                       b == any_result ==>
;                       (forall (any_result: (_: OPLSS2021.Vale.state -> Prims.Tot Prims.prop)).
;                           OPLSS2021.ValeVC.vc_gen b b k == any_result ==>
;                           b.wp (OPLSS2021.ValeVC.vc_gen b b k) s0 /\
;                           (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;                               (let sM, f0 = pure_result in
;                                 OPLSS2021.Vale.eval_code b.c f0 s0 ==
;                                 FStar.Pervasives.Native.Some sM /\ OPLSS2021.ValeVC.vc_gen b b k sM) ==>
;                               b.hasWp (OPLSS2021.ValeVC.vc_gen b b k) s0 == pure_result ==>
;                               (forall (b: OPLSS2021.Vale.state) (b: OPLSS2021.Vale.fuel).
;                                   b.hasWp (OPLSS2021.ValeVC.vc_gen b b k) s0 == (b, b) ==>
;                                   b == b /\
;                                   (forall (any_result: OPLSS2021.ValeVC.with_wps b).
;                                       b == any_result ==>
;                                       (b << cs \/ b === cs /\ b << qcs) /\
;                                       (forall (any_result: OPLSS2021.Vale.state).
;                                           b == any_result ==>
;                                           OPLSS2021.ValeVC.vc_gen b b k b /\
;                                           (forall (pure_result:
;                                               OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;                                               (let sN, fN = pure_result in
;                                                 OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block b)
;                                                   fN
;                                                   b ==
;                                                 FStar.Pervasives.Native.Some sN /\ k sN) ==>
;                                               OPLSS2021.ValeVC.vc_sound b b k b == pure_result ==>
;                                               (forall (b: OPLSS2021.Vale.state)
;                                                   (b: OPLSS2021.Vale.fuel).
;                                                   OPLSS2021.ValeVC.vc_sound b b k b == (b, b) ==>
;                                                   OPLSS2021.Vale.eval_code b b s0 ==
;                                                   FStar.Pervasives.Native.Some b /\
;                                                   OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block b)
;                                                     b
;                                                     b ==
;                                                   FStar.Pervasives.Native.Some b /\
;                                                   (forall (pure_result: OPLSS2021.Vale.fuel).
;                                                       OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block
;                                                           (b :: b))
;                                                         pure_result
;                                                         s0 ==
;                                                       FStar.Pervasives.Native.Some b ==>
;                                                       OPLSS2021.Vale.lemma_merge b b s0 b b b b ==
;                                                       pure_result ==>
;                                                       (forall (any_result:
;                                                           OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
;                                                         .
;                                                           k any_result)))))))))))) /\
;           (~(QSeq? qcs) ==>
;             (forall (b: Prims.list OPLSS2021.Vale.code)
;                 (b: Prims.prop)
;                 (b: Prims.prop)
;                 (b: OPLSS2021.ValeVC.t_lemma b b)
;                 (b: OPLSS2021.ValeVC.with_wps b).
;                 qcs == OPLSS2021.ValeVC.QLemma b b b b ==>
;                 b /\
;                 (forall (pure_result: Prims.unit).
;                     b ==>
;                     b == cs /\
;                     (forall (any_result: OPLSS2021.ValeVC.with_wps b).
;                         b == any_result ==>
;                         (cs << cs \/ b << qcs) /\
;                         (forall (any_result: OPLSS2021.Vale.state).
;                             s0 == any_result ==>
;                             OPLSS2021.ValeVC.vc_gen cs b k s0 /\
;                             (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;                                 (let sN, fN = pure_result in
;                                   OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block cs) fN s0 ==
;                                   FStar.Pervasives.Native.Some sN /\ k sN) ==>
;                                 k pure_result))))))))) /\
; (forall (p: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;     OPLSS2021.ValeVC.vc_gen cs qcs k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sN, fN = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block cs) fN s0 ==
;           FStar.Pervasives.Native.Some sN /\ k sN) ==>
;         p pure_result) ==>
;     OPLSS2021.ValeVC.vc_gen cs qcs k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sN, fN = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block cs) fN s0 ==
;           FStar.Pervasives.Native.Some sN /\ k sN) ==>
;         pure_result ==
;         (match qcs with
;           | OPLSS2021.ValeVC.QEmpty -> s0, 0
;           | OPLSS2021.ValeVC.QSeq #_ #_ qc qcs ->
;             (let c :: cs' = cs in
;               (let sM, fM = qc.hasWp (OPLSS2021.ValeVC.vc_gen cs' qcs k) s0 in
;                 (let sN, fN = OPLSS2021.ValeVC.vc_sound cs' qcs k sM in
;                   sN, OPLSS2021.Vale.lemma_merge c cs' s0 fM sM fN sN)
;                 <:
;                 OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
;               <:
;               OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
;             <:
;             OPLSS2021.Vale.state & OPLSS2021.Vale.fuel
;           | OPLSS2021.ValeVC.QLemma _ _ _ qcs' -> OPLSS2021.ValeVC.vc_sound cs qcs' k s0) ==>
;         (forall (return_val: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;             return_val == pure_result ==> p return_val)))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec vc_sound`

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
;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(and 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
x_82fab325801a30f97df72829635fb790_1)
x_3434474a270aab8204e6da61a54cfcec_2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))
(let ((@lb2 @x1))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(or label_2

;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
(FStar.Pervasives.Native.Mktuple2__2 @lb2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb2)))
)


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(or label_3

;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb2))
)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=Prims.fst(402,2-402,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x2 Term))
 (! (implies (implies 
;; def=OPLSS2021.ValeVC.fst(125,9-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= @x2
(let ((@lb3 x_82fab325801a30f97df72829635fb790_1))
(ite (is-OPLSS2021.ValeVC.QEmpty @lb3)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
x_1ef0b435af407be38ebd773e60bcc6cb_3
(BoxInt 0))
(ite (is-OPLSS2021.ValeVC.QSeq @lb3)
(let ((@lb4 x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
(OPLSS2021.ValeVC.QSeq_c @lb3))
(OPLSS2021.ValeVC.QSeq_hd @lb3))
(OPLSS2021.ValeVC.vc_gen (Prims.Cons_tl @lb4)
(OPLSS2021.ValeVC.QSeq_tl @lb3)
x_3434474a270aab8204e6da61a54cfcec_2))
x_1ef0b435af407be38ebd773e60bcc6cb_3)))
(let ((@lb6 (OPLSS2021.ValeVC.vc_sound (Prims.Cons_tl @lb4)
(OPLSS2021.ValeVC.QSeq_tl @lb3)
x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb5))))
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
(FStar.Pervasives.Native.Mktuple2__1 @lb6)
(OPLSS2021.Vale.lemma_merge (Prims.Cons_hd @lb4)
(Prims.Cons_tl @lb4)
x_1ef0b435af407be38ebd773e60bcc6cb_3
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
(FStar.Pervasives.Native.Mktuple2__1 @lb5)
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))))
Tm_unit))
(ite (is-OPLSS2021.ValeVC.QLemma @lb3)
(OPLSS2021.ValeVC.vc_sound x_b2b7cde4456e5d6ed2fa059f2eafc491_0
(OPLSS2021.ValeVC.QLemma__4 @lb3)
x_3434474a270aab8204e6da61a54cfcec_2
x_1ef0b435af407be38ebd773e60bcc6cb_3)
Tm_unit)))))


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x3
@x2)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x0
@x3)
)
)
 
;;no pats
:qid @query.4))
)

;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(402,84-402,87); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(and 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(not 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QEmpty x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(not 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(not 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QLemma x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)
)

label_4)
(implies 
;; def=OPLSS2021.ValeVC.fst(122,18-129,12); use=OPLSS2021.ValeVC.fst(128,10-129,12)
(= x_82fab325801a30f97df72829635fb790_1
OPLSS2021.ValeVC.QEmpty@tok)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.5))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(not 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QEmpty x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=Prims.fst(389,2-389,39); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x2 Term))
 (! (implies (HasType @x2
OPLSS2021.Vale.code)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(OPLSS2021.ValeVC.with_wp @x2))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(OPLSS2021.ValeVC.with_wps @x3))

;; def=OPLSS2021.ValeVC.fst(122,18-130,17); use=OPLSS2021.ValeVC.fst(128,10-130,17)
(= x_82fab325801a30f97df72829635fb790_1
(OPLSS2021.ValeVC.QSeq @x2
@x3
@x4
@x5))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and (implies 
;; def=OPLSS2021.ValeVC.fst(131,10-131,20); use=OPLSS2021.ValeVC.fst(131,10-131,20)
(not 
;; def=OPLSS2021.ValeVC.fst(131,10-131,20); use=OPLSS2021.ValeVC.fst(131,10-131,20)
(BoxBool_proj_0 (Prims.uu___is_Cons OPLSS2021.Vale.code
x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
)

label_5)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x6 Term))
 (! (implies (HasType @x6
OPLSS2021.Vale.code)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Prims.list OPLSS2021.Vale.code))

;; def=OPLSS2021.ValeVC.fst(131,10-131,20); use=OPLSS2021.ValeVC.fst(131,10-131,20)
(= x_b2b7cde4456e5d6ed2fa059f2eafc491_0
(Prims.Cons OPLSS2021.Vale.code
@x6
@x7))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(130,11-131,20); use=OPLSS2021.ValeVC.fst(132,42-132,45)
(or label_6

;; def=OPLSS2021.ValeVC.fst(130,11-131,20); use=OPLSS2021.ValeVC.fst(132,42-132,45)
(= @x3
@x7)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(OPLSS2021.ValeVC.with_wps @x3))

;; def=OPLSS2021.ValeVC.fst(105,31-130,17); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= @x5
@x8)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)

;; def=OPLSS2021.ValeVC.fst(65,2-132,48); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= (OPLSS2021.ValeVC.vc_gen @x7
@x5
x_3434474a270aab8204e6da61a54cfcec_2)
@x9)
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(68,14-68,21); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(or label_7

;; def=OPLSS2021.ValeVC.fst(68,14-68,21); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(68,14-68,21); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__wp@tok
@x2)
@x4)
(OPLSS2021.ValeVC.vc_gen @x7
@x5
x_3434474a270aab8204e6da61a54cfcec_2))
x_1ef0b435af407be38ebd773e60bcc6cb_3)
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb11 @x10))

;; def=OPLSS2021.ValeVC.fst(70,6-71,10); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(70,6-70,34); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.ValeVC.__proj__QProc__item__c @x2
@x4)
(FStar.Pervasives.Native.Mktuple2__2 @lb11)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb11)))


;; def=OPLSS2021.ValeVC.fst(71,6-71,10); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(71,6-71,10); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x7)
@x5)
x_3434474a270aab8204e6da61a54cfcec_2)
(FStar.Pervasives.Native.Mktuple2__1 @lb11))
)
)
)

;; def=OPLSS2021.ValeVC.fst(132,11-132,51); use=OPLSS2021.ValeVC.fst(132,11-132,51)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
@x2)
@x4)
(OPLSS2021.ValeVC.vc_gen @x7
@x5
x_3434474a270aab8204e6da61a54cfcec_2))
x_1ef0b435af407be38ebd773e60bcc6cb_3)
@x10)
)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x11 Term))
 (! (implies (HasType @x11
OPLSS2021.Vale.state)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
OPLSS2021.Vale.fuel)

;; def=OPLSS2021.ValeVC.fst(132,11-132,17); use=OPLSS2021.ValeVC.fst(132,11-132,17)
(= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
@x2)
@x4)
(OPLSS2021.ValeVC.vc_gen @x7
@x5
x_3434474a270aab8204e6da61a54cfcec_2))
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
@x11
@x12))
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(130,11-131,20); use=OPLSS2021.ValeVC.fst(133,34-133,37)
(or label_8

;; def=OPLSS2021.ValeVC.fst(130,11-131,20); use=OPLSS2021.ValeVC.fst(133,34-133,37)
(= @x3
@x7)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(OPLSS2021.ValeVC.with_wps @x3))

;; def=OPLSS2021.ValeVC.fst(122,18-130,17); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= @x5
@x13)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(or label_9

;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(Valid 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(Prims.precedes (Prims.list OPLSS2021.Vale.code)
(Prims.list OPLSS2021.Vale.code)
@x7
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(and 
;; def=OPLSS2021.ValeVC.fst(121,18-121,20); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(Valid 
;; def=OPLSS2021.ValeVC.fst(121,18-121,20); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(Prims.op_Equals_Equals_Equals (Prims.list OPLSS2021.Vale.code)
(Prims.list OPLSS2021.Vale.code)
@x7
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(Valid 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(133,40-133,42)
(Prims.precedes (OPLSS2021.ValeVC.with_wps @x7)
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x5
x_82fab325801a30f97df72829635fb790_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(124,18-132,13); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= @x11
@x14)
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(or label_10

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x7)
@x5)
x_3434474a270aab8204e6da61a54cfcec_2)
@x11)
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb16 @x15))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x7)
(FStar.Pervasives.Native.Mktuple2__2 @lb16)
@x11)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb16)))


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(133,21-133,29)
(ApplyTT x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb16))
)
)
)

;; def=OPLSS2021.ValeVC.fst(133,11-133,42); use=OPLSS2021.ValeVC.fst(133,11-133,42)
(= (OPLSS2021.ValeVC.vc_sound @x7
@x5
x_3434474a270aab8204e6da61a54cfcec_2
@x11)
@x15)
)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x16 Term))
 (! (implies (HasType @x16
OPLSS2021.Vale.state)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x17 Term))
 (! (implies (and (HasType @x17
OPLSS2021.Vale.fuel)

;; def=OPLSS2021.ValeVC.fst(133,11-133,17); use=OPLSS2021.ValeVC.fst(133,11-133,17)
(= (OPLSS2021.ValeVC.vc_sound @x7
@x5
x_3434474a270aab8204e6da61a54cfcec_2
@x11)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
@x16
@x17))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(and 
;; def=OPLSS2021.Vale.fst(195,6-195,34); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(or label_11

;; def=OPLSS2021.Vale.fst(195,6-195,34); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(= (OPLSS2021.Vale.eval_code @x6
@x12
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x11))
)


;; def=OPLSS2021.Vale.fst(196,6-196,43); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(or label_12

;; def=OPLSS2021.Vale.fst(196,6-196,43); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x7)
@x17
@x11)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x16))
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(forall ((@x18 Term))
 (! (implies (and (HasType @x18
OPLSS2021.Vale.fuel)

;; def=OPLSS2021.Vale.fst(198,6-198,48); use=OPLSS2021.ValeVC.fst(134,16-134,27)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block (Prims.Cons OPLSS2021.Vale.code
@x6
@x7))
@x18
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
@x16))


;; def=OPLSS2021.ValeVC.fst(134,10-134,48); use=OPLSS2021.ValeVC.fst(134,10-134,48)
(= (OPLSS2021.Vale.lemma_merge @x6
@x7
x_1ef0b435af407be38ebd773e60bcc6cb_3
@x12
@x11
@x17
@x16)
@x18)
)

;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x19 Term))
 (! (implies (HasType @x19
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(451,90-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x1
@x19)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(not 
;; def=OPLSS2021.ValeVC.fst(122,18-122,21); use=OPLSS2021.ValeVC.fst(128,10-128,13)
(BoxBool_proj_0 (OPLSS2021.ValeVC.uu___is_QSeq x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_82fab325801a30f97df72829635fb790_1))
)


;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Prims.list OPLSS2021.Vale.code))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.prop)

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(OPLSS2021.ValeVC.t_lemma @x3
@x4))

;; def=Prims.fst(413,99-413,120); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(122,18-136,30); use=OPLSS2021.ValeVC.fst(128,10-136,30)
(= x_82fab325801a30f97df72829635fb790_1
(OPLSS2021.ValeVC.QLemma @x2
@x3
@x4
@x5
@x6))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(or label_13

;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x3
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
(Valid 
;; def=Prims.fst(413,107-413,108); use=Prims.fst(413,117-413,118)
@x4
)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(121,18-136,16); use=OPLSS2021.ValeVC.fst(138,18-138,22)
(or label_14

;; def=OPLSS2021.ValeVC.fst(121,18-136,16); use=OPLSS2021.ValeVC.fst(138,18-138,22)
(= @x2
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(OPLSS2021.ValeVC.with_wps @x2))

;; def=OPLSS2021.ValeVC.fst(122,18-136,30); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= @x6
@x8)
)

;; def=Prims.fst(459,77-459,89); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(121,18-138,27); use=OPLSS2021.ValeVC.fst(138,25-138,27)
(or label_15

;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(138,25-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(138,25-138,27)
(Prims.precedes (Prims.list OPLSS2021.Vale.code)
(Prims.list OPLSS2021.Vale.code)
x_b2b7cde4456e5d6ed2fa059f2eafc491_0
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
)


;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(138,25-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(138,25-138,27)
(Prims.precedes (OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
(OPLSS2021.ValeVC.with_wps x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x6
x_82fab325801a30f97df72829635fb790_1)
)
)


;; def=Prims.fst(451,66-451,102); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(124,18-124,20); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= x_1ef0b435af407be38ebd773e60bcc6cb_3
@x9)
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(or label_16

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
@x6)
x_3434474a270aab8204e6da61a54cfcec_2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb11 @x10))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
(FStar.Pervasives.Native.Mktuple2__2 @lb11)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb11)))


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(ApplyTT x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb11))
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(138,6-138,14)
(ApplyTT @x1
@x10)
)
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
 
;;no pats
:qid @query.26))
)
 
;;no pats
:qid @query.25))
)
 
;;no pats
:qid @query.24))
))
))
)
 
;;no pats
:qid @query.2))
)
 
;;no pats
:qid @query))


;; def=OPLSS2021.ValeVC.fst(128,4-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
x_82fab325801a30f97df72829635fb790_1)
x_3434474a270aab8204e6da61a54cfcec_2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x1 Term))
 (! (implies (and (or label_17
(HasType @x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))
(let ((@lb2 @x1))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(or label_18

;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
(FStar.Pervasives.Native.Mktuple2__2 @lb2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb2)))
)


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(or label_19

;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb2))
)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT @x0
@x1)
)
)
:qid @query.34))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(or label_20

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
x_82fab325801a30f97df72829635fb790_1)
x_3434474a270aab8204e6da61a54cfcec_2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb2 @x1))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block x_b2b7cde4456e5d6ed2fa059f2eafc491_0)
(FStar.Pervasives.Native.Mktuple2__2 @lb2)
x_1ef0b435af407be38ebd773e60bcc6cb_3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb2)))


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(ApplyTT x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb2))
)
)
)

;; def=OPLSS2021.ValeVC.fst(125,9-138,27); use=OPLSS2021.ValeVC.fst(128,4-138,27)
(= @x1
(let ((@lb2 x_82fab325801a30f97df72829635fb790_1))
(ite (is-OPLSS2021.ValeVC.QEmpty @lb2)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
x_1ef0b435af407be38ebd773e60bcc6cb_3
(BoxInt 0))
(ite (is-OPLSS2021.ValeVC.QSeq @lb2)
(let ((@lb3 x_b2b7cde4456e5d6ed2fa059f2eafc491_0))
(ite (is-Prims.Cons @lb3)
(let ((@lb4 (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
(OPLSS2021.ValeVC.QSeq_c @lb2))
(OPLSS2021.ValeVC.QSeq_hd @lb2))
(OPLSS2021.ValeVC.vc_gen (Prims.Cons_tl @lb3)
(OPLSS2021.ValeVC.QSeq_tl @lb2)
x_3434474a270aab8204e6da61a54cfcec_2))
x_1ef0b435af407be38ebd773e60bcc6cb_3)))
(let ((@lb5 (OPLSS2021.ValeVC.vc_sound (Prims.Cons_tl @lb3)
(OPLSS2021.ValeVC.QSeq_tl @lb2)
x_3434474a270aab8204e6da61a54cfcec_2
(FStar.Pervasives.Native.Mktuple2__1 @lb4))))
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
(FStar.Pervasives.Native.Mktuple2__1 @lb5)
(OPLSS2021.Vale.lemma_merge (Prims.Cons_hd @lb3)
(Prims.Cons_tl @lb3)
x_1ef0b435af407be38ebd773e60bcc6cb_3
(FStar.Pervasives.Native.Mktuple2__2 @lb4)
(FStar.Pervasives.Native.Mktuple2__1 @lb4)
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
(FStar.Pervasives.Native.Mktuple2__1 @lb5)))))
Tm_unit))
(ite (is-OPLSS2021.ValeVC.QLemma @lb2)
(OPLSS2021.ValeVC.vc_sound x_b2b7cde4456e5d6ed2fa059f2eafc491_0
(OPLSS2021.ValeVC.QLemma__4 @lb2)
x_3434474a270aab8204e6da61a54cfcec_2
x_1ef0b435af407be38ebd773e60bcc6cb_3)
Tm_unit)))))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x2
@x1)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x0
@x2)
)
)
 
;;no pats
:qid @query.36))
)
 
;;no pats
:qid @query.35))
)
)
 
;;no pats
:qid @query.33))
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
; QUERY ID: (OPLSS2021.ValeVC.vc_sound, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_OPLSS2021.Vale.eval_code.fuel_instrumented, @fuel_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented, @fuel_irrelevance_OPLSS2021.ValeVC.vc_gen.fuel_instrumented, @query, OPLSS2021.ValeVC_pretyping_6c269814d09bd027c3ba0bff1b7d9303, binder_x_1ef0b435af407be38ebd773e60bcc6cb_3, binder_x_3434474a270aab8204e6da61a54cfcec_2, binder_x_82fab325801a30f97df72829635fb790_1, binder_x_b2b7cde4456e5d6ed2fa059f2eafc491_0, constructor_distinct_OPLSS2021.Vale.Block, constructor_distinct_OPLSS2021.ValeVC.QEmpty, constructor_distinct_OPLSS2021.ValeVC.QLemma, constructor_distinct_OPLSS2021.ValeVC.QSeq, constructor_distinct_Prims.Cons, constructor_distinct_Prims.Nil, data_elim_OPLSS2021.ValeVC.QEmpty, data_elim_OPLSS2021.ValeVC.QSeq, data_typing_intro_OPLSS2021.Vale.Block@tok, data_typing_intro_OPLSS2021.ValeVC.QEmpty@tok, disc_equation_OPLSS2021.ValeVC.QEmpty, disc_equation_OPLSS2021.ValeVC.QLemma, disc_equation_OPLSS2021.ValeVC.QSeq, disc_equation_Prims.Cons, equality_tok_OPLSS2021.ValeVC.QEmpty@tok, equation_OPLSS2021.Vale.fuel, equation_OPLSS2021.Vale.state, equation_OPLSS2021.ValeVC.t_post, equation_Prims.nat, equation_with_fuel_OPLSS2021.Vale.eval_code.fuel_instrumented, equation_with_fuel_OPLSS2021.Vale.eval_codes.fuel_instrumented, equation_with_fuel_OPLSS2021.ValeVC.vc_gen.fuel_instrumented, fuel_guarded_inversion_FStar.Pervasives.Native.tuple2, fuel_guarded_inversion_OPLSS2021.ValeVC.with_wp, fuel_guarded_inversion_OPLSS2021.ValeVC.with_wps, fuel_token_correspondence_OPLSS2021.ValeVC.vc_gen.fuel_instrumented_token, int_typing, interpretation_Tm_abs_8640ee35b7683108f846c405878d837a, l_and-interp, l_imp-interp, proj_equation_OPLSS2021.ValeVC.QProc_c, proj_equation_Prims.Cons_tl, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_OPLSS2021.Vale.Block_block, projection_inverse_OPLSS2021.ValeVC.QLemma__4, projection_inverse_OPLSS2021.ValeVC.QLemma_cs, projection_inverse_OPLSS2021.ValeVC.QLemma_post, projection_inverse_OPLSS2021.ValeVC.QLemma_pre, projection_inverse_OPLSS2021.ValeVC.QSeq_c, projection_inverse_OPLSS2021.ValeVC.QSeq_cs, projection_inverse_OPLSS2021.ValeVC.QSeq_hd, projection_inverse_OPLSS2021.ValeVC.QSeq_tl, projection_inverse_Prims.Cons_a, projection_inverse_Prims.Cons_hd, projection_inverse_Prims.Cons_tl, projection_inverse_Prims.Nil_a, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_OPLSS2021.ValeVC.QLemma, subterm_ordering_Prims.Cons, token_correspondence_OPLSS2021.ValeVC.vc_gen, typing_tok_OPLSS2021.ValeVC.QEmpty@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec vc_sound


; <Start encoding let rec vc_sound>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun OPLSS2021.ValeVC.vc_sound.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun OPLSS2021.ValeVC.vc_sound.fuel_instrumented_token () Term)
(declare-fun OPLSS2021.ValeVC.vc_sound (Term Term Term Term) Term)
(declare-fun OPLSS2021.ValeVC.vc_sound@tok () Term)

(declare-fun Tm_refine_97c311e07275852bc500eaa26333fccb (Term Term Term) Term)



;;;;;;;;;;;;;;;;cs: Prims.list OPLSS2021.Vale.code ->     qcs: with_wps cs ->     k: (_: OPLSS2021.Vale.state -> Prims.prop) ->     s0: OPLSS2021.Vale.state   -> Prims.Pure (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
(declare-fun Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233 () Term)




; </end encoding let rec vc_sound>


; encoding sigelt let vc_sound'


; <Start encoding let vc_sound'>

(declare-fun OPLSS2021.ValeVC.vc_sound_ (Term Term) Term)

;;;;;;;;;;;;;;;;cs: Prims.list OPLSS2021.Vale.code -> qcs: with_wps cs   -> has_wp (OPLSS2021.Vale.Block cs) (vc_gen cs qcs)
(declare-fun Tm_arrow_be2c831cd683ba957ce554f23c19b40d () Term)
(declare-fun OPLSS2021.ValeVC.vc_sound_@tok () Term)


; </end encoding let vc_sound'>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(153,4-157,5)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (dst: OPLSS2021.Vale.operand)
;   (src: OPLSS2021.Vale.operand)
;   (k: (_: OPLSS2021.Vale.state -> Prims.prop))
;   (s0: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   OReg? dst ==>
;   (forall (x: OPLSS2021.Vale.nat64).
;       (*  - Subtyping check failed
;   - Expected type _: OPLSS2021.Vale.operand{OReg? _}
;     got type OPLSS2021.Vale.operand
; *)
;       OReg? dst)


; Context: While encoding a query
; While typechecking the top-level declaration `let wp_Move`

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
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(153,4-153,13); use=OPLSS2021.ValeVC.fst(153,4-153,13)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(153,4-157,5)
(forall ((@x4 Term))
 (! (implies (HasType @x4
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.ValeVC.fst(155,38-155,41)
(or label_1

;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.ValeVC.fst(155,38-155,41)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))
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
; QUERY ID: (OPLSS2021.ValeVC.wp_Move, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let wp_Move


; <Start encoding let wp_Move>


(declare-fun OPLSS2021.ValeVC.wp_Move (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;dst: OPLSS2021.Vale.operand ->     src: OPLSS2021.Vale.operand ->     k: (_: OPLSS2021.Vale.state -> Prims.prop) ->     s0: OPLSS2021.Vale.state   -> Prims.prop
(declare-fun Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a () Term)
(declare-fun OPLSS2021.ValeVC.wp_Move@tok () Term)


; </end encoding let wp_Move>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,4-151,11); use=OPLSS2021.ValeVC.fst(151,4-151,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3)
Prims.prop))
 

:pattern ((OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.wp_Move))

:named typing_OPLSS2021.ValeVC.wp_Move))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.update_state; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(85,4-85,16); use=OPLSS2021.Vale.fst(85,4-85,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.reg)
(HasType @x1
OPLSS2021.Vale.state)
(HasType @x2
OPLSS2021.Vale.state))
(HasType (OPLSS2021.Vale.update_state @x0
@x1
@x2)
OPLSS2021.Vale.state))
 

:pattern ((OPLSS2021.Vale.update_state @x0
@x1
@x2))
:qid typing_OPLSS2021.Vale.update_state))

:named typing_OPLSS2021.Vale.update_state))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Move; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(206,4-206,14); use=OPLSS2021.Vale.fst(206,4-206,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and 
;; def=OPLSS2021.Vale.fst(208,12-208,21); use=OPLSS2021.Vale.fst(208,12-208,21)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x1))

(HasType @x0
OPLSS2021.Vale.state)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand))
(HasType (OPLSS2021.Vale.lemma_Move @x0
@x1
@x2)
(Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x1
@x2
@x0)))
 

:pattern ((OPLSS2021.Vale.lemma_Move @x0
@x1
@x2))
:qid typing_OPLSS2021.Vale.lemma_Move))

:named typing_OPLSS2021.Vale.lemma_Move))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OReg__item__r; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,10-43,11); use=OPLSS2021.Vale.fst(43,10-43,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_767b1c02b1152eda22dfc5f487f5bd48)
(HasType (OPLSS2021.Vale.__proj__OReg__item__r @x0)
OPLSS2021.Vale.reg))
 

:pattern ((OPLSS2021.Vale.__proj__OReg__item__r @x0))
:qid typing_OPLSS2021.Vale.__proj__OReg__item__r))

:named typing_OPLSS2021.Vale.__proj__OReg__item__r))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Move; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(207,9-207,23); use=OPLSS2021.Vale.fst(207,9-207,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_b50803dd6ebf6f5e503071af576e8122))

:named refinement_kinding_Tm_refine_b50803dd6ebf6f5e503071af576e8122))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Move; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(207,9-207,23); use=OPLSS2021.Vale.fst(207,9-207,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb5 @x1))

;; def=OPLSS2021.Vale.fst(210,4-212,42); use=OPLSS2021.Vale.fst(210,4-212,42)
(and 
;; def=OPLSS2021.Vale.fst(210,4-210,52); use=OPLSS2021.Vale.fst(210,4-210,52)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x2
@x3))
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
@x4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb5)))


;; def=OPLSS2021.Vale.fst(211,4-211,46); use=OPLSS2021.Vale.fst(211,4-211,46)
(= (OPLSS2021.Vale.eval_operand @x2
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
(OPLSS2021.Vale.eval_operand @x3
@x4))


;; def=OPLSS2021.Vale.fst(212,4-212,42); use=OPLSS2021.Vale.fst(212,4-212,42)
(= (FStar.Pervasives.Native.Mktuple2__1 @lb5)
(OPLSS2021.Vale.update_state (OPLSS2021.Vale.__proj__OReg__item__r @x2)
(FStar.Pervasives.Native.Mktuple2__1 @lb5)
@x4))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_b50803dd6ebf6f5e503071af576e8122))

:named refinement_interpretation_Tm_refine_b50803dd6ebf6f5e503071af576e8122))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name OPLSS2021.Vale.__proj__OReg__item__r; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(43,10-43,11); use=OPLSS2021.Vale.fst(43,10-43,11)
(forall ((@x0 Term))
 (! (= (OPLSS2021.Vale.__proj__OReg__item__r @x0)
(OPLSS2021.Vale.OReg_r @x0))
 

:pattern ((OPLSS2021.Vale.__proj__OReg__item__r @x0))
:qid proj_equation_OPLSS2021.Vale.OReg_r))

:named proj_equation_OPLSS2021.Vale.OReg_r))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b50803dd6ebf6f5e503071af576e8122
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Move; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(207,9-207,23); use=OPLSS2021.Vale.fst(207,9-207,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b50803dd6ebf6f5e503071af576e8122 @x0
@x1
@x2))))
:qid haseqTm_refine_b50803dd6ebf6f5e503071af576e8122))

:named haseqTm_refine_b50803dd6ebf6f5e503071af576e8122))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.wp_Move
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,4-151,11); use=OPLSS2021.ValeVC.fst(151,4-151,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3))

;; def=OPLSS2021.ValeVC.fst(153,4-157,5); use=OPLSS2021.ValeVC.fst(153,4-157,5)
(and 
;; def=OPLSS2021.ValeVC.fst(153,4-153,13); use=OPLSS2021.ValeVC.fst(153,4-153,13)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))


;; def=OPLSS2021.ValeVC.fst(154,4-157,5); use=OPLSS2021.ValeVC.fst(154,4-157,5)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.ValeVC.fst(156,6-156,48); use=OPLSS2021.ValeVC.fst(156,6-156,48)
(= (OPLSS2021.Vale.eval_operand @x0
(OPLSS2021.Vale.update_reg @x3
(OPLSS2021.Vale.__proj__OReg__item__r @x0)
@x4))
(OPLSS2021.Vale.eval_operand @x1
@x3))
)

;; def=OPLSS2021.ValeVC.fst(156,53-156,57); use=OPLSS2021.ValeVC.fst(156,53-156,57)
(Valid 
;; def=OPLSS2021.ValeVC.fst(156,53-156,57); use=OPLSS2021.ValeVC.fst(156,53-156,57)
(ApplyTT @x2
(OPLSS2021.Vale.update_reg @x3
(OPLSS2021.Vale.__proj__OReg__item__r @x0)
@x4))
)
)
 
;;no pats
:qid equation_OPLSS2021.ValeVC.wp_Move.1))
)
)
 

:pattern ((OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3))
:qid equation_OPLSS2021.ValeVC.wp_Move))

:named equation_OPLSS2021.ValeVC.wp_Move))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.update_state
;;; Fact-ids: Name OPLSS2021.Vale.update_state; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(85,4-85,16); use=OPLSS2021.Vale.fst(85,4-85,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.update_state @x0
@x1
@x2)
(OPLSS2021.Vale.update_reg @x2
@x0
(ApplyTT @x1
@x0)))
 

:pattern ((OPLSS2021.Vale.update_state @x0
@x1
@x2))
:qid equation_OPLSS2021.Vale.update_state))

:named equation_OPLSS2021.Vale.update_state))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.lemma_Move
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Move; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(206,4-206,14); use=OPLSS2021.Vale.fst(206,4-206,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.lemma_Move @x0
@x1
@x2)
(let ((@lb3 (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x1
@x2))
(BoxInt 0)
@x0)))
(ite (is-FStar.Pervasives.Native.Some @lb3)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
(FStar.Pervasives.Native.Some_v @lb3)
(BoxInt 0))
Tm_unit)))
 

:pattern ((OPLSS2021.Vale.lemma_Move @x0
@x1
@x2))
:qid equation_OPLSS2021.Vale.lemma_Move))

:named equation_OPLSS2021.Vale.lemma_Move))
;;;;;;;;;;;;;;;;Prop-typing for OPLSS2021.ValeVC.wp_Move
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,4-151,11); use=OPLSS2021.ValeVC.fst(151,4-151,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(Valid (Prims.subtype_of (OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_OPLSS2021.ValeVC.wp_Move))

:named defn_equation_OPLSS2021.ValeVC.wp_Move))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(163,4-163,25)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (dst: OPLSS2021.Vale.operand)
;   (src: OPLSS2021.Vale.operand)
;   (k: (_: OPLSS2021.Vale.state -> Prims.prop))
;   (s0: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;     OPLSS2021.ValeVC.wp_Move dst src k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sM, f0 = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 dst src)) f0 s0 ==
;           FStar.Pervasives.Native.Some sM /\ k sM) ==>
;         p pure_result) ==>
;     OReg? dst /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sM, fM = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 dst src)) fM s0 ==
;           FStar.Pervasives.Native.Some sM /\
;           OPLSS2021.Vale.eval_operand dst sM == OPLSS2021.Vale.eval_operand src s0 /\
;           sM == OPLSS2021.Vale.update_state dst.r sM s0) ==>
;         pure_result == OPLSS2021.Vale.lemma_Move s0 dst src ==>
;         (forall (return_val: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;             return_val == pure_result ==> p return_val))


; Context: While encoding a query
; While typechecking the top-level declaration `let hasWp_Move`

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
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=OPLSS2021.ValeVC.fst(161,14-161,34); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(Valid 
;; def=OPLSS2021.ValeVC.fst(161,14-161,34); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))
(let ((@lb6 @x5))

;; def=OPLSS2021.ValeVC.fst(162,29-162,85); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(and 
;; def=OPLSS2021.ValeVC.fst(162,29-162,77); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(or label_2

;; def=OPLSS2021.ValeVC.fst(162,29-162,77); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x0
@x1))
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))
)


;; def=OPLSS2021.ValeVC.fst(162,81-162,85); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(or label_3

;; def=OPLSS2021.ValeVC.fst(162,81-162,85); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(Valid 
;; def=OPLSS2021.ValeVC.fst(162,81-162,85); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(ApplyTT @x2
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(and 
;; def=OPLSS2021.Vale.fst(208,12-208,21); use=OPLSS2021.ValeVC.fst(163,4-163,14)
(or label_4

;; def=OPLSS2021.Vale.fst(208,12-208,21); use=OPLSS2021.ValeVC.fst(163,4-163,14)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb6 @x5))

;; def=OPLSS2021.Vale.fst(210,4-212,42); use=OPLSS2021.ValeVC.fst(163,4-163,14)
(and 
;; def=OPLSS2021.Vale.fst(210,4-210,52); use=OPLSS2021.ValeVC.fst(163,4-163,14)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x0
@x1))
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))


;; def=OPLSS2021.Vale.fst(211,4-211,46); use=OPLSS2021.ValeVC.fst(163,4-163,14)
(= (OPLSS2021.Vale.eval_operand @x0
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
(OPLSS2021.Vale.eval_operand @x1
@x3))


;; def=OPLSS2021.Vale.fst(212,4-212,42); use=OPLSS2021.ValeVC.fst(163,4-163,14)
(= (FStar.Pervasives.Native.Mktuple2__1 @lb6)
(OPLSS2021.Vale.update_state (OPLSS2021.Vale.__proj__OReg__item__r @x0)
(FStar.Pervasives.Native.Mktuple2__1 @lb6)
@x3))
)
)

;; def=OPLSS2021.ValeVC.fst(160,9-163,25); use=OPLSS2021.ValeVC.fst(163,4-163,25)
(= @x5
(OPLSS2021.Vale.lemma_Move @x3
@x0
@x1))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x6
@x5)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x4
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
; QUERY ID: (OPLSS2021.ValeVC.hasWp_Move, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, disc_equation_OPLSS2021.Vale.OReg, equation_OPLSS2021.Vale.eval_operand, equation_OPLSS2021.Vale.update_state, equation_OPLSS2021.ValeVC.wp_Move, proj_equation_OPLSS2021.Vale.OReg_r, projection_inverse_BoxBool_proj_0, typing_OPLSS2021.Vale.eval_operand

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let hasWp_Move


; <Start encoding let hasWp_Move>


(declare-fun OPLSS2021.ValeVC.hasWp_Move (Term Term Term Term) Term)

(declare-fun Tm_refine_ac9f6c39206149075dcff645103141c8 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;dst: OPLSS2021.Vale.operand ->     src: OPLSS2021.Vale.operand ->     k: (_: OPLSS2021.Vale.state -> Prims.prop) ->     s0: OPLSS2021.Vale.state   -> Prims.Pure (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
(declare-fun Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404 () Term)
(declare-fun OPLSS2021.ValeVC.hasWp_Move@tok () Term)



; </end encoding let hasWp_Move>


; encoding sigelt let inst_Move


; <Start encoding let inst_Move>

(declare-fun OPLSS2021.ValeVC.inst_Move (Term Term) Term)
;;;;;;;;;;;;;;;;dst: OPLSS2021.Vale.operand -> src: OPLSS2021.Vale.operand   -> with_wp (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 dst src))
(declare-fun Tm_arrow_4382c0724cc6956381f09682fede4bc6 () Term)
(declare-fun OPLSS2021.ValeVC.inst_Move@tok () Term)

; </end encoding let inst_Move>

(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(174,2-178,3)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (dst: OPLSS2021.Vale.operand)
;   (src: OPLSS2021.Vale.operand)
;   (k: (_: OPLSS2021.Vale.state -> Prims.prop))
;   (s0: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   OReg? dst /\
;   OPLSS2021.Vale.eval_operand dst s0 + OPLSS2021.Vale.eval_operand src s0 < OPLSS2021.Vale.pow2_64 ==>
;   (forall (x: OPLSS2021.Vale.nat64).
;       (*  - Subtyping check failed
;   - Expected type _: OPLSS2021.Vale.operand{OReg? _}
;     got type OPLSS2021.Vale.operand
; *)
;       OReg? dst)


; Context: While encoding a query
; While typechecking the top-level declaration `let wp_Add`

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
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(174,2-174,11); use=OPLSS2021.ValeVC.fst(174,2-174,11)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))


;; def=OPLSS2021.ValeVC.fst(174,15-174,66); use=OPLSS2021.ValeVC.fst(174,15-174,66)
(< (BoxInt_proj_0 (Prims.op_Addition (OPLSS2021.Vale.eval_operand @x0
@x3)
(OPLSS2021.Vale.eval_operand @x1
@x3)))
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))
)

;; def=dummy(0,0-0,0); use=OPLSS2021.ValeVC.fst(174,2-178,3)
(forall ((@x4 Term))
 (! (implies (HasType @x4
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.ValeVC.fst(176,36-176,39)
(or label_1

;; def=OPLSS2021.Vale.fst(43,4-43,8); use=OPLSS2021.ValeVC.fst(176,36-176,39)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))
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
; QUERY ID: (OPLSS2021.ValeVC.wp_Add, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let wp_Add


; <Start encoding let wp_Add>


(declare-fun OPLSS2021.ValeVC.wp_Add (Term Term Term Term) Term)


(declare-fun OPLSS2021.ValeVC.wp_Add@tok () Term)


; </end encoding let wp_Add>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(173,4-173,10); use=OPLSS2021.ValeVC.fst(173,4-173,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3)
Prims.prop))
 

:pattern ((OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.wp_Add))

:named typing_OPLSS2021.ValeVC.wp_Add))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Add; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(218,4-218,13); use=OPLSS2021.Vale.fst(218,4-218,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and 
;; def=OPLSS2021.Vale.fst(220,12-220,21); use=OPLSS2021.Vale.fst(220,12-220,21)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x1))


;; def=OPLSS2021.Vale.fst(220,25-220,76); use=OPLSS2021.Vale.fst(220,25-220,76)
(< (BoxInt_proj_0 (Prims.op_Addition (OPLSS2021.Vale.eval_operand @x1
@x0)
(OPLSS2021.Vale.eval_operand @x2
@x0)))
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))

(HasType @x0
OPLSS2021.Vale.state)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand))
(HasType (OPLSS2021.Vale.lemma_Add @x0
@x1
@x2)
(Tm_refine_ceebf2ea184c3d02014760209dba017e @x1
@x2
@x0)))
 

:pattern ((OPLSS2021.Vale.lemma_Add @x0
@x1
@x2))
:qid typing_OPLSS2021.Vale.lemma_Add))

:named typing_OPLSS2021.Vale.lemma_Add))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Add; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(219,9-219,23); use=OPLSS2021.Vale.fst(219,9-219,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_ceebf2ea184c3d02014760209dba017e @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_ceebf2ea184c3d02014760209dba017e @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_ceebf2ea184c3d02014760209dba017e))

:named refinement_kinding_Tm_refine_ceebf2ea184c3d02014760209dba017e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Add; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(219,9-219,23); use=OPLSS2021.Vale.fst(219,9-219,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ceebf2ea184c3d02014760209dba017e @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb5 @x1))

;; def=OPLSS2021.Vale.fst(222,4-224,42); use=OPLSS2021.Vale.fst(222,4-224,42)
(and 
;; def=OPLSS2021.Vale.fst(222,4-222,52); use=OPLSS2021.Vale.fst(222,4-222,52)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x2
@x3))
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
@x4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb5)))


;; def=OPLSS2021.Vale.fst(223,4-223,68); use=OPLSS2021.Vale.fst(223,4-223,68)
(= (OPLSS2021.Vale.eval_operand @x2
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
(Prims.op_Addition (OPLSS2021.Vale.eval_operand @x2
@x4)
(OPLSS2021.Vale.eval_operand @x3
@x4)))


;; def=OPLSS2021.Vale.fst(224,4-224,42); use=OPLSS2021.Vale.fst(224,4-224,42)
(= (FStar.Pervasives.Native.Mktuple2__1 @lb5)
(OPLSS2021.Vale.update_state (OPLSS2021.Vale.__proj__OReg__item__r @x2)
(FStar.Pervasives.Native.Mktuple2__1 @lb5)
@x4))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ceebf2ea184c3d02014760209dba017e @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_ceebf2ea184c3d02014760209dba017e))

:named refinement_interpretation_Tm_refine_ceebf2ea184c3d02014760209dba017e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ceebf2ea184c3d02014760209dba017e
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Add; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(219,9-219,23); use=OPLSS2021.Vale.fst(219,9-219,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ceebf2ea184c3d02014760209dba017e @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ceebf2ea184c3d02014760209dba017e @x0
@x1
@x2))))
:qid haseqTm_refine_ceebf2ea184c3d02014760209dba017e))

:named haseqTm_refine_ceebf2ea184c3d02014760209dba017e))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.wp_Add
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(173,4-173,10); use=OPLSS2021.ValeVC.fst(173,4-173,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3))

;; def=OPLSS2021.ValeVC.fst(174,2-178,3); use=OPLSS2021.ValeVC.fst(174,2-178,3)
(and 
;; def=OPLSS2021.ValeVC.fst(174,2-174,11); use=OPLSS2021.ValeVC.fst(174,2-174,11)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))


;; def=OPLSS2021.ValeVC.fst(174,15-174,66); use=OPLSS2021.ValeVC.fst(174,15-174,66)
(< (BoxInt_proj_0 (Prims.op_Addition (OPLSS2021.Vale.eval_operand @x0
@x3)
(OPLSS2021.Vale.eval_operand @x1
@x3)))
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))


;; def=OPLSS2021.ValeVC.fst(175,2-178,3); use=OPLSS2021.ValeVC.fst(175,2-178,3)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.ValeVC.fst(177,4-177,68); use=OPLSS2021.ValeVC.fst(177,4-177,68)
(= (OPLSS2021.Vale.eval_operand @x0
(OPLSS2021.Vale.update_reg @x3
(OPLSS2021.Vale.__proj__OReg__item__r @x0)
@x4))
(Prims.op_Addition (OPLSS2021.Vale.eval_operand @x0
@x3)
(OPLSS2021.Vale.eval_operand @x1
@x3)))
)

;; def=OPLSS2021.ValeVC.fst(177,73-177,77); use=OPLSS2021.ValeVC.fst(177,73-177,77)
(Valid 
;; def=OPLSS2021.ValeVC.fst(177,73-177,77); use=OPLSS2021.ValeVC.fst(177,73-177,77)
(ApplyTT @x2
(OPLSS2021.Vale.update_reg @x3
(OPLSS2021.Vale.__proj__OReg__item__r @x0)
@x4))
)
)
 
;;no pats
:qid equation_OPLSS2021.ValeVC.wp_Add.1))
)
)
 

:pattern ((OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3))
:qid equation_OPLSS2021.ValeVC.wp_Add))

:named equation_OPLSS2021.ValeVC.wp_Add))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.lemma_Add
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Add; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(218,4-218,13); use=OPLSS2021.Vale.fst(218,4-218,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (OPLSS2021.Vale.lemma_Add @x0
@x1
@x2)
(let ((@lb3 (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x1
@x2))
(BoxInt 0)
@x0)))
(ite (is-FStar.Pervasives.Native.Some @lb3)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
(FStar.Pervasives.Native.Some_v @lb3)
(BoxInt 0))
Tm_unit)))
 

:pattern ((OPLSS2021.Vale.lemma_Add @x0
@x1
@x2))
:qid equation_OPLSS2021.Vale.lemma_Add))

:named equation_OPLSS2021.Vale.lemma_Add))
;;;;;;;;;;;;;;;;Prop-typing for OPLSS2021.ValeVC.wp_Add
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(173,4-173,10); use=OPLSS2021.ValeVC.fst(173,4-173,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(Valid (Prims.subtype_of (OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_OPLSS2021.ValeVC.wp_Add))

:named defn_equation_OPLSS2021.ValeVC.wp_Add))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(184,4-184,24)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (dst: OPLSS2021.Vale.operand)
;   (src: OPLSS2021.Vale.operand)
;   (k: (_: OPLSS2021.Vale.state -> Prims.prop))
;   (s0: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;     OPLSS2021.ValeVC.wp_Add dst src k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sM, f0 = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 dst src)) f0 s0 ==
;           FStar.Pervasives.Native.Some sM /\ k sM) ==>
;         p pure_result) ==>
;     OReg? dst /\
;     OPLSS2021.Vale.eval_operand dst s0 + OPLSS2021.Vale.eval_operand src s0 < OPLSS2021.Vale.pow2_64 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sM, fM = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 dst src)) fM s0 ==
;           FStar.Pervasives.Native.Some sM /\
;           OPLSS2021.Vale.eval_operand dst sM ==
;           OPLSS2021.Vale.eval_operand dst s0 + OPLSS2021.Vale.eval_operand src s0 /\
;           sM == OPLSS2021.Vale.update_state dst.r sM s0) ==>
;         pure_result == OPLSS2021.Vale.lemma_Add s0 dst src ==>
;         (forall (return_val: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;             return_val == pure_result ==> p return_val))


; Context: While encoding a query
; While typechecking the top-level declaration `let hasWp_Add`

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
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=OPLSS2021.ValeVC.fst(182,14-182,33); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(Valid 
;; def=OPLSS2021.ValeVC.fst(182,14-182,33); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))
(let ((@lb6 @x5))

;; def=OPLSS2021.ValeVC.fst(183,29-183,85); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(and 
;; def=OPLSS2021.ValeVC.fst(183,29-183,77); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(or label_2

;; def=OPLSS2021.ValeVC.fst(183,29-183,77); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x0
@x1))
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))
)


;; def=OPLSS2021.ValeVC.fst(183,81-183,85); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(or label_3

;; def=OPLSS2021.ValeVC.fst(183,81-183,85); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(Valid 
;; def=OPLSS2021.ValeVC.fst(183,81-183,85); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(ApplyTT @x2
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(and 
;; def=OPLSS2021.Vale.fst(220,12-220,21); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(or label_4

;; def=OPLSS2021.Vale.fst(220,12-220,21); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(BoxBool_proj_0 (OPLSS2021.Vale.uu___is_OReg @x0))
)


;; def=OPLSS2021.Vale.fst(220,25-220,76); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(or label_5

;; def=OPLSS2021.Vale.fst(220,25-220,76); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(< (BoxInt_proj_0 (Prims.op_Addition (OPLSS2021.Vale.eval_operand @x0
@x3)
(OPLSS2021.Vale.eval_operand @x1
@x3)))
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb6 @x5))

;; def=OPLSS2021.Vale.fst(222,4-224,42); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(and 
;; def=OPLSS2021.Vale.fst(222,4-222,52); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x0
@x1))
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))


;; def=OPLSS2021.Vale.fst(223,4-223,68); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(= (OPLSS2021.Vale.eval_operand @x0
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
(Prims.op_Addition (OPLSS2021.Vale.eval_operand @x0
@x3)
(OPLSS2021.Vale.eval_operand @x1
@x3)))


;; def=OPLSS2021.Vale.fst(224,4-224,42); use=OPLSS2021.ValeVC.fst(184,4-184,13)
(= (FStar.Pervasives.Native.Mktuple2__1 @lb6)
(OPLSS2021.Vale.update_state (OPLSS2021.Vale.__proj__OReg__item__r @x0)
(FStar.Pervasives.Native.Mktuple2__1 @lb6)
@x3))
)
)

;; def=OPLSS2021.ValeVC.fst(181,9-184,24); use=OPLSS2021.ValeVC.fst(184,4-184,24)
(= @x5
(OPLSS2021.Vale.lemma_Add @x3
@x0
@x1))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x6
@x5)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x4
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
; QUERY ID: (OPLSS2021.ValeVC.hasWp_Add, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, disc_equation_OPLSS2021.Vale.OReg, equation_OPLSS2021.Vale.eval_operand, equation_OPLSS2021.Vale.state, equation_OPLSS2021.Vale.update_reg, equation_OPLSS2021.Vale.update_state, equation_OPLSS2021.ValeVC.wp_Add, proj_equation_OPLSS2021.Vale.OReg_r, projection_inverse_BoxBool_proj_0, typing_OPLSS2021.Vale.eval_operand, typing_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let hasWp_Add


; <Start encoding let hasWp_Add>


(declare-fun OPLSS2021.ValeVC.hasWp_Add (Term Term Term Term) Term)

(declare-fun Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;dst: OPLSS2021.Vale.operand ->     src: OPLSS2021.Vale.operand ->     k: (_: OPLSS2021.Vale.state -> Prims.prop) ->     s0: OPLSS2021.Vale.state   -> Prims.Pure (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)
(declare-fun Tm_arrow_e288c47bc244090218899e0dc9ac77bc () Term)
(declare-fun OPLSS2021.ValeVC.hasWp_Add@tok () Term)



; </end encoding let hasWp_Add>


; encoding sigelt let inst_Add


; <Start encoding let inst_Add>

(declare-fun OPLSS2021.ValeVC.inst_Add (Term Term) Term)
;;;;;;;;;;;;;;;;dst: OPLSS2021.Vale.operand -> src: OPLSS2021.Vale.operand   -> with_wp (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 dst src))
(declare-fun Tm_arrow_a414af3757ba6f2370a4ba89e7d0991a () Term)
(declare-fun OPLSS2021.ValeVC.inst_Add@tok () Term)

; </end encoding let inst_Add>


; encoding sigelt let normal_steps


; <Start encoding let normal_steps>

(declare-fun OPLSS2021.ValeVC.normal_steps (Dummy_sort) Term)

; </end encoding let normal_steps>


; encoding sigelt let normal


; <Start encoding let normal>

(declare-fun OPLSS2021.ValeVC.normal (Term) Term)

(declare-fun OPLSS2021.ValeVC.normal@tok () Term)

; </end encoding let normal>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3)
)

(HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0))
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3)
(Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x3
@x2)))
 

:pattern ((OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.vc_sound))

:named typing_OPLSS2021.ValeVC.vc_sound))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x1)
@x2)
@x3)
@x4)
)
)
(HasType (OPLSS2021.ValeVC.vc_sound.fuel_instrumented @u0
@x1
@x2
@x3
@x4)
(Tm_refine_97c311e07275852bc500eaa26333fccb @x1
@x4
@x3)))
 

:pattern ((OPLSS2021.ValeVC.vc_sound.fuel_instrumented @u0
@x1
@x2
@x3
@x4))
:qid token_correspondence_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))

:named token_correspondence_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_sound@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_sound@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.vc_sound))

:named token_correspondence_OPLSS2021.ValeVC.vc_sound))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(125,9-125,23); use=OPLSS2021.ValeVC.fst(125,9-125,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_97c311e07275852bc500eaa26333fccb))

:named refinement_kinding_Tm_refine_97c311e07275852bc500eaa26333fccb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(125,9-125,23); use=OPLSS2021.ValeVC.fst(125,9-125,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_97c311e07275852bc500eaa26333fccb @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb5 @x1))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(127,29-127,74)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(127,29-127,66)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x2)
(FStar.Pervasives.Native.Mktuple2__2 @lb5)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb5)))


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(127,70-127,74)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(127,70-127,74)
(ApplyTT @x4
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
)
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_97c311e07275852bc500eaa26333fccb @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_97c311e07275852bc500eaa26333fccb))

:named refinement_interpretation_Tm_refine_97c311e07275852bc500eaa26333fccb))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233
Tm_type)
:named kinding_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))
;;;;;;;;;;;;;;;;haseq for Tm_refine_97c311e07275852bc500eaa26333fccb
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(125,9-125,23); use=OPLSS2021.ValeVC.fst(125,9-125,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x1
@x2))))
:qid haseqTm_refine_97c311e07275852bc500eaa26333fccb))

:named haseqTm_refine_97c311e07275852bc500eaa26333fccb))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.vc_sound@tok
Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))

;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_sound@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.vc_sound @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.vc_sound @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.vc_sound.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.vc_sound@tok))
:qid function_token_typing_OPLSS2021.ValeVC.vc_sound))

:named function_token_typing_OPLSS2021.ValeVC.vc_sound))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: OPLSS2021.ValeVC.vc_sound
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
OPLSS2021.Vale.state)

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x1)
@x2)
@x3)
@x4)
)
)
(= (OPLSS2021.ValeVC.vc_sound.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(let ((@lb5 @x2))
(ite (is-OPLSS2021.ValeVC.QEmpty @lb5)
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
@x4
(BoxInt 0))
(ite (is-OPLSS2021.ValeVC.QSeq @lb5)
(let ((@lb6 @x1))
(ite (is-Prims.Cons @lb6)
(let ((@lb7 (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok
(OPLSS2021.ValeVC.QSeq_c @lb5))
(OPLSS2021.ValeVC.QSeq_hd @lb5))
(OPLSS2021.ValeVC.vc_gen (Prims.Cons_tl @lb6)
(OPLSS2021.ValeVC.QSeq_tl @lb5)
@x3))
@x4)))
(let ((@lb8 (OPLSS2021.ValeVC.vc_sound.fuel_instrumented @u0
(Prims.Cons_tl @lb6)
(OPLSS2021.ValeVC.QSeq_tl @lb5)
@x3
(FStar.Pervasives.Native.Mktuple2__1 @lb7))))
(FStar.Pervasives.Native.Mktuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel
(FStar.Pervasives.Native.Mktuple2__1 @lb8)
(OPLSS2021.Vale.lemma_merge (Prims.Cons_hd @lb6)
(Prims.Cons_tl @lb6)
@x4
(FStar.Pervasives.Native.Mktuple2__2 @lb7)
(FStar.Pervasives.Native.Mktuple2__1 @lb7)
(FStar.Pervasives.Native.Mktuple2__2 @lb8)
(FStar.Pervasives.Native.Mktuple2__1 @lb8)))))
Tm_unit))
(ite (is-OPLSS2021.ValeVC.QLemma @lb5)
(OPLSS2021.ValeVC.vc_sound.fuel_instrumented @u0
@x1
(OPLSS2021.ValeVC.QLemma__4 @lb5)
@x3
@x4)
Tm_unit))))))
 :weight 0


:pattern ((OPLSS2021.ValeVC.vc_sound.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid equation_with_fuel_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))

:named equation_with_fuel_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,21-125,23); use=OPLSS2021.ValeVC.fst(121,21-125,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,21-125,23); use=OPLSS2021.ValeVC.fst(121,21-125,23)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233)
(and 
;; def=OPLSS2021.ValeVC.fst(121,21-125,23); use=OPLSS2021.ValeVC.fst(121,21-125,23)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(126,14-126,32)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x1)
@x2)
@x3)
@x4)
)

(HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
OPLSS2021.Vale.state))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(Tm_refine_97c311e07275852bc500eaa26333fccb @x1
@x4
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(121,21-125,23); use=OPLSS2021.ValeVC.fst(121,21-125,23)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233.2))


;; def=OPLSS2021.ValeVC.fst(121,21-125,23); use=OPLSS2021.ValeVC.fst(121,21-125,23)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233.3))


;; def=OPLSS2021.ValeVC.fst(121,21-125,23); use=OPLSS2021.ValeVC.fst(121,21-125,23)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
(Prims.list OPLSS2021.Vale.code))
(HasType @x2
(OPLSS2021.ValeVC.with_wps @x1))
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_9d6b66516aa1727a7d3f3647c6efa233))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.vc_gen@tok))
:named @kick_partial_app_b805a89f7a83a1c0d81dd3dfb9c18b26))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound'; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.vc_sound@tok))
:named @kick_partial_app_3e5fab1e3d3342cec53dab32f3ed05fe))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.__proj__QProc__item__hasWp@tok))
:named @kick_partial_app_0c4aecaedbc92925d9c584b70127a2a1))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (OPLSS2021.ValeVC.vc_sound.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(OPLSS2021.ValeVC.vc_sound.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.vc_sound.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid @fuel_irrelevance_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))

:named @fuel_irrelevance_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(121,8-121,16); use=OPLSS2021.ValeVC.fst(121,8-121,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3)
(OPLSS2021.ValeVC.vc_sound.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3))
 

:pattern ((OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
:qid @fuel_correspondence_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))

:named @fuel_correspondence_OPLSS2021.ValeVC.vc_sound.fuel_instrumented))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(224,4-224,24)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




; Encoding query formula : forall (cs: Prims.list OPLSS2021.Vale.code)
;   (qcs: OPLSS2021.ValeVC.with_wps cs)
;   (k: (_: OPLSS2021.Vale.state -> Prims.prop))
;   (s0: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;     OPLSS2021.ValeVC.vc_gen cs qcs k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sN, fN = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block cs) fN s0 ==
;           FStar.Pervasives.Native.Some sN /\ k sN) ==>
;         p pure_result) ==>
;     OPLSS2021.ValeVC.vc_gen cs qcs k s0 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sN, fN = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block cs) fN s0 ==
;           FStar.Pervasives.Native.Some sN /\ k sN) ==>
;         pure_result == OPLSS2021.ValeVC.vc_sound cs qcs k s0 ==>
;         (forall (return_val: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;             return_val == pure_result ==> p return_val))


; Context: While encoding a query
; While typechecking the top-level declaration `let vc_sound_norm`

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
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0))
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(Valid 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))
(let ((@lb6 @x5))

;; def=OPLSS2021.ValeVC.fst(223,6-223,51); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(and 
;; def=OPLSS2021.ValeVC.fst(223,6-223,43); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(or label_2

;; def=OPLSS2021.ValeVC.fst(223,6-223,43); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x0)
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))
)


;; def=OPLSS2021.ValeVC.fst(223,47-223,51); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(or label_3

;; def=OPLSS2021.ValeVC.fst(223,47-223,51); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(Valid 
;; def=OPLSS2021.ValeVC.fst(223,47-223,51); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(ApplyTT @x2
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(and 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(or label_4

;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(Valid 
;; def=OPLSS2021.ValeVC.fst(126,14-126,32); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3)
)
)


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb6 @x5))

;; def=OPLSS2021.ValeVC.fst(127,29-127,74); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(and 
;; def=OPLSS2021.ValeVC.fst(127,29-127,66); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block @x0)
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x3)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))


;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(Valid 
;; def=OPLSS2021.ValeVC.fst(127,70-127,74); use=OPLSS2021.ValeVC.fst(224,4-224,12)
(ApplyTT @x2
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
)
)
)

;; def=OPLSS2021.ValeVC.fst(219,9-224,24); use=OPLSS2021.ValeVC.fst(224,4-224,24)
(= @x5
(OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x6
@x5)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x4
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
; QUERY ID: (OPLSS2021.ValeVC.vc_sound_norm, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let vc_sound_norm


; <Start encoding let vc_sound_norm>



(declare-fun OPLSS2021.ValeVC.vc_sound_norm (Term Term Term Term) Term)




(declare-fun OPLSS2021.ValeVC.vc_sound_norm@tok () Term)



; </end encoding let vc_sound_norm>


; encoding sigelt let inst_Triple


; <Start encoding let inst_Triple>

(declare-fun OPLSS2021.ValeVC.inst_Triple (Dummy_sort) Term)

; </end encoding let inst_Triple>

;;;;;;;;;;;;;;;;typing_Tm_abs_25286b0e73883168f2c2ebd191323c31
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Triple; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_abs_25286b0e73883168f2c2ebd191323c31
Tm_arrow_c80cde31f6be451645261b07f2e46a70)
:named typing_Tm_abs_25286b0e73883168f2c2ebd191323c31))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.equals@tok))
:named pre_kinding_Prims.equals@tok))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c80cde31f6be451645261b07f2e46a70
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Triple; Namespace OPLSS2021.Vale
(assert (! (HasType Tm_arrow_c80cde31f6be451645261b07f2e46a70
Tm_type)
:named kinding_Tm_arrow_c80cde31f6be451645261b07f2e46a70))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_25286b0e73883168f2c2ebd191323c31
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Triple; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(63,20-63,25); use=OPLSS2021.Vale.fst(63,20-63,25)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_25286b0e73883168f2c2ebd191323c31
@x0)
OPLSS2021.Vale.nat64)
 

:pattern ((ApplyTT Tm_abs_25286b0e73883168f2c2ebd191323c31
@x0))
:qid interpretation_Tm_abs_25286b0e73883168f2c2ebd191323c31))

:named interpretation_Tm_abs_25286b0e73883168f2c2ebd191323c31))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Triple; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(63,13-63,16); use=OPLSS2021.Vale.fst(63,13-244,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_c80cde31f6be451645261b07f2e46a70)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_c80cde31f6be451645261b07f2e46a70))
:qid OPLSS2021.Vale_pre_typing_Tm_arrow_c80cde31f6be451645261b07f2e46a70))

:named OPLSS2021.Vale_pre_typing_Tm_arrow_c80cde31f6be451645261b07f2e46a70))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c80cde31f6be451645261b07f2e46a70
;;; Fact-ids: Name OPLSS2021.Vale.lemma_Triple; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(63,13-63,16); use=OPLSS2021.Vale.fst(63,13-244,13)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_c80cde31f6be451645261b07f2e46a70)
(and 
;; def=OPLSS2021.Vale.fst(63,13-63,16); use=OPLSS2021.Vale.fst(63,13-244,13)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.reg)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.Vale_interpretation_Tm_arrow_c80cde31f6be451645261b07f2e46a70.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_c80cde31f6be451645261b07f2e46a70))
:qid OPLSS2021.Vale_interpretation_Tm_arrow_c80cde31f6be451645261b07f2e46a70))

:named OPLSS2021.Vale_interpretation_Tm_arrow_c80cde31f6be451645261b07f2e46a70))
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
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(256,2-259,18)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



; Encoding query formula : forall (s0: OPLSS2021.Vale.state) (s1: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Type0).
;     (forall (pure_result: Type0).
;         (pure_result ==> FStar.FunctionalExtensionality.feq s0 s1) ==> p pure_result) ==>
;     (forall (return_val: Type0).
;         return_val ==
;         (s0 OPLSS2021.Vale.Rax == s1 OPLSS2021.Vale.Rax) /\
;         (s0 OPLSS2021.Vale.Rbx == s1 OPLSS2021.Vale.Rbx) /\
;         (s0 OPLSS2021.Vale.Rcx == s1 OPLSS2021.Vale.Rcx) /\
;         (s0 OPLSS2021.Vale.Rdx == s1 OPLSS2021.Vale.Rdx) ==>
;         p return_val)


; Context: While encoding a query
; While typechecking the top-level declaration `let state_eq`

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
OPLSS2021.Vale.state)
(HasType @x1
OPLSS2021.Vale.state))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Tm_type))

;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(forall ((@x3 Term))
 (! (implies (and (or label_1
(HasType @x3
Tm_type))
(implies 
;; def=Prims.fst(441,45-441,56); use=Prims.fst(441,67-441,78)
(Valid 
;; def=Prims.fst(441,45-441,56); use=Prims.fst(441,67-441,78)
@x3
)


;; def=OPLSS2021.ValeVC.fst(254,26-254,37); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(or label_2

;; def=OPLSS2021.ValeVC.fst(254,26-254,37); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(Valid 
;; def=OPLSS2021.ValeVC.fst(254,26-254,37); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(FStar.FunctionalExtensionality.feq OPLSS2021.Vale.reg
Tm_abs_25286b0e73883168f2c2ebd191323c31
@x0
@x1)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(ApplyTT @x2
@x3)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(ApplyTT @x2
@x3)
)
)
:qid @query.2))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x3
(Prims.l_and (Prims.l_and (Prims.l_and (Prims.eq2 OPLSS2021.Vale.nat64
(ApplyTT @x0
OPLSS2021.Vale.Rax@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rax@tok))
(Prims.eq2 OPLSS2021.Vale.nat64
(ApplyTT @x0
OPLSS2021.Vale.Rbx@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rbx@tok)))
(Prims.eq2 OPLSS2021.Vale.nat64
(ApplyTT @x0
OPLSS2021.Vale.Rcx@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rcx@tok)))
(Prims.eq2 OPLSS2021.Vale.nat64
(ApplyTT @x0
OPLSS2021.Vale.Rdx@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rdx@tok))))
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
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
; QUERY ID: (OPLSS2021.ValeVC.state_eq, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, OPLSS2021.Vale_pretyping_38bfc0c987351cdd198f2fc697e674bf, eq2-interp, equality_tok_OPLSS2021.Vale.Rax@tok, equality_tok_OPLSS2021.Vale.Rbx@tok, equality_tok_OPLSS2021.Vale.Rcx@tok, equality_tok_OPLSS2021.Vale.Rdx@tok, equation_FStar.FunctionalExtensionality.feq, equation_OPLSS2021.Vale.nat64, fuel_guarded_inversion_OPLSS2021.Vale.reg, l_and-interp, typing_tok_OPLSS2021.Vale.Rdx@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let state_eq


; <Start encoding let state_eq>

(declare-fun OPLSS2021.ValeVC.state_eq (Term Term) Term)


(declare-fun Tm_refine_b3c5a7af1b5524553dc82cef72baac45 (Term Term) Term)
;;;;;;;;;;;;;;;;s0: OPLSS2021.Vale.state -> s1: OPLSS2021.Vale.state -> Prims.Pure Type
(declare-fun Tm_arrow_36ea56b1e572d47310e54e9c9511b63c () Term)
(declare-fun OPLSS2021.ValeVC.state_eq@tok () Term)




; </end encoding let state_eq>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound_norm; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(214,4-214,17); use=OPLSS2021.ValeVC.fst(214,4-214,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(Valid 
;; def=OPLSS2021.ValeVC.fst(105,8-105,14); use=OPLSS2021.ValeVC.fst(105,8-105,14)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.vc_gen@tok
@x0)
@x1)
@x2)
@x3)
)

(HasType @x0
(Prims.list OPLSS2021.Vale.code))
(HasType @x1
(OPLSS2021.ValeVC.with_wps @x0))
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.vc_sound_norm @x0
@x1
@x2
@x3)
(Tm_refine_97c311e07275852bc500eaa26333fccb @x0
@x3
@x2)))
 

:pattern ((OPLSS2021.ValeVC.vc_sound_norm @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.vc_sound_norm))

:named typing_OPLSS2021.ValeVC.vc_sound_norm))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.state_eq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(252,4-252,12); use=OPLSS2021.ValeVC.fst(252,4-252,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.state)
(HasType @x1
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.state_eq @x0
@x1)
(Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x0
@x1)))
 

:pattern ((OPLSS2021.ValeVC.state_eq @x0
@x1))
:qid typing_OPLSS2021.ValeVC.state_eq))

:named typing_OPLSS2021.ValeVC.state_eq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Triple; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(231,4-231,15); use=OPLSS2021.ValeVC.fst(231,4-231,15)
(forall ((@u0 Dummy_sort))
 (! (HasType (OPLSS2021.ValeVC.inst_Triple @u0)
(OPLSS2021.ValeVC.with_wps (OPLSS2021.Vale.codes_Triple Dummy_value)))
 

:pattern ((OPLSS2021.ValeVC.inst_Triple @u0))
:qid typing_OPLSS2021.ValeVC.inst_Triple))

:named typing_OPLSS2021.ValeVC.inst_Triple))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(166,4-166,13); use=OPLSS2021.ValeVC.fst(166,4-166,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand))
(HasType (OPLSS2021.ValeVC.inst_Move @x0
@x1)
(OPLSS2021.ValeVC.with_wp (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x0
@x1)))))
 

:pattern ((OPLSS2021.ValeVC.inst_Move @x0
@x1))
:qid typing_OPLSS2021.ValeVC.inst_Move))

:named typing_OPLSS2021.ValeVC.inst_Move))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(187,4-187,12); use=OPLSS2021.ValeVC.fst(187,4-187,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand))
(HasType (OPLSS2021.ValeVC.inst_Add @x0
@x1)
(OPLSS2021.ValeVC.with_wp (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x0
@x1)))))
 

:pattern ((OPLSS2021.ValeVC.inst_Add @x0
@x1))
:qid typing_OPLSS2021.ValeVC.inst_Add))

:named typing_OPLSS2021.ValeVC.inst_Add))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(159,4-159,14); use=OPLSS2021.ValeVC.fst(159,4-159,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(161,14-161,34); use=OPLSS2021.ValeVC.fst(161,14-161,34)
(Valid 
;; def=OPLSS2021.ValeVC.fst(161,14-161,34); use=OPLSS2021.ValeVC.fst(161,14-161,34)
(OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3)
)

(HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.hasWp_Move @x0
@x1
@x2
@x3)
(Tm_refine_ac9f6c39206149075dcff645103141c8 @x0
@x1
@x3
@x2)))
 

:pattern ((OPLSS2021.ValeVC.hasWp_Move @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.hasWp_Move))

:named typing_OPLSS2021.ValeVC.hasWp_Move))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(180,4-180,13); use=OPLSS2021.ValeVC.fst(180,4-180,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(182,14-182,33); use=OPLSS2021.ValeVC.fst(182,14-182,33)
(Valid 
;; def=OPLSS2021.ValeVC.fst(182,14-182,33); use=OPLSS2021.ValeVC.fst(182,14-182,33)
(OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3)
)

(HasType @x0
OPLSS2021.Vale.operand)
(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x3
OPLSS2021.Vale.state))
(HasType (OPLSS2021.ValeVC.hasWp_Add @x0
@x1
@x2
@x3)
(Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x0
@x1
@x3
@x2)))
 

:pattern ((OPLSS2021.ValeVC.hasWp_Add @x0
@x1
@x2
@x3))
:qid typing_OPLSS2021.ValeVC.hasWp_Add))

:named typing_OPLSS2021.ValeVC.hasWp_Add))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name OPLSS2021.Vale.codes_Triple; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(230,4-230,16); use=OPLSS2021.Vale.fst(230,4-230,16)
(forall ((@u0 Dummy_sort))
 (! (HasType (OPLSS2021.Vale.codes_Triple @u0)
(Prims.list OPLSS2021.Vale.code))
 

:pattern ((OPLSS2021.Vale.codes_Triple @u0))
:qid typing_OPLSS2021.Vale.codes_Triple))

:named typing_OPLSS2021.Vale.codes_Triple))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,4-151,11); use=OPLSS2021.ValeVC.fst(151,4-151,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Move@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.wp_Move @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Move@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.wp_Move))

:named token_correspondence_OPLSS2021.ValeVC.wp_Move))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(173,4-173,10); use=OPLSS2021.ValeVC.fst(173,4-173,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Add@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.wp_Add @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Add@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.wp_Add))

:named token_correspondence_OPLSS2021.ValeVC.wp_Add))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(159,4-159,14); use=OPLSS2021.ValeVC.fst(159,4-159,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Move@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.hasWp_Move @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Move@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.hasWp_Move))

:named token_correspondence_OPLSS2021.ValeVC.hasWp_Move))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(180,4-180,13); use=OPLSS2021.ValeVC.fst(180,4-180,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Add@tok
@x0)
@x1)
@x2)
@x3)
(OPLSS2021.ValeVC.hasWp_Add @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Add@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_OPLSS2021.ValeVC.hasWp_Add))

:named token_correspondence_OPLSS2021.ValeVC.hasWp_Add))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.state_eq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(252,34-252,39); use=OPLSS2021.ValeVC.fst(252,34-252,39)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_b3c5a7af1b5524553dc82cef72baac45))

:named refinement_kinding_Tm_refine_b3c5a7af1b5524553dc82cef72baac45))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(160,9-160,23); use=OPLSS2021.ValeVC.fst(160,9-160,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_ac9f6c39206149075dcff645103141c8 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_ac9f6c39206149075dcff645103141c8 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_ac9f6c39206149075dcff645103141c8))

:named refinement_kinding_Tm_refine_ac9f6c39206149075dcff645103141c8))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(181,9-181,23); use=OPLSS2021.ValeVC.fst(181,9-181,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69))

:named refinement_kinding_Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.state_eq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(252,34-252,39); use=OPLSS2021.ValeVC.fst(252,34-252,39)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Tm_type)

;; def=OPLSS2021.ValeVC.fst(254,20-254,37); use=OPLSS2021.ValeVC.fst(254,20-254,37)
(implies (Valid @x1)

;; def=OPLSS2021.ValeVC.fst(254,26-254,37); use=OPLSS2021.ValeVC.fst(254,26-254,37)
(Valid 
;; def=OPLSS2021.ValeVC.fst(254,26-254,37); use=OPLSS2021.ValeVC.fst(254,26-254,37)
(FStar.FunctionalExtensionality.feq OPLSS2021.Vale.reg
Tm_abs_25286b0e73883168f2c2ebd191323c31
@x2
@x3)
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_b3c5a7af1b5524553dc82cef72baac45))

:named refinement_interpretation_Tm_refine_b3c5a7af1b5524553dc82cef72baac45))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(160,9-160,23); use=OPLSS2021.ValeVC.fst(160,9-160,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ac9f6c39206149075dcff645103141c8 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb6 @x1))

;; def=OPLSS2021.ValeVC.fst(162,29-162,85); use=OPLSS2021.ValeVC.fst(162,29-162,85)
(and 
;; def=OPLSS2021.ValeVC.fst(162,29-162,77); use=OPLSS2021.ValeVC.fst(162,29-162,77)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x2
@x3))
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))


;; def=OPLSS2021.ValeVC.fst(162,81-162,85); use=OPLSS2021.ValeVC.fst(162,81-162,85)
(Valid 
;; def=OPLSS2021.ValeVC.fst(162,81-162,85); use=OPLSS2021.ValeVC.fst(162,81-162,85)
(ApplyTT @x5
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
)
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ac9f6c39206149075dcff645103141c8 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_ac9f6c39206149075dcff645103141c8))

:named refinement_interpretation_Tm_refine_ac9f6c39206149075dcff645103141c8))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(181,9-181,23); use=OPLSS2021.ValeVC.fst(181,9-181,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb6 @x1))

;; def=OPLSS2021.ValeVC.fst(183,29-183,85); use=OPLSS2021.ValeVC.fst(183,29-183,85)
(and 
;; def=OPLSS2021.ValeVC.fst(183,29-183,77); use=OPLSS2021.ValeVC.fst(183,29-183,77)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x2
@x3))
(FStar.Pervasives.Native.Mktuple2__2 @lb6)
@x4)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb6)))


;; def=OPLSS2021.ValeVC.fst(183,81-183,85); use=OPLSS2021.ValeVC.fst(183,81-183,85)
(Valid 
;; def=OPLSS2021.ValeVC.fst(183,81-183,85); use=OPLSS2021.ValeVC.fst(183,81-183,85)
(ApplyTT @x5
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
)
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69))

:named refinement_interpretation_Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69))
;;; Fact-ids: Name Prims.op_Multiply; Namespace Prims
(assert (! 
;; def=Prims.fst(540,4-540,15); use=Prims.fst(540,4-540,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_Multiply @x0
@x1)
(BoxInt (* (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_Multiply @x0
@x1))
:qid primitive_Prims.op_Multiply))

:named primitive_Prims.op_Multiply))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e288c47bc244090218899e0dc9ac77bc
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_e288c47bc244090218899e0dc9ac77bc
Tm_type)
:named kinding_Tm_arrow_e288c47bc244090218899e0dc9ac77bc))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404
Tm_type)
:named kinding_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! (HasType Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a
Tm_type)
:named kinding_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b3c5a7af1b5524553dc82cef72baac45
;;; Fact-ids: Name OPLSS2021.ValeVC.state_eq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(252,34-252,39); use=OPLSS2021.ValeVC.fst(252,34-252,39)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x0
@x1)))
(Valid (Prims.hasEq Tm_type)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b3c5a7af1b5524553dc82cef72baac45 @x0
@x1))))
:qid haseqTm_refine_b3c5a7af1b5524553dc82cef72baac45))

:named haseqTm_refine_b3c5a7af1b5524553dc82cef72baac45))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ac9f6c39206149075dcff645103141c8
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(160,9-160,23); use=OPLSS2021.ValeVC.fst(160,9-160,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ac9f6c39206149075dcff645103141c8 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ac9f6c39206149075dcff645103141c8 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_ac9f6c39206149075dcff645103141c8))

:named haseqTm_refine_ac9f6c39206149075dcff645103141c8))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(181,9-181,23); use=OPLSS2021.ValeVC.fst(181,9-181,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_1a22cf6d64ffab96a93efc5166aa6d69))

:named haseqTm_refine_1a22cf6d64ffab96a93efc5166aa6d69))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,4-151,11); use=OPLSS2021.ValeVC.fst(151,4-151,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.wp_Move@tok
Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))

;; def=OPLSS2021.ValeVC.fst(151,4-151,11); use=OPLSS2021.ValeVC.fst(151,4-151,11)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Move@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.wp_Move @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.wp_Move @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.wp_Move.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.wp_Move@tok))
:qid function_token_typing_OPLSS2021.ValeVC.wp_Move))

:named function_token_typing_OPLSS2021.ValeVC.wp_Move))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(173,4-173,10); use=OPLSS2021.ValeVC.fst(173,4-173,10)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.wp_Add@tok
Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))

;; def=OPLSS2021.ValeVC.fst(173,4-173,10); use=OPLSS2021.ValeVC.fst(173,4-173,10)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Add@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.wp_Add @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.wp_Add @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.wp_Add.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.wp_Add@tok))
:qid function_token_typing_OPLSS2021.ValeVC.wp_Add))

:named function_token_typing_OPLSS2021.ValeVC.wp_Add))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(159,4-159,14); use=OPLSS2021.ValeVC.fst(159,4-159,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.hasWp_Move@tok
Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))

;; def=OPLSS2021.ValeVC.fst(159,4-159,14); use=OPLSS2021.ValeVC.fst(159,4-159,14)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Move@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.hasWp_Move @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.hasWp_Move @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.hasWp_Move.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.hasWp_Move@tok))
:qid function_token_typing_OPLSS2021.ValeVC.hasWp_Move))

:named function_token_typing_OPLSS2021.ValeVC.hasWp_Move))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(180,4-180,13); use=OPLSS2021.ValeVC.fst(180,4-180,13)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType OPLSS2021.ValeVC.hasWp_Add@tok
Tm_arrow_e288c47bc244090218899e0dc9ac77bc))

;; def=OPLSS2021.ValeVC.fst(180,4-180,13); use=OPLSS2021.ValeVC.fst(180,4-180,13)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Add@tok
@x1)
@x2)
@x3)
@x4)
(OPLSS2021.ValeVC.hasWp_Add @x1
@x2
@x3
@x4))
 

:pattern ((OPLSS2021.ValeVC.hasWp_Add @x1
@x2
@x3
@x4))
:qid function_token_typing_OPLSS2021.ValeVC.hasWp_Add.1))
)
 

:pattern ((ApplyTT @x0
OPLSS2021.ValeVC.hasWp_Add@tok))
:qid function_token_typing_OPLSS2021.ValeVC.hasWp_Add))

:named function_token_typing_OPLSS2021.ValeVC.hasWp_Add))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.vc_sound_norm
;;; Fact-ids: Name OPLSS2021.ValeVC.vc_sound_norm; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(214,4-214,17); use=OPLSS2021.ValeVC.fst(214,4-214,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.vc_sound_norm @x0
@x1
@x2
@x3)
(OPLSS2021.ValeVC.vc_sound @x0
@x1
@x2
@x3))
 

:pattern ((OPLSS2021.ValeVC.vc_sound_norm @x0
@x1
@x2
@x3))
:qid equation_OPLSS2021.ValeVC.vc_sound_norm))

:named equation_OPLSS2021.ValeVC.vc_sound_norm))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.state_eq
;;; Fact-ids: Name OPLSS2021.ValeVC.state_eq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(252,4-252,12); use=OPLSS2021.ValeVC.fst(252,4-252,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (OPLSS2021.ValeVC.state_eq @x0
@x1))

;; def=OPLSS2021.ValeVC.fst(256,2-259,18); use=OPLSS2021.ValeVC.fst(256,2-259,18)
(and 
;; def=OPLSS2021.ValeVC.fst(256,2-256,18); use=OPLSS2021.ValeVC.fst(256,2-256,18)
(= (ApplyTT @x0
OPLSS2021.Vale.Rax@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rax@tok))


;; def=OPLSS2021.ValeVC.fst(257,2-257,18); use=OPLSS2021.ValeVC.fst(257,2-257,18)
(= (ApplyTT @x0
OPLSS2021.Vale.Rbx@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rbx@tok))


;; def=OPLSS2021.ValeVC.fst(258,2-258,18); use=OPLSS2021.ValeVC.fst(258,2-258,18)
(= (ApplyTT @x0
OPLSS2021.Vale.Rcx@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rcx@tok))


;; def=OPLSS2021.ValeVC.fst(259,2-259,18); use=OPLSS2021.ValeVC.fst(259,2-259,18)
(= (ApplyTT @x0
OPLSS2021.Vale.Rdx@tok)
(ApplyTT @x1
OPLSS2021.Vale.Rdx@tok))
)
)
 

:pattern ((OPLSS2021.ValeVC.state_eq @x0
@x1))
:qid equation_OPLSS2021.ValeVC.state_eq))

:named equation_OPLSS2021.ValeVC.state_eq))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.inst_Triple
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Triple; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(231,4-231,15); use=OPLSS2021.ValeVC.fst(231,4-231,15)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=OPLSS2021.ValeVC.fst(231,4-231,15); use=OPLSS2021.ValeVC.fst(231,4-231,15)
(OPLSS2021.ValeVC.inst_Triple @u0)

(OPLSS2021.ValeVC.QSeq (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)))
(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)))
(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)))
(Prims.Nil OPLSS2021.Vale.code)))
(OPLSS2021.ValeVC.inst_Move (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok))
(OPLSS2021.ValeVC.QSeq (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)))
(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)))
(Prims.Nil OPLSS2021.Vale.code))
(OPLSS2021.ValeVC.inst_Add (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok))
(OPLSS2021.ValeVC.QSeq (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)))
(Prims.Nil OPLSS2021.Vale.code)
(OPLSS2021.ValeVC.inst_Add (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok))
OPLSS2021.ValeVC.QEmpty@tok))))
 

:pattern (
;; def=OPLSS2021.ValeVC.fst(231,4-231,15); use=OPLSS2021.ValeVC.fst(231,4-231,15)
(OPLSS2021.ValeVC.inst_Triple @u0)
)
:qid equation_OPLSS2021.ValeVC.inst_Triple))

:named equation_OPLSS2021.ValeVC.inst_Triple))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.inst_Move
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(166,4-166,13); use=OPLSS2021.ValeVC.fst(166,4-166,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.inst_Move @x0
@x1)
(OPLSS2021.ValeVC.QProc (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 @x0
@x1))
(ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Move@tok
@x0)
@x1)
(ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Move@tok
@x0)
@x1)))
 

:pattern ((OPLSS2021.ValeVC.inst_Move @x0
@x1))
:qid equation_OPLSS2021.ValeVC.inst_Move))

:named equation_OPLSS2021.ValeVC.inst_Move))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.inst_Add
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(187,4-187,12); use=OPLSS2021.ValeVC.fst(187,4-187,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (OPLSS2021.ValeVC.inst_Add @x0
@x1)
(OPLSS2021.ValeVC.QProc (OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 @x0
@x1))
(ApplyTT (ApplyTT OPLSS2021.ValeVC.wp_Add@tok
@x0)
@x1)
(ApplyTT (ApplyTT OPLSS2021.ValeVC.hasWp_Add@tok
@x0)
@x1)))
 

:pattern ((OPLSS2021.ValeVC.inst_Add @x0
@x1))
:qid equation_OPLSS2021.ValeVC.inst_Add))

:named equation_OPLSS2021.ValeVC.inst_Add))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.hasWp_Move
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(159,4-159,14); use=OPLSS2021.ValeVC.fst(159,4-159,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.hasWp_Move @x0
@x1
@x2
@x3)
(OPLSS2021.Vale.lemma_Move @x3
@x0
@x1))
 

:pattern ((OPLSS2021.ValeVC.hasWp_Move @x0
@x1
@x2
@x3))
:qid equation_OPLSS2021.ValeVC.hasWp_Move))

:named equation_OPLSS2021.ValeVC.hasWp_Move))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.ValeVC.hasWp_Add
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(180,4-180,13); use=OPLSS2021.ValeVC.fst(180,4-180,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (OPLSS2021.ValeVC.hasWp_Add @x0
@x1
@x2
@x3)
(OPLSS2021.Vale.lemma_Add @x3
@x0
@x1))
 

:pattern ((OPLSS2021.ValeVC.hasWp_Add @x0
@x1
@x2
@x3))
:qid equation_OPLSS2021.ValeVC.hasWp_Add))

:named equation_OPLSS2021.ValeVC.hasWp_Add))
;;;;;;;;;;;;;;;;Equation for OPLSS2021.Vale.codes_Triple
;;; Fact-ids: Name OPLSS2021.Vale.codes_Triple; Namespace OPLSS2021.Vale
(assert (! 
;; def=OPLSS2021.Vale.fst(230,4-230,16); use=OPLSS2021.Vale.fst(230,4-230,16)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=OPLSS2021.Vale.fst(230,4-230,16); use=OPLSS2021.Vale.fst(230,4-230,16)
(OPLSS2021.Vale.codes_Triple @u0)

(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Mov64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)))
(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)))
(Prims.Cons OPLSS2021.Vale.code
(OPLSS2021.Vale.Ins (OPLSS2021.Vale.Add64 (OPLSS2021.Vale.OReg OPLSS2021.Vale.Rbx@tok)
(OPLSS2021.Vale.OReg OPLSS2021.Vale.Rax@tok)))
(Prims.Nil OPLSS2021.Vale.code)))))
 

:pattern (
;; def=OPLSS2021.Vale.fst(230,4-230,16); use=OPLSS2021.Vale.fst(230,4-230,16)
(OPLSS2021.Vale.codes_Triple @u0)
)
:qid equation_OPLSS2021.Vale.codes_Triple))

:named equation_OPLSS2021.Vale.codes_Triple))
;;;;;;;;;;;;;;;;Prop-typing for OPLSS2021.ValeVC.state_eq
;;; Fact-ids: Name OPLSS2021.ValeVC.state_eq; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(252,4-252,12); use=OPLSS2021.ValeVC.fst(252,4-252,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
OPLSS2021.Vale.state)
(HasType @x1
OPLSS2021.Vale.state))
(Valid (Prims.subtype_of (OPLSS2021.ValeVC.state_eq @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (OPLSS2021.ValeVC.state_eq @x0
@x1)
Prims.unit))
:qid defn_equation_OPLSS2021.ValeVC.state_eq))

:named defn_equation_OPLSS2021.ValeVC.state_eq))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(180,19-181,23); use=OPLSS2021.ValeVC.fst(180,19-181,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_e288c47bc244090218899e0dc9ac77bc)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_e288c47bc244090218899e0dc9ac77bc))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_e288c47bc244090218899e0dc9ac77bc))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_e288c47bc244090218899e0dc9ac77bc))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(159,20-160,23); use=OPLSS2021.ValeVC.fst(159,20-160,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,17-152,8); use=OPLSS2021.ValeVC.fst(151,17-152,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))
:qid OPLSS2021.ValeVC_pre_typing_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))

:named OPLSS2021.ValeVC_pre_typing_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Add; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(180,19-181,23); use=OPLSS2021.ValeVC.fst(180,19-181,23)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_e288c47bc244090218899e0dc9ac77bc)
(and 
;; def=OPLSS2021.ValeVC.fst(180,19-181,23); use=OPLSS2021.ValeVC.fst(180,19-181,23)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(182,14-182,33); use=OPLSS2021.ValeVC.fst(182,14-182,33)
(Valid 
;; def=OPLSS2021.ValeVC.fst(182,14-182,33); use=OPLSS2021.ValeVC.fst(182,14-182,33)
(OPLSS2021.ValeVC.wp_Add @x1
@x2
@x3
@x4)
)

(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand)
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
OPLSS2021.Vale.state))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(Tm_refine_1a22cf6d64ffab96a93efc5166aa6d69 @x1
@x2
@x4
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(180,19-181,23); use=OPLSS2021.ValeVC.fst(180,19-181,23)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.operand)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc.2))


;; def=OPLSS2021.ValeVC.fst(180,19-181,23); use=OPLSS2021.ValeVC.fst(180,19-181,23)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc.3))


;; def=OPLSS2021.ValeVC.fst(180,19-181,23); use=OPLSS2021.ValeVC.fst(180,19-181,23)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand)
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_e288c47bc244090218899e0dc9ac77bc))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_e288c47bc244090218899e0dc9ac77bc))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404
;;; Fact-ids: Name OPLSS2021.ValeVC.hasWp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(159,20-160,23); use=OPLSS2021.ValeVC.fst(159,20-160,23)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404)
(and 
;; def=OPLSS2021.ValeVC.fst(159,20-160,23); use=OPLSS2021.ValeVC.fst(159,20-160,23)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and 
;; def=OPLSS2021.ValeVC.fst(161,14-161,34); use=OPLSS2021.ValeVC.fst(161,14-161,34)
(Valid 
;; def=OPLSS2021.ValeVC.fst(161,14-161,34); use=OPLSS2021.ValeVC.fst(161,14-161,34)
(OPLSS2021.ValeVC.wp_Move @x1
@x2
@x3
@x4)
)

(HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand)
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
OPLSS2021.Vale.state))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
(Tm_refine_ac9f6c39206149075dcff645103141c8 @x1
@x2
@x4
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(159,20-160,23); use=OPLSS2021.ValeVC.fst(159,20-160,23)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.operand)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404.2))


;; def=OPLSS2021.ValeVC.fst(159,20-160,23); use=OPLSS2021.ValeVC.fst(159,20-160,23)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404.3))


;; def=OPLSS2021.ValeVC.fst(159,20-160,23); use=OPLSS2021.ValeVC.fst(159,20-160,23)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand)
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_c5c4520a6a0ab51cf907e829cdd38404))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a
;;; Fact-ids: Name OPLSS2021.ValeVC.wp_Move; Namespace OPLSS2021.ValeVC
(assert (! 
;; def=OPLSS2021.ValeVC.fst(151,17-152,8); use=OPLSS2021.ValeVC.fst(151,17-152,8)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a)
(and 
;; def=OPLSS2021.ValeVC.fst(151,17-152,8); use=OPLSS2021.ValeVC.fst(151,17-152,8)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand)
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
(HasType @x4
OPLSS2021.Vale.state))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
Prims.prop))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a.1))

(IsTotFun @x0)

;; def=OPLSS2021.ValeVC.fst(151,17-152,8); use=OPLSS2021.ValeVC.fst(151,17-152,8)
(forall ((@x1 Term))
 (! (implies (HasType @x1
OPLSS2021.Vale.operand)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a.2))


;; def=OPLSS2021.ValeVC.fst(151,17-152,8); use=OPLSS2021.ValeVC.fst(151,17-152,8)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a.3))


;; def=OPLSS2021.ValeVC.fst(151,17-152,8); use=OPLSS2021.ValeVC.fst(151,17-152,8)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
OPLSS2021.Vale.operand)
(HasType @x2
OPLSS2021.Vale.operand)
(HasType @x3
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))
:qid OPLSS2021.ValeVC_interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))

:named OPLSS2021.ValeVC_interpretation_Tm_arrow_b8cd6fc5b41364ad4e708d2e6ac83f9a))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Move; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.hasWp_Move@tok))
:named @kick_partial_app_fccf80fc074cbe09ec101787ea607da3))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Move; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.wp_Move@tok))
:named @kick_partial_app_9bf9c1ccc8a9025418e9125d1cbe9d4d))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Add; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.hasWp_Add@tok))
:named @kick_partial_app_2986b083a4933b98ddff4f4407a9a162))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name OPLSS2021.ValeVC.inst_Add; Namespace OPLSS2021.ValeVC
(assert (! (Valid (ApplyTT __uu__PartialApp
OPLSS2021.ValeVC.wp_Add@tok))
:named @kick_partial_app_19ff4ecc609cd150d9e6cadc95452ec7))
(push) ;; push{2

; Starting query at OPLSS2021.ValeVC.fst(271,2-275,6)

(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

(declare-fun Tm_abs_04fd4788357e04354aa7d49acc61f2d6 (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_04fd4788357e04354aa7d49acc61f2d6
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(274,15-274,97); use=OPLSS2021.ValeVC.fst(274,15-274,97)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_04fd4788357e04354aa7d49acc61f2d6 @x0)
Tm_arrow_fc586045ea2c1e3e8c4a7f2090bf8867)
 

:pattern ((Tm_abs_04fd4788357e04354aa7d49acc61f2d6 @x0))
:qid typing_Tm_abs_04fd4788357e04354aa7d49acc61f2d6))

:named typing_Tm_abs_04fd4788357e04354aa7d49acc61f2d6))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_04fd4788357e04354aa7d49acc61f2d6
;;; Fact-ids: 
(assert (! 
;; def=OPLSS2021.ValeVC.fst(274,15-274,97); use=OPLSS2021.ValeVC.fst(274,15-274,97)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_04fd4788357e04354aa7d49acc61f2d6 @x1)
@x0)
(Prims.l_and (Prims.eq2 Prims.int
(ApplyTT @x0
OPLSS2021.Vale.Rbx@tok)
(Prims.op_Multiply (BoxInt 3)
(ApplyTT @x1
OPLSS2021.Vale.Rax@tok)))
(OPLSS2021.ValeVC.state_eq @x0
(OPLSS2021.Vale.update_state OPLSS2021.Vale.Rax@tok
@x0
(OPLSS2021.Vale.update_state OPLSS2021.Vale.Rbx@tok
@x0
@x1)))))
 

:pattern ((ApplyTT (Tm_abs_04fd4788357e04354aa7d49acc61f2d6 @x1)
@x0))
:qid interpretation_Tm_abs_04fd4788357e04354aa7d49acc61f2d6))

:named interpretation_Tm_abs_04fd4788357e04354aa7d49acc61f2d6))



; Encoding query formula : forall (s0: OPLSS2021.Vale.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post (OPLSS2021.Vale.state & OPLSS2021.Vale.fuel)).
;     s0 OPLSS2021.Vale.Rax < 100 /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sM, f0 = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block OPLSS2021.Vale.codes_Triple) f0 s0 ==
;           FStar.Pervasives.Native.Some sM /\ sM OPLSS2021.Vale.Rbx == 3 * s0 OPLSS2021.Vale.Rax /\
;           FStar.FunctionalExtensionality.feq sM
;             (OPLSS2021.Vale.update_state OPLSS2021.Vale.Rbx
;                 sM
;                 (OPLSS2021.Vale.update_state OPLSS2021.Vale.Rax sM s0))) ==>
;         p pure_result) ==>
;     (forall (x: OPLSS2021.Vale.nat64).
;         x == s0 OPLSS2021.Vale.Rax ==>
;         s0 OPLSS2021.Vale.Rax + x < OPLSS2021.Vale.pow2_64 /\
;         (forall (x: OPLSS2021.Vale.nat64).
;             x == s0 OPLSS2021.Vale.Rax + x ==>
;             x + x < OPLSS2021.Vale.pow2_64 /\
;             (forall (x: OPLSS2021.Vale.nat64). x == x + x ==> x == 3 * s0 OPLSS2021.Vale.Rax))) /\
;     (forall (pure_result: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;         (let sN, fN = pure_result in
;           OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block OPLSS2021.Vale.codes_Triple) fN s0 ==
;           FStar.Pervasives.Native.Some sN /\
;           (sN OPLSS2021.Vale.Rbx == 3 * s0 OPLSS2021.Vale.Rax) /\
;           OPLSS2021.ValeVC.state_eq sN
;             (OPLSS2021.Vale.update_state OPLSS2021.Vale.Rax
;                 sN
;                 (OPLSS2021.Vale.update_state OPLSS2021.Vale.Rbx sN s0))) ==>
;         pure_result ==
;         OPLSS2021.ValeVC.vc_sound_norm OPLSS2021.Vale.codes_Triple
;           OPLSS2021.ValeVC.inst_Triple
;           (fun sM ->
;               sM OPLSS2021.Vale.Rbx == 3 * s0 OPLSS2021.Vale.Rax /\
;               OPLSS2021.ValeVC.state_eq sM
;                 (OPLSS2021.Vale.update_state OPLSS2021.Vale.Rax
;                     sM
;                     (OPLSS2021.Vale.update_state OPLSS2021.Vale.Rbx sM s0)))
;           s0 ==>
;         (forall (return_val: OPLSS2021.Vale.state & OPLSS2021.Vale.fuel).
;             return_val == pure_result ==> p return_val))


; Context: While encoding a query
; While typechecking the top-level declaration `let lemma_Triple_opt`

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
OPLSS2021.Vale.state)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post (FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))

;; def=OPLSS2021.ValeVC.fst(264,6-264,18); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(< (BoxInt_proj_0 (ApplyTT @x0
OPLSS2021.Vale.Rax@tok))
(BoxInt_proj_0 (BoxInt 100)))


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel)))
(let ((@lb3 @x2))

;; def=OPLSS2021.ValeVC.fst(266,6-268,59); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(and 
;; def=OPLSS2021.ValeVC.fst(266,6-266,53); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(or label_2

;; def=OPLSS2021.ValeVC.fst(266,6-266,53); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block (OPLSS2021.Vale.codes_Triple Dummy_value))
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
@x0)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb3)))
)


;; def=OPLSS2021.ValeVC.fst(267,6-267,26); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(or label_3

;; def=OPLSS2021.ValeVC.fst(267,6-267,26); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(= (ApplyTT (FStar.Pervasives.Native.Mktuple2__1 @lb3)
OPLSS2021.Vale.Rbx@tok)
(Prims.op_Multiply (BoxInt 3)
(ApplyTT @x0
OPLSS2021.Vale.Rax@tok)))
)


;; def=OPLSS2021.ValeVC.fst(268,6-268,59); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(or label_4

;; def=OPLSS2021.ValeVC.fst(268,6-268,59); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(Valid 
;; def=OPLSS2021.ValeVC.fst(268,6-268,59); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(FStar.FunctionalExtensionality.feq OPLSS2021.Vale.reg
Tm_abs_25286b0e73883168f2c2ebd191323c31
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
(OPLSS2021.Vale.update_state OPLSS2021.Vale.Rbx@tok
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
(OPLSS2021.Vale.update_state OPLSS2021.Vale.Rax@tok
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
@x0)))
)
)
)
))

;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(and 
;; def=OPLSS2021.ValeVC.fst(153,14-153,16); use=OPLSS2021.ValeVC.fst(153,14-153,16)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.ValeVC.fst(156,26-156,28); use=OPLSS2021.ValeVC.fst(156,26-156,28)
(= @x2
(ApplyTT @x0
OPLSS2021.Vale.Rax@tok))
)

;; def=OPLSS2021.ValeVC.fst(174,67-174,69); use=OPLSS2021.ValeVC.fst(174,67-174,69)
(and 
;; def=OPLSS2021.ValeVC.fst(174,12-174,14); use=OPLSS2021.ValeVC.fst(174,12-174,14)
(or label_5

;; def=OPLSS2021.ValeVC.fst(174,12-174,14); use=OPLSS2021.ValeVC.fst(174,12-174,14)
(< (BoxInt_proj_0 (Prims.op_Addition (ApplyTT @x0
OPLSS2021.Vale.Rax@tok)
@x2))
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))
)


;; def=OPLSS2021.ValeVC.fst(175,10-175,19); use=OPLSS2021.ValeVC.fst(175,10-175,19)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.ValeVC.fst(177,24-177,26); use=OPLSS2021.ValeVC.fst(177,24-177,26)
(= @x3
(Prims.op_Addition (ApplyTT @x0
OPLSS2021.Vale.Rax@tok)
@x2))
)

;; def=OPLSS2021.ValeVC.fst(174,67-174,69); use=OPLSS2021.ValeVC.fst(174,67-174,69)
(and 
;; def=OPLSS2021.ValeVC.fst(174,12-174,14); use=OPLSS2021.ValeVC.fst(174,12-174,14)
(or label_6

;; def=OPLSS2021.ValeVC.fst(174,12-174,14); use=OPLSS2021.ValeVC.fst(174,12-174,14)
(< (BoxInt_proj_0 (Prims.op_Addition @x2
@x3))
(BoxInt_proj_0 (OPLSS2021.Vale.pow2_64 Dummy_value)))
)


;; def=OPLSS2021.ValeVC.fst(175,10-175,19); use=OPLSS2021.ValeVC.fst(175,10-175,19)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
OPLSS2021.Vale.nat64)

;; def=OPLSS2021.ValeVC.fst(177,24-177,26); use=OPLSS2021.ValeVC.fst(177,24-177,26)
(= @x4
(Prims.op_Addition @x2
@x3))
)

;; def=OPLSS2021.ValeVC.fst(274,36-274,38); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(or label_7

;; def=OPLSS2021.ValeVC.fst(274,36-274,38); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(= @x4
(Prims.op_Multiply (BoxInt 3)
(ApplyTT @x0
OPLSS2021.Vale.Rax@tok)))
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
:qid @query.3))


;; def=Prims.fst(441,36-441,97); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))
(let ((@lb3 @x2))

;; def=OPLSS2021.ValeVC.fst(223,6-223,51); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(and 
;; def=OPLSS2021.ValeVC.fst(223,6-223,43); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(= (OPLSS2021.Vale.eval_code (OPLSS2021.Vale.Block (OPLSS2021.Vale.codes_Triple Dummy_value))
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
@x0)
(FStar.Pervasives.Native.Some OPLSS2021.Vale.state
(FStar.Pervasives.Native.Mktuple2__1 @lb3)))


;; def=OPLSS2021.ValeVC.fst(274,15-274,35); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(= (ApplyTT (FStar.Pervasives.Native.Mktuple2__1 @lb3)
OPLSS2021.Vale.Rbx@tok)
(Prims.op_Multiply (BoxInt 3)
(ApplyTT @x0
OPLSS2021.Vale.Rax@tok)))


;; def=OPLSS2021.ValeVC.fst(274,39-274,97); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(Valid 
;; def=OPLSS2021.ValeVC.fst(274,39-274,97); use=OPLSS2021.ValeVC.fst(271,2-271,15)
(OPLSS2021.ValeVC.state_eq (FStar.Pervasives.Native.Mktuple2__1 @lb3)
(OPLSS2021.Vale.update_state OPLSS2021.Vale.Rax@tok
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
(OPLSS2021.Vale.update_state OPLSS2021.Vale.Rbx@tok
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
@x0)))
)
)
)

;; def=OPLSS2021.ValeVC.fst(262,9-275,6); use=OPLSS2021.ValeVC.fst(271,2-275,6)
(= @x2
(OPLSS2021.ValeVC.vc_sound_norm (OPLSS2021.Vale.codes_Triple Dummy_value)
(OPLSS2021.ValeVC.inst_Triple Dummy_value)
(Tm_abs_04fd4788357e04354aa7d49acc61f2d6 @x0)
@x0))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(FStar.Pervasives.Native.tuple2 OPLSS2021.Vale.state
OPLSS2021.Vale.fuel))

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x3
@x2)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x1
@x3)
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
; QUERY ID: (OPLSS2021.ValeVC.lemma_Triple_opt, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, OPLSS2021.Vale_pretyping_38bfc0c987351cdd198f2fc697e674bf, constructor_distinct_OPLSS2021.Vale.Rax, constructor_distinct_OPLSS2021.Vale.Rbx, data_elim_FStar.Pervasives.Native.Mktuple2, equality_tok_OPLSS2021.Vale.Rax@tok, equality_tok_OPLSS2021.Vale.Rbx@tok, equality_tok_OPLSS2021.Vale.Rdx@tok, equation_FStar.FunctionalExtensionality.feq, equation_OPLSS2021.Vale.fuel, equation_OPLSS2021.Vale.nat64, equation_OPLSS2021.Vale.pow2_64, equation_OPLSS2021.Vale.state, equation_OPLSS2021.Vale.update_reg, equation_OPLSS2021.Vale.update_state, equation_OPLSS2021.ValeVC.state_eq, equation_Prims.nat, fuel_guarded_inversion_FStar.Pervasives.Native.tuple2, int_inversion, interpretation_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_Multiply, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_b3c5a7af1b5524553dc82cef72baac45, refinement_interpretation_Tm_refine_c5c5dd75ebebb1f25581102c583fe79e, typing_OPLSS2021.ValeVC.state_eq, typing_Tm_abs_8faaca484d7f2c70ef2d5458c2bc4e63, typing_tok_OPLSS2021.Vale.Rdx@tok
