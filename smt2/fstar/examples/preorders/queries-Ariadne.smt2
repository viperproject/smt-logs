
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


; Externals for module FStar.Preorder


; <Start encoding let relation>

(declare-fun FStar.Preorder.relation (Term) Term)

(declare-fun FStar.Preorder.relation@tok () Term)
(declare-fun Tm_arrow_a19f9d49348d4e0038f0ded87d87802f (Term) Term)

; </end encoding let relation>


; <Start encoding let predicate>

(declare-fun FStar.Preorder.predicate (Term) Term)

(declare-fun FStar.Preorder.predicate@tok () Term)


; </end encoding let predicate>


; <Start encoding let reflexive>

(declare-fun FStar.Preorder.reflexive (Term Term) Term)
(declare-fun Tm_arrow_8e677a33afbeb812aa3779b7bdd0131c () Term)
(declare-fun FStar.Preorder.reflexive@tok () Term)

; </end encoding let reflexive>


; <Start encoding let transitive>

(declare-fun FStar.Preorder.transitive (Term Term) Term)

(declare-fun FStar.Preorder.transitive@tok () Term)

; </end encoding let transitive>


; <Start encoding let preorder_rel>

(declare-fun FStar.Preorder.preorder_rel (Term Term) Term)

(declare-fun FStar.Preorder.preorder_rel@tok () Term)

; </end encoding let preorder_rel>


; <Start encoding let preorder>

(declare-fun FStar.Preorder.preorder (Term) Term)

(declare-fun FStar.Preorder.preorder@tok () Term)
(declare-fun Tm_refine_bd10f09297e0e7dc08314f7d9211801c (Term) Term)

; </end encoding let preorder>


; <Start encoding let stable>


(declare-fun FStar.Preorder.stable (Term Term Term) Term)

(declare-fun Tm_arrow_88036d0811eee3361efd6229bae2556d () Term)
(declare-fun FStar.Preorder.stable@tok () Term)


; </end encoding let stable>


; End Externals for module FStar.Preorder


; Externals for interface FStar.Set


; <Skipped #set-options "--initial_fuel 0 --max_fuel 0 --initial_ifuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Set.set>

(declare-fun FStar.Set.set (Term) Term)

(declare-fun FStar.Set.set@tok () Term)

; </end encoding val FStar.Set.set>


; <Start encoding val FStar.Set.equal>

(declare-fun FStar.Set.equal (Term Term Term) Term)
(declare-fun Tm_arrow_3c4f6e4cf547bd34ec8e06fa6c99957f () Term)
(declare-fun FStar.Set.equal@tok () Term)

; </end encoding val FStar.Set.equal>


; <Start encoding val FStar.Set.mem>

(declare-fun FStar.Set.mem (Term Term Term) Term)
(declare-fun Tm_arrow_3622740f6f31d7fd022d9da9e7023a5e () Term)
(declare-fun FStar.Set.mem@tok () Term)

; </end encoding val FStar.Set.mem>


; <Start encoding val FStar.Set.empty>

(declare-fun FStar.Set.empty (Term) Term)
(declare-fun Tm_arrow_8126140804a823c0abf765b538511539 () Term)
(declare-fun FStar.Set.empty@tok () Term)

; </end encoding val FStar.Set.empty>


; <Start encoding val FStar.Set.singleton>

(declare-fun FStar.Set.singleton (Term Term) Term)
(declare-fun Tm_arrow_764304f899737575fb0645eff5d55885 () Term)
(declare-fun FStar.Set.singleton@tok () Term)

; </end encoding val FStar.Set.singleton>


; <Start encoding val FStar.Set.union>

(declare-fun FStar.Set.union (Term Term Term) Term)
(declare-fun Tm_arrow_7571f855c31e3c10cb35bbdc0f3ae878 () Term)
(declare-fun FStar.Set.union@tok () Term)

; </end encoding val FStar.Set.union>


; <Start encoding val FStar.Set.intersect>

(declare-fun FStar.Set.intersect (Term Term Term) Term)

(declare-fun FStar.Set.intersect@tok () Term)

; </end encoding val FStar.Set.intersect>


; <Start encoding val FStar.Set.complement>

(declare-fun FStar.Set.complement (Term Term) Term)
(declare-fun Tm_arrow_4a14af1f2d9ff62069ebb44d0d1980f6 () Term)
(declare-fun FStar.Set.complement@tok () Term)

; </end encoding val FStar.Set.complement>


; <Start encoding val FStar.Set.intension>

(declare-fun Tm_arrow_84543425b818e2d10a976186b8e8c250 (Term) Term)
(declare-fun FStar.Set.intension (Term Term) Term)

(declare-fun Tm_ghost_arrow_04e42a5c0c55c36964ab6333a076e29e () Term)
(declare-fun FStar.Set.intension@tok () Term)

; </end encoding val FStar.Set.intension>


; <Start encoding let disjoint>

(declare-fun FStar.Set.disjoint (Term Term Term) Term)

(declare-fun FStar.Set.disjoint@tok () Term)

; </end encoding let disjoint>


; <Start encoding let subset>

(declare-fun FStar.Set.subset (Term Term Term) Term)
(declare-fun Tm_arrow_9a1bfd7a415bf0250a3dd161144f27fa () Term)
(declare-fun FStar.Set.subset@tok () Term)

; </end encoding let subset>


; <Start encoding let add>

(declare-fun FStar.Set.add (Term Term Term) Term)
(declare-fun Tm_arrow_3e561cbcf9b0a4b95f6e5d77760b40db () Term)
(declare-fun FStar.Set.add@tok () Term)

; </end encoding let add>


; <Start encoding let remove>

(declare-fun FStar.Set.remove (Term Term Term) Term)

(declare-fun FStar.Set.remove@tok () Term)

; </end encoding let remove>


; <Start encoding val FStar.Set.mem_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_empty@tok () Term)

; </end encoding val FStar.Set.mem_empty>


; <Start encoding val FStar.Set.mem_singleton>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_singleton (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_singleton@tok () Term)

; </end encoding val FStar.Set.mem_singleton>


; <Start encoding val FStar.Set.mem_union>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_union (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_union@tok () Term)

; </end encoding val FStar.Set.mem_union>


; <Start encoding val FStar.Set.mem_intersect>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_intersect (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_intersect@tok () Term)

; </end encoding val FStar.Set.mem_intersect>


; <Start encoding val FStar.Set.mem_complement>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_complement (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_complement@tok () Term)

; </end encoding val FStar.Set.mem_complement>


; <Start encoding val FStar.Set.mem_intension>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_intension (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_intension@tok () Term)

; </end encoding val FStar.Set.mem_intension>


; <Start encoding val FStar.Set.mem_subset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.mem_subset (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.mem_subset@tok () Term)

; </end encoding val FStar.Set.mem_subset>


; <Start encoding val FStar.Set.subset_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.subset_mem (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.subset_mem@tok () Term)

; </end encoding val FStar.Set.subset_mem>


; <Start encoding val FStar.Set.lemma_equal_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_equal_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_equal_intro@tok () Term)

; </end encoding val FStar.Set.lemma_equal_intro>


; <Start encoding val FStar.Set.lemma_equal_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_equal_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_equal_elim@tok () Term)

; </end encoding val FStar.Set.lemma_equal_elim>


; <Start encoding val FStar.Set.lemma_equal_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_equal_refl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_equal_refl@tok () Term)

; </end encoding val FStar.Set.lemma_equal_refl>


; <Start encoding val FStar.Set.disjoint_not_in_both>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.disjoint_not_in_both (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.disjoint_not_in_both@tok () Term)

; </end encoding val FStar.Set.disjoint_not_in_both>


; <Skipped #reset-options/>


; <Start encoding let rec as_set'>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Set.as_set_.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Set.as_set_.fuel_instrumented_token () Term)
(declare-fun FStar.Set.as_set_ (Term Term) Term)
(declare-fun FStar.Set.as_set_@tok () Term)
(declare-fun Tm_arrow_37c32948884378803a50151abdb3cb09 () Term)

; </end encoding let rec as_set'>


; <Start encoding let as_set>

(declare-fun FStar.Set.as_set (Term Term) Term)

(declare-fun FStar.Set.as_set@tok () Term)

; </end encoding let as_set>


; <Start encoding let lemma_disjoint_subset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Set.lemma_disjoint_subset (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Set.lemma_disjoint_subset@tok () Term)

; </end encoding let lemma_disjoint_subset>


; End Externals for interface FStar.Set


; Externals for interface FStar.Monotonic.Witnessed


; <Start encoding val FStar.Monotonic.Witnessed.witnessed>


(declare-fun FStar.Monotonic.Witnessed.witnessed (Term Term Term) Term)

(declare-fun Tm_arrow_d588830826b7a1087c9fd83547a14841 () Term)
(declare-fun FStar.Monotonic.Witnessed.witnessed@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.witnessed>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_weakening>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_weakening (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_weakening@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_weakening>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_constant>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_constant (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_constant@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_constant>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_nested>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_nested (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_nested@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_nested>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_and>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_and (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_and@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_and>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_or>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_or (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_or@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_or>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_impl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_impl (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_impl@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_impl>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_forall (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_forall@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_forall>


; <Start encoding val FStar.Monotonic.Witnessed.lemma_witnessed_exists>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_exists (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Witnessed.lemma_witnessed_exists@tok () Term)

; </end encoding val FStar.Monotonic.Witnessed.lemma_witnessed_exists>


; End Externals for interface FStar.Monotonic.Witnessed


; Externals for interface FStar.TSet


; <Skipped #set-options "--initial_fuel 0 --max_fuel 0 --initial_ifuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.TSet.set>

(declare-fun FStar.TSet.set (Term) Term)

(declare-fun FStar.TSet.set@tok () Term)

; </end encoding val FStar.TSet.set>


; <Start encoding val FStar.TSet.equal>

(declare-fun FStar.TSet.equal (Term Term Term) Term)
(declare-fun Tm_arrow_461adcd665973ea611b925a11158df2c () Term)
(declare-fun FStar.TSet.equal@tok () Term)

; </end encoding val FStar.TSet.equal>


; <Start encoding val FStar.TSet.mem>

(declare-fun FStar.TSet.mem (Term Term Term) Term)
(declare-fun Tm_arrow_6bd40494c735add94090089fc1560f3a () Term)
(declare-fun FStar.TSet.mem@tok () Term)

; </end encoding val FStar.TSet.mem>


; <Start encoding val FStar.TSet.empty>

(declare-fun FStar.TSet.empty (Term) Term)
(declare-fun Tm_arrow_7479bde908a771f633d91cf1e6159164 () Term)
(declare-fun FStar.TSet.empty@tok () Term)

; </end encoding val FStar.TSet.empty>


; <Start encoding val FStar.TSet.singleton>

(declare-fun FStar.TSet.singleton (Term Term) Term)
(declare-fun Tm_arrow_efd4130c737a1c63982cd396443713d5 () Term)
(declare-fun FStar.TSet.singleton@tok () Term)

; </end encoding val FStar.TSet.singleton>


; <Start encoding val FStar.TSet.union>

(declare-fun FStar.TSet.union (Term Term Term) Term)
(declare-fun Tm_arrow_3de58fd829d33d9d3ee6c709e8528481 () Term)
(declare-fun FStar.TSet.union@tok () Term)

; </end encoding val FStar.TSet.union>


; <Start encoding val FStar.TSet.intersect>

(declare-fun FStar.TSet.intersect (Term Term Term) Term)

(declare-fun FStar.TSet.intersect@tok () Term)

; </end encoding val FStar.TSet.intersect>


; <Start encoding val FStar.TSet.complement>

(declare-fun FStar.TSet.complement (Term Term) Term)
(declare-fun Tm_arrow_0bfcc001675666a8c38e138bf5ac4ee8 () Term)
(declare-fun FStar.TSet.complement@tok () Term)

; </end encoding val FStar.TSet.complement>


; <Start encoding val FStar.TSet.intension>

(declare-fun Tm_arrow_81e65de2755319ee661cc1adc7d951e3 (Term) Term)
(declare-fun FStar.TSet.intension (Term Term) Term)

(declare-fun Tm_arrow_43deeb1307894e15ad1446f8a75a5811 () Term)
(declare-fun FStar.TSet.intension@tok () Term)

; </end encoding val FStar.TSet.intension>


; <Start encoding let subset>

(declare-fun FStar.TSet.subset (Term Term Term) Term)
(declare-fun Tm_arrow_a884d17a435ad7c4eff639e843c2e915 () Term)
(declare-fun FStar.TSet.subset@tok () Term)

; </end encoding let subset>


; <Start encoding val FStar.TSet.mem_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_empty@tok () Term)

; </end encoding val FStar.TSet.mem_empty>


; <Start encoding val FStar.TSet.mem_singleton>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_singleton (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_singleton@tok () Term)

; </end encoding val FStar.TSet.mem_singleton>


; <Start encoding val FStar.TSet.mem_union>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_union (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_union@tok () Term)

; </end encoding val FStar.TSet.mem_union>


; <Start encoding val FStar.TSet.mem_intersect>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_intersect (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_intersect@tok () Term)

; </end encoding val FStar.TSet.mem_intersect>


; <Start encoding val FStar.TSet.mem_complement>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_complement (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_complement@tok () Term)

; </end encoding val FStar.TSet.mem_complement>


; <Start encoding val FStar.TSet.mem_subset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_subset (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_subset@tok () Term)

; </end encoding val FStar.TSet.mem_subset>


; <Start encoding val FStar.TSet.subset_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.subset_mem (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.subset_mem@tok () Term)

; </end encoding val FStar.TSet.subset_mem>


; <Start encoding val FStar.TSet.mem_intension>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.mem_intension (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.mem_intension@tok () Term)


; </end encoding val FStar.TSet.mem_intension>


; <Start encoding val FStar.TSet.lemma_equal_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.lemma_equal_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.lemma_equal_intro@tok () Term)

; </end encoding val FStar.TSet.lemma_equal_intro>


; <Start encoding val FStar.TSet.lemma_equal_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.lemma_equal_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.lemma_equal_elim@tok () Term)

; </end encoding val FStar.TSet.lemma_equal_elim>


; <Start encoding val FStar.TSet.lemma_equal_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.lemma_equal_refl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.lemma_equal_refl@tok () Term)

; </end encoding val FStar.TSet.lemma_equal_refl>


; <Start encoding val FStar.TSet.tset_of_set>

(declare-fun FStar.TSet.tset_of_set (Term Term) Term)
(declare-fun Tm_arrow_3cbed28ab0f3b752d3656db155a3e9f3 () Term)
(declare-fun FStar.TSet.tset_of_set@tok () Term)

; </end encoding val FStar.TSet.tset_of_set>


; <Start encoding val FStar.TSet.lemma_mem_tset_of_set>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.lemma_mem_tset_of_set (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.lemma_mem_tset_of_set@tok () Term)

; </end encoding val FStar.TSet.lemma_mem_tset_of_set>


; <Start encoding val FStar.TSet.filter>


(declare-fun FStar.TSet.filter (Term Term Term) Term)

(declare-fun Tm_arrow_1a001071ad6106aec2470a87b194954c () Term)
(declare-fun FStar.TSet.filter@tok () Term)

; </end encoding val FStar.TSet.filter>


; <Start encoding val FStar.TSet.lemma_mem_filter>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.lemma_mem_filter (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.lemma_mem_filter@tok () Term)


; </end encoding val FStar.TSet.lemma_mem_filter>


; <Start encoding val FStar.TSet.map>

(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun FStar.TSet.map (Term Term Term Term) Term)

(declare-fun Tm_arrow_8af532fc458491b78200f8bcb1361e90 () Term)
(declare-fun FStar.TSet.map@tok () Term)

; </end encoding val FStar.TSet.map>


; <Start encoding val FStar.TSet.lemma_mem_map>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.TSet.lemma_mem_map (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.TSet.lemma_mem_map@tok () Term)


; </end encoding val FStar.TSet.lemma_mem_map>


; <Skipped #reset-options/>


; <Start encoding let rec as_set'>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.TSet.as_set_.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.TSet.as_set_.fuel_instrumented_token () Term)
(declare-fun FStar.TSet.as_set_ (Term Term) Term)
(declare-fun FStar.TSet.as_set_@tok () Term)
(declare-fun Tm_arrow_b205d25f357c7c6022ebceb6497753f3 () Term)

; </end encoding let rec as_set'>


; End Externals for interface FStar.TSet


; Externals for interface FStar.Monotonic.Heap


; <Start encoding let set>

(declare-fun FStar.Monotonic.Heap.set (Term) Term)

(declare-fun FStar.Monotonic.Heap.set@tok () Term)

; </end encoding let set>


; <Start encoding let tset>

(declare-fun FStar.Monotonic.Heap.tset (Term) Term)

(declare-fun FStar.Monotonic.Heap.tset@tok () Term)

; </end encoding let tset>


; <Start encoding val FStar.Monotonic.Heap.heap>

(declare-fun FStar.Monotonic.Heap.heap () Term)

; </end encoding val FStar.Monotonic.Heap.heap>


; <Start encoding val FStar.Monotonic.Heap.equal>

(declare-fun FStar.Monotonic.Heap.equal (Term Term) Term)
(declare-fun Tm_arrow_22ea7bfd67f4919a6b048e3792f6aac6 () Term)
(declare-fun FStar.Monotonic.Heap.equal@tok () Term)

; </end encoding val FStar.Monotonic.Heap.equal>


; <Start encoding val FStar.Monotonic.Heap.equal_extensional>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.equal_extensional (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.equal_extensional@tok () Term)

; </end encoding val FStar.Monotonic.Heap.equal_extensional>


; <Start encoding val FStar.Monotonic.Heap.emp>

(declare-fun FStar.Monotonic.Heap.emp (Dummy_sort) Term)

; </end encoding val FStar.Monotonic.Heap.emp>


; <Start encoding val FStar.Monotonic.Heap.next_addr>

(declare-fun FStar.Monotonic.Heap.next_addr (Term) Term)
(declare-fun Tm_ghost_arrow_5f9b7d66eebaf7d00b1d1c8781e1bd33 () Term)
(declare-fun FStar.Monotonic.Heap.next_addr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.next_addr>


; <Start encoding val FStar.Monotonic.Heap.core_mref>

(declare-fun FStar.Monotonic.Heap.core_mref (Term) Term)

(declare-fun FStar.Monotonic.Heap.core_mref@tok () Term)

; </end encoding val FStar.Monotonic.Heap.core_mref>


; <Start encoding let mref>

(declare-fun FStar.Monotonic.Heap.mref (Term Term) Term)
(declare-fun Tm_arrow_5bf0606d629ecb30adc0c556c248cd8a () Term)
(declare-fun FStar.Monotonic.Heap.mref@tok () Term)

; </end encoding let mref>


; <Start encoding val FStar.Monotonic.Heap.addr_of>

(declare-fun FStar.Monotonic.Heap.addr_of (Term Term Term) Term)
(declare-fun Tm_ghost_arrow_3e3805ca9fb6a056cde481ca6e6b2666 () Term)
(declare-fun FStar.Monotonic.Heap.addr_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.addr_of>


; <Start encoding val FStar.Monotonic.Heap.is_mm>

(declare-fun FStar.Monotonic.Heap.is_mm (Term Term Term) Term)
(declare-fun Tm_ghost_arrow_8181c56eb62b6f09010fd19362ec557f () Term)
(declare-fun FStar.Monotonic.Heap.is_mm@tok () Term)

; </end encoding val FStar.Monotonic.Heap.is_mm>


; <Start encoding let compare_addrs>

(declare-fun FStar.Monotonic.Heap.compare_addrs (Term Term Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_d9620af24825960ed2af7182687876b1 () Term)
(declare-fun FStar.Monotonic.Heap.compare_addrs@tok () Term)

; </end encoding let compare_addrs>


; <Start encoding val FStar.Monotonic.Heap.contains>

(declare-fun FStar.Monotonic.Heap.contains (Term Term Term Term) Term)
(declare-fun Tm_arrow_78eae2771402d9ca8cd20442a69b19a1 () Term)
(declare-fun FStar.Monotonic.Heap.contains@tok () Term)

; </end encoding val FStar.Monotonic.Heap.contains>


; <Start encoding val FStar.Monotonic.Heap.addr_unused_in>

(declare-fun FStar.Monotonic.Heap.addr_unused_in (Term Term) Term)
(declare-fun Tm_arrow_5e652491869ddd6d9add00477fe250d4 () Term)
(declare-fun FStar.Monotonic.Heap.addr_unused_in@tok () Term)

; </end encoding val FStar.Monotonic.Heap.addr_unused_in>


; <Start encoding val FStar.Monotonic.Heap.not_addr_unused_in_nullptr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.not_addr_unused_in_nullptr (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.not_addr_unused_in_nullptr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.not_addr_unused_in_nullptr>


; <Start encoding val FStar.Monotonic.Heap.unused_in>

(declare-fun FStar.Monotonic.Heap.unused_in (Term Term Term Term) Term)
(declare-fun Tm_arrow_63db68eb9811874d358b39a3a3a594c0 () Term)
(declare-fun FStar.Monotonic.Heap.unused_in@tok () Term)

; </end encoding val FStar.Monotonic.Heap.unused_in>


; <Start encoding let fresh>

(declare-fun FStar.Monotonic.Heap.fresh (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_516fb5369267798913835a1aff4b7fe3 () Term)
(declare-fun FStar.Monotonic.Heap.fresh@tok () Term)

; </end encoding let fresh>


; <Start encoding let only_t>

(declare-fun FStar.Monotonic.Heap.only_t (Term Term Term) Term)
(declare-fun Tm_arrow_97d9b8894eec5cc757ee6368627567ce () Term)
(declare-fun FStar.Monotonic.Heap.only_t@tok () Term)

; </end encoding let only_t>


; <Start encoding let only>

(declare-fun FStar.Monotonic.Heap.only (Term Term Term) Term)
(declare-fun Tm_ghost_arrow_fe5c1d63e245bf0ffcacbc885af17fc3 () Term)
(declare-fun FStar.Monotonic.Heap.only@tok () Term)

; </end encoding let only>


; <Start encoding let op_Hat_Plus_Plus>

(declare-fun FStar.Monotonic.Heap.op_Hat_Plus_Plus (Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_21e6803beb51b9a6b0e4cc69a41b426b () Term)
(declare-fun FStar.Monotonic.Heap.op_Hat_Plus_Plus@tok () Term)

; </end encoding let op_Hat_Plus_Plus>


; <Start encoding let op_Plus_Plus_Hat>

(declare-fun FStar.Monotonic.Heap.op_Plus_Plus_Hat (Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_155b4e9b4b7e1cd02500a5483fe79417 () Term)
(declare-fun FStar.Monotonic.Heap.op_Plus_Plus_Hat@tok () Term)

; </end encoding let op_Plus_Plus_Hat>


; <Start encoding let op_Hat_Plus_Hat>

(declare-fun FStar.Monotonic.Heap.op_Hat_Plus_Hat (Term Term Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_a3f887bc1beedc82ccf25ac24af9a106 () Term)
(declare-fun FStar.Monotonic.Heap.op_Hat_Plus_Hat@tok () Term)

; </end encoding let op_Hat_Plus_Hat>


; <Start encoding val FStar.Monotonic.Heap.sel_tot>

(declare-fun Tm_refine_60a89cd0c268e7ce38a2aab467325fd8 (Term Term Term) Term)
(declare-fun FStar.Monotonic.Heap.sel_tot (Term Term Term Term) Term)

(declare-fun Tm_arrow_b9c7abd21015083a18544d8f5e4bfa5f () Term)
(declare-fun FStar.Monotonic.Heap.sel_tot@tok () Term)

; </end encoding val FStar.Monotonic.Heap.sel_tot>


; <Start encoding val FStar.Monotonic.Heap.sel>

(declare-fun FStar.Monotonic.Heap.sel (Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_ffe8429ce0118fe92246c624b0f48cb8 () Term)
(declare-fun FStar.Monotonic.Heap.sel@tok () Term)

; </end encoding val FStar.Monotonic.Heap.sel>


; <Start encoding val FStar.Monotonic.Heap.upd_tot>


(declare-fun FStar.Monotonic.Heap.upd_tot (Term Term Term Term Term) Term)

(declare-fun Tm_arrow_bc62c38ea3e82ecfe3b8b2ec42ad37db () Term)
(declare-fun FStar.Monotonic.Heap.upd_tot@tok () Term)

; </end encoding val FStar.Monotonic.Heap.upd_tot>


; <Start encoding val FStar.Monotonic.Heap.upd>

(declare-fun FStar.Monotonic.Heap.upd (Term Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_34a9169877528f6cc19628f2fc55c538 () Term)
(declare-fun FStar.Monotonic.Heap.upd@tok () Term)

; </end encoding val FStar.Monotonic.Heap.upd>


; <Start encoding val FStar.Monotonic.Heap.alloc>

(declare-fun FStar.Monotonic.Heap.alloc (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_1c0aac8fe904b4d396ec54b136d2ffe7 () Term)
(declare-fun FStar.Monotonic.Heap.alloc@tok () Term)

; </end encoding val FStar.Monotonic.Heap.alloc>


; <Start encoding val FStar.Monotonic.Heap.free_mm>

(declare-fun Tm_refine_5015146880b2d88cf7d4492a6a4488b3 (Term Term Term) Term)
(declare-fun FStar.Monotonic.Heap.free_mm (Term Term Term Term) Term)

(declare-fun Tm_arrow_6ecb62093891266f94b1f3f1a90a448e () Term)
(declare-fun FStar.Monotonic.Heap.free_mm@tok () Term)

; </end encoding val FStar.Monotonic.Heap.free_mm>


; <Start encoding let modifies_t>

(declare-fun FStar.Monotonic.Heap.modifies_t (Term Term Term) Term)
(declare-fun Tm_arrow_a4fe7207a94d4c1647746618fee3b728 () Term)
(declare-fun FStar.Monotonic.Heap.modifies_t@tok () Term)

; </end encoding let modifies_t>


; <Start encoding let modifies>

(declare-fun FStar.Monotonic.Heap.modifies (Term Term Term) Term)
(declare-fun Tm_arrow_46ebd76bd348c127a0b9b24dfad446fc () Term)
(declare-fun FStar.Monotonic.Heap.modifies@tok () Term)

; </end encoding let modifies>


; <Start encoding let equal_dom>

(declare-fun FStar.Monotonic.Heap.equal_dom (Term Term) Term)

(declare-fun FStar.Monotonic.Heap.equal_dom@tok () Term)

; </end encoding let equal_dom>


; <Start encoding val FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused>


; <Start encoding val FStar.Monotonic.Heap.lemma_contains_implies_used>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_contains_implies_used (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_contains_implies_used@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_contains_implies_used>


; <Start encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types>


; <Start encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_preorders>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_preorders (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_preorders@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_preorders>


; <Start encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_mm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_mm (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_mm@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_mm>


; <Start encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_unused>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_unused (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_distinct_addrs_unused@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_distinct_addrs_unused>


; <Start encoding val FStar.Monotonic.Heap.lemma_alloc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_alloc (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_alloc@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_alloc>


; <Start encoding val FStar.Monotonic.Heap.lemma_free_mm_sel>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_mm_sel (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_mm_sel@tok () Term)


; </end encoding val FStar.Monotonic.Heap.lemma_free_mm_sel>


; <Start encoding val FStar.Monotonic.Heap.lemma_free_mm_contains>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_mm_contains (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_mm_contains@tok () Term)


; </end encoding val FStar.Monotonic.Heap.lemma_free_mm_contains>


; <Start encoding val FStar.Monotonic.Heap.lemma_free_mm_unused>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_mm_unused (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_mm_unused@tok () Term)


; </end encoding val FStar.Monotonic.Heap.lemma_free_mm_unused>


; <Start encoding val FStar.Monotonic.Heap.lemma_free_addr_unused_in>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_addr_unused_in (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_free_addr_unused_in@tok () Term)

(declare-fun Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_free_addr_unused_in>


; <Start encoding val FStar.Monotonic.Heap.lemma_sel_same_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_same_addr (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_same_addr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_sel_same_addr>


; <Start encoding val FStar.Monotonic.Heap.lemma_sel_upd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_upd1 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_upd1@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_sel_upd1>


; <Start encoding val FStar.Monotonic.Heap.lemma_sel_upd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_upd2 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_upd2@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_sel_upd2>


; <Start encoding val FStar.Monotonic.Heap.lemma_mref_injectivity>

(declare-fun FStar.Monotonic.Heap.lemma_mref_injectivity () Term)
(declare-fun Tm_refine_e1adf49e5e772ddffa19181e1a812a81 () Term)


; </end encoding val FStar.Monotonic.Heap.lemma_mref_injectivity>


; <Start encoding val FStar.Monotonic.Heap.lemma_in_dom_emp>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_in_dom_emp (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_in_dom_emp@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_in_dom_emp>


; <Start encoding val FStar.Monotonic.Heap.lemma_upd_contains>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_contains (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_contains@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_upd_contains>


; <Start encoding val FStar.Monotonic.Heap.lemma_well_typed_upd_contains>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_well_typed_upd_contains (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_well_typed_upd_contains@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_well_typed_upd_contains>


; <Start encoding val FStar.Monotonic.Heap.lemma_unused_upd_contains>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_unused_upd_contains (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_unused_upd_contains@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_unused_upd_contains>


; <Start encoding val FStar.Monotonic.Heap.lemma_upd_contains_different_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_contains_different_addr (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_contains_different_addr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_upd_contains_different_addr>


; <Start encoding val FStar.Monotonic.Heap.lemma_upd_unused>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_unused (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_unused@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_upd_unused>


; <Start encoding val FStar.Monotonic.Heap.lemma_contains_upd_modifies>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_contains_upd_modifies (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_contains_upd_modifies@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_contains_upd_modifies>


; <Start encoding val FStar.Monotonic.Heap.lemma_unused_upd_modifies>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_unused_upd_modifies (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_unused_upd_modifies@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_unused_upd_modifies>


; <Start encoding val FStar.Monotonic.Heap.lemma_sel_equals_sel_tot_for_contained_refs>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_equals_sel_tot_for_contained_refs (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_sel_equals_sel_tot_for_contained_refs@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_sel_equals_sel_tot_for_contained_refs>


; <Start encoding val FStar.Monotonic.Heap.lemma_upd_equals_upd_tot_for_contained_refs>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_equals_upd_tot_for_contained_refs (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_upd_equals_upd_tot_for_contained_refs@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_upd_equals_upd_tot_for_contained_refs>


; <Start encoding val FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr>


; <Start encoding val FStar.Monotonic.Heap.lemma_heap_equality_upd_same_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_upd_same_addr (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_upd_same_addr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_heap_equality_upd_same_addr>


; <Start encoding val FStar.Monotonic.Heap.lemma_heap_equality_cancel_same_mref_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_cancel_same_mref_upd (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_cancel_same_mref_upd@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_heap_equality_cancel_same_mref_upd>


; <Start encoding val FStar.Monotonic.Heap.lemma_heap_equality_upd_with_sel>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_upd_with_sel (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_upd_with_sel@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_heap_equality_upd_with_sel>


; <Start encoding val FStar.Monotonic.Heap.lemma_heap_equality_commute_distinct_upds>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_commute_distinct_upds (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_heap_equality_commute_distinct_upds@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_heap_equality_commute_distinct_upds>


; <Start encoding val FStar.Monotonic.Heap.lemma_next_addr_upd_tot>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_upd_tot (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_upd_tot@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_next_addr_upd_tot>


; <Start encoding val FStar.Monotonic.Heap.lemma_next_addr_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_upd (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_upd@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_next_addr_upd>


; <Start encoding val FStar.Monotonic.Heap.lemma_next_addr_alloc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_alloc (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_alloc@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_next_addr_alloc>


; <Start encoding val FStar.Monotonic.Heap.lemma_next_addr_free_mm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_free_mm (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_free_mm@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_next_addr_free_mm>


; <Start encoding val FStar.Monotonic.Heap.lemma_next_addr_contained_refs_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_contained_refs_addr (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.lemma_next_addr_contained_refs_addr@tok () Term)

; </end encoding val FStar.Monotonic.Heap.lemma_next_addr_contained_refs_addr>


; <Start encoding val FStar.Monotonic.Heap.aref>

(declare-fun FStar.Monotonic.Heap.aref () Term)

; </end encoding val FStar.Monotonic.Heap.aref>


; <Start encoding val FStar.Monotonic.Heap.dummy_aref>

(declare-fun FStar.Monotonic.Heap.dummy_aref (Dummy_sort) Term)

; </end encoding val FStar.Monotonic.Heap.dummy_aref>


; <Start encoding val FStar.Monotonic.Heap.aref_equal>

(declare-fun FStar.Monotonic.Heap.aref_equal (Term Term) Term)
(declare-fun Tm_refine_82707a6e3d48caa257bb4bddb01d7d73 (Term Term) Term)
(declare-fun Tm_ghost_arrow_15fb16496d887138d488803245c89d64 () Term)
(declare-fun FStar.Monotonic.Heap.aref_equal@tok () Term)


; </end encoding val FStar.Monotonic.Heap.aref_equal>


; <Start encoding val FStar.Monotonic.Heap.aref_of>

(declare-fun FStar.Monotonic.Heap.aref_of (Term Term Term) Term)
(declare-fun Tm_arrow_52adf65c8447500d70e5098f6c041a65 () Term)
(declare-fun FStar.Monotonic.Heap.aref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.aref_of>


; <Start encoding val FStar.Monotonic.Heap.addr_of_aref>

(declare-fun FStar.Monotonic.Heap.addr_of_aref (Term) Term)
(declare-fun Tm_refine_afd51579b90d50ea23e03b743a1fa001 () Term)
(declare-fun Tm_ghost_arrow_168094509145e28b296ce766eea04736 () Term)
(declare-fun FStar.Monotonic.Heap.addr_of_aref@tok () Term)


; </end encoding val FStar.Monotonic.Heap.addr_of_aref>


; <Start encoding val FStar.Monotonic.Heap.addr_of_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.addr_of_aref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.addr_of_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.addr_of_aref_of>


; <Start encoding val FStar.Monotonic.Heap.aref_is_mm>

(declare-fun FStar.Monotonic.Heap.aref_is_mm (Term) Term)
(declare-fun Tm_ghost_arrow_86fca776032c40cedacef7de5d660572 () Term)
(declare-fun FStar.Monotonic.Heap.aref_is_mm@tok () Term)

; </end encoding val FStar.Monotonic.Heap.aref_is_mm>


; <Start encoding val FStar.Monotonic.Heap.is_mm_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.is_mm_aref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.is_mm_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.is_mm_aref_of>


; <Start encoding val FStar.Monotonic.Heap.aref_unused_in>

(declare-fun FStar.Monotonic.Heap.aref_unused_in (Term Term) Term)
(declare-fun Tm_arrow_8227ceb756b15f6c9348698ae3bb9b5e () Term)
(declare-fun FStar.Monotonic.Heap.aref_unused_in@tok () Term)

; </end encoding val FStar.Monotonic.Heap.aref_unused_in>


; <Start encoding val FStar.Monotonic.Heap.unused_in_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.unused_in_aref_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.unused_in_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.unused_in_aref_of>


; <Start encoding val FStar.Monotonic.Heap.contains_aref_unused_in>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.contains_aref_unused_in (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.contains_aref_unused_in@tok () Term)

; </end encoding val FStar.Monotonic.Heap.contains_aref_unused_in>


; <Start encoding val FStar.Monotonic.Heap.aref_live_at>

(declare-fun FStar.Monotonic.Heap.aref_live_at (Term Term Term Term) Term)
(declare-fun Tm_arrow_9c4830390b5ceaaec5e76b4f367d6c11 () Term)
(declare-fun FStar.Monotonic.Heap.aref_live_at@tok () Term)

; </end encoding val FStar.Monotonic.Heap.aref_live_at>


; <Start encoding val FStar.Monotonic.Heap.gref_of>

(declare-fun FStar.Monotonic.Heap.gref_of (Term Term Term) Term)
(declare-fun Tm_refine_f871b1cec1676516ecbdd8b1fdf16da7 (Term Term) Term)
(declare-fun Tm_ghost_arrow_b090c641b42392b5ed08e8774610283a () Term)
(declare-fun FStar.Monotonic.Heap.gref_of@tok () Term)


; </end encoding val FStar.Monotonic.Heap.gref_of>


; <Start encoding val FStar.Monotonic.Heap.ref_of>

(declare-fun FStar.Monotonic.Heap.ref_of (Term Term Term Term) Term)
(declare-fun Tm_refine_e9f69f18eb8d91697e49057991573e9f (Term Term Term Term) Term)
(declare-fun Tm_arrow_593ebdf0a0f4ac12ef03a2bedce8e97b () Term)
(declare-fun FStar.Monotonic.Heap.ref_of@tok () Term)


; </end encoding val FStar.Monotonic.Heap.ref_of>


; <Start encoding val FStar.Monotonic.Heap.aref_live_at_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.aref_live_at_aref_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.aref_live_at_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.aref_live_at_aref_of>


; <Start encoding val FStar.Monotonic.Heap.contains_gref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.contains_gref_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.contains_gref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.contains_gref_of>


; <Start encoding val FStar.Monotonic.Heap.aref_of_gref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.aref_of_gref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.aref_of_gref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.aref_of_gref_of>


; <Start encoding val FStar.Monotonic.Heap.addr_of_gref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.addr_of_gref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.addr_of_gref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.addr_of_gref_of>


; <Start encoding val FStar.Monotonic.Heap.is_mm_gref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.is_mm_gref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.is_mm_gref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.is_mm_gref_of>


; <Start encoding val FStar.Monotonic.Heap.unused_in_gref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.unused_in_gref_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.unused_in_gref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.unused_in_gref_of>


; <Start encoding val FStar.Monotonic.Heap.sel_ref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.sel_ref_of (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.sel_ref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.sel_ref_of>


; <Start encoding val FStar.Monotonic.Heap.upd_ref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.Heap.upd_ref_of (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.Heap.upd_ref_of@tok () Term)

; </end encoding val FStar.Monotonic.Heap.upd_ref_of>


; End Externals for interface FStar.Monotonic.Heap


; Externals for module FStar.Heap


; <Start encoding let trivial_rel>

(declare-fun FStar.Heap.trivial_rel (Term) Term)
(declare-fun Tm_arrow_5e933b4711265943ba4bba734363561b () Term)
(declare-fun FStar.Heap.trivial_rel@tok () Term)

(declare-fun Tm_abs_568747eb5009c1dec504311dee989dc2 (Term) Term)

; </end encoding let trivial_rel>


; <Start encoding let trivial_preorder>

(declare-fun FStar.Heap.trivial_preorder (Term) Term)
(declare-fun Tm_arrow_1a6db055683d4a5b8a00786676e339b5 () Term)
(declare-fun FStar.Heap.trivial_preorder@tok () Term)

; </end encoding let trivial_preorder>


; <Start encoding let ref>

(declare-fun FStar.Heap.ref (Term) Term)

(declare-fun FStar.Heap.ref@tok () Term)

; </end encoding let ref>


; End Externals for module FStar.Heap


; Externals for module FStar.ST


; <Skipped new_effect { GST ... }/>


; <Start encoding let gst_pre>

(declare-fun FStar.ST.gst_pre () Term)

; </end encoding let gst_pre>


; <Start encoding let gst_post'>

(declare-fun FStar.ST.gst_post_ (Term Term) Term)

(declare-fun FStar.ST.gst_post_@tok () Term)

; </end encoding let gst_post'>


; <Start encoding let gst_post>

(declare-fun FStar.ST.gst_post (Term) Term)

(declare-fun FStar.ST.gst_post@tok () Term)

; </end encoding let gst_post>


; <Start encoding let gst_wp>

(declare-fun FStar.ST.gst_wp (Term) Term)

(declare-fun FStar.ST.gst_wp@tok () Term)

; </end encoding let gst_wp>


; <Start encoding let lift_div_gst>

(declare-fun FStar.ST.lift_div_gst (Term Term Term Term) Term)
(declare-fun Tm_arrow_bbaeef6680f54609c0f7c85c1ba1bd3c () Term)
(declare-fun FStar.ST.lift_div_gst@tok () Term)



; </end encoding let lift_div_gst>


; <Skipped sub_effect DIV ~> GST/>


; <Start encoding let heap_rel>

(declare-fun FStar.ST.heap_rel (Term Term) Term)
(declare-fun Tm_arrow_3ffd8da3a1b4fb5a75e097e2a7ead7a9 () Term)
(declare-fun FStar.ST.heap_rel@tok () Term)

; </end encoding let heap_rel>


; <Start encoding val FStar.ST.gst_get>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.gst_get (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.gst_get@tok () Term)

; </end encoding val FStar.ST.gst_get>


; <Start encoding val FStar.ST.gst_put>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.gst_put (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.gst_put@tok () Term)

; </end encoding val FStar.ST.gst_put>


; <Start encoding let heap_predicate>

(declare-fun FStar.ST.heap_predicate () Term)
(declare-fun Tm_arrow_c4185f52507383203d0d6335fd0332a8 () Term)

; </end encoding let heap_predicate>


; <Start encoding let stable>

(declare-fun FStar.ST.stable (Term) Term)
(declare-fun Tm_arrow_6fabddab2e8badc7a54f2fce30469fd3 () Term)
(declare-fun FStar.ST.stable@tok () Term)

; </end encoding let stable>


; <Start encoding let witnessed>

(declare-fun Tm_refine_a11098d99239284f14b49e1dd0266896 () Term)
(declare-fun FStar.ST.witnessed (Term) Term)

(declare-fun Tm_arrow_eda1223bb1d06bd92699e8c3d8f9251d () Term)
(declare-fun FStar.ST.witnessed@tok () Term)

; </end encoding let witnessed>


; <Start encoding val FStar.ST.gst_witness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.gst_witness (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.gst_witness@tok () Term)

; </end encoding val FStar.ST.gst_witness>


; <Start encoding val FStar.ST.gst_recall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.gst_recall (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.gst_recall@tok () Term)

; </end encoding val FStar.ST.gst_recall>


; <Skipped val FStar.ST.lemma_functoriality/>


; <Start encoding let lemma_functoriality>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.lemma_functoriality (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.lemma_functoriality@tok () Term)

; </end encoding let lemma_functoriality>


; <Start encoding let st_pre>

(declare-fun FStar.ST.st_pre () Term)

; </end encoding let st_pre>


; <Start encoding let st_post'>

(declare-fun FStar.ST.st_post_ (Term Term) Term)

(declare-fun FStar.ST.st_post_@tok () Term)

; </end encoding let st_post'>


; <Start encoding let st_post>

(declare-fun FStar.ST.st_post (Term) Term)

(declare-fun FStar.ST.st_post@tok () Term)

; </end encoding let st_post>


; <Start encoding let st_wp>

(declare-fun FStar.ST.st_wp (Term) Term)

(declare-fun FStar.ST.st_wp@tok () Term)

; </end encoding let st_wp>


; <Skipped new_effect { STATE ... }/>


; <Start encoding let lift_gst_state>

(declare-fun FStar.ST.lift_gst_state (Term Term) Term)
(declare-fun Tm_arrow_9f8aa176b7421939c7ff58d9777d1285 () Term)
(declare-fun FStar.ST.lift_gst_state@tok () Term)

; </end encoding let lift_gst_state>


; <Skipped sub_effect GST ~> STATE/>


; <Skipped effect State a wp = FStar.ST.STATE a/>


; <Skipped effect ST a pre post = FStar.ST.STATE a/>


; <Skipped effect St a = FStar.ST.ST a/>


; <Start encoding let contains_pred>

(declare-fun FStar.ST.contains_pred (Term Term Term Term) Term)

(declare-fun FStar.ST.contains_pred@tok () Term)

; </end encoding let contains_pred>


; <Start encoding let mref>

(declare-fun FStar.ST.mref (Term Term) Term)

(declare-fun FStar.ST.mref@tok () Term)
(declare-fun Tm_refine_e33ef751d600ad1c7f71142479103c47 (Term Term) Term)

; </end encoding let mref>


; <Start encoding let recall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.recall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.recall@tok () Term)

; </end encoding let recall>


; <Start encoding let alloc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.alloc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.alloc@tok () Term)

; </end encoding let alloc>


; <Start encoding let read>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.read (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.read@tok () Term)

; </end encoding let read>


; <Start encoding let write>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.write (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.write@tok () Term)

; </end encoding let write>


; <Start encoding let get>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.get (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.get@tok () Term)

; </end encoding let get>


; <Start encoding let op_Bang>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.op_Bang (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.op_Bang@tok () Term)

; </end encoding let op_Bang>


; <Start encoding let op_Colon_Equals>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.ST.op_Colon_Equals (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.ST.op_Colon_Equals@tok () Term)

; </end encoding let op_Colon_Equals>


; <Start encoding let ref>

(declare-fun FStar.ST.ref (Term) Term)

(declare-fun FStar.ST.ref@tok () Term)

; </end encoding let ref>


; <Start encoding let modifies_none>

(declare-fun FStar.ST.modifies_none (Term Term) Term)

(declare-fun FStar.ST.modifies_none@tok () Term)

; </end encoding let modifies_none>


; End Externals for module FStar.ST


; Externals for interface FStar.MRef


; <Start encoding let stable>

(declare-fun FStar.MRef.stable (Term) Term)

(declare-fun Tm_arrow_1f435a92740977f198d6077c8e8f19ca (Term) Term)
(declare-fun Tm_arrow_397a590daee44215f1986803a44393ec () Term)
(declare-fun FStar.MRef.stable@tok () Term)



; </end encoding let stable>


; <Start encoding val FStar.MRef.token>


(declare-fun Tm_refine_44fe27499427c72cb2cce88758638c55 (Term Term) Term)
(declare-fun FStar.MRef.token (Term Term Term Term) Term)



(declare-fun Tm_arrow_1cef032452907733e52422b0cb8e8954 () Term)
(declare-fun FStar.MRef.token@tok () Term)

; </end encoding val FStar.MRef.token>


; <Start encoding val FStar.MRef.witness_token>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.MRef.witness_token (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.MRef.witness_token@tok () Term)

; </end encoding val FStar.MRef.witness_token>


; <Start encoding val FStar.MRef.recall_token>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.MRef.recall_token (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.MRef.recall_token@tok () Term)

; </end encoding val FStar.MRef.recall_token>


; <Start encoding let spred>

(declare-fun FStar.MRef.spred (Term Term) Term)

(declare-fun FStar.MRef.spred@tok () Term)

(declare-fun Tm_refine_db2289e2f27e1e1fb8c92bdbb90863d4 (Term Term) Term)

; </end encoding let spred>


; <Start encoding val FStar.MRef.lemma_functoriality>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.MRef.lemma_functoriality (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.MRef.lemma_functoriality@tok () Term)

; </end encoding val FStar.MRef.lemma_functoriality>


; <Start encoding val FStar.MRef.recall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.MRef.recall (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.MRef.recall@tok () Term)

; </end encoding val FStar.MRef.recall>


; <Start encoding val FStar.MRef.witness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.MRef.witness (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.MRef.witness@tok () Term)

; </end encoding val FStar.MRef.witness>


; End Externals for interface FStar.MRef


; Externals for module FStar.Exn


; <Start encoding val FStar.Exn.raise>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Exn.raise (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Exn.raise@tok () Term)

; </end encoding val FStar.Exn.raise>


; End Externals for module FStar.Exn


; Externals for interface FStar.All


; <Start encoding let all_pre>

(declare-fun FStar.All.all_pre () Term)

; </end encoding let all_pre>


; <Start encoding let all_post'>

(declare-fun FStar.All.all_post_ (Term Term) Term)

(declare-fun FStar.All.all_post_@tok () Term)

; </end encoding let all_post'>


; <Start encoding let all_post>

(declare-fun FStar.All.all_post (Term) Term)

(declare-fun FStar.All.all_post@tok () Term)

; </end encoding let all_post>


; <Start encoding let all_wp>

(declare-fun FStar.All.all_wp (Term) Term)

(declare-fun FStar.All.all_wp@tok () Term)

; </end encoding let all_wp>


; <Skipped new_effect { ALL ... }/>


; <Start encoding let lift_state_all>

(declare-fun FStar.All.lift_state_all (Term Term Term) Term)
(declare-fun Tm_arrow_3e4fec12f1c8981f71096a48e2abdc84 () Term)
(declare-fun FStar.All.lift_state_all@tok () Term)
(declare-fun Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa () Term)
(declare-fun Tm_arrow_0fb416478174b228abde05d827bd6313 () Term)
(declare-fun Tm_arrow_23b08cf81278f3c1bdae402318f6ccd9 (Term) Term)
(declare-fun Tm_abs_bdb21fd2b7ca1058c18a3e7e90881ef2 (Term Term) Term)

; </end encoding let lift_state_all>


; <Skipped sub_effect STATE ~> ALL/>


; <Start encoding let lift_exn_all>

(declare-fun FStar.All.lift_exn_all (Term Term Term Term) Term)
(declare-fun Tm_arrow_135df870f17e8c60e7945fbf1f54fc29 () Term)
(declare-fun FStar.All.lift_exn_all@tok () Term)

(declare-fun Tm_abs_a9ba63c9dfe5bf6c6b349a4bcc1b5528 (Term Term Term) Term)

; </end encoding let lift_exn_all>


; <Skipped sub_effect EXN ~> ALL/>


; <Skipped effect All a pre post = FStar.All.ALL a/>


; <Skipped effect ML a = FStar.All.ALL a/>


; <Start encoding val FStar.All.exit>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.All.exit (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.All.exit@tok () Term)

; </end encoding val FStar.All.exit>


; <Start encoding val FStar.All.try_with>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.All.try_with (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.All.try_with@tok () Term)

; </end encoding val FStar.All.try_with>


; <Start encoding datacon FStar.All.Failure for type Prims.exn>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.All.Failure (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.All.Failure_uu___ (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun FStar.All.Failure@base (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.All.Failure
(declare-fun FStar.All.Failure@tok () Term)
(declare-fun Tm_arrow_ba2c44545f37b4cb1ed7c94934918f65 () Term)

; <start constructor FStar.All.Failure>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.All.Failure ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
119)
(= __@x0
(FStar.All.Failure (FStar.All.Failure_uu___ __@x0)))))

; </end constructor FStar.All.Failure>


; </end encoding datacon FStar.All.Failure for type Prims.exn>


; <Start encoding val FStar.All.uu___is_Failure>

(declare-fun FStar.All.uu___is_Failure (Term) Term)
(declare-fun Tm_arrow_81ab3356926b82578fcb92e97b412345 () Term)
(declare-fun FStar.All.uu___is_Failure@tok () Term)

; </end encoding val FStar.All.uu___is_Failure>


; <Skipped let uu___is_Failure/>


; <Start encoding val FStar.All.__proj__Failure__item__uu___>

(declare-fun Tm_refine_149c6719f34c408becdf9120a4ae2d59 () Term)
(declare-fun FStar.All.__proj__Failure__item__uu___ (Term) Term)

(declare-fun Tm_arrow_931774599ca5f3ca7bd6eb18157a7dec () Term)
(declare-fun FStar.All.__proj__Failure__item__uu___@tok () Term)

; </end encoding val FStar.All.__proj__Failure__item__uu___>


; <Skipped let __proj__Failure__item__uu___/>


; <Start encoding val FStar.All.failwith>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.All.failwith (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.All.failwith@tok () Term)

; </end encoding val FStar.All.failwith>


; End Externals for interface FStar.All


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

(push) ;; push{1

; Internals for Ariadne


; encoding sigelt let index


; <Start encoding let index>

(declare-fun Ariadne.index () Term)

; </end encoding let index>


; encoding sigelt let state


; <Start encoding let state>

(declare-fun Ariadne.state (Dummy_sort) Term)

; </end encoding let state>


; encoding sigelt let record


; <Start encoding let record>

(declare-fun Ariadne.record () Term)

; </end encoding let record>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type Ariadne.case


; <Start encoding type Ariadne.case>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.case () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Ok (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Ok_saved (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Ok
(declare-fun Ariadne.Ok@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Recover (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Recover_read (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Recover_other (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Recover
(declare-fun Ariadne.Recover@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Writing (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Writing_written (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Writing_old (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Writing
(declare-fun Ariadne.Writing@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Crash (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Crash_read (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Crash_other (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Crash
(declare-fun Ariadne.Crash@tok () Term)
;;;;;;;;;;;;;;;;saved: state -> case
(declare-fun Tm_arrow_56739b95c4243db13cc48d8d7fff9cc1 () Term)
;;;;;;;;;;;;;;;;read: state -> other: state -> case
(declare-fun Tm_arrow_b16bfcdeab920f1a6213086afcdca74c () Term)



; <start constructor Ariadne.case>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.case ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
129)
(= __@x0
Ariadne.case)))

; </end constructor Ariadne.case>


; <start constructor Ariadne.Ok>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Ok ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
135)
(= __@x0
(Ariadne.Ok (Ariadne.Ok_saved __@x0)))))

; </end constructor Ariadne.Ok>


; <start constructor Ariadne.Recover>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Recover ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
140)
(= __@x0
(Ariadne.Recover (Ariadne.Recover_read __@x0)
(Ariadne.Recover_other __@x0)))))

; </end constructor Ariadne.Recover>


; <start constructor Ariadne.Writing>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Writing ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
145)
(= __@x0
(Ariadne.Writing (Ariadne.Writing_written __@x0)
(Ariadne.Writing_old __@x0)))))

; </end constructor Ariadne.Writing>


; <start constructor Ariadne.Crash>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Crash ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
150)
(= __@x0
(Ariadne.Crash (Ariadne.Crash_read __@x0)
(Ariadne.Crash_other __@x0)))))

; </end constructor Ariadne.Crash>


; </end encoding type Ariadne.case>

;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.__cache_version_number__; Namespace Prims
(assert (! (HasType Prims.__cache_version_number__
Prims.int)
:named function_token_typing_Prims.__cache_version_number__))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.lemma_mref_injectivity
Tm_refine_e1adf49e5e772ddffa19181e1a812a81)
:named function_token_typing_FStar.Monotonic.Heap.lemma_mref_injectivity))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.lemma_mref_injectivity
Tm_refine_e1adf49e5e772ddffa19181e1a812a81)
:named typing_FStar.Monotonic.Heap.lemma_mref_injectivity))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (HasType Prims.string
Prims.eqtype)
:named typing_Prims.string))
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
;;; Fact-ids: Name FStar.Preorder.transitive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(27,4-27,14); use=FStar.Preorder.fst(27,4-27,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(HasType (FStar.Preorder.transitive @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Preorder.transitive @x0
@x1))
:qid typing_FStar.Preorder.transitive))

:named typing_FStar.Preorder.transitive))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,5-20,13); use=FStar.Preorder.fst(20,5-20,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Preorder.relation @x0)
Tm_type))
 

:pattern ((FStar.Preorder.relation @x0))
:qid typing_FStar.Preorder.relation))

:named typing_FStar.Preorder.relation))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.reflexive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(24,4-24,13); use=FStar.Preorder.fst(24,4-24,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(HasType (FStar.Preorder.reflexive @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Preorder.reflexive @x0
@x1))
:qid typing_FStar.Preorder.reflexive))

:named typing_FStar.Preorder.reflexive))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.preorder_rel; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(30,4-30,16); use=FStar.Preorder.fst(30,4-30,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(HasType (FStar.Preorder.preorder_rel @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Preorder.preorder_rel @x0
@x1))
:qid typing_FStar.Preorder.preorder_rel))

:named typing_FStar.Preorder.preorder_rel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,5-33,13); use=FStar.Preorder.fst(33,5-33,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Preorder.preorder @x0)
Tm_type))
 

:pattern ((FStar.Preorder.preorder @x0))
:qid typing_FStar.Preorder.preorder))

:named typing_FStar.Preorder.preorder))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(41,4-41,8); use=FStar.Monotonic.Heap.fsti(41,4-41,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.Monotonic.Heap.mref @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.mref @x0
@x1))
:qid typing_FStar.Monotonic.Heap.mref))

:named typing_FStar.Monotonic.Heap.mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Monotonic.Heap.core_mref @x0)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid typing_FStar.Monotonic.Heap.core_mref))

:named typing_FStar.Monotonic.Heap.core_mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.state; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(forall ((@u0 Dummy_sort))
 (! (HasType (Ariadne.state @u0)
Prims.eqtype)
 

:pattern ((Ariadne.state @u0))
:qid typing_Ariadne.state))

:named typing_Ariadne.state))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Writing @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Writing @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case))
:qid subterm_ordering_Ariadne.Writing))

:named subterm_ordering_Ariadne.Writing))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Recover @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Recover @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case))
:qid subterm_ordering_Ariadne.Recover))

:named subterm_ordering_Ariadne.Recover))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Ok @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case))
:qid subterm_ordering_Ariadne.Ok))

:named subterm_ordering_Ariadne.Ok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Crash @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Crash @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case))
:qid subterm_ordering_Ariadne.Crash))

:named subterm_ordering_Ariadne.Crash))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_e1adf49e5e772ddffa19181e1a812a81
Tm_type)
:named refinement_kinding_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (HasType Tm_refine_da3062322c9bea8d5b2058386775b91a
Tm_type)
:named refinement_kinding_Tm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,25-33,57); use=FStar.Preorder.fst(33,25-33,57)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))

:named refinement_kinding_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(207,3-207,136); use=FStar.Monotonic.Heap.fsti(207,3-207,136)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e1adf49e5e772ddffa19181e1a812a81)
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=FStar.Monotonic.Heap.fsti(207,11-207,134); use=FStar.Monotonic.Heap.fsti(207,11-207,134)
(forall ((@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(FStar.Preorder.preorder @x2))
(HasType @x5
(FStar.Preorder.preorder @x3))
(HasType @x6
(FStar.Monotonic.Heap.mref @x2
@x4))
(HasType @x7
(FStar.Monotonic.Heap.mref @x3
@x5))

;; def=FStar.Monotonic.Heap.fsti(207,109-207,116); use=FStar.Monotonic.Heap.fsti(207,109-207,116)
(not 
;; def=FStar.Monotonic.Heap.fsti(207,109-207,116); use=FStar.Monotonic.Heap.fsti(207,109-207,116)
(= @x2
@x3)
)
)

;; def=FStar.Monotonic.Heap.fsti(207,121-207,134); use=FStar.Monotonic.Heap.fsti(207,121-207,134)
(not 
;; def=FStar.Monotonic.Heap.fsti(207,123-207,134); use=FStar.Monotonic.Heap.fsti(207,123-207,134)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(207,123-207,134); use=FStar.Monotonic.Heap.fsti(207,123-207,134)
(Prims.op_Equals_Equals_Equals (FStar.Monotonic.Heap.mref @x2
@x4)
(FStar.Monotonic.Heap.mref @x3
@x5)
@x6
@x7)
)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_e1adf49e5e772ddffa19181e1a812a81.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
:qid refinement_interpretation_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))

:named refinement_interpretation_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
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
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,25-33,57); use=FStar.Preorder.fst(33,25-33,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Preorder.relation @x2))

;; def=FStar.Preorder.fst(33,40-33,56); use=FStar.Preorder.fst(33,40-33,56)
(Valid 
;; def=FStar.Preorder.fst(33,40-33,56); use=FStar.Preorder.fst(33,40-33,56)
(FStar.Preorder.preorder_rel @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x2)))
:qid refinement_interpretation_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))

:named refinement_interpretation_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))
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
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Writing_written (Ariadne.Writing @x0
@x1))
@x0)
 

:pattern ((Ariadne.Writing @x0
@x1))
:qid projection_inverse_Ariadne.Writing_written))

:named projection_inverse_Ariadne.Writing_written))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Writing_old (Ariadne.Writing @x0
@x1))
@x1)
 

:pattern ((Ariadne.Writing @x0
@x1))
:qid projection_inverse_Ariadne.Writing_old))

:named projection_inverse_Ariadne.Writing_old))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Recover_read (Ariadne.Recover @x0
@x1))
@x0)
 

:pattern ((Ariadne.Recover @x0
@x1))
:qid projection_inverse_Ariadne.Recover_read))

:named projection_inverse_Ariadne.Recover_read))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Recover_other (Ariadne.Recover @x0
@x1))
@x1)
 

:pattern ((Ariadne.Recover @x0
@x1))
:qid projection_inverse_Ariadne.Recover_other))

:named projection_inverse_Ariadne.Recover_other))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@x0 Term))
 (! (= (Ariadne.Ok_saved (Ariadne.Ok @x0))
@x0)
 

:pattern ((Ariadne.Ok @x0))
:qid projection_inverse_Ariadne.Ok_saved))

:named projection_inverse_Ariadne.Ok_saved))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Crash_read (Ariadne.Crash @x0
@x1))
@x0)
 

:pattern ((Ariadne.Crash @x0
@x1))
:qid projection_inverse_Ariadne.Crash_read))

:named projection_inverse_Ariadne.Crash_read))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Crash_other (Ariadne.Crash @x0
@x1))
@x1)
 

:pattern ((Ariadne.Crash @x0
@x1))
:qid projection_inverse_Ariadne.Crash_other))

:named projection_inverse_Ariadne.Crash_other))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0)
Tm_type))
:qid kinding_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))

:named kinding_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! (HasType Ariadne.case
Tm_type)
:named kinding_Ariadne.case@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e1adf49e5e772ddffa19181e1a812a81
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_e1adf49e5e772ddffa19181e1a812a81))
;;;;;;;;;;;;;;;;haseq for Tm_refine_da3062322c9bea8d5b2058386775b91a
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (iff (Valid (Prims.hasEq Tm_refine_da3062322c9bea8d5b2058386775b91a))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_bd10f09297e0e7dc08314f7d9211801c
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,25-33,57); use=FStar.Preorder.fst(33,25-33,57)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0)))
(Valid (Prims.hasEq (FStar.Preorder.relation @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0))))
:qid haseqTm_refine_bd10f09297e0e7dc08314f7d9211801c))

:named haseqTm_refine_bd10f09297e0e7dc08314f7d9211801c))
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
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named function_token_typing_Prims.eqtype))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(45,5-45,9); use=Ariadne.fst(45,5-45,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
Ariadne.case)
(or (is-Ariadne.Ok @x1)
(is-Ariadne.Recover @x1)
(is-Ariadne.Writing @x1)
(is-Ariadne.Crash @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
Ariadne.case))
:qid fuel_guarded_inversion_Ariadne.case))

:named fuel_guarded_inversion_Ariadne.case))
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
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.transitive
;;; Fact-ids: Name FStar.Preorder.transitive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(27,4-27,14); use=FStar.Preorder.fst(27,4-27,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Preorder.transitive @x0
@x1))

;; def=FStar.Preorder.fst(28,2-28,60); use=FStar.Preorder.fst(28,2-28,60)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x0)
(HasType @x4
@x0)

;; def=FStar.Preorder.fst(28,29-28,36); use=FStar.Preorder.fst(28,29-28,36)
(Valid 
;; def=FStar.Preorder.fst(28,29-28,36); use=FStar.Preorder.fst(28,29-28,36)
(ApplyTT (ApplyTT @x1
@x2)
@x3)
)


;; def=FStar.Preorder.fst(28,40-28,47); use=FStar.Preorder.fst(28,40-28,47)
(Valid 
;; def=FStar.Preorder.fst(28,40-28,47); use=FStar.Preorder.fst(28,40-28,47)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)

;; def=FStar.Preorder.fst(28,53-28,60); use=FStar.Preorder.fst(28,53-28,60)
(Valid 
;; def=FStar.Preorder.fst(28,53-28,60); use=FStar.Preorder.fst(28,53-28,60)
(ApplyTT (ApplyTT @x1
@x2)
@x4)
)
)
 
;;no pats
:qid equation_FStar.Preorder.transitive.1))
)
 

:pattern ((FStar.Preorder.transitive @x0
@x1))
:qid equation_FStar.Preorder.transitive))

:named equation_FStar.Preorder.transitive))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.relation
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,5-20,13); use=FStar.Preorder.fst(20,5-20,13)
(forall ((@x0 Term))
 (! (= (FStar.Preorder.relation @x0)
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0))
 

:pattern ((FStar.Preorder.relation @x0))
:qid equation_FStar.Preorder.relation))

:named equation_FStar.Preorder.relation))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.reflexive
;;; Fact-ids: Name FStar.Preorder.reflexive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(24,4-24,13); use=FStar.Preorder.fst(24,4-24,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Preorder.reflexive @x0
@x1))

;; def=FStar.Preorder.fst(25,2-25,23); use=FStar.Preorder.fst(25,2-25,23)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x0)

;; def=FStar.Preorder.fst(25,16-25,23); use=FStar.Preorder.fst(25,16-25,23)
(Valid 
;; def=FStar.Preorder.fst(25,16-25,23); use=FStar.Preorder.fst(25,16-25,23)
(ApplyTT (ApplyTT @x1
@x2)
@x2)
)
)
 
;;no pats
:qid equation_FStar.Preorder.reflexive.1))
)
 

:pattern ((FStar.Preorder.reflexive @x0
@x1))
:qid equation_FStar.Preorder.reflexive))

:named equation_FStar.Preorder.reflexive))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.preorder_rel
;;; Fact-ids: Name FStar.Preorder.preorder_rel; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(30,4-30,16); use=FStar.Preorder.fst(30,4-30,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Preorder.preorder_rel @x0
@x1))

;; def=FStar.Preorder.fst(31,2-31,33); use=FStar.Preorder.fst(31,2-31,33)
(and 
;; def=FStar.Preorder.fst(31,2-31,15); use=FStar.Preorder.fst(31,2-31,15)
(Valid 
;; def=FStar.Preorder.fst(31,2-31,15); use=FStar.Preorder.fst(31,2-31,15)
(FStar.Preorder.reflexive @x0
@x1)
)


;; def=FStar.Preorder.fst(31,19-31,33); use=FStar.Preorder.fst(31,19-31,33)
(Valid 
;; def=FStar.Preorder.fst(31,19-31,33); use=FStar.Preorder.fst(31,19-31,33)
(FStar.Preorder.transitive @x0
@x1)
)
)
)
 

:pattern ((FStar.Preorder.preorder_rel @x0
@x1))
:qid equation_FStar.Preorder.preorder_rel))

:named equation_FStar.Preorder.preorder_rel))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.preorder
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,5-33,13); use=FStar.Preorder.fst(33,5-33,13)
(forall ((@x0 Term))
 (! (= (FStar.Preorder.preorder @x0)
(Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0))
 

:pattern ((FStar.Preorder.preorder @x0))
:qid equation_FStar.Preorder.preorder))

:named equation_FStar.Preorder.preorder))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.mref
;;; Fact-ids: Name FStar.Monotonic.Heap.mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(41,4-41,8); use=FStar.Monotonic.Heap.fsti(41,4-41,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Monotonic.Heap.mref @x0
@x1)
(FStar.Monotonic.Heap.core_mref @x0))
 

:pattern ((FStar.Monotonic.Heap.mref @x0
@x1))
:qid equation_FStar.Monotonic.Heap.mref))

:named equation_FStar.Monotonic.Heap.mref))
;;;;;;;;;;;;;;;;Equation for Ariadne.state
;;; Fact-ids: Name Ariadne.state; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(Ariadne.state @u0)

Prims.string)
 

:pattern (
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(Ariadne.state @u0)
)
:qid equation_Ariadne.state))

:named equation_Ariadne.state))
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
;;;;;;;;;;;;;;;;Prop-typing for FStar.Preorder.transitive
;;; Fact-ids: Name FStar.Preorder.transitive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(27,4-27,14); use=FStar.Preorder.fst(27,4-27,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(Valid (Prims.subtype_of (FStar.Preorder.transitive @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Preorder.transitive @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Preorder.transitive))

:named defn_equation_FStar.Preorder.transitive))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Preorder.reflexive
;;; Fact-ids: Name FStar.Preorder.reflexive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(24,4-24,13); use=FStar.Preorder.fst(24,4-24,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(Valid (Prims.subtype_of (FStar.Preorder.reflexive @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Preorder.reflexive @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Preorder.reflexive))

:named defn_equation_FStar.Preorder.reflexive))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Preorder.preorder_rel
;;; Fact-ids: Name FStar.Preorder.preorder_rel; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(30,4-30,16); use=FStar.Preorder.fst(30,4-30,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(Valid (Prims.subtype_of (FStar.Preorder.preorder_rel @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Preorder.preorder_rel @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Preorder.preorder_rel))

:named defn_equation_FStar.Preorder.preorder_rel))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value)))
(HasTypeFuel @u0
(Ariadne.Writing @x1
@x2)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Writing @x1
@x2)
Ariadne.case))
:qid data_typing_intro_Ariadne.Writing@tok))

:named data_typing_intro_Ariadne.Writing@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value)))
(HasTypeFuel @u0
(Ariadne.Recover @x1
@x2)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Recover @x1
@x2)
Ariadne.case))
:qid data_typing_intro_Ariadne.Recover@tok))

:named data_typing_intro_Ariadne.Recover@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
(Ariadne.Ok @x1)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Ok @x1)
Ariadne.case))
:qid data_typing_intro_Ariadne.Ok@tok))

:named data_typing_intro_Ariadne.Ok@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value)))
(HasTypeFuel @u0
(Ariadne.Crash @x1
@x2)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Crash @x1
@x2)
Ariadne.case))
:qid data_typing_intro_Ariadne.Crash@tok))

:named data_typing_intro_Ariadne.Crash@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case)
(and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case))
:qid data_elim_Ariadne.Writing))

:named data_elim_Ariadne.Writing))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case)
(and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case))
:qid data_elim_Ariadne.Recover))

:named data_elim_Ariadne.Recover))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case)
(HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case))
:qid data_elim_Ariadne.Ok))

:named data_elim_Ariadne.Ok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case)
(and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case))
:qid data_elim_Ariadne.Crash))

:named data_elim_Ariadne.Crash))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! (= 129
(Term_constr_id Ariadne.case))
:named constructor_distinct_Ariadne.case))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 145
(Term_constr_id (Ariadne.Writing @x0
@x1)))
 

:pattern ((Ariadne.Writing @x0
@x1))
:qid constructor_distinct_Ariadne.Writing))

:named constructor_distinct_Ariadne.Writing))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 140
(Term_constr_id (Ariadne.Recover @x0
@x1)))
 

:pattern ((Ariadne.Recover @x0
@x1))
:qid constructor_distinct_Ariadne.Recover))

:named constructor_distinct_Ariadne.Recover))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@x0 Term))
 (! (= 135
(Term_constr_id (Ariadne.Ok @x0)))
 

:pattern ((Ariadne.Ok @x0))
:qid constructor_distinct_Ariadne.Ok))

:named constructor_distinct_Ariadne.Ok))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 150
(Term_constr_id (Ariadne.Crash @x0
@x1)))
 

:pattern ((Ariadne.Crash @x0
@x1))
:qid constructor_distinct_Ariadne.Crash))

:named constructor_distinct_Ariadne.Crash))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x2)))
:qid FStar.Preorder_pre_typing_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))

:named FStar.Preorder_pre_typing_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x1))
(and 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x1)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f.1))

(IsTotFun @x0)

;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x1)))
:qid FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))

:named FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Monotonic.Heap.core_mref @x2))
(= (FStar.Monotonic.Heap.core_mref @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Monotonic.Heap.core_mref @x2)))
:qid FStar.Monotonic.Heap_pretyping_67b0ade1260a0985dfe99d32b2574a59))

:named FStar.Monotonic.Heap_pretyping_67b0ade1260a0985dfe99d32b2574a59))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(45,5-45,9); use=Ariadne.fst(45,5-45,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Ariadne.case)
(= Ariadne.case
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Ariadne.case))
:qid Ariadne_pretyping_e7427cf45b373c9ca2ad9a1d8711584a))

:named Ariadne_pretyping_e7427cf45b373c9ca2ad9a1d8711584a))
(push) ;; push{4

; Starting query at Ariadne.fst(45,0-49,46)

(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq Ariadne.case ==>
; (forall (saved: Ariadne.state).
;     (*  - Failed to prove that the type
;     'Ariadne.case'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq Ariadne.state) /\
; (forall (read: Ariadne.state) (other: Ariadne.state).
;     Prims.hasEq Ariadne.state /\ Prims.hasEq Ariadne.state) /\
; (forall (written: Ariadne.state) (old: Ariadne.state).
;     Prims.hasEq Ariadne.state /\ Prims.hasEq Ariadne.state) /\
; (forall (read: Ariadne.state) (other: Ariadne.state).
;     Prims.hasEq Ariadne.state /\ Prims.hasEq Ariadne.state)


; Context: While encoding a query
; While typechecking the top-level declaration `type Ariadne.case`

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
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq Ariadne.case)
)


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(and 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(Ariadne.state Dummy_value))

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(46,15-46,20)
(or label_1

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)
)
 
;;no pats
:qid @query))


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Ariadne.state Dummy_value))
(HasType @x1
(Ariadne.state Dummy_value)))

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(and 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(47,19-47,24)
(or label_2

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(47,35-47,40)
(or label_3

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)
)
)
 
;;no pats
:qid @query.1))


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Ariadne.state Dummy_value))
(HasType @x1
(Ariadne.state Dummy_value)))

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(and 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(48,22-48,27)
(or label_4

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(48,36-48,41)
(or label_5

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)
)
)
 
;;no pats
:qid @query.2))


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(Ariadne.state Dummy_value))
(HasType @x1
(Ariadne.state Dummy_value)))

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(and 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(49,17-49,22)
(or label_6

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)


;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(49,33-49,38)
(or label_7

;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Valid 
;; def=Ariadne.fst(45,0-49,46); use=Ariadne.fst(45,0-49,46)
(Prims.hasEq (Ariadne.state Dummy_value))
)
)
)
)
 
;;no pats
:qid @query.3))
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
; QUERY ID: (Ariadne.case, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Ariadne.state, equation_Prims.eqtype, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.string

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type Ariadne.case


; <Start encoding type Ariadne.case>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.case () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Ok (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Ok_saved (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Ok
(declare-fun Ariadne.Ok@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Recover (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Recover_read (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Recover_other (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Recover
(declare-fun Ariadne.Recover@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Writing (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Writing_written (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Writing_old (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Writing
(declare-fun Ariadne.Writing@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Crash (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Crash_read (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Crash_other (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Crash
(declare-fun Ariadne.Crash@tok () Term)
;;;;;;;;;;;;;;;;saved: state -> case
(declare-fun Tm_arrow_56739b95c4243db13cc48d8d7fff9cc1 () Term)
;;;;;;;;;;;;;;;;read: state -> other: state -> case
(declare-fun Tm_arrow_b16bfcdeab920f1a6213086afcdca74c () Term)



; <start constructor Ariadne.case>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.case ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
154)
(= __@x0
Ariadne.case)))

; </end constructor Ariadne.case>


; <start constructor Ariadne.Ok>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Ok ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
160)
(= __@x0
(Ariadne.Ok (Ariadne.Ok_saved __@x0)))))

; </end constructor Ariadne.Ok>


; <start constructor Ariadne.Recover>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Recover ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
165)
(= __@x0
(Ariadne.Recover (Ariadne.Recover_read __@x0)
(Ariadne.Recover_other __@x0)))))

; </end constructor Ariadne.Recover>


; <start constructor Ariadne.Writing>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Writing ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
170)
(= __@x0
(Ariadne.Writing (Ariadne.Writing_written __@x0)
(Ariadne.Writing_old __@x0)))))

; </end constructor Ariadne.Writing>


; <start constructor Ariadne.Crash>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Crash ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
175)
(= __@x0
(Ariadne.Crash (Ariadne.Crash_read __@x0)
(Ariadne.Crash_other __@x0)))))

; </end constructor Ariadne.Crash>


; </end encoding type Ariadne.case>


; encoding sigelt assume Ariadne.case__uu___haseq


; <Start encoding assume Ariadne.case__uu___haseq>


; </end encoding assume Ariadne.case__uu___haseq>


; encoding sigelt val Ariadne.uu___is_Ok


; <Start encoding val Ariadne.uu___is_Ok>

(declare-fun Ariadne.uu___is_Ok (Term) Term)
;;;;;;;;;;;;;;;;projectee: case -> Prims.bool
(declare-fun Tm_arrow_338502a39b5107041d9de5893e8b168b () Term)
(declare-fun Ariadne.uu___is_Ok@tok () Term)

; </end encoding val Ariadne.uu___is_Ok>


; encoding sigelt let uu___is_Ok


; <Skipped let uu___is_Ok/>


; encoding sigelt val Ariadne.__proj__Ok__item__saved


; <Start encoding val Ariadne.__proj__Ok__item__saved>

(declare-fun Tm_refine_433d08d8d7a72b888729343254dd5f4a () Term)
(declare-fun Ariadne.__proj__Ok__item__saved (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: case{Ok? _} -> state
(declare-fun Tm_arrow_8db5df828571d117cdeb8dd7520b4dd8 () Term)
(declare-fun Ariadne.__proj__Ok__item__saved@tok () Term)

; </end encoding val Ariadne.__proj__Ok__item__saved>

;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.__cache_version_number__; Namespace Prims
(assert (! (HasType Prims.__cache_version_number__
Prims.int)
:named function_token_typing_Prims.__cache_version_number__))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.lemma_mref_injectivity
Tm_refine_e1adf49e5e772ddffa19181e1a812a81)
:named function_token_typing_FStar.Monotonic.Heap.lemma_mref_injectivity))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.lemma_mref_injectivity
Tm_refine_e1adf49e5e772ddffa19181e1a812a81)
:named typing_FStar.Monotonic.Heap.lemma_mref_injectivity))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (HasType Prims.string
Prims.eqtype)
:named typing_Prims.string))
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
;;; Fact-ids: Name FStar.Preorder.transitive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(27,4-27,14); use=FStar.Preorder.fst(27,4-27,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(HasType (FStar.Preorder.transitive @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Preorder.transitive @x0
@x1))
:qid typing_FStar.Preorder.transitive))

:named typing_FStar.Preorder.transitive))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,5-20,13); use=FStar.Preorder.fst(20,5-20,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Preorder.relation @x0)
Tm_type))
 

:pattern ((FStar.Preorder.relation @x0))
:qid typing_FStar.Preorder.relation))

:named typing_FStar.Preorder.relation))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.reflexive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(24,4-24,13); use=FStar.Preorder.fst(24,4-24,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(HasType (FStar.Preorder.reflexive @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Preorder.reflexive @x0
@x1))
:qid typing_FStar.Preorder.reflexive))

:named typing_FStar.Preorder.reflexive))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.preorder_rel; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(30,4-30,16); use=FStar.Preorder.fst(30,4-30,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(HasType (FStar.Preorder.preorder_rel @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Preorder.preorder_rel @x0
@x1))
:qid typing_FStar.Preorder.preorder_rel))

:named typing_FStar.Preorder.preorder_rel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,5-33,13); use=FStar.Preorder.fst(33,5-33,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Preorder.preorder @x0)
Tm_type))
 

:pattern ((FStar.Preorder.preorder @x0))
:qid typing_FStar.Preorder.preorder))

:named typing_FStar.Preorder.preorder))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(41,4-41,8); use=FStar.Monotonic.Heap.fsti(41,4-41,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.Monotonic.Heap.mref @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.mref @x0
@x1))
:qid typing_FStar.Monotonic.Heap.mref))

:named typing_FStar.Monotonic.Heap.mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Monotonic.Heap.core_mref @x0)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid typing_FStar.Monotonic.Heap.core_mref))

:named typing_FStar.Monotonic.Heap.core_mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.uu___is_Ok; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.case)
(HasType (Ariadne.uu___is_Ok @x0)
Prims.bool))
 

:pattern ((Ariadne.uu___is_Ok @x0))
:qid typing_Ariadne.uu___is_Ok))

:named typing_Ariadne.uu___is_Ok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.state; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(forall ((@u0 Dummy_sort))
 (! (HasType (Ariadne.state @u0)
Prims.eqtype)
 

:pattern ((Ariadne.state @u0))
:qid typing_Ariadne.state))

:named typing_Ariadne.state))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Writing @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Writing @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case))
:qid subterm_ordering_Ariadne.Writing))

:named subterm_ordering_Ariadne.Writing))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Recover @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Recover @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case))
:qid subterm_ordering_Ariadne.Recover))

:named subterm_ordering_Ariadne.Recover))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Ok @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case))
:qid subterm_ordering_Ariadne.Ok))

:named subterm_ordering_Ariadne.Ok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Crash @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Crash @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case))
:qid subterm_ordering_Ariadne.Crash))

:named subterm_ordering_Ariadne.Crash))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_e1adf49e5e772ddffa19181e1a812a81
Tm_type)
:named refinement_kinding_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (HasType Tm_refine_da3062322c9bea8d5b2058386775b91a
Tm_type)
:named refinement_kinding_Tm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,25-33,57); use=FStar.Preorder.fst(33,25-33,57)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))

:named refinement_kinding_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
Tm_type)
:named refinement_kinding_Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.__proj__Ok__item__saved; Namespace Ariadne
(assert (! (HasType Tm_refine_433d08d8d7a72b888729343254dd5f4a
Tm_type)
:named refinement_kinding_Tm_refine_433d08d8d7a72b888729343254dd5f4a))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(207,3-207,136); use=FStar.Monotonic.Heap.fsti(207,3-207,136)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e1adf49e5e772ddffa19181e1a812a81)
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=FStar.Monotonic.Heap.fsti(207,11-207,134); use=FStar.Monotonic.Heap.fsti(207,11-207,134)
(forall ((@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
Tm_type)
(HasType @x4
(FStar.Preorder.preorder @x2))
(HasType @x5
(FStar.Preorder.preorder @x3))
(HasType @x6
(FStar.Monotonic.Heap.mref @x2
@x4))
(HasType @x7
(FStar.Monotonic.Heap.mref @x3
@x5))

;; def=FStar.Monotonic.Heap.fsti(207,109-207,116); use=FStar.Monotonic.Heap.fsti(207,109-207,116)
(not 
;; def=FStar.Monotonic.Heap.fsti(207,109-207,116); use=FStar.Monotonic.Heap.fsti(207,109-207,116)
(= @x2
@x3)
)
)

;; def=FStar.Monotonic.Heap.fsti(207,121-207,134); use=FStar.Monotonic.Heap.fsti(207,121-207,134)
(not 
;; def=FStar.Monotonic.Heap.fsti(207,123-207,134); use=FStar.Monotonic.Heap.fsti(207,123-207,134)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(207,123-207,134); use=FStar.Monotonic.Heap.fsti(207,123-207,134)
(Prims.op_Equals_Equals_Equals (FStar.Monotonic.Heap.mref @x2
@x4)
(FStar.Monotonic.Heap.mref @x3
@x5)
@x6
@x7)
)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_e1adf49e5e772ddffa19181e1a812a81.1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
:qid refinement_interpretation_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))

:named refinement_interpretation_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
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
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,25-33,57); use=FStar.Preorder.fst(33,25-33,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Preorder.relation @x2))

;; def=FStar.Preorder.fst(33,40-33,56); use=FStar.Preorder.fst(33,40-33,56)
(Valid 
;; def=FStar.Preorder.fst(33,40-33,56); use=FStar.Preorder.fst(33,40-33,56)
(FStar.Preorder.preorder_rel @x2
@x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x2)))
:qid refinement_interpretation_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))

:named refinement_interpretation_Tm_refine_bd10f09297e0e7dc08314f7d9211801c))
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
;;; Fact-ids: Name Ariadne.__proj__Ok__item__saved; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_433d08d8d7a72b888729343254dd5f4a)
(and (HasTypeFuel @u0
@x1
Ariadne.case)

;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_433d08d8d7a72b888729343254dd5f4a))
:qid refinement_interpretation_Tm_refine_433d08d8d7a72b888729343254dd5f4a))

:named refinement_interpretation_Tm_refine_433d08d8d7a72b888729343254dd5f4a))
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
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Writing_written (Ariadne.Writing @x0
@x1))
@x0)
 

:pattern ((Ariadne.Writing @x0
@x1))
:qid projection_inverse_Ariadne.Writing_written))

:named projection_inverse_Ariadne.Writing_written))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Writing_old (Ariadne.Writing @x0
@x1))
@x1)
 

:pattern ((Ariadne.Writing @x0
@x1))
:qid projection_inverse_Ariadne.Writing_old))

:named projection_inverse_Ariadne.Writing_old))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Recover_read (Ariadne.Recover @x0
@x1))
@x0)
 

:pattern ((Ariadne.Recover @x0
@x1))
:qid projection_inverse_Ariadne.Recover_read))

:named projection_inverse_Ariadne.Recover_read))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Recover_other (Ariadne.Recover @x0
@x1))
@x1)
 

:pattern ((Ariadne.Recover @x0
@x1))
:qid projection_inverse_Ariadne.Recover_other))

:named projection_inverse_Ariadne.Recover_other))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@x0 Term))
 (! (= (Ariadne.Ok_saved (Ariadne.Ok @x0))
@x0)
 

:pattern ((Ariadne.Ok @x0))
:qid projection_inverse_Ariadne.Ok_saved))

:named projection_inverse_Ariadne.Ok_saved))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Crash_read (Ariadne.Crash @x0
@x1))
@x0)
 

:pattern ((Ariadne.Crash @x0
@x1))
:qid projection_inverse_Ariadne.Crash_read))

:named projection_inverse_Ariadne.Crash_read))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Crash_other (Ariadne.Crash @x0
@x1))
@x1)
 

:pattern ((Ariadne.Crash @x0
@x1))
:qid projection_inverse_Ariadne.Crash_other))

:named projection_inverse_Ariadne.Crash_other))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0)
Tm_type))
:qid kinding_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))

:named kinding_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! (HasType Ariadne.case
Tm_type)
:named kinding_Ariadne.case@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e1adf49e5e772ddffa19181e1a812a81
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_e1adf49e5e772ddffa19181e1a812a81))
;;;;;;;;;;;;;;;;haseq for Tm_refine_da3062322c9bea8d5b2058386775b91a
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (iff (Valid (Prims.hasEq Tm_refine_da3062322c9bea8d5b2058386775b91a))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_bd10f09297e0e7dc08314f7d9211801c
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,25-33,57); use=FStar.Preorder.fst(33,25-33,57)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0)))
(Valid (Prims.hasEq (FStar.Preorder.relation @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0))))
:qid haseqTm_refine_bd10f09297e0e7dc08314f7d9211801c))

:named haseqTm_refine_bd10f09297e0e7dc08314f7d9211801c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_73f210ca6e0061ed4a3150f69b8f33bf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_433d08d8d7a72b888729343254dd5f4a
;;; Fact-ids: Name Ariadne.__proj__Ok__item__saved; Namespace Ariadne
(assert (! (iff (Valid (Prims.hasEq Tm_refine_433d08d8d7a72b888729343254dd5f4a))
(Valid (Prims.hasEq Ariadne.case)))
:named haseqTm_refine_433d08d8d7a72b888729343254dd5f4a))
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
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(45,5-45,9); use=Ariadne.fst(45,5-45,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
Ariadne.case)
(or (is-Ariadne.Ok @x1)
(is-Ariadne.Recover @x1)
(is-Ariadne.Writing @x1)
(is-Ariadne.Crash @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
Ariadne.case))
:qid fuel_guarded_inversion_Ariadne.case))

:named fuel_guarded_inversion_Ariadne.case))
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
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.transitive
;;; Fact-ids: Name FStar.Preorder.transitive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(27,4-27,14); use=FStar.Preorder.fst(27,4-27,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Preorder.transitive @x0
@x1))

;; def=FStar.Preorder.fst(28,2-28,60); use=FStar.Preorder.fst(28,2-28,60)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x0)
(HasType @x4
@x0)

;; def=FStar.Preorder.fst(28,29-28,36); use=FStar.Preorder.fst(28,29-28,36)
(Valid 
;; def=FStar.Preorder.fst(28,29-28,36); use=FStar.Preorder.fst(28,29-28,36)
(ApplyTT (ApplyTT @x1
@x2)
@x3)
)


;; def=FStar.Preorder.fst(28,40-28,47); use=FStar.Preorder.fst(28,40-28,47)
(Valid 
;; def=FStar.Preorder.fst(28,40-28,47); use=FStar.Preorder.fst(28,40-28,47)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)

;; def=FStar.Preorder.fst(28,53-28,60); use=FStar.Preorder.fst(28,53-28,60)
(Valid 
;; def=FStar.Preorder.fst(28,53-28,60); use=FStar.Preorder.fst(28,53-28,60)
(ApplyTT (ApplyTT @x1
@x2)
@x4)
)
)
 
;;no pats
:qid equation_FStar.Preorder.transitive.1))
)
 

:pattern ((FStar.Preorder.transitive @x0
@x1))
:qid equation_FStar.Preorder.transitive))

:named equation_FStar.Preorder.transitive))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.relation
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,5-20,13); use=FStar.Preorder.fst(20,5-20,13)
(forall ((@x0 Term))
 (! (= (FStar.Preorder.relation @x0)
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0))
 

:pattern ((FStar.Preorder.relation @x0))
:qid equation_FStar.Preorder.relation))

:named equation_FStar.Preorder.relation))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.reflexive
;;; Fact-ids: Name FStar.Preorder.reflexive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(24,4-24,13); use=FStar.Preorder.fst(24,4-24,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Preorder.reflexive @x0
@x1))

;; def=FStar.Preorder.fst(25,2-25,23); use=FStar.Preorder.fst(25,2-25,23)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x0)

;; def=FStar.Preorder.fst(25,16-25,23); use=FStar.Preorder.fst(25,16-25,23)
(Valid 
;; def=FStar.Preorder.fst(25,16-25,23); use=FStar.Preorder.fst(25,16-25,23)
(ApplyTT (ApplyTT @x1
@x2)
@x2)
)
)
 
;;no pats
:qid equation_FStar.Preorder.reflexive.1))
)
 

:pattern ((FStar.Preorder.reflexive @x0
@x1))
:qid equation_FStar.Preorder.reflexive))

:named equation_FStar.Preorder.reflexive))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.preorder_rel
;;; Fact-ids: Name FStar.Preorder.preorder_rel; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(30,4-30,16); use=FStar.Preorder.fst(30,4-30,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Preorder.preorder_rel @x0
@x1))

;; def=FStar.Preorder.fst(31,2-31,33); use=FStar.Preorder.fst(31,2-31,33)
(and 
;; def=FStar.Preorder.fst(31,2-31,15); use=FStar.Preorder.fst(31,2-31,15)
(Valid 
;; def=FStar.Preorder.fst(31,2-31,15); use=FStar.Preorder.fst(31,2-31,15)
(FStar.Preorder.reflexive @x0
@x1)
)


;; def=FStar.Preorder.fst(31,19-31,33); use=FStar.Preorder.fst(31,19-31,33)
(Valid 
;; def=FStar.Preorder.fst(31,19-31,33); use=FStar.Preorder.fst(31,19-31,33)
(FStar.Preorder.transitive @x0
@x1)
)
)
)
 

:pattern ((FStar.Preorder.preorder_rel @x0
@x1))
:qid equation_FStar.Preorder.preorder_rel))

:named equation_FStar.Preorder.preorder_rel))
;;;;;;;;;;;;;;;;Equation for FStar.Preorder.preorder
;;; Fact-ids: Name FStar.Preorder.preorder; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(33,5-33,13); use=FStar.Preorder.fst(33,5-33,13)
(forall ((@x0 Term))
 (! (= (FStar.Preorder.preorder @x0)
(Tm_refine_bd10f09297e0e7dc08314f7d9211801c @x0))
 

:pattern ((FStar.Preorder.preorder @x0))
:qid equation_FStar.Preorder.preorder))

:named equation_FStar.Preorder.preorder))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.mref
;;; Fact-ids: Name FStar.Monotonic.Heap.mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(41,4-41,8); use=FStar.Monotonic.Heap.fsti(41,4-41,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Monotonic.Heap.mref @x0
@x1)
(FStar.Monotonic.Heap.core_mref @x0))
 

:pattern ((FStar.Monotonic.Heap.mref @x0
@x1))
:qid equation_FStar.Monotonic.Heap.mref))

:named equation_FStar.Monotonic.Heap.mref))
;;;;;;;;;;;;;;;;Equation for Ariadne.state
;;; Fact-ids: Name Ariadne.state; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(Ariadne.state @u0)

Prims.string)
 

:pattern (
;; def=Ariadne.fst(40,5-40,10); use=Ariadne.fst(40,5-40,10)
(Ariadne.state @u0)
)
:qid equation_Ariadne.state))

:named equation_Ariadne.state))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Ariadne.uu___is_Ok; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@x0 Term))
 (! (= (Ariadne.uu___is_Ok @x0)
(BoxBool (is-Ariadne.Ok @x0)))
 

:pattern ((Ariadne.uu___is_Ok @x0))
:qid disc_equation_Ariadne.Ok))

:named disc_equation_Ariadne.Ok))
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
;;;;;;;;;;;;;;;;Prop-typing for FStar.Preorder.transitive
;;; Fact-ids: Name FStar.Preorder.transitive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(27,4-27,14); use=FStar.Preorder.fst(27,4-27,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(Valid (Prims.subtype_of (FStar.Preorder.transitive @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Preorder.transitive @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Preorder.transitive))

:named defn_equation_FStar.Preorder.transitive))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Preorder.reflexive
;;; Fact-ids: Name FStar.Preorder.reflexive; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(24,4-24,13); use=FStar.Preorder.fst(24,4-24,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(Valid (Prims.subtype_of (FStar.Preorder.reflexive @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Preorder.reflexive @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Preorder.reflexive))

:named defn_equation_FStar.Preorder.reflexive))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Preorder.preorder_rel
;;; Fact-ids: Name FStar.Preorder.preorder_rel; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(30,4-30,16); use=FStar.Preorder.fst(30,4-30,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.relation @x0)))
(Valid (Prims.subtype_of (FStar.Preorder.preorder_rel @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Preorder.preorder_rel @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Preorder.preorder_rel))

:named defn_equation_FStar.Preorder.preorder_rel))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value)))
(HasTypeFuel @u0
(Ariadne.Writing @x1
@x2)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Writing @x1
@x2)
Ariadne.case))
:qid data_typing_intro_Ariadne.Writing@tok))

:named data_typing_intro_Ariadne.Writing@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value)))
(HasTypeFuel @u0
(Ariadne.Recover @x1
@x2)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Recover @x1
@x2)
Ariadne.case))
:qid data_typing_intro_Ariadne.Recover@tok))

:named data_typing_intro_Ariadne.Recover@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
(Ariadne.Ok @x1)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Ok @x1)
Ariadne.case))
:qid data_typing_intro_Ariadne.Ok@tok))

:named data_typing_intro_Ariadne.Ok@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value)))
(HasTypeFuel @u0
(Ariadne.Crash @x1
@x2)
Ariadne.case))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Crash @x1
@x2)
Ariadne.case))
:qid data_typing_intro_Ariadne.Crash@tok))

:named data_typing_intro_Ariadne.Crash@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case)
(and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Writing @x1
@x2)
Ariadne.case))
:qid data_elim_Ariadne.Writing))

:named data_elim_Ariadne.Writing))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case)
(and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Recover @x1
@x2)
Ariadne.case))
:qid data_elim_Ariadne.Recover))

:named data_elim_Ariadne.Recover))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case)
(HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Ok @x1)
Ariadne.case))
:qid data_elim_Ariadne.Ok))

:named data_elim_Ariadne.Ok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case)
(and (HasTypeFuel @u0
@x1
(Ariadne.state Dummy_value))
(HasTypeFuel @u0
@x2
(Ariadne.state Dummy_value))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Crash @x1
@x2)
Ariadne.case))
:qid data_elim_Ariadne.Crash))

:named data_elim_Ariadne.Crash))
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
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (= 107
(Term_constr_id Prims.bool))
:named constructor_distinct_Prims.bool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! (= 154
(Term_constr_id Ariadne.case))
:named constructor_distinct_Ariadne.case))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 170
(Term_constr_id (Ariadne.Writing @x0
@x1)))
 

:pattern ((Ariadne.Writing @x0
@x1))
:qid constructor_distinct_Ariadne.Writing))

:named constructor_distinct_Ariadne.Writing))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 165
(Term_constr_id (Ariadne.Recover @x0
@x1)))
 

:pattern ((Ariadne.Recover @x0
@x1))
:qid constructor_distinct_Ariadne.Recover))

:named constructor_distinct_Ariadne.Recover))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,4-46,6)
(forall ((@x0 Term))
 (! (= 160
(Term_constr_id (Ariadne.Ok @x0)))
 

:pattern ((Ariadne.Ok @x0))
:qid constructor_distinct_Ariadne.Ok))

:named constructor_distinct_Ariadne.Ok))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 175
(Term_constr_id (Ariadne.Crash @x0
@x1)))
 

:pattern ((Ariadne.Crash @x0
@x1))
:qid constructor_distinct_Ariadne.Crash))

:named constructor_distinct_Ariadne.Crash))
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
;;;;;;;;;;;;;;;;Assumption: Ariadne.case__uu___haseq
;;; Fact-ids: Name Ariadne.case__uu___haseq; Namespace Ariadne
(assert (! (Valid (Prims.hasEq Ariadne.case))
:named assumption_Ariadne.case__uu___haseq))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x2)))
:qid FStar.Preorder_pre_typing_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))

:named FStar.Preorder_pre_typing_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f
;;; Fact-ids: Name FStar.Preorder.relation; Namespace FStar.Preorder
(assert (! 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x1))
(and 
;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x1)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f.1))

(IsTotFun @x0)

;; def=FStar.Preorder.fst(20,15-20,40); use=FStar.Preorder.fst(20,25-20,40)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x1)))
:qid FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))

:named FStar.Preorder_interpretation_Tm_arrow_a19f9d49348d4e0038f0ded87d87802f))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Monotonic.Heap.core_mref @x2))
(= (FStar.Monotonic.Heap.core_mref @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Monotonic.Heap.core_mref @x2)))
:qid FStar.Monotonic.Heap_pretyping_67b0ade1260a0985dfe99d32b2574a59))

:named FStar.Monotonic.Heap_pretyping_67b0ade1260a0985dfe99d32b2574a59))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Ariadne.case; Namespace Ariadne; Name Ariadne.Ok; Namespace Ariadne; Name Ariadne.Recover; Namespace Ariadne; Name Ariadne.Writing; Namespace Ariadne; Name Ariadne.Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(45,5-45,9); use=Ariadne.fst(45,5-45,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Ariadne.case)
(= Ariadne.case
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Ariadne.case))
:qid Ariadne_pretyping_e7427cf45b373c9ca2ad9a1d8711584a))

:named Ariadne_pretyping_e7427cf45b373c9ca2ad9a1d8711584a))
(push) ;; push{2

; Starting query at Ariadne.fst(46,8-46,13)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Ok? _}).
;   (*  - Could not prove post-condition
; *) ~(Ok? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Ok__item__saved`

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
Tm_refine_433d08d8d7a72b888729343254dd5f4a)

;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,8-46,13)
(not 
;; def=Ariadne.fst(46,4-46,6); use=Ariadne.fst(46,8-46,13)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x0))
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
; QUERY ID: (Ariadne.__proj__Ok__item__saved, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_433d08d8d7a72b888729343254dd5f4a

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Ok__item__saved


; <Skipped let __proj__Ok__item__saved/>


; encoding sigelt val Ariadne.uu___is_Recover


; <Start encoding val Ariadne.uu___is_Recover>

(declare-fun Ariadne.uu___is_Recover (Term) Term)

(declare-fun Ariadne.uu___is_Recover@tok () Term)

; </end encoding val Ariadne.uu___is_Recover>


; encoding sigelt let uu___is_Recover


; <Skipped let uu___is_Recover/>


; encoding sigelt val Ariadne.__proj__Recover__item__read


; <Start encoding val Ariadne.__proj__Recover__item__read>

(declare-fun Tm_refine_4866c1405a82ccc72c55102aa593b7ee () Term)
(declare-fun Ariadne.__proj__Recover__item__read (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: case{Recover? _} -> state
(declare-fun Tm_arrow_962ec62c3d61d59f656e6df4f2de0a22 () Term)
(declare-fun Ariadne.__proj__Recover__item__read@tok () Term)

; </end encoding val Ariadne.__proj__Recover__item__read>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.uu___is_Recover; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.case)
(HasType (Ariadne.uu___is_Recover @x0)
Prims.bool))
 

:pattern ((Ariadne.uu___is_Recover @x0))
:qid typing_Ariadne.uu___is_Recover))

:named typing_Ariadne.uu___is_Recover))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.__proj__Recover__item__read; Namespace Ariadne
(assert (! (HasType Tm_refine_4866c1405a82ccc72c55102aa593b7ee
Tm_type)
:named refinement_kinding_Tm_refine_4866c1405a82ccc72c55102aa593b7ee))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Ariadne.__proj__Recover__item__read; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4866c1405a82ccc72c55102aa593b7ee)
(and (HasTypeFuel @u0
@x1
Ariadne.case)

;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4866c1405a82ccc72c55102aa593b7ee))
:qid refinement_interpretation_Tm_refine_4866c1405a82ccc72c55102aa593b7ee))

:named refinement_interpretation_Tm_refine_4866c1405a82ccc72c55102aa593b7ee))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4866c1405a82ccc72c55102aa593b7ee
;;; Fact-ids: Name Ariadne.__proj__Recover__item__read; Namespace Ariadne
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4866c1405a82ccc72c55102aa593b7ee))
(Valid (Prims.hasEq Ariadne.case)))
:named haseqTm_refine_4866c1405a82ccc72c55102aa593b7ee))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Ariadne.uu___is_Recover; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,4-47,11)
(forall ((@x0 Term))
 (! (= (Ariadne.uu___is_Recover @x0)
(BoxBool (is-Ariadne.Recover @x0)))
 

:pattern ((Ariadne.uu___is_Recover @x0))
:qid disc_equation_Ariadne.Recover))

:named disc_equation_Ariadne.Recover))
(push) ;; push{2

; Starting query at Ariadne.fst(47,13-47,17)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Recover? _}).
;   (*  - Could not prove post-condition
; *) ~(Recover? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Recover__item__read`

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
Tm_refine_4866c1405a82ccc72c55102aa593b7ee)

;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,13-47,17)
(not 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,13-47,17)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x0))
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
; QUERY ID: (Ariadne.__proj__Recover__item__read, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4866c1405a82ccc72c55102aa593b7ee

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Recover__item__read


; <Skipped let __proj__Recover__item__read/>


; encoding sigelt val Ariadne.__proj__Recover__item__other


; <Start encoding val Ariadne.__proj__Recover__item__other>


(declare-fun Ariadne.__proj__Recover__item__other (Term) Term)


(declare-fun Ariadne.__proj__Recover__item__other@tok () Term)

; </end encoding val Ariadne.__proj__Recover__item__other>

(push) ;; push{2

; Starting query at Ariadne.fst(47,28-47,33)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Recover? _}).
;   (*  - Could not prove post-condition
; *) ~(Recover? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Recover__item__other`

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
Tm_refine_4866c1405a82ccc72c55102aa593b7ee)

;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,28-47,33)
(not 
;; def=Ariadne.fst(47,4-47,11); use=Ariadne.fst(47,28-47,33)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x0))
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
; QUERY ID: (Ariadne.__proj__Recover__item__other, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4866c1405a82ccc72c55102aa593b7ee

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Recover__item__other


; <Skipped let __proj__Recover__item__other/>


; encoding sigelt val Ariadne.uu___is_Writing


; <Start encoding val Ariadne.uu___is_Writing>

(declare-fun Ariadne.uu___is_Writing (Term) Term)

(declare-fun Ariadne.uu___is_Writing@tok () Term)

; </end encoding val Ariadne.uu___is_Writing>


; encoding sigelt let uu___is_Writing


; <Skipped let uu___is_Writing/>


; encoding sigelt val Ariadne.__proj__Writing__item__written


; <Start encoding val Ariadne.__proj__Writing__item__written>

(declare-fun Tm_refine_4fff7e1627aecb8a01ff14db8bd98023 () Term)
(declare-fun Ariadne.__proj__Writing__item__written (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: case{Writing? _} -> state
(declare-fun Tm_arrow_b2612771947a8a23eeaae5ad2041a055 () Term)
(declare-fun Ariadne.__proj__Writing__item__written@tok () Term)

; </end encoding val Ariadne.__proj__Writing__item__written>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.uu___is_Writing; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.case)
(HasType (Ariadne.uu___is_Writing @x0)
Prims.bool))
 

:pattern ((Ariadne.uu___is_Writing @x0))
:qid typing_Ariadne.uu___is_Writing))

:named typing_Ariadne.uu___is_Writing))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.__proj__Writing__item__written; Namespace Ariadne
(assert (! (HasType Tm_refine_4fff7e1627aecb8a01ff14db8bd98023
Tm_type)
:named refinement_kinding_Tm_refine_4fff7e1627aecb8a01ff14db8bd98023))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Ariadne.__proj__Writing__item__written; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fff7e1627aecb8a01ff14db8bd98023)
(and (HasTypeFuel @u0
@x1
Ariadne.case)

;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fff7e1627aecb8a01ff14db8bd98023))
:qid refinement_interpretation_Tm_refine_4fff7e1627aecb8a01ff14db8bd98023))

:named refinement_interpretation_Tm_refine_4fff7e1627aecb8a01ff14db8bd98023))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fff7e1627aecb8a01ff14db8bd98023
;;; Fact-ids: Name Ariadne.__proj__Writing__item__written; Namespace Ariadne
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fff7e1627aecb8a01ff14db8bd98023))
(Valid (Prims.hasEq Ariadne.case)))
:named haseqTm_refine_4fff7e1627aecb8a01ff14db8bd98023))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Ariadne.uu___is_Writing; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,4-48,11)
(forall ((@x0 Term))
 (! (= (Ariadne.uu___is_Writing @x0)
(BoxBool (is-Ariadne.Writing @x0)))
 

:pattern ((Ariadne.uu___is_Writing @x0))
:qid disc_equation_Ariadne.Writing))

:named disc_equation_Ariadne.Writing))
(push) ;; push{2

; Starting query at Ariadne.fst(48,13-48,20)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Writing? _}).
;   (*  - Could not prove post-condition
; *) ~(Writing? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Writing__item__written`

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
Tm_refine_4fff7e1627aecb8a01ff14db8bd98023)

;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,13-48,20)
(not 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,13-48,20)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x0))
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
; QUERY ID: (Ariadne.__proj__Writing__item__written, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4fff7e1627aecb8a01ff14db8bd98023

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Writing__item__written


; <Skipped let __proj__Writing__item__written/>


; encoding sigelt val Ariadne.__proj__Writing__item__old


; <Start encoding val Ariadne.__proj__Writing__item__old>


(declare-fun Ariadne.__proj__Writing__item__old (Term) Term)


(declare-fun Ariadne.__proj__Writing__item__old@tok () Term)

; </end encoding val Ariadne.__proj__Writing__item__old>

(push) ;; push{2

; Starting query at Ariadne.fst(48,31-48,34)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Writing? _}).
;   (*  - Could not prove post-condition
; *) ~(Writing? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Writing__item__old`

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
Tm_refine_4fff7e1627aecb8a01ff14db8bd98023)

;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,31-48,34)
(not 
;; def=Ariadne.fst(48,4-48,11); use=Ariadne.fst(48,31-48,34)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x0))
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
; QUERY ID: (Ariadne.__proj__Writing__item__old, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4fff7e1627aecb8a01ff14db8bd98023

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Writing__item__old


; <Skipped let __proj__Writing__item__old/>


; encoding sigelt val Ariadne.uu___is_Crash


; <Start encoding val Ariadne.uu___is_Crash>

(declare-fun Ariadne.uu___is_Crash (Term) Term)

(declare-fun Ariadne.uu___is_Crash@tok () Term)

; </end encoding val Ariadne.uu___is_Crash>


; encoding sigelt let uu___is_Crash


; <Skipped let uu___is_Crash/>


; encoding sigelt val Ariadne.__proj__Crash__item__read


; <Start encoding val Ariadne.__proj__Crash__item__read>

(declare-fun Tm_refine_afc93d5e07c3e90000704a2ee31d4fab () Term)
(declare-fun Ariadne.__proj__Crash__item__read (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: case{Crash? _} -> state
(declare-fun Tm_arrow_a891730576f601e47f9336ae78a3dc74 () Term)
(declare-fun Ariadne.__proj__Crash__item__read@tok () Term)

; </end encoding val Ariadne.__proj__Crash__item__read>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.uu___is_Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.case)
(HasType (Ariadne.uu___is_Crash @x0)
Prims.bool))
 

:pattern ((Ariadne.uu___is_Crash @x0))
:qid typing_Ariadne.uu___is_Crash))

:named typing_Ariadne.uu___is_Crash))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.__proj__Crash__item__read; Namespace Ariadne
(assert (! (HasType Tm_refine_afc93d5e07c3e90000704a2ee31d4fab
Tm_type)
:named refinement_kinding_Tm_refine_afc93d5e07c3e90000704a2ee31d4fab))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Ariadne.__proj__Crash__item__read; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_afc93d5e07c3e90000704a2ee31d4fab)
(and (HasTypeFuel @u0
@x1
Ariadne.case)

;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_afc93d5e07c3e90000704a2ee31d4fab))
:qid refinement_interpretation_Tm_refine_afc93d5e07c3e90000704a2ee31d4fab))

:named refinement_interpretation_Tm_refine_afc93d5e07c3e90000704a2ee31d4fab))
;;;;;;;;;;;;;;;;haseq for Tm_refine_afc93d5e07c3e90000704a2ee31d4fab
;;; Fact-ids: Name Ariadne.__proj__Crash__item__read; Namespace Ariadne
(assert (! (iff (Valid (Prims.hasEq Tm_refine_afc93d5e07c3e90000704a2ee31d4fab))
(Valid (Prims.hasEq Ariadne.case)))
:named haseqTm_refine_afc93d5e07c3e90000704a2ee31d4fab))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Ariadne.uu___is_Crash; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,4-49,9)
(forall ((@x0 Term))
 (! (= (Ariadne.uu___is_Crash @x0)
(BoxBool (is-Ariadne.Crash @x0)))
 

:pattern ((Ariadne.uu___is_Crash @x0))
:qid disc_equation_Ariadne.Crash))

:named disc_equation_Ariadne.Crash))
(push) ;; push{2

; Starting query at Ariadne.fst(49,11-49,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Crash? _}).
;   (*  - Could not prove post-condition
; *) ~(Crash? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Crash__item__read`

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
Tm_refine_afc93d5e07c3e90000704a2ee31d4fab)

;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,11-49,15)
(not 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,11-49,15)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x0))
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
; QUERY ID: (Ariadne.__proj__Crash__item__read, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_afc93d5e07c3e90000704a2ee31d4fab

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Crash__item__read


; <Skipped let __proj__Crash__item__read/>


; encoding sigelt val Ariadne.__proj__Crash__item__other


; <Start encoding val Ariadne.__proj__Crash__item__other>


(declare-fun Ariadne.__proj__Crash__item__other (Term) Term)


(declare-fun Ariadne.__proj__Crash__item__other@tok () Term)

; </end encoding val Ariadne.__proj__Crash__item__other>

(push) ;; push{2

; Starting query at Ariadne.fst(49,26-49,31)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: Ariadne.case{Crash? _}).
;   (*  - Could not prove post-condition
; *) ~(Crash? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Crash__item__other`

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
Tm_refine_afc93d5e07c3e90000704a2ee31d4fab)

;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,26-49,31)
(not 
;; def=Ariadne.fst(49,4-49,9); use=Ariadne.fst(49,26-49,31)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x0))
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
; QUERY ID: (Ariadne.__proj__Crash__item__other, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_afc93d5e07c3e90000704a2ee31d4fab

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Crash__item__other


; <Skipped let __proj__Crash__item__other/>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type Ariadne.counter


; <Start encoding type Ariadne.counter>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.counter () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Counter (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Counter_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Counter_c (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Counter
(declare-fun Ariadne.Counter@tok () Term)
;;;;;;;;;;;;;;;;n: index -> c: case -> counter
(declare-fun Tm_arrow_e3ba930125430b472c2753e5504470e7 () Term)

; <start constructor Ariadne.counter>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.counter ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
232)
(= __@x0
Ariadne.counter)))

; </end constructor Ariadne.counter>


; <start constructor Ariadne.Counter>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Counter ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
238)
(= __@x0
(Ariadne.Counter (Ariadne.Counter_n __@x0)
(Ariadne.Counter_c __@x0)))))

; </end constructor Ariadne.Counter>


; </end encoding type Ariadne.counter>

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
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Prims.nat
Tm_type)
:named typing_Prims.nat))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named typing_Prims.int))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.index; Namespace Ariadne
(assert (! (HasType Ariadne.index
Tm_type)
:named typing_Ariadne.index))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Counter @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Counter @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
:qid subterm_ordering_Ariadne.Counter))

:named subterm_ordering_Ariadne.Counter))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_afd51579b90d50ea23e03b743a1fa001
Tm_type)
:named refinement_kinding_Tm_refine_afd51579b90d50ea23e03b743a1fa001))
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
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (HasType Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
Tm_type)
:named refinement_kinding_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=Prims.fst(680,11-683,23); use=Prims.fst(680,11-683,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(680,18-683,23); use=Prims.fst(680,18-683,23)
(or 
;; def=Prims.fst(680,18-680,24); use=Prims.fst(680,18-680,24)
(>= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))


;; def=Prims.fst(683,18-683,23); use=Prims.fst(683,18-683,23)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
:qid refinement_interpretation_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))

:named refinement_interpretation_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(324,34-324,53); use=FStar.Monotonic.Heap.fsti(324,34-324,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_afd51579b90d50ea23e03b743a1fa001)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Monotonic.Heap.fsti(324,44-324,49); use=FStar.Monotonic.Heap.fsti(324,44-324,49)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_afd51579b90d50ea23e03b743a1fa001))
:qid refinement_interpretation_Tm_refine_afd51579b90d50ea23e03b743a1fa001))

:named refinement_interpretation_Tm_refine_afd51579b90d50ea23e03b743a1fa001))
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
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Counter_n (Ariadne.Counter @x0
@x1))
@x0)
 

:pattern ((Ariadne.Counter @x0
@x1))
:qid projection_inverse_Ariadne.Counter_n))

:named projection_inverse_Ariadne.Counter_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Counter_c (Ariadne.Counter @x0
@x1))
@x1)
 

:pattern ((Ariadne.Counter @x0
@x1))
:qid projection_inverse_Ariadne.Counter_c))

:named projection_inverse_Ariadne.Counter_c))
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! (HasType Ariadne.counter
Tm_type)
:named kinding_Ariadne.counter@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_afd51579b90d50ea23e03b743a1fa001
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_afd51579b90d50ea23e03b743a1fa001))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_afd51579b90d50ea23e03b743a1fa001))
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
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named function_token_typing_Prims.int))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Ariadne.index; Namespace Ariadne
(assert (! (HasType Ariadne.index
Tm_type)
:named function_token_typing_Ariadne.index))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(52,5-52,12); use=Ariadne.fst(52,5-52,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Ariadne.counter)
(is-Ariadne.Counter @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Ariadne.counter))
:qid fuel_guarded_inversion_Ariadne.counter))

:named fuel_guarded_inversion_Ariadne.counter))
;;;;;;;;;;;;;;;;Equation for Prims.nat
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (= Prims.nat
Tm_refine_542f9d4f129664613f2483a6c88bc7c2)
:named equation_Prims.nat))
;;;;;;;;;;;;;;;;Equation for Ariadne.index
;;; Fact-ids: Name Ariadne.index; Namespace Ariadne
(assert (! (= Ariadne.index
Prims.nat)
:named equation_Ariadne.index))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Ariadne.index)
(HasTypeFuel @u0
@x2
Ariadne.case))
(HasTypeFuel @u0
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
:qid data_typing_intro_Ariadne.Counter@tok))

:named data_typing_intro_Ariadne.Counter@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter)
(and (HasTypeFuel @u0
@x1
Ariadne.index)
(HasTypeFuel @u0
@x2
Ariadne.case)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
:qid data_elim_Ariadne.Counter))

:named data_elim_Ariadne.Counter))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (= 303
(Term_constr_id Prims.int))
:named constructor_distinct_Prims.int))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! (= 232
(Term_constr_id Ariadne.counter))
:named constructor_distinct_Ariadne.counter))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 238
(Term_constr_id (Ariadne.Counter @x0
@x1)))
 

:pattern ((Ariadne.Counter @x0
@x1))
:qid constructor_distinct_Ariadne.Counter))

:named constructor_distinct_Ariadne.Counter))
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
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(52,5-52,12); use=Ariadne.fst(52,5-52,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Ariadne.counter)
(= Ariadne.counter
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Ariadne.counter))
:qid Ariadne_pretyping_aa7fb1e4d4d9e1f5c4d43327f007a8ad))

:named Ariadne_pretyping_aa7fb1e4d4d9e1f5c4d43327f007a8ad))
(push) ;; push{4

; Starting query at Ariadne.fst(52,0-56,11)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq Ariadne.counter ==>
; (forall (n: Ariadne.index) (c: Ariadne.case). Prims.hasEq Ariadne.index /\ Prims.hasEq Ariadne.case)


; Context: While encoding a query
; While typechecking the top-level declaration `type Ariadne.counter`

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
;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(Valid 
;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(Prims.hasEq Ariadne.counter)
)


;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Ariadne.index)
(HasType @x1
Ariadne.case))

;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(and 
;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(54,7-54,12)
(or label_1

;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(Valid 
;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(Prims.hasEq Ariadne.index)
)
)


;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(55,7-55,11)
(or label_2

;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(Valid 
;; def=Ariadne.fst(52,0-56,11); use=Ariadne.fst(52,0-56,11)
(Prims.hasEq Ariadne.case)
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
; QUERY ID: (Ariadne.counter, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_Ariadne.case__uu___haseq, equation_Ariadne.index, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type Ariadne.counter


; <Start encoding type Ariadne.counter>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.counter () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Counter (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Counter_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Counter_c (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Counter
(declare-fun Ariadne.Counter@tok () Term)
;;;;;;;;;;;;;;;;n: index -> c: case -> counter
(declare-fun Tm_arrow_e3ba930125430b472c2753e5504470e7 () Term)

; <start constructor Ariadne.counter>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.counter ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
242)
(= __@x0
Ariadne.counter)))

; </end constructor Ariadne.counter>


; <start constructor Ariadne.Counter>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Counter ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
248)
(= __@x0
(Ariadne.Counter (Ariadne.Counter_n __@x0)
(Ariadne.Counter_c __@x0)))))

; </end constructor Ariadne.Counter>


; </end encoding type Ariadne.counter>


; encoding sigelt assume Ariadne.counter__uu___haseq


; <Start encoding assume Ariadne.counter__uu___haseq>


; </end encoding assume Ariadne.counter__uu___haseq>


; encoding sigelt val Ariadne.uu___is_Counter


; <Start encoding val Ariadne.uu___is_Counter>

(declare-fun Ariadne.uu___is_Counter (Term) Term)
;;;;;;;;;;;;;;;;projectee: counter -> Prims.bool
(declare-fun Tm_arrow_ee71f3264aa0d93d23bca303ef306a10 () Term)
(declare-fun Ariadne.uu___is_Counter@tok () Term)

; </end encoding val Ariadne.uu___is_Counter>


; encoding sigelt let uu___is_Counter


; <Skipped let uu___is_Counter/>


; encoding sigelt val Ariadne.__proj__Counter__item__n


; <Start encoding val Ariadne.__proj__Counter__item__n>

(declare-fun Ariadne.__proj__Counter__item__n (Term) Term)
;;;;;;;;;;;;;;;;projectee: counter -> index
(declare-fun Tm_arrow_eca2dc3a75a864652765a7defa485120 () Term)
(declare-fun Ariadne.__proj__Counter__item__n@tok () Term)

; </end encoding val Ariadne.__proj__Counter__item__n>


; encoding sigelt let __proj__Counter__item__n


; <Skipped let __proj__Counter__item__n/>


; encoding sigelt val Ariadne.__proj__Counter__item__c


; <Start encoding val Ariadne.__proj__Counter__item__c>

(declare-fun Ariadne.__proj__Counter__item__c (Term) Term)
;;;;;;;;;;;;;;;;projectee: counter -> case
(declare-fun Tm_arrow_358de1960170bea10a838b74dbd441b7 () Term)
(declare-fun Ariadne.__proj__Counter__item__c@tok () Term)

; </end encoding val Ariadne.__proj__Counter__item__c>


; encoding sigelt let __proj__Counter__item__c


; <Skipped let __proj__Counter__item__c/>


; encoding sigelt val Ariadne.saved


; <Skipped val Ariadne.saved/>

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
;;; Fact-ids: Name Ariadne.record; Namespace Ariadne
(assert (! (HasType Ariadne.record
Tm_type)
:named typing_Ariadne.record))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.index; Namespace Ariadne
(assert (! (HasType Ariadne.index
Tm_type)
:named typing_Ariadne.index))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Counter @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Counter @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
:qid subterm_ordering_Ariadne.Counter))

:named subterm_ordering_Ariadne.Counter))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_afd51579b90d50ea23e03b743a1fa001
Tm_type)
:named refinement_kinding_Tm_refine_afd51579b90d50ea23e03b743a1fa001))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=Prims.fst(680,11-683,23); use=Prims.fst(680,11-683,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(680,18-683,23); use=Prims.fst(680,18-683,23)
(or 
;; def=Prims.fst(680,18-680,24); use=Prims.fst(680,18-680,24)
(>= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))


;; def=Prims.fst(683,18-683,23); use=Prims.fst(683,18-683,23)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
:qid refinement_interpretation_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))

:named refinement_interpretation_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(324,34-324,53); use=FStar.Monotonic.Heap.fsti(324,34-324,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_afd51579b90d50ea23e03b743a1fa001)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Monotonic.Heap.fsti(324,44-324,49); use=FStar.Monotonic.Heap.fsti(324,44-324,49)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_afd51579b90d50ea23e03b743a1fa001))
:qid refinement_interpretation_Tm_refine_afd51579b90d50ea23e03b743a1fa001))

:named refinement_interpretation_Tm_refine_afd51579b90d50ea23e03b743a1fa001))
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Counter_n (Ariadne.Counter @x0
@x1))
@x0)
 

:pattern ((Ariadne.Counter @x0
@x1))
:qid projection_inverse_Ariadne.Counter_n))

:named projection_inverse_Ariadne.Counter_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Counter_c (Ariadne.Counter @x0
@x1))
@x1)
 

:pattern ((Ariadne.Counter @x0
@x1))
:qid projection_inverse_Ariadne.Counter_c))

:named projection_inverse_Ariadne.Counter_c))
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
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! (HasType Ariadne.counter
Tm_type)
:named kinding_Ariadne.counter@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_afd51579b90d50ea23e03b743a1fa001
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_afd51579b90d50ea23e03b743a1fa001))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_afd51579b90d50ea23e03b743a1fa001))
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
;;; Fact-ids: Name Ariadne.record; Namespace Ariadne
(assert (! (HasType Ariadne.record
Tm_type)
:named function_token_typing_Ariadne.record))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Ariadne.index; Namespace Ariadne
(assert (! (HasType Ariadne.index
Tm_type)
:named function_token_typing_Ariadne.index))
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
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(52,5-52,12); use=Ariadne.fst(52,5-52,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Ariadne.counter)
(is-Ariadne.Counter @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Ariadne.counter))
:qid fuel_guarded_inversion_Ariadne.counter))

:named fuel_guarded_inversion_Ariadne.counter))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (= 126
(Term_constr_id FStar.Pervasives.Native.tuple2@tok))
:named fresh_token_FStar.Pervasives.Native.tuple2@tok))
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
;;;;;;;;;;;;;;;;Equation for Ariadne.record
;;; Fact-ids: Name Ariadne.record; Namespace Ariadne
(assert (! (= Ariadne.record
(FStar.Pervasives.Native.tuple2 Ariadne.index
(Ariadne.state Dummy_value)))
:named equation_Ariadne.record))
;;;;;;;;;;;;;;;;Equation for Ariadne.index
;;; Fact-ids: Name Ariadne.index; Namespace Ariadne
(assert (! (= Ariadne.index
Prims.nat)
:named equation_Ariadne.index))
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
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Ariadne.index)
(HasTypeFuel @u0
@x2
Ariadne.case))
(HasTypeFuel @u0
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
:qid data_typing_intro_Ariadne.Counter@tok))

:named data_typing_intro_Ariadne.Counter@tok))
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
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter)
(and (HasTypeFuel @u0
@x1
Ariadne.index)
(HasTypeFuel @u0
@x2
Ariadne.case)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Counter @x1
@x2)
Ariadne.counter))
:qid data_elim_Ariadne.Counter))

:named data_elim_Ariadne.Counter))
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
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! (= 242
(Term_constr_id Ariadne.counter))
:named constructor_distinct_Ariadne.counter))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(53,4-53,11); use=Ariadne.fst(53,4-53,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 248
(Term_constr_id (Ariadne.Counter @x0
@x1)))
 

:pattern ((Ariadne.Counter @x0
@x1))
:qid constructor_distinct_Ariadne.Counter))

:named constructor_distinct_Ariadne.Counter))
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
;;;;;;;;;;;;;;;;Assumption: Ariadne.counter__uu___haseq
;;; Fact-ids: Name Ariadne.counter__uu___haseq; Namespace Ariadne
(assert (! (Valid (Prims.hasEq Ariadne.counter))
:named assumption_Ariadne.counter__uu___haseq))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Ariadne.counter; Namespace Ariadne; Name Ariadne.Counter; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(52,5-52,12); use=Ariadne.fst(52,5-52,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Ariadne.counter)
(= Ariadne.counter
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Ariadne.counter))
:qid Ariadne_pretyping_aa7fb1e4d4d9e1f5c4d43327f007a8ad))

:named Ariadne_pretyping_aa7fb1e4d4d9e1f5c4d43327f007a8ad))
(push) ;; push{2

; Starting query at Ariadne.fst(60,27-71,29)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Ariadne.counter) (s: Ariadne.record).
;   (*  - Could not prove post-condition
; *)
;   forall (b: Ariadne.index) (b: Ariadne.case).
;     _ == Ariadne.Counter b b ==>
;     (forall (b: Ariadne.index) (b: Ariadne.state).
;         s == (b, b) ==>
;         (~(b < b) ==>
;           Prims.hasEq Ariadne.index /\
;           (b = b ==>
;             (forall (k: Prims.pure_post Prims.logical).
;                 (forall (x: Prims.logical). {:pattern Prims.guard_free (k x)}
;                     Prims.auto_squash (k x)) ==>
;                 ~(Ok? b) /\ ~(Recover? b) /\ ~(Writing? b) /\ ~(Crash? b) ==> Prims.l_False))) /\
;         (~(b < b \/
;             b = b /\
;             (match b with
;               | Ariadne.Ok v -> b = v
;               | Ariadne.Recover w v -> b = w \/ b = v
;               | Ariadne.Writing w v -> b = w \/ b = v
;               | Ariadne.Crash w v -> b = w \/ b = v)) ==>
;           b = b + 1 ==>
;           (forall (k: Prims.pure_post Prims.logical).
;               (forall (x: Prims.logical). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;               ~(Ok? b) /\ ~(Recover? b) /\ ~(Writing? b) /\ ~(Crash? b) ==> Prims.l_False)))


; Context: While encoding a query
; While typechecking the top-level declaration `let saved`

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
Ariadne.counter)
(HasType @x1
Ariadne.record))

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(60,27-71,29)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Ariadne.index)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(60,27-71,29)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Ariadne.case)

;; def=Ariadne.fst(60,11-60,22); use=Ariadne.fst(60,27-71,29)
(= @x0
(Ariadne.Counter @x2
@x3))
)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(60,27-71,29)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Ariadne.index)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(60,27-71,29)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Ariadne.state Dummy_value))

;; def=Ariadne.fst(61,6-61,9); use=Ariadne.fst(61,6-61,9)
(= @x1
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
@x4
@x5))
)

;; def=dummy(0,0-0,0); use=Ariadne.fst(62,2-71,29)
(and (implies 
;; def=Ariadne.fst(62,2-62,9); use=Ariadne.fst(62,2-62,9)
(not 
;; def=Ariadne.fst(62,2-62,9); use=Ariadne.fst(62,2-62,9)
(< (BoxInt_proj_0 @x4)
(BoxInt_proj_0 @x2))
)


;; def=dummy(0,0-0,0); use=Ariadne.fst(62,2-67,29)
(and 
;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(63,3-63,4)
(or label_1

;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(63,3-63,4)
(Valid 
;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(63,3-63,4)
(Prims.hasEq Ariadne.index)
)
)

(implies 
;; def=Ariadne.fst(63,3-63,8); use=Ariadne.fst(63,3-63,8)
(= @x4
@x2)


;; def=dummy(0,0-0,0); use=Ariadne.fst(62,2-67,29)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post Prims.logical))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(63,2-67,29)
(forall ((@x7 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(63,2-67,29)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(63,2-67,29)
(ApplyTT @x6
@x7)
)

 

:pattern ((ApplyTT @x6
@x7))
:qid @query.6))


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x3))
)


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x3))
)


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x3))
)


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(63,19-63,20)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x3))
)
)
label_2)
 
;;no pats
:qid @query.5))
))
)
(implies 
;; def=dummy(0,0-0,0); use=Ariadne.fst(62,2-71,29)
(and 
;; def=Ariadne.fst(62,2-67,29); use=Ariadne.fst(62,2-67,29)
(not 
;; def=Ariadne.fst(62,2-67,29); use=Ariadne.fst(62,2-67,29)
(or 
;; def=Ariadne.fst(62,2-62,9); use=Ariadne.fst(62,2-62,9)
(< (BoxInt_proj_0 @x4)
(BoxInt_proj_0 @x2))


;; def=Ariadne.fst(63,2-67,29); use=Ariadne.fst(63,2-67,29)
(and 
;; def=Ariadne.fst(63,3-63,8); use=Ariadne.fst(63,3-63,8)
(= @x4
@x2)

(let ((@lb6 @x3))
(ite (is-Ariadne.Ok @lb6)

;; def=Ariadne.fst(64,12-64,15); use=Ariadne.fst(64,12-64,15)
(= @x5
(Ariadne.Ok_saved @lb6))

(ite (is-Ariadne.Recover @lb6)

;; def=Ariadne.fst(67,17-67,27); use=Ariadne.fst(67,17-67,27)
(or 
;; def=Ariadne.fst(67,17-67,20); use=Ariadne.fst(67,17-67,20)
(= @x5
(Ariadne.Recover_read @lb6))


;; def=Ariadne.fst(67,24-67,27); use=Ariadne.fst(67,24-67,27)
(= @x5
(Ariadne.Recover_other @lb6))
)

(ite (is-Ariadne.Writing @lb6)

;; def=Ariadne.fst(67,17-67,27); use=Ariadne.fst(67,17-67,27)
(or 
;; def=Ariadne.fst(67,17-67,20); use=Ariadne.fst(67,17-67,20)
(= @x5
(Ariadne.Writing_written @lb6))


;; def=Ariadne.fst(67,24-67,27); use=Ariadne.fst(67,24-67,27)
(= @x5
(Ariadne.Writing_old @lb6))
)

(ite (is-Ariadne.Crash @lb6)

;; def=Ariadne.fst(67,17-67,27); use=Ariadne.fst(67,17-67,27)
(or 
;; def=Ariadne.fst(67,17-67,20); use=Ariadne.fst(67,17-67,20)
(= @x5
(Ariadne.Crash_read @lb6))


;; def=Ariadne.fst(67,24-67,27); use=Ariadne.fst(67,24-67,27)
(= @x5
(Ariadne.Crash_other @lb6))
)

Unreachable))))))
)
)


;; def=Ariadne.fst(68,3-68,10); use=Ariadne.fst(68,3-68,10)
(= @x4
(Prims.op_Addition @x2
(BoxInt 1)))
)


;; def=dummy(0,0-0,0); use=Ariadne.fst(62,2-71,29)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Prims.pure_post Prims.logical))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(68,2-71,29)
(forall ((@x7 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(68,2-71,29)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(68,2-71,29)
(ApplyTT @x6
@x7)
)

 

:pattern ((ApplyTT @x6
@x7))
:qid @query.8))


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x3))
)


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x3))
)


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x3))
)


;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(not 
;; def=Ariadne.fst(60,21-60,22); use=Ariadne.fst(68,21-68,22)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x3))
)
)
label_3)
 
;;no pats
:qid @query.7))
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
; QUERY ID: (Ariadne.saved, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_Ariadne.Crash, disc_equation_Ariadne.Ok, disc_equation_Ariadne.Recover, disc_equation_Ariadne.Writing, equation_Ariadne.index, equation_Prims.eqtype, equation_Prims.nat, fuel_guarded_inversion_Ariadne.case, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let saved


; <Start encoding let saved>

(declare-fun Ariadne.saved (Term Term) Term)
;;;;;;;;;;;;;;;;_: counter -> s: record -> Type
(declare-fun Tm_arrow_a842f6f0af94e388f610f32676b3607a () Term)
(declare-fun Ariadne.saved@tok () Term)

; </end encoding let saved>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.l_or; Namespace Prims
(assert (! 
;; def=Prims.fst(198,5-198,9); use=Prims.fst(198,5-198,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.logical)
(HasType @x1
Prims.logical))
(HasType (Prims.l_or @x0
@x1)
Prims.logical))
 

:pattern ((Prims.l_or @x0
@x1))
:qid typing_Prims.l_or))

:named typing_Prims.l_or))
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
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (HasType Prims.l_False
Prims.logical)
:named typing_Prims.l_False))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.saved; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(60,4-60,9); use=Ariadne.fst(60,4-60,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Ariadne.counter)
(HasType @x1
Ariadne.record))
(HasType (Ariadne.saved @x0
@x1)
Tm_type))
 

:pattern ((Ariadne.saved @x0
@x1))
:qid typing_Ariadne.saved))

:named typing_Ariadne.saved))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(191,5-191,8); use=Prims.fst(191,5-191,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Prims.sum@tok
@x0)
@x1)
(Prims.sum @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Prims.sum@tok
@x0)
@x1))

:pattern ((Prims.sum @x0
@x1))
:qid token_correspondence_Prims.sum@tok))

:named token_correspondence_Prims.sum@tok))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Right @x1
@x2
@x3)
(Prims.sum @x4
@x5))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Prims.Right @x1
@x2
@x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Right @x1
@x2
@x3)
(Prims.sum @x4
@x5)))
:qid subterm_ordering_Prims.Right))

:named subterm_ordering_Prims.Right))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Left @x1
@x2
@x3)
(Prims.sum @x4
@x5))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Prims.Left @x1
@x2
@x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Left @x1
@x2
@x3)
(Prims.sum @x4
@x5)))
:qid subterm_ordering_Prims.Left))

:named subterm_ordering_Prims.Left))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Right_v (Prims.Right @x0
@x1
@x2))
@x2)
 

:pattern ((Prims.Right @x0
@x1
@x2))
:qid projection_inverse_Prims.Right_v))

:named projection_inverse_Prims.Right_v))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Right_q (Prims.Right @x0
@x1
@x2))
@x1)
 

:pattern ((Prims.Right @x0
@x1
@x2))
:qid projection_inverse_Prims.Right_q))

:named projection_inverse_Prims.Right_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Right_p (Prims.Right @x0
@x1
@x2))
@x0)
 

:pattern ((Prims.Right @x0
@x1
@x2))
:qid projection_inverse_Prims.Right_p))

:named projection_inverse_Prims.Right_p))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Left_v (Prims.Left @x0
@x1
@x2))
@x2)
 

:pattern ((Prims.Left @x0
@x1
@x2))
:qid projection_inverse_Prims.Left_v))

:named projection_inverse_Prims.Left_v))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Left_q (Prims.Left @x0
@x1
@x2))
@x1)
 

:pattern ((Prims.Left @x0
@x1
@x2))
:qid projection_inverse_Prims.Left_q))

:named projection_inverse_Prims.Left_q))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Prims.Left_p (Prims.Left @x0
@x1
@x2))
@x0)
 

:pattern ((Prims.Left @x0
@x1
@x2))
:qid projection_inverse_Prims.Left_p))

:named projection_inverse_Prims.Left_p))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.sum@tok))
:named pre_kinding_Prims.sum@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.pair@tok))
:named pre_kinding_Prims.pair@tok))
;;;;;;;;;;;;;;;;\/ interpretation
;;; Fact-ids: Name Prims.l_or; Namespace Prims
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (iff (or (Valid @x0)
(Valid @x1))
(Valid (Prims.l_or @x0
@x1)))
 

:pattern ((Prims.l_or @x0
@x1))
:qid l_or-interp))
:named l_or-interp))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! (and (IsTotFun Prims.sum@tok)

;; def=Prims.fst(191,5-191,8); use=Prims.fst(191,5-191,8)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT Prims.sum@tok
@x0))
 

:pattern ((ApplyTT Prims.sum@tok
@x0))
:qid kinding_Prims.sum@tok))


;; def=Prims.fst(191,5-191,8); use=Prims.fst(191,5-191,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (Prims.sum @x0
@x1)
Tm_type))
 

:pattern ((Prims.sum @x0
@x1))
:qid kinding_Prims.sum@tok.1))
)
:named kinding_Prims.sum@tok))
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
;;; Fact-ids: Name Prims.empty; Namespace Prims
(assert (! (HasType Prims.empty
Tm_type)
:named kinding_Prims.empty@tok))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (HasType Prims.l_False
Prims.logical)
:named function_token_typing_Prims.l_False))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(191,5-191,8); use=Prims.fst(191,5-191,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(Prims.sum @x2
@x3))
(or (and (is-Prims.Left @x1)
(= @x2
(Prims.Left_p @x1))
(= @x3
(Prims.Left_q @x1)))
(and (is-Prims.Right @x1)
(= @x2
(Prims.Right_p @x1))
(= @x3
(Prims.Right_q @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(Prims.sum @x2
@x3)))
:qid fuel_guarded_inversion_Prims.sum))

:named fuel_guarded_inversion_Prims.sum))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! (= 170
(Term_constr_id Prims.sum@tok))
:named fresh_token_Prims.sum@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.pair; Namespace Prims; Name Prims.Pair; Namespace Prims
(assert (! (= 151
(Term_constr_id Prims.pair@tok))
:named fresh_token_Prims.pair@tok))
;;;;;;;;;;;;;;;;False interpretation
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (iff false
(Valid Prims.l_False))
:named false_interp))
;;;;;;;;;;;;;;;;Equation for Prims.l_or
;;; Fact-ids: Name Prims.l_or; Namespace Prims
(assert (! 
;; def=Prims.fst(198,5-198,9); use=Prims.fst(198,5-198,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.l_or @x0
@x1)
(Prims.squash (Prims.sum @x0
@x1)))
 

:pattern ((Prims.l_or @x0
@x1))
:qid equation_Prims.l_or))

:named equation_Prims.l_or))
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
;;;;;;;;;;;;;;;;Equation for Prims.l_False
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (= Prims.l_False
(Prims.squash Prims.empty))
:named equation_Prims.l_False))
;;;;;;;;;;;;;;;;Equation for Ariadne.saved
;;; Fact-ids: Name Ariadne.saved; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(60,4-60,9); use=Ariadne.fst(60,4-60,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.saved @x0
@x1)
(let ((@lb2 @x0))
(let ((@lb3 @x1))
(Prims.l_or (Prims.l_or (Prims.b2t (Prims.op_LessThan (FStar.Pervasives.Native.Mktuple2__1 @lb3)
(Ariadne.Counter_n @lb2)))
(Prims.l_and (Prims.b2t (Prims.op_Equality Ariadne.index
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
(Ariadne.Counter_n @lb2)))
(let ((@lb4 (Ariadne.Counter_c @lb2)))
(ite (is-Ariadne.Ok @lb4)
(Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Ok_saved @lb4)))
(ite (is-Ariadne.Recover @lb4)
(Prims.l_or (Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Recover_read @lb4)))
(Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Recover_other @lb4))))
(ite (is-Ariadne.Writing @lb4)
(Prims.l_or (Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Writing_written @lb4)))
(Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Writing_old @lb4))))
(ite (is-Ariadne.Crash @lb4)
(Prims.l_or (Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Crash_read @lb4)))
(Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Crash_other @lb4))))
Tm_unit)))))))
(Prims.l_and (Prims.b2t (Prims.op_Equality Prims.int
(FStar.Pervasives.Native.Mktuple2__1 @lb3)
(Prims.op_Addition (Ariadne.Counter_n @lb2)
(BoxInt 1))))
(let ((@lb4 (Ariadne.Counter_c @lb2)))
(ite (is-Ariadne.Ok @lb4)
Prims.l_False
(ite (is-Ariadne.Recover @lb4)
Prims.l_False
(ite (is-Ariadne.Writing @lb4)
(Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Writing_written @lb4)))
(ite (is-Ariadne.Crash @lb4)
(Prims.l_or (Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Crash_read @lb4)))
(Prims.b2t (Prims.op_Equality (Ariadne.state Dummy_value)
(FStar.Pervasives.Native.Mktuple2__2 @lb3)
(Ariadne.Crash_other @lb4))))
Tm_unit))))))))))
 

:pattern ((Ariadne.saved @x0
@x1))
:qid equation_Ariadne.saved))

:named equation_Ariadne.saved))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
@x2))
(HasTypeFuel @u0
(Prims.Right @x1
@x2
@x3)
(Prims.sum @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(Prims.Right @x1
@x2
@x3)
(Prims.sum @x1
@x2)))
:qid data_typing_intro_Prims.Right@tok))

:named data_typing_intro_Prims.Right@tok))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type)
(HasTypeFuel @u0
@x3
@x1))
(HasTypeFuel @u0
(Prims.Left @x1
@x2
@x3)
(Prims.sum @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(Prims.Left @x1
@x2
@x3)
(Prims.sum @x1
@x2)))
:qid data_typing_intro_Prims.Left@tok))

:named data_typing_intro_Prims.Left@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Right @x1
@x2
@x3)
(Prims.sum @x4
@x5))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x3
@x5)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Right @x1
@x2
@x3)
(Prims.sum @x4
@x5)))
:qid data_elim_Prims.Right))

:named data_elim_Prims.Right))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Prims.Left @x1
@x2
@x3)
(Prims.sum @x4
@x5))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x3
@x4)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Prims.Left @x1
@x2
@x3)
(Prims.sum @x4
@x5)))
:qid data_elim_Prims.Left))

:named data_elim_Prims.Left))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(191,5-191,8); use=Prims.fst(191,5-191,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 169
(Term_constr_id (Prims.sum @x0
@x1)))
 

:pattern ((Prims.sum @x0
@x1))
:qid constructor_distinct_Prims.sum))

:named constructor_distinct_Prims.sum))
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
;;; Fact-ids: Name Prims.empty; Namespace Prims
(assert (! (= 111
(Term_constr_id Prims.empty))
:named constructor_distinct_Prims.empty))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(193,4-193,9); use=Prims.fst(193,4-193,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 181
(Term_constr_id (Prims.Right @x0
@x1
@x2)))
 

:pattern ((Prims.Right @x0
@x1
@x2))
:qid constructor_distinct_Prims.Right))

:named constructor_distinct_Prims.Right))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(192,4-192,8); use=Prims.fst(192,4-192,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 176
(Term_constr_id (Prims.Left @x0
@x1
@x2)))
 

:pattern ((Prims.Left @x0
@x1
@x2))
:qid constructor_distinct_Prims.Left))

:named constructor_distinct_Prims.Left))
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
;;; Fact-ids: Name Prims.sum; Namespace Prims; Name Prims.Left; Namespace Prims; Name Prims.Right; Namespace Prims
(assert (! 
;; def=Prims.fst(191,5-191,8); use=Prims.fst(191,5-191,8)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Prims.sum @x2
@x3))
(= (Prims.sum @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(Prims.sum @x2
@x3)))
:qid Prims_pretyping_a08d262d1ccaf451d982ca8ce0bf4ae9))

:named Prims_pretyping_a08d262d1ccaf451d982ca8ce0bf4ae9))
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
(push) ;; push{2

; Starting query at Ariadne.fst(73,0-73,102)

(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;s: record -> Prims.GTot Type0
(declare-fun Tm_arrow_d2d7a17893ed79671a6f13ae9376de32 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_d2d7a17893ed79671a6f13ae9376de32
Tm_type)
:named kinding_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(59,22-59,28); use=Ariadne.fst(73,74-73,75)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
:qid Ariadne_pre_typing_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))

:named Ariadne_pre_typing_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(59,22-59,28); use=Ariadne.fst(73,74-73,75)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32)
(and 
;; def=Ariadne.fst(59,22-59,28); use=Ariadne.fst(73,74-73,75)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Ariadne.record)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid Ariadne_interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
:qid Ariadne_interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))

:named Ariadne_interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
(declare-fun Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 (Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x0
@x1)
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32)
 

:pattern ((Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x0
@x1))
:qid typing_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))

:named typing_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x2)
@x0)
(Prims.l_imp (Ariadne.saved @x1
@x0)
(Ariadne.saved @x2
@x0)))
 

:pattern ((ApplyTT (Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))

:named interpretation_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.l_Forall Ariadne.record
(Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x0)))

;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Ariadne.record)

;; def=Ariadne.fst(73,77-73,87); use=Ariadne.fst(73,77-73,87)
(Valid 
;; def=Ariadne.fst(73,77-73,87); use=Ariadne.fst(73,77-73,87)
(Ariadne.saved @x1
@x2)
)
)

;; def=Ariadne.fst(73,92-73,102); use=Ariadne.fst(73,92-73,102)
(Valid 
;; def=Ariadne.fst(73,92-73,102); use=Ariadne.fst(73,92-73,102)
(Ariadne.saved @x0
@x2)
)
)
 
;;no pats
:qid l_quant_interp_2d93d1e2e978575420277bf29c7a470b.1))
)
 

:pattern ((Valid (Prims.l_Forall Ariadne.record
(Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x0))))
:qid l_quant_interp_2d93d1e2e978575420277bf29c7a470b))

:named l_quant_interp_2d93d1e2e978575420277bf29c7a470b))
;;;;;;;;;;;;;;;;x0: counter -> x1: counter -> Prims.logical
(declare-fun Tm_arrow_338106e39fc4640135399076515fcd27 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_338106e39fc4640135399076515fcd27
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_338106e39fc4640135399076515fcd27
Tm_type)
:named kinding_Tm_arrow_338106e39fc4640135399076515fcd27))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_338106e39fc4640135399076515fcd27)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_338106e39fc4640135399076515fcd27))
:qid Ariadne_pre_typing_Tm_arrow_338106e39fc4640135399076515fcd27))

:named Ariadne_pre_typing_Tm_arrow_338106e39fc4640135399076515fcd27))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_338106e39fc4640135399076515fcd27
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_338106e39fc4640135399076515fcd27)
(and 
;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Ariadne.counter)
(HasType @x2
Ariadne.counter))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.logical))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27.1))

(IsTotFun @x0)

;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Ariadne.counter)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_338106e39fc4640135399076515fcd27))
:qid Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27))

:named Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27))
(declare-fun Tm_abs_94ac1d7db7c09cc7672544949d0efc27 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_94ac1d7db7c09cc7672544949d0efc27
;;; Fact-ids: 
(assert (! (HasType Tm_abs_94ac1d7db7c09cc7672544949d0efc27
Tm_arrow_338106e39fc4640135399076515fcd27)
:named typing_Tm_abs_94ac1d7db7c09cc7672544949d0efc27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Tm_abs_94ac1d7db7c09cc7672544949d0efc27
@x0)
@x1)
(Prims.l_Forall Ariadne.record
(Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x0
@x1)))
 

:pattern ((ApplyTT (ApplyTT Tm_abs_94ac1d7db7c09cc7672544949d0efc27
@x0)
@x1))
:qid interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27))

:named interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27))

; Encoding query formula : Prims.auto_squash (FStar.Preorder.preorder_rel (fun x0 x1 ->
;           forall (s: Ariadne.record). Ariadne.saved x0 s ==> Ariadne.saved x1 s))


; Context: While encoding a query
; While checking for top-level effects
; While typechecking the top-level declaration `let preorder'`

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
;; def=FStar.Preorder.fst(33,40-33,56); use=Ariadne.fst(73,67-73,102)
(or label_1

;; def=FStar.Preorder.fst(33,40-33,56); use=Ariadne.fst(73,67-73,102)
(Valid 
;; def=FStar.Preorder.fst(33,40-33,56); use=Ariadne.fst(73,67-73,102)
(FStar.Preorder.preorder_rel Ariadne.counter
Tm_abs_94ac1d7db7c09cc7672544949d0efc27)
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
; QUERY ID: (Ariadne.preorder', 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_FStar.Preorder.preorder_rel, equation_FStar.Preorder.reflexive, equation_FStar.Preorder.transitive, interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27, l_quant_interp_2d93d1e2e978575420277bf29c7a470b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let preorder'


; <Start encoding let preorder'>

(declare-fun Ariadne.preorder_ (Dummy_sort) Term)
;;;;;;;;;;;;;;;;s: record -> Prims.GTot Type
(declare-fun Tm_arrow_d2d7a17893ed79671a6f13ae9376de32 () Term)
(declare-fun Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 (Term Term) Term)
;;;;;;;;;;;;;;;;x0: counter -> x1: counter -> Prims.logical
(declare-fun Tm_arrow_338106e39fc4640135399076515fcd27 () Term)
(declare-fun Tm_abs_94ac1d7db7c09cc7672544949d0efc27 () Term)

; </end encoding let preorder'>


; encoding sigelt let ctr


; <Start encoding let ctr>

(declare-fun Ariadne.ctr () Term)

; </end encoding let ctr>

;;;;;;;;;;;;;;;;typing_Tm_abs_94ac1d7db7c09cc7672544949d0efc27
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! (HasType Tm_abs_94ac1d7db7c09cc7672544949d0efc27
Tm_arrow_338106e39fc4640135399076515fcd27)
:named typing_Tm_abs_94ac1d7db7c09cc7672544949d0efc27))
;;;;;;;;;;;;;;;;typing_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x0
@x1)
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32)
 

:pattern ((Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x0
@x1))
:qid typing_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))

:named typing_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Prims.pos
Tm_type)
:named typing_Prims.pos))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.ST.witnessed; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(49,4-49,13); use=FStar.ST.fst(49,4-49,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_a11098d99239284f14b49e1dd0266896)
(HasType (FStar.ST.witnessed @x0)
Tm_type))
 

:pattern ((FStar.ST.witnessed @x0))
:qid typing_FStar.ST.witnessed))

:named typing_FStar.ST.witnessed))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.ST.stable; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(45,4-45,10); use=FStar.ST.fst(45,4-45,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.ST.heap_predicate)
(HasType (FStar.ST.stable @x0)
Prims.logical))
 

:pattern ((FStar.ST.stable @x0))
:qid typing_FStar.ST.stable))

:named typing_FStar.ST.stable))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.ST.mref; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(81,5-81,9); use=FStar.ST.fst(81,5-81,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.ST.mref @x0
@x1)
Tm_type))
 

:pattern ((FStar.ST.mref @x0
@x1))
:qid typing_FStar.ST.mref))

:named typing_FStar.ST.mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.ST.heap_rel; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(36,4-36,12); use=FStar.ST.fst(36,4-36,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.Heap.heap)
(HasType @x1
FStar.Monotonic.Heap.heap))
(HasType (FStar.ST.heap_rel @x0
@x1)
Prims.logical))
 

:pattern ((FStar.ST.heap_rel @x0
@x1))
:qid typing_FStar.ST.heap_rel))

:named typing_FStar.ST.heap_rel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.ST.heap_predicate; Namespace FStar.ST
(assert (! (HasType FStar.ST.heap_predicate
Tm_type)
:named typing_FStar.ST.heap_predicate))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.ST.contains_pred; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(79,4-79,17); use=FStar.ST.fst(79,4-79,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.mref @x0
@x1))
(HasType @x3
FStar.Monotonic.Heap.heap))
(HasType (FStar.ST.contains_pred @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((FStar.ST.contains_pred @x0
@x1
@x2
@x3))
:qid typing_FStar.ST.contains_pred))

:named typing_FStar.ST.contains_pred))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.unused_in; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(56,4-56,13); use=FStar.Monotonic.Heap.fsti(56,4-56,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.mref @x0
@x1))
(HasType @x3
FStar.Monotonic.Heap.heap))
(HasType (FStar.Monotonic.Heap.unused_in @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.unused_in @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.Heap.unused_in))

:named typing_FStar.Monotonic.Heap.unused_in))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.sel; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(74,4-74,7); use=FStar.Monotonic.Heap.fsti(74,4-74,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Monotonic.Heap.mref @x0
@x1)))
(HasType (FStar.Monotonic.Heap.sel @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((FStar.Monotonic.Heap.sel @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.Heap.sel))

:named typing_FStar.Monotonic.Heap.sel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.is_mm; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(45,4-45,9); use=FStar.Monotonic.Heap.fsti(45,4-45,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.mref @x0
@x1)))
(HasType (FStar.Monotonic.Heap.is_mm @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.Monotonic.Heap.is_mm @x0
@x1
@x2))
:qid typing_FStar.Monotonic.Heap.is_mm))

:named typing_FStar.Monotonic.Heap.is_mm))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.heap; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.heap
Tm_type)
:named typing_FStar.Monotonic.Heap.heap))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.contains; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(50,4-50,12); use=FStar.Monotonic.Heap.fsti(50,4-50,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Monotonic.Heap.mref @x0
@x1)))
(HasType (FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.Heap.contains))

:named typing_FStar.Monotonic.Heap.contains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(52,4-52,18); use=FStar.Monotonic.Heap.fsti(52,4-52,18)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.nat)
(HasType @x1
FStar.Monotonic.Heap.heap))
(HasType (FStar.Monotonic.Heap.addr_unused_in @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.addr_unused_in @x0
@x1))
:qid typing_FStar.Monotonic.Heap.addr_unused_in))

:named typing_FStar.Monotonic.Heap.addr_unused_in))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(43,4-43,11); use=FStar.Monotonic.Heap.fsti(43,4-43,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.mref @x0
@x1)))
(HasType (FStar.Monotonic.Heap.addr_of @x0
@x1
@x2)
Prims.pos))
 

:pattern ((FStar.Monotonic.Heap.addr_of @x0
@x1
@x2))
:qid typing_FStar.Monotonic.Heap.addr_of))

:named typing_FStar.Monotonic.Heap.addr_of))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,4-73,13); use=Ariadne.fst(73,4-73,13)
(forall ((@u0 Dummy_sort))
 (! (HasType (Ariadne.preorder_ @u0)
(FStar.Preorder.preorder Ariadne.counter))
 

:pattern ((Ariadne.preorder_ @u0))
:qid typing_Ariadne.preorder_))

:named typing_Ariadne.preorder_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.ctr; Namespace Ariadne
(assert (! (HasType Ariadne.ctr
Tm_type)
:named typing_Ariadne.ctr))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name FStar.ST.contains_pred; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(79,4-79,17); use=FStar.ST.fst(79,4-79,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.ST.contains_pred@tok
@x0)
@x1)
@x2)
@x3)
(FStar.ST.contains_pred @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.ST.contains_pred@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_FStar.ST.contains_pred))

:named token_correspondence_FStar.ST.contains_pred))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.ST.mref; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(81,39-81,104); use=FStar.ST.fst(81,39-81,104)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_e33ef751d600ad1c7f71142479103c47 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_e33ef751d600ad1c7f71142479103c47 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_e33ef751d600ad1c7f71142479103c47))

:named refinement_kinding_Tm_refine_e33ef751d600ad1c7f71142479103c47))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.ST.witnessed; Namespace FStar.ST
(assert (! (HasType Tm_refine_a11098d99239284f14b49e1dd0266896
Tm_type)
:named refinement_kinding_Tm_refine_a11098d99239284f14b49e1dd0266896))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.All.lift_state_all; Namespace FStar.All
(assert (! (HasType Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa
Tm_type)
:named refinement_kinding_Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.ST.mref; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(81,39-81,104); use=FStar.ST.fst(81,39-81,104)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e33ef751d600ad1c7f71142479103c47 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.Heap.mref @x2
@x3))

;; def=FStar.ST.fst(81,57-81,72); use=FStar.ST.fst(81,57-81,72)
(= (FStar.Monotonic.Heap.is_mm @x2
@x3
@x1)
(BoxBool false))


;; def=FStar.ST.fst(81,76-81,103); use=FStar.ST.fst(81,76-81,103)
(Valid 
;; def=FStar.ST.fst(81,76-81,103); use=FStar.ST.fst(81,76-81,103)
(FStar.ST.witnessed (ApplyTT (ApplyTT (ApplyTT FStar.ST.contains_pred@tok
@x2)
@x3)
@x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e33ef751d600ad1c7f71142479103c47 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_e33ef751d600ad1c7f71142479103c47))

:named refinement_interpretation_Tm_refine_e33ef751d600ad1c7f71142479103c47))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.ST.witnessed; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(49,14-49,42); use=FStar.ST.fst(49,14-49,42)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a11098d99239284f14b49e1dd0266896)
(and (HasTypeFuel @u0
@x1
FStar.ST.heap_predicate)

;; def=FStar.ST.fst(49,32-49,40); use=FStar.ST.fst(49,32-49,40)
(Valid 
;; def=FStar.ST.fst(49,32-49,40); use=FStar.ST.fst(49,32-49,40)
(FStar.ST.stable @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a11098d99239284f14b49e1dd0266896))
:qid refinement_interpretation_Tm_refine_a11098d99239284f14b49e1dd0266896))

:named refinement_interpretation_Tm_refine_a11098d99239284f14b49e1dd0266896))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.All.lift_state_all; Namespace FStar.All
(assert (! 
;; def=FStar.Pervasives.fsti(442,41-442,53); use=FStar.Pervasives.fsti(442,41-442,53)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa)
(HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa))
:qid refinement_interpretation_Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa))

:named refinement_interpretation_Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_sel_same_addr
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_sel_same_addr; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Monotonic.Heap.mref @x0
@x1))
(HasType @x4
(FStar.Monotonic.Heap.mref @x0
@x1))

;; def=FStar.Monotonic.Heap.fsti(186,20-186,35); use=FStar.Monotonic.Heap.fsti(186,20-186,35)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(186,20-186,35); use=FStar.Monotonic.Heap.fsti(186,20-186,35)
(FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3)
)


;; def=FStar.Monotonic.Heap.fsti(186,39-186,62); use=FStar.Monotonic.Heap.fsti(186,39-186,62)
(= (FStar.Monotonic.Heap.addr_of @x0
@x1
@x3)
(FStar.Monotonic.Heap.addr_of @x0
@x1
@x4))


;; def=FStar.Monotonic.Heap.fsti(186,66-186,86); use=FStar.Monotonic.Heap.fsti(186,66-186,86)
(= (FStar.Monotonic.Heap.is_mm @x0
@x1
@x3)
(FStar.Monotonic.Heap.is_mm @x0
@x1
@x4))
)

;; def=FStar.Monotonic.Heap.fsti(187,19-187,60); use=FStar.Monotonic.Heap.fsti(187,19-187,60)
(and 
;; def=FStar.Monotonic.Heap.fsti(187,20-187,35); use=FStar.Monotonic.Heap.fsti(187,20-187,35)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(187,20-187,35); use=FStar.Monotonic.Heap.fsti(187,20-187,35)
(FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x4)
)


;; def=FStar.Monotonic.Heap.fsti(187,39-187,59); use=FStar.Monotonic.Heap.fsti(187,39-187,59)
(= (FStar.Monotonic.Heap.sel @x0
@x1
@x2
@x3)
(FStar.Monotonic.Heap.sel @x0
@x1
@x2
@x4))
)
)
 

:pattern ((FStar.Monotonic.Heap.sel @x0
@x1
@x2
@x3) (FStar.Monotonic.Heap.sel @x0
@x1
@x2
@x4))

:pattern ((FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3) (FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x4))
:qid lemma_FStar.Monotonic.Heap.lemma_sel_same_addr))
:named lemma_FStar.Monotonic.Heap.lemma_sel_same_addr))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Monotonic.Heap.mref @x0
@x1)))

;; def=FStar.Monotonic.Heap.fsti(108,19-108,70); use=FStar.Monotonic.Heap.fsti(108,19-108,70)
(iff 
;; def=FStar.Monotonic.Heap.fsti(108,20-108,35); use=FStar.Monotonic.Heap.fsti(108,20-108,35)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(108,20-108,35); use=FStar.Monotonic.Heap.fsti(108,20-108,35)
(FStar.Monotonic.Heap.unused_in @x0
@x1
@x3
@x2)
)


;; def=FStar.Monotonic.Heap.fsti(108,41-108,69); use=FStar.Monotonic.Heap.fsti(108,41-108,69)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(108,41-108,69); use=FStar.Monotonic.Heap.fsti(108,41-108,69)
(FStar.Monotonic.Heap.addr_unused_in (FStar.Monotonic.Heap.addr_of @x0
@x1
@x3)
@x2)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.unused_in @x0
@x1
@x3
@x2))

:pattern ((FStar.Monotonic.Heap.addr_unused_in (FStar.Monotonic.Heap.addr_of @x0
@x1
@x3)
@x2))
:qid lemma_FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused))
:named lemma_FStar.Monotonic.Heap.lemma_ref_unused_iff_addr_unused))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_distinct_addrs_unused
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_distinct_addrs_unused; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Preorder.preorder @x0))
(HasType @x3
(FStar.Preorder.preorder @x1))
(HasType @x4
FStar.Monotonic.Heap.heap)
(HasType @x5
(FStar.Monotonic.Heap.mref @x0
@x2))
(HasType @x6
(FStar.Monotonic.Heap.mref @x1
@x3))

;; def=FStar.Monotonic.Heap.fsti(139,20-139,36); use=FStar.Monotonic.Heap.fsti(139,20-139,36)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(139,20-139,36); use=FStar.Monotonic.Heap.fsti(139,20-139,36)
(FStar.Monotonic.Heap.unused_in @x0
@x2
@x5
@x4)
)


;; def=FStar.Monotonic.Heap.fsti(139,40-139,60); use=FStar.Monotonic.Heap.fsti(139,40-139,60)
(not 
;; def=FStar.Monotonic.Heap.fsti(139,42-139,60); use=FStar.Monotonic.Heap.fsti(139,42-139,60)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(139,42-139,60); use=FStar.Monotonic.Heap.fsti(139,42-139,60)
(FStar.Monotonic.Heap.unused_in @x1
@x3
@x6
@x4)
)
)
)

;; def=FStar.Monotonic.Heap.fsti(140,19-140,64); use=FStar.Monotonic.Heap.fsti(140,19-140,64)
(and 
;; def=FStar.Monotonic.Heap.fsti(140,20-140,44); use=FStar.Monotonic.Heap.fsti(140,20-140,44)
(not (= (FStar.Monotonic.Heap.addr_of @x0
@x2
@x5)
(FStar.Monotonic.Heap.addr_of @x1
@x3
@x6)))


;; def=FStar.Monotonic.Heap.fsti(140,48-140,63); use=FStar.Monotonic.Heap.fsti(140,48-140,63)
(not 
;; def=FStar.Monotonic.Heap.fsti(140,51-140,62); use=FStar.Monotonic.Heap.fsti(140,51-140,62)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(140,51-140,62); use=FStar.Monotonic.Heap.fsti(140,51-140,62)
(Prims.op_Equals_Equals_Equals (FStar.Monotonic.Heap.mref @x0
@x2)
(FStar.Monotonic.Heap.mref @x1
@x3)
@x5
@x6)
)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.unused_in @x0
@x2
@x5
@x4) (FStar.Monotonic.Heap.unused_in @x1
@x3
@x6
@x4))
:qid lemma_FStar.Monotonic.Heap.lemma_distinct_addrs_unused))
:named lemma_FStar.Monotonic.Heap.lemma_distinct_addrs_unused))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Preorder.preorder @x0))
(HasType @x3
(FStar.Preorder.preorder @x1))
(HasType @x4
FStar.Monotonic.Heap.heap)
(HasType @x5
(FStar.Monotonic.Heap.mref @x0
@x2))
(HasType @x6
(FStar.Monotonic.Heap.mref @x1
@x3))

;; def=FStar.Monotonic.Heap.fsti(118,20-118,27); use=FStar.Monotonic.Heap.fsti(118,20-118,27)
(not 
;; def=FStar.Monotonic.Heap.fsti(118,20-118,27); use=FStar.Monotonic.Heap.fsti(118,20-118,27)
(= @x0
@x1)
)


;; def=FStar.Monotonic.Heap.fsti(118,31-118,46); use=FStar.Monotonic.Heap.fsti(118,31-118,46)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(118,31-118,46); use=FStar.Monotonic.Heap.fsti(118,31-118,46)
(FStar.Monotonic.Heap.contains @x0
@x2
@x4
@x5)
)


;; def=FStar.Monotonic.Heap.fsti(118,50-118,65); use=FStar.Monotonic.Heap.fsti(118,50-118,65)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(118,50-118,65); use=FStar.Monotonic.Heap.fsti(118,50-118,65)
(FStar.Monotonic.Heap.contains @x1
@x3
@x4
@x6)
)
)

;; def=FStar.Monotonic.Heap.fsti(119,19-119,45); use=FStar.Monotonic.Heap.fsti(119,19-119,45)
(not (= (FStar.Monotonic.Heap.addr_of @x0
@x2
@x5)
(FStar.Monotonic.Heap.addr_of @x1
@x3
@x6)))
)
 

:pattern ((FStar.Monotonic.Heap.contains @x0
@x2
@x4
@x5) (FStar.Monotonic.Heap.contains @x1
@x3
@x4
@x6))
:qid lemma_FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types))
:named lemma_FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_contains_implies_used
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_contains_implies_used; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Monotonic.Heap.mref @x0
@x1))

;; def=FStar.Monotonic.Heap.fsti(112,19-112,35); use=FStar.Monotonic.Heap.fsti(112,19-112,35)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(112,19-112,35); use=FStar.Monotonic.Heap.fsti(112,19-112,35)
(FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3)
)
)

;; def=FStar.Monotonic.Heap.fsti(113,19-113,40); use=FStar.Monotonic.Heap.fsti(113,19-113,40)
(not 
;; def=FStar.Monotonic.Heap.fsti(113,22-113,39); use=FStar.Monotonic.Heap.fsti(113,22-113,39)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(113,22-113,39); use=FStar.Monotonic.Heap.fsti(113,22-113,39)
(FStar.Monotonic.Heap.unused_in @x0
@x1
@x3
@x2)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3))

:pattern ((FStar.Monotonic.Heap.unused_in @x0
@x1
@x3
@x2))
:qid lemma_FStar.Monotonic.Heap.lemma_contains_implies_used))
:named lemma_FStar.Monotonic.Heap.lemma_contains_implies_used))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.l_Forall Ariadne.record
(Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x0)))

;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Ariadne.record)

;; def=Ariadne.fst(73,77-73,87); use=Ariadne.fst(73,77-73,87)
(Valid 
;; def=Ariadne.fst(73,77-73,87); use=Ariadne.fst(73,77-73,87)
(Ariadne.saved @x1
@x2)
)
)

;; def=Ariadne.fst(73,92-73,102); use=Ariadne.fst(73,92-73,102)
(Valid 
;; def=Ariadne.fst(73,92-73,102); use=Ariadne.fst(73,92-73,102)
(Ariadne.saved @x0
@x2)
)
)
 
;;no pats
:qid l_quant_interp_2d93d1e2e978575420277bf29c7a470b.1))
)
 

:pattern ((Valid (Prims.l_Forall Ariadne.record
(Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x0))))
:qid l_quant_interp_2d93d1e2e978575420277bf29c7a470b))

:named l_quant_interp_2d93d1e2e978575420277bf29c7a470b))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! (HasType Tm_arrow_d2d7a17893ed79671a6f13ae9376de32
Tm_type)
:named kinding_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_c4185f52507383203d0d6335fd0332a8
;;; Fact-ids: Name FStar.ST.heap_predicate; Namespace FStar.ST
(assert (! (HasType Tm_arrow_c4185f52507383203d0d6335fd0332a8
Tm_type)
:named kinding_Tm_arrow_c4185f52507383203d0d6335fd0332a8))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_63db68eb9811874d358b39a3a3a594c0
;;; Fact-ids: Name FStar.Monotonic.Heap.unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_arrow_63db68eb9811874d358b39a3a3a594c0
Tm_type)
:named kinding_Tm_arrow_63db68eb9811874d358b39a3a3a594c0))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_338106e39fc4640135399076515fcd27
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! (HasType Tm_arrow_338106e39fc4640135399076515fcd27
Tm_type)
:named kinding_Tm_arrow_338106e39fc4640135399076515fcd27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Tm_abs_94ac1d7db7c09cc7672544949d0efc27
@x0)
@x1)
(Prims.l_Forall Ariadne.record
(Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x0
@x1)))
 

:pattern ((ApplyTT (ApplyTT Tm_abs_94ac1d7db7c09cc7672544949d0efc27
@x0)
@x1))
:qid interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27))

:named interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,67-73,102); use=Ariadne.fst(73,67-73,102)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x2)
@x0)
(Prims.l_imp (Ariadne.saved @x1
@x0)
(Ariadne.saved @x2
@x0)))
 

:pattern ((ApplyTT (Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830 @x1
@x2)
@x0))
:qid interpretation_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))

:named interpretation_Tm_abs_8dc6d36388f235ce8d5e2a1ca4c1e830))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e33ef751d600ad1c7f71142479103c47
;;; Fact-ids: Name FStar.ST.mref; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(81,39-81,104); use=FStar.ST.fst(81,39-81,104)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e33ef751d600ad1c7f71142479103c47 @x0
@x1)))
(Valid (Prims.hasEq (FStar.Monotonic.Heap.mref @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e33ef751d600ad1c7f71142479103c47 @x0
@x1))))
:qid haseqTm_refine_e33ef751d600ad1c7f71142479103c47))

:named haseqTm_refine_e33ef751d600ad1c7f71142479103c47))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a11098d99239284f14b49e1dd0266896
;;; Fact-ids: Name FStar.ST.witnessed; Namespace FStar.ST
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a11098d99239284f14b49e1dd0266896))
(Valid (Prims.hasEq FStar.ST.heap_predicate)))
:named haseqTm_refine_a11098d99239284f14b49e1dd0266896))
;;;;;;;;;;;;;;;;haseq for Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa
;;; Fact-ids: Name FStar.All.lift_state_all; Namespace FStar.All
(assert (! (iff (Valid (Prims.hasEq Tm_refine_298bc3bb6d69e8b09e25f0f52730a1aa))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
:named haseqTm_refine_298bc3bb6d69e8b09e25f0f52730a1aa))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Prims.pos
Tm_type)
:named function_token_typing_Prims.pos))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.ST.heap_predicate; Namespace FStar.ST
(assert (! (HasType FStar.ST.heap_predicate
Tm_type)
:named function_token_typing_FStar.ST.heap_predicate))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.ST.contains_pred; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(79,4-79,17); use=FStar.ST.fst(79,4-79,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType FStar.ST.contains_pred@tok
Tm_arrow_63db68eb9811874d358b39a3a3a594c0))

;; def=FStar.ST.fst(79,4-79,17); use=FStar.ST.fst(79,4-79,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT FStar.ST.contains_pred@tok
@x1)
@x2)
@x3)
@x4)
(FStar.ST.contains_pred @x1
@x2
@x3
@x4))
 

:pattern ((FStar.ST.contains_pred @x1
@x2
@x3
@x4))
:qid function_token_typing_FStar.ST.contains_pred.1))
)
 

:pattern ((ApplyTT @x0
FStar.ST.contains_pred@tok))
:qid function_token_typing_FStar.ST.contains_pred))

:named function_token_typing_FStar.ST.contains_pred))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.Heap.heap; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.heap
Tm_type)
:named function_token_typing_FStar.Monotonic.Heap.heap))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Ariadne.ctr; Namespace Ariadne
(assert (! (HasType Ariadne.ctr
Tm_type)
:named function_token_typing_Ariadne.ctr))
;;;;;;;;;;;;;;;;Equation for Prims.pos
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (= Prims.pos
Tm_refine_774ba3f728d91ead8ef40be66c9802e5)
:named equation_Prims.pos))
;;;;;;;;;;;;;;;;Equation for FStar.ST.stable
;;; Fact-ids: Name FStar.ST.stable; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(45,4-45,10); use=FStar.ST.fst(45,4-45,10)
(forall ((@x0 Term))
 (! (= (Valid (FStar.ST.stable @x0))

;; def=FStar.ST.fst(46,2-46,63); use=FStar.ST.fst(46,2-46,63)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
FStar.Monotonic.Heap.heap)
(HasType @x2
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(46,31-46,35); use=FStar.ST.fst(46,31-46,35)
(Valid 
;; def=FStar.ST.fst(46,31-46,35); use=FStar.ST.fst(46,31-46,35)
(ApplyTT @x0
@x1)
)


;; def=FStar.ST.fst(46,39-46,53); use=FStar.ST.fst(46,39-46,53)
(Valid 
;; def=FStar.ST.fst(46,39-46,53); use=FStar.ST.fst(46,39-46,53)
(FStar.ST.heap_rel @x1
@x2)
)
)

;; def=FStar.ST.fst(46,59-46,63); use=FStar.ST.fst(46,59-46,63)
(Valid 
;; def=FStar.ST.fst(46,59-46,63); use=FStar.ST.fst(46,59-46,63)
(ApplyTT @x0
@x2)
)
)
 
;;no pats
:qid equation_FStar.ST.stable.1))
)
 

:pattern ((FStar.ST.stable @x0))
:qid equation_FStar.ST.stable))

:named equation_FStar.ST.stable))
;;;;;;;;;;;;;;;;Equation for FStar.ST.mref
;;; Fact-ids: Name FStar.ST.mref; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(81,5-81,9); use=FStar.ST.fst(81,5-81,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.ST.mref @x0
@x1)
(Tm_refine_e33ef751d600ad1c7f71142479103c47 @x0
@x1))
 

:pattern ((FStar.ST.mref @x0
@x1))
:qid equation_FStar.ST.mref))

:named equation_FStar.ST.mref))
;;;;;;;;;;;;;;;;Equation for FStar.ST.heap_rel
;;; Fact-ids: Name FStar.ST.heap_rel; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(36,4-36,12); use=FStar.ST.fst(36,4-36,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.ST.heap_rel @x0
@x1))

;; def=FStar.ST.fst(37,2-38,93); use=FStar.ST.fst(37,2-38,93)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
(FStar.Preorder.preorder @x2))
(HasType @x4
(FStar.Monotonic.Heap.mref @x2
@x3))

;; def=FStar.ST.fst(37,52-37,67); use=FStar.ST.fst(37,52-37,67)
(Valid 
;; def=FStar.ST.fst(37,52-37,67); use=FStar.ST.fst(37,52-37,67)
(FStar.Monotonic.Heap.contains @x2
@x3
@x0
@x4)
)
)

;; def=FStar.ST.fst(38,47-38,93); use=FStar.ST.fst(38,47-38,93)
(and 
;; def=FStar.ST.fst(38,48-38,63); use=FStar.ST.fst(38,48-38,63)
(Valid 
;; def=FStar.ST.fst(38,48-38,63); use=FStar.ST.fst(38,48-38,63)
(FStar.Monotonic.Heap.contains @x2
@x3
@x1
@x4)
)


;; def=FStar.ST.fst(38,67-38,92); use=FStar.ST.fst(38,67-38,92)
(Valid 
;; def=FStar.ST.fst(38,67-38,92); use=FStar.ST.fst(38,67-38,92)
(ApplyTT (ApplyTT @x3
(FStar.Monotonic.Heap.sel @x2
@x3
@x0
@x4))
(FStar.Monotonic.Heap.sel @x2
@x3
@x1
@x4))
)
)
)
 
;;no pats
:qid equation_FStar.ST.heap_rel.1))
)
 

:pattern ((FStar.ST.heap_rel @x0
@x1))
:qid equation_FStar.ST.heap_rel))

:named equation_FStar.ST.heap_rel))
;;;;;;;;;;;;;;;;Equation for FStar.ST.heap_predicate
;;; Fact-ids: Name FStar.ST.heap_predicate; Namespace FStar.ST
(assert (! (= FStar.ST.heap_predicate
Tm_arrow_c4185f52507383203d0d6335fd0332a8)
:named equation_FStar.ST.heap_predicate))
;;;;;;;;;;;;;;;;Equation for FStar.ST.contains_pred
;;; Fact-ids: Name FStar.ST.contains_pred; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(79,4-79,17); use=FStar.ST.fst(79,4-79,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.ST.contains_pred @x0
@x1
@x2
@x3)
(FStar.Monotonic.Heap.contains @x0
@x1
@x3
@x2))
 

:pattern ((FStar.ST.contains_pred @x0
@x1
@x2
@x3))
:qid equation_FStar.ST.contains_pred))

:named equation_FStar.ST.contains_pred))
;;;;;;;;;;;;;;;;Equation for Ariadne.preorder'
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,4-73,13); use=Ariadne.fst(73,4-73,13)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Ariadne.fst(73,4-73,13); use=Ariadne.fst(73,4-73,13)
(Ariadne.preorder_ @u0)

Tm_abs_94ac1d7db7c09cc7672544949d0efc27)
 

:pattern (
;; def=Ariadne.fst(73,4-73,13); use=Ariadne.fst(73,4-73,13)
(Ariadne.preorder_ @u0)
)
:qid equation_Ariadne.preorder_))

:named equation_Ariadne.preorder_))
;;;;;;;;;;;;;;;;Equation for Ariadne.ctr
;;; Fact-ids: Name Ariadne.ctr; Namespace Ariadne
(assert (! (= Ariadne.ctr
(FStar.ST.mref Ariadne.counter
(Ariadne.preorder_ Dummy_value)))
:named equation_Ariadne.ctr))
;;;;;;;;;;;;;;;;Prop-typing for FStar.ST.stable
;;; Fact-ids: Name FStar.ST.stable; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(45,4-45,10); use=FStar.ST.fst(45,4-45,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.ST.heap_predicate)
(Valid (Prims.subtype_of (FStar.ST.stable @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.ST.stable @x0)
Prims.unit))
:qid defn_equation_FStar.ST.stable))

:named defn_equation_FStar.ST.stable))
;;;;;;;;;;;;;;;;Prop-typing for FStar.ST.heap_rel
;;; Fact-ids: Name FStar.ST.heap_rel; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(36,4-36,12); use=FStar.ST.fst(36,4-36,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.Heap.heap)
(HasType @x1
FStar.Monotonic.Heap.heap))
(Valid (Prims.subtype_of (FStar.ST.heap_rel @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.ST.heap_rel @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.ST.heap_rel))

:named defn_equation_FStar.ST.heap_rel))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.ST.heap_predicate; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(43,22-43,35); use=FStar.ST.fst(43,22-43,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_c4185f52507383203d0d6335fd0332a8)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_c4185f52507383203d0d6335fd0332a8))
:qid FStar.ST_pre_typing_Tm_arrow_c4185f52507383203d0d6335fd0332a8))

:named FStar.ST_pre_typing_Tm_arrow_c4185f52507383203d0d6335fd0332a8))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_c4185f52507383203d0d6335fd0332a8
;;; Fact-ids: Name FStar.ST.heap_predicate; Namespace FStar.ST
(assert (! 
;; def=FStar.ST.fst(43,22-43,35); use=FStar.ST.fst(43,22-43,35)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_c4185f52507383203d0d6335fd0332a8)
(and 
;; def=FStar.ST.fst(43,22-43,35); use=FStar.ST.fst(43,22-43,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
FStar.Monotonic.Heap.heap)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.ST_interpretation_Tm_arrow_c4185f52507383203d0d6335fd0332a8.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_c4185f52507383203d0d6335fd0332a8))
:qid FStar.ST_interpretation_Tm_arrow_c4185f52507383203d0d6335fd0332a8))

:named FStar.ST_interpretation_Tm_arrow_c4185f52507383203d0d6335fd0332a8))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Monotonic.Heap.unused_in; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(56,18-56,73); use=FStar.Monotonic.Heap.fsti(56,18-56,73)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_63db68eb9811874d358b39a3a3a594c0)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_63db68eb9811874d358b39a3a3a594c0))
:qid FStar.Monotonic.Heap_pre_typing_Tm_arrow_63db68eb9811874d358b39a3a3a594c0))

:named FStar.Monotonic.Heap_pre_typing_Tm_arrow_63db68eb9811874d358b39a3a3a594c0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0
;;; Fact-ids: Name FStar.Monotonic.Heap.unused_in; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(56,18-56,73); use=FStar.Monotonic.Heap.fsti(56,18-56,73)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_63db68eb9811874d358b39a3a3a594c0)
(and 
;; def=FStar.Monotonic.Heap.fsti(56,18-56,73); use=FStar.Monotonic.Heap.fsti(56,18-56,73)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(FStar.Preorder.preorder @x1))
(HasType @x3
(FStar.Monotonic.Heap.mref @x1
@x2))
(HasType @x4
FStar.Monotonic.Heap.heap))
(HasType (ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
@x4))
:qid FStar.Monotonic.Heap_interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0.1))

(IsTotFun @x0)

;; def=FStar.Monotonic.Heap.fsti(56,18-56,73); use=FStar.Monotonic.Heap.fsti(56,18-56,73)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.Monotonic.Heap_interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0.2))


;; def=FStar.Monotonic.Heap.fsti(56,18-56,73); use=FStar.Monotonic.Heap.fsti(56,18-56,73)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(FStar.Preorder.preorder @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid FStar.Monotonic.Heap_interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0.3))


;; def=FStar.Monotonic.Heap.fsti(56,18-56,73); use=FStar.Monotonic.Heap.fsti(56,18-56,73)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(FStar.Preorder.preorder @x1))
(HasType @x3
(FStar.Monotonic.Heap.mref @x1
@x2)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid FStar.Monotonic.Heap_interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_63db68eb9811874d358b39a3a3a594c0))
:qid FStar.Monotonic.Heap_interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0))

:named FStar.Monotonic.Heap_interpretation_Tm_arrow_63db68eb9811874d358b39a3a3a594c0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(59,22-59,28); use=Ariadne.fst(73,74-73,75)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
:qid Ariadne_pre_typing_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))

:named Ariadne_pre_typing_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_338106e39fc4640135399076515fcd27)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_338106e39fc4640135399076515fcd27))
:qid Ariadne_pre_typing_Tm_arrow_338106e39fc4640135399076515fcd27))

:named Ariadne_pre_typing_Tm_arrow_338106e39fc4640135399076515fcd27))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(59,22-59,28); use=Ariadne.fst(73,74-73,75)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32)
(and 
;; def=Ariadne.fst(59,22-59,28); use=Ariadne.fst(73,74-73,75)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Ariadne.record)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid Ariadne_interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
:qid Ariadne_interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))

:named Ariadne_interpretation_Tm_arrow_d2d7a17893ed79671a6f13ae9376de32))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_338106e39fc4640135399076515fcd27
;;; Fact-ids: Name Ariadne.preorder'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_338106e39fc4640135399076515fcd27)
(and 
;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Ariadne.counter)
(HasType @x2
Ariadne.counter))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.logical))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27.1))

(IsTotFun @x0)

;; def=Ariadne.fst(73,42-73,62); use=Ariadne.fst(73,42-73,75)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Ariadne.counter)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_338106e39fc4640135399076515fcd27))
:qid Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27))

:named Ariadne_interpretation_Tm_arrow_338106e39fc4640135399076515fcd27))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name FStar.ST.mref; Namespace FStar.ST
(assert (! (Valid (ApplyTT __uu__PartialApp
FStar.ST.contains_pred@tok))
:named @kick_partial_app_ecc2873331cbcc22dfae3795dcb55413))
(push) ;; push{2

; Starting query at Ariadne.fst(88,4-88,48)

(declare-fun label_1 () Bool)

(declare-fun Tm_abs_a5ca6fe12225dcddc723177173d17b3f (Term Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_a5ca6fe12225dcddc723177173d17b3f
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(88,13-88,48); use=Ariadne.fst(88,13-88,48)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x0
@x1)
Tm_arrow_c4185f52507383203d0d6335fd0332a8)
 

:pattern ((Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x0
@x1))
:qid typing_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))

:named typing_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(88,13-88,48); use=Ariadne.fst(88,13-88,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x1
@x2)
@x0)
(Prims.l_and (FStar.Monotonic.Heap.contains Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x0
@x1)
(Ariadne.saved (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x0
@x1)
@x2)))
 

:pattern ((ApplyTT (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x1
@x2)
@x0))
:qid interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))

:named interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))

; Encoding query formula : forall (c: Ariadne.ctr) (s: Ariadne.record).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (FStar.ST.stable (fun h ->
;             FStar.Monotonic.Heap.contains h c /\ Ariadne.saved (FStar.Monotonic.Heap.sel h c) s))


; Context: While encoding a query
; While typechecking the top-level declaration `let saved_backup`

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
Ariadne.ctr)
(HasType @x1
Ariadne.record))

;; def=Ariadne.fst(87,57-87,74); use=Ariadne.fst(88,13-88,48)
(or label_1

;; def=Ariadne.fst(87,57-87,74); use=Ariadne.fst(88,13-88,48)
(Valid 
;; def=Ariadne.fst(87,57-87,74); use=Ariadne.fst(88,13-88,48)
(FStar.ST.stable (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x0
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
; QUERY ID: (Ariadne.saved_backup, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Ariadne.ctr, equation_Ariadne.index, equation_Ariadne.preorder_, equation_Ariadne.record, equation_FStar.ST.heap_rel, equation_FStar.ST.mref, equation_FStar.ST.stable, equation_Prims.nat, fuel_guarded_inversion_FStar.Pervasives.Native.tuple2, interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27, interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f, kinding_Ariadne.counter@tok, l_and-interp, l_quant_interp_2d93d1e2e978575420277bf29c7a470b, refinement_interpretation_Tm_refine_e33ef751d600ad1c7f71142479103c47, typing_Ariadne.preorder_

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let saved_backup


; <Start encoding let saved_backup>

(declare-fun Ariadne.saved_backup (Term Term) Term)

(declare-fun Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0 () Term)
;;;;;;;;;;;;;;;;c: ctr -> s: record -> f: (_: FStar.Monotonic.Heap.heap -> Type){FStar.ST.stable f}
(declare-fun Tm_arrow_83f5ce545164a1cf6d70d3b119e78082 () Term)
(declare-fun Ariadne.saved_backup@tok () Term)



(declare-fun Tm_abs_a5ca6fe12225dcddc723177173d17b3f (Term Term) Term)

; </end encoding let saved_backup>

;;;;;;;;;;;;;;;;typing_Tm_abs_a5ca6fe12225dcddc723177173d17b3f
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(88,13-88,48); use=Ariadne.fst(88,13-88,48)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x0
@x1)
Tm_arrow_c4185f52507383203d0d6335fd0332a8)
 

:pattern ((Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x0
@x1))
:qid typing_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))

:named typing_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,4-87,16); use=Ariadne.fst(87,4-87,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Ariadne.ctr)
(HasType @x1
Ariadne.record))
(HasType (Ariadne.saved_backup @x0
@x1)
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
 

:pattern ((Ariadne.saved_backup @x0
@x1))
:qid typing_Ariadne.saved_backup))

:named typing_Ariadne.saved_backup))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! (HasType Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0
Tm_type)
:named refinement_kinding_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,38-87,76); use=Ariadne.fst(87,38-87,76)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0)
(and (HasTypeFuel @u0
@x1
Tm_arrow_c4185f52507383203d0d6335fd0332a8)

;; def=Ariadne.fst(87,57-87,74); use=Ariadne.fst(87,57-87,74)
(Valid 
;; def=Ariadne.fst(87,57-87,74); use=Ariadne.fst(87,57-87,74)
(FStar.ST.stable @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
:qid refinement_interpretation_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))

:named refinement_interpretation_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(88,13-88,48); use=Ariadne.fst(88,13-88,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x1
@x2)
@x0)
(Prims.l_and (FStar.Monotonic.Heap.contains Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x0
@x1)
(Ariadne.saved (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x0
@x1)
@x2)))
 

:pattern ((ApplyTT (Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x1
@x2)
@x0))
:qid interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))

:named interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! (iff (Valid (Prims.hasEq Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
(Valid (Prims.hasEq Tm_arrow_c4185f52507383203d0d6335fd0332a8)))
:named haseqTm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
;;;;;;;;;;;;;;;;Equation for Ariadne.saved_backup
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,4-87,16); use=Ariadne.fst(87,4-87,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.saved_backup @x0
@x1)
(Tm_abs_a5ca6fe12225dcddc723177173d17b3f @x0
@x1))
 

:pattern ((Ariadne.saved_backup @x0
@x1))
:qid equation_Ariadne.saved_backup))

:named equation_Ariadne.saved_backup))
(push) ;; push{2

; Starting query at Ariadne.fst(90,22-90,60)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (c: Ariadne.ctr) (s: Ariadne.record).
;   (*  - Subtyping check failed
;   - Expected type p: FStar.ST.heap_predicate{FStar.ST.stable p}
;     got type _: FStar.Monotonic.Heap.heap -> Type0
; *)
;   Prims.auto_squash (FStar.ST.stable (Ariadne.saved_backup c s))


; Context: While encoding a query
; While typechecking the top-level declaration `let backup`

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
Ariadne.ctr)
(HasType @x1
Ariadne.record))

;; def=FStar.ST.fst(49,32-49,40); use=Ariadne.fst(90,41-90,59)
(or label_1

;; def=FStar.ST.fst(49,32-49,40); use=Ariadne.fst(90,41-90,59)
(Valid 
;; def=FStar.ST.fst(49,32-49,40); use=Ariadne.fst(90,41-90,59)
(FStar.ST.stable (Ariadne.saved_backup @x0
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
; QUERY ID: (Ariadne.backup, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Ariadne.saved_backup, refinement_interpretation_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0, typing_Ariadne.saved_backup

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let backup


; <Start encoding let backup>

(declare-fun Ariadne.backup (Term) Term)
;;;;;;;;;;;;;;;;c: ctr -> Type
(declare-fun Tm_arrow_22a2d96e4e8d8dd8d8839b7a48a8e745 () Term)
(declare-fun Ariadne.backup@tok () Term)
(declare-fun Tm_refine_e55319c085bf178a09f5c6b692f5d239 (Term) Term)

; </end encoding let backup>


; encoding sigelt let suffix_of


; <Start encoding let suffix_of>

(declare-fun Ariadne.suffix_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;l1: Prims.list (backup c) -> l2: Prims.list (backup c) -> Prims.logical
(declare-fun Tm_arrow_384712bb083487907078026f4a627f0b () Term)
(declare-fun Ariadne.suffix_of@tok () Term)

; </end encoding let suffix_of>


; encoding sigelt let log_pre'


; <Start encoding let log_pre'>

(declare-fun Ariadne.log_pre_ (Term) Term)
;;;;;;;;;;;;;;;;c: ctr -> FStar.Preorder.relation (Prims.list (backup c))
(declare-fun Tm_arrow_f6e4369889680990836847308c3c26a1 () Term)
(declare-fun Ariadne.log_pre_@tok () Term)
;;;;;;;;;;;;;;;;l1: Prims.list (backup c) -> l2: Prims.list (backup c) -> Type
(declare-fun Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 (Term) Term)
(declare-fun Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528 (Term) Term)

; </end encoding let log_pre'>

;;;;;;;;;;;;;;;;typing_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,64-95,81); use=Ariadne.fst(95,64-95,81)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528 @x0)
(Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x0))
 

:pattern ((Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528 @x0))
:qid typing_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528))

:named typing_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528))
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
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0))
(HasType @x2
(Prims.list @x0)))
(HasType (FStar.List.Tot.Base.strict_suffix_of @x0
@x1
@x2)
Tm_refine_da3062322c9bea8d5b2058386775b91a))
 

:pattern ((FStar.List.Tot.Base.strict_suffix_of @x0
@x1
@x2))
:qid typing_FStar.List.Tot.Base.strict_suffix_of))

:named typing_FStar.List.Tot.Base.strict_suffix_of))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.suffix_of; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(92,4-92,13); use=Ariadne.fst(92,4-92,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Ariadne.ctr)
(HasType @x1
(Prims.list (Ariadne.backup @x0)))
(HasType @x2
(Prims.list (Ariadne.backup @x0))))
(HasType (Ariadne.suffix_of @x0
@x1
@x2)
Prims.logical))
 

:pattern ((Ariadne.suffix_of @x0
@x1
@x2))
:qid typing_Ariadne.suffix_of))

:named typing_Ariadne.suffix_of))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,4-95,12); use=Ariadne.fst(95,4-95,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.ctr)
(HasType (Ariadne.log_pre_ @x0)
(FStar.Preorder.relation (Prims.list (Ariadne.backup @x0)))))
 

:pattern ((Ariadne.log_pre_ @x0))
:qid typing_Ariadne.log_pre_))

:named typing_Ariadne.log_pre_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(90,5-90,11); use=Ariadne.fst(90,5-90,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.ctr)
(HasType (Ariadne.backup @x0)
Tm_type))
 

:pattern ((Ariadne.backup @x0))
:qid typing_Ariadne.backup))

:named typing_Ariadne.backup))
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
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Prims.list @x1))
(HasType @x3
(Prims.list @x1)))
(HasType (FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented @u0
@x1
@x2
@x3)
Tm_refine_da3062322c9bea8d5b2058386775b91a))
 

:pattern ((FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))

:named token_correspondence_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT FStar.List.Tot.Base.strict_suffix_of@tok
@x0)
@x1)
@x2)
(FStar.List.Tot.Base.strict_suffix_of @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT FStar.List.Tot.Base.strict_suffix_of@tok
@x0)
@x1)
@x2))
:qid token_correspondence_FStar.List.Tot.Base.strict_suffix_of))

:named token_correspondence_FStar.List.Tot.Base.strict_suffix_of))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(90,22-90,60); use=Ariadne.fst(90,22-90,60)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_e55319c085bf178a09f5c6b692f5d239))

:named refinement_kinding_Tm_refine_e55319c085bf178a09f5c6b692f5d239))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Ariadne.backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(90,22-90,60); use=Ariadne.fst(90,22-90,60)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x2))
(and (HasTypeFuel @u0
@x1
Ariadne.record)

;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(90,31-90,59)
(Valid 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(90,31-90,59)
(FStar.ST.witnessed (Ariadne.saved_backup @x2
@x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x2)))
:qid refinement_interpretation_Tm_refine_e55319c085bf178a09f5c6b692f5d239))

:named refinement_interpretation_Tm_refine_e55319c085bf178a09f5c6b692f5d239))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.equals@tok))
:named pre_kinding_Prims.equals@tok))
;;;;;;;;;;;;;;;;Lemma: FStar.List.Tot.Properties.strict_suffix_of_trans
;;; Fact-ids: Name FStar.List.Tot.Properties.strict_suffix_of_trans; Namespace FStar.List.Tot.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0))
(HasType @x2
(Prims.list @x0))
(HasType @x3
(Prims.list @x0))

;; def=FStar.List.Tot.Properties.fsti(710,13-710,35); use=FStar.List.Tot.Properties.fsti(710,13-710,35)
(Valid 
;; def=FStar.List.Tot.Properties.fsti(710,13-710,35); use=FStar.List.Tot.Properties.fsti(710,13-710,35)
(FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented ZFuel
@x0
@x1
@x2)
)


;; def=FStar.List.Tot.Properties.fsti(710,39-710,61); use=FStar.List.Tot.Properties.fsti(710,39-710,61)
(Valid 
;; def=FStar.List.Tot.Properties.fsti(710,39-710,61); use=FStar.List.Tot.Properties.fsti(710,39-710,61)
(FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented ZFuel
@x0
@x2
@x3)
)
)

;; def=FStar.List.Tot.Properties.fsti(710,67-710,89); use=FStar.List.Tot.Properties.fsti(710,67-710,89)
(Valid 
;; def=FStar.List.Tot.Properties.fsti(710,67-710,89); use=FStar.List.Tot.Properties.fsti(710,67-710,89)
(FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented ZFuel
@x0
@x1
@x3)
)
)
 

:pattern ((FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented ZFuel
@x0
@x1
@x2) (FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented ZFuel
@x0
@x2
@x3))
:qid lemma_FStar.List.Tot.Properties.strict_suffix_of_trans))
:named lemma_FStar.List.Tot.Properties.strict_suffix_of_trans))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,31-95,48); use=Ariadne.fst(95,31-95,48)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x0)
Tm_type))
:qid kinding_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95))

:named kinding_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1d91178a138c1826d6a199b1613394f1
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (HasType Tm_arrow_1d91178a138c1826d6a199b1613394f1
Tm_type)
:named kinding_Tm_arrow_1d91178a138c1826d6a199b1613394f1))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,64-95,81); use=Ariadne.fst(95,64-95,81)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528 @x2)
@x0)
@x1)
(Ariadne.suffix_of @x2
@x0
@x1))
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528 @x2)
@x0)
@x1))
:qid interpretation_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528))

:named interpretation_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e55319c085bf178a09f5c6b692f5d239
;;; Fact-ids: Name Ariadne.backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(90,22-90,60); use=Ariadne.fst(90,22-90,60)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x0)))
(Valid (Prims.hasEq Ariadne.record)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x0))))
:qid haseqTm_refine_e55319c085bf178a09f5c6b692f5d239))

:named haseqTm_refine_e55319c085bf178a09f5c6b692f5d239))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType FStar.List.Tot.Base.strict_suffix_of@tok
Tm_arrow_1d91178a138c1826d6a199b1613394f1))

;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT FStar.List.Tot.Base.strict_suffix_of@tok
@x1)
@x2)
@x3)
(FStar.List.Tot.Base.strict_suffix_of @x1
@x2
@x3))
 

:pattern ((FStar.List.Tot.Base.strict_suffix_of @x1
@x2
@x3))
:qid function_token_typing_FStar.List.Tot.Base.strict_suffix_of.1))
)
 

:pattern ((ApplyTT @x0
FStar.List.Tot.Base.strict_suffix_of@tok))
:qid function_token_typing_FStar.List.Tot.Base.strict_suffix_of))

:named function_token_typing_FStar.List.Tot.Base.strict_suffix_of))
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
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.equals; Namespace Prims; Name Prims.Refl; Namespace Prims
(assert (! (= 135
(Term_constr_id Prims.equals@tok))
:named fresh_token_Prims.equals@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.List.Tot.Base.strict_suffix_of
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Prims.list @x1))
(HasType @x3
(Prims.list @x1)))
(= (FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-Prims.Nil @lb4)
Prims.l_False
(ite (is-Prims.Cons @lb4)
(Prims.l_or (Prims.eq2 (Prims.list @x1)
@x2
(Prims.Cons_tl @lb4))
(FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented @u0
@x1
@x2
(Prims.Cons_tl @lb4)))
Tm_unit)))))
 :weight 0


:pattern ((FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))

:named equation_with_fuel_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for Ariadne.suffix_of
;;; Fact-ids: Name Ariadne.suffix_of; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(92,4-92,13); use=Ariadne.fst(92,4-92,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (Ariadne.suffix_of @x0
@x1
@x2))

;; def=Ariadne.fst(93,2-93,36); use=Ariadne.fst(93,2-93,36)
(or 
;; def=Ariadne.fst(93,2-93,10); use=Ariadne.fst(93,2-93,10)
(= @x1
@x2)


;; def=Ariadne.fst(93,14-93,36); use=Ariadne.fst(93,14-93,36)
(Valid 
;; def=Ariadne.fst(93,14-93,36); use=Ariadne.fst(93,14-93,36)
(FStar.List.Tot.Base.strict_suffix_of (Ariadne.backup @x0)
@x1
@x2)
)
)
)
 

:pattern ((Ariadne.suffix_of @x0
@x1
@x2))
:qid equation_Ariadne.suffix_of))

:named equation_Ariadne.suffix_of))
;;;;;;;;;;;;;;;;Equation for Ariadne.log_pre'
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,4-95,12); use=Ariadne.fst(95,4-95,12)
(forall ((@x0 Term))
 (! (= (Ariadne.log_pre_ @x0)
(Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528 @x0))
 

:pattern ((Ariadne.log_pre_ @x0))
:qid equation_Ariadne.log_pre_))

:named equation_Ariadne.log_pre_))
;;;;;;;;;;;;;;;;Equation for Ariadne.backup
;;; Fact-ids: Name Ariadne.backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(90,5-90,11); use=Ariadne.fst(90,5-90,11)
(forall ((@x0 Term))
 (! (= (Ariadne.backup @x0)
(Tm_refine_e55319c085bf178a09f5c6b692f5d239 @x0))
 

:pattern ((Ariadne.backup @x0))
:qid equation_Ariadne.backup))

:named equation_Ariadne.backup))
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
;;;;;;;;;;;;;;;;Prop-typing for Ariadne.suffix_of
;;; Fact-ids: Name Ariadne.suffix_of; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(92,4-92,13); use=Ariadne.fst(92,4-92,13)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Ariadne.ctr)
(HasType @x1
(Prims.list (Ariadne.backup @x0)))
(HasType @x2
(Prims.list (Ariadne.backup @x0))))
(Valid (Prims.subtype_of (Ariadne.suffix_of @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Ariadne.suffix_of @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_Ariadne.suffix_of))

:named defn_equation_Ariadne.suffix_of))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,30-533,12); use=FStar.List.Tot.Base.fst(532,30-533,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1d91178a138c1826d6a199b1613394f1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1d91178a138c1826d6a199b1613394f1))
:qid FStar.List.Tot.Base_pre_typing_Tm_arrow_1d91178a138c1826d6a199b1613394f1))

:named FStar.List.Tot.Base_pre_typing_Tm_arrow_1d91178a138c1826d6a199b1613394f1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1d91178a138c1826d6a199b1613394f1
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,30-533,12); use=FStar.List.Tot.Base.fst(532,30-533,12)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1d91178a138c1826d6a199b1613394f1)
(and 
;; def=FStar.List.Tot.Base.fst(532,30-533,12); use=FStar.List.Tot.Base.fst(532,30-533,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Prims.list @x1))
(HasType @x3
(Prims.list @x1)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
Tm_refine_da3062322c9bea8d5b2058386775b91a))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_1d91178a138c1826d6a199b1613394f1.1))

(IsTotFun @x0)

;; def=FStar.List.Tot.Base.fst(532,30-533,12); use=FStar.List.Tot.Base.fst(532,30-533,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_1d91178a138c1826d6a199b1613394f1.2))


;; def=FStar.List.Tot.Base.fst(532,30-533,12); use=FStar.List.Tot.Base.fst(532,30-533,12)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Prims.list @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_1d91178a138c1826d6a199b1613394f1.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1d91178a138c1826d6a199b1613394f1))
:qid FStar.List.Tot.Base_interpretation_Tm_arrow_1d91178a138c1826d6a199b1613394f1))

:named FStar.List.Tot.Base_interpretation_Tm_arrow_1d91178a138c1826d6a199b1613394f1))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,31-95,48); use=Ariadne.fst(95,31-95,48)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x2)))
:qid Ariadne_pre_typing_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95))

:named Ariadne_pre_typing_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95
;;; Fact-ids: Name Ariadne.log_pre'; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(95,31-95,48); use=Ariadne.fst(95,31-95,48)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x1))
(and 
;; def=Ariadne.fst(95,31-95,48); use=Ariadne.fst(95,31-95,48)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(Prims.list (Ariadne.backup @x1)))
(HasType @x3
(Prims.list (Ariadne.backup @x1))))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid Ariadne_interpretation_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95.1))

(IsTotFun @x0)

;; def=Ariadne.fst(95,31-95,48); use=Ariadne.fst(95,31-95,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(Prims.list (Ariadne.backup @x1)))
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid Ariadne_interpretation_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95 @x1)))
:qid Ariadne_interpretation_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95))

:named Ariadne_interpretation_Tm_arrow_8eb860f8c0d5f827a2bafa7114f54c95))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name FStar.List.Tot.Base.strict_prefix_of; Namespace FStar.List.Tot.Base
(assert (! (Valid (ApplyTT __uu__PartialApp
FStar.List.Tot.Base.strict_suffix_of@tok))
:named @kick_partial_app_a83d9836dd5fde61849337e3aeefb108))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))

:named @fuel_irrelevance_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(532,8-532,24); use=FStar.List.Tot.Base.fst(532,8-532,24)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.List.Tot.Base.strict_suffix_of @x0
@x1
@x2)
(FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.List.Tot.Base.strict_suffix_of @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))

:named @fuel_correspondence_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented))
(push) ;; push{2

; Starting query at Ariadne.fst(96,50-96,60)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (c: Ariadne.ctr).
;   (*  - Could not prove post-condition
; *)
;   Prims.auto_squash (FStar.Preorder.preorder_rel (Ariadne.log_pre' c))


; Context: While encoding a query
; While typechecking the top-level declaration `let log_pre`

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
Ariadne.ctr)

;; def=FStar.Preorder.fst(33,40-33,56); use=Ariadne.fst(96,50-96,60)
(or label_1

;; def=FStar.Preorder.fst(33,40-33,56); use=Ariadne.fst(96,50-96,60)
(Valid 
;; def=FStar.Preorder.fst(33,40-33,56); use=Ariadne.fst(96,50-96,60)
(FStar.Preorder.preorder_rel (Prims.list (Ariadne.backup @x0))
(Ariadne.log_pre_ @x0))
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
; QUERY ID: (Ariadne.log_pre, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented, @fuel_irrelevance_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented, @query, equation_Ariadne.backup, equation_Ariadne.log_pre_, equation_Ariadne.suffix_of, equation_FStar.Preorder.preorder_rel, equation_FStar.Preorder.reflexive, equation_FStar.Preorder.transitive, equation_with_fuel_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented, false_interp, fuel_guarded_inversion_Prims.list, interpretation_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528, lemma_FStar.List.Tot.Properties.strict_suffix_of_trans, typing_Ariadne.backup

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let log_pre


; <Start encoding let log_pre>

(declare-fun Ariadne.log_pre (Term) Term)
;;;;;;;;;;;;;;;;c: ctr -> FStar.Preorder.preorder (Prims.list (backup c))
(declare-fun Tm_arrow_cff43cc708f428f4d53c91d53cf7585b () Term)
(declare-fun Ariadne.log_pre@tok () Term)

; </end encoding let log_pre>


; encoding sigelt let log


; <Start encoding let log>

(declare-fun Ariadne.log (Term) Term)

(declare-fun Ariadne.log@tok () Term)

; </end encoding let log>


; encoding sigelt let key


; <Start encoding let key>

(declare-fun Ariadne.key (Term) Term)

(declare-fun Ariadne.key@tok () Term)

; </end encoding let key>


; encoding sigelt type Ariadne.protected


; <Start encoding type Ariadne.protected>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.protected () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Ariadne.Protect (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Protect_c (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Ariadne.Protect_k (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Ariadne.Protect
(declare-fun Ariadne.Protect@tok () Term)
;;;;;;;;;;;;;;;;c: ctr -> k: key c -> protected
(declare-fun Tm_arrow_fcead70d89d731d6bfd38e3d0c604e4a () Term)

; <start constructor Ariadne.protected>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.protected ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
295)
(= __@x0
Ariadne.protected)))

; </end constructor Ariadne.protected>


; <start constructor Ariadne.Protect>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Ariadne.Protect ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
301)
(= __@x0
(Ariadne.Protect (Ariadne.Protect_c __@x0)
(Ariadne.Protect_k __@x0)))))

; </end constructor Ariadne.Protect>


; </end encoding type Ariadne.protected>


; encoding sigelt val Ariadne.uu___is_Protect


; <Start encoding val Ariadne.uu___is_Protect>

(declare-fun Ariadne.uu___is_Protect (Term) Term)
;;;;;;;;;;;;;;;;projectee: protected -> Prims.bool
(declare-fun Tm_arrow_f6d85b4bb348a3bc43d8ba50c6e0612f () Term)
(declare-fun Ariadne.uu___is_Protect@tok () Term)

; </end encoding val Ariadne.uu___is_Protect>


; encoding sigelt let uu___is_Protect


; <Skipped let uu___is_Protect/>


; encoding sigelt val Ariadne.__proj__Protect__item__c


; <Start encoding val Ariadne.__proj__Protect__item__c>

(declare-fun Ariadne.__proj__Protect__item__c (Term) Term)
;;;;;;;;;;;;;;;;projectee: protected -> ctr
(declare-fun Tm_arrow_6e313931f820045eb1ba8dcc9e74ee4b () Term)
(declare-fun Ariadne.__proj__Protect__item__c@tok () Term)

; </end encoding val Ariadne.__proj__Protect__item__c>


; encoding sigelt let __proj__Protect__item__c


; <Skipped let __proj__Protect__item__c/>


; encoding sigelt val Ariadne.__proj__Protect__item__k


; <Start encoding val Ariadne.__proj__Protect__item__k>

(declare-fun Ariadne.__proj__Protect__item__k (Term) Term)
;;;;;;;;;;;;;;;;projectee: protected -> key projectee.c
(declare-fun Tm_arrow_4901b7b233a43fcf02794f74ce17a759 () Term)
(declare-fun Ariadne.__proj__Protect__item__k@tok () Term)

; </end encoding val Ariadne.__proj__Protect__item__k>


; encoding sigelt let __proj__Protect__item__k


; <Skipped let __proj__Protect__item__k/>


; encoding sigelt val Ariadne.create


; <Skipped val Ariadne.create/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named typing_Prims.prop))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.TSet.tset_of_set; Namespace FStar.TSet
(assert (! 
;; def=FStar.TSet.fsti(103,4-103,15); use=FStar.TSet.fsti(103,4-103,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0)))
(HasType (FStar.TSet.tset_of_set @x0
@x1)
(FStar.TSet.set @x0)))
 

:pattern ((FStar.TSet.tset_of_set @x0
@x1))
:qid typing_FStar.TSet.tset_of_set))

:named typing_FStar.TSet.tset_of_set))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.TSet.set; Namespace FStar.TSet
(assert (! 
;; def=FStar.TSet.fsti(26,4-26,7); use=FStar.TSet.fsti(26,4-26,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.TSet.set @x0)
Tm_type))
 

:pattern ((FStar.TSet.set @x0))
:qid typing_FStar.TSet.set))

:named typing_FStar.TSet.set))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.TSet.mem; Namespace FStar.TSet
(assert (! 
;; def=FStar.TSet.fsti(32,4-32,7); use=FStar.TSet.fsti(32,4-32,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
@x0)
(HasType @x2
(FStar.TSet.set @x0)))
(HasType (FStar.TSet.mem @x0
@x1
@x2)
Prims.prop))
 

:pattern ((FStar.TSet.mem @x0
@x1
@x2))
:qid typing_FStar.TSet.mem))

:named typing_FStar.TSet.mem))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.set; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(22,4-22,7); use=FStar.Set.fsti(22,4-22,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.eqtype)
(HasType (FStar.Set.set @x0)
Tm_type))
 

:pattern ((FStar.Set.set @x0))
:qid typing_FStar.Set.set))

:named typing_FStar.Set.set))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.mem; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(30,4-30,7); use=FStar.Set.fsti(30,4-30,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(FStar.Set.set @x0)))
(HasType (FStar.Set.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.Set.mem @x0
@x1
@x2))
:qid typing_FStar.Set.mem))

:named typing_FStar.Set.mem))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.empty; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(34,4-34,9); use=FStar.Set.fsti(34,4-34,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.eqtype)
(HasType (FStar.Set.empty @x0)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Set.empty @x0))
:qid typing_FStar.Set.empty))

:named typing_FStar.Set.empty))
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
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.tset; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(24,4-24,8); use=FStar.Monotonic.Heap.fsti(24,4-24,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Monotonic.Heap.tset @x0)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.tset @x0))
:qid typing_FStar.Monotonic.Heap.tset))

:named typing_FStar.Monotonic.Heap.tset))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.set; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(23,4-23,7); use=FStar.Monotonic.Heap.fsti(23,4-23,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.eqtype)
(HasType (FStar.Monotonic.Heap.set @x0)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.set @x0))
:qid typing_FStar.Monotonic.Heap.set))

:named typing_FStar.Monotonic.Heap.set))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.modifies_t; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(84,4-84,14); use=FStar.Monotonic.Heap.fsti(84,4-84,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.Heap.tset Prims.nat))
(HasType @x1
FStar.Monotonic.Heap.heap)
(HasType @x2
FStar.Monotonic.Heap.heap))
(HasType (FStar.Monotonic.Heap.modifies_t @x0
@x1
@x2)
Prims.logical))
 

:pattern ((FStar.Monotonic.Heap.modifies_t @x0
@x1
@x2))
:qid typing_FStar.Monotonic.Heap.modifies_t))

:named typing_FStar.Monotonic.Heap.modifies_t))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.modifies; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(96,4-96,12); use=FStar.Monotonic.Heap.fsti(96,4-96,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.Heap.set Prims.nat))
(HasType @x1
FStar.Monotonic.Heap.heap)
(HasType @x2
FStar.Monotonic.Heap.heap))
(HasType (FStar.Monotonic.Heap.modifies @x0
@x1
@x2)
Prims.logical))
 

:pattern ((FStar.Monotonic.Heap.modifies @x0
@x1
@x2))
:qid typing_FStar.Monotonic.Heap.modifies))

:named typing_FStar.Monotonic.Heap.modifies))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.fresh; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(58,4-58,9); use=FStar.Monotonic.Heap.fsti(58,4-58,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.mref @x0
@x1))
(HasType @x3
FStar.Monotonic.Heap.heap)
(HasType @x4
FStar.Monotonic.Heap.heap))
(HasType (FStar.Monotonic.Heap.fresh @x0
@x1
@x2
@x3
@x4)
Prims.logical))
 

:pattern ((FStar.Monotonic.Heap.fresh @x0
@x1
@x2
@x3
@x4))
:qid typing_FStar.Monotonic.Heap.fresh))

:named typing_FStar.Monotonic.Heap.fresh))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(96,4-96,11); use=Ariadne.fst(96,4-96,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.ctr)
(HasType (Ariadne.log_pre @x0)
(FStar.Preorder.preorder (Prims.list (Ariadne.backup @x0)))))
 

:pattern ((Ariadne.log_pre @x0))
:qid typing_Ariadne.log_pre))

:named typing_Ariadne.log_pre))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.log; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(98,5-98,8); use=Ariadne.fst(98,5-98,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.ctr)
(HasType (Ariadne.log @x0)
Tm_type))
 

:pattern ((Ariadne.log @x0))
:qid typing_Ariadne.log))

:named typing_Ariadne.log))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.key; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(100,5-100,8); use=Ariadne.fst(100,5-100,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.ctr)
(HasType (Ariadne.key @x0)
Tm_type))
 

:pattern ((Ariadne.key @x0))
:qid typing_Ariadne.key))

:named typing_Ariadne.key))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,4-87,16); use=Ariadne.fst(87,4-87,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x0)
@x1)
(Ariadne.saved_backup @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x0)
@x1))
:qid token_correspondence_Ariadne.saved_backup))

:named token_correspondence_Ariadne.saved_backup))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,4-105,11); use=Ariadne.fst(105,4-105,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Protect @x1
@x2)
Ariadne.protected)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(Ariadne.Protect @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Ariadne.Protect @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Protect @x1
@x2)
Ariadne.protected))
:qid subterm_ordering_Ariadne.Protect))

:named subterm_ordering_Ariadne.Protect))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,4-105,11); use=Ariadne.fst(105,4-105,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Protect_k (Ariadne.Protect @x0
@x1))
@x1)
 

:pattern ((Ariadne.Protect @x0
@x1))
:qid projection_inverse_Ariadne.Protect_k))

:named projection_inverse_Ariadne.Protect_k))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,4-105,11); use=Ariadne.fst(105,4-105,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.Protect_c (Ariadne.Protect @x0
@x1))
@x0)
 

:pattern ((Ariadne.Protect @x0
@x1))
:qid projection_inverse_Ariadne.Protect_c))

:named projection_inverse_Ariadne.Protect_c))
;;;;;;;;;;;;;;;;Lemma: FStar.TSet.lemma_mem_tset_of_set
;;; Fact-ids: Name FStar.TSet.lemma_mem_tset_of_set; Namespace FStar.TSet
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
@x0))

;; def=FStar.TSet.fsti(107,19-107,59); use=FStar.TSet.fsti(107,19-107,59)
(iff 
;; def=FStar.TSet.fsti(107,20-107,31); use=FStar.TSet.fsti(107,20-107,31)
(BoxBool_proj_0 (FStar.Set.mem @x0
@x2
@x1))


;; def=FStar.TSet.fsti(107,37-107,58); use=FStar.TSet.fsti(107,37-107,58)
(Valid 
;; def=FStar.TSet.fsti(107,37-107,58); use=FStar.TSet.fsti(107,37-107,58)
(FStar.TSet.mem @x0
@x2
(FStar.TSet.tset_of_set @x0
@x1))
)
)
)
 

:pattern ((FStar.TSet.mem @x0
@x2
(FStar.TSet.tset_of_set @x0
@x1)))
:qid lemma_FStar.TSet.lemma_mem_tset_of_set))
:named lemma_FStar.TSet.lemma_mem_tset_of_set))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.mem_empty
;;; Fact-ids: Name FStar.Set.mem_empty; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0))
(not (BoxBool_proj_0 (FStar.Set.mem @x0
@x1
(FStar.Set.empty @x0)))))
 

:pattern ((FStar.Set.mem @x0
@x1
(FStar.Set.empty @x0)))
:qid lemma_FStar.Set.mem_empty))
:named lemma_FStar.Set.mem_empty))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! (HasType Tm_arrow_83f5ce545164a1cf6d70d3b119e78082
Tm_type)
:named kinding_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))
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
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! (HasType Ariadne.protected
Tm_type)
:named kinding_Ariadne.protected@tok))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named function_token_typing_Prims.prop))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,4-87,16); use=Ariadne.fst(87,4-87,16)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Ariadne.saved_backup@tok
Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))

;; def=Ariadne.fst(87,4-87,16); use=Ariadne.fst(87,4-87,16)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x1)
@x2)
(Ariadne.saved_backup @x1
@x2))
 

:pattern ((Ariadne.saved_backup @x1
@x2))
:qid function_token_typing_Ariadne.saved_backup.1))
)
 

:pattern ((ApplyTT @x0
Ariadne.saved_backup@tok))
:qid function_token_typing_Ariadne.saved_backup))

:named function_token_typing_Ariadne.saved_backup))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(104,10-104,19); use=Ariadne.fst(104,10-104,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Ariadne.protected)
(is-Ariadne.Protect @x1))
 

:pattern ((HasTypeFuel @u0
@x1
Ariadne.protected))
:qid fuel_guarded_inversion_Ariadne.protected))

:named fuel_guarded_inversion_Ariadne.protected))
;;;;;;;;;;;;;;;;Equation for Prims.prop
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (= Prims.prop
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf)
:named equation_Prims.prop))
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
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.tset
;;; Fact-ids: Name FStar.Monotonic.Heap.tset; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(24,4-24,8); use=FStar.Monotonic.Heap.fsti(24,4-24,8)
(forall ((@x0 Term))
 (! (= (FStar.Monotonic.Heap.tset @x0)
(FStar.TSet.set @x0))
 

:pattern ((FStar.Monotonic.Heap.tset @x0))
:qid equation_FStar.Monotonic.Heap.tset))

:named equation_FStar.Monotonic.Heap.tset))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.set
;;; Fact-ids: Name FStar.Monotonic.Heap.set; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(23,4-23,7); use=FStar.Monotonic.Heap.fsti(23,4-23,7)
(forall ((@x0 Term))
 (! (= (FStar.Monotonic.Heap.set @x0)
(FStar.Set.set @x0))
 

:pattern ((FStar.Monotonic.Heap.set @x0))
:qid equation_FStar.Monotonic.Heap.set))

:named equation_FStar.Monotonic.Heap.set))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.modifies_t
;;; Fact-ids: Name FStar.Monotonic.Heap.modifies_t; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(84,4-84,14); use=FStar.Monotonic.Heap.fsti(84,4-84,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (FStar.Monotonic.Heap.modifies_t @x0
@x1
@x2))

;; def=FStar.Monotonic.Heap.fsti(85,2-93,3); use=FStar.Monotonic.Heap.fsti(85,2-93,3)
(and 
;; def=FStar.Monotonic.Heap.fsti(85,2-86,104); use=FStar.Monotonic.Heap.fsti(85,2-86,104)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
Tm_type)
(HasType @x4
(FStar.Preorder.preorder @x3))
(HasType @x5
(FStar.Monotonic.Heap.mref @x3
@x4))

;; def=FStar.Monotonic.Heap.fsti(86,32-86,58); use=FStar.Monotonic.Heap.fsti(86,32-86,58)
(not 
;; def=FStar.Monotonic.Heap.fsti(86,35-86,57); use=FStar.Monotonic.Heap.fsti(86,35-86,57)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(86,35-86,57); use=FStar.Monotonic.Heap.fsti(86,35-86,57)
(FStar.TSet.mem Prims.nat
(FStar.Monotonic.Heap.addr_of @x3
@x4
@x5)
@x0)
)
)


;; def=FStar.Monotonic.Heap.fsti(86,62-86,77); use=FStar.Monotonic.Heap.fsti(86,62-86,77)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(86,62-86,77); use=FStar.Monotonic.Heap.fsti(86,62-86,77)
(FStar.Monotonic.Heap.contains @x3
@x4
@x1
@x5)
)
)

;; def=FStar.Monotonic.Heap.fsti(86,83-86,103); use=FStar.Monotonic.Heap.fsti(86,83-86,103)
(= (FStar.Monotonic.Heap.sel @x3
@x4
@x2
@x5)
(FStar.Monotonic.Heap.sel @x3
@x4
@x1
@x5))
)
 

:pattern ((FStar.Monotonic.Heap.sel @x3
@x4
@x2
@x5))
:qid equation_FStar.Monotonic.Heap.modifies_t.1))


;; def=FStar.Monotonic.Heap.fsti(87,2-88,67); use=FStar.Monotonic.Heap.fsti(87,2-88,67)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
Tm_type)
(HasType @x4
(FStar.Preorder.preorder @x3))
(HasType @x5
(FStar.Monotonic.Heap.mref @x3
@x4))

;; def=FStar.Monotonic.Heap.fsti(88,31-88,46); use=FStar.Monotonic.Heap.fsti(88,31-88,46)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(88,31-88,46); use=FStar.Monotonic.Heap.fsti(88,31-88,46)
(FStar.Monotonic.Heap.contains @x3
@x4
@x1
@x5)
)
)

;; def=FStar.Monotonic.Heap.fsti(88,51-88,66); use=FStar.Monotonic.Heap.fsti(88,51-88,66)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(88,51-88,66); use=FStar.Monotonic.Heap.fsti(88,51-88,66)
(FStar.Monotonic.Heap.contains @x3
@x4
@x2
@x5)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x3
@x4
@x2
@x5))
:qid equation_FStar.Monotonic.Heap.modifies_t.2))


;; def=FStar.Monotonic.Heap.fsti(89,2-90,69); use=FStar.Monotonic.Heap.fsti(89,2-90,69)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
Tm_type)
(HasType @x4
(FStar.Preorder.preorder @x3))
(HasType @x5
(FStar.Monotonic.Heap.mref @x3
@x4))

;; def=FStar.Monotonic.Heap.fsti(90,31-90,47); use=FStar.Monotonic.Heap.fsti(90,31-90,47)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(90,31-90,47); use=FStar.Monotonic.Heap.fsti(90,31-90,47)
(FStar.Monotonic.Heap.unused_in @x3
@x4
@x5
@x2)
)
)

;; def=FStar.Monotonic.Heap.fsti(90,52-90,68); use=FStar.Monotonic.Heap.fsti(90,52-90,68)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(90,52-90,68); use=FStar.Monotonic.Heap.fsti(90,52-90,68)
(FStar.Monotonic.Heap.unused_in @x3
@x4
@x5
@x1)
)
)
 

:pattern ((FStar.Monotonic.Heap.unused_in @x3
@x4
@x5
@x1))
:qid equation_FStar.Monotonic.Heap.modifies_t.3))


;; def=FStar.Monotonic.Heap.fsti(91,2-93,3); use=FStar.Monotonic.Heap.fsti(91,2-93,3)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.nat)

;; def=FStar.Monotonic.Heap.fsti(92,4-92,25); use=FStar.Monotonic.Heap.fsti(92,4-92,25)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(92,4-92,25); use=FStar.Monotonic.Heap.fsti(92,4-92,25)
(FStar.Monotonic.Heap.addr_unused_in @x3
@x2)
)
)

;; def=FStar.Monotonic.Heap.fsti(92,30-92,51); use=FStar.Monotonic.Heap.fsti(92,30-92,51)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(92,30-92,51); use=FStar.Monotonic.Heap.fsti(92,30-92,51)
(FStar.Monotonic.Heap.addr_unused_in @x3
@x1)
)
)
 

:pattern ((FStar.Monotonic.Heap.addr_unused_in @x3
@x1))
:qid equation_FStar.Monotonic.Heap.modifies_t.4))
)
)
 

:pattern ((FStar.Monotonic.Heap.modifies_t @x0
@x1
@x2))
:qid equation_FStar.Monotonic.Heap.modifies_t))

:named equation_FStar.Monotonic.Heap.modifies_t))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.modifies
;;; Fact-ids: Name FStar.Monotonic.Heap.modifies; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(96,4-96,12); use=FStar.Monotonic.Heap.fsti(96,4-96,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (FStar.Monotonic.Heap.modifies @x0
@x1
@x2))

;; def=FStar.Monotonic.Heap.fsti(96,47-96,82); use=FStar.Monotonic.Heap.fsti(96,47-96,82)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(96,47-96,82); use=FStar.Monotonic.Heap.fsti(96,47-96,82)
(FStar.Monotonic.Heap.modifies_t (FStar.TSet.tset_of_set Prims.nat
@x0)
@x1
@x2)
)
)
 

:pattern ((FStar.Monotonic.Heap.modifies @x0
@x1
@x2))
:qid equation_FStar.Monotonic.Heap.modifies))

:named equation_FStar.Monotonic.Heap.modifies))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.fresh
;;; Fact-ids: Name FStar.Monotonic.Heap.fresh; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(58,4-58,9); use=FStar.Monotonic.Heap.fsti(58,4-58,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (Valid (FStar.Monotonic.Heap.fresh @x0
@x1
@x2
@x3
@x4))

;; def=FStar.Monotonic.Heap.fsti(59,2-59,37); use=FStar.Monotonic.Heap.fsti(59,2-59,37)
(and 
;; def=FStar.Monotonic.Heap.fsti(59,2-59,18); use=FStar.Monotonic.Heap.fsti(59,2-59,18)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(59,2-59,18); use=FStar.Monotonic.Heap.fsti(59,2-59,18)
(FStar.Monotonic.Heap.unused_in @x0
@x1
@x2
@x3)
)


;; def=FStar.Monotonic.Heap.fsti(59,22-59,37); use=FStar.Monotonic.Heap.fsti(59,22-59,37)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(59,22-59,37); use=FStar.Monotonic.Heap.fsti(59,22-59,37)
(FStar.Monotonic.Heap.contains @x0
@x1
@x4
@x2)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.fresh @x0
@x1
@x2
@x3
@x4))
:qid equation_FStar.Monotonic.Heap.fresh))

:named equation_FStar.Monotonic.Heap.fresh))
;;;;;;;;;;;;;;;;Equation for Ariadne.log_pre
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(96,4-96,11); use=Ariadne.fst(96,4-96,11)
(forall ((@x0 Term))
 (! (= (Ariadne.log_pre @x0)
(Ariadne.log_pre_ @x0))
 

:pattern ((Ariadne.log_pre @x0))
:qid equation_Ariadne.log_pre))

:named equation_Ariadne.log_pre))
;;;;;;;;;;;;;;;;Equation for Ariadne.log
;;; Fact-ids: Name Ariadne.log; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(98,5-98,8); use=Ariadne.fst(98,5-98,8)
(forall ((@x0 Term))
 (! (= (Ariadne.log @x0)
(FStar.ST.mref (Prims.list (Ariadne.backup @x0))
(Ariadne.log_pre @x0)))
 

:pattern ((Ariadne.log @x0))
:qid equation_Ariadne.log))

:named equation_Ariadne.log))
;;;;;;;;;;;;;;;;Equation for Ariadne.key
;;; Fact-ids: Name Ariadne.key; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(100,5-100,8); use=Ariadne.fst(100,5-100,8)
(forall ((@x0 Term))
 (! (= (Ariadne.key @x0)
(Ariadne.log @x0))
 

:pattern ((Ariadne.key @x0))
:qid equation_Ariadne.key))

:named equation_Ariadne.key))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.Heap.modifies_t
;;; Fact-ids: Name FStar.Monotonic.Heap.modifies_t; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(84,4-84,14); use=FStar.Monotonic.Heap.fsti(84,4-84,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.Heap.tset Prims.nat))
(HasType @x1
FStar.Monotonic.Heap.heap)
(HasType @x2
FStar.Monotonic.Heap.heap))
(Valid (Prims.subtype_of (FStar.Monotonic.Heap.modifies_t @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.Heap.modifies_t @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_FStar.Monotonic.Heap.modifies_t))

:named defn_equation_FStar.Monotonic.Heap.modifies_t))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.modifies
;;; Fact-ids: Name FStar.Monotonic.Heap.modifies; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(96,4-96,12); use=FStar.Monotonic.Heap.fsti(96,4-96,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Monotonic.Heap.modifies @x0
@x1
@x2)
(FStar.Monotonic.Heap.modifies_t (FStar.TSet.tset_of_set Prims.nat
@x0)
@x1
@x2))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.Heap.modifies @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_FStar.Monotonic.Heap.modifies))

:named defn_equation_FStar.Monotonic.Heap.modifies))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.Heap.fresh
;;; Fact-ids: Name FStar.Monotonic.Heap.fresh; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(58,4-58,9); use=FStar.Monotonic.Heap.fsti(58,4-58,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.mref @x0
@x1))
(HasType @x3
FStar.Monotonic.Heap.heap)
(HasType @x4
FStar.Monotonic.Heap.heap))
(Valid (Prims.subtype_of (FStar.Monotonic.Heap.fresh @x0
@x1
@x2
@x3
@x4)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.Heap.fresh @x0
@x1
@x2
@x3
@x4)
Prims.unit))
:qid defn_equation_FStar.Monotonic.Heap.fresh))

:named defn_equation_FStar.Monotonic.Heap.fresh))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,4-105,11); use=Ariadne.fst(105,4-105,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Ariadne.ctr)
(HasTypeFuel @u0
@x2
(Ariadne.key @x1)))
(HasTypeFuel @u0
(Ariadne.Protect @x1
@x2)
Ariadne.protected))
 

:pattern ((HasTypeFuel @u0
(Ariadne.Protect @x1
@x2)
Ariadne.protected))
:qid data_typing_intro_Ariadne.Protect@tok))

:named data_typing_intro_Ariadne.Protect@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,4-105,11); use=Ariadne.fst(105,4-105,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Ariadne.Protect @x1
@x2)
Ariadne.protected)
(and (HasTypeFuel @u0
@x1
Ariadne.ctr)
(HasTypeFuel @u0
@x2
(Ariadne.key @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Ariadne.Protect @x1
@x2)
Ariadne.protected))
:qid data_elim_Ariadne.Protect))

:named data_elim_Ariadne.Protect))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! (= 295
(Term_constr_id Ariadne.protected))
:named constructor_distinct_Ariadne.protected))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,4-105,11); use=Ariadne.fst(105,4-105,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 301
(Term_constr_id (Ariadne.Protect @x0
@x1)))
 

:pattern ((Ariadne.Protect @x0
@x1))
:qid constructor_distinct_Ariadne.Protect))

:named constructor_distinct_Ariadne.Protect))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Ariadne.protected; Namespace Ariadne; Name Ariadne.Protect; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(104,10-104,19); use=Ariadne.fst(104,10-104,19)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Ariadne.protected)
(= Ariadne.protected
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Ariadne.protected))
:qid Ariadne_pretyping_e0703de7ba62305229aabc211b03e80f))

:named Ariadne_pretyping_e0703de7ba62305229aabc211b03e80f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,20-87,76); use=Ariadne.fst(87,20-87,76)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_83f5ce545164a1cf6d70d3b119e78082)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))
:qid Ariadne_pre_typing_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))

:named Ariadne_pre_typing_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082
;;; Fact-ids: Name Ariadne.saved_backup; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(87,20-87,76); use=Ariadne.fst(87,20-87,76)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_83f5ce545164a1cf6d70d3b119e78082)
(and 
;; def=Ariadne.fst(87,20-87,76); use=Ariadne.fst(87,20-87,76)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Ariadne.ctr)
(HasType @x2
Ariadne.record))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Ariadne_interpretation_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082.1))

(IsTotFun @x0)

;; def=Ariadne.fst(87,20-87,76); use=Ariadne.fst(87,20-87,76)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Ariadne.ctr)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Ariadne_interpretation_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))
:qid Ariadne_interpretation_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))

:named Ariadne_interpretation_Tm_arrow_83f5ce545164a1cf6d70d3b119e78082))
(push) ;; push{2

; Starting query at Ariadne.fst(110,14-115,13)

(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Ariadne.saved_backup@tok))
:named @kick_partial_app_ad896d0e8d82261179a8985e5cc87171))

(declare-fun Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(113,2-113,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846))

:named refinement_kinding_Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(113,2-113,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)

;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(113,2-113,9)
(Valid 
;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(113,2-113,9)
(ApplyTT (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x3))
@x4)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846))

:named refinement_interpretation_Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(113,2-113,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x0
@x1
@x2)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x0
@x1
@x2))))
:qid haseqTm_refine_f6050147f3dc0b2ae19e0d7cf45b8846))

:named haseqTm_refine_f6050147f3dc0b2ae19e0d7cf45b8846))

; Encoding query formula : forall (v: Ariadne.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.st_post_h FStar.Monotonic.Heap.heap Ariadne.protected)
;     (h: FStar.Monotonic.Heap.heap).
;     (forall (a: Ariadne.protected) (h1: FStar.Monotonic.Heap.heap).
;         (let Ariadne.Protect c _ = a in
;           FStar.Monotonic.Heap.sel h1 c == Ariadne.Counter 0 (Ariadne.Ok v)) ==>
;         p a h1) ==>
;     (forall (a: FStar.ST.mref Ariadne.counter Ariadne.preorder') (h1: FStar.Monotonic.Heap.heap).
;         FStar.Monotonic.Heap.fresh a h h1 /\ FStar.Monotonic.Heap.modifies FStar.Set.empty h h1 /\
;         FStar.Monotonic.Heap.sel h1 a == Ariadne.Counter 0 (Ariadne.Ok v) ==>
;         Prims.auto_squash (FStar.ST.stable (Ariadne.saved_backup a (0, v))) /\
;         (forall (return_val: p: (_: FStar.Monotonic.Heap.heap -> Type0){FStar.ST.stable p}).
;             return_val == Ariadne.saved_backup a (0, v) ==>
;             Ariadne.saved_backup a (0, v) h1 /\
;             (forall (a: Prims.unit)
;                 (h1: _: FStar.Monotonic.Heap.heap{Ariadne.saved_backup a (0, v) h1}).
;                 h1 == h1 /\ FStar.ST.witnessed (Ariadne.saved_backup a (0, v)) ==>
;                 Prims.auto_squash (FStar.ST.witnessed (Ariadne.saved_backup a (0, v))) /\
;                 (forall (any_result: Ariadne.index & Ariadne.state).
;                     (0, v) == any_result ==>
;                     (forall (any_result: Prims.list (Ariadne.backup a)).
;                         [0, v] == any_result ==>
;                         (forall (a:
;                             FStar.ST.mref (Prims.list (Ariadne.backup a)) (Ariadne.log_pre a))
;                             (h1: FStar.Monotonic.Heap.heap).
;                             FStar.Monotonic.Heap.fresh a h1 h1 /\
;                             FStar.Monotonic.Heap.modifies FStar.Set.empty h1 h1 /\
;                             FStar.Monotonic.Heap.sel h1 a == [0, v] ==>
;                             p (Ariadne.Protect a a) h1))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let create`

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
(Ariadne.state Dummy_value))

;; def=FStar.Pervasives.fsti(484,2-484,63); use=FStar.Pervasives.fsti(503,15-503,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.st_post_h FStar.Monotonic.Heap.heap
Ariadne.protected))
(HasType @x2
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(110,14-115,13)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (or label_1
(HasType @x3
Ariadne.protected))
(or label_2
(HasType @x4
FStar.Monotonic.Heap.heap))
(let ((@lb5 @x3))

;; def=Ariadne.fst(109,38-109,66); use=Ariadne.fst(110,14-115,13)
(or label_3

;; def=Ariadne.fst(109,38-109,66); use=Ariadne.fst(110,14-115,13)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
(Ariadne.Protect_c @lb5))
(Ariadne.Counter (BoxInt 0)
(Ariadne.Ok @x0)))
)
))

;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(110,14-115,13)
(Valid 
;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(110,14-115,13)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
 

:pattern (
;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(110,14-115,13)
(Valid 
;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(110,14-115,13)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
:qid @query.2))
)

;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(111,10-111,15)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(FStar.ST.mref Ariadne.counter
(Ariadne.preorder_ Dummy_value)))
(HasType @x4
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(89,22-89,35); use=Ariadne.fst(111,10-111,15)
(Valid 
;; def=FStar.ST.fst(89,22-89,35); use=Ariadne.fst(111,10-111,15)
(FStar.Monotonic.Heap.fresh Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x2
@x4)
)


;; def=FStar.ST.fst(89,39-89,63); use=Ariadne.fst(111,10-111,15)
(Valid 
;; def=FStar.ST.fst(89,39-89,63); use=Ariadne.fst(111,10-111,15)
(FStar.Monotonic.Heap.modifies (FStar.Set.empty Prims.nat)
@x2
@x4)
)


;; def=FStar.ST.fst(89,67-89,83); use=Ariadne.fst(111,10-111,15)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
@x3)
(Ariadne.Counter (BoxInt 0)
(Ariadne.Ok @x0)))
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(110,14-115,13)
(and 
;; def=FStar.MRef.fsti(47,30-47,41); use=Ariadne.fst(113,10-113,28)
(or label_4

;; def=FStar.MRef.fsti(47,30-47,41); use=Ariadne.fst(113,10-113,28)
(Valid 
;; def=FStar.MRef.fsti(47,30-47,41); use=Ariadne.fst(113,10-113,28)
(FStar.ST.stable (Ariadne.saved_backup @x3
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)))
)
)


;; def=Prims.fst(356,2-356,58); use=Ariadne.fst(110,14-115,13)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0)

;; def=Prims.fst(356,26-356,41); use=Ariadne.fst(110,14-115,13)
(= @x5
(Ariadne.saved_backup @x3
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)))
)

;; def=FStar.ST.fst(76,41-76,87); use=Ariadne.fst(113,2-113,9)
(and 
;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(113,2-113,9)
(or label_5

;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(113,2-113,9)
(Valid 
;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(113,2-113,9)
(ApplyTT (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x3)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0))
@x4)
)
)


;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(113,2-113,9)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
Prims.unit)
(HasType @x7
(Tm_refine_f6050147f3dc0b2ae19e0d7cf45b8846 @x3
@x0
@x4))

;; def=FStar.MRef.fsti(50,29-50,35); use=Ariadne.fst(113,2-113,9)
(= @x4
@x7)


;; def=FStar.MRef.fsti(50,39-50,50); use=Ariadne.fst(113,2-113,9)
(Valid 
;; def=FStar.MRef.fsti(50,39-50,50); use=Ariadne.fst(113,2-113,9)
(FStar.ST.witnessed (Ariadne.saved_backup @x3
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)))
)
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(110,14-115,13)
(and 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(114,17-114,18)
(or label_6

;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(114,17-114,18)
(Valid 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(114,17-114,18)
(FStar.ST.witnessed (Ariadne.saved_backup @x3
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)))
)
)


;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(110,14-115,13)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(FStar.Pervasives.Native.tuple2 Ariadne.index
(Ariadne.state Dummy_value)))

;; def=Prims.fst(616,11-616,13); use=Ariadne.fst(110,14-115,13)
(= (FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)
@x8)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(110,14-115,13)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(Prims.list (Ariadne.backup @x3)))

;; def=FStar.ST.fst(86,39-86,43); use=Ariadne.fst(110,14-115,13)
(= (Prims.Cons (Ariadne.backup @x3)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)
(Prims.Nil (Ariadne.backup @x3)))
@x9)
)

;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(114,10-114,15)
(forall ((@x10 Term) (@x11 Term))
 (! (implies (and (HasType @x10
(FStar.ST.mref (Prims.list (Ariadne.backup @x3))
(Ariadne.log_pre @x3)))
(HasType @x11
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(89,22-89,35); use=Ariadne.fst(114,10-114,15)
(Valid 
;; def=FStar.ST.fst(89,22-89,35); use=Ariadne.fst(114,10-114,15)
(FStar.Monotonic.Heap.fresh (Prims.list (Ariadne.backup @x3))
(Ariadne.log_pre @x3)
@x10
@x7
@x11)
)


;; def=FStar.ST.fst(89,39-89,63); use=Ariadne.fst(114,10-114,15)
(Valid 
;; def=FStar.ST.fst(89,39-89,63); use=Ariadne.fst(114,10-114,15)
(FStar.Monotonic.Heap.modifies (FStar.Set.empty Prims.nat)
@x7
@x11)
)


;; def=FStar.ST.fst(89,67-89,83); use=Ariadne.fst(114,10-114,15)
(= (FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x3))
(Ariadne.log_pre @x3)
@x11
@x10)
(Prims.Cons (Ariadne.backup @x3)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(BoxInt 0)
@x0)
(Prims.Nil (Ariadne.backup @x3))))
)

;; def=FStar.Pervasives.fsti(463,24-463,34); use=Ariadne.fst(110,14-115,13)
(Valid 
;; def=FStar.Pervasives.fsti(463,24-463,34); use=Ariadne.fst(110,14-115,13)
(ApplyTT (ApplyTT @x1
(Ariadne.Protect @x3
@x10))
@x11)
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
; QUERY ID: (Ariadne.create, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Ariadne_pretyping_aa7fb1e4d4d9e1f5c4d43327f007a8ad, b2t_def, constructor_distinct_Ariadne.Ok, data_typing_intro_Ariadne.Protect@tok, data_typing_intro_FStar.Pervasives.Native.Mktuple2@tok, equation_Ariadne.ctr, equation_Ariadne.index, equation_Ariadne.key, equation_Ariadne.log, equation_Ariadne.preorder_, equation_Ariadne.record, equation_Ariadne.saved, equation_Ariadne.saved_backup, equation_Ariadne.state, equation_FStar.Monotonic.Heap.fresh, equation_FStar.Monotonic.Heap.modifies, equation_FStar.Monotonic.Heap.modifies_t, equation_FStar.ST.mref, equation_Prims.eqtype, equation_Prims.nat, equation_Prims.pos, function_token_typing_Ariadne.saved_backup, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, int_typing, interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f, kinding_Ariadne.counter@tok, l_and-interp, l_or-interp, lemma_FStar.Set.mem_empty, lemma_FStar.TSet.lemma_mem_tset_of_set, primitive_Prims.op_Equality, projection_inverse_Ariadne.Counter_c, projection_inverse_Ariadne.Counter_n, projection_inverse_Ariadne.Ok_saved, projection_inverse_Ariadne.Protect_c, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_774ba3f728d91ead8ef40be66c9802e5, refinement_interpretation_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0, refinement_interpretation_Tm_refine_e33ef751d600ad1c7f71142479103c47, refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_Ariadne.preorder_, typing_Ariadne.saved_backup, typing_FStar.Monotonic.Heap.addr_of, typing_FStar.Monotonic.Heap.sel, typing_FStar.Set.empty, typing_Prims.int, typing_Prims.string

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let create


; <Start encoding let create>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Ariadne.create (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Ariadne.create@tok () Term)

; </end encoding let create>

(push) ;; push{2

; Starting query at Ariadne.fst(122,2-126,29)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (c: Ariadne.case) (w: Ariadne.state).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post Prims.logical).
;     (forall (x: Prims.logical). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(Ok? c) /\ ~(Recover? c) /\ ~(Writing? c) /\ ~(Crash? c) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let pre0`

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
Ariadne.case)
(HasType @x1
(Ariadne.state Dummy_value)))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Prims.logical))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(122,2-126,29)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(122,2-126,29)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(122,2-126,29)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))


;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(not 
;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x0))
)


;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(not 
;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x0))
)


;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(not 
;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x0))
)


;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(not 
;; def=Ariadne.fst(121,9-121,10); use=Ariadne.fst(122,8-122,9)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x0))
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
; QUERY ID: (Ariadne.pre0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_Ariadne.Crash, disc_equation_Ariadne.Ok, disc_equation_Ariadne.Recover, disc_equation_Ariadne.Writing, fuel_guarded_inversion_Ariadne.case, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let pre0


; <Start encoding let pre0>

(declare-fun Ariadne.pre0 (Term Term) Term)
;;;;;;;;;;;;;;;;c: case -> w: state -> Prims.logical
(declare-fun Tm_arrow_950165276b06a4f7fec6b95bd4e21257 () Term)
(declare-fun Ariadne.pre0@tok () Term)

; </end encoding let pre0>

(push) ;; push{2

; Starting query at Ariadne.fst(128,2-132,53)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (c: Ariadne.case) (w: Ariadne.state).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post Ariadne.case).
;     (forall (x: Ariadne.case). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(Ok? c) /\ ~(Recover? c) /\ ~(Writing? c) /\ ~(Crash? c) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let step0`

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
Ariadne.case)
(HasType @x1
(Ariadne.state Dummy_value)))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Ariadne.case))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(128,2-132,53)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(128,2-132,53)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(128,2-132,53)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))


;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(not 
;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x0))
)


;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(not 
;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x0))
)


;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(not 
;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x0))
)


;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(not 
;; def=Ariadne.fst(127,10-127,11); use=Ariadne.fst(128,8-128,9)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x0))
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
; QUERY ID: (Ariadne.step0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_Ariadne.Crash, disc_equation_Ariadne.Ok, disc_equation_Ariadne.Recover, disc_equation_Ariadne.Writing, fuel_guarded_inversion_Ariadne.case, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let step0


; <Start encoding let step0>

(declare-fun Ariadne.step0 (Term Term) Term)
;;;;;;;;;;;;;;;;c: case -> w: state -> case
(declare-fun Tm_arrow_4d5ef40cf1509d092b5a17e8f2c7c27e () Term)
(declare-fun Ariadne.step0@tok () Term)

; </end encoding let step0>


; encoding sigelt val Ariadne.save


; <Skipped val Ariadne.save/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.exn; Namespace Prims
(assert (! (HasType Prims.exn
Tm_type)
:named typing_Prims.exn))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Set.singleton; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(37,4-37,13); use=FStar.Set.fsti(37,4-37,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0))
(HasType (FStar.Set.singleton @x0
@x1)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Set.singleton @x0
@x1))
:qid typing_FStar.Set.singleton))

:named typing_FStar.Set.singleton))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.all_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(623,4-623,15); use=FStar.Pervasives.fsti(623,4-623,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
Tm_type))
(HasType (FStar.Pervasives.all_post_h_ @x0
@x1
@x2)
Tm_type))
 

:pattern ((FStar.Pervasives.all_post_h_ @x0
@x1
@x2))
:qid typing_FStar.Pervasives.all_post_h_))

:named typing_FStar.Pervasives.all_post_h_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.all_post_h; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(626,4-626,14); use=FStar.Pervasives.fsti(626,4-626,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (FStar.Pervasives.all_post_h @x0
@x1)
Tm_type))
 

:pattern ((FStar.Pervasives.all_post_h @x0
@x1))
:qid typing_FStar.Pervasives.all_post_h))

:named typing_FStar.Pervasives.all_post_h))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.equal_dom; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(98,4-98,13); use=FStar.Monotonic.Heap.fsti(98,4-98,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.Heap.heap)
(HasType @x1
FStar.Monotonic.Heap.heap))
(HasType (FStar.Monotonic.Heap.equal_dom @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.Heap.equal_dom @x0
@x1))
:qid typing_FStar.Monotonic.Heap.equal_dom))

:named typing_FStar.Monotonic.Heap.equal_dom))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.All.uu___is_Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.exn)
(HasType (FStar.All.uu___is_Failure @x0)
Prims.bool))
 

:pattern ((FStar.All.uu___is_Failure @x0))
:qid typing_FStar.All.uu___is_Failure))

:named typing_FStar.All.uu___is_Failure))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.step0; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(127,4-127,9); use=Ariadne.fst(127,4-127,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Ariadne.case)
(HasType @x1
(Ariadne.state Dummy_value)))
(HasType (Ariadne.step0 @x0
@x1)
Ariadne.case))
 

:pattern ((Ariadne.step0 @x0
@x1))
:qid typing_Ariadne.step0))

:named typing_Ariadne.step0))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.pre0; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(121,4-121,8); use=Ariadne.fst(121,4-121,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Ariadne.case)
(HasType @x1
(Ariadne.state Dummy_value)))
(HasType (Ariadne.pre0 @x0
@x1)
Prims.logical))
 

:pattern ((Ariadne.pre0 @x0
@x1))
:qid typing_Ariadne.pre0))

:named typing_Ariadne.pre0))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(519,5-519,11); use=FStar.Pervasives.fsti(519,5-519,11)
(forall ((@x0 Term))
 (! (= (ApplyTT FStar.Pervasives.result@tok
@x0)
(FStar.Pervasives.result @x0))
 

:pattern ((ApplyTT FStar.Pervasives.result@tok
@x0))

:pattern ((FStar.Pervasives.result @x0))
:qid token_correspondence_FStar.Pervasives.result@tok))

:named token_correspondence_FStar.Pervasives.result@tok))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(96,4-96,11); use=Ariadne.fst(96,4-96,11)
(forall ((@x0 Term))
 (! (= (ApplyTT Ariadne.log_pre@tok
@x0)
(Ariadne.log_pre @x0))
 

:pattern ((ApplyTT Ariadne.log_pre@tok
@x0))
:qid token_correspondence_Ariadne.log_pre))

:named token_correspondence_Ariadne.log_pre))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.V @x1
@x2)
(FStar.Pervasives.result @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(FStar.Pervasives.V @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.V @x1
@x2)
(FStar.Pervasives.result @x3)))
:qid subterm_ordering_FStar.Pervasives.V))

:named subterm_ordering_FStar.Pervasives.V))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Err @x1
@x2)
(FStar.Pervasives.result @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(FStar.Pervasives.Err @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Err @x1
@x2)
(FStar.Pervasives.result @x3)))
:qid subterm_ordering_FStar.Pervasives.Err))

:named subterm_ordering_FStar.Pervasives.Err))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(521,4-521,5); use=FStar.Pervasives.fsti(521,4-521,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.E @x1
@x2)
(FStar.Pervasives.result @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(FStar.Pervasives.E @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.E @x1
@x2)
(FStar.Pervasives.result @x3)))
:qid subterm_ordering_FStar.Pervasives.E))

:named subterm_ordering_FStar.Pervasives.E))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name FStar.All.Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.All.Failure @x1)
Prims.exn)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(FStar.All.Failure @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.All.Failure @x1)
Prims.exn))
:qid subterm_ordering_FStar.All.Failure))

:named subterm_ordering_FStar.All.Failure))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.All.__proj__Failure__item__uu___; Namespace FStar.All
(assert (! (HasType Tm_refine_149c6719f34c408becdf9120a4ae2d59
Tm_type)
:named refinement_kinding_Tm_refine_149c6719f34c408becdf9120a4ae2d59))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.All.__proj__Failure__item__uu___; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_149c6719f34c408becdf9120a4ae2d59)
(and (HasTypeFuel @u0
@x1
Prims.exn)

;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(BoxBool_proj_0 (FStar.All.uu___is_Failure @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_149c6719f34c408becdf9120a4ae2d59))
:qid refinement_interpretation_Tm_refine_149c6719f34c408becdf9120a4ae2d59))

:named refinement_interpretation_Tm_refine_149c6719f34c408becdf9120a4ae2d59))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.V_v (FStar.Pervasives.V @x0
@x1))
@x1)
 

:pattern ((FStar.Pervasives.V @x0
@x1))
:qid projection_inverse_FStar.Pervasives.V_v))

:named projection_inverse_FStar.Pervasives.V_v))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.V_a (FStar.Pervasives.V @x0
@x1))
@x0)
 

:pattern ((FStar.Pervasives.V @x0
@x1))
:qid projection_inverse_FStar.Pervasives.V_a))

:named projection_inverse_FStar.Pervasives.V_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Err_msg (FStar.Pervasives.Err @x0
@x1))
@x1)
 

:pattern ((FStar.Pervasives.Err @x0
@x1))
:qid projection_inverse_FStar.Pervasives.Err_msg))

:named projection_inverse_FStar.Pervasives.Err_msg))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.Err_a (FStar.Pervasives.Err @x0
@x1))
@x0)
 

:pattern ((FStar.Pervasives.Err @x0
@x1))
:qid projection_inverse_FStar.Pervasives.Err_a))

:named projection_inverse_FStar.Pervasives.Err_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(521,4-521,5); use=FStar.Pervasives.fsti(521,4-521,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.E_e (FStar.Pervasives.E @x0
@x1))
@x1)
 

:pattern ((FStar.Pervasives.E @x0
@x1))
:qid projection_inverse_FStar.Pervasives.E_e))

:named projection_inverse_FStar.Pervasives.E_e))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(521,4-521,5); use=FStar.Pervasives.fsti(521,4-521,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.E_a (FStar.Pervasives.E @x0
@x1))
@x0)
 

:pattern ((FStar.Pervasives.E @x0
@x1))
:qid projection_inverse_FStar.Pervasives.E_a))

:named projection_inverse_FStar.Pervasives.E_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.All.Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@x0 Term))
 (! (= (FStar.All.Failure_uu___ (FStar.All.Failure @x0))
@x0)
 

:pattern ((FStar.All.Failure @x0))
:qid projection_inverse_FStar.All.Failure_uu___))

:named projection_inverse_FStar.All.Failure_uu___))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.result@tok))
:named pre_kinding_FStar.Pervasives.result@tok))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.mem_singleton
;;; Fact-ids: Name FStar.Set.mem_singleton; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
@x0))

;; def=FStar.Set.fsti(67,12-67,41); use=FStar.Set.fsti(67,12-67,41)
(= (FStar.Set.mem @x0
@x2
(FStar.Set.singleton @x0
@x1))
(Prims.op_Equality @x0
@x1
@x2))
)
 

:pattern ((FStar.Set.mem @x0
@x2
(FStar.Set.singleton @x0
@x1)))
:qid lemma_FStar.Set.mem_singleton))
:named lemma_FStar.Set.mem_singleton))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.Heap.set Prims.nat))
(HasType @x3
FStar.Monotonic.Heap.heap)
(HasType @x4
FStar.Monotonic.Heap.heap)
(HasType @x5
(FStar.Monotonic.Heap.mref @x0
@x1))

;; def=FStar.Monotonic.Heap.fsti(268,20-268,36); use=FStar.Monotonic.Heap.fsti(268,20-268,36)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(268,20-268,36); use=FStar.Monotonic.Heap.fsti(268,20-268,36)
(FStar.Monotonic.Heap.modifies @x2
@x3
@x4)
)


;; def=FStar.Monotonic.Heap.fsti(268,40-268,55); use=FStar.Monotonic.Heap.fsti(268,40-268,55)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(268,40-268,55); use=FStar.Monotonic.Heap.fsti(268,40-268,55)
(FStar.Monotonic.Heap.equal_dom @x3
@x4)
)


;; def=FStar.Monotonic.Heap.fsti(268,59-268,84); use=FStar.Monotonic.Heap.fsti(268,59-268,84)
(not 
;; def=FStar.Monotonic.Heap.fsti(268,62-268,83); use=FStar.Monotonic.Heap.fsti(268,62-268,83)
(BoxBool_proj_0 (FStar.Set.mem Prims.nat
(FStar.Monotonic.Heap.addr_of @x0
@x1
@x5)
@x2))
)
)

;; def=FStar.Monotonic.Heap.fsti(269,19-269,41); use=FStar.Monotonic.Heap.fsti(269,19-269,41)
(= (FStar.Monotonic.Heap.sel @x0
@x1
@x3
@x5)
(FStar.Monotonic.Heap.sel @x0
@x1
@x4
@x5))
)
 

:pattern ((FStar.Monotonic.Heap.modifies @x2
@x3
@x4) (FStar.Monotonic.Heap.equal_dom @x3
@x4) (FStar.Monotonic.Heap.sel @x0
@x1
@x4
@x5))
:qid lemma_FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr))
:named lemma_FStar.Monotonic.Heap.lemma_modifies_and_equal_dom_sel_diff_addr))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269
;;; Fact-ids: Name FStar.Pervasives.all_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(623,34-623,69); use=FStar.Pervasives.fsti(623,34-623,69)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269))

:named kinding_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! (HasType Tm_arrow_cff43cc708f428f4d53c91d53cf7585b
Tm_type)
:named kinding_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! (and (IsTotFun FStar.Pervasives.result@tok)

;; def=FStar.Pervasives.fsti(519,5-519,11); use=FStar.Pervasives.fsti(519,5-519,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Pervasives.result @x0)
Tm_type))
 

:pattern ((FStar.Pervasives.result @x0))
:qid kinding_FStar.Pervasives.result@tok))
)
:named kinding_FStar.Pervasives.result@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_149c6719f34c408becdf9120a4ae2d59
;;; Fact-ids: Name FStar.All.__proj__Failure__item__uu___; Namespace FStar.All
(assert (! (iff (Valid (Prims.hasEq Tm_refine_149c6719f34c408becdf9120a4ae2d59))
(Valid (Prims.hasEq Prims.exn)))
:named haseqTm_refine_149c6719f34c408becdf9120a4ae2d59))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.exn; Namespace Prims
(assert (! (HasType Prims.exn
Tm_type)
:named function_token_typing_Prims.exn))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(96,4-96,11); use=Ariadne.fst(96,4-96,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Ariadne.log_pre@tok
Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))

;; def=Ariadne.fst(96,4-96,11); use=Ariadne.fst(96,4-96,11)
(forall ((@x1 Term))
 (! (= (ApplyTT Ariadne.log_pre@tok
@x1)
(Ariadne.log_pre @x1))
 

:pattern ((Ariadne.log_pre @x1))
:qid function_token_typing_Ariadne.log_pre.1))
)
 

:pattern ((ApplyTT @x0
Ariadne.log_pre@tok))
:qid function_token_typing_Ariadne.log_pre))

:named function_token_typing_Ariadne.log_pre))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(519,5-519,11); use=FStar.Pervasives.fsti(519,5-519,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(FStar.Pervasives.result @x2))
(or (and (is-FStar.Pervasives.V @x1)
(= @x2
(FStar.Pervasives.V_a @x1)))
(and (is-FStar.Pervasives.E @x1)
(= @x2
(FStar.Pervasives.E_a @x1)))
(and (is-FStar.Pervasives.Err @x1)
(= @x2
(FStar.Pervasives.Err_a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(FStar.Pervasives.result @x2)))
:qid fuel_guarded_inversion_FStar.Pervasives.result))

:named fuel_guarded_inversion_FStar.Pervasives.result))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! (= 264
(Term_constr_id FStar.Pervasives.result@tok))
:named fresh_token_FStar.Pervasives.result@tok))
;;;;;;;;;;;;;;;;Equation for FStar.Pervasives.all_post_h'
;;; Fact-ids: Name FStar.Pervasives.all_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(623,4-623,15); use=FStar.Pervasives.fsti(623,4-623,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Pervasives.all_post_h_ @x0
@x1
@x2)
(Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x2
@x0
@x1))
 

:pattern ((FStar.Pervasives.all_post_h_ @x0
@x1
@x2))
:qid equation_FStar.Pervasives.all_post_h_))

:named equation_FStar.Pervasives.all_post_h_))
;;;;;;;;;;;;;;;;Equation for FStar.Pervasives.all_post_h
;;; Fact-ids: Name FStar.Pervasives.all_post_h; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(626,4-626,14); use=FStar.Pervasives.fsti(626,4-626,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.all_post_h @x0
@x1)
(FStar.Pervasives.all_post_h_ @x0
@x1
Prims.l_True))
 

:pattern ((FStar.Pervasives.all_post_h @x0
@x1))
:qid equation_FStar.Pervasives.all_post_h))

:named equation_FStar.Pervasives.all_post_h))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.Heap.equal_dom
;;; Fact-ids: Name FStar.Monotonic.Heap.equal_dom; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(98,4-98,13); use=FStar.Monotonic.Heap.fsti(98,4-98,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Monotonic.Heap.equal_dom @x0
@x1))

;; def=FStar.Monotonic.Heap.fsti(99,2-104,44); use=FStar.Monotonic.Heap.fsti(99,2-104,44)
(and 
;; def=FStar.Monotonic.Heap.fsti(99,2-101,42); use=FStar.Monotonic.Heap.fsti(99,2-101,42)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
(FStar.Preorder.preorder @x2))
(HasType @x4
(FStar.Monotonic.Heap.mref @x2
@x3)))

;; def=FStar.Monotonic.Heap.fsti(101,5-101,41); use=FStar.Monotonic.Heap.fsti(101,5-101,41)
(iff 
;; def=FStar.Monotonic.Heap.fsti(101,5-101,20); use=FStar.Monotonic.Heap.fsti(101,5-101,20)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(101,5-101,20); use=FStar.Monotonic.Heap.fsti(101,5-101,20)
(FStar.Monotonic.Heap.contains @x2
@x3
@x0
@x4)
)


;; def=FStar.Monotonic.Heap.fsti(101,26-101,41); use=FStar.Monotonic.Heap.fsti(101,26-101,41)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(101,26-101,41); use=FStar.Monotonic.Heap.fsti(101,26-101,41)
(FStar.Monotonic.Heap.contains @x2
@x3
@x1
@x4)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x2
@x3
@x0
@x4))

:pattern ((FStar.Monotonic.Heap.contains @x2
@x3
@x1
@x4))
:qid equation_FStar.Monotonic.Heap.equal_dom.1))


;; def=FStar.Monotonic.Heap.fsti(102,2-104,44); use=FStar.Monotonic.Heap.fsti(102,2-104,44)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
(FStar.Preorder.preorder @x2))
(HasType @x4
(FStar.Monotonic.Heap.mref @x2
@x3)))

;; def=FStar.Monotonic.Heap.fsti(104,5-104,43); use=FStar.Monotonic.Heap.fsti(104,5-104,43)
(iff 
;; def=FStar.Monotonic.Heap.fsti(104,5-104,21); use=FStar.Monotonic.Heap.fsti(104,5-104,21)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(104,5-104,21); use=FStar.Monotonic.Heap.fsti(104,5-104,21)
(FStar.Monotonic.Heap.unused_in @x2
@x3
@x4
@x0)
)


;; def=FStar.Monotonic.Heap.fsti(104,27-104,43); use=FStar.Monotonic.Heap.fsti(104,27-104,43)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(104,27-104,43); use=FStar.Monotonic.Heap.fsti(104,27-104,43)
(FStar.Monotonic.Heap.unused_in @x2
@x3
@x4
@x1)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.unused_in @x2
@x3
@x4
@x0))

:pattern ((FStar.Monotonic.Heap.unused_in @x2
@x3
@x4
@x1))
:qid equation_FStar.Monotonic.Heap.equal_dom.2))
)
)
 

:pattern ((FStar.Monotonic.Heap.equal_dom @x0
@x1))
:qid equation_FStar.Monotonic.Heap.equal_dom))

:named equation_FStar.Monotonic.Heap.equal_dom))
;;;;;;;;;;;;;;;;Equation for Ariadne.step0
;;; Fact-ids: Name Ariadne.step0; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(127,4-127,9); use=Ariadne.fst(127,4-127,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.step0 @x0
@x1)
(let ((@lb2 @x0))
(ite (is-Ariadne.Ok @lb2)
(Ariadne.Writing @x1
(Ariadne.Ok_saved @lb2))
(ite (is-Ariadne.Recover @lb2)
(let ((@lb3 (Prims.op_Equality (Ariadne.state Dummy_value)
@x1
(Ariadne.Recover_read @lb2))))
(ite (= @lb3
(BoxBool true))
(Ariadne.Writing (Ariadne.Recover_read @lb2)
(Ariadne.Recover_other @lb2))
(Ariadne.Crash @x1
(Ariadne.Recover_read @lb2))))
(ite (is-Ariadne.Writing @lb2)
(let ((@lb3 (Prims.op_Equality (Ariadne.state Dummy_value)
@x1
(Ariadne.Writing_written @lb2))))
(ite (= @lb3
(BoxBool true))
(Ariadne.Crash @x1
(Ariadne.Writing_old @lb2))
(Ariadne.Crash @x1
(Ariadne.Writing_written @lb2))))
(ite (is-Ariadne.Crash @lb2)
(let ((@lb3 (Prims.op_Equality (Ariadne.state Dummy_value)
@x1
(Ariadne.Crash_read @lb2))))
(ite (= @lb3
(BoxBool true))
(Ariadne.Crash @x1
(Ariadne.Crash_other @lb2))
(Ariadne.Crash @x1
(Ariadne.Crash_read @lb2))))
Tm_unit))))))
 

:pattern ((Ariadne.step0 @x0
@x1))
:qid equation_Ariadne.step0))

:named equation_Ariadne.step0))
;;;;;;;;;;;;;;;;Equation for Ariadne.pre0
;;; Fact-ids: Name Ariadne.pre0; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(121,4-121,8); use=Ariadne.fst(121,4-121,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (Ariadne.pre0 @x0
@x1))
(let ((@lb2 @x0))
(implies (not (is-Ariadne.Ok @lb2))
(ite (is-Ariadne.Recover @lb2)

;; def=Ariadne.fst(126,17-126,29); use=Ariadne.fst(126,17-126,29)
(or 
;; def=Ariadne.fst(126,17-126,21); use=Ariadne.fst(126,17-126,21)
(= @x1
(Ariadne.Recover_read @lb2))


;; def=Ariadne.fst(126,25-126,29); use=Ariadne.fst(126,25-126,29)
(= @x1
(Ariadne.Recover_other @lb2))
)

(ite (is-Ariadne.Writing @lb2)

;; def=Ariadne.fst(126,17-126,29); use=Ariadne.fst(126,17-126,29)
(or 
;; def=Ariadne.fst(126,17-126,21); use=Ariadne.fst(126,17-126,21)
(= @x1
(Ariadne.Writing_written @lb2))


;; def=Ariadne.fst(126,25-126,29); use=Ariadne.fst(126,25-126,29)
(= @x1
(Ariadne.Writing_old @lb2))
)

(ite (is-Ariadne.Crash @lb2)

;; def=Ariadne.fst(126,17-126,29); use=Ariadne.fst(126,17-126,29)
(or 
;; def=Ariadne.fst(126,17-126,21); use=Ariadne.fst(126,17-126,21)
(= @x1
(Ariadne.Crash_read @lb2))


;; def=Ariadne.fst(126,25-126,29); use=Ariadne.fst(126,25-126,29)
(= @x1
(Ariadne.Crash_other @lb2))
)

Unreachable))))))
 

:pattern ((Ariadne.pre0 @x0
@x1))
:qid equation_Ariadne.pre0))

:named equation_Ariadne.pre0))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name FStar.All.uu___is_Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@x0 Term))
 (! (= (FStar.All.uu___is_Failure @x0)
(BoxBool (is-FStar.All.Failure @x0)))
 

:pattern ((FStar.All.uu___is_Failure @x0))
:qid disc_equation_FStar.All.Failure))

:named disc_equation_FStar.All.Failure))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.Heap.equal_dom
;;; Fact-ids: Name FStar.Monotonic.Heap.equal_dom; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(98,4-98,13); use=FStar.Monotonic.Heap.fsti(98,4-98,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.Heap.heap)
(HasType @x1
FStar.Monotonic.Heap.heap))
(Valid (Prims.subtype_of (FStar.Monotonic.Heap.equal_dom @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.Heap.equal_dom @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Monotonic.Heap.equal_dom))

:named defn_equation_FStar.Monotonic.Heap.equal_dom))
;;;;;;;;;;;;;;;;Equation for Ariadne.pre0
;;; Fact-ids: Name Ariadne.pre0; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(121,4-121,8); use=Ariadne.fst(121,4-121,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Ariadne.pre0 @x0
@x1)
(let ((@lb2 @x0))
(ite (is-Ariadne.Ok @lb2)
Prims.l_True
(ite (is-Ariadne.Recover @lb2)
(Prims.l_or (Prims.eq2 (Ariadne.state Dummy_value)
@x1
(Ariadne.Recover_read @lb2))
(Prims.eq2 (Ariadne.state Dummy_value)
@x1
(Ariadne.Recover_other @lb2)))
(ite (is-Ariadne.Writing @lb2)
(Prims.l_or (Prims.eq2 (Ariadne.state Dummy_value)
@x1
(Ariadne.Writing_written @lb2))
(Prims.eq2 (Ariadne.state Dummy_value)
@x1
(Ariadne.Writing_old @lb2)))
(ite (is-Ariadne.Crash @lb2)
(Prims.l_or (Prims.eq2 (Ariadne.state Dummy_value)
@x1
(Ariadne.Crash_read @lb2))
(Prims.eq2 (Ariadne.state Dummy_value)
@x1
(Ariadne.Crash_other @lb2)))
Tm_unit))))))
 

:pattern ((Prims.subtype_of (Ariadne.pre0 @x0
@x1)
Prims.unit))
:qid defn_equation_Ariadne.pre0))

:named defn_equation_Ariadne.pre0))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1))
(HasTypeFuel @u0
(FStar.Pervasives.V @x1
@x2)
(FStar.Pervasives.result @x1)))
 

:pattern ((HasTypeFuel @u0
(FStar.Pervasives.V @x1
@x2)
(FStar.Pervasives.result @x1)))
:qid data_typing_intro_FStar.Pervasives.V@tok))

:named data_typing_intro_FStar.Pervasives.V@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Prims.string))
(HasTypeFuel @u0
(FStar.Pervasives.Err @x1
@x2)
(FStar.Pervasives.result @x1)))
 

:pattern ((HasTypeFuel @u0
(FStar.Pervasives.Err @x1
@x2)
(FStar.Pervasives.result @x1)))
:qid data_typing_intro_FStar.Pervasives.Err@tok))

:named data_typing_intro_FStar.Pervasives.Err@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(521,4-521,5); use=FStar.Pervasives.fsti(521,4-521,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Prims.exn))
(HasTypeFuel @u0
(FStar.Pervasives.E @x1
@x2)
(FStar.Pervasives.result @x1)))
 

:pattern ((HasTypeFuel @u0
(FStar.Pervasives.E @x1
@x2)
(FStar.Pervasives.result @x1)))
:qid data_typing_intro_FStar.Pervasives.E@tok))

:named data_typing_intro_FStar.Pervasives.E@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name FStar.All.Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.string)
(HasTypeFuel @u0
(FStar.All.Failure @x1)
Prims.exn))
 

:pattern ((HasTypeFuel @u0
(FStar.All.Failure @x1)
Prims.exn))
:qid data_typing_intro_FStar.All.Failure@tok))

:named data_typing_intro_FStar.All.Failure@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.V @x1
@x2)
(FStar.Pervasives.result @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
@x3)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.V @x1
@x2)
(FStar.Pervasives.result @x3)))
:qid data_elim_FStar.Pervasives.V))

:named data_elim_FStar.Pervasives.V))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Err @x1
@x2)
(FStar.Pervasives.result @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
Prims.string)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.Err @x1
@x2)
(FStar.Pervasives.result @x3)))
:qid data_elim_FStar.Pervasives.Err))

:named data_elim_FStar.Pervasives.Err))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(521,4-521,5); use=FStar.Pervasives.fsti(521,4-521,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Pervasives.E @x1
@x2)
(FStar.Pervasives.result @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
Prims.exn)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Pervasives.E @x1
@x2)
(FStar.Pervasives.result @x3)))
:qid data_elim_FStar.Pervasives.E))

:named data_elim_FStar.Pervasives.E))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name FStar.All.Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.All.Failure @x1)
Prims.exn)
(HasTypeFuel @u0
@x1
Prims.string))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.All.Failure @x1)
Prims.exn))
:qid data_elim_FStar.All.Failure))

:named data_elim_FStar.All.Failure))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.exn; Namespace Prims
(assert (! (= 308
(Term_constr_id Prims.exn))
:named constructor_distinct_Prims.exn))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(519,5-519,11); use=FStar.Pervasives.fsti(519,5-519,11)
(forall ((@x0 Term))
 (! (= 263
(Term_constr_id (FStar.Pervasives.result @x0)))
 

:pattern ((FStar.Pervasives.result @x0))
:qid constructor_distinct_FStar.Pervasives.result))

:named constructor_distinct_FStar.Pervasives.result))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 270
(Term_constr_id (FStar.Pervasives.V @x0
@x1)))
 

:pattern ((FStar.Pervasives.V @x0
@x1))
:qid constructor_distinct_FStar.Pervasives.V))

:named constructor_distinct_FStar.Pervasives.V))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= 280
(Term_constr_id (FStar.Pervasives.Err @x0
@x1)))
 

:pattern ((FStar.Pervasives.Err @x0
@x1))
:qid constructor_distinct_FStar.Pervasives.Err))

:named constructor_distinct_FStar.Pervasives.Err))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(521,4-521,5); use=FStar.Pervasives.fsti(521,4-521,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= 275
(Term_constr_id (FStar.Pervasives.E @x0
@x1)))
 

:pattern ((FStar.Pervasives.E @x0
@x1))
:qid constructor_distinct_FStar.Pervasives.E))

:named constructor_distinct_FStar.Pervasives.E))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.All.Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@x0 Term))
 (! (= 119
(Term_constr_id (FStar.All.Failure @x0)))
 

:pattern ((FStar.All.Failure @x0))
:qid constructor_distinct_FStar.All.Failure))

:named constructor_distinct_FStar.All.Failure))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name FStar.All.Failure; Namespace FStar.All
(assert (! 
;; def=FStar.All.fsti(42,10-42,17); use=FStar.All.fsti(42,10-42,17)
(forall ((@x0 Term))
 (! (implies (is-FStar.All.Failure (FStar.All.Failure @x0))
(= (FStar.All.Failure @x0)
(FStar.All.Failure@base @x0)))
 

:pattern ((FStar.All.Failure @x0))
:qid constructor_base_FStar.All.Failure))

:named constructor_base_FStar.All.Failure))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Prims.exn; Namespace Prims
(assert (! 
;; def=Prims.fst(598,5-598,8); use=Prims.fst(598,5-598,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Prims.exn)
(= Prims.exn
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Prims.exn))
:qid Prims_pretyping_2feddfe489e78a01f5d2e9b55172b46a))

:named Prims_pretyping_2feddfe489e78a01f5d2e9b55172b46a))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Pervasives.result; Namespace FStar.Pervasives; Name FStar.Pervasives.V; Namespace FStar.Pervasives; Name FStar.Pervasives.E; Namespace FStar.Pervasives; Name FStar.Pervasives.Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(519,5-519,11); use=FStar.Pervasives.fsti(519,5-519,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Pervasives.result @x2))
(= (FStar.Pervasives.result @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Pervasives.result @x2)))
:qid FStar.Pervasives_pretyping_f012bfbe57874e314f153effb10f002f))

:named FStar.Pervasives_pretyping_f012bfbe57874e314f153effb10f002f))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Pervasives.all_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(623,34-623,69); use=FStar.Pervasives.fsti(623,34-623,69)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x2
@x3
@x4)))
:qid FStar.Pervasives_pre_typing_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269))

:named FStar.Pervasives_pre_typing_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269
;;; Fact-ids: Name FStar.Pervasives.all_post_h'; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(623,34-623,69); use=FStar.Pervasives.fsti(623,34-623,69)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x1
@x2
@x3))
(and 
;; def=FStar.Pervasives.fsti(623,34-623,69); use=FStar.Pervasives.fsti(623,34-623,69)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.result @x3))
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
:qid FStar.Pervasives_interpretation_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269.1))

(IsTotFun @x0)

;; def=FStar.Pervasives.fsti(623,34-623,69); use=FStar.Pervasives.fsti(623,34-623,69)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(FStar.Pervasives.result @x3))
(IsTotFun (ApplyTT @x0
@x4)))
 

:pattern ((ApplyTT @x0
@x4))
:qid FStar.Pervasives_interpretation_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269 @x1
@x2
@x3)))
:qid FStar.Pervasives_interpretation_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269))

:named FStar.Pervasives_interpretation_Tm_arrow_fc269489cb2e24a10c7710a1f7f9d269))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(96,15-96,47); use=Ariadne.fst(96,15-96,47)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_cff43cc708f428f4d53c91d53cf7585b)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))
:qid Ariadne_pre_typing_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))

:named Ariadne_pre_typing_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b
;;; Fact-ids: Name Ariadne.log_pre; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(96,15-96,47); use=Ariadne.fst(96,15-96,47)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_cff43cc708f428f4d53c91d53cf7585b)
(and 
;; def=Ariadne.fst(96,15-96,47); use=Ariadne.fst(96,15-96,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Ariadne.ctr)
(HasType (ApplyTT @x0
@x1)
(FStar.Preorder.preorder (Prims.list (Ariadne.backup @x1)))))
 

:pattern ((ApplyTT @x0
@x1))
:qid Ariadne_interpretation_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))
:qid Ariadne_interpretation_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))

:named Ariadne_interpretation_Tm_arrow_cff43cc708f428f4d53c91d53cf7585b))
(push) ;; push{2

; Starting query at Ariadne.fst(146,14-154,19)

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
(declare-fun Tm_refine_86912c6282931d8f4ff264b08dd92cfe (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(150,2-150,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_86912c6282931d8f4ff264b08dd92cfe))

:named refinement_kinding_Tm_refine_86912c6282931d8f4ff264b08dd92cfe))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(150,2-150,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(150,2-150,7)
(Valid 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(150,2-150,7)
(ApplyTT (ApplyTT (Ariadne.preorder_ Dummy_value)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x3))
(Ariadne.Counter @x4
(Ariadne.step0 @x5
@x6)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_86912c6282931d8f4ff264b08dd92cfe))

:named refinement_interpretation_Tm_refine_86912c6282931d8f4ff264b08dd92cfe))
;;;;;;;;;;;;;;;;haseq for Tm_refine_86912c6282931d8f4ff264b08dd92cfe
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(150,2-150,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_86912c6282931d8f4ff264b08dd92cfe))

:named haseqTm_refine_86912c6282931d8f4ff264b08dd92cfe))


;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Ariadne.saved_backup@tok))
:named @kick_partial_app_ad896d0e8d82261179a8985e5cc87171))

(declare-fun Tm_refine_acb812ea49a95087ed9c98887bd48239 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(152,2-152,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_acb812ea49a95087ed9c98887bd48239 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_acb812ea49a95087ed9c98887bd48239 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_acb812ea49a95087ed9c98887bd48239))

:named refinement_kinding_Tm_refine_acb812ea49a95087ed9c98887bd48239))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(152,2-152,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_acb812ea49a95087ed9c98887bd48239 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)

;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(152,2-152,9)
(Valid 
;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(152,2-152,9)
(ApplyTT (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x2)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x3
(BoxInt 1))
@x4))
@x5)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_acb812ea49a95087ed9c98887bd48239 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_acb812ea49a95087ed9c98887bd48239))

:named refinement_interpretation_Tm_refine_acb812ea49a95087ed9c98887bd48239))
;;;;;;;;;;;;;;;;haseq for Tm_refine_acb812ea49a95087ed9c98887bd48239
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(152,2-152,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_acb812ea49a95087ed9c98887bd48239 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_acb812ea49a95087ed9c98887bd48239 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_acb812ea49a95087ed9c98887bd48239))

:named haseqTm_refine_acb812ea49a95087ed9c98887bd48239))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Ariadne.log_pre@tok))
:named @kick_partial_app_9f1438b975dd069729ef9647066cfb89))

(declare-fun Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(154,2-154,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8))

:named refinement_kinding_Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(154,2-154,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(154,2-154,7)
(ApplyTT (ApplyTT (ApplyTT Ariadne.log_pre@tok
@x2)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x2))
(Ariadne.log_pre @x2)
@x3
@x4))
(Prims.Cons (Ariadne.backup @x2)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x5
(BoxInt 1))
@x6)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x2))
(Ariadne.log_pre @x2)
@x3
@x4)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8))

:named refinement_interpretation_Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(154,2-154,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8))

:named haseqTm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8))

(declare-fun Tm_refine_f67d546da9881cfa74376ca29779f011 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(146,14-154,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_f67d546da9881cfa74376ca29779f011))

:named refinement_kinding_Tm_refine_f67d546da9881cfa74376ca29779f011))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(146,14-154,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb5 @x4))
(let ((@lb6 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb5))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(146,14-154,19)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(146,14-154,19)
(Ariadne.pre0 (Ariadne.Counter_c @lb6)
@x2)
)
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011))

:named refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f67d546da9881cfa74376ca29779f011
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(146,14-154,19)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2))))
:qid haseqTm_refine_f67d546da9881cfa74376ca29779f011))

:named haseqTm_refine_f67d546da9881cfa74376ca29779f011))

; Encoding query formula : forall (p: Ariadne.protected) (w: Ariadne.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap Prims.unit)
;     (h: FStar.Monotonic.Heap.heap).
;     (let Ariadne.Protect c _ = p in
;       (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;         Ariadne.pre0 c0 w)
;       <:
;       Type0) /\
;     (forall (ra: FStar.Pervasives.result Prims.unit)
;         (h1:
;         _:
;         FStar.Monotonic.Heap.heap
;           { (let Ariadne.Protect c _ = p in
;               (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;                 Ariadne.pre0 c0 w)
;               <:
;               Type0)
;             <:
;             Type0 }).
;         (let Ariadne.Protect c _ = p in
;           (let Ariadne.Counter n c0 = FStar.Monotonic.Heap.sel h c in
;             Ariadne.pre0 c0 w /\
;             FStar.Monotonic.Heap.sel h1 c == Ariadne.Counter n (Ariadne.step0 c0 w))
;           <:
;           Type0) ==>
;         p ra h1) ==>
;     (forall (b: Ariadne.ctr) (b: Ariadne.key b).
;         p == Ariadne.Protect b b ==>
;         (forall (b: Ariadne.index) (b: Ariadne.case).
;             FStar.Monotonic.Heap.sel h b == Ariadne.Counter b b ==>
;             Ariadne.preorder' (FStar.Monotonic.Heap.sel h b) (Ariadne.Counter b (Ariadne.step0 b w)) /\
;             (forall (a: Prims.unit)
;                 (h1:
;                 _:
;                 FStar.Monotonic.Heap.heap
;                   { Ariadne.preorder' (FStar.Monotonic.Heap.sel h b)
;                       (Ariadne.Counter b (Ariadne.step0 b w)) }).
;                 Ariadne.preorder' (FStar.Monotonic.Heap.sel h b)
;                   (Ariadne.Counter b (Ariadne.step0 b w)) /\ FStar.Monotonic.Heap.contains h b /\
;                 FStar.Monotonic.Heap.modifies (FStar.Set.singleton (FStar.Monotonic.Heap.addr_of b))
;                   h
;                   h1 /\ FStar.Monotonic.Heap.equal_dom h h1 /\
;                 FStar.Monotonic.Heap.sel h1 b == Ariadne.Counter b (Ariadne.step0 b w) ==>
;                 b + 1 >= 0 /\
;                 (forall (return_val: Ariadne.index).
;                     return_val == b + 1 ==>
;                     (forall (any_result: Ariadne.index & Ariadne.state).
;                         (b + 1, w) == any_result ==>
;                         Prims.auto_squash (FStar.ST.stable (Ariadne.saved_backup b (b + 1, w))) /\
;                         (forall (return_val:
;                             p: (_: FStar.Monotonic.Heap.heap -> Type0){FStar.ST.stable p}).
;                             return_val == Ariadne.saved_backup b (b + 1, w) ==>
;                             Ariadne.saved_backup b (b + 1, w) h1 /\
;                             (forall (a: Prims.unit)
;                                 (h1:
;                                 _: FStar.Monotonic.Heap.heap{Ariadne.saved_backup b (b + 1, w) h1}).
;                                 h1 == h1 /\ FStar.ST.witnessed (Ariadne.saved_backup b (b + 1, w)) ==>
;                                 Prims.auto_squash (FStar.ST.witnessed (Ariadne.saved_backup b
;                                           (b + 1,
;                                           w))) /\
;                                 (forall (any_result: Ariadne.index & Ariadne.state).
;                                     (b + 1, w) == any_result ==>
;                                     (forall (any_result: Prims.list (Ariadne.backup b)).
;                                         (b + 1, w) :: FStar.Monotonic.Heap.sel h1 b == any_result ==>
;                                         Ariadne.log_pre b
;                                           (FStar.Monotonic.Heap.sel h1 b)
;                                           ((b + 1, w) :: FStar.Monotonic.Heap.sel h1 b) /\
;                                         (forall (a: Prims.unit)
;                                             (h1:
;                                             _:
;                                             FStar.Monotonic.Heap.heap
;                                               { Ariadne.log_pre b
;                                                   (FStar.Monotonic.Heap.sel h1 b)
;                                                   ((b + 1, w) :: FStar.Monotonic.Heap.sel h1 b) }).
;                                             Ariadne.log_pre b
;                                               (FStar.Monotonic.Heap.sel h1 b)
;                                               ((b + 1, w) :: FStar.Monotonic.Heap.sel h1 b) /\
;                                             FStar.Monotonic.Heap.contains h1 b /\
;                                             FStar.Monotonic.Heap.modifies (FStar.Set.singleton (FStar.Monotonic.Heap.addr_of
;                                                       b))
;                                               h1
;                                               h1 /\ FStar.Monotonic.Heap.equal_dom h1 h1 /\
;                                             FStar.Monotonic.Heap.sel h1 b ==
;                                             (b + 1, w) :: FStar.Monotonic.Heap.sel h1 b ==>
;                                             p (FStar.Pervasives.V a) h1))))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let save`

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
Ariadne.protected)
(HasType @x1
(Ariadne.state Dummy_value)))

;; def=FStar.Pervasives.fsti(672,2-672,64); use=FStar.Pervasives.fsti(695,15-695,27)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))
(HasType @x3
FStar.Monotonic.Heap.heap)
(let ((@lb4 @x0))
(let ((@lb5 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb4))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(146,14-154,19)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(146,14-154,19)
(Ariadne.pre0 (Ariadne.Counter_c @lb5)
@x1)
)
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(146,14-154,19)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_1
(HasType @x4
(FStar.Pervasives.result Prims.unit)))
(or label_2
(HasType @x5
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x1
@x3
@x0)))
(let ((@lb6 @x0))
(let ((@lb7 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb6))))

;; def=Ariadne.fst(142,2-144,27); use=Ariadne.fst(146,14-154,19)
(and 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(146,14-154,19)
(or label_3

;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(146,14-154,19)
(Valid 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(146,14-154,19)
(Ariadne.pre0 (Ariadne.Counter_c @lb7)
@x1)
)
)


;; def=Ariadne.fst(144,2-144,26); use=Ariadne.fst(146,14-154,19)
(or label_4

;; def=Ariadne.fst(144,2-144,26); use=Ariadne.fst(146,14-154,19)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x5
(Ariadne.Protect_c @lb6))
(Ariadne.Counter (Ariadne.Counter_n @lb7)
(Ariadne.step0 (Ariadne.Counter_c @lb7)
@x1)))
)
)
)))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(146,14-154,19)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(146,14-154,19)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(146,14-154,19)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(146,14-154,19)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.2))
)

;; def=FStar.Pervasives.fsti(489,2-489,27); use=Ariadne.fst(146,14-154,19)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Ariadne.ctr)

;; def=FStar.Pervasives.fsti(489,2-489,27); use=Ariadne.fst(146,14-154,19)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Ariadne.key @x4))

;; def=Ariadne.fst(147,6-147,17); use=Ariadne.fst(147,6-147,17)
(= @x0
(Ariadne.Protect @x4
@x5))
)

;; def=FStar.Pervasives.fsti(489,2-489,27); use=Ariadne.fst(146,14-154,19)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Ariadne.index)

;; def=FStar.Pervasives.fsti(489,2-489,27); use=Ariadne.fst(146,14-154,19)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Ariadne.case)

;; def=Ariadne.fst(148,6-148,18); use=Ariadne.fst(148,6-148,18)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x4)
(Ariadne.Counter @x6
@x7))
)

;; def=FStar.ST.fst(76,41-76,87); use=Ariadne.fst(150,2-150,7)
(and 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(150,2-150,7)
(or label_5

;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(150,2-150,7)
(Valid 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(150,2-150,7)
(ApplyTT (ApplyTT (Ariadne.preorder_ Dummy_value)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x4))
(Ariadne.Counter @x6
(Ariadne.step0 @x7
@x1)))
)
)


;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(150,2-150,7)
(forall ((@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x8
Prims.unit)
(HasType @x9
(Tm_refine_86912c6282931d8f4ff264b08dd92cfe @x3
@x4
@x6
@x7
@x1))

;; def=FStar.ST.fst(105,20-105,36); use=Ariadne.fst(150,2-150,7)
(Valid 
;; def=FStar.ST.fst(105,20-105,36); use=Ariadne.fst(150,2-150,7)
(ApplyTT (ApplyTT (Ariadne.preorder_ Dummy_value)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x4))
(Ariadne.Counter @x6
(Ariadne.step0 @x7
@x1)))
)


;; def=FStar.ST.fst(105,40-105,55); use=Ariadne.fst(150,2-150,7)
(Valid 
;; def=FStar.ST.fst(105,40-105,55); use=Ariadne.fst(150,2-150,7)
(FStar.Monotonic.Heap.contains Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x4)
)


;; def=FStar.ST.fst(106,17-106,59); use=Ariadne.fst(150,2-150,7)
(Valid 
;; def=FStar.ST.fst(106,17-106,59); use=Ariadne.fst(150,2-150,7)
(FStar.Monotonic.Heap.modifies (FStar.Set.singleton Prims.nat
(FStar.Monotonic.Heap.addr_of Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4))
@x3
@x9)
)


;; def=FStar.ST.fst(106,63-106,78); use=Ariadne.fst(150,2-150,7)
(Valid 
;; def=FStar.ST.fst(106,63-106,78); use=Ariadne.fst(150,2-150,7)
(FStar.Monotonic.Heap.equal_dom @x3
@x9)
)


;; def=FStar.ST.fst(107,17-107,30); use=Ariadne.fst(150,2-150,7)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x9
@x4)
(Ariadne.Counter @x6
(Ariadne.step0 @x7
@x1)))
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(146,14-154,19)
(and 
;; def=Prims.fst(680,18-680,24); use=Ariadne.fst(151,11-151,14)
(or label_6

;; def=Prims.fst(680,18-680,24); use=Ariadne.fst(151,11-151,14)
(>= (BoxInt_proj_0 (Prims.op_Addition @x6
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=Ariadne.fst(146,14-154,19)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Ariadne.index)

;; def=Prims.fst(356,26-356,41); use=Ariadne.fst(146,14-154,19)
(= @x10
(Prims.op_Addition @x6
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(146,14-154,19)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
(FStar.Pervasives.Native.tuple2 Ariadne.index
(Ariadne.state Dummy_value)))

;; def=Ariadne.fst(151,6-151,17); use=Ariadne.fst(151,6-151,17)
(= (FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)
@x11)
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(146,14-154,19)
(and 
;; def=FStar.MRef.fsti(47,30-47,41); use=Ariadne.fst(152,10-152,28)
(or label_7

;; def=FStar.MRef.fsti(47,30-47,41); use=Ariadne.fst(152,10-152,28)
(Valid 
;; def=FStar.MRef.fsti(47,30-47,41); use=Ariadne.fst(152,10-152,28)
(FStar.ST.stable (Ariadne.saved_backup @x4
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)))
)
)


;; def=Prims.fst(356,2-356,58); use=Ariadne.fst(146,14-154,19)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0)

;; def=Prims.fst(356,26-356,41); use=Ariadne.fst(146,14-154,19)
(= @x12
(Ariadne.saved_backup @x4
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)))
)

;; def=FStar.ST.fst(76,41-76,87); use=Ariadne.fst(152,2-152,9)
(and 
;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(152,2-152,9)
(or label_8

;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(152,2-152,9)
(Valid 
;; def=FStar.MRef.fsti(49,25-49,29); use=Ariadne.fst(152,2-152,9)
(ApplyTT (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x4)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1))
@x9)
)
)


;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(152,2-152,9)
(forall ((@x13 Term) (@x14 Term))
 (! (implies (and (HasType @x13
Prims.unit)
(HasType @x14
(Tm_refine_acb812ea49a95087ed9c98887bd48239 @x4
@x6
@x1
@x9))

;; def=FStar.MRef.fsti(50,29-50,35); use=Ariadne.fst(152,2-152,9)
(= @x9
@x14)


;; def=FStar.MRef.fsti(50,39-50,50); use=Ariadne.fst(152,2-152,9)
(Valid 
;; def=FStar.MRef.fsti(50,39-50,50); use=Ariadne.fst(152,2-152,9)
(FStar.ST.witnessed (Ariadne.saved_backup @x4
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)))
)
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(146,14-154,19)
(and 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(154,11-154,12)
(or label_9

;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(154,11-154,12)
(Valid 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(154,11-154,12)
(FStar.ST.witnessed (Ariadne.saved_backup @x4
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)))
)
)


;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(146,14-154,19)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(FStar.Pervasives.Native.tuple2 Ariadne.index
(Ariadne.state Dummy_value)))

;; def=Prims.fst(616,11-616,13); use=Ariadne.fst(146,14-154,19)
(= (FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)
@x15)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(146,14-154,19)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Prims.list (Ariadne.backup @x4)))

;; def=FStar.ST.fst(102,54-102,55); use=Ariadne.fst(146,14-154,19)
(= (Prims.Cons (Ariadne.backup @x4)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5))
@x16)
)

;; def=FStar.ST.fst(76,41-76,87); use=Ariadne.fst(154,2-154,7)
(and 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(154,2-154,7)
(or label_10

;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(154,2-154,7)
(ApplyTT (ApplyTT (ApplyTT Ariadne.log_pre@tok
@x4)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5))
(Prims.Cons (Ariadne.backup @x4)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5)))
)
)


;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(154,2-154,7)
(forall ((@x17 Term) (@x18 Term))
 (! (implies (and (HasType @x17
Prims.unit)
(HasType @x18
(Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8 @x4
@x14
@x5
@x6
@x1))

;; def=FStar.ST.fst(105,20-105,36); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(105,20-105,36); use=Ariadne.fst(154,2-154,7)
(ApplyTT (ApplyTT (ApplyTT Ariadne.log_pre@tok
@x4)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5))
(Prims.Cons (Ariadne.backup @x4)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5)))
)


;; def=FStar.ST.fst(105,40-105,55); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(105,40-105,55); use=Ariadne.fst(154,2-154,7)
(FStar.Monotonic.Heap.contains (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5)
)


;; def=FStar.ST.fst(106,17-106,59); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(106,17-106,59); use=Ariadne.fst(154,2-154,7)
(FStar.Monotonic.Heap.modifies (FStar.Set.singleton Prims.nat
(FStar.Monotonic.Heap.addr_of (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x5))
@x14
@x18)
)


;; def=FStar.ST.fst(106,63-106,78); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(106,63-106,78); use=Ariadne.fst(154,2-154,7)
(FStar.Monotonic.Heap.equal_dom @x14
@x18)
)


;; def=FStar.ST.fst(107,17-107,30); use=Ariadne.fst(154,2-154,7)
(= (FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x18
@x5)
(Prims.Cons (Ariadne.backup @x4)
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
(Prims.op_Addition @x6
(BoxInt 1))
@x1)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x4))
(Ariadne.log_pre @x4)
@x14
@x5)))
)

;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(154,2-154,7)
(Valid 
;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(154,2-154,7)
(ApplyTT (ApplyTT @x2
(FStar.Pervasives.V Prims.unit
@x17))
@x18)
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
)
 
;;no pats
:qid @query.11))
)
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
; QUERY ID: (Ariadne.save, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented, @query, Ariadne_pretyping_aa7fb1e4d4d9e1f5c4d43327f007a8ad, Prims_pretyping_ae567c2fb75be05905677af440075565, Prims_pretyping_f8666440faa91836cc5a13998af863fc, b2t_def, bool_inversion, bool_typing, constructor_distinct_Ariadne.Crash, constructor_distinct_Ariadne.Writing, constructor_distinct_Ariadne.counter, constructor_distinct_Prims.Cons, constructor_distinct_Prims.list, data_elim_FStar.Pervasives.Native.Mktuple2, data_typing_intro_FStar.Pervasives.V@tok, eq2-interp, equation_Ariadne.backup, equation_Ariadne.ctr, equation_Ariadne.index, equation_Ariadne.key, equation_Ariadne.log, equation_Ariadne.log_pre, equation_Ariadne.log_pre_, equation_Ariadne.pre0, equation_Ariadne.preorder_, equation_Ariadne.record, equation_Ariadne.saved, equation_Ariadne.saved_backup, equation_Ariadne.state, equation_Ariadne.step0, equation_Ariadne.suffix_of, equation_FStar.Monotonic.Heap.equal_dom, equation_FStar.Monotonic.Heap.modifies, equation_FStar.Monotonic.Heap.modifies_t, equation_FStar.Preorder.preorder, equation_FStar.Preorder.preorder_rel, equation_FStar.Preorder.reflexive, equation_FStar.ST.mref, equation_Prims.eqtype, equation_Prims.nat, equation_Prims.pos, equation_with_fuel_FStar.List.Tot.Base.strict_suffix_of.fuel_instrumented, false_interp, fuel_guarded_inversion_Ariadne.case, fuel_guarded_inversion_FStar.Pervasives.Native.tuple2, function_token_typing_Ariadne.log_pre, function_token_typing_Ariadne.saved_backup, function_token_typing_Prims.__cache_version_number__, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, int_inversion, interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27, interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f, interpretation_Tm_abs_c7b3a92b04ac49b355f01e4f39fe0528, kinding_Ariadne.counter@tok, kinding_Prims.list@tok, l_and-interp, l_or-interp, l_quant_interp_2d93d1e2e978575420277bf29c7a470b, lemma_FStar.Monotonic.Heap.lemma_distinct_addrs_distinct_types, lemma_FStar.Set.mem_singleton, lemma_FStar.TSet.lemma_mem_tset_of_set, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, projection_inverse_Ariadne.Counter_c, projection_inverse_Ariadne.Counter_n, projection_inverse_Ariadne.Crash_other, projection_inverse_Ariadne.Crash_read, projection_inverse_Ariadne.Protect_c, projection_inverse_Ariadne.Writing_old, projection_inverse_Ariadne.Writing_written, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_Prims.Cons_a, projection_inverse_Prims.Cons_hd, projection_inverse_Prims.Cons_tl, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_774ba3f728d91ead8ef40be66c9802e5, refinement_interpretation_Tm_refine_86912c6282931d8f4ff264b08dd92cfe, refinement_interpretation_Tm_refine_bd10f09297e0e7dc08314f7d9211801c, refinement_interpretation_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0, refinement_interpretation_Tm_refine_ddc72791e0a7e8078ea3d12f3bc22aa8, refinement_interpretation_Tm_refine_e33ef751d600ad1c7f71142479103c47, refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011, refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, string_inversion, typing_Ariadne.backup, typing_Ariadne.log_pre, typing_Ariadne.preorder_, typing_Ariadne.saved_backup, typing_Ariadne.step0, typing_FStar.Monotonic.Heap.addr_of, typing_FStar.Monotonic.Heap.sel, typing_FStar.Set.mem, typing_FStar.Set.singleton, typing_Prims.int, typing_Prims.unit, unit_inversion, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let save


; <Start encoding let save>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Ariadne.save (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Ariadne.save@tok () Term)

; </end encoding let save>


; encoding sigelt let pre1


; <Start encoding let pre1>

(declare-fun Ariadne.pre1 (Term) Term)
;;;;;;;;;;;;;;;;c: case -> Prims.logical
(declare-fun Tm_arrow_155f6aabb030d9df93a8268ad03ac5d0 () Term)
(declare-fun Ariadne.pre1@tok () Term)

; </end encoding let pre1>


; encoding sigelt val Ariadne.step1


; <Skipped val Ariadne.step1/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.pre1; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(159,4-159,8); use=Ariadne.fst(159,4-159,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.case)
(HasType (Ariadne.pre1 @x0)
Prims.logical))
 

:pattern ((Ariadne.pre1 @x0))
:qid typing_Ariadne.pre1))

:named typing_Ariadne.pre1))
;;;;;;;;;;;;;;;;Equation for Ariadne.pre1
;;; Fact-ids: Name Ariadne.pre1; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(159,4-159,8); use=Ariadne.fst(159,4-159,8)
(forall ((@x0 Term))
 (! (= (Valid (Ariadne.pre1 @x0))

;; def=Ariadne.fst(159,13-159,35); use=Ariadne.fst(159,13-159,35)
(or 
;; def=Ariadne.fst(159,13-159,23); use=Ariadne.fst(159,13-159,23)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x0))


;; def=Ariadne.fst(159,27-159,35); use=Ariadne.fst(159,27-159,35)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x0))
)
)
 

:pattern ((Ariadne.pre1 @x0))
:qid equation_Ariadne.pre1))

:named equation_Ariadne.pre1))
;;;;;;;;;;;;;;;;Prop-typing for Ariadne.pre1
;;; Fact-ids: Name Ariadne.pre1; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(159,4-159,8); use=Ariadne.fst(159,4-159,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.case)
(Valid (Prims.subtype_of (Ariadne.pre1 @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Ariadne.pre1 @x0)
Prims.unit))
:qid defn_equation_Ariadne.pre1))

:named defn_equation_Ariadne.pre1))
(push) ;; push{2

; Starting query at Ariadne.fst(161,12-163,32)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_4187e98250438914a336576d12992752 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4187e98250438914a336576d12992752
Tm_type)
:named refinement_kinding_Tm_refine_4187e98250438914a336576d12992752))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Ariadne.fst(160,11-160,26); use=Ariadne.fst(161,4-161,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4187e98250438914a336576d12992752)
(and (HasTypeFuel @u0
@x1
Ariadne.case)

;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(161,4-161,9)
(Valid 
;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(161,4-161,9)
(Ariadne.pre1 @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4187e98250438914a336576d12992752))
:qid refinement_interpretation_Tm_refine_4187e98250438914a336576d12992752))

:named refinement_interpretation_Tm_refine_4187e98250438914a336576d12992752))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4187e98250438914a336576d12992752
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4187e98250438914a336576d12992752))
(Valid (Prims.hasEq Ariadne.case)))
:named haseqTm_refine_4187e98250438914a336576d12992752))

; Encoding query formula : forall (_: c: Ariadne.case{Ariadne.pre1 c}).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post Ariadne.case).
;     (forall (x: Ariadne.case). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(Writing? _) /\ ~(Crash? _) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let step1`

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
Tm_refine_4187e98250438914a336576d12992752)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Ariadne.case))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(161,12-163,32)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(161,12-163,32)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(161,12-163,32)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=Ariadne.fst(161,12-163,32); use=Ariadne.fst(161,12-163,32)
(not 
;; def=Ariadne.fst(161,12-163,32); use=Ariadne.fst(161,12-163,32)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x0))
)


;; def=Ariadne.fst(161,12-163,32); use=Ariadne.fst(161,12-163,32)
(not 
;; def=Ariadne.fst(161,12-163,32); use=Ariadne.fst(161,12-163,32)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x0))
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
; QUERY ID: (Ariadne.step1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Ariadne.pre1, refinement_interpretation_Tm_refine_4187e98250438914a336576d12992752

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let step1


; <Start encoding let step1>

(declare-fun Tm_refine_4187e98250438914a336576d12992752 () Term)
(declare-fun Ariadne.step1 (Term) Term)

;;;;;;;;;;;;;;;;c: case{pre1 c} -> case
(declare-fun Tm_arrow_bee5fbaf23ca1793225d4b010d12877f () Term)
(declare-fun Ariadne.step1@tok () Term)


; </end encoding let step1>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.step1; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(161,4-161,9); use=Ariadne.fst(161,4-161,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_4187e98250438914a336576d12992752)
(HasType (Ariadne.step1 @x0)
Ariadne.case))
 

:pattern ((Ariadne.step1 @x0))
:qid typing_Ariadne.step1))

:named typing_Ariadne.step1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Ariadne.step1; Namespace Ariadne
(assert (! (HasType Tm_refine_4187e98250438914a336576d12992752
Tm_type)
:named refinement_kinding_Tm_refine_4187e98250438914a336576d12992752))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Ariadne.step1; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(160,11-160,26); use=Ariadne.fst(161,4-161,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4187e98250438914a336576d12992752)
(and (HasTypeFuel @u0
@x1
Ariadne.case)

;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(161,4-161,9)
(Valid 
;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(161,4-161,9)
(Ariadne.pre1 @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4187e98250438914a336576d12992752))
:qid refinement_interpretation_Tm_refine_4187e98250438914a336576d12992752))

:named refinement_interpretation_Tm_refine_4187e98250438914a336576d12992752))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4187e98250438914a336576d12992752
;;; Fact-ids: Name Ariadne.step1; Namespace Ariadne
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4187e98250438914a336576d12992752))
(Valid (Prims.hasEq Ariadne.case)))
:named haseqTm_refine_4187e98250438914a336576d12992752))
;;;;;;;;;;;;;;;;Equation for Ariadne.step1
;;; Fact-ids: Name Ariadne.step1; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(161,4-161,9); use=Ariadne.fst(161,4-161,9)
(forall ((@x0 Term))
 (! (= (Ariadne.step1 @x0)
(let ((@lb1 @x0))
(ite (is-Ariadne.Writing @lb1)
(Ariadne.Ok (Ariadne.Writing_written @lb1))
(ite (is-Ariadne.Crash @lb1)
(Ariadne.Recover (Ariadne.Crash_read @lb1)
(Ariadne.Crash_other @lb1))
Tm_unit))))
 

:pattern ((Ariadne.step1 @x0))
:qid equation_Ariadne.step1))

:named equation_Ariadne.step1))
(push) ;; push{2

; Starting query at Ariadne.fst(165,0-177,44)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(623,46-623,55); use=Ariadne.fst(165,12-165,38)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(623,46-623,55); use=Ariadne.fst(165,12-165,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x3)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(165,30-165,33)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(165,30-165,33)
(Ariadne.pre1 (Ariadne.Counter_c @lb4))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cf033fa1d66fb0cf90de40898b4185e1
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(623,46-623,55); use=Ariadne.fst(165,12-165,38)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1))))
:qid haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))

; Encoding query formula : forall (c: Ariadne.ctr)
;   (w: Ariadne.state)
;   (h0: FStar.Monotonic.Heap.heap)
;   (r: FStar.Pervasives.result Prims.unit)
;   (h1:
;   _:
;   FStar.Monotonic.Heap.heap
;     { (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h0 c in
;         Ariadne.pre1 c0)
;       <:
;       Type0 }).
;   (*  - Could not prove post-condition
; *)
;   forall (any_result: Ariadne.counter).
;     FStar.Monotonic.Heap.sel h0 c == any_result ==>
;     (forall (b: Ariadne.index) (b: Ariadne.case).
;         FStar.Monotonic.Heap.sel h0 c == Ariadne.Counter b b ==>
;         Ariadne.pre1 b ==>
;         Prims.auto_squash (Ariadne.pre1 b) /\
;         (forall (any_result: Ariadne.case).
;             b == any_result ==>
;             (forall (any_result: Ariadne.case). Ariadne.step1 b == any_result ==> b + 1 >= 0)))


; Context: While encoding a query
; While typechecking the top-level declaration `val Ariadne.incr`

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
;; def=dummy(0,0-0,0); use=Ariadne.fst(165,0-177,44)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Ariadne.ctr)
(HasType @x1
(Ariadne.state Dummy_value))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Pervasives.result Prims.unit))
(HasType @x4
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x0)))

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(165,12-165,38)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Ariadne.counter)

;; def=Ariadne.fst(170,6-170,19); use=Ariadne.fst(165,12-165,38)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x0)
@x5)
)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(165,12-165,38)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Ariadne.index)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(165,12-165,38)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Ariadne.case)

;; def=Ariadne.fst(171,6-171,19); use=Ariadne.fst(165,12-165,38)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x0)
(Ariadne.Counter @x6
@x7))


;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(165,12-165,38)
(Valid 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(165,12-165,38)
(Ariadne.pre1 @x7)
)
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(165,12-165,38)
(and 
;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(173,17-173,19)
(or label_1

;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(165,12-165,38)
(Valid 
;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(165,12-165,38)
(Ariadne.pre1 @x7)
)
)


;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(165,12-165,38)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Ariadne.case)

;; def=Ariadne.fst(160,11-171,19); use=Ariadne.fst(165,12-165,38)
(= @x7
@x8)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(165,12-165,38)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Ariadne.case)

;; def=Ariadne.fst(173,6-173,19); use=Ariadne.fst(165,12-165,38)
(= (Ariadne.step1 @x7)
@x9)
)

;; def=Prims.fst(680,18-680,24); use=Ariadne.fst(174,19-174,25)
(or label_2

;; def=Prims.fst(680,18-680,24); use=Ariadne.fst(165,12-165,38)
(>= (BoxInt_proj_0 (Prims.op_Addition @x6
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
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
; QUERY ID: (Ariadne.incr, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Ariadne.index, equation_Prims.nat, primitive_Prims.op_Addition, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val Ariadne.incr


; <Skipped val Ariadne.incr/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.uu___is_Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Pervasives.result @x0)))
(HasType (FStar.Pervasives.uu___is_Err @x0
@x1)
Prims.bool))
 

:pattern ((FStar.Pervasives.uu___is_Err @x0
@x1))
:qid typing_FStar.Pervasives.uu___is_Err))

:named typing_FStar.Pervasives.uu___is_Err))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name FStar.Pervasives.uu___is_Err; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(522,4-522,7); use=FStar.Pervasives.fsti(522,4-522,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.uu___is_Err @x0
@x1)
(BoxBool (is-FStar.Pervasives.Err @x1)))
 

:pattern ((FStar.Pervasives.uu___is_Err @x0
@x1))
:qid disc_equation_FStar.Pervasives.Err))

:named disc_equation_FStar.Pervasives.Err))
(push) ;; push{2

; Starting query at Ariadne.fst(180,14-184,37)

(declare-fun label_8 () Bool)
(declare-fun label_7 () Bool)
(declare-fun label_6 () Bool)
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_9d91c33d96b506495430913749b5c7ab (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(184,2-184,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_9d91c33d96b506495430913749b5c7ab @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_9d91c33d96b506495430913749b5c7ab @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_9d91c33d96b506495430913749b5c7ab))

:named refinement_kinding_Tm_refine_9d91c33d96b506495430913749b5c7ab))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(184,2-184,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_9d91c33d96b506495430913749b5c7ab @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)

;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(184,2-184,7)
(ApplyTT (ApplyTT (Ariadne.preorder_ Dummy_value)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x3))
(Ariadne.Counter (Prims.op_Addition @x4
(BoxInt 1))
(Ariadne.step1 @x5)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_9d91c33d96b506495430913749b5c7ab @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_9d91c33d96b506495430913749b5c7ab))

:named refinement_interpretation_Tm_refine_9d91c33d96b506495430913749b5c7ab))
;;;;;;;;;;;;;;;;haseq for Tm_refine_9d91c33d96b506495430913749b5c7ab
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(184,2-184,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_9d91c33d96b506495430913749b5c7ab @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_9d91c33d96b506495430913749b5c7ab @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_9d91c33d96b506495430913749b5c7ab))

:named haseqTm_refine_9d91c33d96b506495430913749b5c7ab))
(declare-fun Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(180,14-184,37)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(180,14-184,37)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x3)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(180,14-184,37)
(Ariadne.pre1 (Ariadne.Counter_c @lb4))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cf033fa1d66fb0cf90de40898b4185e1
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(180,14-184,37)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1))))
:qid haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))

; Encoding query formula : forall (c: Ariadne.ctr) (w: Ariadne.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap Prims.unit)
;     (h: FStar.Monotonic.Heap.heap).
;     (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;       Ariadne.pre1 c0) /\
;     (forall (ra: FStar.Pervasives.result Prims.unit)
;         (h1:
;         _:
;         FStar.Monotonic.Heap.heap
;           { (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;               Ariadne.pre1 c0)
;             <:
;             Type0 }).
;         (let Ariadne.Counter n0 c0 = FStar.Monotonic.Heap.sel h c in
;           Ariadne.pre1 c0 /\
;           (match ra with
;             | FStar.Pervasives.V _ ->
;               FStar.Monotonic.Heap.sel h1 c == Ariadne.Counter (n0 + 1) (Ariadne.step1 c0)
;             | _ ->
;               FStar.Monotonic.Heap.sel h1 c == FStar.Monotonic.Heap.sel h c \/
;               FStar.Monotonic.Heap.sel h1 c == Ariadne.Counter (n0 + 1) (Ariadne.step1 c0))) ==>
;         p ra h1) ==>
;     (forall (b: Ariadne.index) (b: Ariadne.case).
;         FStar.Monotonic.Heap.sel h c == Ariadne.Counter b b ==>
;         (forall (k: FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap Prims.unit).
;             (forall (x: FStar.Pervasives.result Prims.unit) (h: FStar.Monotonic.Heap.heap).
;                 {:pattern Prims.guard_free (k x h)}
;                 p x h ==> k x h) ==>
;             (b = 3 == true ==>
;               (forall (ra: FStar.Pervasives.result Prims.unit) (h1: FStar.Monotonic.Heap.heap).
;                   Err? ra /\ h == h1 ==> k ra h1)) /\
;             (~(b = 3 = true) ==>
;               (forall (b: Prims.bool).
;                   b = 3 == b ==>
;                   b + 1 >= 0 /\
;                   (forall (return_val: Ariadne.index).
;                       return_val == b + 1 ==>
;                       Prims.auto_squash (Ariadne.pre1 b) /\
;                       (forall (any_result: Ariadne.case).
;                           b == any_result ==>
;                           (forall (any_result: Ariadne.case).
;                               Ariadne.step1 b == any_result ==>
;                               (forall (any_result: Ariadne.counter).
;                                   Ariadne.Counter (b + 1) (Ariadne.step1 b) == any_result ==>
;                                   Ariadne.preorder' (FStar.Monotonic.Heap.sel h c)
;                                     (Ariadne.Counter (b + 1) (Ariadne.step1 b)) /\
;                                   (forall (a: Prims.unit)
;                                       (h1:
;                                       _:
;                                       FStar.Monotonic.Heap.heap
;                                         { Ariadne.preorder' (FStar.Monotonic.Heap.sel h c)
;                                             (Ariadne.Counter (b + 1) (Ariadne.step1 b)) }).
;                                       Ariadne.preorder' (FStar.Monotonic.Heap.sel h c)
;                                         (Ariadne.Counter (b + 1) (Ariadne.step1 b)) /\
;                                       FStar.Monotonic.Heap.contains h c /\
;                                       FStar.Monotonic.Heap.modifies (FStar.Set.singleton (FStar.Monotonic.Heap.addr_of
;                                                 c))
;                                         h
;                                         h1 /\ FStar.Monotonic.Heap.equal_dom h h1 /\
;                                       FStar.Monotonic.Heap.sel h1 c ==
;                                       Ariadne.Counter (b + 1) (Ariadne.step1 b) ==>
;                                       k (FStar.Pervasives.V a) h1))))))))
;         <:
;         Prims.GTot Type0)


; Context: While encoding a query
; While typechecking the top-level declaration `let incr`

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
Ariadne.ctr)
(HasType @x1
(Ariadne.state Dummy_value)))

;; def=FStar.Pervasives.fsti(672,2-672,64); use=FStar.Pervasives.fsti(695,15-695,27)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))
(HasType @x3
FStar.Monotonic.Heap.heap)
(let ((@lb4 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(180,14-184,37)
(Ariadne.pre1 (Ariadne.Counter_c @lb4))
)
)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(180,14-184,37)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_1
(HasType @x4
(FStar.Pervasives.result Prims.unit)))
(or label_2
(HasType @x5
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x3
@x0)))
(let ((@lb6 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0)))

;; def=Ariadne.fst(172,2-177,43); use=Ariadne.fst(180,14-184,37)
(and 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(180,14-184,37)
(or label_3

;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(180,14-184,37)
(Ariadne.pre1 (Ariadne.Counter_c @lb6))
)
)

(let ((@lb7 @x4))
(ite (is-FStar.Pervasives.V @lb7)

;; def=Ariadne.fst(176,12-176,27); use=Ariadne.fst(180,14-184,37)
(or label_4

;; def=Ariadne.fst(176,12-176,27); use=Ariadne.fst(180,14-184,37)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x5
@x0)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb6)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb6))))
)


;; def=Ariadne.fst(177,9-177,41); use=Ariadne.fst(180,14-184,37)
(or label_5

;; def=Ariadne.fst(177,9-177,23); use=Ariadne.fst(180,14-184,37)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x5
@x0)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0))


;; def=Ariadne.fst(177,27-177,41); use=Ariadne.fst(180,14-184,37)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x5
@x0)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb6)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb6))))
)
)))
))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(180,14-184,37)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(180,14-184,37)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.2))
)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(180,14-184,37)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Ariadne.index)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(180,14-184,37)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Ariadne.case)

;; def=Ariadne.fst(182,6-182,19); use=Ariadne.fst(182,6-182,19)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0)
(Ariadne.Counter @x4
@x5))
)

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(180,14-184,37)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(180,14-184,37)
(forall ((@x7 Term) (@x8 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(180,14-184,37)
(ApplyTT (ApplyTT @x2
@x7)
@x8)
)


;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(180,14-184,37)
(Valid 
;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(180,14-184,37)
(ApplyTT (ApplyTT @x6
@x7)
@x8)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x6
@x7)
@x8))
:qid @query.6))
)

;; def=FStar.Pervasives.fsti(661,7-661,50); use=Ariadne.fst(180,14-184,37)
(and (implies 
;; def=Ariadne.fst(183,5-183,11); use=Ariadne.fst(183,5-183,11)
(= (Prims.op_Equality Prims.int
@x4
(BoxInt 3))
(BoxBool true))


;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(183,17-183,25)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.result Prims.unit))
(HasType @x8
FStar.Monotonic.Heap.heap)

;; def=FStar.All.fsti(43,63-43,69); use=Ariadne.fst(183,17-183,25)
(BoxBool_proj_0 (FStar.Pervasives.uu___is_Err Prims.unit
@x7))


;; def=FStar.All.fsti(43,73-43,80); use=Ariadne.fst(183,17-183,25)
(= @x3
@x8)
)

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(183,17-183,25)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(183,17-183,25)
(ApplyTT (ApplyTT @x6
@x7)
@x8)
)
)
 
;;no pats
:qid @query.7))
)
(implies 
;; def=FStar.Pervasives.fsti(661,27-661,29); use=Ariadne.fst(180,14-184,37)
(not 
;; def=Ariadne.fst(183,5-183,11); use=Ariadne.fst(183,5-183,11)
(= (Prims.op_Equality Prims.int
@x4
(BoxInt 3))
(BoxBool true))
)


;; def=FStar.Pervasives.fsti(489,2-489,27); use=Ariadne.fst(180,14-184,37)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.bool)

;; def=Ariadne.fst(183,5-184,37); use=Ariadne.fst(183,5-184,37)
(= (Prims.op_Equality Prims.int
@x4
(BoxInt 3))
@x7)
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(180,14-184,37)
(and 
;; def=Prims.fst(680,18-680,24); use=Ariadne.fst(184,19-184,25)
(or label_6

;; def=Prims.fst(680,18-680,24); use=Ariadne.fst(184,19-184,25)
(>= (BoxInt_proj_0 (Prims.op_Addition @x4
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=Ariadne.fst(180,14-184,37)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Ariadne.index)

;; def=Prims.fst(356,26-356,41); use=Ariadne.fst(180,14-184,37)
(= @x8
(Prims.op_Addition @x4
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(180,14-184,37)
(and 
;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(184,33-184,35)
(or label_7

;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(184,33-184,35)
(Valid 
;; def=Ariadne.fst(160,19-160,25); use=Ariadne.fst(184,33-184,35)
(Ariadne.pre1 @x5)
)
)


;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(180,14-184,37)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Ariadne.case)

;; def=Ariadne.fst(160,11-182,19); use=Ariadne.fst(180,14-184,37)
(= @x5
@x9)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(180,14-184,37)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Ariadne.case)

;; def=Ariadne.fst(55,4-184,36); use=Ariadne.fst(180,14-184,37)
(= (Ariadne.step1 @x5)
@x10)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(180,14-184,37)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Ariadne.counter)

;; def=FStar.ST.fst(102,54-102,55); use=Ariadne.fst(180,14-184,37)
(= (Ariadne.Counter (Prims.op_Addition @x4
(BoxInt 1))
(Ariadne.step1 @x5))
@x11)
)

;; def=FStar.ST.fst(76,41-76,87); use=Ariadne.fst(184,2-184,7)
(and 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(184,2-184,7)
(or label_8

;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(104,14-104,29); use=Ariadne.fst(184,2-184,7)
(ApplyTT (ApplyTT (Ariadne.preorder_ Dummy_value)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0))
(Ariadne.Counter (Prims.op_Addition @x4
(BoxInt 1))
(Ariadne.step1 @x5)))
)
)


;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(184,2-184,7)
(forall ((@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x12
Prims.unit)
(HasType @x13
(Tm_refine_9d91c33d96b506495430913749b5c7ab @x3
@x0
@x4
@x5))

;; def=FStar.ST.fst(105,20-105,36); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(105,20-105,36); use=Ariadne.fst(184,2-184,7)
(ApplyTT (ApplyTT (Ariadne.preorder_ Dummy_value)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0))
(Ariadne.Counter (Prims.op_Addition @x4
(BoxInt 1))
(Ariadne.step1 @x5)))
)


;; def=FStar.ST.fst(105,40-105,55); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(105,40-105,55); use=Ariadne.fst(184,2-184,7)
(FStar.Monotonic.Heap.contains Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x0)
)


;; def=FStar.ST.fst(106,17-106,59); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(106,17-106,59); use=Ariadne.fst(184,2-184,7)
(FStar.Monotonic.Heap.modifies (FStar.Set.singleton Prims.nat
(FStar.Monotonic.Heap.addr_of Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x0))
@x3
@x13)
)


;; def=FStar.ST.fst(106,63-106,78); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(106,63-106,78); use=Ariadne.fst(184,2-184,7)
(FStar.Monotonic.Heap.equal_dom @x3
@x13)
)


;; def=FStar.ST.fst(107,17-107,30); use=Ariadne.fst(184,2-184,7)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x13
@x0)
(Ariadne.Counter (Prims.op_Addition @x4
(BoxInt 1))
(Ariadne.step1 @x5)))
)

;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(184,2-184,7)
(Valid 
;; def=FStar.ST.fst(76,80-76,86); use=Ariadne.fst(184,2-184,7)
(ApplyTT (ApplyTT @x6
(FStar.Pervasives.V Prims.unit
@x12))
@x13)
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
; QUERY ID: (Ariadne.incr, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, Prims_pretyping_f8666440faa91836cc5a13998af863fc, b2t_def, constructor_distinct_Ariadne.Ok, constructor_distinct_Ariadne.Recover, constructor_distinct_FStar.Pervasives.V, data_typing_intro_FStar.Pervasives.V@tok, disc_equation_FStar.Pervasives.Err, equation_Ariadne.index, equation_Ariadne.preorder_, equation_Ariadne.saved, equation_Ariadne.step1, equation_Prims.eqtype, equation_Prims.nat, false_interp, fuel_guarded_inversion_Ariadne.case, function_token_typing_Prims.__cache_version_number__, interpretation_Tm_abs_94ac1d7db7c09cc7672544949d0efc27, l_and-interp, l_or-interp, l_quant_interp_2d93d1e2e978575420277bf29c7a470b, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, projection_inverse_Ariadne.Counter_c, projection_inverse_Ariadne.Counter_n, projection_inverse_Ariadne.Ok_saved, projection_inverse_Ariadne.Recover_other, projection_inverse_Ariadne.Recover_read, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.V_a, projection_inverse_FStar.Pervasives.V_v, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_9d91c33d96b506495430913749b5c7ab, refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1, typing_Prims.unit, unit_inversion, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let incr


; <Start encoding let incr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Ariadne.incr (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Ariadne.incr@tok () Term)

; </end encoding let incr>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.uu___is_V; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Pervasives.result @x0)))
(HasType (FStar.Pervasives.uu___is_V @x0
@x1)
Prims.bool))
 

:pattern ((FStar.Pervasives.uu___is_V @x0
@x1))
:qid typing_FStar.Pervasives.uu___is_V))

:named typing_FStar.Pervasives.uu___is_V))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name FStar.Pervasives.uu___is_V; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.uu___is_V @x0
@x1)
(BoxBool (is-FStar.Pervasives.V @x1)))
 

:pattern ((FStar.Pervasives.uu___is_V @x0
@x1))
:qid disc_equation_FStar.Pervasives.V))

:named disc_equation_FStar.Pervasives.V))
(push) ;; push{2

; Starting query at Ariadne.fst(187,0-195,21)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_02bb29ef48b588a48b43851dc34efce0 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(623,46-623,55); use=Ariadne.fst(187,13-187,45)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_02bb29ef48b588a48b43851dc34efce0))

:named refinement_kinding_Tm_refine_02bb29ef48b588a48b43851dc34efce0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(623,46-623,55); use=Ariadne.fst(187,13-187,45)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 @x3))
(let ((@lb5 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
(Ariadne.Protect_c @lb4))))

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(187,37-187,40)
(BoxBool_proj_0 (Ariadne.uu___is_Ok (Ariadne.Counter_c @lb5)))
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0))

:named refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_02bb29ef48b588a48b43851dc34efce0
;;; Fact-ids: 
(assert (! 
;; def=FStar.Pervasives.fsti(623,46-623,55); use=Ariadne.fst(187,13-187,45)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1))))
:qid haseqTm_refine_02bb29ef48b588a48b43851dc34efce0))

:named haseqTm_refine_02bb29ef48b588a48b43851dc34efce0))

; Encoding query formula : forall (p: Ariadne.protected)
;   (w: Ariadne.state)
;   (h0: FStar.Monotonic.Heap.heap)
;   (r: FStar.Pervasives.result Prims.unit)
;   (h1:
;   _:
;   FStar.Monotonic.Heap.heap
;     { (let Ariadne.Protect c _ = p in
;         (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h0 c in
;           Ok? c0)
;         <:
;         Type0)
;       <:
;       Type0 }).
;   (*  - Could not prove post-condition
; *)
;   forall (b: Ariadne.ctr) (b: Ariadne.key b).
;     p == Ariadne.Protect b b ==>
;     (forall (any_result: Ariadne.counter).
;         FStar.Monotonic.Heap.sel h1 b == any_result ==>
;         (forall (b: Ariadne.index) (b: Ariadne.case).
;             FStar.Monotonic.Heap.sel h1 b == Ariadne.Counter b b ==>
;             V? r ==> Prims.hasEq Ariadne.case))


; Context: While encoding a query
; While typechecking the top-level declaration `val Ariadne.store`

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
;; def=dummy(0,0-0,0); use=Ariadne.fst(187,0-195,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Ariadne.protected)
(HasType @x1
(Ariadne.state Dummy_value))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Pervasives.result Prims.unit))
(HasType @x4
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x0)))

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(187,13-187,45)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Ariadne.ctr)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(187,13-187,45)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Ariadne.key @x5))

;; def=Ariadne.fst(193,6-193,17); use=Ariadne.fst(187,13-187,45)
(= @x0
(Ariadne.Protect @x5
@x6))
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(187,13-187,45)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Ariadne.counter)

;; def=Ariadne.fst(194,6-194,29); use=Ariadne.fst(187,13-187,45)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
@x5)
@x7)
)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(187,13-187,45)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Ariadne.index)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(187,13-187,45)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Ariadne.case)

;; def=Ariadne.fst(194,6-194,18); use=Ariadne.fst(187,13-187,45)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
@x5)
(Ariadne.Counter @x8
@x9))


;; def=Ariadne.fst(195,2-195,6); use=Ariadne.fst(187,13-187,45)
(BoxBool_proj_0 (FStar.Pervasives.uu___is_V Prims.unit
@x3))
)

;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(195,11-195,13)
(or label_1

;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(187,13-187,45)
(Valid 
;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(187,13-187,45)
(Prims.hasEq Ariadne.case)
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
; QUERY ID: (Ariadne.store, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_Ariadne.case__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val Ariadne.store


; <Skipped val Ariadne.store/>

(push) ;; push{2

; Starting query at Ariadne.fst(197,15-200,10)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_f67d546da9881cfa74376ca29779f011 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(199,2-199,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_f67d546da9881cfa74376ca29779f011))

:named refinement_kinding_Tm_refine_f67d546da9881cfa74376ca29779f011))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(199,2-199,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb5 @x4))
(let ((@lb6 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb5))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(199,2-199,6)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(199,2-199,6)
(Ariadne.pre0 (Ariadne.Counter_c @lb6)
@x2)
)
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011))

:named refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f67d546da9881cfa74376ca29779f011
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(199,2-199,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2))))
:qid haseqTm_refine_f67d546da9881cfa74376ca29779f011))

:named haseqTm_refine_f67d546da9881cfa74376ca29779f011))
(declare-fun Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(200,2-200,6)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(200,2-200,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x3)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(200,2-200,6)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(200,2-200,6)
(Ariadne.pre1 (Ariadne.Counter_c @lb4))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cf033fa1d66fb0cf90de40898b4185e1
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(200,2-200,6)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1))))
:qid haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))
(declare-fun Tm_refine_02bb29ef48b588a48b43851dc34efce0 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(197,15-200,10)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_02bb29ef48b588a48b43851dc34efce0))

:named refinement_kinding_Tm_refine_02bb29ef48b588a48b43851dc34efce0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(197,15-200,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 @x3))
(let ((@lb5 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
(Ariadne.Protect_c @lb4))))

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(197,15-200,10)
(BoxBool_proj_0 (Ariadne.uu___is_Ok (Ariadne.Counter_c @lb5)))
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0))

:named refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_02bb29ef48b588a48b43851dc34efce0
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(197,15-200,10)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1))))
:qid haseqTm_refine_02bb29ef48b588a48b43851dc34efce0))

:named haseqTm_refine_02bb29ef48b588a48b43851dc34efce0))

; Encoding query formula : forall (p: Ariadne.protected) (w: Ariadne.state).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap Prims.unit)
;     (h: FStar.Monotonic.Heap.heap).
;     (let Ariadne.Protect c _ = p in
;       (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;         Ok? c0)
;       <:
;       Type0) /\
;     (forall (ra: FStar.Pervasives.result Prims.unit)
;         (h1:
;         _:
;         FStar.Monotonic.Heap.heap
;           { (let Ariadne.Protect c _ = p in
;               (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;                 Ok? c0)
;               <:
;               Type0)
;             <:
;             Type0 }).
;         (let Ariadne.Protect c _ = p in
;           (let Ariadne.Counter _ c1 = FStar.Monotonic.Heap.sel h1 c in
;             V? ra ==> c1 = Ariadne.Ok w)
;           <:
;           Type0) ==>
;         p ra h1) ==>
;     (forall (b: Ariadne.ctr) (b: Ariadne.key b).
;         p == Ariadne.Protect b b ==>
;         (let Ariadne.Protect c _ = p in
;           (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;             Ariadne.pre0 c0 w)
;           <:
;           Type0) /\
;         (forall (ra: FStar.Pervasives.result Prims.unit)
;             (h1:
;             _:
;             FStar.Monotonic.Heap.heap
;               { (let Ariadne.Protect c _ = p in
;                   (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;                     Ariadne.pre0 c0 w)
;                   <:
;                   Type0)
;                 <:
;                 Type0 }).
;             (let Ariadne.Protect c _ = p in
;               (let Ariadne.Counter n c0 = FStar.Monotonic.Heap.sel h c in
;                 Ariadne.pre0 c0 w /\
;                 FStar.Monotonic.Heap.sel h1 c == Ariadne.Counter n (Ariadne.step0 c0 w))
;               <:
;               Type0) ==>
;             (match ra with
;               | FStar.Pervasives.V _ ->
;                 (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h1 b in
;                   Ariadne.pre1 c0) /\
;                 (forall (ra: FStar.Pervasives.result Prims.unit)
;                     (h1:
;                     _:
;                     FStar.Monotonic.Heap.heap
;                       { (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h1 b in
;                           Ariadne.pre1 c0)
;                         <:
;                         Type0 }).
;                     (let Ariadne.Counter n0 c0 = FStar.Monotonic.Heap.sel h1 b in
;                       Ariadne.pre1 c0 /\
;                       (match ra with
;                         | FStar.Pervasives.V _ ->
;                           FStar.Monotonic.Heap.sel h1 b ==
;                           Ariadne.Counter (n0 + 1) (Ariadne.step1 c0)
;                         | _ ->
;                           FStar.Monotonic.Heap.sel h1 b == FStar.Monotonic.Heap.sel h1 b \/
;                           FStar.Monotonic.Heap.sel h1 b ==
;                           Ariadne.Counter (n0 + 1) (Ariadne.step1 c0))) ==>
;                     p ra h1)
;               | FStar.Pervasives.E e -> p (FStar.Pervasives.E e) h1
;               | FStar.Pervasives.Err msg -> p (FStar.Pervasives.Err msg) h1))
;         <:
;         Prims.GTot Type0)


; Context: While encoding a query
; While typechecking the top-level declaration `let store`

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
Ariadne.protected)
(HasType @x1
(Ariadne.state Dummy_value)))

;; def=FStar.Pervasives.fsti(672,2-672,64); use=FStar.Pervasives.fsti(695,15-695,27)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))
(HasType @x3
FStar.Monotonic.Heap.heap)
(let ((@lb4 @x0))
(let ((@lb5 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb4))))

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(197,15-200,10)
(BoxBool_proj_0 (Ariadne.uu___is_Ok (Ariadne.Counter_c @lb5)))
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(197,15-200,10)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_1
(HasType @x4
(FStar.Pervasives.result Prims.unit)))
(or label_2
(HasType @x5
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x3
@x0)))
(let ((@lb6 @x0))
(let ((@lb7 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x5
(Ariadne.Protect_c @lb6))))
(implies 
;; def=Ariadne.fst(195,2-195,6); use=Ariadne.fst(197,15-200,10)
(BoxBool_proj_0 (FStar.Pervasives.uu___is_V Prims.unit
@x4))


;; def=Ariadne.fst(195,11-195,20); use=Ariadne.fst(197,15-200,10)
(or label_3

;; def=Ariadne.fst(195,11-195,20); use=Ariadne.fst(197,15-200,10)
(= (Ariadne.Counter_c @lb7)
(Ariadne.Ok @x1))
)
))))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(197,15-200,10)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(197,15-200,10)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(197,15-200,10)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(197,15-200,10)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.2))
)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(197,15-200,10)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Ariadne.ctr)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(197,15-200,10)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Ariadne.key @x4))

;; def=Ariadne.fst(198,6-198,17); use=Ariadne.fst(198,6-198,17)
(= @x0
(Ariadne.Protect @x4
@x5))
)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(199,2-199,6)
(and (let ((@lb6 @x0))
(let ((@lb7 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb6))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(199,2-199,6)
(or label_4

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(199,2-199,6)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(199,2-199,6)
(Ariadne.pre0 (Ariadne.Counter_c @lb7)
@x1)
)
)
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(199,2-199,6)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
(FStar.Pervasives.result Prims.unit))
(HasType @x7
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x1
@x3
@x0))
(let ((@lb8 @x0))
(let ((@lb9 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb8))))

;; def=Ariadne.fst(142,2-144,27); use=Ariadne.fst(199,2-199,6)
(and 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(199,2-199,6)
(Valid 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(199,2-199,6)
(Ariadne.pre0 (Ariadne.Counter_c @lb9)
@x1)
)


;; def=Ariadne.fst(144,2-144,26); use=Ariadne.fst(199,2-199,6)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x7
(Ariadne.Protect_c @lb8))
(Ariadne.Counter (Ariadne.Counter_n @lb9)
(Ariadne.step0 (Ariadne.Counter_c @lb9)
@x1)))
)
)))
(let ((@lb8 @x6))
(ite (is-FStar.Pervasives.V @lb8)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(200,2-200,6)
(and (let ((@lb9 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x7
@x4)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(200,2-200,6)
(or label_5

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(200,2-200,6)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(200,2-200,6)
(Ariadne.pre1 (Ariadne.Counter_c @lb9))
)
)
)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(200,2-200,6)
(forall ((@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x9
(FStar.Pervasives.result Prims.unit))
(HasType @x10
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x7
@x4))
(let ((@lb11 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x7
@x4)))

;; def=Ariadne.fst(172,2-177,43); use=Ariadne.fst(200,2-200,6)
(and 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(200,2-200,6)
(Valid 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(200,2-200,6)
(Ariadne.pre1 (Ariadne.Counter_c @lb11))
)

(let ((@lb12 @x9))
(ite (is-FStar.Pervasives.V @lb12)

;; def=Ariadne.fst(176,12-176,27); use=Ariadne.fst(200,2-200,6)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x10
@x4)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb11)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb11))))


;; def=Ariadne.fst(177,9-177,41); use=Ariadne.fst(200,2-200,6)
(or 
;; def=Ariadne.fst(177,9-177,23); use=Ariadne.fst(200,2-200,6)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x10
@x4)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x7
@x4))


;; def=Ariadne.fst(177,27-177,41); use=Ariadne.fst(200,2-200,6)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x10
@x4)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb11)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb11))))
)
)))
))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(200,2-200,6)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(200,2-200,6)
(ApplyTT (ApplyTT @x2
@x9)
@x10)
)
)
 
;;no pats
:qid @query.6))
)

(ite (is-FStar.Pervasives.E @lb8)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(197,15-200,10)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(197,15-200,10)
(ApplyTT (ApplyTT @x2
(FStar.Pervasives.E Prims.unit
(FStar.Pervasives.E_e @lb8)))
@x7)
)

(ite (is-FStar.Pervasives.Err @lb8)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(197,15-200,10)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(197,15-200,10)
(ApplyTT (ApplyTT @x2
(FStar.Pervasives.Err Prims.unit
(FStar.Pervasives.Err_msg @lb8)))
@x7)
)

Unreachable)))))
 
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
; QUERY ID: (Ariadne.store, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_f8666440faa91836cc5a13998af863fc, constructor_distinct_Ariadne.Writing, data_elim_Ariadne.Counter, disc_equation_Ariadne.Ok, disc_equation_Ariadne.Writing, disc_equation_FStar.Pervasives.V, equation_Ariadne.ctr, equation_Ariadne.index, equation_Ariadne.pre0, equation_Ariadne.pre1, equation_Ariadne.preorder_, equation_Ariadne.state, equation_Ariadne.step0, equation_Ariadne.step1, equation_FStar.ST.mref, equation_Prims.nat, fuel_guarded_inversion_Ariadne.counter, fuel_guarded_inversion_FStar.Pervasives.result, int_inversion, kinding_Ariadne.counter@tok, projection_inverse_Ariadne.Counter_c, projection_inverse_Ariadne.Protect_c, projection_inverse_Ariadne.Writing_old, projection_inverse_Ariadne.Writing_written, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1, refinement_interpretation_Tm_refine_e33ef751d600ad1c7f71142479103c47, refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011, string_inversion, typing_Ariadne.preorder_, typing_FStar.Monotonic.Heap.sel, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let store


; <Start encoding let store>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Ariadne.store (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Ariadne.store@tok () Term)

; </end encoding let store>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Pervasives.__proj__V__item__v; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,8-520,9); use=FStar.Pervasives.fsti(520,8-520,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_refine_9db520b26a7f39c5a01493a3f375290d @x0)))
(HasType (FStar.Pervasives.__proj__V__item__v @x0
@x1)
@x0))
 

:pattern ((FStar.Pervasives.__proj__V__item__v @x0
@x1))
:qid typing_FStar.Pervasives.__proj__V__item__v))

:named typing_FStar.Pervasives.__proj__V__item__v))
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
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Ariadne.__proj__Protect__item__c; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,13-105,14); use=Ariadne.fst(105,13-105,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Ariadne.protected)
(HasType (Ariadne.__proj__Protect__item__c @x0)
Ariadne.ctr))
 

:pattern ((Ariadne.__proj__Protect__item__c @x0))
:qid typing_Ariadne.__proj__Protect__item__c))

:named typing_Ariadne.__proj__Protect__item__c))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.__proj__V__item__v; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_9db520b26a7f39c5a01493a3f375290d @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_9db520b26a7f39c5a01493a3f375290d @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_9db520b26a7f39c5a01493a3f375290d))

:named refinement_kinding_Tm_refine_9db520b26a7f39c5a01493a3f375290d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Pervasives.__proj__V__item__v; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_9db520b26a7f39c5a01493a3f375290d @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Pervasives.result @x2))

;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(BoxBool_proj_0 (FStar.Pervasives.uu___is_V @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_9db520b26a7f39c5a01493a3f375290d @x2)))
:qid refinement_interpretation_Tm_refine_9db520b26a7f39c5a01493a3f375290d))

:named refinement_interpretation_Tm_refine_9db520b26a7f39c5a01493a3f375290d))
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
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name FStar.Pervasives.__proj__V__item__v; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,8-520,9); use=FStar.Pervasives.fsti(520,8-520,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Pervasives.__proj__V__item__v @x0
@x1)
(FStar.Pervasives.V_v @x1))
 

:pattern ((FStar.Pervasives.__proj__V__item__v @x0
@x1))
:qid proj_equation_FStar.Pervasives.V_v))

:named proj_equation_FStar.Pervasives.V_v))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name Ariadne.__proj__Protect__item__c; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(105,13-105,14); use=Ariadne.fst(105,13-105,14)
(forall ((@x0 Term))
 (! (= (Ariadne.__proj__Protect__item__c @x0)
(Ariadne.Protect_c @x0))
 

:pattern ((Ariadne.__proj__Protect__item__c @x0))
:qid proj_equation_Ariadne.Protect_c))

:named proj_equation_Ariadne.Protect_c))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_9db520b26a7f39c5a01493a3f375290d
;;; Fact-ids: Name FStar.Pervasives.__proj__V__item__v; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(520,4-520,5); use=FStar.Pervasives.fsti(520,4-520,5)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_9db520b26a7f39c5a01493a3f375290d @x0)))
(Valid (Prims.hasEq (FStar.Pervasives.result @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_9db520b26a7f39c5a01493a3f375290d @x0))))
:qid haseqTm_refine_9db520b26a7f39c5a01493a3f375290d))

:named haseqTm_refine_9db520b26a7f39c5a01493a3f375290d))
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

; Starting query at Ariadne.fst(204,0-218,3)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Ariadne.protected)
;   (last_saved: Ariadne.backup p.c)
;   (h0: FStar.Monotonic.Heap.heap)
;   (r: FStar.Pervasives.result (FStar.Pervasives.Native.option Ariadne.state))
;   (h1: FStar.Monotonic.Heap.heap).
;   (*  - Could not prove post-condition
; *)
;   forall (b: Ariadne.ctr) (b: Ariadne.key b).
;     p == Ariadne.Protect b b ==>
;     (forall (any_result: Ariadne.counter).
;         FStar.Monotonic.Heap.sel h0 b == any_result ==>
;         (forall (b: Ariadne.index) (b: Ariadne.case).
;             FStar.Monotonic.Heap.sel h0 b == Ariadne.Counter b b ==>
;             (forall (any_result: Ariadne.counter).
;                 FStar.Monotonic.Heap.sel h1 b == any_result ==>
;                 (forall (b: Ariadne.index) (b: Ariadne.case).
;                     FStar.Monotonic.Heap.sel h1 b == Ariadne.Counter b b ==>
;                     (forall (k: Prims.pure_post Type0).
;                         (forall (x: Type0). {:pattern Prims.guard_free (k x)}
;                             Prims.auto_squash (k x)) ==>
;                         ~(V? r && None? r.v) ==>
;                         (forall (b: Ariadne.state).
;                             r == FStar.Pervasives.V (FStar.Pervasives.Native.Some b) ==>
;                             b == Ariadne.Ok b ==>
;                             (forall (k: Prims.pure_post Prims.logical).
;                                 (forall (x: Prims.logical). {:pattern Prims.guard_free (k x)}
;                                     Prims.auto_squash (k x)) ==>
;                                 ~(Ok? b) /\ ~(Writing? b) /\ ~(Recover? b) /\ ~(Crash? b) ==>
;                                 Prims.l_False)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `val Ariadne.recover`

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
;; def=dummy(0,0-0,0); use=Ariadne.fst(204,0-218,3)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Ariadne.protected)
(HasType @x1
(Ariadne.backup (Ariadne.__proj__Protect__item__c @x0)))
(HasType @x2
FStar.Monotonic.Heap.heap)
(HasType @x3
(FStar.Pervasives.result (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))))
(HasType @x4
FStar.Monotonic.Heap.heap))

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Ariadne.ctr)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Ariadne.key @x5))

;; def=Ariadne.fst(207,6-207,17); use=Ariadne.fst(204,15-204,82)
(= @x0
(Ariadne.Protect @x5
@x6))
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(204,15-204,82)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Ariadne.counter)

;; def=Ariadne.fst(208,6-208,29); use=Ariadne.fst(204,15-204,82)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x5)
@x7)
)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Ariadne.index)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Ariadne.case)

;; def=Ariadne.fst(208,6-208,18); use=Ariadne.fst(204,15-204,82)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x5)
(Ariadne.Counter @x8
@x9))
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(204,15-204,82)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Ariadne.counter)

;; def=Ariadne.fst(209,6-209,29); use=Ariadne.fst(204,15-204,82)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
@x5)
@x10)
)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x11 Term))
 (! (implies (HasType @x11
Ariadne.index)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
Ariadne.case)

;; def=Ariadne.fst(209,6-209,18); use=Ariadne.fst(204,15-204,82)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
@x5)
(Ariadne.Counter @x11
@x12))
)

;; def=dummy(0,0-0,0); use=Ariadne.fst(204,15-204,82)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(Prims.pure_post Tm_type))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(204,15-204,82)
(forall ((@x14 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(204,15-204,82)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(204,15-204,82)
(ApplyTT @x13
@x14)
)

 

:pattern ((ApplyTT @x13
@x14))
:qid @query.10))


;; def=Prims.fst(389,19-389,21); use=Ariadne.fst(204,15-204,82)
(not 
;; def=Ariadne.fst(206,16-211,5); use=Ariadne.fst(204,15-204,82)
(and (BoxBool_proj_0 (FStar.Pervasives.uu___is_V (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
@x3))
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_None (Ariadne.state Dummy_value)
(FStar.Pervasives.__proj__V__item__v (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
@x3))))
)
)

;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(204,15-204,82)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Ariadne.state Dummy_value))

;; def=Ariadne.fst(206,16-212,15); use=Ariadne.fst(204,15-204,82)
(= @x3
(FStar.Pervasives.V (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.Native.Some (Ariadne.state Dummy_value)
@x14)))


;; def=Ariadne.fst(213,4-213,15); use=Ariadne.fst(204,15-204,82)
(= @x12
(Ariadne.Ok @x14))
)

;; def=dummy(0,0-0,0); use=Ariadne.fst(204,15-204,82)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Prims.pure_post Prims.logical))

;; def=Prims.fst(402,27-402,88); use=Ariadne.fst(204,15-204,82)
(forall ((@x16 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(204,15-204,82)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Ariadne.fst(204,15-204,82)
(ApplyTT @x15
@x16)
)

 

:pattern ((ApplyTT @x15
@x16))
:qid @query.13))


;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(not 
;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(BoxBool_proj_0 (Ariadne.uu___is_Ok @x9))
)


;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(not 
;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(BoxBool_proj_0 (Ariadne.uu___is_Writing @x9))
)


;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(not 
;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(BoxBool_proj_0 (Ariadne.uu___is_Recover @x9))
)


;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(not 
;; def=Ariadne.fst(208,16-208,18); use=Ariadne.fst(204,15-204,82)
(BoxBool_proj_0 (Ariadne.uu___is_Crash @x9))
)
)
label_1)
 
;;no pats
:qid @query.12))
)
 
;;no pats
:qid @query.11))
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
; QUERY ID: (Ariadne.recover, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_Ariadne.Crash, disc_equation_Ariadne.Ok, disc_equation_Ariadne.Recover, disc_equation_Ariadne.Writing, fuel_guarded_inversion_Ariadne.case, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val Ariadne.recover


; <Skipped val Ariadne.recover/>

(push) ;; push{2

; Starting query at Ariadne.fst(220,26-232,11)

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


(declare-fun Tm_refine_4b8a60781cb0be58c337462002c97367 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(226,4-226,10)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_4b8a60781cb0be58c337462002c97367 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_4b8a60781cb0be58c337462002c97367 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_4b8a60781cb0be58c337462002c97367))

:named refinement_kinding_Tm_refine_4b8a60781cb0be58c337462002c97367))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(226,4-226,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4b8a60781cb0be58c337462002c97367 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)

;; def=FStar.MRef.fsti(44,25-44,36); use=Ariadne.fst(226,4-226,10)
(Valid 
;; def=FStar.MRef.fsti(44,25-44,36); use=Ariadne.fst(226,4-226,10)
(FStar.ST.witnessed (Ariadne.saved_backup @x2
@x3))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4b8a60781cb0be58c337462002c97367 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_4b8a60781cb0be58c337462002c97367))

:named refinement_interpretation_Tm_refine_4b8a60781cb0be58c337462002c97367))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4b8a60781cb0be58c337462002c97367
;;; Fact-ids: 
(assert (! 
;; def=FStar.ST.fst(75,66-75,73); use=Ariadne.fst(226,4-226,10)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4b8a60781cb0be58c337462002c97367 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4b8a60781cb0be58c337462002c97367 @x0
@x1))))
:qid haseqTm_refine_4b8a60781cb0be58c337462002c97367))

:named haseqTm_refine_4b8a60781cb0be58c337462002c97367))
(declare-fun Tm_refine_f67d546da9881cfa74376ca29779f011 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(227,4-227,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_f67d546da9881cfa74376ca29779f011))

:named refinement_kinding_Tm_refine_f67d546da9881cfa74376ca29779f011))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(227,4-227,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb5 @x4))
(let ((@lb6 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb5))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(227,4-227,8)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(227,4-227,8)
(Ariadne.pre0 (Ariadne.Counter_c @lb6)
@x2)
)
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011))

:named refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f67d546da9881cfa74376ca29779f011
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(227,4-227,8)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f67d546da9881cfa74376ca29779f011 @x0
@x1
@x2))))
:qid haseqTm_refine_f67d546da9881cfa74376ca29779f011))

:named haseqTm_refine_f67d546da9881cfa74376ca29779f011))
(declare-fun Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(228,4-228,8)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_kinding_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(228,4-228,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
@x3)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(228,4-228,8)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(228,4-228,8)
(Ariadne.pre1 (Ariadne.Counter_c @lb4))
)
)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_cf033fa1d66fb0cf90de40898b4185e1
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(228,4-228,8)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x0
@x1))))
:qid haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))

:named haseqTm_refine_cf033fa1d66fb0cf90de40898b4185e1))


;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Ariadne.saved_backup@tok))
:named @kick_partial_app_ad896d0e8d82261179a8985e5cc87171))

; Encoding query formula : forall (p: Ariadne.protected) (last_saved: Ariadne.backup p.c).
;   (*  - Could not prove post-condition
; *)
;   forall (p:
;     FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
;       (FStar.Pervasives.Native.option Ariadne.state))
;     (h: FStar.Monotonic.Heap.heap).
;     (forall (ra: FStar.Pervasives.result (FStar.Pervasives.Native.option Ariadne.state))
;         (h1: FStar.Monotonic.Heap.heap).
;         (let Ariadne.Protect c _ = p in
;           (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h c in
;             (let Ariadne.Counter _ c1 = FStar.Monotonic.Heap.sel h1 c in
;               (match ra with
;                 | FStar.Pervasives.V (FStar.Pervasives.Native.None ) -> h == h1
;                 | FStar.Pervasives.V (FStar.Pervasives.Native.Some w1) ->
;                   c1 == Ariadne.Ok w1 /\
;                   (match c0 with
;                     | Ariadne.Ok w0 -> w1 = w0
;                     | Ariadne.Writing v0 v0' -> w1 = v0 \/ w1 = v0'
;                     | Ariadne.Recover v0 v0' -> w1 = v0 \/ w1 = v0'
;                     | Ariadne.Crash v0 v0' -> w1 = v0 \/ w1 = v0')
;                 | _ -> Prims.l_True)
;               <:
;               Type0)
;             <:
;             Type0)
;           <:
;           Type0) ==>
;         p ra h1) ==>
;     (forall (b: Ariadne.ctr) (b: Ariadne.key b).
;         p == Ariadne.Protect b b ==>
;         (forall (b: Ariadne.index) (b: Ariadne.state).
;             last_saved == (b, b) ==>
;             (forall (b: Ariadne.index) (b: Ariadne.case).
;                 FStar.Monotonic.Heap.sel h b == Ariadne.Counter b b ==>
;                 Prims.hasEq Ariadne.index /\
;                 (forall (any_result: Type0).
;                     Ariadne.index == any_result ==>
;                     (forall (any_result: Prims.bool).
;                         b = b == any_result ==>
;                         (forall (k:
;                             FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
;                               (FStar.Pervasives.Native.option Ariadne.state)).
;                             (forall (x:
;                                 FStar.Pervasives.result (FStar.Pervasives.Native.option Ariadne.state
;                                     ))
;                                 (h: FStar.Monotonic.Heap.heap).
;                                 {:pattern Prims.guard_free (k x h)}
;                                 p x h ==> k x h) ==>
;                             (b = b == true ==>
;                               Prims.auto_squash (FStar.ST.stable (Ariadne.saved_backup b last_saved)
;                                 ) /\
;                               (forall (return_val:
;                                   p: (_: FStar.Monotonic.Heap.heap -> Type0){FStar.ST.stable p}).
;                                   return_val == Ariadne.saved_backup b last_saved ==>
;                                   FStar.ST.witnessed (Ariadne.saved_backup b last_saved) /\
;                                   (forall (a: Prims.unit)
;                                       (h1:
;                                       _:
;                                       FStar.Monotonic.Heap.heap
;                                         {FStar.ST.witnessed (Ariadne.saved_backup b last_saved)}).
;                                       h == h1 /\ Ariadne.saved_backup b last_saved h1 ==>
;                                       (let Ariadne.Protect c _ = p in
;                                         (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h1 c in
;                                           Ariadne.pre0 c0 b)
;                                         <:
;                                         Type0) /\
;                                       (forall (ra: FStar.Pervasives.result Prims.unit)
;                                           (h1:
;                                           _:
;                                           FStar.Monotonic.Heap.heap
;                                             { (let Ariadne.Protect c _ = p in
;                                                 (let Ariadne.Counter _ c0 =
;                                                     FStar.Monotonic.Heap.sel h1 c
;                                                   in
;                                                   Ariadne.pre0 c0 b)
;                                                 <:
;                                                 Type0)
;                                               <:
;                                               Type0 }).
;                                           (let Ariadne.Protect c _ = p in
;                                             (let Ariadne.Counter n c0 =
;                                                 FStar.Monotonic.Heap.sel h1 c
;                                               in
;                                               Ariadne.pre0 c0 b /\
;                                               FStar.Monotonic.Heap.sel h1 c ==
;                                               Ariadne.Counter n (Ariadne.step0 c0 b))
;                                             <:
;                                             Type0) ==>
;                                           (match ra with
;                                             | FStar.Pervasives.V _ ->
;                                               (let Ariadne.Counter _ c0 =
;                                                   FStar.Monotonic.Heap.sel h1 b
;                                                 in
;                                                 Ariadne.pre1 c0) /\
;                                               (forall (ra: FStar.Pervasives.result Prims.unit)
;                                                   (h1:
;                                                   _:
;                                                   FStar.Monotonic.Heap.heap
;                                                     { (let Ariadne.Counter _ c0 =
;                                                           FStar.Monotonic.Heap.sel h1 b
;                                                         in
;                                                         Ariadne.pre1 c0)
;                                                       <:
;                                                       Type0 }).
;                                                   (let Ariadne.Counter n0 c0 =
;                                                       FStar.Monotonic.Heap.sel h1 b
;                                                     in
;                                                     Ariadne.pre1 c0 /\
;                                                     (match ra with
;                                                       | FStar.Pervasives.V _ ->
;                                                         FStar.Monotonic.Heap.sel h1 b ==
;                                                         Ariadne.Counter (n0 + 1) (Ariadne.step1 c0)
;                                                       | _ ->
;                                                         FStar.Monotonic.Heap.sel h1 b ==
;                                                         FStar.Monotonic.Heap.sel h1 b \/
;                                                         FStar.Monotonic.Heap.sel h1 b ==
;                                                         Ariadne.Counter (n0 + 1) (Ariadne.step1 c0))
;                                                   ) ==>
;                                                   (match ra with
;                                                     | FStar.Pervasives.V _ ->
;                                                       (let Ariadne.Protect c _ = p in
;                                                         (let Ariadne.Counter _ c0 =
;                                                             FStar.Monotonic.Heap.sel h1 c
;                                                           in
;                                                           Ariadne.pre0 c0 b)
;                                                         <:
;                                                         Type0) /\
;                                                       (forall (ra:
;                                                           FStar.Pervasives.result Prims.unit)
;                                                           (h1:
;                                                           _:
;                                                           FStar.Monotonic.Heap.heap
;                                                             { (let Ariadne.Protect c _ = p in
;                                                                 (let Ariadne.Counter _ c0 =
;                                                                     FStar.Monotonic.Heap.sel h1 c
;                                                                   in
;                                                                   Ariadne.pre0 c0 b)
;                                                                 <:
;                                                                 Type0)
;                                                               <:
;                                                               Type0 }).
;                                                           (let Ariadne.Protect c _ = p in
;                                                             (let Ariadne.Counter n c0 =
;                                                                 FStar.Monotonic.Heap.sel h1 c
;                                                               in
;                                                               Ariadne.pre0 c0 b /\
;                                                               FStar.Monotonic.Heap.sel h1 c ==
;                                                               Ariadne.Counter n (Ariadne.step0 c0 b)
;                                                             )
;                                                             <:
;                                                             Type0) ==>
;                                                           (match ra with
;                                                             | FStar.Pervasives.V _ ->
;                                                               (let Ariadne.Counter _ c0 =
;                                                                   FStar.Monotonic.Heap.sel h1 b
;                                                                 in
;                                                                 Ariadne.pre1 c0) /\
;                                                               (forall (ra:
;                                                                   FStar.Pervasives.result Prims.unit)
;                                                                   (h1:
;                                                                   _:
;                                                                   FStar.Monotonic.Heap.heap
;                                                                     { (let Ariadne.Counter _ c0 =
;                                                                           FStar.Monotonic.Heap.sel h1
;                                                                             b
;                                                                         in
;                                                                         Ariadne.pre1 c0)
;                                                                       <:
;                                                                       Type0 }).
;                                                                   (let Ariadne.Counter n0 c0 =
;                                                                       FStar.Monotonic.Heap.sel h1 b
;                                                                     in
;                                                                     Ariadne.pre1 c0 /\
;                                                                     (match ra with
;                                                                       | FStar.Pervasives.V _ ->
;                                                                         FStar.Monotonic.Heap.sel h1
;                                                                           b ==
;                                                                         Ariadne.Counter (n0 + 1)
;                                                                           (Ariadne.step1 c0)
;                                                                       | _ ->
;                                                                         FStar.Monotonic.Heap.sel h1
;                                                                           b ==
;                                                                         FStar.Monotonic.Heap.sel h1
;                                                                           b \/
;                                                                         FStar.Monotonic.Heap.sel h1
;                                                                           b ==
;                                                                         Ariadne.Counter (n0 + 1)
;                                                                           (Ariadne.step1 c0))) ==>
;                                                                   (match ra with
;                                                                     | FStar.Pervasives.V _ ->
;                                                                       k (FStar.Pervasives.V
;                                                                           (FStar.Pervasives.Native.Some
;                                                                             b))
;                                                                         h1
;                                                                     | FStar.Pervasives.E e ->
;                                                                       k (FStar.Pervasives.E e) h1
;                                                                     | FStar.Pervasives.Err msg ->
;                                                                       k (FStar.Pervasives.Err msg)
;                                                                         h1))
;                                                               <:
;                                                               Prims.GTot Type0
;                                                             | FStar.Pervasives.E e ->
;                                                               k (FStar.Pervasives.E e) h1
;                                                             | FStar.Pervasives.Err msg ->
;                                                               k (FStar.Pervasives.Err msg) h1))
;                                                       <:
;                                                       Prims.GTot Type0
;                                                     | FStar.Pervasives.E e ->
;                                                       k (FStar.Pervasives.E e) h1
;                                                     | FStar.Pervasives.Err msg ->
;                                                       k (FStar.Pervasives.Err msg) h1))
;                                               <:
;                                               Prims.GTot Type0
;                                             | FStar.Pervasives.E e -> k (FStar.Pervasives.E e) h1
;                                             | FStar.Pervasives.Err msg ->
;                                               k (FStar.Pervasives.Err msg) h1))))) /\
;                             (~(b = b = true) ==>
;                               (forall (b: Prims.bool).
;                                   b = b == b ==>
;                                   (forall (any_result: FStar.Pervasives.Native.option Ariadne.state)
;                                     .
;                                       any_result == FStar.Pervasives.Native.None ==>
;                                       (forall (return_val:
;                                           FStar.Pervasives.Native.option Ariadne.state).
;                                           return_val == any_result ==>
;                                           k (FStar.Pervasives.V return_val) h)))))
;                         <:
;                         Type0))
;                 <:
;                 Prims.GTot Type0)
;             <:
;             Prims.GTot Type0)
;         <:
;         Prims.GTot Type0)


; Context: While encoding a query
; While typechecking the top-level declaration `let recover`

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
Ariadne.protected)
(HasType @x1
(Ariadne.backup (Ariadne.__proj__Protect__item__c @x0))))

;; def=FStar.Pervasives.fsti(672,2-672,64); use=FStar.Pervasives.fsti(695,15-695,27)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
(FStar.Pervasives.Native.option (Ariadne.state Dummy_value))))
(HasType @x3
FStar.Monotonic.Heap.heap)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(220,26-232,11)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (or label_1
(HasType @x4
(FStar.Pervasives.result (FStar.Pervasives.Native.option (Ariadne.state Dummy_value)))))
(or label_2
(HasType @x5
FStar.Monotonic.Heap.heap))
(let ((@lb6 @x0))
(let ((@lb7 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
(Ariadne.Protect_c @lb6))))
(let ((@lb8 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x5
(Ariadne.Protect_c @lb6))))
(let ((@lb9 @x4))
(ite (and (is-FStar.Pervasives.V @lb9)
(is-FStar.Pervasives.Native.None (FStar.Pervasives.V_v @lb9)))

;; def=Ariadne.fst(211,14-211,22); use=Ariadne.fst(220,26-232,11)
(or label_3

;; def=Ariadne.fst(211,14-211,22); use=Ariadne.fst(220,26-232,11)
(= @x3
@x5)
)

(implies (and (is-FStar.Pervasives.V @lb9)
(is-FStar.Pervasives.Native.Some (FStar.Pervasives.V_v @lb9)))

;; def=Ariadne.fst(212,19-216,79); use=Ariadne.fst(220,26-232,11)
(and 
;; def=Ariadne.fst(213,4-213,15); use=Ariadne.fst(220,26-232,11)
(or label_4

;; def=Ariadne.fst(213,4-213,15); use=Ariadne.fst(220,26-232,11)
(= (Ariadne.Counter_c @lb8)
(Ariadne.Ok (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))))
)

(let ((@lb10 (Ariadne.Counter_c @lb7)))
(ite (is-Ariadne.Ok @lb10)

;; def=Ariadne.fst(215,15-215,22); use=Ariadne.fst(220,26-232,11)
(or label_5

;; def=Ariadne.fst(215,15-215,22); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Ok_saved @lb10))
)

(ite (is-Ariadne.Writing @lb10)

;; def=Ariadne.fst(216,57-216,76); use=Ariadne.fst(220,26-232,11)
(or label_6

;; def=Ariadne.fst(216,57-216,64); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Writing_written @lb10))


;; def=Ariadne.fst(216,68-216,76); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Writing_old @lb10))
)

(ite (is-Ariadne.Recover @lb10)

;; def=Ariadne.fst(216,57-216,76); use=Ariadne.fst(220,26-232,11)
(or label_7

;; def=Ariadne.fst(216,57-216,64); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Recover_read @lb10))


;; def=Ariadne.fst(216,68-216,76); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Recover_other @lb10))
)

(ite (is-Ariadne.Crash @lb10)

;; def=Ariadne.fst(216,57-216,76); use=Ariadne.fst(220,26-232,11)
(or label_8

;; def=Ariadne.fst(216,57-216,64); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Crash_read @lb10))


;; def=Ariadne.fst(216,68-216,76); use=Ariadne.fst(220,26-232,11)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb9))
(Ariadne.Crash_other @lb10))
)

Unreachable))))))
)))))))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
 

:pattern (
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x2
@x4)
@x5)
)
)
:qid @query.2))
)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(220,26-232,11)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Ariadne.ctr)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(220,26-232,11)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Ariadne.key @x4))

;; def=Ariadne.fst(221,6-221,17); use=Ariadne.fst(221,6-221,17)
(= @x0
(Ariadne.Protect @x4
@x5))
)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(220,26-232,11)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Ariadne.index)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(220,26-232,11)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
(Ariadne.state Dummy_value))

;; def=Ariadne.fst(222,6-222,10); use=Ariadne.fst(222,6-222,10)
(= @x1
(FStar.Pervasives.Native.Mktuple2 Ariadne.index
(Ariadne.state Dummy_value)
@x6
@x7))
)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(220,26-232,11)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Ariadne.index)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(220,26-232,11)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Ariadne.case)

;; def=Ariadne.fst(223,6-223,18); use=Ariadne.fst(223,6-223,18)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x3
@x4)
(Ariadne.Counter @x8
@x9))
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(220,26-232,11)
(and 
;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(224,9-224,10)
(or label_9

;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(224,9-224,10)
(Valid 
;; def=Prims.fst(73,23-73,30); use=Ariadne.fst(224,9-224,10)
(Prims.hasEq Ariadne.index)
)
)


;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(220,26-232,11)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Tm_type)

;; def=Prims.fst(588,31-588,32); use=Ariadne.fst(220,26-232,11)
(= Ariadne.index
@x10)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(220,26-232,11)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.bool)

;; def=Ariadne.fst(224,5-224,10); use=Ariadne.fst(224,5-224,10)
(= (Prims.op_Equality Ariadne.index
@x6
@x8)
@x11)
)

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(220,26-232,11)
(forall ((@x12 Term))
 (! (implies (and (HasType @x12
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
(FStar.Pervasives.Native.option (Ariadne.state Dummy_value))))

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(220,26-232,11)
(forall ((@x13 Term) (@x14 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x2
@x13)
@x14)
)


;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
@x13)
@x14)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x12
@x13)
@x14))
:qid @query.12))
)

;; def=FStar.Pervasives.fsti(661,7-661,50); use=Ariadne.fst(220,26-232,11)
(and (implies 
;; def=Ariadne.fst(224,5-224,10); use=Ariadne.fst(224,5-224,10)
(= (Prims.op_Equality Ariadne.index
@x6
@x8)
(BoxBool true))


;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(220,26-232,11)
(and 
;; def=FStar.MRef.fsti(42,29-42,40); use=Ariadne.fst(226,11-226,38)
(or label_10

;; def=FStar.MRef.fsti(42,29-42,40); use=Ariadne.fst(226,11-226,38)
(Valid 
;; def=FStar.MRef.fsti(42,29-42,40); use=Ariadne.fst(226,11-226,38)
(FStar.ST.stable (Ariadne.saved_backup @x4
@x1))
)
)


;; def=Prims.fst(356,2-356,58); use=Ariadne.fst(220,26-232,11)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0)

;; def=Prims.fst(356,26-356,41); use=Ariadne.fst(220,26-232,11)
(= @x13
(Ariadne.saved_backup @x4
@x1))
)

;; def=FStar.ST.fst(76,41-76,87); use=Ariadne.fst(226,4-226,10)
(and 
;; def=FStar.MRef.fsti(44,25-44,36); use=Ariadne.fst(226,4-226,10)
(or label_11

;; def=FStar.MRef.fsti(44,25-44,36); use=Ariadne.fst(226,4-226,10)
(Valid 
;; def=FStar.MRef.fsti(44,25-44,36); use=Ariadne.fst(226,4-226,10)
(FStar.ST.witnessed (Ariadne.saved_backup @x4
@x1))
)
)


;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(226,4-226,10)
(forall ((@x14 Term) (@x15 Term))
 (! (implies (and (HasType @x14
Prims.unit)
(HasType @x15
(Tm_refine_4b8a60781cb0be58c337462002c97367 @x4
@x1))

;; def=FStar.MRef.fsti(45,29-45,37); use=Ariadne.fst(226,4-226,10)
(= @x3
@x15)


;; def=FStar.MRef.fsti(45,41-45,45); use=Ariadne.fst(226,4-226,10)
(Valid 
;; def=FStar.MRef.fsti(45,41-45,45); use=Ariadne.fst(226,4-226,10)
(ApplyTT (ApplyTT (ApplyTT Ariadne.saved_backup@tok
@x4)
@x1)
@x15)
)
)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(227,4-227,8)
(and (let ((@lb16 @x0))
(let ((@lb17 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x15
(Ariadne.Protect_c @lb16))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(227,4-227,8)
(or label_12

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(227,4-227,8)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(227,4-227,8)
(Ariadne.pre0 (Ariadne.Counter_c @lb17)
@x7)
)
)
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(227,4-227,8)
(forall ((@x16 Term) (@x17 Term))
 (! (implies (and (HasType @x16
(FStar.Pervasives.result Prims.unit))
(HasType @x17
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x7
@x15
@x0))
(let ((@lb18 @x0))
(let ((@lb19 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x15
(Ariadne.Protect_c @lb18))))

;; def=Ariadne.fst(142,2-144,27); use=Ariadne.fst(227,4-227,8)
(and 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(227,4-227,8)
(Valid 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(227,4-227,8)
(Ariadne.pre0 (Ariadne.Counter_c @lb19)
@x7)
)


;; def=Ariadne.fst(144,2-144,26); use=Ariadne.fst(227,4-227,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x17
(Ariadne.Protect_c @lb18))
(Ariadne.Counter (Ariadne.Counter_n @lb19)
(Ariadne.step0 (Ariadne.Counter_c @lb19)
@x7)))
)
)))
(let ((@lb18 @x16))
(ite (is-FStar.Pervasives.V @lb18)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(228,4-228,8)
(and (let ((@lb19 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x17
@x4)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(228,4-228,8)
(or label_13

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(228,4-228,8)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(228,4-228,8)
(Ariadne.pre1 (Ariadne.Counter_c @lb19))
)
)
)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(228,4-228,8)
(forall ((@x19 Term) (@x20 Term))
 (! (implies (and (HasType @x19
(FStar.Pervasives.result Prims.unit))
(HasType @x20
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x17
@x4))
(let ((@lb21 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x17
@x4)))

;; def=Ariadne.fst(172,2-177,43); use=Ariadne.fst(228,4-228,8)
(and 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(228,4-228,8)
(Valid 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(228,4-228,8)
(Ariadne.pre1 (Ariadne.Counter_c @lb21))
)

(let ((@lb22 @x19))
(ite (is-FStar.Pervasives.V @lb22)

;; def=Ariadne.fst(176,12-176,27); use=Ariadne.fst(228,4-228,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x20
@x4)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb21)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb21))))


;; def=Ariadne.fst(177,9-177,41); use=Ariadne.fst(228,4-228,8)
(or 
;; def=Ariadne.fst(177,9-177,23); use=Ariadne.fst(228,4-228,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x20
@x4)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x17
@x4))


;; def=Ariadne.fst(177,27-177,41); use=Ariadne.fst(228,4-228,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x20
@x4)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb21)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb21))))
)
)))
))
(let ((@lb21 @x19))
(ite (is-FStar.Pervasives.V @lb21)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(229,4-229,8)
(and (let ((@lb22 @x0))
(let ((@lb23 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x20
(Ariadne.Protect_c @lb22))))

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(229,4-229,8)
(or label_14

;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(229,4-229,8)
(Valid 
;; def=Ariadne.fst(138,2-138,11); use=Ariadne.fst(229,4-229,8)
(Ariadne.pre0 (Ariadne.Counter_c @lb23)
@x7)
)
)
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(229,4-229,8)
(forall ((@x22 Term) (@x23 Term))
 (! (implies (and (HasType @x22
(FStar.Pervasives.result Prims.unit))
(HasType @x23
(Tm_refine_f67d546da9881cfa74376ca29779f011 @x7
@x20
@x0))
(let ((@lb24 @x0))
(let ((@lb25 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x20
(Ariadne.Protect_c @lb24))))

;; def=Ariadne.fst(142,2-144,27); use=Ariadne.fst(229,4-229,8)
(and 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(229,4-229,8)
(Valid 
;; def=Ariadne.fst(142,2-142,11); use=Ariadne.fst(229,4-229,8)
(Ariadne.pre0 (Ariadne.Counter_c @lb25)
@x7)
)


;; def=Ariadne.fst(144,2-144,26); use=Ariadne.fst(229,4-229,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x23
(Ariadne.Protect_c @lb24))
(Ariadne.Counter (Ariadne.Counter_n @lb25)
(Ariadne.step0 (Ariadne.Counter_c @lb25)
@x7)))
)
)))
(let ((@lb24 @x22))
(ite (is-FStar.Pervasives.V @lb24)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(230,4-230,8)
(and (let ((@lb25 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x23
@x4)))

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(230,4-230,8)
(or label_15

;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(230,4-230,8)
(Valid 
;; def=Ariadne.fst(168,2-168,9); use=Ariadne.fst(230,4-230,8)
(Ariadne.pre1 (Ariadne.Counter_c @lb25))
)
)
)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(230,4-230,8)
(forall ((@x25 Term) (@x26 Term))
 (! (implies (and (HasType @x25
(FStar.Pervasives.result Prims.unit))
(HasType @x26
(Tm_refine_cf033fa1d66fb0cf90de40898b4185e1 @x23
@x4))
(let ((@lb27 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x23
@x4)))

;; def=Ariadne.fst(172,2-177,43); use=Ariadne.fst(230,4-230,8)
(and 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(230,4-230,8)
(Valid 
;; def=Ariadne.fst(172,2-172,9); use=Ariadne.fst(230,4-230,8)
(Ariadne.pre1 (Ariadne.Counter_c @lb27))
)

(let ((@lb28 @x25))
(ite (is-FStar.Pervasives.V @lb28)

;; def=Ariadne.fst(176,12-176,27); use=Ariadne.fst(230,4-230,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x26
@x4)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb27)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb27))))


;; def=Ariadne.fst(177,9-177,41); use=Ariadne.fst(230,4-230,8)
(or 
;; def=Ariadne.fst(177,9-177,23); use=Ariadne.fst(230,4-230,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x26
@x4)
(FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x23
@x4))


;; def=Ariadne.fst(177,27-177,41); use=Ariadne.fst(230,4-230,8)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x26
@x4)
(Ariadne.Counter (Prims.op_Addition (Ariadne.Counter_n @lb27)
(BoxInt 1))
(Ariadne.step1 (Ariadne.Counter_c @lb27))))
)
)))
))
(let ((@lb27 @x25))
(ite (is-FStar.Pervasives.V @lb27)

;; def=FStar.Pervasives.fsti(649,19-649,29); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(649,19-649,29); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.V (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.Native.Some (Ariadne.state Dummy_value)
@x7)))
@x26)
)

(ite (is-FStar.Pervasives.E @lb27)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.E (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.E_e @lb27)))
@x26)
)

(ite (is-FStar.Pervasives.Err @lb27)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.Err (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.Err_msg @lb27)))
@x26)
)

Unreachable)))))
 
;;no pats
:qid @query.18))
)

(ite (is-FStar.Pervasives.E @lb24)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.E (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.E_e @lb24)))
@x23)
)

(ite (is-FStar.Pervasives.Err @lb24)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.Err (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.Err_msg @lb24)))
@x23)
)

Unreachable)))))
 
;;no pats
:qid @query.17))
)

(ite (is-FStar.Pervasives.E @lb21)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.E (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.E_e @lb21)))
@x20)
)

(ite (is-FStar.Pervasives.Err @lb21)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.Err (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.Err_msg @lb21)))
@x20)
)

Unreachable)))))
 
;;no pats
:qid @query.16))
)

(ite (is-FStar.Pervasives.E @lb18)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.E (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.E_e @lb18)))
@x17)
)

(ite (is-FStar.Pervasives.Err @lb18)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.Err (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
(FStar.Pervasives.Err_msg @lb18)))
@x17)
)

Unreachable)))))
 
;;no pats
:qid @query.15))
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
;; def=FStar.Pervasives.fsti(661,27-661,29); use=Ariadne.fst(220,26-232,11)
(not 
;; def=Ariadne.fst(224,5-224,10); use=Ariadne.fst(224,5-224,10)
(= (Prims.op_Equality Ariadne.index
@x6
@x8)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(220,26-232,11)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
Prims.bool)

;; def=Ariadne.fst(224,5-232,11); use=Ariadne.fst(224,5-232,11)
(= (Prims.op_Equality Ariadne.index
@x6
@x8)
@x13)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(220,26-232,11)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(FStar.Pervasives.Native.option (Ariadne.state Dummy_value)))

;; def=Ariadne.fst(204,68-232,11); use=Ariadne.fst(220,26-232,11)
(= @x14
(FStar.Pervasives.Native.None (Ariadne.state Dummy_value)))
)

;; def=Prims.fst(356,2-356,58); use=Ariadne.fst(220,26-232,11)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(FStar.Pervasives.Native.option (Ariadne.state Dummy_value)))

;; def=Prims.fst(356,26-356,41); use=Ariadne.fst(220,26-232,11)
(= @x15
@x14)
)

;; def=FStar.All.fsti(31,87-31,93); use=Ariadne.fst(220,26-232,11)
(Valid 
;; def=FStar.All.fsti(31,87-31,93); use=Ariadne.fst(220,26-232,11)
(ApplyTT (ApplyTT @x12
(FStar.Pervasives.V (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))
@x15))
@x3)
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
; QUERY ID: (Ariadne.recover, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, Prims_pretyping_f8666440faa91836cc5a13998af863fc, b2t_def, constructor_distinct_Ariadne.Crash, constructor_distinct_Ariadne.Ok, constructor_distinct_Ariadne.Recover, constructor_distinct_Ariadne.Writing, constructor_distinct_FStar.Pervasives.E, constructor_distinct_FStar.Pervasives.Err, constructor_distinct_FStar.Pervasives.Native.None, constructor_distinct_FStar.Pervasives.Native.Some, constructor_distinct_FStar.Pervasives.V, data_elim_Ariadne.Crash, data_elim_Ariadne.Recover, data_elim_FStar.Pervasives.E, data_elim_FStar.Pervasives.Err, data_typing_intro_FStar.Pervasives.E@tok, data_typing_intro_FStar.Pervasives.Err@tok, data_typing_intro_FStar.Pervasives.Native.Some@tok, data_typing_intro_FStar.Pervasives.V@tok, disc_equation_Ariadne.Crash, disc_equation_Ariadne.Writing, equation_Ariadne.backup, equation_Ariadne.index, equation_Ariadne.pre0, equation_Ariadne.pre1, equation_Ariadne.saved, equation_Ariadne.saved_backup, equation_Ariadne.state, equation_Ariadne.step0, equation_Ariadne.step1, equation_Prims.eqtype, equation_Prims.nat, false_interp, fuel_guarded_inversion_Ariadne.case, fuel_guarded_inversion_FStar.Pervasives.result, function_token_typing_Ariadne.saved_backup, function_token_typing_Prims.__cache_version_number__, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, interpretation_Tm_abs_a5ca6fe12225dcddc723177173d17b3f, kinding_FStar.Pervasives.Native.option@tok, l_and-interp, l_or-interp, primitive_Prims.op_Addition, primitive_Prims.op_Equality, primitive_Prims.op_LessThan, proj_equation_Ariadne.Protect_c, projection_inverse_Ariadne.Counter_c, projection_inverse_Ariadne.Counter_n, projection_inverse_Ariadne.Crash_other, projection_inverse_Ariadne.Crash_read, projection_inverse_Ariadne.Ok_saved, projection_inverse_Ariadne.Protect_c, projection_inverse_Ariadne.Recover_other, projection_inverse_Ariadne.Recover_read, projection_inverse_Ariadne.Writing_old, projection_inverse_Ariadne.Writing_written, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_FStar.Pervasives.Native.None_a, projection_inverse_FStar.Pervasives.Native.Some_v, projection_inverse_FStar.Pervasives.V_a, projection_inverse_FStar.Pervasives.V_v, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_4187e98250438914a336576d12992752, refinement_interpretation_Tm_refine_c2f42e9a3f2bec3324f8f24cd373d5e0, refinement_interpretation_Tm_refine_cf033fa1d66fb0cf90de40898b4185e1, refinement_interpretation_Tm_refine_e55319c085bf178a09f5c6b692f5d239, refinement_interpretation_Tm_refine_f67d546da9881cfa74376ca29779f011, string_inversion, typing_Ariadne.saved_backup, typing_Ariadne.step0, typing_Ariadne.step1, typing_Prims.int, typing_Prims.string, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let recover


; <Start encoding let recover>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Ariadne.recover (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Ariadne.recover@tok () Term)

; </end encoding let recover>


; encoding sigelt let trivial


; <Start encoding let trivial>

(declare-fun Ariadne.trivial (Term) Term)

(declare-fun Ariadne.trivial@tok () Term)
(declare-fun Non_total_Tm_arrow_07721b6ab35d51d8fe8f049c153b3e75 (Term) Term)

; </end encoding let trivial>


; encoding sigelt val Ariadne.example


; <Skipped val Ariadne.example/>

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
;;; Fact-ids: Name Ariadne.trivial; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(236,5-236,12); use=Ariadne.fst(236,5-236,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Ariadne.trivial @x0)
Tm_type))
 

:pattern ((Ariadne.trivial @x0))
:qid typing_Ariadne.trivial))

:named typing_Ariadne.trivial))
;;;;;;;;;;;;;;;;string typing
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (forall ((@u0 FString))
 (! (HasType (BoxString @u0)
Prims.string)
 

:pattern ((BoxString @u0))
:qid string_typing))
:named string_typing))
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name Ariadne.trivial; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(236,13-236,32); use=Ariadne.fst(236,18-236,32)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Non_total_Tm_arrow_07721b6ab35d51d8fe8f049c153b3e75 @x0)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_07721b6ab35d51d8fe8f049c153b3e75 @x0)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_07721b6ab35d51d8fe8f049c153b3e75))

:named non_total_function_typing_Non_total_Tm_arrow_07721b6ab35d51d8fe8f049c153b3e75))
;;;;;;;;;;;;;;;;Equation for Ariadne.trivial
;;; Fact-ids: Name Ariadne.trivial; Namespace Ariadne
(assert (! 
;; def=Ariadne.fst(236,5-236,12); use=Ariadne.fst(236,5-236,12)
(forall ((@x0 Term))
 (! (= (Ariadne.trivial @x0)
(Non_total_Tm_arrow_07721b6ab35d51d8fe8f049c153b3e75 @x0))
 

:pattern ((Ariadne.trivial @x0))
:qid equation_Ariadne.trivial))

:named equation_Ariadne.trivial))
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
(push) ;; push{2

; Starting query at Ariadne.fst(238,20-248,9)

(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_02bb29ef48b588a48b43851dc34efce0 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(241,2-241,7)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_02bb29ef48b588a48b43851dc34efce0))

:named refinement_kinding_Tm_refine_02bb29ef48b588a48b43851dc34efce0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(241,2-241,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x3))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.Heap.heap)
(let ((@lb4 @x3))
(let ((@lb5 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x2
(Ariadne.Protect_c @lb4))))

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(241,2-241,7)
(BoxBool_proj_0 (Ariadne.uu___is_Ok (Ariadne.Counter_c @lb5)))
))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0))

:named refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_02bb29ef48b588a48b43851dc34efce0
;;; Fact-ids: 
(assert (! 
;; def=FStar.All.fsti(34,68-34,75); use=Ariadne.fst(241,2-241,7)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1)))
(Valid (Prims.hasEq FStar.Monotonic.Heap.heap)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x0
@x1))))
:qid haseqTm_refine_02bb29ef48b588a48b43851dc34efce0))

:named haseqTm_refine_02bb29ef48b588a48b43851dc34efce0))


; Encoding query formula : forall (attack: Ariadne.trivial Ariadne.ctr).
;   (*  - Could not prove post-condition
; *)
;   forall (p: FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap Prims.unit)
;     (h: FStar.Monotonic.Heap.heap).
;     (forall (ra: FStar.Pervasives.result Prims.unit) (h1: FStar.Monotonic.Heap.heap).
;         Prims.auto_squash (p ra h1)) ==>
;     (forall (a: Ariadne.protected) (h1: FStar.Monotonic.Heap.heap).
;         (let Ariadne.Protect c _ = a in
;           FStar.Monotonic.Heap.sel h1 c == Ariadne.Counter 0 (Ariadne.Ok "hello")) ==>
;         (forall (b: Ariadne.ctr) (b: Ariadne.key b).
;             a == Ariadne.Protect b b ==>
;             (let Ariadne.Protect c _ = a in
;               (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h1 c in
;                 Ok? c0)
;               <:
;               Type0) /\
;             (forall (ra: FStar.Pervasives.result Prims.unit)
;                 (h1:
;                 _:
;                 FStar.Monotonic.Heap.heap
;                   { (let Ariadne.Protect c _ = a in
;                       (let Ariadne.Counter _ c0 = FStar.Monotonic.Heap.sel h1 c in
;                         Ok? c0)
;                       <:
;                       Type0)
;                     <:
;                     Type0 }).
;                 (let Ariadne.Protect c _ = a in
;                   (let Ariadne.Counter _ c1 = FStar.Monotonic.Heap.sel h1 c in
;                     V? ra ==> c1 = Ariadne.Ok "world")
;                   <:
;                   Type0) ==>
;                 (match ra with
;                   | FStar.Pervasives.V _ ->
;                     (forall (ra: FStar.Pervasives.result Prims.unit)
;                         (h1: FStar.Monotonic.Heap.heap).
;                         Prims.auto_squash (match ra with
;                             | FStar.Pervasives.V _ ->
;                               (forall (k:
;                                   FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap Prims.unit).
;                                   (forall (x: FStar.Pervasives.result Prims.unit)
;                                       (h: FStar.Monotonic.Heap.heap).
;                                       {:pattern Prims.guard_free (k x h)}
;                                       p x h ==> k x h) ==>
;                                   (forall (b: Ariadne.backup b) (b: Prims.list (Ariadne.backup b)).
;                                       FStar.Monotonic.Heap.sel h1 b == b :: b ==>
;                                       (FStar.ST.witnessed (Ariadne.saved_backup b b) ==>
;                                         FStar.ST.witnessed (Ariadne.saved_backup a.c b)) /\
;                                       (forall (any_result: Ariadne.backup b).
;                                           b == any_result ==>
;                                           (forall (ra:
;                                               FStar.Pervasives.result (FStar.Pervasives.Native.option
;                                                     Ariadne.state))
;                                               (h1: FStar.Monotonic.Heap.heap).
;                                               (let Ariadne.Protect c _ = a in
;                                                 (let Ariadne.Counter _ c0 =
;                                                     FStar.Monotonic.Heap.sel h1 c
;                                                   in
;                                                   (let Ariadne.Counter _ c1 =
;                                                       FStar.Monotonic.Heap.sel h1 c
;                                                     in
;                                                     (match ra with
;                                                       | FStar.Pervasives.V
;                                                         (FStar.Pervasives.Native.None ) ->
;                                                         h1 == h1
;                                                       | FStar.Pervasives.V
;                                                         (FStar.Pervasives.Native.Some w1) ->
;                                                         c1 == Ariadne.Ok w1 /\
;                                                         (match c0 with
;                                                           | Ariadne.Ok w0 -> w1 = w0
;                                                           | Ariadne.Writing v0 v0' ->
;                                                             w1 = v0 \/ w1 = v0'
;                                                           | Ariadne.Recover v0 v0' ->
;                                                             w1 = v0 \/ w1 = v0'
;                                                           | Ariadne.Crash v0 v0' ->
;                                                             w1 = v0 \/ w1 = v0')
;                                                       | _ -> Prims.l_True)
;                                                     <:
;                                                     Type0)
;                                                   <:
;                                                   Type0)
;                                                 <:
;                                                 Type0) ==>
;                                               (match ra with
;                                                 | FStar.Pervasives.V v ->
;                                                   forall (k:
;                                                     FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
;                                                       Prims.unit).
;                                                     (forall (x: FStar.Pervasives.result Prims.unit)
;                                                         (h: FStar.Monotonic.Heap.heap).
;                                                         {:pattern Prims.guard_free (k x h)}
;                                                         k x h ==> k x h) ==>
;                                                     (forall (b: Ariadne.state).
;                                                         v == FStar.Pervasives.Native.Some b ==>
;                                                         (let Ariadne.Protect c _ = a in
;                                                           (let Ariadne.Counter _ c0 =
;                                                               FStar.Monotonic.Heap.sel h1 c
;                                                             in
;                                                             Ok? c0)
;                                                           <:
;                                                           Type0) /\
;                                                         (forall (ra:
;                                                             FStar.Pervasives.result Prims.unit)
;                                                             (h1:
;                                                             _:
;                                                             FStar.Monotonic.Heap.heap
;                                                               { (let Ariadne.Protect c _ = a in
;                                                                   (let Ariadne.Counter _ c0 =
;                                                                       FStar.Monotonic.Heap.sel h1 c
;                                                                     in
;                                                                     Ok? c0)
;                                                                   <:
;                                                                   Type0)
;                                                                 <:
;                                                                 Type0 }).
;                                                             (let Ariadne.Protect c _ = a in
;                                                               (let Ariadne.Counter _ c1 =
;                                                                   FStar.Monotonic.Heap.sel h1 c
;                                                                 in
;                                                                 V? ra ==> c1 = Ariadne.Ok "!\n")
;                                                               <:
;                                                               Type0) ==>
;                                                             k ra h1)
;                                                         <:
;                                                         Prims.GTot Type0) /\
;                                                     (~(Some? v) ==>
;                                                       (forall (b:
;                                                           FStar.Pervasives.Native.option Ariadne.state
;                                                           ).
;                                                           v == b ==>
;                                                           (forall (any_result: Prims.unit).
;                                                               k (FStar.Pervasives.V any_result) h1))
;                                                     )
;                                                 | FStar.Pervasives.E e ->
;                                                   k (FStar.Pervasives.E e) h1
;                                                 | FStar.Pervasives.Err msg ->
;                                                   k (FStar.Pervasives.Err msg) h1))
;                                           <:
;                                           Type0)
;                                       <:
;                                       Prims.GTot Type0) /\
;                                   (~(Cons? (FStar.Monotonic.Heap.sel h1 b)) ==>
;                                     (forall (b: Prims.list (Ariadne.backup b)).
;                                         FStar.Monotonic.Heap.sel h1 b == b ==>
;                                         (forall (any_result: Prims.unit).
;                                             k (FStar.Pervasives.V any_result) h1))))
;                               <:
;                               Prims.GTot Type0
;                             | FStar.Pervasives.E e -> p (FStar.Pervasives.E e) h1
;                             | FStar.Pervasives.Err msg -> p (FStar.Pervasives.Err msg) h1))
;                     <:
;                     Prims.GTot Type0
;                   | FStar.Pervasives.E e -> p (FStar.Pervasives.E e) h1
;                   | FStar.Pervasives.Err msg -> p (FStar.Pervasives.Err msg) h1))
;             <:
;             Prims.GTot Type0))


; Context: While encoding a query
; While typechecking the top-level declaration `let example`

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
(Ariadne.trivial Ariadne.ctr))

;; def=FStar.Pervasives.fsti(672,2-672,64); use=FStar.Pervasives.fsti(695,15-695,27)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))
(HasType @x2
FStar.Monotonic.Heap.heap)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(238,20-248,9)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (or label_1
(HasType @x3
(FStar.Pervasives.result Prims.unit)))
(or label_2
(HasType @x4
FStar.Monotonic.Heap.heap)))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
 

:pattern (
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
@x3)
@x4)
)
)
:qid @query.2))
)

;; def=FStar.ST.fst(76,50-76,87); use=Ariadne.fst(239,10-239,16)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
Ariadne.protected)
(HasType @x4
FStar.Monotonic.Heap.heap)
(let ((@lb5 @x3))

;; def=Ariadne.fst(109,38-109,66); use=Ariadne.fst(239,10-239,16)
(= (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
(Ariadne.Protect_c @lb5))
(Ariadne.Counter (BoxInt 0)
(Ariadne.Ok (BoxString (FString_const 0)))))
))

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(238,20-248,9)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Ariadne.ctr)

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(238,20-248,9)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(Ariadne.key @x5))

;; def=Ariadne.fst(240,6-240,17); use=Ariadne.fst(240,6-240,17)
(= @x3
(Ariadne.Protect @x5
@x6))
)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(241,2-241,7)
(and (let ((@lb7 @x3))
(let ((@lb8 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x4
(Ariadne.Protect_c @lb7))))

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(241,2-241,7)
(or label_3

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(241,2-241,7)
(BoxBool_proj_0 (Ariadne.uu___is_Ok (Ariadne.Counter_c @lb8)))
)
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(241,2-241,7)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.result Prims.unit))
(HasType @x8
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x4
@x3))
(let ((@lb9 @x3))
(let ((@lb10 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x8
(Ariadne.Protect_c @lb9))))

;; def=Ariadne.fst(195,2-195,20); use=Ariadne.fst(241,2-241,7)
(implies 
;; def=Ariadne.fst(195,2-195,6); use=Ariadne.fst(241,2-241,7)
(BoxBool_proj_0 (FStar.Pervasives.uu___is_V Prims.unit
@x7))


;; def=Ariadne.fst(195,11-195,20); use=Ariadne.fst(241,2-241,7)
(= (Ariadne.Counter_c @lb10)
(Ariadne.Ok (BoxString (FString_const 1))))
)
)))
(let ((@lb9 @x7))
(ite (is-FStar.Pervasives.V @lb9)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(238,20-248,9)
(forall ((@x10 Term) (@x11 Term))
 (! (implies (and (HasType @x10
(FStar.Pervasives.result Prims.unit))
(HasType @x11
FStar.Monotonic.Heap.heap))
(let ((@lb12 @x10))
(ite (is-FStar.Pervasives.V @lb12)

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(238,20-248,9)
(forall ((@x13 Term))
 (! (implies (and (HasType @x13
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(238,20-248,9)
(forall ((@x14 Term) (@x15 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
@x14)
@x15)
)


;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x13
@x14)
@x15)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x13
@x14)
@x15))
:qid @query.9))
)

;; def=FStar.Pervasives.fsti(661,7-661,50); use=Ariadne.fst(238,20-248,9)
(and 
;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(238,20-248,9)
(forall ((@x14 Term))
 (! (implies (HasType @x14
(Ariadne.backup @x5))

;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(238,20-248,9)
(forall ((@x15 Term))
 (! (implies (and (HasType @x15
(Prims.list (Ariadne.backup @x5)))

;; def=Ariadne.fst(243,8-244,8); use=Ariadne.fst(243,8-244,8)
(= (FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x5))
(Ariadne.log_pre @x5)
@x11
@x6)
(Prims.Cons (Ariadne.backup @x5)
@x14
@x15))
)

;; def=Prims.fst(459,77-459,89); use=Ariadne.fst(238,20-248,9)
(and (implies 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(245,21-245,22)
(Valid 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(245,21-245,22)
(FStar.ST.witnessed (Ariadne.saved_backup @x5
@x14))
)


;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(245,21-245,22)
(or label_4

;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(245,21-245,22)
(Valid 
;; def=Ariadne.fst(90,31-90,59); use=Ariadne.fst(245,21-245,22)
(FStar.ST.witnessed (Ariadne.saved_backup (Ariadne.__proj__Protect__item__c @x3)
@x14))
)
)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(238,20-248,9)
(forall ((@x16 Term))
 (! (implies (and (HasType @x16
(Ariadne.backup @x5))

;; def=Ariadne.fst(204,28-244,5); use=Ariadne.fst(238,20-248,9)
(= @x14
@x16)
)

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(245,11-245,18)
(forall ((@x17 Term) (@x18 Term))
 (! (implies (and (HasType @x17
(FStar.Pervasives.result (FStar.Pervasives.Native.option (Ariadne.state Dummy_value))))
(HasType @x18
FStar.Monotonic.Heap.heap)
(let ((@lb19 @x3))
(let ((@lb20 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x11
(Ariadne.Protect_c @lb19))))
(let ((@lb21 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x18
(Ariadne.Protect_c @lb19))))
(let ((@lb22 @x17))
(ite (and (is-FStar.Pervasives.V @lb22)
(is-FStar.Pervasives.Native.None (FStar.Pervasives.V_v @lb22)))

;; def=Ariadne.fst(211,14-211,22); use=Ariadne.fst(245,11-245,18)
(= @x11
@x18)

(implies (and (is-FStar.Pervasives.V @lb22)
(is-FStar.Pervasives.Native.Some (FStar.Pervasives.V_v @lb22)))

;; def=Ariadne.fst(212,19-216,79); use=Ariadne.fst(245,11-245,18)
(and 
;; def=Ariadne.fst(213,4-213,15); use=Ariadne.fst(245,11-245,18)
(= (Ariadne.Counter_c @lb21)
(Ariadne.Ok (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))))

(let ((@lb23 (Ariadne.Counter_c @lb20)))
(ite (is-Ariadne.Ok @lb23)

;; def=Ariadne.fst(215,15-215,22); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Ok_saved @lb23))

(ite (is-Ariadne.Writing @lb23)

;; def=Ariadne.fst(216,57-216,76); use=Ariadne.fst(245,11-245,18)
(or 
;; def=Ariadne.fst(216,57-216,64); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Writing_written @lb23))


;; def=Ariadne.fst(216,68-216,76); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Writing_old @lb23))
)

(ite (is-Ariadne.Recover @lb23)

;; def=Ariadne.fst(216,57-216,76); use=Ariadne.fst(245,11-245,18)
(or 
;; def=Ariadne.fst(216,57-216,64); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Recover_read @lb23))


;; def=Ariadne.fst(216,68-216,76); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Recover_other @lb23))
)

(ite (is-Ariadne.Crash @lb23)

;; def=Ariadne.fst(216,57-216,76); use=Ariadne.fst(245,11-245,18)
(or 
;; def=Ariadne.fst(216,57-216,64); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Crash_read @lb23))


;; def=Ariadne.fst(216,68-216,76); use=Ariadne.fst(245,11-245,18)
(= (FStar.Pervasives.Native.Some_v (FStar.Pervasives.V_v @lb22))
(Ariadne.Crash_other @lb23))
)

Unreachable))))))
)))))))
(let ((@lb19 @x17))
(ite (is-FStar.Pervasives.V @lb19)

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(238,20-248,9)
(forall ((@x20 Term))
 (! (implies (and (HasType @x20
(FStar.Pervasives.all_post_h FStar.Monotonic.Heap.heap
Prims.unit))

;; def=FStar.Pervasives.fsti(666,2-667,100); use=Ariadne.fst(238,20-248,9)
(forall ((@x21 Term) (@x22 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(667,69-667,77); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x13
@x21)
@x22)
)


;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(667,82-667,87); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x20
@x21)
@x22)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x20
@x21)
@x22))
:qid @query.15))
)

;; def=FStar.Pervasives.fsti(661,7-661,50); use=Ariadne.fst(238,20-248,9)
(and 
;; def=FStar.Pervasives.fsti(681,7-681,32); use=Ariadne.fst(238,20-248,9)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(Ariadne.state Dummy_value))

;; def=Ariadne.fst(245,11-246,12); use=Ariadne.fst(245,11-246,12)
(= (FStar.Pervasives.V_v @lb19)
(FStar.Pervasives.Native.Some (Ariadne.state Dummy_value)
@x21))
)

;; def=FStar.All.fsti(36,40-36,89); use=Ariadne.fst(246,16-246,21)
(and (let ((@lb22 @x3))
(let ((@lb23 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x18
(Ariadne.Protect_c @lb22))))

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(246,16-246,21)
(or label_5

;; def=Ariadne.fst(191,2-191,8); use=Ariadne.fst(246,16-246,21)
(BoxBool_proj_0 (Ariadne.uu___is_Ok (Ariadne.Counter_c @lb23)))
)
))

;; def=FStar.All.fsti(36,49-36,89); use=Ariadne.fst(246,16-246,21)
(forall ((@x22 Term) (@x23 Term))
 (! (implies (and (HasType @x22
(FStar.Pervasives.result Prims.unit))
(HasType @x23
(Tm_refine_02bb29ef48b588a48b43851dc34efce0 @x18
@x3))
(let ((@lb24 @x3))
(let ((@lb25 (FStar.Monotonic.Heap.sel Ariadne.counter
(Ariadne.preorder_ Dummy_value)
@x23
(Ariadne.Protect_c @lb24))))

;; def=Ariadne.fst(195,2-195,20); use=Ariadne.fst(246,16-246,21)
(implies 
;; def=Ariadne.fst(195,2-195,6); use=Ariadne.fst(246,16-246,21)
(BoxBool_proj_0 (FStar.Pervasives.uu___is_V Prims.unit
@x22))


;; def=Ariadne.fst(195,11-195,20); use=Ariadne.fst(246,16-246,21)
(= (Ariadne.Counter_c @lb25)
(Ariadne.Ok (BoxString (FString_const 2))))
)
)))

;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(246,16-246,21)
(Valid 
;; def=FStar.All.fsti(36,81-36,88); use=Ariadne.fst(246,16-246,21)
(ApplyTT (ApplyTT @x20
@x22)
@x23)
)
)
 
;;no pats
:qid @query.17))
)
)
 
;;no pats
:qid @query.16))

(implies 
;; def=FStar.Pervasives.fsti(661,27-661,29); use=Ariadne.fst(238,20-248,9)
(not 
;; def=Ariadne.fst(245,11-245,22); use=Ariadne.fst(245,11-245,22)
(BoxBool_proj_0 (FStar.Pervasives.Native.uu___is_Some (Ariadne.state Dummy_value)
(FStar.Pervasives.V_v @lb19)))
)


;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(238,20-248,9)
(forall ((@x21 Term))
 (! (implies (and (HasType @x21
(FStar.Pervasives.Native.option (Ariadne.state Dummy_value)))

;; def=Ariadne.fst(245,11-247,7); use=Ariadne.fst(245,11-247,7)
(= (FStar.Pervasives.V_v @lb19)
@x21)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(238,20-248,9)
(forall ((@x22 Term))
 (! (implies (HasType @x22
Prims.unit)

;; def=FStar.All.fsti(31,87-31,93); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.All.fsti(31,87-31,93); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x20
(FStar.Pervasives.V Prims.unit
@x22))
@x18)
)
)
 
;;no pats
:qid @query.19))
)
 
;;no pats
:qid @query.18))
))
)
 
;;no pats
:qid @query.14))

(ite (is-FStar.Pervasives.E @lb19)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x13
(FStar.Pervasives.E Prims.unit
(FStar.Pervasives.E_e @lb19)))
@x18)
)

(ite (is-FStar.Pervasives.Err @lb19)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x13
(FStar.Pervasives.Err Prims.unit
(FStar.Pervasives.Err_msg @lb19)))
@x18)
)

Unreachable)))))
 
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

(implies 
;; def=FStar.Pervasives.fsti(661,27-661,29); use=Ariadne.fst(238,20-248,9)
(not 
;; def=Ariadne.fst(243,8-243,14); use=Ariadne.fst(243,8-243,14)
(BoxBool_proj_0 (Prims.uu___is_Cons (Ariadne.backup @x5)
(FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x5))
(Ariadne.log_pre @x5)
@x11
@x6)))
)


;; def=Prims.fst(413,99-413,120); use=Ariadne.fst(238,20-248,9)
(forall ((@x14 Term))
 (! (implies (and (HasType @x14
(Prims.list (Ariadne.backup @x5)))

;; def=Ariadne.fst(243,8-248,3); use=Ariadne.fst(243,8-248,3)
(= (FStar.Monotonic.Heap.sel (Prims.list (Ariadne.backup @x5))
(Ariadne.log_pre @x5)
@x11
@x6)
@x14)
)

;; def=Prims.fst(451,66-451,102); use=Ariadne.fst(238,20-248,9)
(forall ((@x15 Term))
 (! (implies (HasType @x15
Prims.unit)

;; def=FStar.All.fsti(31,87-31,93); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.All.fsti(31,87-31,93); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x13
(FStar.Pervasives.V Prims.unit
@x15))
@x11)
)
)
 
;;no pats
:qid @query.21))
)
 
;;no pats
:qid @query.20))
))
)
 
;;no pats
:qid @query.8))

(ite (is-FStar.Pervasives.E @lb12)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
(FStar.Pervasives.E Prims.unit
(FStar.Pervasives.E_e @lb12)))
@x11)
)

(ite (is-FStar.Pervasives.Err @lb12)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
(FStar.Pervasives.Err Prims.unit
(FStar.Pervasives.Err_msg @lb12)))
@x11)
)

Unreachable)))))
 
;;no pats
:qid @query.7))

(ite (is-FStar.Pervasives.E @lb9)

;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(650,19-650,29); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
(FStar.Pervasives.E Prims.unit
(FStar.Pervasives.E_e @lb9)))
@x8)
)

(ite (is-FStar.Pervasives.Err @lb9)

;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(238,20-248,9)
(Valid 
;; def=FStar.Pervasives.fsti(651,23-651,37); use=Ariadne.fst(238,20-248,9)
(ApplyTT (ApplyTT @x1
(FStar.Pervasives.Err Prims.unit
(FStar.Pervasives.Err_msg @lb9)))
@x8)
)

Unreachable)))))
 
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
; QUERY ID: (Ariadne.example, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_f8666440faa91836cc5a13998af863fc, constructor_distinct_Ariadne.Ok, constructor_distinct_FStar.Pervasives.Native.Some, data_elim_FStar.Pervasives.E, data_elim_FStar.Pervasives.Err, data_typing_intro_FStar.Pervasives.E@tok, data_typing_intro_FStar.Pervasives.Err@tok, data_typing_intro_FStar.Pervasives.V@tok, disc_equation_Ariadne.Ok, equation_Ariadne.backup, equation_Ariadne.state, equation_Prims.eqtype, fuel_guarded_inversion_FStar.Pervasives.result, proj_equation_Ariadne.Protect_c, projection_inverse_Ariadne.Counter_c, projection_inverse_Ariadne.Ok_saved, projection_inverse_Ariadne.Protect_c, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Some_a, projection_inverse_FStar.Pervasives.Native.Some_v, refinement_interpretation_Tm_refine_02bb29ef48b588a48b43851dc34efce0, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_e55319c085bf178a09f5c6b692f5d239, string_inversion, string_typing, typing_Prims.unit, unit_inversion, unit_typing
