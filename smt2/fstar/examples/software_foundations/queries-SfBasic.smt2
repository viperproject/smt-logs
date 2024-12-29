
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

; Internals for SfBasic


; encoding sigelt type SfBasic.day


; <Start encoding type SfBasic.day>

;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.day () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Monday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Monday
(declare-fun SfBasic.Monday@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Tuesday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Tuesday
(declare-fun SfBasic.Tuesday@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Wednesday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Wednesday
(declare-fun SfBasic.Wednesday@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Thursday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Thursday
(declare-fun SfBasic.Thursday@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Friday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Friday
(declare-fun SfBasic.Friday@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Saturday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Saturday
(declare-fun SfBasic.Saturday@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.Sunday () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.Sunday
(declare-fun SfBasic.Sunday@tok () Term)

; <start constructor SfBasic.day>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.day ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
142)
(= __@x0
SfBasic.day)))

; </end constructor SfBasic.day>


; <start constructor SfBasic.Monday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Monday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
148)
(= __@x0
SfBasic.Monday)))

; </end constructor SfBasic.Monday>


; <start constructor SfBasic.Tuesday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Tuesday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
150)
(= __@x0
SfBasic.Tuesday)))

; </end constructor SfBasic.Tuesday>


; <start constructor SfBasic.Wednesday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Wednesday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
152)
(= __@x0
SfBasic.Wednesday)))

; </end constructor SfBasic.Wednesday>


; <start constructor SfBasic.Thursday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Thursday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
154)
(= __@x0
SfBasic.Thursday)))

; </end constructor SfBasic.Thursday>


; <start constructor SfBasic.Friday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Friday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
156)
(= __@x0
SfBasic.Friday)))

; </end constructor SfBasic.Friday>


; <start constructor SfBasic.Saturday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Saturday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
158)
(= __@x0
SfBasic.Saturday)))

; </end constructor SfBasic.Saturday>


; <start constructor SfBasic.Sunday>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.Sunday ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
160)
(= __@x0
SfBasic.Sunday)))

; </end constructor SfBasic.Sunday>


; </end encoding type SfBasic.day>


; encoding sigelt assume SfBasic.day__uu___haseq


; <Start encoding assume SfBasic.day__uu___haseq>


; </end encoding assume SfBasic.day__uu___haseq>


; encoding sigelt val SfBasic.uu___is_Monday


; <Start encoding val SfBasic.uu___is_Monday>

(declare-fun SfBasic.uu___is_Monday (Term) Term)
;;;;;;;;;;;;;;;;projectee: day -> Prims.bool
(declare-fun Tm_arrow_2443be06fabcdf72e6a5df3e08186d25 () Term)
(declare-fun SfBasic.uu___is_Monday@tok () Term)

; </end encoding val SfBasic.uu___is_Monday>


; encoding sigelt let uu___is_Monday


; <Skipped let uu___is_Monday/>


; encoding sigelt val SfBasic.uu___is_Tuesday


; <Start encoding val SfBasic.uu___is_Tuesday>

(declare-fun SfBasic.uu___is_Tuesday (Term) Term)

(declare-fun SfBasic.uu___is_Tuesday@tok () Term)

; </end encoding val SfBasic.uu___is_Tuesday>


; encoding sigelt let uu___is_Tuesday


; <Skipped let uu___is_Tuesday/>


; encoding sigelt val SfBasic.uu___is_Wednesday


; <Start encoding val SfBasic.uu___is_Wednesday>

(declare-fun SfBasic.uu___is_Wednesday (Term) Term)

(declare-fun SfBasic.uu___is_Wednesday@tok () Term)

; </end encoding val SfBasic.uu___is_Wednesday>


; encoding sigelt let uu___is_Wednesday


; <Skipped let uu___is_Wednesday/>


; encoding sigelt val SfBasic.uu___is_Thursday


; <Start encoding val SfBasic.uu___is_Thursday>

(declare-fun SfBasic.uu___is_Thursday (Term) Term)

(declare-fun SfBasic.uu___is_Thursday@tok () Term)

; </end encoding val SfBasic.uu___is_Thursday>


; encoding sigelt let uu___is_Thursday


; <Skipped let uu___is_Thursday/>


; encoding sigelt val SfBasic.uu___is_Friday


; <Start encoding val SfBasic.uu___is_Friday>

(declare-fun SfBasic.uu___is_Friday (Term) Term)

(declare-fun SfBasic.uu___is_Friday@tok () Term)

; </end encoding val SfBasic.uu___is_Friday>


; encoding sigelt let uu___is_Friday


; <Skipped let uu___is_Friday/>


; encoding sigelt val SfBasic.uu___is_Saturday


; <Start encoding val SfBasic.uu___is_Saturday>

(declare-fun SfBasic.uu___is_Saturday (Term) Term)

(declare-fun SfBasic.uu___is_Saturday@tok () Term)

; </end encoding val SfBasic.uu___is_Saturday>


; encoding sigelt let uu___is_Saturday


; <Skipped let uu___is_Saturday/>


; encoding sigelt val SfBasic.uu___is_Sunday


; <Start encoding val SfBasic.uu___is_Sunday>

(declare-fun SfBasic.uu___is_Sunday (Term) Term)

(declare-fun SfBasic.uu___is_Sunday@tok () Term)

; </end encoding val SfBasic.uu___is_Sunday>


; encoding sigelt let uu___is_Sunday


; <Skipped let uu___is_Sunday/>


; encoding sigelt val SfBasic.next_weekday


; <Skipped val SfBasic.next_weekday/>

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
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Wednesday@tok
SfBasic.day)
:named typing_tok_SfBasic.Wednesday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Tuesday@tok
SfBasic.day)
:named typing_tok_SfBasic.Tuesday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Thursday@tok
SfBasic.day)
:named typing_tok_SfBasic.Thursday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Sunday@tok
SfBasic.day)
:named typing_tok_SfBasic.Sunday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Saturday@tok
SfBasic.day)
:named typing_tok_SfBasic.Saturday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Monday@tok
SfBasic.day)
:named typing_tok_SfBasic.Monday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.Friday@tok
SfBasic.day)
:named typing_tok_SfBasic.Friday@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Wednesday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(26,4-26,13); use=SfBasic.fst(26,4-26,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Wednesday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Wednesday @x0))
:qid typing_SfBasic.uu___is_Wednesday))

:named typing_SfBasic.uu___is_Wednesday))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Tuesday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(25,4-25,11); use=SfBasic.fst(25,4-25,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Tuesday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Tuesday @x0))
:qid typing_SfBasic.uu___is_Tuesday))

:named typing_SfBasic.uu___is_Tuesday))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Thursday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(27,4-27,12); use=SfBasic.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Thursday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Thursday @x0))
:qid typing_SfBasic.uu___is_Thursday))

:named typing_SfBasic.uu___is_Thursday))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(30,4-30,10); use=SfBasic.fst(30,4-30,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Sunday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Sunday @x0))
:qid typing_SfBasic.uu___is_Sunday))

:named typing_SfBasic.uu___is_Sunday))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Saturday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(29,4-29,12); use=SfBasic.fst(29,4-29,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Saturday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Saturday @x0))
:qid typing_SfBasic.uu___is_Saturday))

:named typing_SfBasic.uu___is_Saturday))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Monday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(24,4-24,10); use=SfBasic.fst(24,4-24,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Monday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Monday @x0))
:qid typing_SfBasic.uu___is_Monday))

:named typing_SfBasic.uu___is_Monday))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_Friday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(28,4-28,10); use=SfBasic.fst(28,4-28,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.uu___is_Friday @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_Friday @x0))
:qid typing_SfBasic.uu___is_Friday))

:named typing_SfBasic.uu___is_Friday))
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
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named typing_Prims.eqtype))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (HasType Prims.bool
Prims.eqtype)
:named typing_Prims.bool))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (HasType SfBasic.day
Tm_type)
:named kinding_SfBasic.day@tok))
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
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
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (HasType Prims.bool
Prims.eqtype)
:named function_token_typing_Prims.bool))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(23,5-23,8); use=SfBasic.fst(23,5-23,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
SfBasic.day)
(or (is-SfBasic.Monday @x1)
(is-SfBasic.Tuesday @x1)
(is-SfBasic.Wednesday @x1)
(is-SfBasic.Thursday @x1)
(is-SfBasic.Friday @x1)
(is-SfBasic.Saturday @x1)
(is-SfBasic.Sunday @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
SfBasic.day))
:qid fuel_guarded_inversion_SfBasic.day))

:named fuel_guarded_inversion_SfBasic.day))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Wednesday@tok
SfBasic.Wednesday)
:named equality_tok_SfBasic.Wednesday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Tuesday@tok
SfBasic.Tuesday)
:named equality_tok_SfBasic.Tuesday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Thursday@tok
SfBasic.Thursday)
:named equality_tok_SfBasic.Thursday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Sunday@tok
SfBasic.Sunday)
:named equality_tok_SfBasic.Sunday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Saturday@tok
SfBasic.Saturday)
:named equality_tok_SfBasic.Saturday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Monday@tok
SfBasic.Monday)
:named equality_tok_SfBasic.Monday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= SfBasic.Friday@tok
SfBasic.Friday)
:named equality_tok_SfBasic.Friday@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Wednesday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(26,4-26,13); use=SfBasic.fst(26,4-26,13)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Wednesday @x0)
(BoxBool (is-SfBasic.Wednesday @x0)))
 

:pattern ((SfBasic.uu___is_Wednesday @x0))
:qid disc_equation_SfBasic.Wednesday))

:named disc_equation_SfBasic.Wednesday))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Tuesday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(25,4-25,11); use=SfBasic.fst(25,4-25,11)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Tuesday @x0)
(BoxBool (is-SfBasic.Tuesday @x0)))
 

:pattern ((SfBasic.uu___is_Tuesday @x0))
:qid disc_equation_SfBasic.Tuesday))

:named disc_equation_SfBasic.Tuesday))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Thursday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(27,4-27,12); use=SfBasic.fst(27,4-27,12)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Thursday @x0)
(BoxBool (is-SfBasic.Thursday @x0)))
 

:pattern ((SfBasic.uu___is_Thursday @x0))
:qid disc_equation_SfBasic.Thursday))

:named disc_equation_SfBasic.Thursday))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(30,4-30,10); use=SfBasic.fst(30,4-30,10)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Sunday @x0)
(BoxBool (is-SfBasic.Sunday @x0)))
 

:pattern ((SfBasic.uu___is_Sunday @x0))
:qid disc_equation_SfBasic.Sunday))

:named disc_equation_SfBasic.Sunday))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Saturday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(29,4-29,12); use=SfBasic.fst(29,4-29,12)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Saturday @x0)
(BoxBool (is-SfBasic.Saturday @x0)))
 

:pattern ((SfBasic.uu___is_Saturday @x0))
:qid disc_equation_SfBasic.Saturday))

:named disc_equation_SfBasic.Saturday))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Monday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(24,4-24,10); use=SfBasic.fst(24,4-24,10)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Monday @x0)
(BoxBool (is-SfBasic.Monday @x0)))
 

:pattern ((SfBasic.uu___is_Monday @x0))
:qid disc_equation_SfBasic.Monday))

:named disc_equation_SfBasic.Monday))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_Friday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(28,4-28,10); use=SfBasic.fst(28,4-28,10)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_Friday @x0)
(BoxBool (is-SfBasic.Friday @x0)))
 

:pattern ((SfBasic.uu___is_Friday @x0))
:qid disc_equation_SfBasic.Friday))

:named disc_equation_SfBasic.Friday))
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
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(26,4-26,13); use=SfBasic.fst(26,4-26,13)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Wednesday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Wednesday
SfBasic.day))
:qid data_typing_intro_SfBasic.Wednesday@tok))

:named data_typing_intro_SfBasic.Wednesday@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(25,4-25,11); use=SfBasic.fst(25,4-25,11)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Tuesday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Tuesday
SfBasic.day))
:qid data_typing_intro_SfBasic.Tuesday@tok))

:named data_typing_intro_SfBasic.Tuesday@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(27,4-27,12); use=SfBasic.fst(27,4-27,12)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Thursday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Thursday
SfBasic.day))
:qid data_typing_intro_SfBasic.Thursday@tok))

:named data_typing_intro_SfBasic.Thursday@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(30,4-30,10); use=SfBasic.fst(30,4-30,10)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Sunday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Sunday
SfBasic.day))
:qid data_typing_intro_SfBasic.Sunday@tok))

:named data_typing_intro_SfBasic.Sunday@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(29,4-29,12); use=SfBasic.fst(29,4-29,12)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Saturday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Saturday
SfBasic.day))
:qid data_typing_intro_SfBasic.Saturday@tok))

:named data_typing_intro_SfBasic.Saturday@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(24,4-24,10); use=SfBasic.fst(24,4-24,10)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Monday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Monday
SfBasic.day))
:qid data_typing_intro_SfBasic.Monday@tok))

:named data_typing_intro_SfBasic.Monday@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(28,4-28,10); use=SfBasic.fst(28,4-28,10)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.Friday
SfBasic.day)
 

:pattern ((HasTypeFuel @u0
SfBasic.Friday
SfBasic.day))
:qid data_typing_intro_SfBasic.Friday@tok))

:named data_typing_intro_SfBasic.Friday@tok))
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
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 142
(Term_constr_id SfBasic.day))
:named constructor_distinct_SfBasic.day))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 152
(Term_constr_id SfBasic.Wednesday))
:named constructor_distinct_SfBasic.Wednesday))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 150
(Term_constr_id SfBasic.Tuesday))
:named constructor_distinct_SfBasic.Tuesday))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 154
(Term_constr_id SfBasic.Thursday))
:named constructor_distinct_SfBasic.Thursday))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 160
(Term_constr_id SfBasic.Sunday))
:named constructor_distinct_SfBasic.Sunday))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 158
(Term_constr_id SfBasic.Saturday))
:named constructor_distinct_SfBasic.Saturday))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 148
(Term_constr_id SfBasic.Monday))
:named constructor_distinct_SfBasic.Monday))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! (= 156
(Term_constr_id SfBasic.Friday))
:named constructor_distinct_SfBasic.Friday))
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
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (= 107
(Term_constr_id Prims.bool))
:named constructor_distinct_Prims.bool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
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
;;;;;;;;;;;;;;;;Assumption: SfBasic.day__uu___haseq
;;; Fact-ids: Name SfBasic.day__uu___haseq; Namespace SfBasic
(assert (! (Valid (Prims.hasEq SfBasic.day))
:named assumption_SfBasic.day__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name SfBasic.day; Namespace SfBasic; Name SfBasic.Monday; Namespace SfBasic; Name SfBasic.Tuesday; Namespace SfBasic; Name SfBasic.Wednesday; Namespace SfBasic; Name SfBasic.Thursday; Namespace SfBasic; Name SfBasic.Friday; Namespace SfBasic; Name SfBasic.Saturday; Namespace SfBasic; Name SfBasic.Sunday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(23,5-23,8); use=SfBasic.fst(23,5-23,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
SfBasic.day)
(= SfBasic.day
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
SfBasic.day))
:qid SfBasic_pretyping_b2a8739c30e81108f7536c227426a349))

:named SfBasic_pretyping_b2a8739c30e81108f7536c227426a349))
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

; Starting query at SfBasic.fst(34,2-41,23)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (d: SfBasic.day).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfBasic.day).
;     (forall (x: SfBasic.day). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(Monday? d) /\ ~(Tuesday? d) /\ ~(Wednesday? d) /\ ~(Thursday? d) /\ ~(Friday? d) /\
;     ~(Saturday? d) /\ ~(Sunday? d) ==>
;     Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let next_weekday`

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
SfBasic.day)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post SfBasic.day))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(34,2-41,23)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(34,2-41,23)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(34,2-41,23)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Monday @x0))
)


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Tuesday @x0))
)


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Wednesday @x0))
)


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Thursday @x0))
)


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Friday @x0))
)


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Saturday @x0))
)


;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(not 
;; def=SfBasic.fst(33,17-33,18); use=SfBasic.fst(34,8-34,9)
(BoxBool_proj_0 (SfBasic.uu___is_Sunday @x0))
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
; QUERY ID: (SfBasic.next_weekday, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfBasic.Friday, disc_equation_SfBasic.Monday, disc_equation_SfBasic.Saturday, disc_equation_SfBasic.Sunday, disc_equation_SfBasic.Thursday, disc_equation_SfBasic.Tuesday, disc_equation_SfBasic.Wednesday, fuel_guarded_inversion_SfBasic.day, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let next_weekday


; <Start encoding let next_weekday>

(declare-fun SfBasic.next_weekday (Term) Term)
;;;;;;;;;;;;;;;;d: day -> day
(declare-fun Tm_arrow_c350b86c6279d3ba0909361d46432ee4 () Term)
(declare-fun SfBasic.next_weekday@tok () Term)

; </end encoding let next_weekday>

(push) ;; push{2

; Starting query at SfBasic.fst(43,0-44,66)

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
;; def=SfBasic.fst(43,32-44,66); use=SfBasic.fst(43,32-43,37)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.day


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_next_weekday`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(43,0-44,66)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(44,17-44,29)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(44,17-44,29)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(44,17-44,29)
(Prims.hasEq SfBasic.day)
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
; QUERY ID: (SfBasic.test_next_weekday, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.day__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_next_weekday


; <Skipped val SfBasic.test_next_weekday/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.next_weekday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(33,4-33,16); use=SfBasic.fst(33,4-33,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.day)
(HasType (SfBasic.next_weekday @x0)
SfBasic.day))
 

:pattern ((SfBasic.next_weekday @x0))
:qid typing_SfBasic.next_weekday))

:named typing_SfBasic.next_weekday))
;;;;;;;;;;;;;;;;Equation for SfBasic.next_weekday
;;; Fact-ids: Name SfBasic.next_weekday; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(33,4-33,16); use=SfBasic.fst(33,4-33,16)
(forall ((@x0 Term))
 (! (= (SfBasic.next_weekday @x0)
(let ((@lb1 @x0))
(ite (is-SfBasic.Monday @lb1)
SfBasic.Tuesday@tok
(ite (is-SfBasic.Tuesday @lb1)
SfBasic.Wednesday@tok
(ite (is-SfBasic.Wednesday @lb1)
SfBasic.Thursday@tok
(ite (is-SfBasic.Thursday @lb1)
SfBasic.Friday@tok
(ite (is-SfBasic.Friday @lb1)
SfBasic.Monday@tok
(ite (is-SfBasic.Saturday @lb1)
SfBasic.Monday@tok
(ite (is-SfBasic.Sunday @lb1)
SfBasic.Monday@tok
Tm_unit)))))))))
 

:pattern ((SfBasic.next_weekday @x0))
:qid equation_SfBasic.next_weekday))

:named equation_SfBasic.next_weekday))
(push) ;; push{2

; Starting query at SfBasic.fst(45,27-45,29)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.next_weekday (SfBasic.next_weekday SfBasic.Saturday) = SfBasic.Tuesday ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_next_weekday`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(45,27-45,29)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(44,15-44,65); use=SfBasic.fst(45,27-45,29)
(or label_2

;; def=SfBasic.fst(44,15-44,65); use=SfBasic.fst(45,27-45,29)
(= (SfBasic.next_weekday (SfBasic.next_weekday SfBasic.Saturday@tok))
SfBasic.Tuesday@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(45,27-45,29)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(45,27-45,29)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(45,27-45,29)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(45,27-45,29)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_next_weekday, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, constructor_distinct_SfBasic.Monday, constructor_distinct_SfBasic.Saturday, equality_tok_SfBasic.Monday@tok, equality_tok_SfBasic.Saturday@tok, equation_SfBasic.next_weekday

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_next_weekday


; <Start encoding let test_next_weekday>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_next_weekday (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_next_weekday@tok () Term)

; </end encoding let test_next_weekday>


; encoding sigelt type SfBasic.mbool


; <Start encoding type SfBasic.mbool>

;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.mbool () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.MTrue () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.MTrue
(declare-fun SfBasic.MTrue@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.MFalse () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.MFalse
(declare-fun SfBasic.MFalse@tok () Term)

; <start constructor SfBasic.mbool>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.mbool ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
196)
(= __@x0
SfBasic.mbool)))

; </end constructor SfBasic.mbool>


; <start constructor SfBasic.MTrue>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.MTrue ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
202)
(= __@x0
SfBasic.MTrue)))

; </end constructor SfBasic.MTrue>


; <start constructor SfBasic.MFalse>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.MFalse ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
204)
(= __@x0
SfBasic.MFalse)))

; </end constructor SfBasic.MFalse>


; </end encoding type SfBasic.mbool>


; encoding sigelt assume SfBasic.mbool__uu___haseq


; <Start encoding assume SfBasic.mbool__uu___haseq>


; </end encoding assume SfBasic.mbool__uu___haseq>


; encoding sigelt val SfBasic.uu___is_MTrue


; <Start encoding val SfBasic.uu___is_MTrue>

(declare-fun SfBasic.uu___is_MTrue (Term) Term)
;;;;;;;;;;;;;;;;projectee: mbool -> Prims.bool
(declare-fun Tm_arrow_f8a798555366ca33f4caff220d0b349b () Term)
(declare-fun SfBasic.uu___is_MTrue@tok () Term)

; </end encoding val SfBasic.uu___is_MTrue>


; encoding sigelt let uu___is_MTrue


; <Skipped let uu___is_MTrue/>


; encoding sigelt val SfBasic.uu___is_MFalse


; <Start encoding val SfBasic.uu___is_MFalse>

(declare-fun SfBasic.uu___is_MFalse (Term) Term)

(declare-fun SfBasic.uu___is_MFalse@tok () Term)

; </end encoding val SfBasic.uu___is_MFalse>


; encoding sigelt let uu___is_MFalse


; <Skipped let uu___is_MFalse/>


; encoding sigelt val SfBasic.negb


; <Skipped val SfBasic.negb/>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (HasType SfBasic.MTrue@tok
SfBasic.mbool)
:named typing_tok_SfBasic.MTrue@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (HasType SfBasic.MFalse@tok
SfBasic.mbool)
:named typing_tok_SfBasic.MFalse@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_MTrue; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(54,4-54,9); use=SfBasic.fst(54,4-54,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.mbool)
(HasType (SfBasic.uu___is_MTrue @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_MTrue @x0))
:qid typing_SfBasic.uu___is_MTrue))

:named typing_SfBasic.uu___is_MTrue))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_MFalse; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(55,4-55,10); use=SfBasic.fst(55,4-55,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.mbool)
(HasType (SfBasic.uu___is_MFalse @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_MFalse @x0))
:qid typing_SfBasic.uu___is_MFalse))

:named typing_SfBasic.uu___is_MFalse))
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (HasType SfBasic.mbool
Tm_type)
:named kinding_SfBasic.mbool@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(53,5-53,10); use=SfBasic.fst(53,5-53,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
SfBasic.mbool)
(or (is-SfBasic.MTrue @x1)
(is-SfBasic.MFalse @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
SfBasic.mbool))
:qid fuel_guarded_inversion_SfBasic.mbool))

:named fuel_guarded_inversion_SfBasic.mbool))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (= SfBasic.MTrue@tok
SfBasic.MTrue)
:named equality_tok_SfBasic.MTrue@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (= SfBasic.MFalse@tok
SfBasic.MFalse)
:named equality_tok_SfBasic.MFalse@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_MTrue; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(54,4-54,9); use=SfBasic.fst(54,4-54,9)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_MTrue @x0)
(BoxBool (is-SfBasic.MTrue @x0)))
 

:pattern ((SfBasic.uu___is_MTrue @x0))
:qid disc_equation_SfBasic.MTrue))

:named disc_equation_SfBasic.MTrue))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_MFalse; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(55,4-55,10); use=SfBasic.fst(55,4-55,10)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_MFalse @x0)
(BoxBool (is-SfBasic.MFalse @x0)))
 

:pattern ((SfBasic.uu___is_MFalse @x0))
:qid disc_equation_SfBasic.MFalse))

:named disc_equation_SfBasic.MFalse))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(54,4-54,9); use=SfBasic.fst(54,4-54,9)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.MTrue
SfBasic.mbool)
 

:pattern ((HasTypeFuel @u0
SfBasic.MTrue
SfBasic.mbool))
:qid data_typing_intro_SfBasic.MTrue@tok))

:named data_typing_intro_SfBasic.MTrue@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(55,4-55,10); use=SfBasic.fst(55,4-55,10)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.MFalse
SfBasic.mbool)
 

:pattern ((HasTypeFuel @u0
SfBasic.MFalse
SfBasic.mbool))
:qid data_typing_intro_SfBasic.MFalse@tok))

:named data_typing_intro_SfBasic.MFalse@tok))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (= 196
(Term_constr_id SfBasic.mbool))
:named constructor_distinct_SfBasic.mbool))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (= 202
(Term_constr_id SfBasic.MTrue))
:named constructor_distinct_SfBasic.MTrue))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! (= 204
(Term_constr_id SfBasic.MFalse))
:named constructor_distinct_SfBasic.MFalse))
;;;;;;;;;;;;;;;;Assumption: SfBasic.mbool__uu___haseq
;;; Fact-ids: Name SfBasic.mbool__uu___haseq; Namespace SfBasic
(assert (! (Valid (Prims.hasEq SfBasic.mbool))
:named assumption_SfBasic.mbool__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name SfBasic.mbool; Namespace SfBasic; Name SfBasic.MTrue; Namespace SfBasic; Name SfBasic.MFalse; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(53,5-53,10); use=SfBasic.fst(53,5-53,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
SfBasic.mbool)
(= SfBasic.mbool
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
SfBasic.mbool))
:qid SfBasic_pretyping_669e4ff2ba4d0c6b14feba1c6ffc728a))

:named SfBasic_pretyping_669e4ff2ba4d0c6b14feba1c6ffc728a))
(push) ;; push{2

; Starting query at SfBasic.fst(59,2-61,19)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (b: SfBasic.mbool).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfBasic.mbool).
;     (forall (x: SfBasic.mbool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(MTrue? b) /\ ~(MFalse? b) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let negb`

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
SfBasic.mbool)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post SfBasic.mbool))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(59,2-61,19)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(59,2-61,19)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(59,2-61,19)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=SfBasic.fst(58,9-58,10); use=SfBasic.fst(59,8-59,9)
(not 
;; def=SfBasic.fst(58,9-58,10); use=SfBasic.fst(59,8-59,9)
(BoxBool_proj_0 (SfBasic.uu___is_MTrue @x0))
)


;; def=SfBasic.fst(58,9-58,10); use=SfBasic.fst(59,8-59,9)
(not 
;; def=SfBasic.fst(58,9-58,10); use=SfBasic.fst(59,8-59,9)
(BoxBool_proj_0 (SfBasic.uu___is_MFalse @x0))
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
; QUERY ID: (SfBasic.negb, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfBasic.MFalse, disc_equation_SfBasic.MTrue, fuel_guarded_inversion_SfBasic.mbool, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let negb


; <Start encoding let negb>

(declare-fun SfBasic.negb (Term) Term)
;;;;;;;;;;;;;;;;b: mbool -> mbool
(declare-fun Tm_arrow_4455ab1a87a936d2cf1c6da7d030d374 () Term)
(declare-fun SfBasic.negb@tok () Term)

; </end encoding let negb>


; encoding sigelt val SfBasic.andb


; <Skipped val SfBasic.andb/>

(push) ;; push{2

; Starting query at SfBasic.fst(65,2-67,20)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (b1: SfBasic.mbool) (b2: SfBasic.mbool).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfBasic.mbool).
;     (forall (x: SfBasic.mbool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(MTrue? b1) /\ ~(MFalse? b1) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let andb`

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
SfBasic.mbool)
(HasType @x1
SfBasic.mbool))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post SfBasic.mbool))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(65,2-67,20)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(65,2-67,20)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(65,2-67,20)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))


;; def=SfBasic.fst(64,9-64,11); use=SfBasic.fst(65,8-65,10)
(not 
;; def=SfBasic.fst(64,9-64,11); use=SfBasic.fst(65,8-65,10)
(BoxBool_proj_0 (SfBasic.uu___is_MTrue @x0))
)


;; def=SfBasic.fst(64,9-64,11); use=SfBasic.fst(65,8-65,10)
(not 
;; def=SfBasic.fst(64,9-64,11); use=SfBasic.fst(65,8-65,10)
(BoxBool_proj_0 (SfBasic.uu___is_MFalse @x0))
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
; QUERY ID: (SfBasic.andb, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfBasic.MFalse, disc_equation_SfBasic.MTrue, fuel_guarded_inversion_SfBasic.mbool, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let andb


; <Start encoding let andb>

(declare-fun SfBasic.andb (Term Term) Term)
;;;;;;;;;;;;;;;;b1: mbool -> b2: mbool -> mbool
(declare-fun Tm_arrow_8dd7af72c6300e7d868d0524d4210c8d () Term)
(declare-fun SfBasic.andb@tok () Term)

; </end encoding let andb>


; encoding sigelt val SfBasic.orb


; <Skipped val SfBasic.orb/>

(push) ;; push{2

; Starting query at SfBasic.fst(71,2-73,16)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (b1: SfBasic.mbool) (b2: SfBasic.mbool).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfBasic.mbool).
;     (forall (x: SfBasic.mbool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(MTrue? b1) /\ ~(MFalse? b1) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let orb`

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
SfBasic.mbool)
(HasType @x1
SfBasic.mbool))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post SfBasic.mbool))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(71,2-73,16)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(71,2-73,16)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(71,2-73,16)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))


;; def=SfBasic.fst(70,8-70,10); use=SfBasic.fst(71,8-71,10)
(not 
;; def=SfBasic.fst(70,8-70,10); use=SfBasic.fst(71,8-71,10)
(BoxBool_proj_0 (SfBasic.uu___is_MTrue @x0))
)


;; def=SfBasic.fst(70,8-70,10); use=SfBasic.fst(71,8-71,10)
(not 
;; def=SfBasic.fst(70,8-70,10); use=SfBasic.fst(71,8-71,10)
(BoxBool_proj_0 (SfBasic.uu___is_MFalse @x0))
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
; QUERY ID: (SfBasic.orb, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfBasic.MFalse, disc_equation_SfBasic.MTrue, fuel_guarded_inversion_SfBasic.mbool, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let orb


; <Start encoding let orb>

(declare-fun SfBasic.orb (Term Term) Term)

(declare-fun SfBasic.orb@tok () Term)

; </end encoding let orb>

(push) ;; push{2

; Starting query at SfBasic.fst(75,0-76,44)

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
;; def=SfBasic.fst(75,24-76,44); use=SfBasic.fst(75,24-75,29)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_orb1`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(75,0-76,44)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(76,17-76,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(76,17-76,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(76,17-76,20)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_orb1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_orb1


; <Skipped val SfBasic.test_orb1/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.orb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(70,4-70,7); use=SfBasic.fst(70,4-70,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.mbool)
(HasType @x1
SfBasic.mbool))
(HasType (SfBasic.orb @x0
@x1)
SfBasic.mbool))
 

:pattern ((SfBasic.orb @x0
@x1))
:qid typing_SfBasic.orb))

:named typing_SfBasic.orb))
;;;;;;;;;;;;;;;;Equation for SfBasic.orb
;;; Fact-ids: Name SfBasic.orb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(70,4-70,7); use=SfBasic.fst(70,4-70,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfBasic.orb @x0
@x1)
(let ((@lb2 @x0))
(ite (is-SfBasic.MTrue @lb2)
SfBasic.MTrue@tok
(ite (is-SfBasic.MFalse @lb2)
@x1
Tm_unit))))
 

:pattern ((SfBasic.orb @x0
@x1))
:qid equation_SfBasic.orb))

:named equation_SfBasic.orb))
(push) ;; push{2

; Starting query at SfBasic.fst(77,19-77,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.orb SfBasic.MTrue SfBasic.MFalse = SfBasic.MTrue ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_orb1`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(77,19-77,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(76,15-76,43); use=SfBasic.fst(77,19-77,21)
(or label_2

;; def=SfBasic.fst(76,15-76,43); use=SfBasic.fst(77,19-77,21)
(= (SfBasic.orb SfBasic.MTrue@tok
SfBasic.MFalse@tok)
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(77,19-77,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(77,19-77,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(77,19-77,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(77,19-77,21)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_orb1, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, constructor_distinct_SfBasic.MTrue, equality_tok_SfBasic.MFalse@tok, equality_tok_SfBasic.MTrue@tok, equation_SfBasic.orb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_orb1


; <Start encoding let test_orb1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_orb1 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_orb1@tok () Term)

; </end encoding let test_orb1>

(push) ;; push{2

; Starting query at SfBasic.fst(79,0-80,46)

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
;; def=SfBasic.fst(79,24-80,46); use=SfBasic.fst(79,24-79,29)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_orb2`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(79,0-80,46)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(80,17-80,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(80,17-80,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(80,17-80,20)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_orb2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_orb2


; <Skipped val SfBasic.test_orb2/>

(push) ;; push{2

; Starting query at SfBasic.fst(81,19-81,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.orb SfBasic.MFalse SfBasic.MFalse = SfBasic.MFalse ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_orb2`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(81,19-81,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(80,15-80,45); use=SfBasic.fst(81,19-81,21)
(or label_2

;; def=SfBasic.fst(80,15-80,45); use=SfBasic.fst(81,19-81,21)
(= (SfBasic.orb SfBasic.MFalse@tok
SfBasic.MFalse@tok)
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(81,19-81,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(81,19-81,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(81,19-81,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(81,19-81,21)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_orb2, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, constructor_distinct_SfBasic.MFalse, equality_tok_SfBasic.MFalse@tok, equation_SfBasic.orb, fuel_guarded_inversion_SfBasic.mbool, typing_SfBasic.orb, typing_tok_SfBasic.MFalse@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_orb2


; <Start encoding let test_orb2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_orb2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_orb2@tok () Term)

; </end encoding let test_orb2>

(push) ;; push{2

; Starting query at SfBasic.fst(83,0-84,44)

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
;; def=SfBasic.fst(83,24-84,44); use=SfBasic.fst(83,24-83,29)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_orb3`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(83,0-84,44)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(84,17-84,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(84,17-84,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(84,17-84,20)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_orb3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_orb3


; <Skipped val SfBasic.test_orb3/>

(push) ;; push{2

; Starting query at SfBasic.fst(85,19-85,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.orb SfBasic.MFalse SfBasic.MTrue = SfBasic.MTrue ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_orb3`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(85,19-85,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(84,15-84,43); use=SfBasic.fst(85,19-85,21)
(or label_2

;; def=SfBasic.fst(84,15-84,43); use=SfBasic.fst(85,19-85,21)
(= (SfBasic.orb SfBasic.MFalse@tok
SfBasic.MTrue@tok)
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(85,19-85,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(85,19-85,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(85,19-85,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(85,19-85,21)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_orb3, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, constructor_distinct_SfBasic.MFalse, equality_tok_SfBasic.MFalse@tok, equality_tok_SfBasic.MTrue@tok, equation_SfBasic.orb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_orb3


; <Start encoding let test_orb3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_orb3 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_orb3@tok () Term)

; </end encoding let test_orb3>

(push) ;; push{2

; Starting query at SfBasic.fst(87,0-88,43)

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
;; def=SfBasic.fst(87,24-88,43); use=SfBasic.fst(87,24-87,29)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_orb4`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(87,0-88,43)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(88,17-88,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(88,17-88,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(88,17-88,20)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_orb4, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_orb4


; <Skipped val SfBasic.test_orb4/>

(push) ;; push{2

; Starting query at SfBasic.fst(89,19-89,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.orb SfBasic.MTrue SfBasic.MTrue = SfBasic.MTrue ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_orb4`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(89,19-89,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(88,15-88,42); use=SfBasic.fst(89,19-89,21)
(or label_2

;; def=SfBasic.fst(88,15-88,42); use=SfBasic.fst(89,19-89,21)
(= (SfBasic.orb SfBasic.MTrue@tok
SfBasic.MTrue@tok)
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(89,19-89,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(89,19-89,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(89,19-89,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(89,19-89,21)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_orb4, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, constructor_distinct_SfBasic.MTrue, equality_tok_SfBasic.MTrue@tok, equation_SfBasic.orb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_orb4


; <Start encoding let test_orb4>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_orb4 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_orb4@tok () Term)

; </end encoding let test_orb4>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type SfBasic.nat


; <Start encoding type SfBasic.nat>

;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.nat () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.O () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.O
(declare-fun SfBasic.O@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.S (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun SfBasic.S__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.S
(declare-fun SfBasic.S@tok () Term)
;;;;;;;;;;;;;;;;_0: nat -> nat
(declare-fun Tm_arrow_a27cfe2eff98c1354ce710efbc3ef7f7 () Term)

; <start constructor SfBasic.nat>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.nat ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
231)
(= __@x0
SfBasic.nat)))

; </end constructor SfBasic.nat>


; <start constructor SfBasic.O>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.O ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
237)
(= __@x0
SfBasic.O)))

; </end constructor SfBasic.O>


; <start constructor SfBasic.S>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.S ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
239)
(= __@x0
(SfBasic.S (SfBasic.S__0 __@x0)))))

; </end constructor SfBasic.S>


; </end encoding type SfBasic.nat>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (HasType SfBasic.O@tok
SfBasic.nat)
:named typing_tok_SfBasic.O@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(SfBasic.S @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat))
:qid subterm_ordering_SfBasic.S))

:named subterm_ordering_SfBasic.S))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@x0 Term))
 (! (= (SfBasic.S__0 (SfBasic.S @x0))
@x0)
 

:pattern ((SfBasic.S @x0))
:qid projection_inverse_SfBasic.S__0))

:named projection_inverse_SfBasic.S__0))
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (HasType SfBasic.nat
Tm_type)
:named kinding_SfBasic.nat@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(93,5-93,8); use=SfBasic.fst(93,5-93,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
SfBasic.nat)
(or (is-SfBasic.O @x1)
(is-SfBasic.S @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
SfBasic.nat))
:qid fuel_guarded_inversion_SfBasic.nat))

:named fuel_guarded_inversion_SfBasic.nat))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (= SfBasic.O@tok
SfBasic.O)
:named equality_tok_SfBasic.O@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
SfBasic.nat)
(HasTypeFuel @u0
(SfBasic.S @x1)
SfBasic.nat))
 

:pattern ((HasTypeFuel @u0
(SfBasic.S @x1)
SfBasic.nat))
:qid data_typing_intro_SfBasic.S@tok))

:named data_typing_intro_SfBasic.S@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(94,4-94,5); use=SfBasic.fst(94,4-94,5)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.O
SfBasic.nat)
 

:pattern ((HasTypeFuel @u0
SfBasic.O
SfBasic.nat))
:qid data_typing_intro_SfBasic.O@tok))

:named data_typing_intro_SfBasic.O@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat)
(HasTypeFuel @u0
@x1
SfBasic.nat))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat))
:qid data_elim_SfBasic.S))

:named data_elim_SfBasic.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (= 231
(Term_constr_id SfBasic.nat))
:named constructor_distinct_SfBasic.nat))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@x0 Term))
 (! (= 239
(Term_constr_id (SfBasic.S @x0)))
 

:pattern ((SfBasic.S @x0))
:qid constructor_distinct_SfBasic.S))

:named constructor_distinct_SfBasic.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (= 237
(Term_constr_id SfBasic.O))
:named constructor_distinct_SfBasic.O))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(93,5-93,8); use=SfBasic.fst(93,5-93,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
SfBasic.nat)
(= SfBasic.nat
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
SfBasic.nat))
:qid SfBasic_pretyping_ccd81122687c082c3642373b68717e85))

:named SfBasic_pretyping_ccd81122687c082c3642373b68717e85))
(push) ;; push{4

; Starting query at SfBasic.fst(93,0-95,18)

(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq SfBasic.nat ==>
; (forall (_0: SfBasic.nat).
;     (*  - Failed to prove that the type
;     'SfBasic.nat'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq SfBasic.nat)


; Context: While encoding a query
; While typechecking the top-level declaration `type SfBasic.nat`

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
;; def=SfBasic.fst(93,0-95,18); use=SfBasic.fst(93,0-95,18)
(Valid 
;; def=SfBasic.fst(93,0-95,18); use=SfBasic.fst(93,0-95,18)
(Prims.hasEq SfBasic.nat)
)


;; def=SfBasic.fst(93,0-95,18); use=SfBasic.fst(93,0-95,18)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.nat)

;; def=SfBasic.fst(93,0-95,18); use=SfBasic.fst(95,8-95,11)
(or label_1

;; def=SfBasic.fst(93,0-95,18); use=SfBasic.fst(93,0-95,18)
(Valid 
;; def=SfBasic.fst(93,0-95,18); use=SfBasic.fst(93,0-95,18)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.nat, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type SfBasic.nat


; <Start encoding type SfBasic.nat>

;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.nat () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.O () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.O
(declare-fun SfBasic.O@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfBasic.S (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun SfBasic.S__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfBasic.S
(declare-fun SfBasic.S@tok () Term)
;;;;;;;;;;;;;;;;_0: nat -> nat
(declare-fun Tm_arrow_a27cfe2eff98c1354ce710efbc3ef7f7 () Term)

; <start constructor SfBasic.nat>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.nat ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
243)
(= __@x0
SfBasic.nat)))

; </end constructor SfBasic.nat>


; <start constructor SfBasic.O>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.O ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
249)
(= __@x0
SfBasic.O)))

; </end constructor SfBasic.O>


; <start constructor SfBasic.S>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfBasic.S ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
251)
(= __@x0
(SfBasic.S (SfBasic.S__0 __@x0)))))

; </end constructor SfBasic.S>


; </end encoding type SfBasic.nat>


; encoding sigelt assume SfBasic.nat__uu___haseq


; <Start encoding assume SfBasic.nat__uu___haseq>


; </end encoding assume SfBasic.nat__uu___haseq>


; encoding sigelt val SfBasic.uu___is_O


; <Start encoding val SfBasic.uu___is_O>

(declare-fun SfBasic.uu___is_O (Term) Term)
;;;;;;;;;;;;;;;;projectee: nat -> Prims.bool
(declare-fun Tm_arrow_6d01458f7b7a342405bb49a32a7e2d2f () Term)
(declare-fun SfBasic.uu___is_O@tok () Term)

; </end encoding val SfBasic.uu___is_O>


; encoding sigelt let uu___is_O


; <Skipped let uu___is_O/>


; encoding sigelt val SfBasic.uu___is_S


; <Start encoding val SfBasic.uu___is_S>

(declare-fun SfBasic.uu___is_S (Term) Term)

(declare-fun SfBasic.uu___is_S@tok () Term)

; </end encoding val SfBasic.uu___is_S>


; encoding sigelt let uu___is_S


; <Skipped let uu___is_S/>


; encoding sigelt val SfBasic.__proj__S__item___0


; <Start encoding val SfBasic.__proj__S__item___0>

(declare-fun Tm_refine_b7b70964a15ac3a2f4808938f2801faf () Term)
(declare-fun SfBasic.__proj__S__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: nat{S? _} -> nat
(declare-fun Tm_arrow_35a95772a178b342cac878828b559de6 () Term)
(declare-fun SfBasic.__proj__S__item___0@tok () Term)

; </end encoding val SfBasic.__proj__S__item___0>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (HasType SfBasic.O@tok
SfBasic.nat)
:named typing_tok_SfBasic.O@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.nat)
(HasType (SfBasic.uu___is_S @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_S @x0))
:qid typing_SfBasic.uu___is_S))

:named typing_SfBasic.uu___is_S))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(SfBasic.S @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat))
:qid subterm_ordering_SfBasic.S))

:named subterm_ordering_SfBasic.S))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name SfBasic.__proj__S__item___0; Namespace SfBasic
(assert (! (HasType Tm_refine_b7b70964a15ac3a2f4808938f2801faf
Tm_type)
:named refinement_kinding_Tm_refine_b7b70964a15ac3a2f4808938f2801faf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name SfBasic.__proj__S__item___0; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b7b70964a15ac3a2f4808938f2801faf)
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(BoxBool_proj_0 (SfBasic.uu___is_S @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b7b70964a15ac3a2f4808938f2801faf))
:qid refinement_interpretation_Tm_refine_b7b70964a15ac3a2f4808938f2801faf))

:named refinement_interpretation_Tm_refine_b7b70964a15ac3a2f4808938f2801faf))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@x0 Term))
 (! (= (SfBasic.S__0 (SfBasic.S @x0))
@x0)
 

:pattern ((SfBasic.S @x0))
:qid projection_inverse_SfBasic.S__0))

:named projection_inverse_SfBasic.S__0))
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (HasType SfBasic.nat
Tm_type)
:named kinding_SfBasic.nat@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b7b70964a15ac3a2f4808938f2801faf
;;; Fact-ids: Name SfBasic.__proj__S__item___0; Namespace SfBasic
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b7b70964a15ac3a2f4808938f2801faf))
(Valid (Prims.hasEq SfBasic.nat)))
:named haseqTm_refine_b7b70964a15ac3a2f4808938f2801faf))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(93,5-93,8); use=SfBasic.fst(93,5-93,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
SfBasic.nat)
(or (is-SfBasic.O @x1)
(is-SfBasic.S @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
SfBasic.nat))
:qid fuel_guarded_inversion_SfBasic.nat))

:named fuel_guarded_inversion_SfBasic.nat))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (= SfBasic.O@tok
SfBasic.O)
:named equality_tok_SfBasic.O@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_S @x0)
(BoxBool (is-SfBasic.S @x0)))
 

:pattern ((SfBasic.uu___is_S @x0))
:qid disc_equation_SfBasic.S))

:named disc_equation_SfBasic.S))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
SfBasic.nat)
(HasTypeFuel @u0
(SfBasic.S @x1)
SfBasic.nat))
 

:pattern ((HasTypeFuel @u0
(SfBasic.S @x1)
SfBasic.nat))
:qid data_typing_intro_SfBasic.S@tok))

:named data_typing_intro_SfBasic.S@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(94,4-94,5); use=SfBasic.fst(94,4-94,5)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfBasic.O
SfBasic.nat)
 

:pattern ((HasTypeFuel @u0
SfBasic.O
SfBasic.nat))
:qid data_typing_intro_SfBasic.O@tok))

:named data_typing_intro_SfBasic.O@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat)
(HasTypeFuel @u0
@x1
SfBasic.nat))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfBasic.S @x1)
SfBasic.nat))
:qid data_elim_SfBasic.S))

:named data_elim_SfBasic.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (= 243
(Term_constr_id SfBasic.nat))
:named constructor_distinct_SfBasic.nat))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(forall ((@x0 Term))
 (! (= 251
(Term_constr_id (SfBasic.S @x0)))
 

:pattern ((SfBasic.S @x0))
:qid constructor_distinct_SfBasic.S))

:named constructor_distinct_SfBasic.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! (= 249
(Term_constr_id SfBasic.O))
:named constructor_distinct_SfBasic.O))
;;;;;;;;;;;;;;;;Assumption: SfBasic.nat__uu___haseq
;;; Fact-ids: Name SfBasic.nat__uu___haseq; Namespace SfBasic
(assert (! (Valid (Prims.hasEq SfBasic.nat))
:named assumption_SfBasic.nat__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name SfBasic.nat; Namespace SfBasic; Name SfBasic.O; Namespace SfBasic; Name SfBasic.S; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(93,5-93,8); use=SfBasic.fst(93,5-93,8)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
SfBasic.nat)
(= SfBasic.nat
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
SfBasic.nat))
:qid SfBasic_pretyping_ccd81122687c082c3642373b68717e85))

:named SfBasic_pretyping_ccd81122687c082c3642373b68717e85))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: SfBasic.nat{S? _}).
;   (*  - Could not prove post-condition
; *) ~(S? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__S__item___0`

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
Tm_refine_b7b70964a15ac3a2f4808938f2801faf)

;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(not 
;; def=SfBasic.fst(95,4-95,5); use=SfBasic.fst(95,4-95,5)
(BoxBool_proj_0 (SfBasic.uu___is_S @x0))
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
; QUERY ID: (SfBasic.__proj__S__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_b7b70964a15ac3a2f4808938f2801faf

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__S__item___0


; <Skipped let __proj__S__item___0/>


; encoding sigelt val SfBasic.pred


; <Skipped val SfBasic.pred/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.uu___is_O; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(94,4-94,5); use=SfBasic.fst(94,4-94,5)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.nat)
(HasType (SfBasic.uu___is_O @x0)
Prims.bool))
 

:pattern ((SfBasic.uu___is_O @x0))
:qid typing_SfBasic.uu___is_O))

:named typing_SfBasic.uu___is_O))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfBasic.uu___is_O; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(94,4-94,5); use=SfBasic.fst(94,4-94,5)
(forall ((@x0 Term))
 (! (= (SfBasic.uu___is_O @x0)
(BoxBool (is-SfBasic.O @x0)))
 

:pattern ((SfBasic.uu___is_O @x0))
:qid disc_equation_SfBasic.O))

:named disc_equation_SfBasic.O))
(push) ;; push{2

; Starting query at SfBasic.fst(99,2-101,16)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfBasic.nat).
;     (forall (x: SfBasic.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(O? n) /\ ~(S? n) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let pred`

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
SfBasic.nat)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post SfBasic.nat))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(99,2-101,16)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(99,2-101,16)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(99,2-101,16)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=SfBasic.fst(98,9-98,10); use=SfBasic.fst(99,8-99,9)
(not 
;; def=SfBasic.fst(98,9-98,10); use=SfBasic.fst(99,8-99,9)
(BoxBool_proj_0 (SfBasic.uu___is_O @x0))
)


;; def=SfBasic.fst(98,9-98,10); use=SfBasic.fst(99,8-99,9)
(not 
;; def=SfBasic.fst(98,9-98,10); use=SfBasic.fst(99,8-99,9)
(BoxBool_proj_0 (SfBasic.uu___is_S @x0))
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
; QUERY ID: (SfBasic.pred, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfBasic.O, disc_equation_SfBasic.S, fuel_guarded_inversion_SfBasic.nat, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let pred


; <Start encoding let pred>

(declare-fun SfBasic.pred (Term) Term)

(declare-fun SfBasic.pred@tok () Term)

; </end encoding let pred>


; encoding sigelt val SfBasic.minustwo


; <Skipped val SfBasic.minustwo/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.__proj__S__item___0; Namespace SfBasic
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_b7b70964a15ac3a2f4808938f2801faf)
(HasType (SfBasic.__proj__S__item___0 @x0)
SfBasic.nat))
 

:pattern ((SfBasic.__proj__S__item___0 @x0))
:qid typing_SfBasic.__proj__S__item___0))
:named typing_SfBasic.__proj__S__item___0))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name SfBasic.__proj__S__item___0; Namespace SfBasic
(assert (! (forall ((@x0 Term))
 (! (= (SfBasic.__proj__S__item___0 @x0)
(SfBasic.S__0 @x0))
 

:pattern ((SfBasic.__proj__S__item___0 @x0))
:qid proj_equation_SfBasic.S__0))
:named proj_equation_SfBasic.S__0))
(push) ;; push{2

; Starting query at SfBasic.fst(105,2-108,20)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfBasic.nat).
;     (forall (x: SfBasic.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(O? n) /\ ~(S? n && O? n._0) /\ ~(S? n && S? n._0) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let minustwo`

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
SfBasic.nat)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post SfBasic.nat))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(105,2-108,20)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(105,2-108,20)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(105,2-108,20)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=SfBasic.fst(104,13-104,14); use=SfBasic.fst(105,8-105,9)
(not 
;; def=SfBasic.fst(104,13-104,14); use=SfBasic.fst(105,8-105,9)
(BoxBool_proj_0 (SfBasic.uu___is_O @x0))
)


;; def=SfBasic.fst(104,13-107,7); use=SfBasic.fst(105,8-107,7)
(not 
;; def=SfBasic.fst(104,13-107,7); use=SfBasic.fst(105,8-107,7)
(and (BoxBool_proj_0 (SfBasic.uu___is_S @x0))
(BoxBool_proj_0 (SfBasic.uu___is_O (SfBasic.__proj__S__item___0 @x0))))
)


;; def=SfBasic.fst(104,13-108,7); use=SfBasic.fst(105,8-108,7)
(not 
;; def=SfBasic.fst(104,13-108,7); use=SfBasic.fst(105,8-108,7)
(and (BoxBool_proj_0 (SfBasic.uu___is_S @x0))
(BoxBool_proj_0 (SfBasic.uu___is_S (SfBasic.__proj__S__item___0 @x0))))
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
; QUERY ID: (SfBasic.minustwo, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfBasic.O, disc_equation_SfBasic.S, fuel_guarded_inversion_SfBasic.nat, proj_equation_SfBasic.S__0, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_b7b70964a15ac3a2f4808938f2801faf, typing_SfBasic.__proj__S__item___0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let minustwo


; <Start encoding let minustwo>

(declare-fun SfBasic.minustwo (Term) Term)

(declare-fun SfBasic.minustwo@tok () Term)

; </end encoding let minustwo>


; encoding sigelt val SfBasic.evenb


; <Skipped val SfBasic.evenb/>

(push) ;; push{2

; Starting query at SfBasic.fst(112,2-115,24)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
(declare-fun Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713
Tm_type)
:named refinement_kinding_Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(112,2-115,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713)
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(112,2-115,24)

;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(112,2-115,24)
(Valid 
;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(112,2-115,24)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713))
:qid refinement_interpretation_Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713))

:named refinement_interpretation_Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713))
;;;;;;;;;;;;;;;;haseq for Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713))
(Valid (Prims.hasEq SfBasic.nat)))
:named haseqTm_refine_3f0588c1a4e355b0a3efb5ac7d650713))
(declare-fun SfBasic.evenb (Term) Term)

;;;;;;;;;;;;;;;;_: _: nat{_ << n} -> mbool
(declare-fun Tm_arrow_2f538123897aca879bb5aaf8b0d460f2 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_2f538123897aca879bb5aaf8b0d460f2
Tm_type)
:named kinding_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(110,23-115,24); use=SfBasic.fst(111,8-115,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2f538123897aca879bb5aaf8b0d460f2)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))
:qid SfBasic_pre_typing_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))

:named SfBasic_pre_typing_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(110,23-115,24); use=SfBasic.fst(111,8-115,24)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2f538123897aca879bb5aaf8b0d460f2)
(and 
;; def=SfBasic.fst(110,23-115,24); use=SfBasic.fst(111,8-115,24)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713)
(HasType (ApplyTT @x0
@x1)
SfBasic.mbool))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfBasic_interpretation_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))
:qid SfBasic_interpretation_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))

:named SfBasic_interpretation_Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))
(declare-fun SfBasic.evenb@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@x0 Term))
 (! (= (ApplyTT SfBasic.evenb@tok
@x0)
(SfBasic.evenb @x0))
 

:pattern ((ApplyTT SfBasic.evenb@tok
@x0))
:qid token_correspondence_SfBasic.evenb))

:named token_correspondence_SfBasic.evenb))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfBasic.evenb@tok
Tm_arrow_2f538123897aca879bb5aaf8b0d460f2))

;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@x1 Term))
 (! (= (ApplyTT SfBasic.evenb@tok
@x1)
(SfBasic.evenb @x1))
 

:pattern ((SfBasic.evenb @x1))
:qid function_token_typing_SfBasic.evenb.1))
)
 

:pattern ((ApplyTT @x0
SfBasic.evenb@tok))
:qid function_token_typing_SfBasic.evenb))

:named function_token_typing_SfBasic.evenb))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_3f0588c1a4e355b0a3efb5ac7d650713)
(HasType (SfBasic.evenb @x0)
SfBasic.mbool))
 

:pattern ((SfBasic.evenb @x0))
:qid typing_SfBasic.evenb))

:named typing_SfBasic.evenb))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfBasic.mbool).
;   (forall (x: SfBasic.mbool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? n) /\ ~(S? n && O? n._0) /\ ~(S? n && S? n._0) ==> Prims.l_False) /\
;   (~(O? n) ==>
;     ~(S? n && O? n._0) ==> (forall (b: SfBasic.nat). n == SfBasic.S (SfBasic.S b) ==> b << n))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec evenb`

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
(Prims.pure_post SfBasic.mbool))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(112,2-115,24)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(112,2-115,24)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(112,2-115,24)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(112,2-115,24)
(and (implies 
;; def=SfBasic.fst(111,14-115,5); use=SfBasic.fst(112,8-115,5)
(and 
;; def=SfBasic.fst(111,14-111,15); use=SfBasic.fst(112,8-112,9)
(not 
;; def=SfBasic.fst(111,14-111,15); use=SfBasic.fst(112,8-112,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=SfBasic.fst(111,14-114,5); use=SfBasic.fst(112,8-114,5)
(not 
;; def=SfBasic.fst(111,14-114,5); use=SfBasic.fst(112,8-114,5)
(and (BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
(BoxBool_proj_0 (SfBasic.uu___is_O (SfBasic.__proj__S__item___0 x_ccd81122687c082c3642373b68717e85_0))))
)


;; def=SfBasic.fst(111,14-115,5); use=SfBasic.fst(112,8-115,5)
(not 
;; def=SfBasic.fst(111,14-115,5); use=SfBasic.fst(112,8-115,5)
(and (BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
(BoxBool_proj_0 (SfBasic.uu___is_S (SfBasic.__proj__S__item___0 x_ccd81122687c082c3642373b68717e85_0))))
)
)

label_1)
(implies 
;; def=Prims.fst(389,18-389,39); use=SfBasic.fst(112,2-115,24)
(and 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(112,2-115,24)
(not 
;; def=SfBasic.fst(111,14-111,15); use=SfBasic.fst(112,8-112,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(112,2-115,24)
(not 
;; def=SfBasic.fst(111,14-114,5); use=SfBasic.fst(112,8-114,5)
(and (BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
(BoxBool_proj_0 (SfBasic.uu___is_O (SfBasic.__proj__S__item___0 x_ccd81122687c082c3642373b68717e85_0))))
)
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(112,2-115,24)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)

;; def=SfBasic.fst(111,14-115,12); use=SfBasic.fst(112,8-115,12)
(= x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S (SfBasic.S @x1)))
)

;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(115,22-115,24)
(or label_2

;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(115,22-115,24)
(Valid 
;; def=SfBasic.fst(112,2-115,24); use=SfBasic.fst(115,22-115,24)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (SfBasic.evenb, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, binder_x_ccd81122687c082c3642373b68717e85_0, disc_equation_SfBasic.O, disc_equation_SfBasic.S, equality_tok_SfBasic.O@tok, fuel_guarded_inversion_SfBasic.nat, proj_equation_SfBasic.S__0, projection_inverse_BoxBool_proj_0, projection_inverse_SfBasic.S__0, refinement_interpretation_Tm_refine_b7b70964a15ac3a2f4808938f2801faf, subterm_ordering_SfBasic.S, typing_SfBasic.__proj__S__item___0, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec evenb


; <Start encoding let rec evenb>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfBasic.evenb.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfBasic.evenb.fuel_instrumented_token () Term)
(declare-fun SfBasic.evenb (Term) Term)
(declare-fun SfBasic.evenb@tok () Term)
;;;;;;;;;;;;;;;;n: nat -> mbool
(declare-fun Tm_arrow_00c21f6eb2aea11e3feeb0698bc519a9 () Term)

; </end encoding let rec evenb>


; encoding sigelt val SfBasic.oddb


; <Skipped val SfBasic.oddb/>


; encoding sigelt let oddb


; <Start encoding let oddb>

(declare-fun SfBasic.oddb (Term) Term)

(declare-fun SfBasic.oddb@tok () Term)

; </end encoding let oddb>

(push) ;; push{2

; Starting query at SfBasic.fst(120,0-121,38)

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
;; def=SfBasic.fst(120,25-121,38); use=SfBasic.fst(120,25-120,30)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_oddb1`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(120,0-121,38)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(121,17-121,21)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(121,17-121,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(121,17-121,21)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_oddb1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_oddb1


; <Skipped val SfBasic.test_oddb1/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.oddb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(118,4-118,8); use=SfBasic.fst(118,4-118,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.nat)
(HasType (SfBasic.oddb @x0)
SfBasic.mbool))
 

:pattern ((SfBasic.oddb @x0))
:qid typing_SfBasic.oddb))

:named typing_SfBasic.oddb))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.negb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(58,4-58,8); use=SfBasic.fst(58,4-58,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.mbool)
(HasType (SfBasic.negb @x0)
SfBasic.mbool))
 

:pattern ((SfBasic.negb @x0))
:qid typing_SfBasic.negb))

:named typing_SfBasic.negb))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.evenb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfBasic.nat)
(HasType (SfBasic.evenb @x0)
SfBasic.mbool))
 

:pattern ((SfBasic.evenb @x0))
:qid typing_SfBasic.evenb))

:named typing_SfBasic.evenb))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfBasic.evenb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(HasType (SfBasic.evenb.fuel_instrumented @u0
@x1)
SfBasic.mbool))
 

:pattern ((SfBasic.evenb.fuel_instrumented @u0
@x1))
:qid token_correspondence_SfBasic.evenb.fuel_instrumented))

:named token_correspondence_SfBasic.evenb.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfBasic.evenb
;;; Fact-ids: Name SfBasic.evenb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(= (SfBasic.evenb.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-SfBasic.O @lb2)
SfBasic.MTrue@tok
(ite (and (is-SfBasic.S @lb2)
(is-SfBasic.O (SfBasic.S__0 @lb2)))
SfBasic.MFalse@tok
(ite (and (is-SfBasic.S @lb2)
(is-SfBasic.S (SfBasic.S__0 @lb2)))
(SfBasic.evenb.fuel_instrumented @u0
(SfBasic.S__0 (SfBasic.S__0 @lb2)))
Tm_unit))))))
 :weight 0


:pattern ((SfBasic.evenb.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_SfBasic.evenb.fuel_instrumented))

:named equation_with_fuel_SfBasic.evenb.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for SfBasic.oddb
;;; Fact-ids: Name SfBasic.oddb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(118,4-118,8); use=SfBasic.fst(118,4-118,8)
(forall ((@x0 Term))
 (! (= (SfBasic.oddb @x0)
(SfBasic.negb (SfBasic.evenb @x0)))
 

:pattern ((SfBasic.oddb @x0))
:qid equation_SfBasic.oddb))

:named equation_SfBasic.oddb))
;;;;;;;;;;;;;;;;Equation for SfBasic.negb
;;; Fact-ids: Name SfBasic.negb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(58,4-58,8); use=SfBasic.fst(58,4-58,8)
(forall ((@x0 Term))
 (! (= (SfBasic.negb @x0)
(let ((@lb1 @x0))
(ite (is-SfBasic.MTrue @lb1)
SfBasic.MFalse@tok
(ite (is-SfBasic.MFalse @lb1)
SfBasic.MTrue@tok
Tm_unit))))
 

:pattern ((SfBasic.negb @x0))
:qid equation_SfBasic.negb))

:named equation_SfBasic.negb))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfBasic.evenb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (SfBasic.evenb.fuel_instrumented (SFuel @u0)
@x1)
(SfBasic.evenb.fuel_instrumented ZFuel
@x1))
 

:pattern ((SfBasic.evenb.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_SfBasic.evenb.fuel_instrumented))

:named @fuel_irrelevance_SfBasic.evenb.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfBasic.evenb; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(111,8-111,13); use=SfBasic.fst(111,8-111,13)
(forall ((@x0 Term))
 (! (= (SfBasic.evenb @x0)
(SfBasic.evenb.fuel_instrumented MaxFuel
@x0))
 

:pattern ((SfBasic.evenb @x0))
:qid @fuel_correspondence_SfBasic.evenb.fuel_instrumented))

:named @fuel_correspondence_SfBasic.evenb.fuel_instrumented))
(push) ;; push{2

; Starting query at SfBasic.fst(122,20-122,22)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.oddb (SfBasic.S SfBasic.O) = SfBasic.MTrue ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_oddb1`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(122,20-122,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(121,15-121,37); use=SfBasic.fst(122,20-122,22)
(or label_2

;; def=SfBasic.fst(121,15-121,37); use=SfBasic.fst(122,20-122,22)
(= (SfBasic.oddb (SfBasic.S SfBasic.O@tok))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(122,20-122,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(122,20-122,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(122,20-122,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(122,20-122,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_oddb1, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.evenb.fuel_instrumented, @query, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.MFalse@tok, equality_tok_SfBasic.MTrue@tok, equality_tok_SfBasic.O@tok, equation_SfBasic.negb, equation_SfBasic.oddb, equation_with_fuel_SfBasic.evenb.fuel_instrumented, fuel_guarded_inversion_SfBasic.mbool, projection_inverse_SfBasic.S__0, typing_SfBasic.oddb, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_oddb1


; <Start encoding let test_oddb1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_oddb1 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_oddb1@tok () Term)

; </end encoding let test_oddb1>

(push) ;; push{2

; Starting query at SfBasic.fst(124,0-125,49)

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
;; def=SfBasic.fst(124,25-125,49); use=SfBasic.fst(124,25-124,30)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_oddb2`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(124,0-125,49)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(125,16-125,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(125,16-125,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(125,16-125,20)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_oddb2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_oddb2


; <Skipped val SfBasic.test_oddb2/>

(push) ;; push{2

; Starting query at SfBasic.fst(126,20-126,22)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.oddb (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O)))) = SfBasic.MFalse ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_oddb2`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(126,20-126,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(125,15-125,48); use=SfBasic.fst(126,20-126,22)
(or label_2

;; def=SfBasic.fst(125,15-125,48); use=SfBasic.fst(126,20-126,22)
(= (SfBasic.oddb (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))))
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_oddb2, 2)
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
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(126,20-126,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(125,15-125,48); use=SfBasic.fst(126,20-126,22)
(or label_2

;; def=SfBasic.fst(125,15-125,48); use=SfBasic.fst(126,20-126,22)
(= (SfBasic.oddb (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))))
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_oddb2, 2)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='4' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel ZFuel)))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(126,20-126,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(125,15-125,48); use=SfBasic.fst(126,20-126,22)
(or label_2

;; def=SfBasic.fst(125,15-125,48); use=SfBasic.fst(126,20-126,22)
(= (SfBasic.oddb (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))))
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(126,20-126,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_oddb2, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.evenb.fuel_instrumented, @query, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.MFalse@tok, equality_tok_SfBasic.MTrue@tok, equality_tok_SfBasic.O@tok, equation_SfBasic.negb, equation_SfBasic.oddb, equation_with_fuel_SfBasic.evenb.fuel_instrumented, fuel_guarded_inversion_SfBasic.mbool, projection_inverse_SfBasic.S__0, typing_SfBasic.evenb, typing_SfBasic.oddb, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_oddb2


; <Start encoding let test_oddb2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_oddb2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_oddb2@tok () Term)

; </end encoding let test_oddb2>


; encoding sigelt val SfBasic.plus


; <Skipped val SfBasic.plus/>

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

; Starting query at SfBasic.fst(130,2-132,27)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
(declare-fun Tm_refine_b6500e0e8bfd07c207e46a95a774d92a (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(129,13-132,27)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_b6500e0e8bfd07c207e46a95a774d92a))

:named refinement_kinding_Tm_refine_b6500e0e8bfd07c207e46a95a774d92a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(129,13-132,27)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x2))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(129,13-132,27)

;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(129,13-132,27)
(or 
;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(130,2-132,27)
(Valid 
;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(130,2-132,27)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(129,13-132,27)
(and 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(129,13-129,14)
(Valid 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(129,13-129,14)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(130,2-132,27)
(Valid 
;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(130,2-132,27)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x2)))
:qid refinement_interpretation_Tm_refine_b6500e0e8bfd07c207e46a95a774d92a))

:named refinement_interpretation_Tm_refine_b6500e0e8bfd07c207e46a95a774d92a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b6500e0e8bfd07c207e46a95a774d92a
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(129,13-132,27)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x0)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x0))))
:qid haseqTm_refine_b6500e0e8bfd07c207e46a95a774d92a))

:named haseqTm_refine_b6500e0e8bfd07c207e46a95a774d92a))
(declare-fun SfBasic.plus (Term Term) Term)

;;;;;;;;;;;;;;;;_: nat -> _: _: nat{_ << n \/ _ === n /\ _ << m} -> nat
(declare-fun Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873
Tm_type)
:named kinding_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(128,11-132,27); use=SfBasic.fst(129,8-132,27)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))
:qid SfBasic_pre_typing_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))

:named SfBasic_pre_typing_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(128,11-132,27); use=SfBasic.fst(129,8-132,27)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873)
(and 
;; def=SfBasic.fst(128,11-132,27); use=SfBasic.fst(129,8-132,27)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
(Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfBasic.nat))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfBasic_interpretation_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873.1))

(IsTotFun @x0)

;; def=SfBasic.fst(128,11-132,27); use=SfBasic.fst(129,8-132,27)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfBasic_interpretation_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))
:qid SfBasic_interpretation_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))

:named SfBasic_interpretation_Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))
(declare-fun SfBasic.plus@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.plus@tok
@x0)
@x1)
(SfBasic.plus @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfBasic.plus@tok
@x0)
@x1))
:qid token_correspondence_SfBasic.plus))

:named token_correspondence_SfBasic.plus))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfBasic.plus@tok
Tm_arrow_fbd909d3001dfe44b238b29e1cd5a873))

;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.plus@tok
@x1)
@x2)
(SfBasic.plus @x1
@x2))
 

:pattern ((SfBasic.plus @x1
@x2))
:qid function_token_typing_SfBasic.plus.1))
)
 

:pattern ((ApplyTT @x0
SfBasic.plus@tok))
:qid function_token_typing_SfBasic.plus))

:named function_token_typing_SfBasic.plus))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
(Tm_refine_b6500e0e8bfd07c207e46a95a774d92a @x0)))
(HasType (SfBasic.plus @x0
@x1)
SfBasic.nat))
 

:pattern ((SfBasic.plus @x0
@x1))
:qid typing_SfBasic.plus))

:named typing_SfBasic.plus))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfBasic.nat).
;   (forall (x: SfBasic.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? n) /\ ~(S? n) ==> Prims.l_False) /\
;   (~(O? n) ==> (forall (b: SfBasic.nat). n == SfBasic.S b ==> b << n \/ b === n /\ m << m))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus`

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
(Prims.pure_post SfBasic.nat))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(130,2-132,27)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(130,2-132,27)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(130,2-132,27)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(130,2-132,27)
(and (implies 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(130,8-130,9)
(and 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(130,8-130,9)
(not 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(130,8-130,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(130,8-130,9)
(not 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(130,8-130,9)
(BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(130,2-132,27)
(not 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(130,8-130,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(130,2-132,27)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)

;; def=SfBasic.fst(129,13-132,10); use=SfBasic.fst(130,8-132,10)
(= x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S @x1))
)

;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(132,25-132,26)
(or label_2

;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(132,25-132,26)
(Valid 
;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(132,25-132,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(129,13-132,27); use=SfBasic.fst(132,25-132,26)
(and 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(132,25-132,26)
(Valid 
;; def=SfBasic.fst(129,13-129,14); use=SfBasic.fst(132,25-132,26)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(132,25-132,26)
(Valid 
;; def=SfBasic.fst(130,2-132,27); use=SfBasic.fst(132,25-132,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_1
x_ccd81122687c082c3642373b68717e85_1)
)
)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (SfBasic.plus, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, binder_x_ccd81122687c082c3642373b68717e85_0, disc_equation_SfBasic.O, disc_equation_SfBasic.S, equality_tok_SfBasic.O@tok, fuel_guarded_inversion_SfBasic.nat, projection_inverse_BoxBool_proj_0, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec plus


; <Start encoding let rec plus>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfBasic.plus.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfBasic.plus.fuel_instrumented_token () Term)
(declare-fun SfBasic.plus (Term Term) Term)
(declare-fun SfBasic.plus@tok () Term)
;;;;;;;;;;;;;;;;n: nat -> m: nat -> nat
(declare-fun Tm_arrow_be12069d5c961676add03ce40aabf7c9 () Term)

; </end encoding let rec plus>


; encoding sigelt val SfBasic.mult


; <Skipped val SfBasic.mult/>

(push) ;; push{2

; Starting query at SfBasic.fst(136,2-138,32)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
(declare-fun Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(135,13-138,32)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4))

:named refinement_kinding_Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(135,13-138,32)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x2))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(135,13-138,32)

;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(135,13-138,32)
(or 
;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(136,2-138,32)
(Valid 
;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(136,2-138,32)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(135,13-138,32)
(and 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(135,13-135,14)
(Valid 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(135,13-135,14)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(136,2-138,32)
(Valid 
;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(136,2-138,32)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x2)))
:qid refinement_interpretation_Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4))

:named refinement_interpretation_Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(135,13-138,32)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x0)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x0))))
:qid haseqTm_refine_0c562a1c22b8802b83e4b58dde1c94b4))

:named haseqTm_refine_0c562a1c22b8802b83e4b58dde1c94b4))
(declare-fun SfBasic.mult (Term Term) Term)

;;;;;;;;;;;;;;;;_: nat -> _: _: nat{_ << n \/ _ === n /\ _ << m} -> nat
(declare-fun Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c
Tm_type)
:named kinding_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(134,11-138,32); use=SfBasic.fst(135,8-138,32)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))
:qid SfBasic_pre_typing_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))

:named SfBasic_pre_typing_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(134,11-138,32); use=SfBasic.fst(135,8-138,32)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c)
(and 
;; def=SfBasic.fst(134,11-138,32); use=SfBasic.fst(135,8-138,32)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
(Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfBasic.nat))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfBasic_interpretation_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c.1))

(IsTotFun @x0)

;; def=SfBasic.fst(134,11-138,32); use=SfBasic.fst(135,8-138,32)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfBasic_interpretation_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))
:qid SfBasic_interpretation_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))

:named SfBasic_interpretation_Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))
(declare-fun SfBasic.mult@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.mult@tok
@x0)
@x1)
(SfBasic.mult @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfBasic.mult@tok
@x0)
@x1))
:qid token_correspondence_SfBasic.mult))

:named token_correspondence_SfBasic.mult))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfBasic.mult@tok
Tm_arrow_6ce29c32fde89c6ca27e49e36ba4ae1c))

;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.mult@tok
@x1)
@x2)
(SfBasic.mult @x1
@x2))
 

:pattern ((SfBasic.mult @x1
@x2))
:qid function_token_typing_SfBasic.mult.1))
)
 

:pattern ((ApplyTT @x0
SfBasic.mult@tok))
:qid function_token_typing_SfBasic.mult))

:named function_token_typing_SfBasic.mult))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
(Tm_refine_0c562a1c22b8802b83e4b58dde1c94b4 @x0)))
(HasType (SfBasic.mult @x0
@x1)
SfBasic.nat))
 

:pattern ((SfBasic.mult @x0
@x1))
:qid typing_SfBasic.mult))

:named typing_SfBasic.mult))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfBasic.nat).
;   (forall (x: SfBasic.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? n) /\ ~(S? n) ==> Prims.l_False) /\
;   (~(O? n) ==> (forall (b: SfBasic.nat). n == SfBasic.S b ==> b << n \/ b === n /\ m << m))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec mult`

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
(Prims.pure_post SfBasic.nat))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(136,2-138,32)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(136,2-138,32)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(136,2-138,32)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(136,2-138,32)
(and (implies 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(136,8-136,9)
(and 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(136,8-136,9)
(not 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(136,8-136,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(136,8-136,9)
(not 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(136,8-136,9)
(BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(136,2-138,32)
(not 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(136,8-136,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(136,2-138,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)

;; def=SfBasic.fst(135,13-138,10); use=SfBasic.fst(136,8-138,10)
(= x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S @x1))
)

;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(138,30-138,31)
(or label_2

;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(138,30-138,31)
(Valid 
;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(138,30-138,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(135,13-138,32); use=SfBasic.fst(138,30-138,31)
(and 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(138,30-138,31)
(Valid 
;; def=SfBasic.fst(135,13-135,14); use=SfBasic.fst(138,30-138,31)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(138,30-138,31)
(Valid 
;; def=SfBasic.fst(136,2-138,32); use=SfBasic.fst(138,30-138,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_1
x_ccd81122687c082c3642373b68717e85_1)
)
)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (SfBasic.mult, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, binder_x_ccd81122687c082c3642373b68717e85_0, disc_equation_SfBasic.O, disc_equation_SfBasic.S, equality_tok_SfBasic.O@tok, fuel_guarded_inversion_SfBasic.nat, projection_inverse_BoxBool_proj_0, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec mult


; <Start encoding let rec mult>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfBasic.mult.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfBasic.mult.fuel_instrumented_token () Term)
(declare-fun SfBasic.mult (Term Term) Term)
(declare-fun SfBasic.mult@tok () Term)


; </end encoding let rec mult>

(push) ;; push{2

; Starting query at SfBasic.fst(140,0-142,56)

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
;; def=SfBasic.fst(140,25-142,56); use=SfBasic.fst(140,25-140,30)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_mult1`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(140,0-142,56)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(141,16-141,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(141,16-141,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(141,16-141,20)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.test_mult1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_mult1


; <Skipped val SfBasic.test_mult1/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.plus; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat))
(HasType (SfBasic.plus @x0
@x1)
SfBasic.nat))
 

:pattern ((SfBasic.plus @x0
@x1))
:qid typing_SfBasic.plus))

:named typing_SfBasic.plus))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.mult; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat))
(HasType (SfBasic.mult @x0
@x1)
SfBasic.nat))
 

:pattern ((SfBasic.mult @x0
@x1))
:qid typing_SfBasic.mult))

:named typing_SfBasic.mult))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfBasic.plus; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(HasType (SfBasic.plus.fuel_instrumented @u0
@x1
@x2)
SfBasic.nat))
 

:pattern ((SfBasic.plus.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfBasic.plus.fuel_instrumented))

:named token_correspondence_SfBasic.plus.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfBasic.mult; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(HasType (SfBasic.mult.fuel_instrumented @u0
@x1
@x2)
SfBasic.nat))
 

:pattern ((SfBasic.mult.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfBasic.mult.fuel_instrumented))

:named token_correspondence_SfBasic.mult.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfBasic.plus
;;; Fact-ids: Name SfBasic.plus; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(= (SfBasic.plus.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-SfBasic.O @lb3)
@x2
(ite (is-SfBasic.S @lb3)
(SfBasic.S (SfBasic.plus.fuel_instrumented @u0
(SfBasic.S__0 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((SfBasic.plus.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfBasic.plus.fuel_instrumented))

:named equation_with_fuel_SfBasic.plus.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfBasic.mult
;;; Fact-ids: Name SfBasic.mult; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(= (SfBasic.mult.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-SfBasic.O @lb3)
SfBasic.O@tok
(ite (is-SfBasic.S @lb3)
(SfBasic.plus @x2
(SfBasic.mult.fuel_instrumented @u0
(SfBasic.S__0 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((SfBasic.mult.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfBasic.mult.fuel_instrumented))

:named equation_with_fuel_SfBasic.mult.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfBasic.plus; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfBasic.plus.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfBasic.plus.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfBasic.plus.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfBasic.plus.fuel_instrumented))

:named @fuel_irrelevance_SfBasic.plus.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfBasic.mult; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfBasic.mult.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfBasic.mult.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfBasic.mult.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfBasic.mult.fuel_instrumented))

:named @fuel_irrelevance_SfBasic.mult.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfBasic.plus; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(129,8-129,12); use=SfBasic.fst(129,8-129,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfBasic.plus @x0
@x1)
(SfBasic.plus.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfBasic.plus @x0
@x1))
:qid @fuel_correspondence_SfBasic.plus.fuel_instrumented))

:named @fuel_correspondence_SfBasic.plus.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfBasic.mult; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(135,8-135,12); use=SfBasic.fst(135,8-135,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfBasic.mult @x0
@x1)
(SfBasic.mult.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfBasic.mult @x0
@x1))
:qid @fuel_correspondence_SfBasic.mult.fuel_instrumented))

:named @fuel_correspondence_SfBasic.mult.fuel_instrumented))
(push) ;; push{2

; Starting query at SfBasic.fst(143,20-143,22)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.mult (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O)))
;           (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O))) =
;         SfBasic.S
;         (SfBasic.S
;           (SfBasic.S
;             (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O)))))))) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_mult1`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(143,20-143,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(141,15-142,55); use=SfBasic.fst(143,20-143,22)
(or label_2

;; def=SfBasic.fst(141,15-142,55); use=SfBasic.fst(143,20-143,22)
(= (SfBasic.mult (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))
(SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))
(SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))))))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_mult1, 2)
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
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(143,20-143,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(141,15-142,55); use=SfBasic.fst(143,20-143,22)
(or label_2

;; def=SfBasic.fst(141,15-142,55); use=SfBasic.fst(143,20-143,22)
(= (SfBasic.mult (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))
(SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))
(SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))))))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_mult1, 2)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='4' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel ZFuel)))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(143,20-143,22)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(141,15-142,55); use=SfBasic.fst(143,20-143,22)
(or label_2

;; def=SfBasic.fst(141,15-142,55); use=SfBasic.fst(143,20-143,22)
(= (SfBasic.mult (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))
(SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))
(SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))))))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(143,20-143,22)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_mult1, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.mult.fuel_instrumented, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @fuel_irrelevance_SfBasic.mult.fuel_instrumented, @query, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.mult.fuel_instrumented, equation_with_fuel_SfBasic.plus.fuel_instrumented, projection_inverse_SfBasic.S__0, token_correspondence_SfBasic.mult.fuel_instrumented, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_mult1


; <Start encoding let test_mult1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_mult1 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_mult1@tok () Term)

; </end encoding let test_mult1>


; encoding sigelt val SfBasic.minus


; <Skipped val SfBasic.minus/>

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

; Starting query at SfBasic.fst(147,2-150,29)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
(declare-fun Tm_refine_740fe0336b564c0f0081aa4b76da5752 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(146,15-150,29)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_740fe0336b564c0f0081aa4b76da5752))

:named refinement_kinding_Tm_refine_740fe0336b564c0f0081aa4b76da5752))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(146,15-150,29)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x2))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(146,15-150,29)

;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(146,15-150,29)
(or 
;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(147,2-150,29)
(Valid 
;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(147,2-150,29)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(146,15-150,29)
(and 
;; def=SfBasic.fst(146,15-146,16); use=SfBasic.fst(146,15-146,16)
(Valid 
;; def=SfBasic.fst(146,15-146,16); use=SfBasic.fst(146,15-146,16)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(147,2-150,29)
(Valid 
;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(147,2-150,29)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x2)))
:qid refinement_interpretation_Tm_refine_740fe0336b564c0f0081aa4b76da5752))

:named refinement_interpretation_Tm_refine_740fe0336b564c0f0081aa4b76da5752))
;;;;;;;;;;;;;;;;haseq for Tm_refine_740fe0336b564c0f0081aa4b76da5752
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(146,15-150,29)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x0)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x0))))
:qid haseqTm_refine_740fe0336b564c0f0081aa4b76da5752))

:named haseqTm_refine_740fe0336b564c0f0081aa4b76da5752))
(declare-fun SfBasic.minus (Term Term) Term)

;;;;;;;;;;;;;;;;_: nat -> _: _: nat{_ << n \/ _ === n /\ _ << m} -> nat
(declare-fun Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa
Tm_type)
:named kinding_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(145,12-150,29); use=SfBasic.fst(146,8-150,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))
:qid SfBasic_pre_typing_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))

:named SfBasic_pre_typing_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(145,12-150,29); use=SfBasic.fst(146,8-150,29)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa)
(and 
;; def=SfBasic.fst(145,12-150,29); use=SfBasic.fst(146,8-150,29)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
(Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfBasic.nat))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfBasic_interpretation_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa.1))

(IsTotFun @x0)

;; def=SfBasic.fst(145,12-150,29); use=SfBasic.fst(146,8-150,29)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfBasic_interpretation_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))
:qid SfBasic_interpretation_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))

:named SfBasic_interpretation_Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))
(declare-fun SfBasic.minus@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(146,8-146,13); use=SfBasic.fst(146,8-146,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.minus@tok
@x0)
@x1)
(SfBasic.minus @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfBasic.minus@tok
@x0)
@x1))
:qid token_correspondence_SfBasic.minus))

:named token_correspondence_SfBasic.minus))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(146,8-146,13); use=SfBasic.fst(146,8-146,13)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfBasic.minus@tok
Tm_arrow_ccc3bcf96b8777913ede9bbfe1e384aa))

;; def=SfBasic.fst(146,8-146,13); use=SfBasic.fst(146,8-146,13)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.minus@tok
@x1)
@x2)
(SfBasic.minus @x1
@x2))
 

:pattern ((SfBasic.minus @x1
@x2))
:qid function_token_typing_SfBasic.minus.1))
)
 

:pattern ((ApplyTT @x0
SfBasic.minus@tok))
:qid function_token_typing_SfBasic.minus))

:named function_token_typing_SfBasic.minus))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(146,8-146,13); use=SfBasic.fst(146,8-146,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
(Tm_refine_740fe0336b564c0f0081aa4b76da5752 @x0)))
(HasType (SfBasic.minus @x0
@x1)
SfBasic.nat))
 

:pattern ((SfBasic.minus @x0
@x1))
:qid typing_SfBasic.minus))

:named typing_SfBasic.minus))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfBasic.nat).
;   (forall (x: SfBasic.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? (n, m)._1) /\ ~(S? (n, m)._1 && O? (n, m)._2) /\ ~(S? (n, m)._1 && S? (n, m)._2) ==>
;     Prims.l_False) /\
;   (~(O? (n, m)._1) ==>
;     ~(S? (n, m)._1 && O? (n, m)._2) ==>
;     (forall (b: SfBasic.nat) (b: SfBasic.nat).
;         (n, m) == (SfBasic.S b, SfBasic.S b) ==> b << n \/ b === n /\ b << m))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec minus`

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
(Prims.pure_post SfBasic.nat))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(147,2-150,29)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(147,2-150,29)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(147,2-150,29)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(147,2-150,29)
(and (implies 
;; def=SfBasic.fst(148,4-150,14); use=SfBasic.fst(148,4-150,14)
(and 
;; def=SfBasic.fst(148,4-148,11); use=SfBasic.fst(148,4-148,11)
(not 
;; def=SfBasic.fst(148,4-148,11); use=SfBasic.fst(148,4-148,11)
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
)


;; def=SfBasic.fst(149,4-149,11); use=SfBasic.fst(149,4-149,11)
(not 
;; def=SfBasic.fst(149,4-149,11); use=SfBasic.fst(149,4-149,11)
(and (BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)


;; def=SfBasic.fst(150,4-150,14); use=SfBasic.fst(150,4-150,14)
(not 
;; def=SfBasic.fst(150,4-150,14); use=SfBasic.fst(150,4-150,14)
(and (BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)
)

label_1)
(implies 
;; def=Prims.fst(389,18-389,39); use=SfBasic.fst(147,2-150,29)
(and 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(147,2-150,29)
(not 
;; def=SfBasic.fst(148,4-148,11); use=SfBasic.fst(148,4-148,11)
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
)


;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(147,2-150,29)
(not 
;; def=SfBasic.fst(149,4-149,11); use=SfBasic.fst(149,4-149,11)
(and (BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(147,2-150,29)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)

;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(147,2-150,29)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfBasic.nat)

;; def=SfBasic.fst(147,8-150,14); use=SfBasic.fst(147,8-150,14)
(= (FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
(SfBasic.S @x1)
(SfBasic.S @x2)))
)

;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(150,27-150,29)
(or label_2

;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(150,27-150,29)
(Valid 
;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(150,27-150,29)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(146,15-150,29); use=SfBasic.fst(150,27-150,29)
(and 
;; def=SfBasic.fst(146,15-146,16); use=SfBasic.fst(150,27-150,29)
(Valid 
;; def=SfBasic.fst(146,15-146,16); use=SfBasic.fst(150,27-150,29)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(150,27-150,29)
(Valid 
;; def=SfBasic.fst(147,2-150,29); use=SfBasic.fst(150,27-150,29)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_1)
)
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
; QUERY ID: (SfBasic.minus, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_ccd81122687c082c3642373b68717e85_0, binder_x_ccd81122687c082c3642373b68717e85_1, disc_equation_SfBasic.O, disc_equation_SfBasic.S, fuel_guarded_inversion_SfBasic.nat, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec minus


; <Start encoding let rec minus>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfBasic.minus.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfBasic.minus.fuel_instrumented_token () Term)
(declare-fun SfBasic.minus (Term Term) Term)
(declare-fun SfBasic.minus@tok () Term)


; </end encoding let rec minus>


; encoding sigelt val SfBasic.beq_nat


; <Skipped val SfBasic.beq_nat/>

(push) ;; push{2

; Starting query at SfBasic.fst(154,2-157,24)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
(declare-fun Tm_refine_79fc586842f5a3b3c04e41488751b31a (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(153,16-157,24)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_79fc586842f5a3b3c04e41488751b31a @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_79fc586842f5a3b3c04e41488751b31a @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_79fc586842f5a3b3c04e41488751b31a))

:named refinement_kinding_Tm_refine_79fc586842f5a3b3c04e41488751b31a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(153,16-157,24)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_79fc586842f5a3b3c04e41488751b31a @x2))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(153,16-157,24)

;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(153,16-157,24)
(or 
;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(154,2-157,24)
(Valid 
;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(154,2-157,24)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(153,16-157,24)
(and 
;; def=SfBasic.fst(153,16-153,17); use=SfBasic.fst(153,16-153,17)
(Valid 
;; def=SfBasic.fst(153,16-153,17); use=SfBasic.fst(153,16-153,17)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(154,2-157,24)
(Valid 
;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(154,2-157,24)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_79fc586842f5a3b3c04e41488751b31a @x2)))
:qid refinement_interpretation_Tm_refine_79fc586842f5a3b3c04e41488751b31a))

:named refinement_interpretation_Tm_refine_79fc586842f5a3b3c04e41488751b31a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_79fc586842f5a3b3c04e41488751b31a
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(153,16-157,24)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_79fc586842f5a3b3c04e41488751b31a @x0)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_79fc586842f5a3b3c04e41488751b31a @x0))))
:qid haseqTm_refine_79fc586842f5a3b3c04e41488751b31a))

:named haseqTm_refine_79fc586842f5a3b3c04e41488751b31a))
(declare-fun SfBasic.beq_nat (Term Term) Term)

;;;;;;;;;;;;;;;;_: nat -> _: _: nat{_ << n \/ _ === n /\ _ << m} -> mbool
(declare-fun Tm_arrow_d4e2433e43f1a8646d4143069d919e44 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d4e2433e43f1a8646d4143069d919e44
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_d4e2433e43f1a8646d4143069d919e44
Tm_type)
:named kinding_Tm_arrow_d4e2433e43f1a8646d4143069d919e44))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(152,14-157,24); use=SfBasic.fst(153,8-157,24)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d4e2433e43f1a8646d4143069d919e44)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d4e2433e43f1a8646d4143069d919e44))
:qid SfBasic_pre_typing_Tm_arrow_d4e2433e43f1a8646d4143069d919e44))

:named SfBasic_pre_typing_Tm_arrow_d4e2433e43f1a8646d4143069d919e44))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d4e2433e43f1a8646d4143069d919e44
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(152,14-157,24); use=SfBasic.fst(153,8-157,24)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d4e2433e43f1a8646d4143069d919e44)
(and 
;; def=SfBasic.fst(152,14-157,24); use=SfBasic.fst(153,8-157,24)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
(Tm_refine_79fc586842f5a3b3c04e41488751b31a @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfBasic.mbool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfBasic_interpretation_Tm_arrow_d4e2433e43f1a8646d4143069d919e44.1))

(IsTotFun @x0)

;; def=SfBasic.fst(152,14-157,24); use=SfBasic.fst(153,8-157,24)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfBasic_interpretation_Tm_arrow_d4e2433e43f1a8646d4143069d919e44.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d4e2433e43f1a8646d4143069d919e44))
:qid SfBasic_interpretation_Tm_arrow_d4e2433e43f1a8646d4143069d919e44))

:named SfBasic_interpretation_Tm_arrow_d4e2433e43f1a8646d4143069d919e44))
(declare-fun SfBasic.beq_nat@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.beq_nat@tok
@x0)
@x1)
(SfBasic.beq_nat @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfBasic.beq_nat@tok
@x0)
@x1))
:qid token_correspondence_SfBasic.beq_nat))

:named token_correspondence_SfBasic.beq_nat))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfBasic.beq_nat@tok
Tm_arrow_d4e2433e43f1a8646d4143069d919e44))

;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.beq_nat@tok
@x1)
@x2)
(SfBasic.beq_nat @x1
@x2))
 

:pattern ((SfBasic.beq_nat @x1
@x2))
:qid function_token_typing_SfBasic.beq_nat.1))
)
 

:pattern ((ApplyTT @x0
SfBasic.beq_nat@tok))
:qid function_token_typing_SfBasic.beq_nat))

:named function_token_typing_SfBasic.beq_nat))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
(Tm_refine_79fc586842f5a3b3c04e41488751b31a @x0)))
(HasType (SfBasic.beq_nat @x0
@x1)
SfBasic.mbool))
 

:pattern ((SfBasic.beq_nat @x0
@x1))
:qid typing_SfBasic.beq_nat))

:named typing_SfBasic.beq_nat))
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfBasic.mbool).
;   (forall (x: SfBasic.mbool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   ~(O? (n, m)._1 && O? (n, m)._2) ==>
;   (forall (b: SfBasic.nat) (b: SfBasic.nat).
;       (n, m) == (SfBasic.S b, SfBasic.S b) ==> b << n \/ b === n /\ b << m)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec beq_nat`

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
(Prims.pure_post SfBasic.mbool))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(154,2-157,24)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(154,2-157,24)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(154,2-157,24)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))


;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(154,2-157,24)
(not 
;; def=SfBasic.fst(155,4-155,11); use=SfBasic.fst(155,4-155,11)
(and (BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)
)

;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(154,2-157,24)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)

;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(154,2-157,24)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfBasic.nat)

;; def=SfBasic.fst(154,8-156,14); use=SfBasic.fst(154,8-156,14)
(= (FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
(SfBasic.S @x1)
(SfBasic.S @x2)))
)

;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(156,29-156,31)
(or label_1

;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(156,29-156,31)
(Valid 
;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(156,29-156,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(153,16-157,24); use=SfBasic.fst(156,29-156,31)
(and 
;; def=SfBasic.fst(153,16-153,17); use=SfBasic.fst(156,29-156,31)
(Valid 
;; def=SfBasic.fst(153,16-153,17); use=SfBasic.fst(156,29-156,31)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(156,29-156,31)
(Valid 
;; def=SfBasic.fst(154,2-157,24); use=SfBasic.fst(156,29-156,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_1)
)
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
; QUERY ID: (SfBasic.beq_nat, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_ccd81122687c082c3642373b68717e85_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, subterm_ordering_SfBasic.S

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec beq_nat


; <Start encoding let rec beq_nat>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfBasic.beq_nat.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfBasic.beq_nat.fuel_instrumented_token () Term)
(declare-fun SfBasic.beq_nat (Term Term) Term)
(declare-fun SfBasic.beq_nat@tok () Term)
;;;;;;;;;;;;;;;;n: nat -> m: nat -> mbool
(declare-fun Tm_arrow_38b2031acd93220e828c3776a8ffba21 () Term)

; </end encoding let rec beq_nat>


; encoding sigelt val SfBasic.ble_nat


; <Skipped val SfBasic.ble_nat/>

(push) ;; push{2

; Starting query at SfBasic.fst(161,2-164,31)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
(declare-fun Tm_refine_77d1a437772d269f7f000b351194efd2 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(160,16-164,31)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_77d1a437772d269f7f000b351194efd2 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_77d1a437772d269f7f000b351194efd2 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_77d1a437772d269f7f000b351194efd2))

:named refinement_kinding_Tm_refine_77d1a437772d269f7f000b351194efd2))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(160,16-164,31)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_77d1a437772d269f7f000b351194efd2 @x2))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(160,16-164,31)

;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(160,16-164,31)
(or 
;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(161,2-164,31)
(Valid 
;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(161,2-164,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(160,16-164,31)
(and 
;; def=SfBasic.fst(160,16-160,17); use=SfBasic.fst(160,16-160,17)
(Valid 
;; def=SfBasic.fst(160,16-160,17); use=SfBasic.fst(160,16-160,17)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(161,2-164,31)
(Valid 
;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(161,2-164,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_77d1a437772d269f7f000b351194efd2 @x2)))
:qid refinement_interpretation_Tm_refine_77d1a437772d269f7f000b351194efd2))

:named refinement_interpretation_Tm_refine_77d1a437772d269f7f000b351194efd2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_77d1a437772d269f7f000b351194efd2
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(160,16-164,31)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_77d1a437772d269f7f000b351194efd2 @x0)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_77d1a437772d269f7f000b351194efd2 @x0))))
:qid haseqTm_refine_77d1a437772d269f7f000b351194efd2))

:named haseqTm_refine_77d1a437772d269f7f000b351194efd2))
(declare-fun SfBasic.ble_nat (Term Term) Term)

;;;;;;;;;;;;;;;;_: nat -> _: _: nat{_ << n \/ _ === n /\ _ << m} -> mbool
(declare-fun Tm_arrow_cd178f37d38d248b69df82f079fcfea3 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_cd178f37d38d248b69df82f079fcfea3
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_cd178f37d38d248b69df82f079fcfea3
Tm_type)
:named kinding_Tm_arrow_cd178f37d38d248b69df82f079fcfea3))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(159,14-164,31); use=SfBasic.fst(160,8-164,31)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_cd178f37d38d248b69df82f079fcfea3)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_cd178f37d38d248b69df82f079fcfea3))
:qid SfBasic_pre_typing_Tm_arrow_cd178f37d38d248b69df82f079fcfea3))

:named SfBasic_pre_typing_Tm_arrow_cd178f37d38d248b69df82f079fcfea3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_cd178f37d38d248b69df82f079fcfea3
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(159,14-164,31); use=SfBasic.fst(160,8-164,31)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_cd178f37d38d248b69df82f079fcfea3)
(and 
;; def=SfBasic.fst(159,14-164,31); use=SfBasic.fst(160,8-164,31)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
(Tm_refine_77d1a437772d269f7f000b351194efd2 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfBasic.mbool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfBasic_interpretation_Tm_arrow_cd178f37d38d248b69df82f079fcfea3.1))

(IsTotFun @x0)

;; def=SfBasic.fst(159,14-164,31); use=SfBasic.fst(160,8-164,31)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfBasic_interpretation_Tm_arrow_cd178f37d38d248b69df82f079fcfea3.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_cd178f37d38d248b69df82f079fcfea3))
:qid SfBasic_interpretation_Tm_arrow_cd178f37d38d248b69df82f079fcfea3))

:named SfBasic_interpretation_Tm_arrow_cd178f37d38d248b69df82f079fcfea3))
(declare-fun SfBasic.ble_nat@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.ble_nat@tok
@x0)
@x1)
(SfBasic.ble_nat @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfBasic.ble_nat@tok
@x0)
@x1))
:qid token_correspondence_SfBasic.ble_nat))

:named token_correspondence_SfBasic.ble_nat))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfBasic.ble_nat@tok
Tm_arrow_cd178f37d38d248b69df82f079fcfea3))

;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfBasic.ble_nat@tok
@x1)
@x2)
(SfBasic.ble_nat @x1
@x2))
 

:pattern ((SfBasic.ble_nat @x1
@x2))
:qid function_token_typing_SfBasic.ble_nat.1))
)
 

:pattern ((ApplyTT @x0
SfBasic.ble_nat@tok))
:qid function_token_typing_SfBasic.ble_nat))

:named function_token_typing_SfBasic.ble_nat))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
(Tm_refine_77d1a437772d269f7f000b351194efd2 @x0)))
(HasType (SfBasic.ble_nat @x0
@x1)
SfBasic.mbool))
 

:pattern ((SfBasic.ble_nat @x0
@x1))
:qid typing_SfBasic.ble_nat))

:named typing_SfBasic.ble_nat))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfBasic.mbool).
;   (forall (x: SfBasic.mbool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? (n, m)._1) /\ ~(S? (n, m)._1 && O? (n, m)._2) /\ ~(S? (n, m)._1 && S? (n, m)._2) ==>
;     Prims.l_False) /\
;   (~(O? (n, m)._1) ==>
;     ~(S? (n, m)._1 && O? (n, m)._2) ==>
;     (forall (b: SfBasic.nat) (b: SfBasic.nat).
;         (n, m) == (SfBasic.S b, SfBasic.S b) ==> b << n \/ b === n /\ b << m))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec ble_nat`

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
(Prims.pure_post SfBasic.mbool))

;; def=Prims.fst(402,27-402,88); use=SfBasic.fst(161,2-164,31)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(161,2-164,31)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(161,2-164,31)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(161,2-164,31)
(and (implies 
;; def=SfBasic.fst(162,4-164,14); use=SfBasic.fst(162,4-164,14)
(and 
;; def=SfBasic.fst(162,4-162,11); use=SfBasic.fst(162,4-162,11)
(not 
;; def=SfBasic.fst(162,4-162,11); use=SfBasic.fst(162,4-162,11)
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
)


;; def=SfBasic.fst(163,4-163,11); use=SfBasic.fst(163,4-163,11)
(not 
;; def=SfBasic.fst(163,4-163,11); use=SfBasic.fst(163,4-163,11)
(and (BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)


;; def=SfBasic.fst(164,4-164,14); use=SfBasic.fst(164,4-164,14)
(not 
;; def=SfBasic.fst(164,4-164,14); use=SfBasic.fst(164,4-164,14)
(and (BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)
)

label_1)
(implies 
;; def=Prims.fst(389,18-389,39); use=SfBasic.fst(161,2-164,31)
(and 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(161,2-164,31)
(not 
;; def=SfBasic.fst(162,4-162,11); use=SfBasic.fst(162,4-162,11)
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
)


;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(161,2-164,31)
(not 
;; def=SfBasic.fst(163,4-163,11); use=SfBasic.fst(163,4-163,11)
(and (BoxBool_proj_0 (SfBasic.uu___is_S (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))))
(BoxBool_proj_0 (SfBasic.uu___is_O (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfBasic.nat
SfBasic.nat
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)))))
)
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(161,2-164,31)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfBasic.nat)

;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(161,2-164,31)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfBasic.nat)

;; def=SfBasic.fst(161,8-164,14); use=SfBasic.fst(161,8-164,14)
(= (FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)
(FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
(SfBasic.S @x1)
(SfBasic.S @x2)))
)

;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(164,29-164,31)
(or label_2

;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(164,29-164,31)
(Valid 
;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(164,29-164,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(160,16-164,31); use=SfBasic.fst(164,29-164,31)
(and 
;; def=SfBasic.fst(160,16-160,17); use=SfBasic.fst(164,29-164,31)
(Valid 
;; def=SfBasic.fst(160,16-160,17); use=SfBasic.fst(164,29-164,31)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x1
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(164,29-164,31)
(Valid 
;; def=SfBasic.fst(161,2-164,31); use=SfBasic.fst(164,29-164,31)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_1)
)
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
; QUERY ID: (SfBasic.ble_nat, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_ccd81122687c082c3642373b68717e85_0, binder_x_ccd81122687c082c3642373b68717e85_1, disc_equation_SfBasic.O, disc_equation_SfBasic.S, fuel_guarded_inversion_SfBasic.nat, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec ble_nat


; <Start encoding let rec ble_nat>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfBasic.ble_nat.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfBasic.ble_nat.fuel_instrumented_token () Term)
(declare-fun SfBasic.ble_nat (Term Term) Term)
(declare-fun SfBasic.ble_nat@tok () Term)


; </end encoding let rec ble_nat>

(push) ;; push{2

; Starting query at SfBasic.fst(166,0-167,53)

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
;; def=SfBasic.fst(166,28-167,53); use=SfBasic.fst(166,28-166,33)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_ble_nat1`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(166,0-167,53)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(167,16-167,23)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(167,16-167,23)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(167,16-167,23)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_ble_nat1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_ble_nat1


; <Skipped val SfBasic.test_ble_nat1/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.ble_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat))
(HasType (SfBasic.ble_nat @x0
@x1)
SfBasic.mbool))
 

:pattern ((SfBasic.ble_nat @x0
@x1))
:qid typing_SfBasic.ble_nat))

:named typing_SfBasic.ble_nat))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfBasic.ble_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(HasType (SfBasic.ble_nat.fuel_instrumented @u0
@x1
@x2)
SfBasic.mbool))
 

:pattern ((SfBasic.ble_nat.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfBasic.ble_nat.fuel_instrumented))

:named token_correspondence_SfBasic.ble_nat.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfBasic.ble_nat
;;; Fact-ids: Name SfBasic.ble_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(= (SfBasic.ble_nat.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 (FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
@x1
@x2)))
(ite (is-SfBasic.O (FStar.Pervasives.Native.Mktuple2__1 @lb3))
SfBasic.MTrue@tok
(ite (and (is-SfBasic.S (FStar.Pervasives.Native.Mktuple2__1 @lb3))
(is-SfBasic.O (FStar.Pervasives.Native.Mktuple2__2 @lb3)))
SfBasic.MFalse@tok
(ite (and (is-SfBasic.S (FStar.Pervasives.Native.Mktuple2__1 @lb3))
(is-SfBasic.S (FStar.Pervasives.Native.Mktuple2__2 @lb3)))
(SfBasic.ble_nat.fuel_instrumented @u0
(SfBasic.S__0 (FStar.Pervasives.Native.Mktuple2__1 @lb3))
(SfBasic.S__0 (FStar.Pervasives.Native.Mktuple2__2 @lb3)))
Tm_unit))))))
 :weight 0


:pattern ((SfBasic.ble_nat.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfBasic.ble_nat.fuel_instrumented))

:named equation_with_fuel_SfBasic.ble_nat.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfBasic.ble_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfBasic.ble_nat.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfBasic.ble_nat.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfBasic.ble_nat.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfBasic.ble_nat.fuel_instrumented))

:named @fuel_irrelevance_SfBasic.ble_nat.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfBasic.ble_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(160,8-160,15); use=SfBasic.fst(160,8-160,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfBasic.ble_nat @x0
@x1)
(SfBasic.ble_nat.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfBasic.ble_nat @x0
@x1))
:qid @fuel_correspondence_SfBasic.ble_nat.fuel_instrumented))

:named @fuel_correspondence_SfBasic.ble_nat.fuel_instrumented))
(push) ;; push{2

; Starting query at SfBasic.fst(168,23-168,25)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O)) (SfBasic.S (SfBasic.S SfBasic.O)) =
;         SfBasic.MTrue ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_ble_nat1`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(168,23-168,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(167,15-167,52); use=SfBasic.fst(168,23-168,25)
(or label_2

;; def=SfBasic.fst(167,15-167,52); use=SfBasic.fst(168,23-168,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O@tok))
(SfBasic.S (SfBasic.S SfBasic.O@tok)))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat1, 2)
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
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(168,23-168,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(167,15-167,52); use=SfBasic.fst(168,23-168,25)
(or label_2

;; def=SfBasic.fst(167,15-167,52); use=SfBasic.fst(168,23-168,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O@tok))
(SfBasic.S (SfBasic.S SfBasic.O@tok)))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat1, 2)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='4' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel ZFuel)))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(168,23-168,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(167,15-167,52); use=SfBasic.fst(168,23-168,25)
(or label_2

;; def=SfBasic.fst(167,15-167,52); use=SfBasic.fst(168,23-168,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O@tok))
(SfBasic.S (SfBasic.S SfBasic.O@tok)))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(168,23-168,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat1, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.ble_nat.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.ble_nat.fuel_instrumented, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfBasic.S__0, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_ble_nat1


; <Start encoding let test_ble_nat1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_ble_nat1 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_ble_nat1@tok () Term)

; </end encoding let test_ble_nat1>

(push) ;; push{2

; Starting query at SfBasic.fst(170,0-171,61)

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
;; def=SfBasic.fst(170,28-171,61); use=SfBasic.fst(170,28-170,33)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_ble_nat2`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(170,0-171,61)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(171,16-171,23)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(171,16-171,23)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(171,16-171,23)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_ble_nat2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_ble_nat2


; <Skipped val SfBasic.test_ble_nat2/>

(push) ;; push{2

; Starting query at SfBasic.fst(172,23-172,25)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O))
;           (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O)))) =
;         SfBasic.MTrue ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_ble_nat2`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(172,23-172,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(171,15-171,60); use=SfBasic.fst(172,23-172,25)
(or label_2

;; def=SfBasic.fst(171,15-171,60); use=SfBasic.fst(172,23-172,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O@tok))
(SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat2, 2)
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
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(172,23-172,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(171,15-171,60); use=SfBasic.fst(172,23-172,25)
(or label_2

;; def=SfBasic.fst(171,15-171,60); use=SfBasic.fst(172,23-172,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O@tok))
(SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat2, 2)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='4' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel ZFuel)))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(172,23-172,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(171,15-171,60); use=SfBasic.fst(172,23-172,25)
(or label_2

;; def=SfBasic.fst(171,15-171,60); use=SfBasic.fst(172,23-172,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S SfBasic.O@tok))
(SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok)))))
SfBasic.MTrue@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(172,23-172,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat2, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.ble_nat.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, constructor_distinct_Tm_unit, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.MTrue@tok, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.ble_nat.fuel_instrumented, fuel_guarded_inversion_SfBasic.mbool, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfBasic.S__0, typing_SfBasic.ble_nat, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_ble_nat2


; <Start encoding let test_ble_nat2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_ble_nat2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_ble_nat2@tok () Term)

; </end encoding let test_ble_nat2>

(push) ;; push{2

; Starting query at SfBasic.fst(174,0-175,62)

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
;; def=SfBasic.fst(174,28-175,62); use=SfBasic.fst(174,28-174,33)
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

; Encoding query formula : forall (_: Prims.unit) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.test_ble_nat3`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(174,0-175,62)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(175,16-175,23)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(175,16-175,23)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(175,16-175,23)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.test_ble_nat3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.test_ble_nat3


; <Skipped val SfBasic.test_ble_nat3/>

(push) ;; push{2

; Starting query at SfBasic.fst(176,23-176,25)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.ble_nat (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O))))
;           (SfBasic.S (SfBasic.S SfBasic.O)) =
;         SfBasic.MFalse ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_ble_nat3`

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

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(176,23-176,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(175,15-175,61); use=SfBasic.fst(176,23-176,25)
(or label_2

;; def=SfBasic.fst(175,15-175,61); use=SfBasic.fst(176,23-176,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))
(SfBasic.S (SfBasic.S SfBasic.O@tok)))
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat3, 2)
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
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(176,23-176,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(175,15-175,61); use=SfBasic.fst(176,23-176,25)
(or label_2

;; def=SfBasic.fst(175,15-175,61); use=SfBasic.fst(176,23-176,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))
(SfBasic.S (SfBasic.S SfBasic.O@tok)))
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat3, 2)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='4' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel ZFuel)))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.unit)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(176,23-176,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(175,15-175,61); use=SfBasic.fst(176,23-176,25)
(or label_2

;; def=SfBasic.fst(175,15-175,61); use=SfBasic.fst(176,23-176,25)
(= (SfBasic.ble_nat (SfBasic.S (SfBasic.S (SfBasic.S (SfBasic.S SfBasic.O@tok))))
(SfBasic.S (SfBasic.S SfBasic.O@tok)))
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(176,23-176,25)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.test_ble_nat3, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.ble_nat.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.ble_nat.fuel_instrumented, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfBasic.S__0, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_ble_nat3


; <Start encoding let test_ble_nat3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.test_ble_nat3 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.test_ble_nat3@tok () Term)

; </end encoding let test_ble_nat3>

(push) ;; push{2

; Starting query at SfBasic.fst(180,0-181,30)

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
;; def=SfBasic.fst(180,26-181,30); use=SfBasic.fst(180,26-180,31)
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

; Encoding query formula : forall (n: SfBasic.nat) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_O_n`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(180,0-181,30)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(181,16-181,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(181,16-181,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(181,16-181,20)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_O_n, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_O_n


; <Skipped val SfBasic.plus_O_n/>

(push) ;; push{2

; Starting query at SfBasic.fst(182,17-182,19)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit). SfBasic.plus SfBasic.O n = n ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let plus_O_n`

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
SfBasic.nat)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(182,17-182,19)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(181,15-181,29); use=SfBasic.fst(182,17-182,19)
(or label_2

;; def=SfBasic.fst(181,15-181,29); use=SfBasic.fst(182,17-182,19)
(= (SfBasic.plus SfBasic.O@tok
@x0)
@x0)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(182,17-182,19)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(182,17-182,19)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(182,17-182,19)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(182,17-182,19)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.plus_O_n, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @query, constructor_distinct_SfBasic.O, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.plus.fuel_instrumented, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let plus_O_n


; <Start encoding let plus_O_n>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_O_n (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_O_n@tok () Term)

; </end encoding let plus_O_n>

;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.coerce_eq; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(1218,44-1218,52); use=FStar.Pervasives.fsti(1218,44-1218,52)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_0dee8cb03258a67c2f7ec66427696212))

:named refinement_kinding_Tm_refine_0dee8cb03258a67c2f7ec66427696212))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Pervasives.coerce_eq; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(1218,44-1218,52); use=FStar.Pervasives.fsti(1218,44-1218,52)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=FStar.Pervasives.fsti(1218,44-1218,52); use=FStar.Pervasives.fsti(1218,44-1218,52)
(= @x2
@x3)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_0dee8cb03258a67c2f7ec66427696212))

:named refinement_interpretation_Tm_refine_0dee8cb03258a67c2f7ec66427696212))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0dee8cb03258a67c2f7ec66427696212
;;; Fact-ids: Name FStar.Pervasives.coerce_eq; Namespace FStar.Pervasives
(assert (! 
;; def=FStar.Pervasives.fsti(1218,44-1218,52); use=FStar.Pervasives.fsti(1218,44-1218,52)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x0
@x1)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x0
@x1))))
:qid haseqTm_refine_0dee8cb03258a67c2f7ec66427696212))

:named haseqTm_refine_0dee8cb03258a67c2f7ec66427696212))
(push) ;; push{2

; Starting query at SfBasic.fst(186,0-188,48)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat) (r: _: Prims.unit{n == m}).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_id_example`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(186,0-188,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
(Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x0
@x1)))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(188,26-188,30)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(186,26-186,53)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(186,26-186,53)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_id_example, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_id_example


; <Skipped val SfBasic.plus_id_example/>

(push) ;; push{2

; Starting query at SfBasic.fst(189,26-189,28)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     n == m /\
;     (forall (pure_result: Prims.unit). SfBasic.plus n n = SfBasic.plus m m ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let plus_id_example`

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
SfBasic.nat)
(HasType @x1
SfBasic.nat))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Prims.unit))

;; def=SfBasic.fst(187,16-187,24); use=SfBasic.fst(189,26-189,28)
(= @x0
@x1)


;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(189,26-189,28)
(forall ((@x3 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))

;; def=SfBasic.fst(188,25-188,46); use=SfBasic.fst(189,26-189,28)
(or label_2

;; def=SfBasic.fst(188,25-188,46); use=SfBasic.fst(189,26-189,28)
(= (SfBasic.plus @x0
@x0)
(SfBasic.plus @x1
@x1))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(189,26-189,28)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(189,26-189,28)
(ApplyTT @x2
@x3)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(189,26-189,28)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(189,26-189,28)
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
; QUERY ID: (SfBasic.plus_id_example, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let plus_id_example


; <Start encoding let plus_id_example>

(declare-fun SfBasic.plus_id_example (Term Term) Term)
(declare-fun Tm_refine_d109c9eb622bbb2407b7cbbb723ecc8f (Term Term) Term)
;;;;;;;;;;;;;;;;n: nat -> m: nat -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_dc31f84e62f25606a3459dc6f86f78a8 () Term)
(declare-fun SfBasic.plus_id_example@tok () Term)


; </end encoding let plus_id_example>

(push) ;; push{2

; Starting query at SfBasic.fst(191,0-192,48)

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
;; def=SfBasic.fst(191,40-192,48); use=SfBasic.fst(191,40-191,45)
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

; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.mult_0_plus`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(191,0-192,48)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(192,17-192,21)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(192,17-192,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(192,17-192,21)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.mult_0_plus, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.mult_0_plus


; <Skipped val SfBasic.mult_0_plus/>

(push) ;; push{2

; Starting query at SfBasic.fst(193,22-193,24)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.mult (SfBasic.plus SfBasic.O n) m = SfBasic.mult n m ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let mult_0_plus`

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
SfBasic.nat)
(HasType @x1
SfBasic.nat))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(193,22-193,24)
(forall ((@x3 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))

;; def=SfBasic.fst(192,15-192,47); use=SfBasic.fst(193,22-193,24)
(or label_2

;; def=SfBasic.fst(192,15-192,47); use=SfBasic.fst(193,22-193,24)
(= (SfBasic.mult (SfBasic.plus SfBasic.O@tok
@x0)
@x1)
(SfBasic.mult @x0
@x1))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(193,22-193,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(193,22-193,24)
(ApplyTT @x2
@x3)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(193,22-193,24)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(193,22-193,24)
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
; QUERY ID: (SfBasic.mult_0_plus, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @query, constructor_distinct_SfBasic.O, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.plus.fuel_instrumented, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let mult_0_plus


; <Start encoding let mult_0_plus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.mult_0_plus (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.mult_0_plus@tok () Term)

; </end encoding let mult_0_plus>

(push) ;; push{2

; Starting query at SfBasic.fst(196,0-197,51)

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
;; def=SfBasic.fst(196,30-197,51); use=SfBasic.fst(196,30-196,35)
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

; Encoding query formula : forall (n: SfBasic.nat) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_1_neq_0`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(196,0-197,51)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(197,16-197,23)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(197,16-197,23)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(197,16-197,23)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.plus_1_neq_0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_1_neq_0


; <Skipped val SfBasic.plus_1_neq_0/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfBasic.beq_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat))
(HasType (SfBasic.beq_nat @x0
@x1)
SfBasic.mbool))
 

:pattern ((SfBasic.beq_nat @x0
@x1))
:qid typing_SfBasic.beq_nat))

:named typing_SfBasic.beq_nat))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfBasic.beq_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(HasType (SfBasic.beq_nat.fuel_instrumented @u0
@x1
@x2)
SfBasic.mbool))
 

:pattern ((SfBasic.beq_nat.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfBasic.beq_nat.fuel_instrumented))

:named token_correspondence_SfBasic.beq_nat.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfBasic.beq_nat
;;; Fact-ids: Name SfBasic.beq_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat))
(= (SfBasic.beq_nat.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 (FStar.Pervasives.Native.Mktuple2 SfBasic.nat
SfBasic.nat
@x1
@x2)))
(ite (and (is-SfBasic.O (FStar.Pervasives.Native.Mktuple2__1 @lb3))
(is-SfBasic.O (FStar.Pervasives.Native.Mktuple2__2 @lb3)))
SfBasic.MTrue@tok
(ite (and (is-SfBasic.S (FStar.Pervasives.Native.Mktuple2__1 @lb3))
(is-SfBasic.S (FStar.Pervasives.Native.Mktuple2__2 @lb3)))
(SfBasic.beq_nat.fuel_instrumented @u0
(SfBasic.S__0 (FStar.Pervasives.Native.Mktuple2__1 @lb3))
(SfBasic.S__0 (FStar.Pervasives.Native.Mktuple2__2 @lb3)))
SfBasic.MFalse@tok)))))
 :weight 0


:pattern ((SfBasic.beq_nat.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfBasic.beq_nat.fuel_instrumented))

:named equation_with_fuel_SfBasic.beq_nat.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfBasic.beq_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfBasic.beq_nat.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfBasic.beq_nat.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfBasic.beq_nat.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfBasic.beq_nat.fuel_instrumented))

:named @fuel_irrelevance_SfBasic.beq_nat.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfBasic.beq_nat; Namespace SfBasic
(assert (! 
;; def=SfBasic.fst(153,8-153,15); use=SfBasic.fst(153,8-153,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfBasic.beq_nat @x0
@x1)
(SfBasic.beq_nat.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfBasic.beq_nat @x0
@x1))
:qid @fuel_correspondence_SfBasic.beq_nat.fuel_instrumented))

:named @fuel_correspondence_SfBasic.beq_nat.fuel_instrumented))
(push) ;; push{2

; Starting query at SfBasic.fst(198,21-198,23)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.beq_nat (SfBasic.plus n (SfBasic.S SfBasic.O)) SfBasic.O = SfBasic.MFalse ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let plus_1_neq_0`

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
SfBasic.nat)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(198,21-198,23)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(197,15-197,50); use=SfBasic.fst(198,21-198,23)
(or label_2

;; def=SfBasic.fst(197,15-197,50); use=SfBasic.fst(198,21-198,23)
(= (SfBasic.beq_nat (SfBasic.plus @x0
(SfBasic.S SfBasic.O@tok))
SfBasic.O@tok)
SfBasic.MFalse@tok)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(198,21-198,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(198,21-198,23)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(198,21-198,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(198,21-198,23)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.plus_1_neq_0, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.beq_nat.fuel_instrumented, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.beq_nat.fuel_instrumented, equation_with_fuel_SfBasic.plus.fuel_instrumented, fuel_guarded_inversion_SfBasic.nat, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, typing_SfBasic.plus, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let plus_1_neq_0


; <Start encoding let plus_1_neq_0>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_1_neq_0 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_1_neq_0@tok () Term)

; </end encoding let plus_1_neq_0>

(push) ;; push{2

; Starting query at SfBasic.fst(200,0-201,35)

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
;; def=SfBasic.fst(200,35-201,35); use=SfBasic.fst(200,35-200,40)
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

; Encoding query formula : forall (b: SfBasic.mbool) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.mbool


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.negb_involutive`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(200,0-201,35)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.mbool)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(201,16-201,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(201,16-201,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(201,16-201,20)
(Prims.hasEq SfBasic.mbool)
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
; QUERY ID: (SfBasic.negb_involutive, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.mbool__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.negb_involutive


; <Skipped val SfBasic.negb_involutive/>

(push) ;; push{2

; Starting query at SfBasic.fst(202,24-202,26)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (b: SfBasic.mbool).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit). SfBasic.negb (SfBasic.negb b) = b ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let negb_involutive`

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
SfBasic.mbool)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(202,24-202,26)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfBasic.fst(201,15-201,34); use=SfBasic.fst(202,24-202,26)
(or label_2

;; def=SfBasic.fst(201,15-201,34); use=SfBasic.fst(202,24-202,26)
(= (SfBasic.negb (SfBasic.negb @x0))
@x0)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(202,24-202,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(202,24-202,26)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(202,24-202,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(202,24-202,26)
(ApplyTT @x1
@x2)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(ApplyTT @x1
@x2)
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
; QUERY ID: (SfBasic.negb_involutive, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, constructor_distinct_SfBasic.MFalse, equality_tok_SfBasic.MFalse@tok, equality_tok_SfBasic.MTrue@tok, equation_SfBasic.negb, fuel_guarded_inversion_SfBasic.mbool, typing_SfBasic.negb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let negb_involutive


; <Start encoding let negb_involutive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.negb_involutive (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.negb_involutive@tok () Term)

; </end encoding let negb_involutive>

(push) ;; push{2

; Starting query at SfBasic.fst(205,0-206,30)

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
;; def=SfBasic.fst(205,26-206,30); use=SfBasic.fst(205,26-205,31)
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

; Encoding query formula : forall (n: SfBasic.nat) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_0_r`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(205,0-206,30)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(206,16-206,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(206,16-206,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(206,16-206,20)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_0_r, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_0_r


; <Skipped val SfBasic.plus_0_r/>

(push) ;; push{2

; Starting query at SfBasic.fst(208,2-210,23)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_0_r (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_0_r@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). SfBasic.plus n SfBasic.O = n ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(O? n) /\ ~(S? n) ==> Prims.l_False) /\
;       (n == SfBasic.O ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(O? n) ==>
;         (forall (b: SfBasic.nat).
;             n == SfBasic.S b ==>
;             b << n /\
;             (forall (any_result: SfBasic.nat).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit). SfBasic.plus b SfBasic.O = b ==> k pure_result)))
;       ))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus_0_r`

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
;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(208,2-210,23)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(208,2-210,23)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfBasic.fst(206,15-206,29); use=SfBasic.fst(208,2-210,23)
(or label_2

;; def=SfBasic.fst(206,15-206,29); use=SfBasic.fst(208,2-210,23)
(= (SfBasic.plus x_ccd81122687c082c3642373b68717e85_0
SfBasic.O@tok)
x_ccd81122687c082c3642373b68717e85_0)
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(208,2-210,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(208,2-210,23)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(208,2-210,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(208,2-210,23)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfBasic.fst(208,2-210,23)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfBasic.fst(208,2-210,23)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfBasic.fst(208,2-210,23)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfBasic.fst(208,2-210,23)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(208,2-210,23)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(208,2-210,23)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(208,2-210,23)
(and (implies 
;; def=SfBasic.fst(207,17-207,18); use=SfBasic.fst(208,8-208,9)
(and 
;; def=SfBasic.fst(207,17-207,18); use=SfBasic.fst(208,8-208,9)
(not 
;; def=SfBasic.fst(207,17-207,18); use=SfBasic.fst(208,8-208,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=SfBasic.fst(207,17-207,18); use=SfBasic.fst(208,8-208,9)
(not 
;; def=SfBasic.fst(207,17-207,18); use=SfBasic.fst(208,8-208,9)
(BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
)
)

label_3)
(implies 
;; def=SfBasic.fst(207,17-209,5); use=SfBasic.fst(208,8-209,5)
(= x_ccd81122687c082c3642373b68717e85_0
SfBasic.O@tok)


;; def=Prims.fst(451,66-451,102); use=SfBasic.fst(208,2-210,23)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfBasic.fst(208,2-210,23)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfBasic.fst(208,2-210,23)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(208,2-210,23)
(not 
;; def=SfBasic.fst(207,17-207,18); use=SfBasic.fst(208,8-208,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(208,2-210,23)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfBasic.nat)

;; def=SfBasic.fst(207,17-210,8); use=SfBasic.fst(208,8-210,8)
(= x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S @x2))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(208,2-210,23)
(and 
;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(210,21-210,23)
(or label_4

;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(210,21-210,23)
(Valid 
;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(210,21-210,23)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)
)


;; def=Prims.fst(451,66-451,102); use=SfBasic.fst(208,2-210,23)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfBasic.nat)

;; def=SfBasic.fst(205,15-210,8); use=SfBasic.fst(208,2-210,23)
(= @x2
@x3)
)

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(210,12-210,20)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=SfBasic.fst(206,15-206,29); use=SfBasic.fst(210,12-210,20)
(= (SfBasic.plus @x2
SfBasic.O@tok)
@x2)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(210,12-210,20)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(210,12-210,20)
(ApplyTT @x1
@x4)
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
; QUERY ID: (SfBasic.plus_0_r, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @fuel_irrelevance_SfBasic.plus.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, binder_x_ccd81122687c082c3642373b68717e85_0, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, disc_equation_SfBasic.O, disc_equation_SfBasic.S, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.plus.fuel_instrumented, fuel_guarded_inversion_SfBasic.nat, projection_inverse_BoxBool_proj_0, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfBasic.fst(207,0-210,23)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_33b646029fea2145c959a78695013abf (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(205,15-210,23); use=SfBasic.fst(207,0-210,23)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_33b646029fea2145c959a78695013abf @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_33b646029fea2145c959a78695013abf @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_33b646029fea2145c959a78695013abf))

:named refinement_kinding_Tm_refine_33b646029fea2145c959a78695013abf))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(205,15-210,23); use=SfBasic.fst(207,0-210,23)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_33b646029fea2145c959a78695013abf @x2))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(208,2-210,23)

;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(208,2-210,23)
(Valid 
;; def=SfBasic.fst(208,2-210,23); use=SfBasic.fst(208,2-210,23)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_33b646029fea2145c959a78695013abf @x2)))
:qid refinement_interpretation_Tm_refine_33b646029fea2145c959a78695013abf))

:named refinement_interpretation_Tm_refine_33b646029fea2145c959a78695013abf))
;;;;;;;;;;;;;;;;haseq for Tm_refine_33b646029fea2145c959a78695013abf
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(205,15-210,23); use=SfBasic.fst(207,0-210,23)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_33b646029fea2145c959a78695013abf @x0)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_33b646029fea2145c959a78695013abf @x0))))
:qid haseqTm_refine_33b646029fea2145c959a78695013abf))

:named haseqTm_refine_33b646029fea2145c959a78695013abf))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(205,26-206,30); use=SfBasic.fst(207,8-207,16)
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

; Encoding query formula : forall (n: SfBasic.nat) (n: SfBasic.nat{n << n}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus_0_r`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(207,0-210,23)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
(Tm_refine_33b646029fea2145c959a78695013abf @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(207,8-207,16)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(207,8-207,16)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(207,8-207,16)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_0_r, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec plus_0_r


; <Start encoding let rec plus_0_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_0_r (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_0_r@tok () Term)

; </end encoding let rec plus_0_r>

(push) ;; push{2

; Starting query at SfBasic.fst(212,0-213,43)

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
;; def=SfBasic.fst(212,38-213,43); use=SfBasic.fst(212,38-212,43)
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

; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_n_Sm`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(212,0-213,43)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(213,14-213,15)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(213,14-213,15)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(213,14-213,15)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_n_Sm, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_n_Sm


; <Skipped val SfBasic.plus_n_Sm/>

(push) ;; push{2

; Starting query at SfBasic.fst(215,2-217,26)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_n_Sm (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_n_Sm@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfBasic.S (SfBasic.plus n m) = SfBasic.plus n (SfBasic.S m) ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(O? n) /\ ~(S? n) ==> Prims.l_False) /\
;       (n == SfBasic.O ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(O? n) ==>
;         (forall (b: SfBasic.nat).
;             n == SfBasic.S b ==>
;             (b << n \/ b === n /\ m << m) /\
;             (forall (any_result: SfBasic.nat).
;                 m == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfBasic.S (SfBasic.plus b m) = SfBasic.plus b (SfBasic.S m) ==> k pure_result)))
;       ))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus_n_Sm`

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
;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(215,2-217,26)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(215,2-217,26)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfBasic.fst(213,13-213,42); use=SfBasic.fst(215,2-217,26)
(or label_2

;; def=SfBasic.fst(213,13-213,42); use=SfBasic.fst(215,2-217,26)
(= (SfBasic.S (SfBasic.plus x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1))
(SfBasic.plus x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S x_ccd81122687c082c3642373b68717e85_1)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(215,2-217,26)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(215,2-217,26)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfBasic.fst(215,2-217,26)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfBasic.fst(215,2-217,26)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfBasic.fst(215,2-217,26)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(215,2-217,26)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(215,2-217,26)
(and (implies 
;; def=SfBasic.fst(214,18-214,19); use=SfBasic.fst(215,8-215,9)
(and 
;; def=SfBasic.fst(214,18-214,19); use=SfBasic.fst(215,8-215,9)
(not 
;; def=SfBasic.fst(214,18-214,19); use=SfBasic.fst(215,8-215,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=SfBasic.fst(214,18-214,19); use=SfBasic.fst(215,8-215,9)
(not 
;; def=SfBasic.fst(214,18-214,19); use=SfBasic.fst(215,8-215,9)
(BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
)
)

label_3)
(implies 
;; def=SfBasic.fst(214,18-216,5); use=SfBasic.fst(215,8-216,5)
(= x_ccd81122687c082c3642373b68717e85_0
SfBasic.O@tok)


;; def=Prims.fst(451,66-451,102); use=SfBasic.fst(215,2-217,26)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfBasic.fst(215,2-217,26)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(215,2-217,26)
(not 
;; def=SfBasic.fst(214,18-214,19); use=SfBasic.fst(215,8-215,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(215,2-217,26)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfBasic.nat)

;; def=SfBasic.fst(214,18-217,8); use=SfBasic.fst(215,8-217,8)
(= x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S @x2))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(215,2-217,26)
(and 
;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(217,25-217,26)
(or label_4

;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(217,25-217,26)
(Valid 
;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(217,25-217,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(217,25-217,26)
(and 
;; def=SfBasic.fst(212,16-214,19); use=SfBasic.fst(217,25-217,26)
(Valid 
;; def=SfBasic.fst(212,16-214,19); use=SfBasic.fst(217,25-217,26)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(217,25-217,26)
(Valid 
;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(217,25-217,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfBasic.fst(215,2-217,26)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfBasic.nat)

;; def=SfBasic.fst(212,27-214,21); use=SfBasic.fst(215,2-217,26)
(= x_ccd81122687c082c3642373b68717e85_1
@x3)
)

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(217,12-217,21)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=SfBasic.fst(213,13-213,42); use=SfBasic.fst(217,12-217,21)
(= (SfBasic.S (SfBasic.plus @x2
x_ccd81122687c082c3642373b68717e85_1))
(SfBasic.plus @x2
(SfBasic.S x_ccd81122687c082c3642373b68717e85_1)))
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(217,12-217,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(217,12-217,21)
(ApplyTT @x1
@x4)
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
; QUERY ID: (SfBasic.plus_n_Sm, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @fuel_irrelevance_SfBasic.plus.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, binder_x_ccd81122687c082c3642373b68717e85_0, binder_x_ccd81122687c082c3642373b68717e85_1, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, data_typing_intro_SfBasic.S@tok, disc_equation_SfBasic.O, disc_equation_SfBasic.S, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.plus.fuel_instrumented, fuel_guarded_inversion_SfBasic.nat, projection_inverse_BoxBool_proj_0, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S, token_correspondence_SfBasic.plus.fuel_instrumented, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfBasic.fst(214,0-217,26)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_2626ba47907c37614d774e80c6f2ff23 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(214,0-217,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_2626ba47907c37614d774e80c6f2ff23))

:named refinement_kinding_Tm_refine_2626ba47907c37614d774e80c6f2ff23))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(214,0-217,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(214,0-217,26)

;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(214,0-217,26)
(or 
;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(215,2-217,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
@x3)
)


;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(214,0-217,26)
(and 
;; def=SfBasic.fst(212,16-214,19); use=SfBasic.fst(214,0-217,26)
(Valid 
;; def=SfBasic.fst(212,16-214,19); use=SfBasic.fst(214,0-217,26)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
@x3)
)


;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(215,2-217,26)
(Valid 
;; def=SfBasic.fst(215,2-217,26); use=SfBasic.fst(215,2-217,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_2626ba47907c37614d774e80c6f2ff23))

:named refinement_interpretation_Tm_refine_2626ba47907c37614d774e80c6f2ff23))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2626ba47907c37614d774e80c6f2ff23
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(212,16-217,26); use=SfBasic.fst(214,0-217,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x0
@x1
@x2)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x0
@x1
@x2))))
:qid haseqTm_refine_2626ba47907c37614d774e80c6f2ff23))

:named haseqTm_refine_2626ba47907c37614d774e80c6f2ff23))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(212,38-213,43); use=SfBasic.fst(214,8-214,17)
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

; Encoding query formula : forall (n: SfBasic.nat)
;   (m: SfBasic.nat)
;   (n: SfBasic.nat)
;   (m: SfBasic.nat{n << n \/ n === n /\ m << m})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus_n_Sm`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(214,0-217,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat)
(HasType @x3
(Tm_refine_2626ba47907c37614d774e80c6f2ff23 @x2
@x0
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(214,8-214,17)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(214,8-214,17)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(214,8-214,17)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_n_Sm, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec plus_n_Sm


; <Start encoding let rec plus_n_Sm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_n_Sm (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_n_Sm@tok () Term)

; </end encoding let rec plus_n_Sm>

(push) ;; push{2

; Starting query at SfBasic.fst(220,0-221,37)

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
;; def=SfBasic.fst(220,38-221,37); use=SfBasic.fst(220,38-220,43)
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

; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_comm`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(220,0-221,37)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(221,16-221,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(221,16-221,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(221,16-221,20)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_comm, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_comm


; <Skipped val SfBasic.plus_comm/>

(push) ;; push{2

; Starting query at SfBasic.fst(223,2-225,42)

;;;;;;;;;;;;;;;;n : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_0
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_0
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_0))
;;;;;;;;;;;;;;;;m : SfBasic.nat (SfBasic.nat)
(declare-fun x_ccd81122687c082c3642373b68717e85_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ccd81122687c082c3642373b68717e85_1
;;; Fact-ids: 
(assert (! (HasType x_ccd81122687c082c3642373b68717e85_1
SfBasic.nat)
:named binder_x_ccd81122687c082c3642373b68717e85_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_comm (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_comm@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). SfBasic.plus n m = SfBasic.plus m n ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(O? n) /\ ~(S? n) ==> Prims.l_False) /\
;       (n == SfBasic.O ==>
;         (forall (pure_result: Prims.unit). SfBasic.plus m SfBasic.O = m ==> k pure_result)) /\
;       (~(O? n) ==>
;         (forall (b: SfBasic.nat).
;             n == SfBasic.S b ==>
;             (b << n \/ b === n /\ m << m) /\
;             (forall (any_result: SfBasic.nat).
;                 m == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfBasic.plus b m = SfBasic.plus m b ==>
;                     (forall (pure_result: Prims.unit).
;                         SfBasic.S (SfBasic.plus m b) = SfBasic.plus m (SfBasic.S b) ==>
;                         k pure_result))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus_comm`

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
;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(223,2-225,42)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(223,2-225,42)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfBasic.fst(221,15-221,36); use=SfBasic.fst(223,2-225,42)
(or label_2

;; def=SfBasic.fst(221,15-221,36); use=SfBasic.fst(223,2-225,42)
(= (SfBasic.plus x_ccd81122687c082c3642373b68717e85_0
x_ccd81122687c082c3642373b68717e85_1)
(SfBasic.plus x_ccd81122687c082c3642373b68717e85_1
x_ccd81122687c082c3642373b68717e85_0))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(223,2-225,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(223,2-225,42)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(223,2-225,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(223,2-225,42)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfBasic.fst(223,2-225,42)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfBasic.fst(223,2-225,42)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfBasic.fst(223,2-225,42)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfBasic.fst(223,2-225,42)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(223,2-225,42)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfBasic.fst(223,2-225,42)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(223,2-225,42)
(and (implies 
;; def=SfBasic.fst(222,18-222,19); use=SfBasic.fst(223,8-223,9)
(and 
;; def=SfBasic.fst(222,18-222,19); use=SfBasic.fst(223,8-223,9)
(not 
;; def=SfBasic.fst(222,18-222,19); use=SfBasic.fst(223,8-223,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=SfBasic.fst(222,18-222,19); use=SfBasic.fst(223,8-223,9)
(not 
;; def=SfBasic.fst(222,18-222,19); use=SfBasic.fst(223,8-223,9)
(BoxBool_proj_0 (SfBasic.uu___is_S x_ccd81122687c082c3642373b68717e85_0))
)
)

label_3)
(implies 
;; def=SfBasic.fst(222,18-224,5); use=SfBasic.fst(223,8-224,5)
(= x_ccd81122687c082c3642373b68717e85_0
SfBasic.O@tok)


;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(224,9-224,17)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Prims.unit)

;; def=SfBasic.fst(206,15-206,29); use=SfBasic.fst(224,9-224,17)
(= (SfBasic.plus x_ccd81122687c082c3642373b68717e85_1
SfBasic.O@tok)
x_ccd81122687c082c3642373b68717e85_1)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(224,9-224,17)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(224,9-224,17)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfBasic.fst(223,2-225,42)
(not 
;; def=SfBasic.fst(222,18-222,19); use=SfBasic.fst(223,8-223,9)
(BoxBool_proj_0 (SfBasic.uu___is_O x_ccd81122687c082c3642373b68717e85_0))
)


;; def=Prims.fst(413,99-413,120); use=SfBasic.fst(223,2-225,42)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfBasic.nat)

;; def=SfBasic.fst(222,18-225,8); use=SfBasic.fst(223,8-225,8)
(= x_ccd81122687c082c3642373b68717e85_0
(SfBasic.S @x2))
)

;; def=Prims.fst(459,77-459,89); use=SfBasic.fst(223,2-225,42)
(and 
;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(225,25-225,26)
(or label_4

;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(225,25-225,26)
(Valid 
;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(225,25-225,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(225,25-225,26)
(and 
;; def=SfBasic.fst(220,16-222,19); use=SfBasic.fst(225,25-225,26)
(Valid 
;; def=SfBasic.fst(220,16-222,19); use=SfBasic.fst(225,25-225,26)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
x_ccd81122687c082c3642373b68717e85_0)
)


;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(225,25-225,26)
(Valid 
;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(225,25-225,26)
(Prims.precedes SfBasic.nat
SfBasic.nat
x_ccd81122687c082c3642373b68717e85_1
x_ccd81122687c082c3642373b68717e85_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfBasic.fst(223,2-225,42)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfBasic.nat)

;; def=SfBasic.fst(220,27-222,21); use=SfBasic.fst(223,2-225,42)
(= x_ccd81122687c082c3642373b68717e85_1
@x3)
)

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(225,12-225,21)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=SfBasic.fst(221,15-221,36); use=SfBasic.fst(225,12-225,21)
(= (SfBasic.plus @x2
x_ccd81122687c082c3642373b68717e85_1)
(SfBasic.plus x_ccd81122687c082c3642373b68717e85_1
@x2))
)

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(225,28-225,37)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfBasic.fst(213,13-213,42); use=SfBasic.fst(225,28-225,37)
(= (SfBasic.S (SfBasic.plus x_ccd81122687c082c3642373b68717e85_1
@x2))
(SfBasic.plus x_ccd81122687c082c3642373b68717e85_1
(SfBasic.S @x2)))
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(225,28-225,37)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(225,28-225,37)
(ApplyTT @x1
@x5)
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
; QUERY ID: (SfBasic.plus_comm, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfBasic.plus.fuel_instrumented, @fuel_irrelevance_SfBasic.plus.fuel_instrumented, @query, SfBasic_pretyping_ccd81122687c082c3642373b68717e85, binder_x_ccd81122687c082c3642373b68717e85_0, binder_x_ccd81122687c082c3642373b68717e85_1, constructor_distinct_SfBasic.O, constructor_distinct_SfBasic.S, disc_equation_SfBasic.O, disc_equation_SfBasic.S, equality_tok_SfBasic.O@tok, equation_with_fuel_SfBasic.plus.fuel_instrumented, fuel_guarded_inversion_SfBasic.nat, projection_inverse_BoxBool_proj_0, projection_inverse_SfBasic.S__0, subterm_ordering_SfBasic.S, typing_tok_SfBasic.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfBasic.fst(222,0-225,42)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_c87b0150fba72b51c8f70b852a776c63 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(222,0-225,42)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_c87b0150fba72b51c8f70b852a776c63))

:named refinement_kinding_Tm_refine_c87b0150fba72b51c8f70b852a776c63))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(222,0-225,42)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
SfBasic.nat)

;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(222,0-225,42)

;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(222,0-225,42)
(or 
;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(223,2-225,42)
(Valid 
;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(223,2-225,42)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x2
@x3)
)


;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(222,0-225,42)
(and 
;; def=SfBasic.fst(220,16-222,19); use=SfBasic.fst(222,0-225,42)
(Valid 
;; def=SfBasic.fst(220,16-222,19); use=SfBasic.fst(222,0-225,42)
(Prims.op_Equals_Equals_Equals SfBasic.nat
SfBasic.nat
@x2
@x3)
)


;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(223,2-225,42)
(Valid 
;; def=SfBasic.fst(223,2-225,42); use=SfBasic.fst(223,2-225,42)
(Prims.precedes SfBasic.nat
SfBasic.nat
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_c87b0150fba72b51c8f70b852a776c63))

:named refinement_interpretation_Tm_refine_c87b0150fba72b51c8f70b852a776c63))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c87b0150fba72b51c8f70b852a776c63
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(220,16-225,42); use=SfBasic.fst(222,0-225,42)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x0
@x1
@x2)))
(Valid (Prims.hasEq SfBasic.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x0
@x1
@x2))))
:qid haseqTm_refine_c87b0150fba72b51c8f70b852a776c63))

:named haseqTm_refine_c87b0150fba72b51c8f70b852a776c63))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfBasic.fst(220,38-221,37); use=SfBasic.fst(222,8-222,17)
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

; Encoding query formula : forall (n: SfBasic.nat)
;   (m: SfBasic.nat)
;   (n: SfBasic.nat)
;   (m: SfBasic.nat{n << n \/ n === n /\ m << m})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `let rec plus_comm`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(222,0-225,42)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat)
(HasType @x3
(Tm_refine_c87b0150fba72b51c8f70b852a776c63 @x2
@x0
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(222,8-222,17)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(222,8-222,17)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(222,8-222,17)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_comm, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec plus_comm


; <Start encoding let rec plus_comm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfBasic.plus_comm (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfBasic.plus_comm@tok () Term)

; </end encoding let rec plus_comm>

(push) ;; push{2

; Starting query at SfBasic.fst(228,0-229,73)

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
;; def=SfBasic.fst(228,65-229,73); use=SfBasic.fst(228,65-228,70)
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

; Encoding query formula : forall (n: SfBasic.nat)
;   (m: SfBasic.nat)
;   (p: SfBasic.nat)
;   (q: SfBasic.nat)
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfBasic.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfBasic.plus_rearrange`

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
;; def=dummy(0,0-0,0); use=SfBasic.fst(228,0-229,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat)
(HasType @x3
SfBasic.nat)
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(229,16-229,20)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(229,16-229,20)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfBasic.fst(229,16-229,20)
(Prims.hasEq SfBasic.nat)
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
; QUERY ID: (SfBasic.plus_rearrange, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfBasic.nat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfBasic.plus_rearrange


; <Skipped val SfBasic.plus_rearrange/>

(push) ;; push{2

; Starting query at SfBasic.fst(230,29-230,42)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: SfBasic.nat) (m: SfBasic.nat) (p: SfBasic.nat) (q: SfBasic.nat).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfBasic.plus (SfBasic.plus n m) (SfBasic.plus p q) =
;         SfBasic.plus (SfBasic.plus m n) (SfBasic.plus p q) ==>
;         p pure_result) ==>
;     (forall (pure_result: Prims.unit). SfBasic.plus n m = SfBasic.plus m n ==> p pure_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let plus_rearrange`

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
SfBasic.nat)
(HasType @x1
SfBasic.nat)
(HasType @x2
SfBasic.nat)
(HasType @x3
SfBasic.nat))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(230,29-230,42)
(forall ((@x5 Term))
 (! (implies (and (or label_1
(HasType @x5
Prims.unit))

;; def=SfBasic.fst(229,15-229,72); use=SfBasic.fst(230,29-230,42)
(or label_2

;; def=SfBasic.fst(229,15-229,72); use=SfBasic.fst(230,29-230,42)
(= (SfBasic.plus (SfBasic.plus @x0
@x1)
(SfBasic.plus @x2
@x3))
(SfBasic.plus (SfBasic.plus @x1
@x0)
(SfBasic.plus @x2
@x3)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(230,29-230,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(230,29-230,42)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(230,29-230,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(230,29-230,42)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,36-441,97); use=SfBasic.fst(230,29-230,42)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfBasic.fst(221,15-221,36); use=SfBasic.fst(230,29-230,38)
(= (SfBasic.plus @x0
@x1)
(SfBasic.plus @x1
@x0))
)

;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(230,29-230,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfBasic.fst(230,29-230,42)
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
; QUERY ID: (SfBasic.plus_rearrange, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @query
