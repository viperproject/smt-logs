
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

; Internals for SfLists

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type SfLists.ilist


; <Start encoding type SfLists.ilist>

;;;;;;;;;;;;;;;;Constructor
(declare-fun SfLists.ilist () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfLists.Nil () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfLists.Nil
(declare-fun SfLists.Nil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfLists.Cons (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun SfLists.Cons__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun SfLists.Cons__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfLists.Cons
(declare-fun SfLists.Cons@tok () Term)
;;;;;;;;;;;;;;;;_0: Prims.int -> _1: ilist -> ilist
(declare-fun Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1 () Term)

; <start constructor SfLists.ilist>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfLists.ilist ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
116)
(= __@x0
SfLists.ilist)))

; </end constructor SfLists.ilist>


; <start constructor SfLists.Nil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfLists.Nil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
122)
(= __@x0
SfLists.Nil)))

; </end constructor SfLists.Nil>


; <start constructor SfLists.Cons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfLists.Cons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
124)
(= __@x0
(SfLists.Cons (SfLists.Cons__0 __@x0)
(SfLists.Cons__1 __@x0)))))

; </end constructor SfLists.Cons>


; </end encoding type SfLists.ilist>

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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (HasType SfLists.Nil@tok
SfLists.ilist)
:named typing_tok_SfLists.Nil@tok))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(SfLists.Cons @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(SfLists.Cons @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist))
:qid subterm_ordering_SfLists.Cons))

:named subterm_ordering_SfLists.Cons))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.Cons__1 (SfLists.Cons @x0
@x1))
@x1)
 

:pattern ((SfLists.Cons @x0
@x1))
:qid projection_inverse_SfLists.Cons__1))

:named projection_inverse_SfLists.Cons__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.Cons__0 (SfLists.Cons @x0
@x1))
@x0)
 

:pattern ((SfLists.Cons @x0
@x1))
:qid projection_inverse_SfLists.Cons__0))

:named projection_inverse_SfLists.Cons__0))
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (HasType SfLists.ilist
Tm_type)
:named kinding_SfLists.ilist@tok))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(25,5-25,10); use=SfLists.fst(25,5-25,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
SfLists.ilist)
(or (is-SfLists.Nil @x1)
(is-SfLists.Cons @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
SfLists.ilist))
:qid fuel_guarded_inversion_SfLists.ilist))

:named fuel_guarded_inversion_SfLists.ilist))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= SfLists.Nil@tok
SfLists.Nil)
:named equality_tok_SfLists.Nil@tok))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(26,4-26,7); use=SfLists.fst(26,4-26,7)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfLists.Nil
SfLists.ilist)
 

:pattern ((HasTypeFuel @u0
SfLists.Nil
SfLists.ilist))
:qid data_typing_intro_SfLists.Nil@tok))

:named data_typing_intro_SfLists.Nil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
SfLists.ilist))
(HasTypeFuel @u0
(SfLists.Cons @x1
@x2)
SfLists.ilist))
 

:pattern ((HasTypeFuel @u0
(SfLists.Cons @x1
@x2)
SfLists.ilist))
:qid data_typing_intro_SfLists.Cons@tok))

:named data_typing_intro_SfLists.Cons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
SfLists.ilist)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist))
:qid data_elim_SfLists.Cons))

:named data_elim_SfLists.Cons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= 116
(Term_constr_id SfLists.ilist))
:named constructor_distinct_SfLists.ilist))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= 122
(Term_constr_id SfLists.Nil))
:named constructor_distinct_SfLists.Nil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 124
(Term_constr_id (SfLists.Cons @x0
@x1)))
 

:pattern ((SfLists.Cons @x0
@x1))
:qid constructor_distinct_SfLists.Cons))

:named constructor_distinct_SfLists.Cons))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(25,5-25,10); use=SfLists.fst(25,5-25,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
SfLists.ilist)
(= SfLists.ilist
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
SfLists.ilist))
:qid SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198))

:named SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198))
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

; Starting query at SfLists.fst(25,0-27,32)

(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq SfLists.ilist ==>
; (forall (_0: Prims.int) (_1: SfLists.ilist).
;     (*  - Failed to prove that the type
;     'SfLists.ilist'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq SfLists.ilist)


; Context: While encoding a query
; While typechecking the top-level declaration `type SfLists.ilist`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(25,0-27,32); use=SfLists.fst(25,0-27,32)
(Valid 
;; def=SfLists.fst(25,0-27,32); use=SfLists.fst(25,0-27,32)
(Prims.hasEq SfLists.ilist)
)


;; def=SfLists.fst(25,0-27,32); use=SfLists.fst(25,0-27,32)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
SfLists.ilist))

;; def=SfLists.fst(25,0-27,32); use=SfLists.fst(27,18-27,23)
(or label_1

;; def=SfLists.fst(25,0-27,32); use=SfLists.fst(25,0-27,32)
(Valid 
;; def=SfLists.fst(25,0-27,32); use=SfLists.fst(25,0-27,32)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.ilist, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type SfLists.ilist


; <Start encoding type SfLists.ilist>

;;;;;;;;;;;;;;;;Constructor
(declare-fun SfLists.ilist () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfLists.Nil () Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfLists.Nil
(declare-fun SfLists.Nil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun SfLists.Cons (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun SfLists.Cons__0 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun SfLists.Cons__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: SfLists.Cons
(declare-fun SfLists.Cons@tok () Term)
;;;;;;;;;;;;;;;;_0: Prims.int -> _1: ilist -> ilist
(declare-fun Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1 () Term)

; <start constructor SfLists.ilist>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfLists.ilist ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
128)
(= __@x0
SfLists.ilist)))

; </end constructor SfLists.ilist>


; <start constructor SfLists.Nil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfLists.Nil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
134)
(= __@x0
SfLists.Nil)))

; </end constructor SfLists.Nil>


; <start constructor SfLists.Cons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-SfLists.Cons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
136)
(= __@x0
(SfLists.Cons (SfLists.Cons__0 __@x0)
(SfLists.Cons__1 __@x0)))))

; </end constructor SfLists.Cons>


; </end encoding type SfLists.ilist>


; encoding sigelt assume SfLists.ilist__uu___haseq


; <Start encoding assume SfLists.ilist__uu___haseq>


; </end encoding assume SfLists.ilist__uu___haseq>


; encoding sigelt val SfLists.uu___is_Nil


; <Start encoding val SfLists.uu___is_Nil>

(declare-fun SfLists.uu___is_Nil (Term) Term)
;;;;;;;;;;;;;;;;projectee: ilist -> Prims.bool
(declare-fun Tm_arrow_98b956407b1970607a9d36ee986f075b () Term)
(declare-fun SfLists.uu___is_Nil@tok () Term)

; </end encoding val SfLists.uu___is_Nil>


; encoding sigelt let uu___is_Nil


; <Skipped let uu___is_Nil/>


; encoding sigelt val SfLists.uu___is_Cons


; <Start encoding val SfLists.uu___is_Cons>

(declare-fun SfLists.uu___is_Cons (Term) Term)

(declare-fun SfLists.uu___is_Cons@tok () Term)

; </end encoding val SfLists.uu___is_Cons>


; encoding sigelt let uu___is_Cons


; <Skipped let uu___is_Cons/>


; encoding sigelt val SfLists.__proj__Cons__item___0


; <Start encoding val SfLists.__proj__Cons__item___0>

(declare-fun Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00 () Term)
(declare-fun SfLists.__proj__Cons__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ilist{Cons? _} -> Prims.int
(declare-fun Tm_arrow_33f08a9ae83d2b925aec47a7e78e1571 () Term)
(declare-fun SfLists.__proj__Cons__item___0@tok () Term)

; </end encoding val SfLists.__proj__Cons__item___0>

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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (HasType SfLists.Nil@tok
SfLists.ilist)
:named typing_tok_SfLists.Nil@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.uu___is_Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfLists.ilist)
(HasType (SfLists.uu___is_Cons @x0)
Prims.bool))
 

:pattern ((SfLists.uu___is_Cons @x0))
:qid typing_SfLists.uu___is_Cons))

:named typing_SfLists.uu___is_Cons))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist)
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(SfLists.Cons @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(SfLists.Cons @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist))
:qid subterm_ordering_SfLists.Cons))

:named subterm_ordering_SfLists.Cons))
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
;;; Fact-ids: Name SfLists.__proj__Cons__item___0; Namespace SfLists
(assert (! (HasType Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00
Tm_type)
:named refinement_kinding_Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00))
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
;;; Fact-ids: Name SfLists.__proj__Cons__item___0; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00)
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(BoxBool_proj_0 (SfLists.uu___is_Cons @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00))
:qid refinement_interpretation_Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00))

:named refinement_interpretation_Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.Cons__1 (SfLists.Cons @x0
@x1))
@x1)
 

:pattern ((SfLists.Cons @x0
@x1))
:qid projection_inverse_SfLists.Cons__1))

:named projection_inverse_SfLists.Cons__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.Cons__0 (SfLists.Cons @x0
@x1))
@x0)
 

:pattern ((SfLists.Cons @x0
@x1))
:qid projection_inverse_SfLists.Cons__0))

:named projection_inverse_SfLists.Cons__0))
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (HasType SfLists.ilist
Tm_type)
:named kinding_SfLists.ilist@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00
;;; Fact-ids: Name SfLists.__proj__Cons__item___0; Namespace SfLists
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00))
(Valid (Prims.hasEq SfLists.ilist)))
:named haseqTm_refine_4af35fe3776a37c0cce0f466b1cbfc00))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(25,5-25,10); use=SfLists.fst(25,5-25,10)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
SfLists.ilist)
(or (is-SfLists.Nil @x1)
(is-SfLists.Cons @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
SfLists.ilist))
:qid fuel_guarded_inversion_SfLists.ilist))

:named fuel_guarded_inversion_SfLists.ilist))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= SfLists.Nil@tok
SfLists.Nil)
:named equality_tok_SfLists.Nil@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name SfLists.uu___is_Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (= (SfLists.uu___is_Cons @x0)
(BoxBool (is-SfLists.Cons @x0)))
 

:pattern ((SfLists.uu___is_Cons @x0))
:qid disc_equation_SfLists.Cons))

:named disc_equation_SfLists.Cons))
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
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(26,4-26,7); use=SfLists.fst(26,4-26,7)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
SfLists.Nil
SfLists.ilist)
 

:pattern ((HasTypeFuel @u0
SfLists.Nil
SfLists.ilist))
:qid data_typing_intro_SfLists.Nil@tok))

:named data_typing_intro_SfLists.Nil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
SfLists.ilist))
(HasTypeFuel @u0
(SfLists.Cons @x1
@x2)
SfLists.ilist))
 

:pattern ((HasTypeFuel @u0
(SfLists.Cons @x1
@x2)
SfLists.ilist))
:qid data_typing_intro_SfLists.Cons@tok))

:named data_typing_intro_SfLists.Cons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist)
(and (HasTypeFuel @u0
@x1
Prims.int)
(HasTypeFuel @u0
@x2
SfLists.ilist)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(SfLists.Cons @x1
@x2)
SfLists.ilist))
:qid data_elim_SfLists.Cons))

:named data_elim_SfLists.Cons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= 128
(Term_constr_id SfLists.ilist))
:named constructor_distinct_SfLists.ilist))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= 134
(Term_constr_id SfLists.Nil))
:named constructor_distinct_SfLists.Nil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 136
(Term_constr_id (SfLists.Cons @x0
@x1)))
 

:pattern ((SfLists.Cons @x0
@x1))
:qid constructor_distinct_SfLists.Cons))

:named constructor_distinct_SfLists.Cons))
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
;;;;;;;;;;;;;;;;Assumption: SfLists.ilist__uu___haseq
;;; Fact-ids: Name SfLists.ilist__uu___haseq; Namespace SfLists
(assert (! (Valid (Prims.hasEq SfLists.ilist))
:named assumption_SfLists.ilist__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(25,5-25,10); use=SfLists.fst(25,5-25,10)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
SfLists.ilist)
(= SfLists.ilist
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
SfLists.ilist))
:qid SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198))

:named SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198))
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


; Encoding query formula : forall (projectee: _: SfLists.ilist{Cons? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons__item___0`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00)

;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(not 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(BoxBool_proj_0 (SfLists.uu___is_Cons @x0))
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
; QUERY ID: (SfLists.__proj__Cons__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons__item___0


; <Skipped let __proj__Cons__item___0/>


; encoding sigelt val SfLists.__proj__Cons__item___1


; <Start encoding val SfLists.__proj__Cons__item___1>


(declare-fun SfLists.__proj__Cons__item___1 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: ilist{Cons? _} -> ilist
(declare-fun Tm_arrow_e89def1a84e0c7032b512cd33aae45a8 () Term)
(declare-fun SfLists.__proj__Cons__item___1@tok () Term)

; </end encoding val SfLists.__proj__Cons__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: SfLists.ilist{Cons? _}).
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
Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00)

;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(not 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(BoxBool_proj_0 (SfLists.uu___is_Cons @x0))
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
; QUERY ID: (SfLists.__proj__Cons__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons__item___1


; <Skipped let __proj__Cons__item___1/>


; encoding sigelt val SfLists.length


; <Skipped val SfLists.length/>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.uu___is_Nil; Namespace SfLists
(assert (! 
;; def=SfLists.fst(26,4-26,7); use=SfLists.fst(26,4-26,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfLists.ilist)
(HasType (SfLists.uu___is_Nil @x0)
Prims.bool))
 

:pattern ((SfLists.uu___is_Nil @x0))
:qid typing_SfLists.uu___is_Nil))

:named typing_SfLists.uu___is_Nil))
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
;;; Fact-ids: Name SfLists.uu___is_Nil; Namespace SfLists
(assert (! 
;; def=SfLists.fst(26,4-26,7); use=SfLists.fst(26,4-26,7)
(forall ((@x0 Term))
 (! (= (SfLists.uu___is_Nil @x0)
(BoxBool (is-SfLists.Nil @x0)))
 

:pattern ((SfLists.uu___is_Nil @x0))
:qid disc_equation_SfLists.Nil))

:named disc_equation_SfLists.Nil))
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

; Starting query at SfLists.fst(31,2-33,28)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
(declare-fun Tm_refine_f21798a55103617fad0ebbda9b954b7d () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_f21798a55103617fad0ebbda9b954b7d
Tm_type)
:named refinement_kinding_Tm_refine_f21798a55103617fad0ebbda9b954b7d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(31,2-33,28)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f21798a55103617fad0ebbda9b954b7d)
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(31,2-33,28)

;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(31,2-33,28)
(Valid 
;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(31,2-33,28)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
x_da0ce6472e3557dab4a010c89b01a198_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f21798a55103617fad0ebbda9b954b7d))
:qid refinement_interpretation_Tm_refine_f21798a55103617fad0ebbda9b954b7d))

:named refinement_interpretation_Tm_refine_f21798a55103617fad0ebbda9b954b7d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f21798a55103617fad0ebbda9b954b7d
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f21798a55103617fad0ebbda9b954b7d))
(Valid (Prims.hasEq SfLists.ilist)))
:named haseqTm_refine_f21798a55103617fad0ebbda9b954b7d))
(declare-fun SfLists.length (Term) Term)

;;;;;;;;;;;;;;;;_: _: ilist{_ << l} -> Prims.nat
(declare-fun Tm_arrow_f83d24006f9fa78854da9d5844504860 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_f83d24006f9fa78854da9d5844504860
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_f83d24006f9fa78854da9d5844504860
Tm_type)
:named kinding_Tm_arrow_f83d24006f9fa78854da9d5844504860))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(29,26-33,28); use=SfLists.fst(30,8-33,28)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_f83d24006f9fa78854da9d5844504860)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_f83d24006f9fa78854da9d5844504860))
:qid SfLists_pre_typing_Tm_arrow_f83d24006f9fa78854da9d5844504860))

:named SfLists_pre_typing_Tm_arrow_f83d24006f9fa78854da9d5844504860))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_f83d24006f9fa78854da9d5844504860
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(29,26-33,28); use=SfLists.fst(30,8-33,28)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_f83d24006f9fa78854da9d5844504860)
(and 
;; def=SfLists.fst(29,26-33,28); use=SfLists.fst(30,8-33,28)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_f21798a55103617fad0ebbda9b954b7d)
(HasType (ApplyTT @x0
@x1)
Prims.nat))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_f83d24006f9fa78854da9d5844504860.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_f83d24006f9fa78854da9d5844504860))
:qid SfLists_interpretation_Tm_arrow_f83d24006f9fa78854da9d5844504860))

:named SfLists_interpretation_Tm_arrow_f83d24006f9fa78854da9d5844504860))
(declare-fun SfLists.length@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@x0 Term))
 (! (= (ApplyTT SfLists.length@tok
@x0)
(SfLists.length @x0))
 

:pattern ((ApplyTT SfLists.length@tok
@x0))
:qid token_correspondence_SfLists.length))

:named token_correspondence_SfLists.length))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.length@tok
Tm_arrow_f83d24006f9fa78854da9d5844504860))

;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@x1 Term))
 (! (= (ApplyTT SfLists.length@tok
@x1)
(SfLists.length @x1))
 

:pattern ((SfLists.length @x1))
:qid function_token_typing_SfLists.length.1))
)
 

:pattern ((ApplyTT @x0
SfLists.length@tok))
:qid function_token_typing_SfLists.length))

:named function_token_typing_SfLists.length))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_f21798a55103617fad0ebbda9b954b7d)
(HasType (SfLists.length @x0)
Prims.nat))
 

:pattern ((SfLists.length @x0))
:qid typing_SfLists.length))

:named typing_SfLists.length))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.nat).
;   (forall (x: Prims.nat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==>
;     (forall (b: Prims.int) (b: SfLists.ilist).
;         l == SfLists.Cons b b ==>
;         b << l /\
;         (forall (any_result: SfLists.ilist).
;             b == any_result ==>
;             (forall (any_result: Prims.nat).
;                 SfLists.length b == any_result ==>
;                 (forall (return_val: Prims.nat).
;                     return_val == SfLists.length b ==>
;                     SfLists.length b == return_val ==>
;                     (forall (any_result: Prims.int).
;                         SfLists.length b + 1 == any_result ==> SfLists.length b + 1 >= 0))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec length`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(31,2-33,28)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(31,2-33,28)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(31,2-33,28)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(31,2-33,28)
(and (implies 
;; def=SfLists.fst(30,15-30,16); use=SfLists.fst(31,8-31,9)
(and 
;; def=SfLists.fst(30,15-30,16); use=SfLists.fst(31,8-31,9)
(not 
;; def=SfLists.fst(30,15-30,16); use=SfLists.fst(31,8-31,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(30,15-30,16); use=SfLists.fst(31,8-31,9)
(not 
;; def=SfLists.fst(30,15-30,16); use=SfLists.fst(31,8-31,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(31,2-33,28)
(not 
;; def=SfLists.fst(30,15-30,16); use=SfLists.fst(31,8-31,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(31,2-33,28)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(31,2-33,28)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(30,15-33,12); use=SfLists.fst(31,8-33,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(31,2-33,28)
(and 
;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(33,23-33,24)
(or label_2

;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(33,23-33,24)
(Valid 
;; def=SfLists.fst(31,2-33,28); use=SfLists.fst(33,23-33,24)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(31,2-33,28)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=dummy(0,0-0,0); use=SfLists.fst(31,2-33,28)
(= @x2
@x3)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(31,2-33,28)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.nat)

;; def=SfLists.fst(29,26-33,24); use=SfLists.fst(33,16-33,24)
(= (SfLists.length @x2)
@x4)
)

;; def=Prims.fst(356,2-356,58); use=SfLists.fst(31,2-33,28)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=SfLists.fst(31,2-33,28)
(= @x5
(SfLists.length @x2))


;; def=dummy(0,0-0,0); use=SfLists.fst(31,2-33,28)
(= (SfLists.length @x2)
@x5)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(31,2-33,28)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.int)

;; def=SfLists.fst(29,26-33,28); use=SfLists.fst(31,2-33,28)
(= (Prims.op_Addition (SfLists.length @x2)
(BoxInt 1))
@x6)
)

;; def=Prims.fst(680,18-680,24); use=SfLists.fst(33,16-33,28)
(or label_3

;; def=Prims.fst(680,18-680,24); use=SfLists.fst(33,16-33,28)
(>= (BoxInt_proj_0 (Prims.op_Addition (SfLists.length @x2)
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
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
; QUERY ID: (SfLists.length, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_Prims.nat, fuel_guarded_inversion_SfLists.ilist, primitive_Prims.op_Addition, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_SfLists.Cons__1, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec length


; <Start encoding let rec length>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.length.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.length.fuel_instrumented_token () Term)
(declare-fun SfLists.length (Term) Term)
(declare-fun SfLists.length@tok () Term)
;;;;;;;;;;;;;;;;l: ilist -> Prims.nat
(declare-fun Tm_arrow_1cc04bcab577a8956b840e22d90d74e8 () Term)

; </end encoding let rec length>


; encoding sigelt val SfLists.repeat


; <Skipped val SfLists.repeat/>

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

; Starting query at SfLists.fst(37,2-39,38)

;;;;;;;;;;;;;;;;n : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;count : Prims.nat (Prims.nat)
(declare-fun x_bb4e1c9af0265270f8e7a5f250f730e2_1 () Term)
;;;;;;;;;;;;;;;;binder_x_bb4e1c9af0265270f8e7a5f250f730e2_1
;;; Fact-ids: 
(assert (! (HasType x_bb4e1c9af0265270f8e7a5f250f730e2_1
Prims.nat)
:named binder_x_bb4e1c9af0265270f8e7a5f250f730e2_1))
(declare-fun Tm_refine_f7803681d267fa33464bfe633b8c943b (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(35,20-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_f7803681d267fa33464bfe633b8c943b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_f7803681d267fa33464bfe633b8c943b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_f7803681d267fa33464bfe633b8c943b))

:named refinement_kinding_Tm_refine_f7803681d267fa33464bfe633b8c943b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(35,20-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f7803681d267fa33464bfe633b8c943b @x2))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=SfLists.fst(36,15-39,38); use=SfLists.fst(36,15-39,38)

;; def=SfLists.fst(36,15-39,38); use=SfLists.fst(36,15-39,38)
(or 
;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(37,2-39,38)
(Valid 
;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(37,2-39,38)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=SfLists.fst(36,15-39,38); use=SfLists.fst(36,15-39,38)
(and 
;; def=SfLists.fst(36,15-36,16); use=SfLists.fst(36,15-36,16)
(Valid 
;; def=SfLists.fst(36,15-36,16); use=SfLists.fst(36,15-36,16)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(37,2-39,38)
(Valid 
;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(37,2-39,38)
(Prims.precedes Prims.nat
Prims.nat
@x1
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f7803681d267fa33464bfe633b8c943b @x2)))
:qid refinement_interpretation_Tm_refine_f7803681d267fa33464bfe633b8c943b))

:named refinement_interpretation_Tm_refine_f7803681d267fa33464bfe633b8c943b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f7803681d267fa33464bfe633b8c943b
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(35,20-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f7803681d267fa33464bfe633b8c943b @x0)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f7803681d267fa33464bfe633b8c943b @x0))))
:qid haseqTm_refine_f7803681d267fa33464bfe633b8c943b))

:named haseqTm_refine_f7803681d267fa33464bfe633b8c943b))
(declare-fun SfLists.repeat (Term Term) Term)

;;;;;;;;;;;;;;;;_: Prims.int -> count: Prims.nat{_ << n \/ _ === n /\ count << count} -> ilist
(declare-fun Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c
Tm_type)
:named kinding_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(35,13-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))
:qid SfLists_pre_typing_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))

:named SfLists_pre_typing_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(35,13-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c)
(and 
;; def=SfLists.fst(35,13-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_f7803681d267fa33464bfe633b8c943b @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfLists.ilist))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c.1))

(IsTotFun @x0)

;; def=SfLists.fst(35,13-39,38); use=SfLists.fst(35,20-39,38)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))
:qid SfLists_interpretation_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))

:named SfLists_interpretation_Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))
(declare-fun SfLists.repeat@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfLists.repeat@tok
@x0)
@x1)
(SfLists.repeat @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfLists.repeat@tok
@x0)
@x1))
:qid token_correspondence_SfLists.repeat))

:named token_correspondence_SfLists.repeat))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.repeat@tok
Tm_arrow_2c6b1333c1dc58f25619ed03e491cb3c))

;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfLists.repeat@tok
@x1)
@x2)
(SfLists.repeat @x1
@x2))
 

:pattern ((SfLists.repeat @x1
@x2))
:qid function_token_typing_SfLists.repeat.1))
)
 

:pattern ((ApplyTT @x0
SfLists.repeat@tok))
:qid function_token_typing_SfLists.repeat))

:named function_token_typing_SfLists.repeat))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_f7803681d267fa33464bfe633b8c943b @x0)))
(HasType (SfLists.repeat @x0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.repeat @x0
@x1))
:qid typing_SfLists.repeat))

:named typing_SfLists.repeat))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfLists.ilist).
;   (forall (x: SfLists.ilist). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   ~(count = 0) ==>
;   (forall (b: Prims.int). count == b ==> count - 1 >= 0 /\ (n << n \/ count - 1 << count))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec repeat`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post SfLists.ilist))

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(37,2-39,38)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(37,2-39,38)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(37,2-39,38)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))


;; def=Prims.fst(389,19-389,21); use=SfLists.fst(37,2-39,38)
(not 
;; def=SfLists.fst(36,17-38,5); use=SfLists.fst(37,8-38,5)
(= x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 0))
)
)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(37,2-39,38)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.int)

;; def=SfLists.fst(36,17-39,5); use=SfLists.fst(37,8-39,5)
(= x_bb4e1c9af0265270f8e7a5f250f730e2_1
@x1)
)

;; def=SfLists.fst(36,15-39,38); use=SfLists.fst(39,26-39,37)
(and 
;; def=Prims.fst(680,18-680,24); use=SfLists.fst(39,26-39,37)
(or label_1

;; def=Prims.fst(680,18-680,24); use=SfLists.fst(39,26-39,37)
(>= (BoxInt_proj_0 (Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=SfLists.fst(36,15-39,38); use=SfLists.fst(39,26-39,37)
(or label_2

;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(39,26-39,37)
(Valid 
;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(39,26-39,37)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(39,26-39,37)
(Valid 
;; def=SfLists.fst(37,2-39,38); use=SfLists.fst(39,26-39,37)
(Prims.precedes Prims.nat
Prims.nat
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)
)
)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (SfLists.repeat, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_bb4e1c9af0265270f8e7a5f250f730e2_1, equation_Prims.nat, int_inversion, int_typing, primitive_Prims.op_Subtraction, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, well-founded-ordering-on-nat

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec repeat


; <Start encoding let rec repeat>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.repeat.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.repeat.fuel_instrumented_token () Term)
(declare-fun SfLists.repeat (Term Term) Term)
(declare-fun SfLists.repeat@tok () Term)
;;;;;;;;;;;;;;;;n: Prims.int -> count: Prims.nat -> ilist
(declare-fun Tm_arrow_a8823b9b445925667dd0769abcf8a489 () Term)

; </end encoding let rec repeat>


; encoding sigelt val SfLists.app


; <Skipped val SfLists.app/>

(push) ;; push{2

; Starting query at SfLists.fst(43,2-45,33)

;;;;;;;;;;;;;;;;l1 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;l2 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_1 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_1
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_1))
(declare-fun Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(42,12-45,33)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_b935a5aa768392158fa71ea4bf0a08f9))

:named refinement_kinding_Tm_refine_b935a5aa768392158fa71ea4bf0a08f9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(42,12-45,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x2))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(42,12-45,33)

;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(42,12-45,33)
(or 
;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(43,2-45,33)
(Valid 
;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(43,2-45,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(42,12-45,33)
(and 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(42,12-42,14)
(Valid 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(42,12-42,14)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(43,2-45,33)
(Valid 
;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(43,2-45,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
x_da0ce6472e3557dab4a010c89b01a198_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x2)))
:qid refinement_interpretation_Tm_refine_b935a5aa768392158fa71ea4bf0a08f9))

:named refinement_interpretation_Tm_refine_b935a5aa768392158fa71ea4bf0a08f9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b935a5aa768392158fa71ea4bf0a08f9
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(42,12-45,33)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x0)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x0))))
:qid haseqTm_refine_b935a5aa768392158fa71ea4bf0a08f9))

:named haseqTm_refine_b935a5aa768392158fa71ea4bf0a08f9))
(declare-fun SfLists.app (Term Term) Term)

;;;;;;;;;;;;;;;;_: ilist -> _: _: ilist{_ << l1 \/ _ === l1 /\ _ << l2} -> ilist
(declare-fun Tm_arrow_a2002aa643d8b15fc635f92774eb8f25 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_a2002aa643d8b15fc635f92774eb8f25
Tm_type)
:named kinding_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(41,10-45,33); use=SfLists.fst(42,8-45,33)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_a2002aa643d8b15fc635f92774eb8f25)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))
:qid SfLists_pre_typing_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))

:named SfLists_pre_typing_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(41,10-45,33); use=SfLists.fst(42,8-45,33)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_a2002aa643d8b15fc635f92774eb8f25)
(and 
;; def=SfLists.fst(41,10-45,33); use=SfLists.fst(42,8-45,33)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
(Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfLists.ilist))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25.1))

(IsTotFun @x0)

;; def=SfLists.fst(41,10-45,33); use=SfLists.fst(42,8-45,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))
:qid SfLists_interpretation_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))

:named SfLists_interpretation_Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))
(declare-fun SfLists.app@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfLists.app@tok
@x0)
@x1)
(SfLists.app @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfLists.app@tok
@x0)
@x1))
:qid token_correspondence_SfLists.app))

:named token_correspondence_SfLists.app))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.app@tok
Tm_arrow_a2002aa643d8b15fc635f92774eb8f25))

;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfLists.app@tok
@x1)
@x2)
(SfLists.app @x1
@x2))
 

:pattern ((SfLists.app @x1
@x2))
:qid function_token_typing_SfLists.app.1))
)
 

:pattern ((ApplyTT @x0
SfLists.app@tok))
:qid function_token_typing_SfLists.app))

:named function_token_typing_SfLists.app))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_b935a5aa768392158fa71ea4bf0a08f9 @x0)))
(HasType (SfLists.app @x0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.app @x0
@x1))
:qid typing_SfLists.app))

:named typing_SfLists.app))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfLists.ilist).
;   (forall (x: SfLists.ilist). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l1) /\ ~(Cons? l1) ==> Prims.l_False) /\
;   (~(Nil? l1) ==>
;     (forall (b: Prims.int) (b: SfLists.ilist).
;         l1 == SfLists.Cons b b ==> b << l1 \/ b === l1 /\ l2 << l2))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post SfLists.ilist))

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(43,2-45,33)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(43,2-45,33)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(43,2-45,33)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(43,2-45,33)
(and (implies 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(43,8-43,10)
(and 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(43,8-43,10)
(not 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(43,8-43,10)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(43,8-43,10)
(not 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(43,8-43,10)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(43,2-45,33)
(not 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(43,8-43,10)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(43,2-45,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(43,2-45,33)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(42,12-45,12); use=SfLists.fst(43,8-45,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x1
@x2))
)

;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(45,30-45,32)
(or label_2

;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(45,30-45,32)
(Valid 
;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(45,30-45,32)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(42,12-45,33); use=SfLists.fst(45,30-45,32)
(and 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(45,30-45,32)
(Valid 
;; def=SfLists.fst(42,12-42,14); use=SfLists.fst(45,30-45,32)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(45,30-45,32)
(Valid 
;; def=SfLists.fst(43,2-45,33); use=SfLists.fst(45,30-45,32)
(Prims.precedes SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_1
x_da0ce6472e3557dab4a010c89b01a198_1)
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
; QUERY ID: (SfLists.app, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec app


; <Start encoding let rec app>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.app.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.app.fuel_instrumented_token () Term)
(declare-fun SfLists.app (Term Term) Term)
(declare-fun SfLists.app@tok () Term)
;;;;;;;;;;;;;;;;l1: ilist -> l2: ilist -> ilist
(declare-fun Tm_arrow_e18b6d5a0b2f23128dba6fbd522c0715 () Term)

; </end encoding let rec app>

(push) ;; push{2

; Starting query at SfLists.fst(47,0-49,68)

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
;; def=SfLists.fst(47,24-49,68); use=SfLists.fst(47,24-47,29)
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
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.test_app1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(47,0-49,68)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(48,16-48,19)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(48,16-48,19)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(48,16-48,19)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.test_app1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.test_app1


; <Skipped val SfLists.test_app1/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.app; Namespace SfLists
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist))
(HasType (SfLists.app @x0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.app @x0
@x1))
:qid typing_SfLists.app))

:named typing_SfLists.app))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.app; Namespace SfLists
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist))
(HasType (SfLists.app.fuel_instrumented @u0
@x1
@x2)
SfLists.ilist))
 

:pattern ((SfLists.app.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfLists.app.fuel_instrumented))

:named token_correspondence_SfLists.app.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.app
;;; Fact-ids: Name SfLists.app; Namespace SfLists
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist))
(= (SfLists.app.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-SfLists.Nil @lb3)
@x2
(ite (is-SfLists.Cons @lb3)
(SfLists.Cons (SfLists.Cons__0 @lb3)
(SfLists.app.fuel_instrumented @u0
(SfLists.Cons__1 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.app.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfLists.app.fuel_instrumented))

:named equation_with_fuel_SfLists.app.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.app; Namespace SfLists
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfLists.app.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfLists.app.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfLists.app.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfLists.app.fuel_instrumented))

:named @fuel_irrelevance_SfLists.app.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.app; Namespace SfLists
(assert (! 
;; def=SfLists.fst(42,8-42,11); use=SfLists.fst(42,8-42,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.app @x0
@x1)
(SfLists.app.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfLists.app @x0
@x1))
:qid @fuel_correspondence_SfLists.app.fuel_instrumented))

:named @fuel_correspondence_SfLists.app.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(50,19-50,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.app (SfLists.Cons 1 (SfLists.Cons 2 (SfLists.Cons 3 SfLists.Nil)))
;           (SfLists.Cons 4 (SfLists.Cons 5 SfLists.Nil)) =
;         SfLists.Cons 1
;           (SfLists.Cons 2 (SfLists.Cons 3 (SfLists.Cons 4 (SfLists.Cons 5 SfLists.Nil)))) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_app1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(50,19-50,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(48,15-49,67); use=SfLists.fst(50,19-50,21)
(or label_2

;; def=SfLists.fst(48,15-49,67); use=SfLists.fst(50,19-50,21)
(= (SfLists.app (SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok))))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
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
; QUERY ID: (SfLists.test_app1, 2)
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(50,19-50,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(48,15-49,67); use=SfLists.fst(50,19-50,21)
(or label_2

;; def=SfLists.fst(48,15-49,67); use=SfLists.fst(50,19-50,21)
(= (SfLists.app (SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok))))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
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
; QUERY ID: (SfLists.test_app1, 2)
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(50,19-50,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(48,15-49,67); use=SfLists.fst(50,19-50,21)
(or label_2

;; def=SfLists.fst(48,15-49,67); use=SfLists.fst(50,19-50,21)
(= (SfLists.app (SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok))))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(50,19-50,21)
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
; QUERY ID: (SfLists.test_app1, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @query, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_typing_intro_SfLists.Cons@tok, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, int_typing, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_app1


; <Start encoding let test_app1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.test_app1 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.test_app1@tok () Term)

; </end encoding let test_app1>

(push) ;; push{2

; Starting query at SfLists.fst(52,0-54,41)

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
;; def=SfLists.fst(52,24-54,41); use=SfLists.fst(52,24-52,29)
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
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.test_app2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(52,0-54,41)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(53,16-53,19)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(53,16-53,19)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(53,16-53,19)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.test_app2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.test_app2


; <Skipped val SfLists.test_app2/>

(push) ;; push{2

; Starting query at SfLists.fst(55,19-55,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.app SfLists.Nil (SfLists.Cons 4 (SfLists.Cons 5 SfLists.Nil)) =
;         SfLists.Cons 4 (SfLists.Cons 5 SfLists.Nil) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_app2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(55,19-55,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(53,15-54,40); use=SfLists.fst(55,19-55,21)
(or label_2

;; def=SfLists.fst(53,15-54,40); use=SfLists.fst(55,19-55,21)
(= (SfLists.app SfLists.Nil@tok
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok)))
(SfLists.Cons (BoxInt 4)
(SfLists.Cons (BoxInt 5)
SfLists.Nil@tok)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(55,19-55,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(55,19-55,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(55,19-55,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(55,19-55,21)
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
; QUERY ID: (SfLists.test_app2, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @query, constructor_distinct_SfLists.Nil, data_typing_intro_SfLists.Cons@tok, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, int_typing, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_app2


; <Start encoding let test_app2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.test_app2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.test_app2@tok () Term)

; </end encoding let test_app2>

(push) ;; push{2

; Starting query at SfLists.fst(57,0-59,49)

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
;; def=SfLists.fst(57,24-59,49); use=SfLists.fst(57,24-57,29)
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
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.test_app3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(57,0-59,49)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.unit)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(58,16-58,19)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(58,16-58,19)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(58,16-58,19)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.test_app3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.test_app3


; <Skipped val SfLists.test_app3/>

(push) ;; push{2

; Starting query at SfLists.fst(60,19-60,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: Prims.unit).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.app (SfLists.Cons 1 (SfLists.Cons 2 (SfLists.Cons 3 SfLists.Nil))) SfLists.Nil =
;         SfLists.Cons 1 (SfLists.Cons 2 (SfLists.Cons 3 SfLists.Nil)) ==>
;         p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let test_app3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(60,19-60,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(58,15-59,48); use=SfLists.fst(60,19-60,21)
(or label_2

;; def=SfLists.fst(58,15-59,48); use=SfLists.fst(60,19-60,21)
(= (SfLists.app (SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok)))
SfLists.Nil@tok)
(SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
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
; QUERY ID: (SfLists.test_app3, 2)
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(60,19-60,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(58,15-59,48); use=SfLists.fst(60,19-60,21)
(or label_2

;; def=SfLists.fst(58,15-59,48); use=SfLists.fst(60,19-60,21)
(= (SfLists.app (SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok)))
SfLists.Nil@tok)
(SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
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
; QUERY ID: (SfLists.test_app3, 2)
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

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(60,19-60,21)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(58,15-59,48); use=SfLists.fst(60,19-60,21)
(or label_2

;; def=SfLists.fst(58,15-59,48); use=SfLists.fst(60,19-60,21)
(= (SfLists.app (SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok)))
SfLists.Nil@tok)
(SfLists.Cons (BoxInt 1)
(SfLists.Cons (BoxInt 2)
(SfLists.Cons (BoxInt 3)
SfLists.Nil@tok))))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(60,19-60,21)
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
; QUERY ID: (SfLists.test_app3, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @query, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_typing_intro_SfLists.Cons@tok, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, int_typing, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let test_app3


; <Start encoding let test_app3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.test_app3 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.test_app3@tok () Term)

; </end encoding let test_app3>

(push) ;; push{2

; Starting query at SfLists.fst(62,0-63,55)

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
;; def=SfLists.fst(62,25-63,55); use=SfLists.fst(62,25-62,30)
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

; Encoding query formula : forall (l: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.nil_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(62,0-63,55)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(63,40-63,43)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(63,40-63,43)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(63,40-63,43)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.nil_app, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.nil_app


; <Skipped val SfLists.nil_app/>

(push) ;; push{2

; Starting query at SfLists.fst(64,16-64,18)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (l: SfLists.ilist).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit). SfLists.app SfLists.Nil l = l ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let nil_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
SfLists.ilist)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(64,16-64,18)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(63,39-63,54); use=SfLists.fst(64,16-64,18)
(or label_2

;; def=SfLists.fst(63,39-63,54); use=SfLists.fst(64,16-64,18)
(= (SfLists.app SfLists.Nil@tok
@x0)
@x0)
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(64,16-64,18)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(64,16-64,18)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(64,16-64,18)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(64,16-64,18)
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
; QUERY ID: (SfLists.nil_app, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @query, constructor_distinct_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let nil_app


; <Start encoding let nil_app>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.nil_app (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.nil_app@tok () Term)

; </end encoding let nil_app>

(push) ;; push{2

; Starting query at SfLists.fst(66,0-67,55)

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
;; def=SfLists.fst(66,25-67,55); use=SfLists.fst(66,25-66,30)
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

; Encoding query formula : forall (l: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.app_nil`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(66,0-67,55)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(67,40-67,43)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(67,40-67,43)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(67,40-67,43)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.app_nil, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.app_nil


; <Skipped val SfLists.app_nil/>

(push) ;; push{2

; Starting query at SfLists.fst(69,2-71,25)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_nil (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_nil@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). SfLists.app l SfLists.Nil = l ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             b << l /\
;             (forall (any_result: SfLists.ilist).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit). SfLists.app b SfLists.Nil = b ==> k pure_result))
;         )))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_nil`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(69,2-71,25)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(69,2-71,25)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(67,39-67,54); use=SfLists.fst(69,2-71,25)
(or label_2

;; def=SfLists.fst(67,39-67,54); use=SfLists.fst(69,2-71,25)
(= (SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(69,2-71,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(69,2-71,25)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(69,2-71,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(69,2-71,25)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(69,2-71,25)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(69,2-71,25)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(69,2-71,25)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(69,2-71,25)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(69,2-71,25)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(69,2-71,25)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(69,2-71,25)
(and (implies 
;; def=SfLists.fst(68,16-68,17); use=SfLists.fst(69,8-69,9)
(and 
;; def=SfLists.fst(68,16-68,17); use=SfLists.fst(69,8-69,9)
(not 
;; def=SfLists.fst(68,16-68,17); use=SfLists.fst(69,8-69,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(68,16-68,17); use=SfLists.fst(69,8-69,9)
(not 
;; def=SfLists.fst(68,16-68,17); use=SfLists.fst(69,8-69,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(68,16-70,7); use=SfLists.fst(69,8-70,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(69,2-71,25)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(69,2-71,25)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(69,2-71,25)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(69,2-71,25)
(not 
;; def=SfLists.fst(68,16-68,17); use=SfLists.fst(69,8-69,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(69,2-71,25)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(69,2-71,25)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(68,16-71,12); use=SfLists.fst(69,8-71,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(69,2-71,25)
(and 
;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(71,24-71,25)
(or label_4

;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(71,24-71,25)
(Valid 
;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(71,24-71,25)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(69,2-71,25)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
SfLists.ilist)

;; def=SfLists.fst(66,14-71,12); use=SfLists.fst(69,2-71,25)
(= @x3
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(71,16-71,23)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(67,39-67,54); use=SfLists.fst(71,16-71,23)
(= (SfLists.app @x3
SfLists.Nil@tok)
@x3)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(71,16-71,23)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(71,16-71,23)
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
; QUERY ID: (SfLists.app_nil, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @fuel_irrelevance_SfLists.app.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(68,0-71,25)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_f92f5a8a29ca4ba7084c40728258f489 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(66,14-71,25); use=SfLists.fst(68,0-71,25)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_f92f5a8a29ca4ba7084c40728258f489))

:named refinement_kinding_Tm_refine_f92f5a8a29ca4ba7084c40728258f489))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(66,14-71,25); use=SfLists.fst(68,0-71,25)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x2))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(69,2-71,25)

;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(69,2-71,25)
(Valid 
;; def=SfLists.fst(69,2-71,25); use=SfLists.fst(69,2-71,25)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x2)))
:qid refinement_interpretation_Tm_refine_f92f5a8a29ca4ba7084c40728258f489))

:named refinement_interpretation_Tm_refine_f92f5a8a29ca4ba7084c40728258f489))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f92f5a8a29ca4ba7084c40728258f489
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(66,14-71,25); use=SfLists.fst(68,0-71,25)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x0)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x0))))
:qid haseqTm_refine_f92f5a8a29ca4ba7084c40728258f489))

:named haseqTm_refine_f92f5a8a29ca4ba7084c40728258f489))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(66,25-67,55); use=SfLists.fst(68,8-68,15)
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

; Encoding query formula : forall (l: SfLists.ilist) (l: SfLists.ilist{l << l}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_nil`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(68,0-71,25)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_f92f5a8a29ca4ba7084c40728258f489 @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(68,8-68,15)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(68,8-68,15)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(68,8-68,15)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.app_nil, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec app_nil


; <Start encoding let rec app_nil>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_nil (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_nil@tok () Term)

; </end encoding let rec app_nil>


; encoding sigelt val SfLists.hd


; <Skipped val SfLists.hd/>

(push) ;; push{2

; Starting query at SfLists.fst(75,2-76,17)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_3eb92a5666327bc58471b53f8f76042b () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_3eb92a5666327bc58471b53f8f76042b
Tm_type)
:named refinement_kinding_Tm_refine_3eb92a5666327bc58471b53f8f76042b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(73,9-73,27); use=SfLists.fst(74,4-74,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_3eb92a5666327bc58471b53f8f76042b)
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(73,17-73,26); use=SfLists.fst(74,4-74,6)
(not 
;; def=SfLists.fst(73,17-73,26); use=SfLists.fst(74,4-74,6)
(= @x1
SfLists.Nil@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_3eb92a5666327bc58471b53f8f76042b))
:qid refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b))

:named refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_3eb92a5666327bc58471b53f8f76042b
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_3eb92a5666327bc58471b53f8f76042b))
(Valid (Prims.hasEq SfLists.ilist)))
:named haseqTm_refine_3eb92a5666327bc58471b53f8f76042b))

; Encoding query formula : forall (l: SfLists.ilist{~(l == SfLists.Nil)}).
;   (*  - Could not prove post-condition
; *) ~(Cons? l) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let hd`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_3eb92a5666327bc58471b53f8f76042b)

;; def=SfLists.fst(74,7-74,8); use=SfLists.fst(75,8-75,9)
(not 
;; def=SfLists.fst(74,7-74,8); use=SfLists.fst(75,8-75,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons @x0))
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
; QUERY ID: (SfLists.hd, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfLists.Cons, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let hd


; <Start encoding let hd>

(declare-fun Tm_refine_3eb92a5666327bc58471b53f8f76042b () Term)
(declare-fun SfLists.hd (Term) Term)

;;;;;;;;;;;;;;;;l: ilist{~(l == Nil)} -> Prims.int
(declare-fun Tm_arrow_c924376391c2ba168cce4a8a007d7323 () Term)
(declare-fun SfLists.hd@tok () Term)


; </end encoding let hd>


; encoding sigelt val SfLists.tl_strange


; <Skipped val SfLists.tl_strange/>

;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name SfLists.hd; Namespace SfLists
(assert (! (HasType Tm_refine_3eb92a5666327bc58471b53f8f76042b
Tm_type)
:named refinement_kinding_Tm_refine_3eb92a5666327bc58471b53f8f76042b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name SfLists.hd; Namespace SfLists
(assert (! 
;; def=SfLists.fst(73,9-73,27); use=SfLists.fst(74,4-74,6)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_3eb92a5666327bc58471b53f8f76042b)
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(73,17-73,26); use=SfLists.fst(74,4-74,6)
(not 
;; def=SfLists.fst(73,17-73,26); use=SfLists.fst(74,4-74,6)
(= @x1
SfLists.Nil@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_3eb92a5666327bc58471b53f8f76042b))
:qid refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b))

:named refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_3eb92a5666327bc58471b53f8f76042b
;;; Fact-ids: Name SfLists.hd; Namespace SfLists
(assert (! (iff (Valid (Prims.hasEq Tm_refine_3eb92a5666327bc58471b53f8f76042b))
(Valid (Prims.hasEq SfLists.ilist)))
:named haseqTm_refine_3eb92a5666327bc58471b53f8f76042b))
(push) ;; push{2

; Starting query at SfLists.fst(82,2-84,17)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (l: SfLists.ilist).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post SfLists.ilist).
;     (forall (x: SfLists.ilist). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let tl_strange`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
SfLists.ilist)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post SfLists.ilist))

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(82,2-84,17)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(82,2-84,17)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(82,2-84,17)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=SfLists.fst(81,15-81,16); use=SfLists.fst(82,8-82,9)
(not 
;; def=SfLists.fst(81,15-81,16); use=SfLists.fst(82,8-82,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil @x0))
)


;; def=SfLists.fst(81,15-81,16); use=SfLists.fst(82,8-82,9)
(not 
;; def=SfLists.fst(81,15-81,16); use=SfLists.fst(82,8-82,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons @x0))
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
; QUERY ID: (SfLists.tl_strange, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let tl_strange


; <Start encoding let tl_strange>

(declare-fun SfLists.tl_strange (Term) Term)
;;;;;;;;;;;;;;;;l: ilist -> ilist
(declare-fun Tm_arrow_5a76e38fdb265fa9264e9e407f9b4c4e () Term)
(declare-fun SfLists.tl_strange@tok () Term)

; </end encoding let tl_strange>


; encoding sigelt val SfLists.tl_strange_length_pred


; <Skipped val SfLists.tl_strange_length_pred/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.tl_strange; Namespace SfLists
(assert (! 
;; def=SfLists.fst(81,4-81,14); use=SfLists.fst(81,4-81,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfLists.ilist)
(HasType (SfLists.tl_strange @x0)
SfLists.ilist))
 

:pattern ((SfLists.tl_strange @x0))
:qid typing_SfLists.tl_strange))

:named typing_SfLists.tl_strange))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.length; Namespace SfLists
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfLists.ilist)
(HasType (SfLists.length @x0)
Prims.nat))
 

:pattern ((SfLists.length @x0))
:qid typing_SfLists.length))

:named typing_SfLists.length))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.length; Namespace SfLists
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(HasType (SfLists.length.fuel_instrumented @u0
@x1)
Prims.nat))
 

:pattern ((SfLists.length.fuel_instrumented @u0
@x1))
:qid token_correspondence_SfLists.length.fuel_instrumented))

:named token_correspondence_SfLists.length.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.length
;;; Fact-ids: Name SfLists.length; Namespace SfLists
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(= (SfLists.length.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-SfLists.Nil @lb2)
(BoxInt 0)
(ite (is-SfLists.Cons @lb2)
(Prims.op_Addition (SfLists.length.fuel_instrumented @u0
(SfLists.Cons__1 @lb2))
(BoxInt 1))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.length.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_SfLists.length.fuel_instrumented))

:named equation_with_fuel_SfLists.length.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for SfLists.tl_strange
;;; Fact-ids: Name SfLists.tl_strange; Namespace SfLists
(assert (! 
;; def=SfLists.fst(81,4-81,14); use=SfLists.fst(81,4-81,14)
(forall ((@x0 Term))
 (! (= (SfLists.tl_strange @x0)
(let ((@lb1 @x0))
(ite (is-SfLists.Nil @lb1)
SfLists.Nil@tok
(ite (is-SfLists.Cons @lb1)
(SfLists.Cons__1 @lb1)
Tm_unit))))
 

:pattern ((SfLists.tl_strange @x0))
:qid equation_SfLists.tl_strange))

:named equation_SfLists.tl_strange))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.length; Namespace SfLists
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (SfLists.length.fuel_instrumented (SFuel @u0)
@x1)
(SfLists.length.fuel_instrumented ZFuel
@x1))
 

:pattern ((SfLists.length.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_SfLists.length.fuel_instrumented))

:named @fuel_irrelevance_SfLists.length.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.length; Namespace SfLists
(assert (! 
;; def=SfLists.fst(30,8-30,14); use=SfLists.fst(30,8-30,14)
(forall ((@x0 Term))
 (! (= (SfLists.length @x0)
(SfLists.length.fuel_instrumented MaxFuel
@x0))
 

:pattern ((SfLists.length @x0))
:qid @fuel_correspondence_SfLists.length.fuel_instrumented))

:named @fuel_correspondence_SfLists.length.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(88,31-88,33)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (l: SfLists.ilist{~(l == SfLists.Nil)}).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.length l - 1 = SfLists.length (SfLists.tl_strange l) ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let tl_strange_length_pred`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_3eb92a5666327bc58471b53f8f76042b)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(88,31-88,33)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(87,15-87,55); use=SfLists.fst(88,31-88,33)
(or label_2

;; def=SfLists.fst(87,15-87,55); use=SfLists.fst(88,31-88,33)
(= (Prims.op_Subtraction (SfLists.length @x0)
(BoxInt 1))
(SfLists.length (SfLists.tl_strange @x0)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(88,31-88,33)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(88,31-88,33)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(88,31-88,33)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(88,31-88,33)
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
; QUERY ID: (SfLists.tl_strange_length_pred, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @query, equality_tok_SfLists.Nil@tok, equation_Prims.nat, equation_SfLists.tl_strange, equation_with_fuel_SfLists.length.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, primitive_Prims.op_Addition, primitive_Prims.op_Subtraction, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_SfLists.length, typing_SfLists.tl_strange

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let tl_strange_length_pred


; <Start encoding let tl_strange_length_pred>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.tl_strange_length_pred (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.tl_strange_length_pred@tok () Term)

; </end encoding let tl_strange_length_pred>


; encoding sigelt val SfLists.tl_strange_length_pred_equiv


; <Skipped val SfLists.tl_strange_length_pred_equiv/>

(push) ;; push{2

; Starting query at SfLists.fst(92,37-92,39)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (l: SfLists.ilist{Cons? l}).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.length l - 1 = SfLists.length (SfLists.tl_strange l) ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let tl_strange_length_pred_equiv`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(92,37-92,39)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(91,15-91,55); use=SfLists.fst(92,37-92,39)
(or label_2

;; def=SfLists.fst(91,15-91,55); use=SfLists.fst(92,37-92,39)
(= (Prims.op_Subtraction (SfLists.length @x0)
(BoxInt 1))
(SfLists.length (SfLists.tl_strange @x0)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(92,37-92,39)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(92,37-92,39)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(92,37-92,39)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(92,37-92,39)
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
; QUERY ID: (SfLists.tl_strange_length_pred_equiv, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @query, disc_equation_SfLists.Cons, equation_Prims.nat, equation_SfLists.tl_strange, equation_with_fuel_SfLists.length.fuel_instrumented, int_inversion, primitive_Prims.op_Addition, primitive_Prims.op_Subtraction, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_4af35fe3776a37c0cce0f466b1cbfc00, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_SfLists.length, typing_SfLists.tl_strange

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let tl_strange_length_pred_equiv


; <Start encoding let tl_strange_length_pred_equiv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.tl_strange_length_pred_equiv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.tl_strange_length_pred_equiv@tok () Term)

; </end encoding let tl_strange_length_pred_equiv>


; encoding sigelt val SfLists.tl


; <Skipped val SfLists.tl/>

(push) ;; push{2

; Starting query at SfLists.fst(96,2-97,17)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (l: SfLists.ilist{~(l == SfLists.Nil)}).
;   (*  - Could not prove post-condition
; *) ~(Cons? l) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let tl`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_3eb92a5666327bc58471b53f8f76042b)

;; def=SfLists.fst(95,7-95,8); use=SfLists.fst(96,8-96,9)
(not 
;; def=SfLists.fst(95,7-95,8); use=SfLists.fst(96,8-96,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons @x0))
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
; QUERY ID: (SfLists.tl, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_SfLists.Cons, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let tl


; <Start encoding let tl>


(declare-fun SfLists.tl (Term) Term)

;;;;;;;;;;;;;;;;l: ilist{~(l == Nil)} -> ilist
(declare-fun Tm_arrow_0e76a8c50ba3800484cd20284f8e7d15 () Term)
(declare-fun SfLists.tl@tok () Term)


; </end encoding let tl>


; encoding sigelt val SfLists.tl_length_pred


; <Skipped val SfLists.tl_length_pred/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.tl; Namespace SfLists
(assert (! 
;; def=SfLists.fst(95,4-95,6); use=SfLists.fst(95,4-95,6)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_3eb92a5666327bc58471b53f8f76042b)
(HasType (SfLists.tl @x0)
SfLists.ilist))
 

:pattern ((SfLists.tl @x0))
:qid typing_SfLists.tl))

:named typing_SfLists.tl))
;;;;;;;;;;;;;;;;Equation for SfLists.tl
;;; Fact-ids: Name SfLists.tl; Namespace SfLists
(assert (! 
;; def=SfLists.fst(95,4-95,6); use=SfLists.fst(95,4-95,6)
(forall ((@x0 Term))
 (! (= (SfLists.tl @x0)
(let ((@lb1 @x0))
(ite (is-SfLists.Cons @lb1)
(SfLists.Cons__1 @lb1)
Tm_unit)))
 

:pattern ((SfLists.tl @x0))
:qid equation_SfLists.tl))

:named equation_SfLists.tl))
(push) ;; push{2

; Starting query at SfLists.fst(101,23-101,25)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (l: SfLists.ilist{~(l == SfLists.Nil)}).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.length l - 1 = SfLists.length (SfLists.tl l) ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let tl_length_pred`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_3eb92a5666327bc58471b53f8f76042b)

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(101,23-101,25)
(forall ((@x2 Term))
 (! (implies (and (or label_1
(HasType @x2
Prims.unit))

;; def=SfLists.fst(100,15-100,47); use=SfLists.fst(101,23-101,25)
(or label_2

;; def=SfLists.fst(100,15-100,47); use=SfLists.fst(101,23-101,25)
(= (Prims.op_Subtraction (SfLists.length @x0)
(BoxInt 1))
(SfLists.length (SfLists.tl @x0)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(101,23-101,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(101,23-101,25)
(ApplyTT @x1
@x2)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(101,23-101,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(101,23-101,25)
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
; QUERY ID: (SfLists.tl_length_pred, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @query, equality_tok_SfLists.Nil@tok, equation_Prims.nat, equation_SfLists.tl, equation_with_fuel_SfLists.length.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, primitive_Prims.op_Addition, primitive_Prims.op_Subtraction, projection_inverse_BoxInt_proj_0, refinement_interpretation_Tm_refine_3eb92a5666327bc58471b53f8f76042b, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_SfLists.length, typing_SfLists.tl

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let tl_length_pred


; <Start encoding let tl_length_pred>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.tl_length_pred (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.tl_length_pred@tok () Term)

; </end encoding let tl_length_pred>

(push) ;; push{2

; Starting query at SfLists.fst(103,0-104,57)

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
;; def=SfLists.fst(103,58-104,57); use=SfLists.fst(103,58-103,63)
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

; Encoding query formula : forall (l1: SfLists.ilist) (l2: SfLists.ilist) (l3: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.app_assoc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(103,0-104,57)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist)
(HasType @x3
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(104,16-104,19)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(104,16-104,19)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(104,16-104,19)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.app_assoc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.app_assoc


; <Skipped val SfLists.app_assoc/>

(push) ;; push{2

; Starting query at SfLists.fst(106,2-108,33)

;;;;;;;;;;;;;;;;l1 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;l2 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_1 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_1
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_1))
;;;;;;;;;;;;;;;;l3 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_2 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_2
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_2
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_2))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_assoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_assoc@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.app (SfLists.app l1 l2) l3 = SfLists.app l1 (SfLists.app l2 l3) ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l1) /\ ~(Cons? l1) ==> Prims.l_False) /\
;       (l1 == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l1) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l1 == SfLists.Cons b b ==>
;             (b << l1 \/ b === l1 /\ (l2 << l2 \/ l3 << l3)) /\
;             (forall (any_result: SfLists.ilist).
;                 l3 == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.app (SfLists.app b l2) l3 = SfLists.app b (SfLists.app l2 l3) ==>
;                     k pure_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_assoc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(106,2-108,33)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(104,15-104,56); use=SfLists.fst(106,2-108,33)
(or label_2

;; def=SfLists.fst(104,15-104,56); use=SfLists.fst(106,2-108,33)
(= (SfLists.app (SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)
x_da0ce6472e3557dab4a010c89b01a198_2)
(SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.app x_da0ce6472e3557dab4a010c89b01a198_1
x_da0ce6472e3557dab4a010c89b01a198_2)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(106,2-108,33)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(106,2-108,33)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(106,2-108,33)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(106,2-108,33)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(106,2-108,33)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(106,2-108,33)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(106,2-108,33)
(and (implies 
;; def=SfLists.fst(105,18-105,20); use=SfLists.fst(106,8-106,10)
(and 
;; def=SfLists.fst(105,18-105,20); use=SfLists.fst(106,8-106,10)
(not 
;; def=SfLists.fst(105,18-105,20); use=SfLists.fst(106,8-106,10)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(105,18-105,20); use=SfLists.fst(106,8-106,10)
(not 
;; def=SfLists.fst(105,18-105,20); use=SfLists.fst(106,8-106,10)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(105,18-107,7); use=SfLists.fst(106,8-107,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(106,2-108,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(106,2-108,33)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(106,2-108,33)
(not 
;; def=SfLists.fst(105,18-105,20); use=SfLists.fst(106,8-106,10)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(106,2-108,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(106,2-108,33)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(105,18-108,12); use=SfLists.fst(106,8-108,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(106,2-108,33)
(and 
;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(108,31-108,33)
(or label_4

;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(108,31-108,33)
(Valid 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(108,31-108,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(108,31-108,33)
(and 
;; def=SfLists.fst(103,16-105,20); use=SfLists.fst(108,31-108,33)
(Valid 
;; def=SfLists.fst(103,16-105,20); use=SfLists.fst(108,31-108,33)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(103,30-108,33); use=SfLists.fst(108,31-108,33)
(or 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(108,31-108,33)
(Valid 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(108,31-108,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_1
x_da0ce6472e3557dab4a010c89b01a198_1)
)


;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(108,31-108,33)
(Valid 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(108,31-108,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_2
x_da0ce6472e3557dab4a010c89b01a198_2)
)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(106,2-108,33)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
SfLists.ilist)

;; def=SfLists.fst(103,44-105,26); use=SfLists.fst(106,2-108,33)
(= x_da0ce6472e3557dab4a010c89b01a198_2
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(108,16-108,25)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(104,15-104,56); use=SfLists.fst(108,16-108,25)
(= (SfLists.app (SfLists.app @x3
x_da0ce6472e3557dab4a010c89b01a198_1)
x_da0ce6472e3557dab4a010c89b01a198_2)
(SfLists.app @x3
(SfLists.app x_da0ce6472e3557dab4a010c89b01a198_1
x_da0ce6472e3557dab4a010c89b01a198_2)))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(108,16-108,25)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(108,16-108,25)
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
; QUERY ID: (SfLists.app_assoc, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @fuel_irrelevance_SfLists.app.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, binder_x_da0ce6472e3557dab4a010c89b01a198_1, binder_x_da0ce6472e3557dab4a010c89b01a198_2, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.app, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(105,0-108,33)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(105,0-108,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c))

:named refinement_kinding_Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(105,0-108,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(105,0-108,33)

;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(105,0-108,33)
(or 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(105,0-108,33)
(and 
;; def=SfLists.fst(103,16-105,20); use=SfLists.fst(105,0-108,33)
(Valid 
;; def=SfLists.fst(103,16-105,20); use=SfLists.fst(105,0-108,33)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(103,30-108,33); use=SfLists.fst(105,0-108,33)
(or 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x4
@x5)
)


;; def=SfLists.fst(103,30-108,33); use=SfLists.fst(105,0-108,33)
(and 
;; def=SfLists.fst(103,30-105,23); use=SfLists.fst(105,0-108,33)
(Valid 
;; def=SfLists.fst(103,30-105,23); use=SfLists.fst(105,0-108,33)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x4
@x5)
)


;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(Valid 
;; def=SfLists.fst(106,2-108,33); use=SfLists.fst(106,2-108,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c))

:named refinement_interpretation_Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(103,16-108,33); use=SfLists.fst(105,0-108,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_994741d7b9c5f0d74f230ddc51ca3b6c))

:named haseqTm_refine_994741d7b9c5f0d74f230ddc51ca3b6c))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(103,58-104,57); use=SfLists.fst(105,8-105,17)
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

; Encoding query formula : forall (l1: SfLists.ilist)
;   (l2: SfLists.ilist)
;   (l3: SfLists.ilist)
;   (l1: SfLists.ilist)
;   (l2: SfLists.ilist)
;   (l3: SfLists.ilist{l1 << l1 \/ l1 === l1 /\ (l2 << l2 \/ l2 === l2 /\ l3 << l3)})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_assoc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(105,0-108,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist)
(HasType @x3
SfLists.ilist)
(HasType @x4
SfLists.ilist)
(HasType @x5
(Tm_refine_994741d7b9c5f0d74f230ddc51ca3b6c @x3
@x0
@x4
@x1
@x2))
(HasType @x6
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(105,8-105,17)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(105,8-105,17)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(105,8-105,17)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.app_assoc, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec app_assoc


; <Start encoding let rec app_assoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_assoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_assoc@tok () Term)

; </end encoding let rec app_assoc>


; encoding sigelt val SfLists.app_length


; <Skipped val SfLists.app_length/>

(push) ;; push{2

; Starting query at SfLists.fst(113,2-115,36)

;;;;;;;;;;;;;;;;l1 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;l2 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_1 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_1
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_length@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.length (SfLists.app l1 l2) = SfLists.length l1 + SfLists.length l2 ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l1) /\ ~(Cons? l1) ==> Prims.l_False) /\
;       (l1 == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l1) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l1 == SfLists.Cons b b ==>
;             (b << l1 \/ b === l1 /\ l2 << l2) /\
;             (forall (any_result: SfLists.ilist).
;                 l2 == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.length (SfLists.app b l2) = SfLists.length b + SfLists.length l2 ==>
;                     k pure_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_length`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(113,2-115,36); use=SfLists.fst(113,2-115,36)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(113,2-115,36)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(111,15-111,63); use=SfLists.fst(113,2-115,36)
(or label_2

;; def=SfLists.fst(111,15-111,63); use=SfLists.fst(113,2-115,36)
(= (SfLists.length (SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1))
(Prims.op_Addition (SfLists.length x_da0ce6472e3557dab4a010c89b01a198_0)
(SfLists.length x_da0ce6472e3557dab4a010c89b01a198_1)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(113,2-115,36)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(113,2-115,36)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(113,2-115,36)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(113,2-115,36)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(113,2-115,36)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(113,2-115,36)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(113,2-115,36)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(113,2-115,36)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(113,2-115,36)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(113,2-115,36)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(113,2-115,36)
(and (implies 
;; def=SfLists.fst(112,19-112,21); use=SfLists.fst(113,8-113,10)
(and 
;; def=SfLists.fst(112,19-112,21); use=SfLists.fst(113,8-113,10)
(not 
;; def=SfLists.fst(112,19-112,21); use=SfLists.fst(113,8-113,10)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(112,19-112,21); use=SfLists.fst(113,8-113,10)
(not 
;; def=SfLists.fst(112,19-112,21); use=SfLists.fst(113,8-113,10)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(112,19-114,7); use=SfLists.fst(113,8-114,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(113,2-115,36)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(113,2-115,36)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(113,2-115,36)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(113,2-115,36)
(not 
;; def=SfLists.fst(112,19-112,21); use=SfLists.fst(113,8-113,10)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(113,2-115,36)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(113,2-115,36)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(112,19-115,15); use=SfLists.fst(113,8-115,15)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(113,2-115,36)
(and 
;; def=SfLists.fst(110,17-115,36); use=SfLists.fst(115,34-115,36)
(or label_4

;; def=SfLists.fst(113,2-115,36); use=SfLists.fst(115,34-115,36)
(Valid 
;; def=SfLists.fst(113,2-115,36); use=SfLists.fst(115,34-115,36)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(110,17-115,36); use=SfLists.fst(115,34-115,36)
(and 
;; def=SfLists.fst(110,17-112,21); use=SfLists.fst(115,34-115,36)
(Valid 
;; def=SfLists.fst(110,17-112,21); use=SfLists.fst(115,34-115,36)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(113,2-115,36); use=SfLists.fst(115,34-115,36)
(Valid 
;; def=SfLists.fst(113,2-115,36); use=SfLists.fst(115,34-115,36)
(Prims.precedes SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_1
x_da0ce6472e3557dab4a010c89b01a198_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(113,2-115,36)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
SfLists.ilist)

;; def=SfLists.fst(110,31-112,24); use=SfLists.fst(113,2-115,36)
(= x_da0ce6472e3557dab4a010c89b01a198_1
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(115,19-115,29)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(111,15-111,63); use=SfLists.fst(115,19-115,29)
(= (SfLists.length (SfLists.app @x3
x_da0ce6472e3557dab4a010c89b01a198_1))
(Prims.op_Addition (SfLists.length @x3)
(SfLists.length x_da0ce6472e3557dab4a010c89b01a198_1)))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(115,19-115,29)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(115,19-115,29)
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
; QUERY ID: (SfLists.app_length, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.app.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, binder_x_da0ce6472e3557dab4a010c89b01a198_1, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_Prims.nat, equation_with_fuel_SfLists.app.fuel_instrumented, equation_with_fuel_SfLists.length.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, primitive_Prims.op_Addition, projection_inverse_BoxBool_proj_0, projection_inverse_BoxInt_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, subterm_ordering_SfLists.Cons, typing_SfLists.app, typing_SfLists.length, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec app_length


; <Start encoding let rec app_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_length@tok () Term)

; </end encoding let rec app_length>


; encoding sigelt val SfLists.snoc


; <Skipped val SfLists.snoc/>

(push) ;; push{2

; Starting query at SfLists.fst(119,2-121,33)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;v : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_1
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_1
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_1))
(declare-fun Tm_refine_c23ec76553a001497d1210248c735df0 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(118,13-121,33)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c23ec76553a001497d1210248c735df0 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c23ec76553a001497d1210248c735df0 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c23ec76553a001497d1210248c735df0))

:named refinement_kinding_Tm_refine_c23ec76553a001497d1210248c735df0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(118,13-121,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c23ec76553a001497d1210248c735df0 @x2))
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(118,13-121,33)

;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(118,13-121,33)
(or 
;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(119,2-121,33)
(Valid 
;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(119,2-121,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(118,13-121,33)
(and 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(118,13-118,14)
(Valid 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(118,13-118,14)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(119,2-121,33)
(Valid 
;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(119,2-121,33)
(Prims.precedes Prims.int
Prims.int
@x1
x_ae567c2fb75be05905677af440075565_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c23ec76553a001497d1210248c735df0 @x2)))
:qid refinement_interpretation_Tm_refine_c23ec76553a001497d1210248c735df0))

:named refinement_interpretation_Tm_refine_c23ec76553a001497d1210248c735df0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c23ec76553a001497d1210248c735df0
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(118,13-121,33)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c23ec76553a001497d1210248c735df0 @x0)))
(Valid (Prims.hasEq Prims.int)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c23ec76553a001497d1210248c735df0 @x0))))
:qid haseqTm_refine_c23ec76553a001497d1210248c735df0))

:named haseqTm_refine_c23ec76553a001497d1210248c735df0))
(declare-fun SfLists.snoc (Term Term) Term)

;;;;;;;;;;;;;;;;_: ilist -> _: _: Prims.int{_ << l \/ _ === l /\ _ << v} -> ilist
(declare-fun Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607
Tm_type)
:named kinding_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(117,11-121,33); use=SfLists.fst(118,8-121,33)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))
:qid SfLists_pre_typing_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))

:named SfLists_pre_typing_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(117,11-121,33); use=SfLists.fst(118,8-121,33)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607)
(and 
;; def=SfLists.fst(117,11-121,33); use=SfLists.fst(118,8-121,33)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
(Tm_refine_c23ec76553a001497d1210248c735df0 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfLists.ilist))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607.1))

(IsTotFun @x0)

;; def=SfLists.fst(117,11-121,33); use=SfLists.fst(118,8-121,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))
:qid SfLists_interpretation_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))

:named SfLists_interpretation_Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))
(declare-fun SfLists.snoc@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfLists.snoc@tok
@x0)
@x1)
(SfLists.snoc @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfLists.snoc@tok
@x0)
@x1))
:qid token_correspondence_SfLists.snoc))

:named token_correspondence_SfLists.snoc))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.snoc@tok
Tm_arrow_cfe24cd4e58d253cd1a29905b31b8607))

;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfLists.snoc@tok
@x1)
@x2)
(SfLists.snoc @x1
@x2))
 

:pattern ((SfLists.snoc @x1
@x2))
:qid function_token_typing_SfLists.snoc.1))
)
 

:pattern ((ApplyTT @x0
SfLists.snoc@tok))
:qid function_token_typing_SfLists.snoc))

:named function_token_typing_SfLists.snoc))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_c23ec76553a001497d1210248c735df0 @x0)))
(HasType (SfLists.snoc @x0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.snoc @x0
@x1))
:qid typing_SfLists.snoc))

:named typing_SfLists.snoc))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfLists.ilist).
;   (forall (x: SfLists.ilist). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==>
;     (forall (b: Prims.int) (b: SfLists.ilist). l == SfLists.Cons b b ==> b << l \/ b === l /\ v << v
;     ))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post SfLists.ilist))

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(119,2-121,33)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(119,2-121,33)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(119,2-121,33)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(119,2-121,33)
(and (implies 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(119,8-119,9)
(and 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(119,8-119,9)
(not 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(119,8-119,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(119,8-119,9)
(not 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(119,8-119,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(119,2-121,33)
(not 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(119,8-119,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(119,2-121,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(119,2-121,33)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(118,13-121,12); use=SfLists.fst(119,8-121,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x1
@x2))
)

;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(121,31-121,32)
(or label_2

;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(121,31-121,32)
(Valid 
;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(121,31-121,32)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(118,13-121,33); use=SfLists.fst(121,31-121,32)
(and 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(121,31-121,32)
(Valid 
;; def=SfLists.fst(118,13-118,14); use=SfLists.fst(121,31-121,32)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(121,31-121,32)
(Valid 
;; def=SfLists.fst(119,2-121,33); use=SfLists.fst(121,31-121,32)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
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
; QUERY ID: (SfLists.snoc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec snoc


; <Start encoding let rec snoc>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.snoc.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.snoc.fuel_instrumented_token () Term)
(declare-fun SfLists.snoc (Term Term) Term)
(declare-fun SfLists.snoc@tok () Term)
;;;;;;;;;;;;;;;;l: ilist -> v: Prims.int -> ilist
(declare-fun Tm_arrow_2cf845f7b538986971e669f391fd1f5b () Term)

; </end encoding let rec snoc>


; encoding sigelt val SfLists.rev


; <Skipped val SfLists.rev/>

(push) ;; push{2

; Starting query at SfLists.fst(125,2-127,30)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
(declare-fun Tm_refine_d4c61797a5f24c18143101d4c8a711e1 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_d4c61797a5f24c18143101d4c8a711e1
Tm_type)
:named refinement_kinding_Tm_refine_d4c61797a5f24c18143101d4c8a711e1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(125,2-127,30)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_d4c61797a5f24c18143101d4c8a711e1)
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(125,2-127,30)

;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(125,2-127,30)
(Valid 
;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(125,2-127,30)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
x_da0ce6472e3557dab4a010c89b01a198_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_d4c61797a5f24c18143101d4c8a711e1))
:qid refinement_interpretation_Tm_refine_d4c61797a5f24c18143101d4c8a711e1))

:named refinement_interpretation_Tm_refine_d4c61797a5f24c18143101d4c8a711e1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d4c61797a5f24c18143101d4c8a711e1
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_d4c61797a5f24c18143101d4c8a711e1))
(Valid (Prims.hasEq SfLists.ilist)))
:named haseqTm_refine_d4c61797a5f24c18143101d4c8a711e1))
(declare-fun SfLists.rev (Term) Term)

;;;;;;;;;;;;;;;;_: _: ilist{_ << l} -> ilist
(declare-fun Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167
Tm_type)
:named kinding_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(123,23-127,30); use=SfLists.fst(124,8-127,30)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))
:qid SfLists_pre_typing_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))

:named SfLists_pre_typing_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(123,23-127,30); use=SfLists.fst(124,8-127,30)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167)
(and 
;; def=SfLists.fst(123,23-127,30); use=SfLists.fst(124,8-127,30)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_d4c61797a5f24c18143101d4c8a711e1)
(HasType (ApplyTT @x0
@x1)
SfLists.ilist))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))
:qid SfLists_interpretation_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))

:named SfLists_interpretation_Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))
(declare-fun SfLists.rev@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@x0 Term))
 (! (= (ApplyTT SfLists.rev@tok
@x0)
(SfLists.rev @x0))
 

:pattern ((ApplyTT SfLists.rev@tok
@x0))
:qid token_correspondence_SfLists.rev))

:named token_correspondence_SfLists.rev))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.rev@tok
Tm_arrow_d49d4c7e1d17a8fb41a6703d36ed6167))

;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@x1 Term))
 (! (= (ApplyTT SfLists.rev@tok
@x1)
(SfLists.rev @x1))
 

:pattern ((SfLists.rev @x1))
:qid function_token_typing_SfLists.rev.1))
)
 

:pattern ((ApplyTT @x0
SfLists.rev@tok))
:qid function_token_typing_SfLists.rev))

:named function_token_typing_SfLists.rev))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_refine_d4c61797a5f24c18143101d4c8a711e1)
(HasType (SfLists.rev @x0)
SfLists.ilist))
 

:pattern ((SfLists.rev @x0))
:qid typing_SfLists.rev))

:named typing_SfLists.rev))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post SfLists.ilist).
;   (forall (x: SfLists.ilist). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==> (forall (b: Prims.int) (b: SfLists.ilist). l == SfLists.Cons b b ==> b << l))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post SfLists.ilist))

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(125,2-127,30)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(125,2-127,30)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(125,2-127,30)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(125,2-127,30)
(and (implies 
;; def=SfLists.fst(124,12-124,13); use=SfLists.fst(125,8-125,9)
(and 
;; def=SfLists.fst(124,12-124,13); use=SfLists.fst(125,8-125,9)
(not 
;; def=SfLists.fst(124,12-124,13); use=SfLists.fst(125,8-125,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(124,12-124,13); use=SfLists.fst(125,8-125,9)
(not 
;; def=SfLists.fst(124,12-124,13); use=SfLists.fst(125,8-125,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(125,2-127,30)
(not 
;; def=SfLists.fst(124,12-124,13); use=SfLists.fst(125,8-125,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(125,2-127,30)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(125,2-127,30)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(124,12-127,12); use=SfLists.fst(125,8-127,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x1
@x2))
)

;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(127,26-127,27)
(or label_2

;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(127,26-127,27)
(Valid 
;; def=SfLists.fst(125,2-127,30); use=SfLists.fst(127,26-127,27)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
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
; QUERY ID: (SfLists.rev, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec rev


; <Start encoding let rec rev>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.rev.fuel_instrumented (Fuel Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.rev.fuel_instrumented_token () Term)
(declare-fun SfLists.rev (Term) Term)
(declare-fun SfLists.rev@tok () Term)


; </end encoding let rec rev>


; encoding sigelt val SfLists.length_snoc


; <Skipped val SfLists.length_snoc/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.snoc; Namespace SfLists
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int))
(HasType (SfLists.snoc @x0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.snoc @x0
@x1))
:qid typing_SfLists.snoc))

:named typing_SfLists.snoc))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.snoc; Namespace SfLists
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Prims.int))
(HasType (SfLists.snoc.fuel_instrumented @u0
@x1
@x2)
SfLists.ilist))
 

:pattern ((SfLists.snoc.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfLists.snoc.fuel_instrumented))

:named token_correspondence_SfLists.snoc.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.snoc
;;; Fact-ids: Name SfLists.snoc; Namespace SfLists
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Prims.int))
(= (SfLists.snoc.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-SfLists.Nil @lb3)
(SfLists.Cons @x2
SfLists.Nil@tok)
(ite (is-SfLists.Cons @lb3)
(SfLists.Cons (SfLists.Cons__0 @lb3)
(SfLists.snoc.fuel_instrumented @u0
(SfLists.Cons__1 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.snoc.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfLists.snoc.fuel_instrumented))

:named equation_with_fuel_SfLists.snoc.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.snoc; Namespace SfLists
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfLists.snoc.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfLists.snoc.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfLists.snoc.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfLists.snoc.fuel_instrumented))

:named @fuel_irrelevance_SfLists.snoc.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.snoc; Namespace SfLists
(assert (! 
;; def=SfLists.fst(118,8-118,12); use=SfLists.fst(118,8-118,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.snoc @x0
@x1)
(SfLists.snoc.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfLists.snoc @x0
@x1))
:qid @fuel_correspondence_SfLists.snoc.fuel_instrumented))

:named @fuel_correspondence_SfLists.snoc.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(132,2-134,31)

;;;;;;;;;;;;;;;;n : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_1 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_1
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.length_snoc (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.length_snoc@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.length (SfLists.snoc l n) = SfLists.length l + 1 ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (n << n \/ b << l) /\
;             (forall (any_result: SfLists.ilist).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.length (SfLists.snoc b n) = SfLists.length b + 1 ==> k pure_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec length_snoc`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(132,2-134,31); use=SfLists.fst(132,2-134,31)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(132,2-134,31)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(130,15-130,49); use=SfLists.fst(132,2-134,31)
(or label_2

;; def=SfLists.fst(130,15-130,49); use=SfLists.fst(132,2-134,31)
(= (SfLists.length (SfLists.snoc x_da0ce6472e3557dab4a010c89b01a198_1
x_ae567c2fb75be05905677af440075565_0))
(Prims.op_Addition (SfLists.length x_da0ce6472e3557dab4a010c89b01a198_1)
(BoxInt 1)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(132,2-134,31)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(132,2-134,31)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(132,2-134,31)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(132,2-134,31)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(132,2-134,31)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(132,2-134,31)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(132,2-134,31)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(132,2-134,31)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(132,2-134,31)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(132,2-134,31)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(132,2-134,31)
(and (implies 
;; def=SfLists.fst(131,22-131,23); use=SfLists.fst(132,8-132,9)
(and 
;; def=SfLists.fst(131,22-131,23); use=SfLists.fst(132,8-132,9)
(not 
;; def=SfLists.fst(131,22-131,23); use=SfLists.fst(132,8-132,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_1))
)


;; def=SfLists.fst(131,22-131,23); use=SfLists.fst(132,8-132,9)
(not 
;; def=SfLists.fst(131,22-131,23); use=SfLists.fst(132,8-132,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_1))
)
)

label_3)
(implies 
;; def=SfLists.fst(131,22-133,7); use=SfLists.fst(132,8-133,7)
(= x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(132,2-134,31)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(132,2-134,31)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(132,2-134,31)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(132,2-134,31)
(not 
;; def=SfLists.fst(131,22-131,23); use=SfLists.fst(132,8-132,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_1))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(132,2-134,31)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(132,2-134,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(131,22-134,12); use=SfLists.fst(132,8-134,12)
(= x_da0ce6472e3557dab4a010c89b01a198_1
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(132,2-134,31)
(and 
;; def=SfLists.fst(129,18-134,31); use=SfLists.fst(134,30-134,31)
(or label_4

;; def=SfLists.fst(132,2-134,31); use=SfLists.fst(134,30-134,31)
(Valid 
;; def=SfLists.fst(132,2-134,31); use=SfLists.fst(134,30-134,31)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=SfLists.fst(132,2-134,31); use=SfLists.fst(134,30-134,31)
(Valid 
;; def=SfLists.fst(132,2-134,31); use=SfLists.fst(134,30-134,31)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_1)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(132,2-134,31)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
SfLists.ilist)

;; def=SfLists.fst(129,29-134,12); use=SfLists.fst(132,2-134,31)
(= @x3
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(134,16-134,27)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(130,15-130,49); use=SfLists.fst(134,16-134,27)
(= (SfLists.length (SfLists.snoc @x3
x_ae567c2fb75be05905677af440075565_0))
(Prims.op_Addition (SfLists.length @x3)
(BoxInt 1)))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(134,16-134,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(134,16-134,27)
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
; QUERY ID: (SfLists.length_snoc, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.snoc.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_ae567c2fb75be05905677af440075565_0, binder_x_da0ce6472e3557dab4a010c89b01a198_1, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.length.fuel_instrumented, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.snoc, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec length_snoc


; <Start encoding let rec length_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.length_snoc (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.length_snoc@tok () Term)

; </end encoding let rec length_snoc>

(push) ;; push{2

; Starting query at SfLists.fst(136,0-137,43)

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
;; def=SfLists.fst(136,30-137,43); use=SfLists.fst(136,30-136,35)
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

; Encoding query formula : forall (l: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq Prims.nat


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.rev_length`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(136,0-137,43)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(137,16-137,22)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(137,16-137,22)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(137,16-137,22)
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
; QUERY ID: (SfLists.rev_length, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.rev_length


; <Skipped val SfLists.rev_length/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.rev; Namespace SfLists
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
SfLists.ilist)
(HasType (SfLists.rev @x0)
SfLists.ilist))
 

:pattern ((SfLists.rev @x0))
:qid typing_SfLists.rev))

:named typing_SfLists.rev))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.rev; Namespace SfLists
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(HasType (SfLists.rev.fuel_instrumented @u0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.rev.fuel_instrumented @u0
@x1))
:qid token_correspondence_SfLists.rev.fuel_instrumented))

:named token_correspondence_SfLists.rev.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.rev
;;; Fact-ids: Name SfLists.rev; Namespace SfLists
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(= (SfLists.rev.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (is-SfLists.Nil @lb2)
SfLists.Nil@tok
(ite (is-SfLists.Cons @lb2)
(SfLists.snoc (SfLists.rev.fuel_instrumented @u0
(SfLists.Cons__1 @lb2))
(SfLists.Cons__0 @lb2))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.rev.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_SfLists.rev.fuel_instrumented))

:named equation_with_fuel_SfLists.rev.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.rev; Namespace SfLists
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (SfLists.rev.fuel_instrumented (SFuel @u0)
@x1)
(SfLists.rev.fuel_instrumented ZFuel
@x1))
 

:pattern ((SfLists.rev.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_SfLists.rev.fuel_instrumented))

:named @fuel_irrelevance_SfLists.rev.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.rev; Namespace SfLists
(assert (! 
;; def=SfLists.fst(124,8-124,11); use=SfLists.fst(124,8-124,11)
(forall ((@x0 Term))
 (! (= (SfLists.rev @x0)
(SfLists.rev.fuel_instrumented MaxFuel
@x0))
 

:pattern ((SfLists.rev @x0))
:qid @fuel_correspondence_SfLists.rev.fuel_instrumented))

:named @fuel_correspondence_SfLists.rev.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(139,2-141,51)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_length (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_length@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.length (SfLists.rev l) = SfLists.length l ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (forall (pure_result: Prims.unit).
;                 SfLists.length (SfLists.snoc (SfLists.rev b) b) = SfLists.length (SfLists.rev b) + 1 ==>
;                 b << l /\
;                 (forall (any_result: SfLists.ilist).
;                     b == any_result ==>
;                     (forall (pure_result: Prims.unit).
;                         SfLists.length (SfLists.rev b) = SfLists.length b ==> k pure_result))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev_length`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(139,2-141,51)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(139,2-141,51)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(137,15-137,42); use=SfLists.fst(139,2-141,51)
(or label_2

;; def=SfLists.fst(137,15-137,42); use=SfLists.fst(139,2-141,51)
(= (SfLists.length (SfLists.rev x_da0ce6472e3557dab4a010c89b01a198_0))
(SfLists.length x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(139,2-141,51)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(139,2-141,51)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(139,2-141,51)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(139,2-141,51)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(139,2-141,51)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(139,2-141,51)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(139,2-141,51)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(139,2-141,51)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(139,2-141,51)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(139,2-141,51)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(139,2-141,51)
(and (implies 
;; def=SfLists.fst(138,19-138,20); use=SfLists.fst(139,8-139,9)
(and 
;; def=SfLists.fst(138,19-138,20); use=SfLists.fst(139,8-139,9)
(not 
;; def=SfLists.fst(138,19-138,20); use=SfLists.fst(139,8-139,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(138,19-138,20); use=SfLists.fst(139,8-139,9)
(not 
;; def=SfLists.fst(138,19-138,20); use=SfLists.fst(139,8-139,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(138,19-140,7); use=SfLists.fst(139,8-140,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(139,2-141,51)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(139,2-141,51)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(139,2-141,51)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(139,2-141,51)
(not 
;; def=SfLists.fst(138,19-138,20); use=SfLists.fst(139,8-139,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(139,2-141,51)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(139,2-141,51)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(138,19-141,12); use=SfLists.fst(139,8-141,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(141,16-141,27)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=SfLists.fst(130,15-130,49); use=SfLists.fst(141,16-141,27)
(= (SfLists.length (SfLists.snoc (SfLists.rev @x3)
@x2))
(Prims.op_Addition (SfLists.length (SfLists.rev @x3))
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(139,2-141,51)
(and 
;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(141,50-141,51)
(or label_4

;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(141,50-141,51)
(Valid 
;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(141,50-141,51)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(139,2-141,51)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
SfLists.ilist)

;; def=SfLists.fst(136,17-141,12); use=SfLists.fst(139,2-141,51)
(= @x3
@x5)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(141,39-141,49)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=SfLists.fst(137,15-137,42); use=SfLists.fst(141,39-141,49)
(= (SfLists.length (SfLists.rev @x3))
(SfLists.length @x3))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(141,39-141,49)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(141,39-141,49)
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
; QUERY ID: (SfLists.rev_length, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_correspondence_SfLists.rev.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.rev.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.length.fuel_instrumented, equation_with_fuel_SfLists.rev.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(138,0-141,51)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_81296e76230ac81430ffe2a79af6e01c (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(136,17-141,51); use=SfLists.fst(138,0-141,51)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_81296e76230ac81430ffe2a79af6e01c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_81296e76230ac81430ffe2a79af6e01c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_81296e76230ac81430ffe2a79af6e01c))

:named refinement_kinding_Tm_refine_81296e76230ac81430ffe2a79af6e01c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(136,17-141,51); use=SfLists.fst(138,0-141,51)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_81296e76230ac81430ffe2a79af6e01c @x2))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(139,2-141,51)

;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(139,2-141,51)
(Valid 
;; def=SfLists.fst(139,2-141,51); use=SfLists.fst(139,2-141,51)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_81296e76230ac81430ffe2a79af6e01c @x2)))
:qid refinement_interpretation_Tm_refine_81296e76230ac81430ffe2a79af6e01c))

:named refinement_interpretation_Tm_refine_81296e76230ac81430ffe2a79af6e01c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_81296e76230ac81430ffe2a79af6e01c
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(136,17-141,51); use=SfLists.fst(138,0-141,51)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_81296e76230ac81430ffe2a79af6e01c @x0)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_81296e76230ac81430ffe2a79af6e01c @x0))))
:qid haseqTm_refine_81296e76230ac81430ffe2a79af6e01c))

:named haseqTm_refine_81296e76230ac81430ffe2a79af6e01c))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(136,30-137,43); use=SfLists.fst(138,8-138,18)
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

; Encoding query formula : forall (l: SfLists.ilist) (l: SfLists.ilist{l << l}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq Prims.nat


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev_length`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(138,0-141,51)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_81296e76230ac81430ffe2a79af6e01c @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(138,8-138,18)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(138,8-138,18)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(138,8-138,18)
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
; QUERY ID: (SfLists.rev_length, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec rev_length


; <Start encoding let rec rev_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_length (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_length@tok () Term)

; </end encoding let rec rev_length>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.repeat; Namespace SfLists
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
Prims.nat))
(HasType (SfLists.repeat @x0
@x1)
SfLists.ilist))
 

:pattern ((SfLists.repeat @x0
@x1))
:qid typing_SfLists.repeat))

:named typing_SfLists.repeat))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.repeat; Namespace SfLists
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.nat))
(HasType (SfLists.repeat.fuel_instrumented @u0
@x1
@x2)
SfLists.ilist))
 

:pattern ((SfLists.repeat.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfLists.repeat.fuel_instrumented))

:named token_correspondence_SfLists.repeat.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.repeat
;;; Fact-ids: Name SfLists.repeat; Namespace SfLists
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
Prims.nat))
(= (SfLists.repeat.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x2))
(ite (= @lb3
(BoxInt 0))
SfLists.Nil@tok
(SfLists.Cons @x1
(SfLists.repeat.fuel_instrumented @u0
@x1
(Prims.op_Subtraction @x2
(BoxInt 1))))))))
 :weight 0


:pattern ((SfLists.repeat.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfLists.repeat.fuel_instrumented))

:named equation_with_fuel_SfLists.repeat.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.repeat; Namespace SfLists
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfLists.repeat.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfLists.repeat.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfLists.repeat.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfLists.repeat.fuel_instrumented))

:named @fuel_irrelevance_SfLists.repeat.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.repeat; Namespace SfLists
(assert (! 
;; def=SfLists.fst(36,8-36,14); use=SfLists.fst(36,8-36,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.repeat @x0
@x1)
(SfLists.repeat.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfLists.repeat @x0
@x1))
:qid @fuel_correspondence_SfLists.repeat.fuel_instrumented))

:named @fuel_correspondence_SfLists.repeat.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(143,0-145,39)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: Prims.int) (l: SfLists.ilist).
;   Prims.hasEq SfLists.ilist /\
;   (forall (any_result: Type0).
;       SfLists.ilist == any_result ==>
;       (forall (any_result: Prims.bool).
;           SfLists.repeat n 0 = l == any_result ==>
;           (forall (any_result: Prims.logical).
;               SfLists.repeat n 0 = l == any_result ==>
;               (forall (_: Prims.unit).
;                   (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;                   Prims.hasEq SfLists.ilist))))


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.foo1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(143,0-145,39)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
SfLists.ilist))

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(143,13-143,42)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(144,22-144,28)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(143,13-143,42)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(143,13-143,42)
(Prims.hasEq SfLists.ilist)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(143,13-143,42)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_type)

;; def=Prims.fst(588,31-588,32); use=SfLists.fst(143,13-143,42)
(= SfLists.ilist
@x2)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(143,13-143,42)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=SfLists.fst(143,13-143,42)
(= (Prims.op_Equality SfLists.ilist
(SfLists.repeat @x0
(BoxInt 0))
@x1)
@x3)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(143,13-143,42)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.logical)

;; def=Prims.fst(439,23-439,26); use=SfLists.fst(143,13-143,42)
(= (Prims.b2t (Prims.op_Equality SfLists.ilist
(SfLists.repeat @x0
(BoxInt 0))
@x1))
@x4)
)

;; def=dummy(0,0-0,0); use=SfLists.fst(143,13-143,42)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.unit)

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(143,33-143,37)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(143,13-143,42)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(143,13-143,42)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.foo1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.foo1


; <Skipped val SfLists.foo1/>

(push) ;; push{2

; Starting query at SfLists.fst(146,15-146,17)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: Prims.int) (l: SfLists.ilist).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     SfLists.repeat n 0 = l /\
;     (forall (pure_result: Prims.unit). SfLists.length l = 0 ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let foo1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Prims.int)
(HasType @x1
SfLists.ilist))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Prims.unit))

;; def=SfLists.fst(144,16-144,38); use=SfLists.fst(146,15-146,17)
(= (SfLists.repeat @x0
(BoxInt 0))
@x1)


;; def=Prims.fst(441,36-441,97); use=SfLists.fst(146,15-146,17)
(forall ((@x3 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))

;; def=SfLists.fst(145,25-145,37); use=SfLists.fst(146,15-146,17)
(or label_2

;; def=SfLists.fst(145,25-145,37); use=SfLists.fst(146,15-146,17)
(= (SfLists.length @x1)
(BoxInt 0))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(146,15-146,17)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(146,15-146,17)
(ApplyTT @x2
@x3)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(146,15-146,17)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(146,15-146,17)
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
; QUERY ID: (SfLists.foo1, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_correspondence_SfLists.repeat.fuel_instrumented, @query, constructor_distinct_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_Prims.nat, equation_with_fuel_SfLists.length.fuel_instrumented, equation_with_fuel_SfLists.repeat.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_typing, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let foo1


; <Start encoding let foo1>

(declare-fun SfLists.foo1 (Term Term) Term)
(declare-fun Tm_refine_99a10a22b02e8d005ebc4a636eda0bf4 (Term) Term)
;;;;;;;;;;;;;;;;n: Prims.int -> l: ilist -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_3b6965fabc7a2ef7720232e7315c0978 () Term)
(declare-fun SfLists.foo1@tok () Term)


; </end encoding let foo1>

(push) ;; push{2

; Starting query at SfLists.fst(148,0-150,39)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_0a747d633ff821b95fd83e2c3066aba9 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=SfLists.fst(148,15-148,55)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))

:named refinement_kinding_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=SfLists.fst(148,15-148,55)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=SfLists.fst(149,16-149,38); use=SfLists.fst(148,46-148,50)
(= (SfLists.repeat @x2
@x3)
@x4)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))

:named refinement_interpretation_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0a747d633ff821b95fd83e2c3066aba9
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=SfLists.fst(148,15-148,55)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2))))
:qid haseqTm_refine_0a747d633ff821b95fd83e2c3066aba9))

:named haseqTm_refine_0a747d633ff821b95fd83e2c3066aba9))

; Encoding query formula : forall (n: Prims.nat) (m: Prims.nat) (l: SfLists.ilist).
;   Prims.hasEq SfLists.ilist /\
;   (forall (any_result: Type0).
;       SfLists.ilist == any_result ==>
;       (forall (any_result: Prims.bool).
;           SfLists.repeat n m = l == any_result ==>
;           (forall (any_result: Prims.logical).
;               SfLists.repeat n m = l == any_result ==>
;               (forall (_: Prims.unit).
;                   (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;                   Prims.hasEq SfLists.ilist) /\
;               (forall (r: _: Prims.unit{SfLists.repeat n m = l}).
;                   (*  - Could not prove post-condition
; *) Prims.hasEq Prims.nat))))


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.foo2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(148,0-150,39)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.nat)
(HasType @x1
Prims.nat)
(HasType @x2
SfLists.ilist))

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(148,15-148,55)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(149,22-149,28)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,15-148,55)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,15-148,55)
(Prims.hasEq SfLists.ilist)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(148,15-148,55)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(588,31-588,32); use=SfLists.fst(148,15-148,55)
(= SfLists.ilist
@x3)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(148,15-148,55)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=SfLists.fst(148,15-148,55)
(= (Prims.op_Equality SfLists.ilist
(SfLists.repeat @x0
@x1)
@x2)
@x4)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(148,15-148,55)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.logical)

;; def=Prims.fst(439,23-439,26); use=SfLists.fst(148,15-148,55)
(= (Prims.b2t (Prims.op_Equality SfLists.ilist
(SfLists.repeat @x0
@x1)
@x2))
@x5)
)

;; def=dummy(0,0-0,0); use=SfLists.fst(148,15-148,55)
(and 
;; def=dummy(0,0-0,0); use=SfLists.fst(148,15-148,55)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,46-148,50)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,15-148,55)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,15-148,55)
(Prims.hasEq SfLists.ilist)
)
)
)
 
;;no pats
:qid @query.4))


;; def=dummy(0,0-0,0); use=SfLists.fst(148,15-148,55)
(forall ((@x6 Term))
 (! (implies (HasType @x6
(Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(150,25-150,31)
(or label_3

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,15-148,55)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(148,15-148,55)
(Prims.hasEq Prims.nat)
)
)
)
 
;;no pats
:qid @query.5))
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
; QUERY ID: (SfLists.foo2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_SfLists.ilist__uu___haseq, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.foo2


; <Skipped val SfLists.foo2/>

(push) ;; push{2

; Starting query at SfLists.fst(152,2-154,38)

;;;;;;;;;;;;;;;;n : Prims.nat (Prims.nat)
(declare-fun x_bb4e1c9af0265270f8e7a5f250f730e2_0 () Term)
;;;;;;;;;;;;;;;;binder_x_bb4e1c9af0265270f8e7a5f250f730e2_0
;;; Fact-ids: 
(assert (! (HasType x_bb4e1c9af0265270f8e7a5f250f730e2_0
Prims.nat)
:named binder_x_bb4e1c9af0265270f8e7a5f250f730e2_0))
;;;;;;;;;;;;;;;;m : Prims.nat (Prims.nat)
(declare-fun x_bb4e1c9af0265270f8e7a5f250f730e2_1 () Term)
;;;;;;;;;;;;;;;;binder_x_bb4e1c9af0265270f8e7a5f250f730e2_1
;;; Fact-ids: 
(assert (! (HasType x_bb4e1c9af0265270f8e7a5f250f730e2_1
Prims.nat)
:named binder_x_bb4e1c9af0265270f8e7a5f250f730e2_1))
;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_2 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_2
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_2
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_2))
(declare-fun Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287))

:named refinement_kinding_Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x2
@x3))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(or 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Prims.precedes Prims.nat
Prims.nat
@x2
x_bb4e1c9af0265270f8e7a5f250f730e2_0)
)


;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(and 
;; def=SfLists.fst(148,11-151,14); use=SfLists.fst(148,11-151,14)
(Valid 
;; def=SfLists.fst(148,11-151,14); use=SfLists.fst(148,11-151,14)
(Prims.op_Equals_Equals_Equals Prims.nat
Prims.nat
@x2
x_bb4e1c9af0265270f8e7a5f250f730e2_0)
)


;; def=SfLists.fst(148,22-154,38); use=SfLists.fst(148,22-154,38)
(or 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Prims.precedes Prims.nat
Prims.nat
@x3
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)


;; def=SfLists.fst(148,22-154,38); use=SfLists.fst(148,22-154,38)
(and 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(148,22-151,16)
(Valid 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(148,22-151,16)
(Prims.op_Equals_Equals_Equals Prims.nat
Prims.nat
@x3
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)


;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
x_da0ce6472e3557dab4a010c89b01a198_2)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287))

:named refinement_interpretation_Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x0
@x1)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x0
@x1))))
:qid haseqTm_refine_2e3c1fd8abe16177a1d77a636ffa6287))

:named haseqTm_refine_2e3c1fd8abe16177a1d77a636ffa6287))
(declare-fun SfLists.foo2 (Term Term Term) Term)

(declare-fun Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,51-148,55); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_e448d5500c67bb36e3a4c793a6aa5219))

:named refinement_kinding_Tm_refine_e448d5500c67bb36e3a4c793a6aa5219))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,51-148,55); use=SfLists.fst(151,8-151,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=SfLists.fst(150,25-150,37); use=SfLists.fst(151,8-151,12)
(= (SfLists.length @x2)
@x3)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_e448d5500c67bb36e3a4c793a6aa5219))

:named refinement_interpretation_Tm_refine_e448d5500c67bb36e3a4c793a6aa5219))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e448d5500c67bb36e3a4c793a6aa5219
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,51-148,55); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x0
@x1)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x0
@x1))))
:qid haseqTm_refine_e448d5500c67bb36e3a4c793a6aa5219))

:named haseqTm_refine_e448d5500c67bb36e3a4c793a6aa5219))
;;;;;;;;;;;;;;;;n: Prims.nat -> m: Prims.nat -> l: ilist{n << n \/ n === n /\ (m << m \/ m === m /\ l << l)}   -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_132650559609a401e282cbac1f59ea32 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_132650559609a401e282cbac1f59ea32
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_132650559609a401e282cbac1f59ea32
Tm_type)
:named kinding_Tm_arrow_132650559609a401e282cbac1f59ea32))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_132650559609a401e282cbac1f59ea32)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_132650559609a401e282cbac1f59ea32))
:qid SfLists_pre_typing_Tm_arrow_132650559609a401e282cbac1f59ea32))

:named SfLists_pre_typing_Tm_arrow_132650559609a401e282cbac1f59ea32))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_132650559609a401e282cbac1f59ea32
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_132650559609a401e282cbac1f59ea32)
(and 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=SfLists.fst(149,16-149,38); use=SfLists.fst(151,8-151,12)
(= (SfLists.repeat @x1
@x2)
@x3)

(HasType @x1
Prims.nat)
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x1
@x2)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
(Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x3
@x2)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid SfLists_interpretation_Tm_arrow_132650559609a401e282cbac1f59ea32.1))

(IsTotFun @x0)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.nat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_132650559609a401e282cbac1f59ea32.2))


;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(148,11-154,38)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.nat)
(HasType @x2
Prims.nat))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_132650559609a401e282cbac1f59ea32.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_132650559609a401e282cbac1f59ea32))
:qid SfLists_interpretation_Tm_arrow_132650559609a401e282cbac1f59ea32))

:named SfLists_interpretation_Tm_arrow_132650559609a401e282cbac1f59ea32))
(declare-fun SfLists.foo2@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(151,8-151,12); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT SfLists.foo2@tok
@x0)
@x1)
@x2)
(SfLists.foo2 @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT SfLists.foo2@tok
@x0)
@x1)
@x2))
:qid token_correspondence_SfLists.foo2))

:named token_correspondence_SfLists.foo2))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(151,8-151,12); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.foo2@tok
Tm_arrow_132650559609a401e282cbac1f59ea32))

;; def=SfLists.fst(151,8-151,12); use=SfLists.fst(151,8-151,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT SfLists.foo2@tok
@x1)
@x2)
@x3)
(SfLists.foo2 @x1
@x2
@x3))
 

:pattern ((SfLists.foo2 @x1
@x2
@x3))
:qid function_token_typing_SfLists.foo2.1))
)
 

:pattern ((ApplyTT @x0
SfLists.foo2@tok))
:qid function_token_typing_SfLists.foo2))

:named function_token_typing_SfLists.foo2))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(151,8-151,12); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and 
;; def=SfLists.fst(149,16-149,38); use=SfLists.fst(151,8-151,12)
(= (SfLists.repeat @x0
@x1)
@x2)

(HasType @x0
Prims.nat)
(HasType @x1
Prims.nat)
(HasType @x2
(Tm_refine_2e3c1fd8abe16177a1d77a636ffa6287 @x0
@x1)))
(HasType (SfLists.foo2 @x0
@x1
@x2)
(Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 @x2
@x1)))
 

:pattern ((SfLists.foo2 @x0
@x1
@x2))
:qid typing_SfLists.foo2))

:named typing_SfLists.foo2))
(declare-fun label_5 () Bool)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_80c7eb38a98938157f409fc2c3d46cc1 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_80c7eb38a98938157f409fc2c3d46cc1
Tm_type)
:named refinement_kinding_Tm_refine_80c7eb38a98938157f409fc2c3d46cc1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(154,9-154,13)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_80c7eb38a98938157f409fc2c3d46cc1)
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(154,9-154,13)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(154,9-154,13)
(or 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,9-154,13)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,9-154,13)
(Prims.precedes Prims.nat
Prims.nat
x_bb4e1c9af0265270f8e7a5f250f730e2_0
x_bb4e1c9af0265270f8e7a5f250f730e2_0)
)


;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,9-154,13)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,9-154,13)
(Prims.precedes Prims.nat
Prims.nat
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)


;; def=SfLists.fst(148,22-154,38); use=SfLists.fst(154,9-154,13)
(and 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(154,9-154,13)
(Valid 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(154,9-154,13)
(Prims.op_Equals_Equals_Equals Prims.nat
Prims.nat
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)


;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,9-154,13)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,9-154,13)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
x_da0ce6472e3557dab4a010c89b01a198_2)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_80c7eb38a98938157f409fc2c3d46cc1))
:qid refinement_interpretation_Tm_refine_80c7eb38a98938157f409fc2c3d46cc1))

:named refinement_interpretation_Tm_refine_80c7eb38a98938157f409fc2c3d46cc1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_80c7eb38a98938157f409fc2c3d46cc1
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_80c7eb38a98938157f409fc2c3d46cc1))
(Valid (Prims.hasEq SfLists.ilist)))
:named haseqTm_refine_80c7eb38a98938157f409fc2c3d46cc1))

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   SfLists.repeat n m = l /\
;   (forall (pure_result: Prims.unit). SfLists.length l = m ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (m == 0 ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(m = 0) ==>
;         (forall (b: Prims.int).
;             m == b ==>
;             m - 1 >= 0 /\
;             (forall (return_val: Prims.nat).
;                 return_val == m - 1 ==>
;                 m - 1 >= 0 /\
;                 (forall (return_val: Prims.nat).
;                     return_val == m - 1 ==>
;                     (forall (any_result: SfLists.ilist).
;                         SfLists.repeat n (m - 1) == any_result ==>
;                         (n << n \/ (m - 1 << m \/ m - 1 === m /\ SfLists.repeat n (m - 1) << l)) /\
;                         (forall (return_val:
;                             l: SfLists.ilist{n << n \/ (m - 1 << m \/ m - 1 === m /\ l << l)}).
;                             return_val == SfLists.repeat n (m - 1) ==>
;                             SfLists.repeat n (m - 1) == return_val ==>
;                             (forall (pure_result: Prims.unit).
;                                 SfLists.length (SfLists.repeat n (m - 1)) = m - 1 ==> k pure_result)
;                         )))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec foo2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=SfLists.fst(149,16-149,38); use=SfLists.fst(152,2-154,38)
(= (SfLists.repeat x_bb4e1c9af0265270f8e7a5f250f730e2_0
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
x_da0ce6472e3557dab4a010c89b01a198_2)


;; def=Prims.fst(441,36-441,97); use=SfLists.fst(152,2-154,38)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(150,25-150,37); use=SfLists.fst(152,2-154,38)
(or label_2

;; def=SfLists.fst(150,25-150,37); use=SfLists.fst(152,2-154,38)
(= (SfLists.length x_da0ce6472e3557dab4a010c89b01a198_2)
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(152,2-154,38)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(152,2-154,38)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(152,2-154,38)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(152,2-154,38)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(152,2-154,38)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(152,2-154,38)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(389,2-389,39); use=SfLists.fst(152,2-154,38)
(and (implies 
;; def=SfLists.fst(151,15-153,5); use=SfLists.fst(152,8-153,5)
(= x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 0))


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(152,2-154,38)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(152,2-154,38)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(152,2-154,38)
(not 
;; def=SfLists.fst(151,15-153,5); use=SfLists.fst(152,8-153,5)
(= x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(152,2-154,38)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Prims.int)

;; def=SfLists.fst(151,15-154,5); use=SfLists.fst(152,8-154,5)
(= x_bb4e1c9af0265270f8e7a5f250f730e2_1
@x2)
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(152,2-154,38)
(and 
;; def=Prims.fst(680,18-680,24); use=SfLists.fst(154,16-154,21)
(or label_3

;; def=Prims.fst(680,18-680,24); use=SfLists.fst(154,16-154,21)
(>= (BoxInt_proj_0 (Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=SfLists.fst(152,2-154,38)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=SfLists.fst(152,2-154,38)
(= @x3
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(152,2-154,38)
(and 
;; def=Prims.fst(680,18-680,24); use=SfLists.fst(154,32-154,37)
(or label_4

;; def=Prims.fst(680,18-680,24); use=SfLists.fst(154,32-154,37)
(>= (BoxInt_proj_0 (Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
(BoxInt_proj_0 (BoxInt 0)))
)


;; def=Prims.fst(356,2-356,58); use=SfLists.fst(152,2-154,38)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.nat)

;; def=Prims.fst(356,26-356,41); use=SfLists.fst(152,2-154,38)
(= @x4
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(152,2-154,38)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
SfLists.ilist)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(152,2-154,38)
(= (SfLists.repeat x_bb4e1c9af0265270f8e7a5f250f730e2_0
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
@x5)
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(152,2-154,38)
(and 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(154,22-154,38)
(or label_5

;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,22-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,22-154,38)
(Prims.precedes Prims.nat
Prims.nat
x_bb4e1c9af0265270f8e7a5f250f730e2_0
x_bb4e1c9af0265270f8e7a5f250f730e2_0)
)


;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,22-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,22-154,38)
(Prims.precedes Prims.nat
Prims.nat
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)


;; def=SfLists.fst(148,22-154,38); use=SfLists.fst(154,22-154,38)
(and 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(154,22-154,38)
(Valid 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(154,22-154,38)
(Prims.op_Equals_Equals_Equals Prims.nat
Prims.nat
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))
x_bb4e1c9af0265270f8e7a5f250f730e2_1)
)


;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,22-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(154,22-154,38)
(Prims.precedes SfLists.ilist
SfLists.ilist
(SfLists.repeat x_bb4e1c9af0265270f8e7a5f250f730e2_0
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
x_da0ce6472e3557dab4a010c89b01a198_2)
)
)
)


;; def=Prims.fst(356,2-356,58); use=SfLists.fst(152,2-154,38)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_refine_80c7eb38a98938157f409fc2c3d46cc1)

;; def=Prims.fst(356,26-356,41); use=SfLists.fst(152,2-154,38)
(= @x6
(SfLists.repeat x_bb4e1c9af0265270f8e7a5f250f730e2_0
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))))


;; def=SfLists.fst(148,33-154,38); use=SfLists.fst(152,2-154,38)
(= (SfLists.repeat x_bb4e1c9af0265270f8e7a5f250f730e2_0
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
@x6)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(154,9-154,13)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=SfLists.fst(150,25-150,37); use=SfLists.fst(154,9-154,13)
(= (SfLists.length (SfLists.repeat x_bb4e1c9af0265270f8e7a5f250f730e2_0
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1))))
(Prims.op_Subtraction x_bb4e1c9af0265270f8e7a5f250f730e2_1
(BoxInt 1)))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(154,9-154,13)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(154,9-154,13)
(ApplyTT @x1
@x7)
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
; QUERY ID: (SfLists.foo2, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_correspondence_SfLists.repeat.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.repeat.fuel_instrumented, @query, binder_x_bb4e1c9af0265270f8e7a5f250f730e2_0, binder_x_bb4e1c9af0265270f8e7a5f250f730e2_1, binder_x_da0ce6472e3557dab4a010c89b01a198_2, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_Prims.nat, equation_with_fuel_SfLists.length.fuel_instrumented, equation_with_fuel_SfLists.repeat.fuel_instrumented, int_inversion, int_typing, primitive_Prims.op_Addition, primitive_Prims.op_Subtraction, projection_inverse_BoxInt_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, typing_SfLists.length, well-founded-ordering-on-nat

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(151,0-154,38)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(151,0-154,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_71de4148e22eb1b0ee3cda7541bdff28))

:named refinement_kinding_Tm_refine_71de4148e22eb1b0ee3cda7541bdff28))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(151,0-154,38)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(151,0-154,38)

;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(151,0-154,38)
(or 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Prims.precedes Prims.nat
Prims.nat
@x2
@x3)
)


;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(151,0-154,38)
(and 
;; def=SfLists.fst(148,11-151,14); use=SfLists.fst(151,0-154,38)
(Valid 
;; def=SfLists.fst(148,11-151,14); use=SfLists.fst(151,0-154,38)
(Prims.op_Equals_Equals_Equals Prims.nat
Prims.nat
@x2
@x3)
)


;; def=SfLists.fst(148,22-154,38); use=SfLists.fst(151,0-154,38)
(or 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Prims.precedes Prims.nat
Prims.nat
@x4
@x5)
)


;; def=SfLists.fst(148,22-154,38); use=SfLists.fst(151,0-154,38)
(and 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(151,0-154,38)
(Valid 
;; def=SfLists.fst(148,22-151,16); use=SfLists.fst(151,0-154,38)
(Prims.op_Equals_Equals_Equals Prims.nat
Prims.nat
@x4
@x5)
)


;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Valid 
;; def=SfLists.fst(152,2-154,38); use=SfLists.fst(152,2-154,38)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_71de4148e22eb1b0ee3cda7541bdff28))

:named refinement_interpretation_Tm_refine_71de4148e22eb1b0ee3cda7541bdff28))
;;;;;;;;;;;;;;;;haseq for Tm_refine_71de4148e22eb1b0ee3cda7541bdff28
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(148,11-154,38); use=SfLists.fst(151,0-154,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_71de4148e22eb1b0ee3cda7541bdff28))

:named haseqTm_refine_71de4148e22eb1b0ee3cda7541bdff28))
(declare-fun Tm_refine_0a747d633ff821b95fd83e2c3066aba9 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))

:named refinement_kinding_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=SfLists.fst(151,8-151,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=SfLists.fst(149,16-149,38); use=SfLists.fst(151,8-151,12)
(= (SfLists.repeat @x2
@x3)
@x4)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))

:named refinement_interpretation_Tm_refine_0a747d633ff821b95fd83e2c3066aba9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0a747d633ff821b95fd83e2c3066aba9
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(315,31-315,40); use=SfLists.fst(151,8-151,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x0
@x1
@x2))))
:qid haseqTm_refine_0a747d633ff821b95fd83e2c3066aba9))

:named haseqTm_refine_0a747d633ff821b95fd83e2c3066aba9))

; Encoding query formula : forall (n: Prims.nat)
;   (m: Prims.nat)
;   (l: SfLists.ilist)
;   (n: Prims.nat)
;   (m: Prims.nat)
;   (l: SfLists.ilist{n << n \/ n === n /\ (m << m \/ m === m /\ l << l)}).
;   Prims.hasEq SfLists.ilist /\
;   (forall (any_result: Type0).
;       SfLists.ilist == any_result ==>
;       (forall (any_result: Prims.bool).
;           SfLists.repeat n m = l == any_result ==>
;           (forall (any_result: Prims.logical).
;               SfLists.repeat n m = l == any_result ==>
;               (forall (_: Prims.unit).
;                   (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;                   Prims.hasEq SfLists.ilist) /\
;               (forall (r: _: Prims.unit{SfLists.repeat n m = l}).
;                   (*  - Could not prove post-condition
; *) Prims.hasEq Prims.nat))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec foo2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(151,0-154,38)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.nat)
(HasType @x1
Prims.nat)
(HasType @x2
SfLists.ilist)
(HasType @x3
Prims.nat)
(HasType @x4
Prims.nat)
(HasType @x5
(Tm_refine_71de4148e22eb1b0ee3cda7541bdff28 @x3
@x0
@x4
@x1
@x2)))

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(151,0-154,38)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(Prims.hasEq SfLists.ilist)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(151,0-154,38)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_type)

;; def=Prims.fst(588,31-588,32); use=SfLists.fst(151,0-154,38)
(= SfLists.ilist
@x6)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(151,0-154,38)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=SfLists.fst(151,0-154,38)
(= (Prims.op_Equality SfLists.ilist
(SfLists.repeat @x3
@x4)
@x5)
@x7)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(151,0-154,38)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.logical)

;; def=Prims.fst(439,23-439,26); use=SfLists.fst(151,0-154,38)
(= (Prims.b2t (Prims.op_Equality SfLists.ilist
(SfLists.repeat @x3
@x4)
@x5))
@x8)
)

;; def=dummy(0,0-0,0); use=SfLists.fst(151,0-154,38)
(and 
;; def=dummy(0,0-0,0); use=SfLists.fst(151,0-154,38)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Prims.unit)

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(Prims.hasEq SfLists.ilist)
)
)
)
 
;;no pats
:qid @query.4))


;; def=dummy(0,0-0,0); use=SfLists.fst(151,0-154,38)
(forall ((@x9 Term))
 (! (implies (HasType @x9
(Tm_refine_0a747d633ff821b95fd83e2c3066aba9 @x3
@x4
@x5))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(or label_3

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(151,8-151,12)
(Prims.hasEq Prims.nat)
)
)
)
 
;;no pats
:qid @query.5))
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
; QUERY ID: (SfLists.foo2, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, assumption_SfLists.ilist__uu___haseq, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec foo2


; <Start encoding let rec foo2>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.foo2.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.foo2.fuel_instrumented_token () Term)
(declare-fun SfLists.foo2 (Term Term Term) Term)
(declare-fun SfLists.foo2@tok () Term)
(declare-fun Tm_refine_e448d5500c67bb36e3a4c793a6aa5219 (Term Term) Term)

;;;;;;;;;;;;;;;;n: Prims.nat -> m: Prims.nat -> l: ilist -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_d3f166377f6796e46cf0f7abb041a12d () Term)


; </end encoding let rec foo2>

(push) ;; push{2

; Starting query at SfLists.fst(156,0-158,52)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (l: SfLists.ilist) (n: Prims.int) (m: Prims.nat).
;   Prims.hasEq Prims.nat /\
;   (forall (any_result: Type0).
;       Prims.nat == any_result ==>
;       (forall (any_result: Prims.bool).
;           SfLists.length l = m == any_result ==>
;           (forall (any_result: Prims.logical).
;               SfLists.length l = m == any_result ==>
;               (forall (_: Prims.unit).
;                   (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;                   Prims.hasEq Prims.nat))))


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.foo3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(156,0-158,52)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
Prims.nat))

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(156,15-156,55)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(157,22-157,28)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(156,15-156,55)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(156,15-156,55)
(Prims.hasEq Prims.nat)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(156,15-156,55)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(588,31-588,32); use=SfLists.fst(156,15-156,55)
(= Prims.nat
@x3)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(156,15-156,55)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=SfLists.fst(156,15-156,55)
(= (Prims.op_Equality Prims.nat
(SfLists.length @x0)
@x2)
@x4)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(156,15-156,55)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.logical)

;; def=Prims.fst(439,23-439,26); use=SfLists.fst(156,15-156,55)
(= (Prims.b2t (Prims.op_Equality Prims.nat
(SfLists.length @x0)
@x2))
@x5)
)

;; def=dummy(0,0-0,0); use=SfLists.fst(156,15-156,55)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(156,46-156,50)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(156,15-156,55)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(156,15-156,55)
(Prims.hasEq Prims.nat)
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
; QUERY ID: (SfLists.foo3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.foo3


; <Skipped val SfLists.foo3/>

(push) ;; push{2

; Starting query at SfLists.fst(160,2-162,35)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;n : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_1
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_1
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_1))
;;;;;;;;;;;;;;;;m : Prims.nat (Prims.nat)
(declare-fun x_bb4e1c9af0265270f8e7a5f250f730e2_2 () Term)
;;;;;;;;;;;;;;;;binder_x_bb4e1c9af0265270f8e7a5f250f730e2_2
;;; Fact-ids: 
(assert (! (HasType x_bb4e1c9af0265270f8e7a5f250f730e2_2
Prims.nat)
:named binder_x_bb4e1c9af0265270f8e7a5f250f730e2_2))
(declare-fun Tm_refine_2626a54b9833a5aaac105242649f56f1 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_2626a54b9833a5aaac105242649f56f1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_2626a54b9833a5aaac105242649f56f1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_2626a54b9833a5aaac105242649f56f1))

:named refinement_kinding_Tm_refine_2626a54b9833a5aaac105242649f56f1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2626a54b9833a5aaac105242649f56f1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(and 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(156,11-159,14)
(Valid 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(156,11-159,14)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(156,24-162,35); use=SfLists.fst(156,24-162,35)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Prims.precedes Prims.int
Prims.int
@x3
x_ae567c2fb75be05905677af440075565_1)
)


;; def=SfLists.fst(156,24-162,35); use=SfLists.fst(156,24-162,35)
(and 
;; def=SfLists.fst(156,24-159,16); use=SfLists.fst(156,24-159,16)
(Valid 
;; def=SfLists.fst(156,24-159,16); use=SfLists.fst(156,24-159,16)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x3
x_ae567c2fb75be05905677af440075565_1)
)


;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Prims.precedes Prims.nat
Prims.nat
@x1
x_bb4e1c9af0265270f8e7a5f250f730e2_2)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2626a54b9833a5aaac105242649f56f1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_2626a54b9833a5aaac105242649f56f1))

:named refinement_interpretation_Tm_refine_2626a54b9833a5aaac105242649f56f1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2626a54b9833a5aaac105242649f56f1
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2626a54b9833a5aaac105242649f56f1 @x0
@x1)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2626a54b9833a5aaac105242649f56f1 @x0
@x1))))
:qid haseqTm_refine_2626a54b9833a5aaac105242649f56f1))

:named haseqTm_refine_2626a54b9833a5aaac105242649f56f1))
(declare-fun SfLists.foo3 (Term Term Term) Term)

(declare-fun Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,51-156,55); use=SfLists.fst(159,8-159,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d))

:named refinement_kinding_Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,51-156,55); use=SfLists.fst(159,8-159,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=SfLists.fst(158,25-158,50); use=SfLists.fst(159,8-159,12)
(= (SfLists.length (SfLists.snoc @x2
@x3))
(Prims.op_Addition @x4
(BoxInt 1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d))

:named refinement_interpretation_Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,51-156,55); use=SfLists.fst(159,8-159,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x0
@x1
@x2))))
:qid haseqTm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d))

:named haseqTm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d))
;;;;;;;;;;;;;;;;l: ilist -> n: Prims.int -> m: Prims.nat{l << l \/ l === l /\ (n << n \/ n === n /\ m << m)}   -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd
Tm_type)
:named kinding_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))
:qid SfLists_pre_typing_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))

:named SfLists_pre_typing_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd)
(and 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and 
;; def=SfLists.fst(157,16-157,36); use=SfLists.fst(159,8-159,12)
(= (SfLists.length @x1)
@x3)

(HasType @x1
SfLists.ilist)
(HasType @x2
Prims.int)
(HasType @x3
(Tm_refine_2626a54b9833a5aaac105242649f56f1 @x1
@x2)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
(Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x1
@x2
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid SfLists_interpretation_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd.1))

(IsTotFun @x0)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd.2))


;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(156,11-162,35)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Prims.int))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))
:qid SfLists_interpretation_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))

:named SfLists_interpretation_Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))
(declare-fun SfLists.foo3@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(159,8-159,12); use=SfLists.fst(159,8-159,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT SfLists.foo3@tok
@x0)
@x1)
@x2)
(SfLists.foo3 @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT SfLists.foo3@tok
@x0)
@x1)
@x2))
:qid token_correspondence_SfLists.foo3))

:named token_correspondence_SfLists.foo3))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(159,8-159,12); use=SfLists.fst(159,8-159,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.foo3@tok
Tm_arrow_71202e62a2b26dac83bdae9f006eb8bd))

;; def=SfLists.fst(159,8-159,12); use=SfLists.fst(159,8-159,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT SfLists.foo3@tok
@x1)
@x2)
@x3)
(SfLists.foo3 @x1
@x2
@x3))
 

:pattern ((SfLists.foo3 @x1
@x2
@x3))
:qid function_token_typing_SfLists.foo3.1))
)
 

:pattern ((ApplyTT @x0
SfLists.foo3@tok))
:qid function_token_typing_SfLists.foo3))

:named function_token_typing_SfLists.foo3))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(159,8-159,12); use=SfLists.fst(159,8-159,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and 
;; def=SfLists.fst(157,16-157,36); use=SfLists.fst(159,8-159,12)
(= (SfLists.length @x0)
@x2)

(HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_2626a54b9833a5aaac105242649f56f1 @x0
@x1)))
(HasType (SfLists.foo3 @x0
@x1
@x2)
(Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d @x0
@x1
@x2)))
 

:pattern ((SfLists.foo3 @x0
@x1
@x2))
:qid typing_SfLists.foo3))

:named typing_SfLists.foo3))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,16-162,20)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac))

:named refinement_kinding_Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,16-162,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x2))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,16-162,20)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,16-162,20)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,16-162,20)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,16-162,20)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,16-162,20)
(and 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(162,16-162,20)
(Valid 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(162,16-162,20)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(156,24-162,35); use=SfLists.fst(162,16-162,20)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,16-162,20)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,16-162,20)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
)


;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,16-162,20)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,16-162,20)
(Prims.precedes Prims.nat
Prims.nat
@x1
x_bb4e1c9af0265270f8e7a5f250f730e2_2)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x2)))
:qid refinement_interpretation_Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac))

:named refinement_interpretation_Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,16-162,20)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x0)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x0))))
:qid haseqTm_refine_1c68a0ffd06ea9f0f3d38aba4993daac))

:named haseqTm_refine_1c68a0ffd06ea9f0f3d38aba4993daac))

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   SfLists.length l = m /\
;   (forall (pure_result: Prims.unit). SfLists.length (SfLists.snoc l n) = m + 1 ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (b << l \/ b === l /\ (n << n \/ SfLists.length b << m)) /\
;             (forall (return_val: m: Prims.nat{b << l \/ b === l /\ (n << n \/ m << m)}).
;                 return_val == SfLists.length b ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.length (SfLists.snoc b n) = SfLists.length b + 1 ==> k pure_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec foo3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=SfLists.fst(157,16-157,36); use=SfLists.fst(160,2-162,35)
(= (SfLists.length x_da0ce6472e3557dab4a010c89b01a198_0)
x_bb4e1c9af0265270f8e7a5f250f730e2_2)


;; def=Prims.fst(441,36-441,97); use=SfLists.fst(160,2-162,35)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(158,25-158,50); use=SfLists.fst(160,2-162,35)
(or label_2

;; def=SfLists.fst(158,25-158,50); use=SfLists.fst(160,2-162,35)
(= (SfLists.length (SfLists.snoc x_da0ce6472e3557dab4a010c89b01a198_0
x_ae567c2fb75be05905677af440075565_1))
(Prims.op_Addition x_bb4e1c9af0265270f8e7a5f250f730e2_2
(BoxInt 1)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(160,2-162,35)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(160,2-162,35)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(160,2-162,35)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(160,2-162,35)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(160,2-162,35)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(160,2-162,35)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(160,2-162,35)
(and (implies 
;; def=SfLists.fst(159,13-159,14); use=SfLists.fst(160,8-160,9)
(and 
;; def=SfLists.fst(159,13-159,14); use=SfLists.fst(160,8-160,9)
(not 
;; def=SfLists.fst(159,13-159,14); use=SfLists.fst(160,8-160,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(159,13-159,14); use=SfLists.fst(160,8-160,9)
(not 
;; def=SfLists.fst(159,13-159,14); use=SfLists.fst(160,8-160,9)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(159,13-161,7); use=SfLists.fst(160,8-161,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(160,2-162,35)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(160,2-162,35)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(160,2-162,35)
(not 
;; def=SfLists.fst(159,13-159,14); use=SfLists.fst(160,8-160,9)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(160,2-162,35)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(160,2-162,35)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(159,13-162,12); use=SfLists.fst(160,8-162,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(160,2-162,35)
(and 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,25-162,35)
(or label_4

;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,25-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,25-162,35)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(162,25-162,35)
(and 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(162,25-162,35)
(Valid 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(162,25-162,35)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(156,24-162,35); use=SfLists.fst(162,25-162,35)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,25-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,25-162,35)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
)


;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,25-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(162,25-162,35)
(Prims.precedes Prims.nat
Prims.nat
(SfLists.length @x3)
x_bb4e1c9af0265270f8e7a5f250f730e2_2)
)
)
)
)


;; def=Prims.fst(356,2-356,58); use=SfLists.fst(160,2-162,35)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Tm_refine_1c68a0ffd06ea9f0f3d38aba4993daac @x3))

;; def=Prims.fst(356,26-356,41); use=SfLists.fst(160,2-162,35)
(= @x4
(SfLists.length @x3))
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(162,16-162,20)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(158,25-158,50); use=SfLists.fst(162,16-162,20)
(= (SfLists.length (SfLists.snoc @x3
x_ae567c2fb75be05905677af440075565_1))
(Prims.op_Addition (SfLists.length @x3)
(BoxInt 1)))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(162,16-162,20)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(162,16-162,20)
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
; QUERY ID: (SfLists.foo3, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @fuel_irrelevance_SfLists.snoc.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_ae567c2fb75be05905677af440075565_1, binder_x_da0ce6472e3557dab4a010c89b01a198_0, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.length.fuel_instrumented, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.snoc, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(159,0-162,35)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_689f2884fcc92943c5cee892da02a8e2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(159,0-162,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_689f2884fcc92943c5cee892da02a8e2))

:named refinement_kinding_Tm_refine_689f2884fcc92943c5cee892da02a8e2))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(159,0-162,35)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(159,0-162,35)

;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(159,0-162,35)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(159,0-162,35)
(and 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(159,0-162,35)
(Valid 
;; def=SfLists.fst(156,11-159,14); use=SfLists.fst(159,0-162,35)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(156,24-162,35); use=SfLists.fst(159,0-162,35)
(or 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Prims.precedes Prims.int
Prims.int
@x4
@x5)
)


;; def=SfLists.fst(156,24-162,35); use=SfLists.fst(159,0-162,35)
(and 
;; def=SfLists.fst(156,24-159,16); use=SfLists.fst(159,0-162,35)
(Valid 
;; def=SfLists.fst(156,24-159,16); use=SfLists.fst(159,0-162,35)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x4
@x5)
)


;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Valid 
;; def=SfLists.fst(160,2-162,35); use=SfLists.fst(160,2-162,35)
(Prims.precedes Prims.nat
Prims.nat
@x1
@x6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_689f2884fcc92943c5cee892da02a8e2))

:named refinement_interpretation_Tm_refine_689f2884fcc92943c5cee892da02a8e2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_689f2884fcc92943c5cee892da02a8e2
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(156,11-162,35); use=SfLists.fst(159,0-162,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_689f2884fcc92943c5cee892da02a8e2))

:named haseqTm_refine_689f2884fcc92943c5cee892da02a8e2))

; Encoding query formula : forall (l: SfLists.ilist)
;   (n: Prims.int)
;   (m: Prims.nat)
;   (l: SfLists.ilist)
;   (n: Prims.int)
;   (m: Prims.nat{l << l \/ l === l /\ (n << n \/ n === n /\ m << m)}).
;   Prims.hasEq Prims.nat /\
;   (forall (any_result: Type0).
;       Prims.nat == any_result ==>
;       (forall (any_result: Prims.bool).
;           SfLists.length l = m == any_result ==>
;           (forall (any_result: Prims.logical).
;               SfLists.length l = m == any_result ==>
;               (forall (_: Prims.unit).
;                   (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;                   Prims.hasEq Prims.nat))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec foo3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(159,0-162,35)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
Prims.nat)
(HasType @x3
SfLists.ilist)
(HasType @x4
Prims.int)
(HasType @x5
(Tm_refine_689f2884fcc92943c5cee892da02a8e2 @x3
@x0
@x4
@x1
@x2)))

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(159,0-162,35)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(159,8-159,12)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(159,8-159,12)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(159,8-159,12)
(Prims.hasEq Prims.nat)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(159,0-162,35)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_type)

;; def=Prims.fst(588,31-588,32); use=SfLists.fst(159,0-162,35)
(= Prims.nat
@x6)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(159,0-162,35)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=SfLists.fst(159,0-162,35)
(= (Prims.op_Equality Prims.nat
(SfLists.length @x3)
@x5)
@x7)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(159,0-162,35)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.logical)

;; def=Prims.fst(439,23-439,26); use=SfLists.fst(159,0-162,35)
(= (Prims.b2t (Prims.op_Equality Prims.nat
(SfLists.length @x3)
@x5))
@x8)
)

;; def=dummy(0,0-0,0); use=SfLists.fst(159,0-162,35)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Prims.unit)

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(159,8-159,12)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(159,8-159,12)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(159,8-159,12)
(Prims.hasEq Prims.nat)
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
; QUERY ID: (SfLists.foo3, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, equation_Prims.eqtype, equation_Prims.nat, haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec foo3


; <Start encoding let rec foo3>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.foo3.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.foo3.fuel_instrumented_token () Term)
(declare-fun SfLists.foo3 (Term Term Term) Term)
(declare-fun SfLists.foo3@tok () Term)
(declare-fun Tm_refine_fbf759cb6b2be63fcbfd79b1e9cfbb4d (Term Term Term) Term)

;;;;;;;;;;;;;;;;l: ilist -> n: Prims.int -> m: Prims.nat -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_f169b294382e3e96d9195899a7cffd8b () Term)


; </end encoding let rec foo3>

(push) ;; push{2

; Starting query at SfLists.fst(164,0-166,40)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: Prims.int) (l1: SfLists.ilist) (l2: SfLists.ilist).
;   Prims.hasEq SfLists.ilist /\
;   (forall (any_result: Type0).
;       SfLists.ilist == any_result ==>
;       (forall (any_result: Prims.bool).
;           SfLists.snoc l1 n = l2 == any_result ==>
;           (forall (any_result: Prims.logical).
;               SfLists.snoc l1 n = l2 == any_result ==>
;               (forall (_: Prims.unit).
;                   (*  - Subtyping check failed
;   - Expected type Prims.eqtype got type Type0
; *)
;                   Prims.hasEq SfLists.ilist))))


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.foo4`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(164,0-166,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist))

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(164,15-164,59)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(165,22-165,26)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(164,15-164,59)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(164,15-164,59)
(Prims.hasEq SfLists.ilist)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(164,15-164,59)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Tm_type)

;; def=Prims.fst(588,31-588,32); use=SfLists.fst(164,15-164,59)
(= SfLists.ilist
@x3)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(164,15-164,59)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Prims.fst(180,10-180,11); use=SfLists.fst(164,15-164,59)
(= (Prims.op_Equality SfLists.ilist
(SfLists.snoc @x1
@x0)
@x2)
@x4)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(164,15-164,59)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.logical)

;; def=Prims.fst(439,23-439,26); use=SfLists.fst(164,15-164,59)
(= (Prims.b2t (Prims.op_Equality SfLists.ilist
(SfLists.snoc @x1
@x0)
@x2))
@x5)
)

;; def=dummy(0,0-0,0); use=SfLists.fst(164,15-164,59)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(164,50-164,54)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(164,15-164,59)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(164,15-164,59)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.foo4, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.foo4


; <Skipped val SfLists.foo4/>

(push) ;; push{2

; Starting query at SfLists.fst(167,19-167,21)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (n: Prims.int) (l1: SfLists.ilist) (l2: SfLists.ilist).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     SfLists.snoc l1 n = l2 /\
;     (forall (pure_result: Prims.unit). 0 < SfLists.length l2 ==> p pure_result) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let foo4`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Prims.int)
(HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Prims.unit))

;; def=SfLists.fst(165,16-165,38); use=SfLists.fst(167,19-167,21)
(= (SfLists.snoc @x1
@x0)
@x2)


;; def=Prims.fst(441,36-441,97); use=SfLists.fst(167,19-167,21)
(forall ((@x4 Term))
 (! (implies (and (or label_1
(HasType @x4
Prims.unit))

;; def=SfLists.fst(166,25-166,38); use=SfLists.fst(167,19-167,21)
(or label_2

;; def=SfLists.fst(166,25-166,38); use=SfLists.fst(167,19-167,21)
(< (BoxInt_proj_0 (BoxInt 0))
(BoxInt_proj_0 (SfLists.length @x2)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(167,19-167,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(167,19-167,21)
(ApplyTT @x3
@x4)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(167,19-167,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(167,19-167,21)
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
; QUERY ID: (SfLists.foo4, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.length.fuel_instrumented, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.length.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_elim_SfLists.Cons, equality_tok_SfLists.Nil@tok, equation_Prims.nat, equation_with_fuel_SfLists.length.fuel_instrumented, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, primitive_Prims.op_Addition, projection_inverse_BoxInt_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, refinement_interpretation_Tm_refine_542f9d4f129664613f2483a6c88bc7c2, token_correspondence_SfLists.length.fuel_instrumented, token_correspondence_SfLists.snoc.fuel_instrumented, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let foo4


; <Start encoding let foo4>

(declare-fun SfLists.foo4 (Term Term Term) Term)
(declare-fun Tm_refine_efe6921154e47529aa7de690e7f02037 (Term) Term)
;;;;;;;;;;;;;;;;n: Prims.int -> l1: ilist -> l2: ilist -> Prims.Pure Prims.unit
(declare-fun Tm_arrow_a075fe7bc5fa047e1b9fa8482b3f26b0 () Term)
(declare-fun SfLists.foo4@tok () Term)


; </end encoding let foo4>

(push) ;; push{2

; Starting query at SfLists.fst(172,0-172,74)

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
;; def=SfLists.fst(172,35-172,74); use=SfLists.fst(172,35-172,40)
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

; Encoding query formula : forall (l: SfLists.ilist) (h: Prims.int) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.snoc_cons`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(172,0-172,74)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(172,42-172,45)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(172,42-172,45)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(172,42-172,45)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.snoc_cons, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.snoc_cons


; <Skipped val SfLists.snoc_cons/>

(push) ;; push{2

; Starting query at SfLists.fst(173,24-177,6)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;h : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_1
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_1
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.snoc_cons (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.snoc_cons@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.rev (SfLists.snoc l h) = SfLists.Cons h (SfLists.rev l) ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (b << l \/ b === l /\ h << h) /\
;             (forall (any_result: Prims.int).
;                 h == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.rev (SfLists.snoc b h) = SfLists.Cons h (SfLists.rev b) ==>
;                     (forall (any_result: Prims.unit). k any_result))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc_cons`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(173,24-177,6)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(173,24-177,6)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(172,41-172,74); use=SfLists.fst(173,24-177,6)
(or label_2

;; def=SfLists.fst(172,41-172,74); use=SfLists.fst(173,24-177,6)
(= (SfLists.rev (SfLists.snoc x_da0ce6472e3557dab4a010c89b01a198_0
x_ae567c2fb75be05905677af440075565_1))
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
(SfLists.rev x_da0ce6472e3557dab4a010c89b01a198_0)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(173,24-177,6)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(173,24-177,6)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(173,24-177,6)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(173,24-177,6)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(173,24-177,6)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(173,24-177,6)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(173,24-177,6)
(and (implies 
;; def=SfLists.fst(173,18-173,19); use=SfLists.fst(173,30-173,31)
(and 
;; def=SfLists.fst(173,18-173,19); use=SfLists.fst(173,30-173,31)
(not 
;; def=SfLists.fst(173,18-173,19); use=SfLists.fst(173,30-173,31)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(173,18-173,19); use=SfLists.fst(173,30-173,31)
(not 
;; def=SfLists.fst(173,18-173,19); use=SfLists.fst(173,30-173,31)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(173,18-174,7); use=SfLists.fst(173,30-174,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(173,24-177,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(173,24-177,6)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(173,24-177,6)
(not 
;; def=SfLists.fst(173,18-173,19); use=SfLists.fst(173,30-173,31)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(173,24-177,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(173,24-177,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(173,18-175,14); use=SfLists.fst(173,30-175,14)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(173,24-177,6)
(and 
;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(176,26-176,27)
(or label_4

;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(176,26-176,27)
(Valid 
;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(176,26-176,27)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(176,26-176,27)
(and 
;; def=SfLists.fst(172,15-173,19); use=SfLists.fst(176,26-176,27)
(Valid 
;; def=SfLists.fst(172,15-173,19); use=SfLists.fst(176,26-176,27)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(176,26-176,27)
(Valid 
;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(176,26-176,27)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(173,24-177,6)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.int)

;; def=SfLists.fst(172,26-173,21); use=SfLists.fst(173,24-177,6)
(= x_ae567c2fb75be05905677af440075565_1
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(176,13-176,22)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(172,41-172,74); use=SfLists.fst(176,13-176,22)
(= (SfLists.rev (SfLists.snoc @x3
x_ae567c2fb75be05905677af440075565_1))
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
(SfLists.rev @x3)))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(173,24-177,6)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(173,24-177,6)
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
; QUERY ID: (SfLists.snoc_cons, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.rev.fuel_instrumented, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.rev.fuel_instrumented, @fuel_irrelevance_SfLists.snoc.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_ae567c2fb75be05905677af440075565_1, binder_x_da0ce6472e3557dab4a010c89b01a198_0, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.rev.fuel_instrumented, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.rev, typing_SfLists.snoc, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(173,0-177,6)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_12d2c000d067e71315e3db24230f0370 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(173,0-177,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_12d2c000d067e71315e3db24230f0370 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_12d2c000d067e71315e3db24230f0370 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_12d2c000d067e71315e3db24230f0370))

:named refinement_kinding_Tm_refine_12d2c000d067e71315e3db24230f0370))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(173,0-177,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_12d2c000d067e71315e3db24230f0370 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(173,0-177,6)

;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(173,0-177,6)
(or 
;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(173,24-177,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(173,0-177,6)
(and 
;; def=SfLists.fst(172,15-173,19); use=SfLists.fst(173,0-177,6)
(Valid 
;; def=SfLists.fst(172,15-173,19); use=SfLists.fst(173,0-177,6)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(173,24-177,6)
(Valid 
;; def=SfLists.fst(173,24-177,6); use=SfLists.fst(173,24-177,6)
(Prims.precedes Prims.int
Prims.int
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_12d2c000d067e71315e3db24230f0370 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_12d2c000d067e71315e3db24230f0370))

:named refinement_interpretation_Tm_refine_12d2c000d067e71315e3db24230f0370))
;;;;;;;;;;;;;;;;haseq for Tm_refine_12d2c000d067e71315e3db24230f0370
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(172,15-177,6); use=SfLists.fst(173,0-177,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_12d2c000d067e71315e3db24230f0370 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.int)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_12d2c000d067e71315e3db24230f0370 @x0
@x1
@x2))))
:qid haseqTm_refine_12d2c000d067e71315e3db24230f0370))

:named haseqTm_refine_12d2c000d067e71315e3db24230f0370))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(172,35-172,74); use=SfLists.fst(173,8-173,17)
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

; Encoding query formula : forall (l: SfLists.ilist)
;   (h: Prims.int)
;   (l: SfLists.ilist)
;   (h: Prims.int{l << l \/ l === l /\ h << h})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc_cons`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(173,0-177,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist)
(HasType @x3
(Tm_refine_12d2c000d067e71315e3db24230f0370 @x2
@x0
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(173,8-173,17)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(173,8-173,17)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(173,8-173,17)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.snoc_cons, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec snoc_cons


; <Start encoding let rec snoc_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.snoc_cons (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.snoc_cons@tok () Term)

; </end encoding let rec snoc_cons>

(push) ;; push{2

; Starting query at SfLists.fst(179,0-179,54)

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
;; def=SfLists.fst(179,31-179,54); use=SfLists.fst(179,31-179,36)
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

; Encoding query formula : forall (l: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.rev_involutive`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(179,0-179,54)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(179,38-179,41)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(179,38-179,41)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(179,38-179,41)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.rev_involutive, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.rev_involutive


; <Skipped val SfLists.rev_involutive/>

(push) ;; push{2

; Starting query at SfLists.fst(180,27-185,6)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_involutive (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_involutive@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). SfLists.rev (SfLists.rev l) = l ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             b << l /\
;             (forall (any_result: SfLists.ilist).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.rev (SfLists.rev b) = b ==>
;                     (forall (pure_result: Prims.unit).
;                         SfLists.rev (SfLists.snoc (SfLists.rev b) b) =
;                         SfLists.Cons b (SfLists.rev (SfLists.rev b)) ==>
;                         (forall (any_result: Prims.unit). k any_result)))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev_involutive`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(180,27-185,6)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(180,27-185,6)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(179,37-179,54); use=SfLists.fst(180,27-185,6)
(or label_2

;; def=SfLists.fst(179,37-179,54); use=SfLists.fst(180,27-185,6)
(= (SfLists.rev (SfLists.rev x_da0ce6472e3557dab4a010c89b01a198_0))
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(180,27-185,6)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(180,27-185,6)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(180,27-185,6)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(180,27-185,6)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(180,27-185,6)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(180,27-185,6)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(180,27-185,6)
(and (implies 
;; def=SfLists.fst(180,23-180,24); use=SfLists.fst(180,33-180,34)
(and 
;; def=SfLists.fst(180,23-180,24); use=SfLists.fst(180,33-180,34)
(not 
;; def=SfLists.fst(180,23-180,24); use=SfLists.fst(180,33-180,34)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(180,23-180,24); use=SfLists.fst(180,33-180,34)
(not 
;; def=SfLists.fst(180,23-180,24); use=SfLists.fst(180,33-180,34)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(180,23-181,7); use=SfLists.fst(180,33-181,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(180,27-185,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(180,27-185,6)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(180,27-185,6)
(not 
;; def=SfLists.fst(180,23-180,24); use=SfLists.fst(180,33-180,34)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(180,27-185,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(180,27-185,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(180,23-182,12); use=SfLists.fst(180,33-182,12)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(180,27-185,6)
(and 
;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(183,28-183,29)
(or label_4

;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(183,28-183,29)
(Valid 
;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(183,28-183,29)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(180,27-185,6)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
SfLists.ilist)

;; def=SfLists.fst(179,20-182,12); use=SfLists.fst(180,27-185,6)
(= @x3
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(183,13-183,27)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(179,37-179,54); use=SfLists.fst(183,13-183,27)
(= (SfLists.rev (SfLists.rev @x3))
@x3)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(184,14-184,23)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=SfLists.fst(172,41-172,74); use=SfLists.fst(184,14-184,23)
(= (SfLists.rev (SfLists.snoc (SfLists.rev @x3)
@x2))
(SfLists.Cons @x2
(SfLists.rev (SfLists.rev @x3))))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(180,27-185,6)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(180,27-185,6)
(ApplyTT @x1
@x7)
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
; QUERY ID: (SfLists.rev_involutive, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.rev.fuel_instrumented, @fuel_irrelevance_SfLists.rev.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.rev.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(180,0-185,6)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_8812fd0a1c6321167bebae5c3f80462f (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(179,20-185,6); use=SfLists.fst(180,0-185,6)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_8812fd0a1c6321167bebae5c3f80462f))

:named refinement_kinding_Tm_refine_8812fd0a1c6321167bebae5c3f80462f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(179,20-185,6); use=SfLists.fst(180,0-185,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x2))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(180,27-185,6)

;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(180,27-185,6)
(Valid 
;; def=SfLists.fst(180,27-185,6); use=SfLists.fst(180,27-185,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x2)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x2)))
:qid refinement_interpretation_Tm_refine_8812fd0a1c6321167bebae5c3f80462f))

:named refinement_interpretation_Tm_refine_8812fd0a1c6321167bebae5c3f80462f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_8812fd0a1c6321167bebae5c3f80462f
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(179,20-185,6); use=SfLists.fst(180,0-185,6)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x0)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x0))))
:qid haseqTm_refine_8812fd0a1c6321167bebae5c3f80462f))

:named haseqTm_refine_8812fd0a1c6321167bebae5c3f80462f))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(179,31-179,54); use=SfLists.fst(180,8-180,22)
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

; Encoding query formula : forall (l: SfLists.ilist) (l: SfLists.ilist{l << l}) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev_involutive`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(180,0-185,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_8812fd0a1c6321167bebae5c3f80462f @x0))
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(180,8-180,22)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(180,8-180,22)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(180,8-180,22)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.rev_involutive, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec rev_involutive


; <Start encoding let rec rev_involutive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_involutive (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_involutive@tok () Term)

; </end encoding let rec rev_involutive>

(push) ;; push{2

; Starting query at SfLists.fst(187,0-187,118)

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
;; def=SfLists.fst(187,64-187,118); use=SfLists.fst(187,64-187,69)
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

; Encoding query formula : forall (l1: SfLists.ilist)
;   (h1: Prims.int)
;   (l2: SfLists.ilist)
;   (h2: Prims.int)
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   Prims.hasEq SfLists.ilist /\
;   (SfLists.snoc l1 h1 = SfLists.snoc l2 h2 ==> Prims.hasEq SfLists.ilist)


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.snoc_injective`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(187,0-187,118)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist)
(HasType @x3
Prims.int)
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=SfLists.fst(117,31-187,94); use=SfLists.fst(187,71-187,101)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(187,71-187,75)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(187,71-187,75)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(187,71-187,75)
(Prims.hasEq SfLists.ilist)
)
)

(implies 
;; def=SfLists.fst(187,71-187,94); use=SfLists.fst(187,71-187,94)
(= (SfLists.snoc @x0
@x1)
(SfLists.snoc @x2
@x3))


;; def=Prims.fst(73,23-73,30); use=SfLists.fst(187,99-187,101)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(187,99-187,101)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(187,99-187,101)
(Prims.hasEq SfLists.ilist)
)
)
))
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
; QUERY ID: (SfLists.snoc_injective, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.snoc_injective


; <Skipped val SfLists.snoc_injective/>

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

; Starting query at SfLists.fst(188,37-193,14)

;;;;;;;;;;;;;;;;l1 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;h1 : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_1
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_1
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_1))
;;;;;;;;;;;;;;;;l2 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_2 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_2
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_2
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_2))
;;;;;;;;;;;;;;;;h2 : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_3 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_3
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_3
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_3))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.snoc_injective (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.snoc_injective@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       (SfLists.snoc l1 h1 = SfLists.snoc l2 h2 ==> l1 = l2 /\ h1 = h2) ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       ((l1, l2) == (SfLists.Nil, SfLists.Nil) ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? (l1, l2)._1 && Nil? (l1, l2)._2) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist) (b: Prims.int) (b: SfLists.ilist).
;             (l1, l2) == (SfLists.Cons b b, SfLists.Cons b b) ==>
;             (b << l1 \/ b === l1 /\ (h1 << h1 \/ (b << l2 \/ b === l2 /\ h2 << h2))) /\
;             (forall (any_result: Prims.int).
;                 h2 == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     (SfLists.snoc b h1 = SfLists.snoc b h2 ==> b = b /\ h1 = h2) ==>
;                     (forall (any_result: Prims.unit). k any_result)))) /\
;         (~(Cons? (l1, l2)._1 && Cons? (l1, l2)._2) ==>
;           (forall (b: SfLists.ilist) (b: SfLists.ilist).
;               (l1, l2) == (b, b) ==> (forall (any_result: Prims.unit). k any_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc_injective`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(188,37-193,14)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))
(implies 
;; def=SfLists.fst(187,71-187,94); use=SfLists.fst(188,37-193,14)
(= (SfLists.snoc x_da0ce6472e3557dab4a010c89b01a198_0
x_ae567c2fb75be05905677af440075565_1)
(SfLists.snoc x_da0ce6472e3557dab4a010c89b01a198_2
x_ae567c2fb75be05905677af440075565_3))


;; def=SfLists.fst(187,99-187,117); use=SfLists.fst(188,37-193,14)
(and 
;; def=SfLists.fst(187,99-187,106); use=SfLists.fst(188,37-193,14)
(or label_2

;; def=SfLists.fst(187,99-187,106); use=SfLists.fst(188,37-193,14)
(= x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2)
)


;; def=SfLists.fst(187,110-187,117); use=SfLists.fst(188,37-193,14)
(or label_3

;; def=SfLists.fst(187,110-187,117); use=SfLists.fst(188,37-193,14)
(= x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_3)
)
)
))

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(188,37-193,14)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(188,37-193,14)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(188,37-193,14)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(188,37-193,14)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(188,37-193,14)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(188,37-193,14)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(389,2-389,39); use=SfLists.fst(188,37-193,14)
(and (implies 
;; def=SfLists.fst(188,43-189,12); use=SfLists.fst(188,43-189,12)
(= (FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2)
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
SfLists.Nil@tok
SfLists.Nil@tok))


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(188,37-193,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(188,37-193,14)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(188,37-193,14)
(not 
;; def=SfLists.fst(189,4-189,12); use=SfLists.fst(189,4-189,12)
(and (BoxBool_proj_0 (SfLists.uu___is_Nil (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2))))
(BoxBool_proj_0 (SfLists.uu___is_Nil (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2)))))
)


;; def=Prims.fst(389,2-389,39); use=SfLists.fst(188,37-193,14)
(and 
;; def=Prims.fst(413,99-413,120); use=SfLists.fst(188,37-193,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(188,37-193,14)
(forall ((@x3 Term))
 (! (implies (HasType @x3
SfLists.ilist)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(188,37-193,14)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(188,37-193,14)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
SfLists.ilist)

;; def=SfLists.fst(188,43-190,30); use=SfLists.fst(188,43-190,30)
(= (FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2)
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
(SfLists.Cons @x2
@x3)
(SfLists.Cons @x4
@x5)))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(188,37-193,14)
(and 
;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(191,39-191,41)
(or label_4

;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(191,39-191,41)
(and 
;; def=SfLists.fst(187,20-188,25); use=SfLists.fst(191,39-191,41)
(Valid 
;; def=SfLists.fst(187,20-188,25); use=SfLists.fst(191,39-191,41)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(187,32-193,14); use=SfLists.fst(191,39-191,41)
(or 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
)


;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x5
x_da0ce6472e3557dab4a010c89b01a198_2)
)


;; def=SfLists.fst(187,42-193,14); use=SfLists.fst(191,39-191,41)
(and 
;; def=SfLists.fst(187,42-188,31); use=SfLists.fst(191,39-191,41)
(Valid 
;; def=SfLists.fst(187,42-188,31); use=SfLists.fst(191,39-191,41)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x5
x_da0ce6472e3557dab4a010c89b01a198_2)
)


;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(191,39-191,41)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_3
x_ae567c2fb75be05905677af440075565_3)
)
)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(188,37-193,14)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.int)

;; def=SfLists.fst(187,54-188,34); use=SfLists.fst(188,37-193,14)
(= x_ae567c2fb75be05905677af440075565_3
@x6)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(191,13-191,27)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=SfLists.fst(187,70-187,118); use=SfLists.fst(191,13-191,27)
(implies 
;; def=SfLists.fst(187,71-187,94); use=SfLists.fst(191,13-191,27)
(= (SfLists.snoc @x3
x_ae567c2fb75be05905677af440075565_1)
(SfLists.snoc @x5
x_ae567c2fb75be05905677af440075565_3))


;; def=SfLists.fst(187,99-187,117); use=SfLists.fst(191,13-191,27)
(and 
;; def=SfLists.fst(187,99-187,106); use=SfLists.fst(191,13-191,27)
(= @x3
@x5)


;; def=SfLists.fst(187,110-187,117); use=SfLists.fst(191,13-191,27)
(= x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_3)
)
)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(188,37-193,14)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(188,37-193,14)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(188,37-193,14)
(not 
;; def=SfLists.fst(190,4-190,30); use=SfLists.fst(190,4-190,30)
(and (BoxBool_proj_0 (SfLists.uu___is_Cons (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2))))
(BoxBool_proj_0 (SfLists.uu___is_Cons (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2)))))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(188,37-193,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
SfLists.ilist)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(188,37-193,14)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(188,43-193,8); use=SfLists.fst(188,43-193,8)
(= (FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_2)
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
@x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(188,37-193,14)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(188,37-193,14)
(ApplyTT @x1
@x4)
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
; QUERY ID: (SfLists.snoc_injective, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.snoc.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_ae567c2fb75be05905677af440075565_1, binder_x_ae567c2fb75be05905677af440075565_3, binder_x_da0ce6472e3557dab4a010c89b01a198_0, binder_x_da0ce6472e3557dab4a010c89b01a198_2, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_elim_SfLists.Cons, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(188,0-193,14)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(188,0-193,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (HasType (Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type)
 

:pattern ((HasType (Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Tm_type))
:qid refinement_kinding_Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a))

:named refinement_kinding_Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(188,0-193,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x2
@x3
@x4
@x5
@x6
@x7
@x8))
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(188,0-193,14)

;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(188,0-193,14)
(or 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(188,0-193,14)
(and 
;; def=SfLists.fst(187,20-188,25); use=SfLists.fst(188,0-193,14)
(Valid 
;; def=SfLists.fst(187,20-188,25); use=SfLists.fst(188,0-193,14)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(187,32-193,14); use=SfLists.fst(188,0-193,14)
(or 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Prims.precedes Prims.int
Prims.int
@x4
@x5)
)


;; def=SfLists.fst(187,32-193,14); use=SfLists.fst(188,0-193,14)
(and 
;; def=SfLists.fst(187,32-188,28); use=SfLists.fst(188,0-193,14)
(Valid 
;; def=SfLists.fst(187,32-188,28); use=SfLists.fst(188,0-193,14)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x4
@x5)
)


;; def=SfLists.fst(187,42-193,14); use=SfLists.fst(188,0-193,14)
(or 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x6
@x7)
)


;; def=SfLists.fst(187,42-193,14); use=SfLists.fst(188,0-193,14)
(and 
;; def=SfLists.fst(187,42-188,31); use=SfLists.fst(188,0-193,14)
(Valid 
;; def=SfLists.fst(187,42-188,31); use=SfLists.fst(188,0-193,14)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x6
@x7)
)


;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Valid 
;; def=SfLists.fst(188,37-193,14); use=SfLists.fst(188,37-193,14)
(Prims.precedes Prims.int
Prims.int
@x1
@x8)
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
(Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x2
@x3
@x4
@x5
@x6
@x7
@x8)))
:qid refinement_interpretation_Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a))

:named refinement_interpretation_Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(187,20-193,14); use=SfLists.fst(188,0-193,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x0
@x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.hasEq Prims.int)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x0
@x1
@x2
@x3
@x4
@x5
@x6))))
:qid haseqTm_refine_eca90f97b2b7c9568512fe2aae6ee63a))

:named haseqTm_refine_eca90f97b2b7c9568512fe2aae6ee63a))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(187,64-187,118); use=SfLists.fst(188,8-188,22)
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

; Encoding query formula : forall (l1: SfLists.ilist)
;   (h1: Prims.int)
;   (l2: SfLists.ilist)
;   (h2: Prims.int)
;   (l1: SfLists.ilist)
;   (h1: Prims.int)
;   (l2: SfLists.ilist)
;   (h2:
;   Prims.int{l1 << l1 \/ l1 === l1 /\ (h1 << h1 \/ h1 === h1 /\ (l2 << l2 \/ l2 === l2 /\ h2 << h2))})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   Prims.hasEq SfLists.ilist /\
;   (SfLists.snoc l1 h1 = SfLists.snoc l2 h2 ==> Prims.hasEq SfLists.ilist)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc_injective`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(188,0-193,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist)
(HasType @x3
Prims.int)
(HasType @x4
SfLists.ilist)
(HasType @x5
Prims.int)
(HasType @x6
SfLists.ilist)
(HasType @x7
(Tm_refine_eca90f97b2b7c9568512fe2aae6ee63a @x4
@x0
@x5
@x1
@x6
@x2
@x3))
(HasType @x8
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=SfLists.fst(117,31-187,94); use=SfLists.fst(188,8-188,22)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(188,8-188,22)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(188,8-188,22)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(188,8-188,22)
(Prims.hasEq SfLists.ilist)
)
)

(implies 
;; def=SfLists.fst(187,71-187,94); use=SfLists.fst(188,8-188,22)
(= (SfLists.snoc @x4
@x5)
(SfLists.snoc @x6
@x7))


;; def=Prims.fst(73,23-73,30); use=SfLists.fst(188,8-188,22)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(188,8-188,22)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(188,8-188,22)
(Prims.hasEq SfLists.ilist)
)
)
))
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
; QUERY ID: (SfLists.snoc_injective, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec snoc_injective


; <Start encoding let rec snoc_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.snoc_injective (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.snoc_injective@tok () Term)

; </end encoding let rec snoc_injective>

(push) ;; push{2

; Starting query at SfLists.fst(195,0-195,78)

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
;; def=SfLists.fst(195,43-195,78); use=SfLists.fst(195,43-195,48)
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

; Encoding query formula : forall (l1: SfLists.ilist) (l2: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   Prims.hasEq SfLists.ilist /\ (SfLists.rev l1 = SfLists.rev l2 ==> Prims.hasEq SfLists.ilist)


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.rev_injective`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(195,0-195,78)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=SfLists.fst(123,23-195,65); use=SfLists.fst(195,50-195,77)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(195,50-195,53)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(195,50-195,53)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(195,50-195,53)
(Prims.hasEq SfLists.ilist)
)
)

(implies 
;; def=SfLists.fst(195,50-195,65); use=SfLists.fst(195,50-195,65)
(= (SfLists.rev @x0)
(SfLists.rev @x1))


;; def=Prims.fst(73,23-73,30); use=SfLists.fst(195,75-195,77)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(195,75-195,77)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(195,75-195,77)
(Prims.hasEq SfLists.ilist)
)
)
))
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
; QUERY ID: (SfLists.rev_injective, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.rev_injective


; <Skipped val SfLists.rev_injective/>

(push) ;; push{2

; Starting query at SfLists.fst(196,30-202,14)

;;;;;;;;;;;;;;;;l1 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;l2 : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_1 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_1
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_injective (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_injective@tok () Term)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). (SfLists.rev l1 = SfLists.rev l2 ==> l1 = l2) ==> p pure_result
;   ) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       ((l1, l2) == (SfLists.Nil, SfLists.Nil) ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? (l1, l2)._1 && Nil? (l1, l2)._2) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist) (b: Prims.int) (b: SfLists.ilist).
;             (l1, l2) == (SfLists.Cons b b, SfLists.Cons b b) ==>
;             (b << l1 \/ b === l1 /\ b << l2) /\
;             (forall (any_result: SfLists.ilist).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     (SfLists.rev b = SfLists.rev b ==> b = b) ==>
;                     (forall (pure_result: Prims.unit).
;                         (SfLists.snoc (SfLists.rev b) b = SfLists.snoc (SfLists.rev b) b ==>
;                           SfLists.rev b = SfLists.rev b /\ b = b) ==>
;                         (forall (any_result: Prims.unit). k any_result))))) /\
;         (~(Cons? (l1, l2)._1 && Cons? (l1, l2)._2) ==>
;           (forall (b: SfLists.ilist) (b: SfLists.ilist).
;               (l1, l2) == (b, b) ==> (forall (any_result: Prims.unit). k any_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev_injective`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(196,30-202,14)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(196,30-202,14)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))
(implies 
;; def=SfLists.fst(195,50-195,65); use=SfLists.fst(196,30-202,14)
(= (SfLists.rev x_da0ce6472e3557dab4a010c89b01a198_0)
(SfLists.rev x_da0ce6472e3557dab4a010c89b01a198_1))


;; def=SfLists.fst(195,70-195,77); use=SfLists.fst(196,30-202,14)
(or label_2

;; def=SfLists.fst(195,70-195,77); use=SfLists.fst(196,30-202,14)
(= x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)
)
))

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(196,30-202,14)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(196,30-202,14)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(196,30-202,14)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(196,30-202,14)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(196,30-202,14)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(196,30-202,14)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(389,2-389,39); use=SfLists.fst(196,30-202,14)
(and (implies 
;; def=SfLists.fst(196,36-197,12); use=SfLists.fst(196,36-197,12)
(= (FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
SfLists.Nil@tok
SfLists.Nil@tok))


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(196,30-202,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(196,30-202,14)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(196,30-202,14)
(not 
;; def=SfLists.fst(197,4-197,12); use=SfLists.fst(197,4-197,12)
(and (BoxBool_proj_0 (SfLists.uu___is_Nil (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1))))
(BoxBool_proj_0 (SfLists.uu___is_Nil (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)))))
)


;; def=Prims.fst(389,2-389,39); use=SfLists.fst(196,30-202,14)
(and 
;; def=Prims.fst(413,99-413,120); use=SfLists.fst(196,30-202,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(196,30-202,14)
(forall ((@x3 Term))
 (! (implies (HasType @x3
SfLists.ilist)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(196,30-202,14)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(196,30-202,14)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
SfLists.ilist)

;; def=SfLists.fst(196,36-198,30); use=SfLists.fst(196,36-198,30)
(= (FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
(SfLists.Cons @x2
@x3)
(SfLists.Cons @x4
@x5)))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(196,30-202,14)
(and 
;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(199,31-199,34)
(or label_3

;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(199,31-199,34)
(Valid 
;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(199,31-199,34)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(199,31-199,34)
(and 
;; def=SfLists.fst(195,19-196,24); use=SfLists.fst(199,31-199,34)
(Valid 
;; def=SfLists.fst(195,19-196,24); use=SfLists.fst(199,31-199,34)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(199,31-199,34)
(Valid 
;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(199,31-199,34)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x5
x_da0ce6472e3557dab4a010c89b01a198_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(196,30-202,14)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
SfLists.ilist)

;; def=SfLists.fst(195,31-198,30); use=SfLists.fst(196,30-202,14)
(= @x5
@x6)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(199,13-199,26)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=SfLists.fst(195,49-195,78); use=SfLists.fst(199,13-199,26)
(implies 
;; def=SfLists.fst(195,50-195,65); use=SfLists.fst(199,13-199,26)
(= (SfLists.rev @x3)
(SfLists.rev @x5))


;; def=SfLists.fst(195,70-195,77); use=SfLists.fst(199,13-199,26)
(= @x3
@x5)
)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(200,14-200,28)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
Prims.unit)

;; def=SfLists.fst(187,70-187,118); use=SfLists.fst(200,14-200,28)
(implies 
;; def=SfLists.fst(187,71-187,94); use=SfLists.fst(200,14-200,28)
(= (SfLists.snoc (SfLists.rev @x3)
@x2)
(SfLists.snoc (SfLists.rev @x5)
@x4))


;; def=SfLists.fst(187,99-187,117); use=SfLists.fst(200,14-200,28)
(and 
;; def=SfLists.fst(187,99-187,106); use=SfLists.fst(200,14-200,28)
(= (SfLists.rev @x3)
(SfLists.rev @x5))


;; def=SfLists.fst(187,110-187,117); use=SfLists.fst(200,14-200,28)
(= @x2
@x4)
)
)
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(196,30-202,14)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(196,30-202,14)
(ApplyTT @x1
@x9)
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

(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(196,30-202,14)
(not 
;; def=SfLists.fst(198,4-198,30); use=SfLists.fst(198,4-198,30)
(and (BoxBool_proj_0 (SfLists.uu___is_Cons (FStar.Pervasives.Native.__proj__Mktuple2__item___1 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1))))
(BoxBool_proj_0 (SfLists.uu___is_Cons (FStar.Pervasives.Native.__proj__Mktuple2__item___2 SfLists.ilist
SfLists.ilist
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)))))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(196,30-202,14)
(forall ((@x2 Term))
 (! (implies (HasType @x2
SfLists.ilist)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(196,30-202,14)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(196,36-202,8); use=SfLists.fst(196,36-202,8)
(= (FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)
(FStar.Pervasives.Native.Mktuple2 SfLists.ilist
SfLists.ilist
@x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(196,30-202,14)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(196,30-202,14)
(ApplyTT @x1
@x4)
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (SfLists.rev_injective, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.rev.fuel_instrumented, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.rev.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, binder_x_da0ce6472e3557dab4a010c89b01a198_1, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_elim_SfLists.Cons, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.rev.fuel_instrumented, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, int_typing, proj_equation_FStar.Pervasives.Native.Mktuple2__1, proj_equation_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_BoxBool_proj_0, projection_inverse_FStar.Pervasives.Native.Mktuple2__1, projection_inverse_FStar.Pervasives.Native.Mktuple2__2, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, token_correspondence_SfLists.rev.fuel_instrumented, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(196,0-202,14)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(196,0-202,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c))

:named refinement_kinding_Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(196,0-202,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(196,0-202,14)

;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(196,0-202,14)
(or 
;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(196,30-202,14)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(196,0-202,14)
(and 
;; def=SfLists.fst(195,19-196,24); use=SfLists.fst(196,0-202,14)
(Valid 
;; def=SfLists.fst(195,19-196,24); use=SfLists.fst(196,0-202,14)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(196,30-202,14)
(Valid 
;; def=SfLists.fst(196,30-202,14); use=SfLists.fst(196,30-202,14)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c))

:named refinement_interpretation_Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(195,19-202,14); use=SfLists.fst(196,0-202,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x0
@x1
@x2)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x0
@x1
@x2))))
:qid haseqTm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c))

:named haseqTm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(195,43-195,78); use=SfLists.fst(196,8-196,21)
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

; Encoding query formula : forall (l1: SfLists.ilist)
;   (l2: SfLists.ilist)
;   (l1: SfLists.ilist)
;   (l2: SfLists.ilist{l1 << l1 \/ l1 === l1 /\ l2 << l2})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *)
;   Prims.hasEq SfLists.ilist /\ (SfLists.rev l1 = SfLists.rev l2 ==> Prims.hasEq SfLists.ilist)


; Context: While encoding a query
; While typechecking the top-level declaration `let rec rev_injective`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(196,0-202,14)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist)
(HasType @x3
(Tm_refine_d94ab4edbb04f1a3a1c8d5cf3f62ae6c @x2
@x0
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=SfLists.fst(123,23-195,65); use=SfLists.fst(196,8-196,21)
(and 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(196,8-196,21)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(196,8-196,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(196,8-196,21)
(Prims.hasEq SfLists.ilist)
)
)

(implies 
;; def=SfLists.fst(195,50-195,65); use=SfLists.fst(196,8-196,21)
(= (SfLists.rev @x2)
(SfLists.rev @x3))


;; def=Prims.fst(73,23-73,30); use=SfLists.fst(196,8-196,21)
(or label_2

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(196,8-196,21)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(196,8-196,21)
(Prims.hasEq SfLists.ilist)
)
)
))
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
; QUERY ID: (SfLists.rev_injective, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec rev_injective


; <Start encoding let rec rev_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_injective (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_injective@tok () Term)

; </end encoding let rec rev_injective>


; encoding sigelt val SfLists.fold_left


; <Skipped val SfLists.fold_left/>

(push) ;; push{2

; Starting query at SfLists.fst(205,26-207,41)

;;;;;;;;;;;;;;;;'a : Type (Type)
(declare-fun x_fe28d8bcde588226b4e538b35321de05_1 () Term)
;;;;;;;;;;;;;;;;binder_x_fe28d8bcde588226b4e538b35321de05_1
;;; Fact-ids: 
(assert (! (HasType x_fe28d8bcde588226b4e538b35321de05_1
Tm_type)
:named binder_x_fe28d8bcde588226b4e538b35321de05_1))
;;;;;;;;;;;;;;;;f : _: Prims.int -> _: 'a -> 'a (_: Prims.int -> _: 'a -> 'a)
(declare-fun x_beefdd246ceeda3f0bbc3bdbd47ea65a_2 () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> _: 'a -> 'a
(declare-fun Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3
Tm_type)
:named kinding_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))
:qid SfLists_pre_typing_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))

:named SfLists_pre_typing_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3)
(and 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
x_fe28d8bcde588226b4e538b35321de05_1))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
x_fe28d8bcde588226b4e538b35321de05_1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3.1))

(IsTotFun @x0)

;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))
:qid SfLists_interpretation_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))

:named SfLists_interpretation_Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3))
;;;;;;;;;;;;;;;;binder_x_beefdd246ceeda3f0bbc3bdbd47ea65a_2
;;; Fact-ids: 
(assert (! (HasType x_beefdd246ceeda3f0bbc3bdbd47ea65a_2
Tm_arrow_1894c65c326d7d565aebd7ef415c3cc3)
:named binder_x_beefdd246ceeda3f0bbc3bdbd47ea65a_2))
;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_3 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_3
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_3
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_3))
;;;;;;;;;;;;;;;;a : 'a ('a)
(declare-fun x_e09860b75d8922ab497a3e5bc9347578_4 () Term)
;;;;;;;;;;;;;;;;binder_x_e09860b75d8922ab497a3e5bc9347578_4
;;; Fact-ids: 
(assert (! (HasType x_e09860b75d8922ab497a3e5bc9347578_4
x_fe28d8bcde588226b4e538b35321de05_1)
:named binder_x_e09860b75d8922ab497a3e5bc9347578_4))
;;;;;;;;;;;;;;;;_: Prims.int -> _: 'a -> 'a
(declare-fun Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e (Term) Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-204,27); use=SfLists.fst(204,25-205,17)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x0)
Tm_type))
:qid kinding_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))

:named kinding_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-204,27); use=SfLists.fst(204,25-205,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x2)))
:qid SfLists_pre_typing_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))

:named SfLists_pre_typing_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-204,27); use=SfLists.fst(204,25-205,17)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1))
(and 
;; def=SfLists.fst(204,18-204,27); use=SfLists.fst(204,25-205,17)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Prims.int)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e.1))

(IsTotFun @x0)

;; def=SfLists.fst(204,18-204,27); use=SfLists.fst(204,25-205,17)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1)))
:qid SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))

:named SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))
(declare-fun Tm_refine_e3c9603cacac26458a570c58e99c4dcd (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(204,42-207,41)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_e3c9603cacac26458a570c58e99c4dcd))

:named refinement_kinding_Tm_refine_e3c9603cacac26458a570c58e99c4dcd))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(204,42-207,41)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x2
@x3))
(and (HasTypeFuel @u0
@x1
@x3)

;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(204,42-207,41)

;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(204,42-207,41)
(or 
;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(205,26-207,41)
(Valid 
;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(205,26-207,41)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_3)
)


;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(204,42-207,41)
(and 
;; def=SfLists.fst(204,42-205,21); use=SfLists.fst(204,42-205,21)
(Valid 
;; def=SfLists.fst(204,42-205,21); use=SfLists.fst(204,42-205,21)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_3)
)


;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(205,26-207,41)
(Valid 
;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(205,26-207,41)
(Prims.precedes @x3
x_fe28d8bcde588226b4e538b35321de05_1
@x1
x_e09860b75d8922ab497a3e5bc9347578_4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x2
@x3)))
:qid refinement_interpretation_Tm_refine_e3c9603cacac26458a570c58e99c4dcd))

:named refinement_interpretation_Tm_refine_e3c9603cacac26458a570c58e99c4dcd))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e3c9603cacac26458a570c58e99c4dcd
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(204,42-207,41)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x0
@x1)))
(Valid (Prims.hasEq @x1)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x0
@x1))))
:qid haseqTm_refine_e3c9603cacac26458a570c58e99c4dcd))

:named haseqTm_refine_e3c9603cacac26458a570c58e99c4dcd))
(declare-fun SfLists.fold_left (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;f: (_: Prims.int -> _: 'a -> 'a) -> l: ilist -> _: _: 'a{l << l \/ l === l /\ _ << a} -> 'a
(declare-fun Tm_arrow_88a726935f84f64adb1c36d500ce1a65 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_88a726935f84f64adb1c36d500ce1a65
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_88a726935f84f64adb1c36d500ce1a65
Tm_type)
:named kinding_Tm_arrow_88a726935f84f64adb1c36d500ce1a65))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-207,41); use=SfLists.fst(204,25-207,41)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_88a726935f84f64adb1c36d500ce1a65)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_88a726935f84f64adb1c36d500ce1a65))
:qid SfLists_pre_typing_Tm_arrow_88a726935f84f64adb1c36d500ce1a65))

:named SfLists_pre_typing_Tm_arrow_88a726935f84f64adb1c36d500ce1a65))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(204,18-207,41); use=SfLists.fst(204,25-207,41)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_88a726935f84f64adb1c36d500ce1a65)
(and 
;; def=SfLists.fst(204,18-207,41); use=SfLists.fst(204,25-207,41)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1))
(HasType @x3
SfLists.ilist)
(HasType @x4
(Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x3
@x1)))
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
:qid SfLists_interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65.1))

(IsTotFun @x0)

;; def=SfLists.fst(204,18-207,41); use=SfLists.fst(204,25-207,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65.2))


;; def=SfLists.fst(204,18-207,41); use=SfLists.fst(204,25-207,41)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65.3))


;; def=SfLists.fst(204,18-207,41); use=SfLists.fst(204,25-207,41)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1))
(HasType @x3
SfLists.ilist))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid SfLists_interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_88a726935f84f64adb1c36d500ce1a65))
:qid SfLists_interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65))

:named SfLists_interpretation_Tm_arrow_88a726935f84f64adb1c36d500ce1a65))
(declare-fun SfLists.fold_left@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT SfLists.fold_left@tok
@x0)
@x1)
@x2)
@x3)
(SfLists.fold_left @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT SfLists.fold_left@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_SfLists.fold_left))

:named token_correspondence_SfLists.fold_left))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.fold_left@tok
Tm_arrow_88a726935f84f64adb1c36d500ce1a65))

;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT SfLists.fold_left@tok
@x1)
@x2)
@x3)
@x4)
(SfLists.fold_left @x1
@x2
@x3
@x4))
 

:pattern ((SfLists.fold_left @x1
@x2
@x3
@x4))
:qid function_token_typing_SfLists.fold_left.1))
)
 

:pattern ((ApplyTT @x0
SfLists.fold_left@tok))
:qid function_token_typing_SfLists.fold_left))

:named function_token_typing_SfLists.fold_left))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x0))
(HasType @x2
SfLists.ilist)
(HasType @x3
(Tm_refine_e3c9603cacac26458a570c58e99c4dcd @x2
@x0)))
(HasType (SfLists.fold_left @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((SfLists.fold_left @x0
@x1
@x2
@x3))
:qid typing_SfLists.fold_left))

:named typing_SfLists.fold_left))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post 'a).
;   (forall (x: 'a). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==>
;     (forall (b: Prims.int) (b: SfLists.ilist).
;         l == SfLists.Cons b b ==> b << l \/ b === l /\ f b a << a))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec fold_left`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(205,26-207,41)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(205,26-207,41)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(205,26-207,41)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(205,26-207,41)
(and (implies 
;; def=SfLists.fst(205,20-205,21); use=SfLists.fst(205,32-205,33)
(and 
;; def=SfLists.fst(205,20-205,21); use=SfLists.fst(205,32-205,33)
(not 
;; def=SfLists.fst(205,20-205,21); use=SfLists.fst(205,32-205,33)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_3))
)


;; def=SfLists.fst(205,20-205,21); use=SfLists.fst(205,32-205,33)
(not 
;; def=SfLists.fst(205,20-205,21); use=SfLists.fst(205,32-205,33)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_3))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(205,26-207,41)
(not 
;; def=SfLists.fst(205,20-205,21); use=SfLists.fst(205,32-205,33)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_3))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(205,26-207,41)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(205,26-207,41)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(205,20-207,14); use=SfLists.fst(205,32-207,14)
(= x_da0ce6472e3557dab4a010c89b01a198_3
(SfLists.Cons @x1
@x2))
)

;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(207,33-207,41)
(or label_2

;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(207,33-207,41)
(Valid 
;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(207,33-207,41)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_3)
)


;; def=SfLists.fst(204,42-207,41); use=SfLists.fst(207,33-207,41)
(and 
;; def=SfLists.fst(204,42-205,21); use=SfLists.fst(207,33-207,41)
(Valid 
;; def=SfLists.fst(204,42-205,21); use=SfLists.fst(207,33-207,41)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_3)
)


;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(207,33-207,41)
(Valid 
;; def=SfLists.fst(205,26-207,41); use=SfLists.fst(207,33-207,41)
(Prims.precedes x_fe28d8bcde588226b4e538b35321de05_1
x_fe28d8bcde588226b4e538b35321de05_1
(ApplyTT (ApplyTT x_beefdd246ceeda3f0bbc3bdbd47ea65a_2
@x1)
x_e09860b75d8922ab497a3e5bc9347578_4)
x_e09860b75d8922ab497a3e5bc9347578_4)
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
; QUERY ID: (SfLists.fold_left, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_3, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec fold_left


; <Start encoding let rec fold_left>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.fold_left.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.fold_left.fuel_instrumented_token () Term)
(declare-fun SfLists.fold_left (Term Term Term Term) Term)
(declare-fun SfLists.fold_left@tok () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> _: 'a -> 'a
(declare-fun Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e (Term) Term)


;;;;;;;;;;;;;;;;f: (_: Prims.int -> _: 'a -> 'a) -> l: ilist -> a: 'a -> 'a
(declare-fun Tm_arrow_84e454ecf2d9609f858ef1ef12d539f2 () Term)

; </end encoding let rec fold_left>

(push) ;; push{2

; Starting query at SfLists.fst(209,0-209,106)

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
;; def=SfLists.fst(209,47-209,106); use=SfLists.fst(209,47-209,52)
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

; Encoding query formula : forall (l: SfLists.ilist) (hd: Prims.int) (tl: SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.app_cons`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(209,0-209,106)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist)
(HasType @x3
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(209,54-209,57)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(209,54-209,57)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(209,54-209,57)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.app_cons, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.app_cons


; <Skipped val SfLists.app_cons/>

(push) ;; push{2

; Starting query at SfLists.fst(210,27-214,6)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;hd : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_1
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_1
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_1))
;;;;;;;;;;;;;;;;tl : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_2 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_2
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_2
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_2))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_cons@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.app l (SfLists.Cons hd tl) =
;       SfLists.app (SfLists.app l (SfLists.Cons hd SfLists.Nil)) tl ==>
;       p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (b << l \/ b === l /\ (hd << hd \/ tl << tl)) /\
;             (forall (any_result: SfLists.ilist).
;                 tl == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.app b (SfLists.Cons hd tl) =
;                     SfLists.app (SfLists.app b (SfLists.Cons hd SfLists.Nil)) tl ==>
;                     (forall (any_result: Prims.unit). k any_result))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_cons`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(210,27-214,6)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(209,53-209,106); use=SfLists.fst(210,27-214,6)
(or label_2

;; def=SfLists.fst(209,53-209,106); use=SfLists.fst(210,27-214,6)
(= (SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
x_da0ce6472e3557dab4a010c89b01a198_2))
(SfLists.app (SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
SfLists.Nil@tok))
x_da0ce6472e3557dab4a010c89b01a198_2))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(210,27-214,6)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(210,27-214,6)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(210,27-214,6)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(210,27-214,6)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(210,27-214,6)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(210,27-214,6)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(210,27-214,6)
(and (implies 
;; def=SfLists.fst(210,17-210,18); use=SfLists.fst(210,33-210,34)
(and 
;; def=SfLists.fst(210,17-210,18); use=SfLists.fst(210,33-210,34)
(not 
;; def=SfLists.fst(210,17-210,18); use=SfLists.fst(210,33-210,34)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(210,17-210,18); use=SfLists.fst(210,33-210,34)
(not 
;; def=SfLists.fst(210,17-210,18); use=SfLists.fst(210,33-210,34)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(210,17-211,7); use=SfLists.fst(210,33-211,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(210,27-214,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(210,27-214,6)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(210,27-214,6)
(not 
;; def=SfLists.fst(210,17-210,18); use=SfLists.fst(210,33-210,34)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(210,27-214,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(210,27-214,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(210,17-212,16); use=SfLists.fst(210,33-212,16)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(210,27-214,6)
(and 
;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(213,29-213,31)
(or label_4

;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(213,29-213,31)
(Valid 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(213,29-213,31)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(213,29-213,31)
(and 
;; def=SfLists.fst(209,14-210,18); use=SfLists.fst(213,29-213,31)
(Valid 
;; def=SfLists.fst(209,14-210,18); use=SfLists.fst(213,29-213,31)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(209,25-214,6); use=SfLists.fst(213,29-213,31)
(or 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(213,29-213,31)
(Valid 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(213,29-213,31)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
)


;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(213,29-213,31)
(Valid 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(213,29-213,31)
(Prims.precedes SfLists.ilist
SfLists.ilist
x_da0ce6472e3557dab4a010c89b01a198_2
x_da0ce6472e3557dab4a010c89b01a198_2)
)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(210,27-214,6)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
SfLists.ilist)

;; def=SfLists.fst(209,35-210,24); use=SfLists.fst(210,27-214,6)
(= x_da0ce6472e3557dab4a010c89b01a198_2
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(213,13-213,21)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(209,53-209,106); use=SfLists.fst(213,13-213,21)
(= (SfLists.app @x3
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
x_da0ce6472e3557dab4a010c89b01a198_2))
(SfLists.app (SfLists.app @x3
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
SfLists.Nil@tok))
x_da0ce6472e3557dab4a010c89b01a198_2))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(210,27-214,6)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(210,27-214,6)
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
; QUERY ID: (SfLists.app_cons, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @fuel_irrelevance_SfLists.app.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_ae567c2fb75be05905677af440075565_1, binder_x_da0ce6472e3557dab4a010c89b01a198_0, binder_x_da0ce6472e3557dab4a010c89b01a198_2, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_typing_intro_SfLists.Cons@tok, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.app, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(210,0-214,6)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_75f71a389809f319c8bc9b0475f44a57 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(210,0-214,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_75f71a389809f319c8bc9b0475f44a57))

:named refinement_kinding_Tm_refine_75f71a389809f319c8bc9b0475f44a57))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(210,0-214,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(210,0-214,6)

;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(210,0-214,6)
(or 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(210,0-214,6)
(and 
;; def=SfLists.fst(209,14-210,18); use=SfLists.fst(210,0-214,6)
(Valid 
;; def=SfLists.fst(209,14-210,18); use=SfLists.fst(210,0-214,6)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(209,25-214,6); use=SfLists.fst(210,0-214,6)
(or 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(Prims.precedes Prims.int
Prims.int
@x4
@x5)
)


;; def=SfLists.fst(209,25-214,6); use=SfLists.fst(210,0-214,6)
(and 
;; def=SfLists.fst(209,25-210,21); use=SfLists.fst(210,0-214,6)
(Valid 
;; def=SfLists.fst(209,25-210,21); use=SfLists.fst(210,0-214,6)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x4
@x5)
)


;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(Valid 
;; def=SfLists.fst(210,27-214,6); use=SfLists.fst(210,27-214,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x6)
)
)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_75f71a389809f319c8bc9b0475f44a57))

:named refinement_interpretation_Tm_refine_75f71a389809f319c8bc9b0475f44a57))
;;;;;;;;;;;;;;;;haseq for Tm_refine_75f71a389809f319c8bc9b0475f44a57
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(209,14-214,6); use=SfLists.fst(210,0-214,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_75f71a389809f319c8bc9b0475f44a57))

:named haseqTm_refine_75f71a389809f319c8bc9b0475f44a57))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(209,47-209,106); use=SfLists.fst(210,8-210,16)
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

; Encoding query formula : forall (l: SfLists.ilist)
;   (hd: Prims.int)
;   (tl: SfLists.ilist)
;   (l: SfLists.ilist)
;   (hd: Prims.int)
;   (tl: SfLists.ilist{l << l \/ l === l /\ (hd << hd \/ hd === hd /\ tl << tl)})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec app_cons`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(210,0-214,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist)
(HasType @x3
SfLists.ilist)
(HasType @x4
Prims.int)
(HasType @x5
(Tm_refine_75f71a389809f319c8bc9b0475f44a57 @x3
@x0
@x4
@x1
@x2))
(HasType @x6
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(210,8-210,16)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(210,8-210,16)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(210,8-210,16)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.app_cons, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec app_cons


; <Start encoding let rec app_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.app_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.app_cons@tok () Term)

; </end encoding let rec app_cons>

(push) ;; push{2

; Starting query at SfLists.fst(216,0-216,71)

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
;; def=SfLists.fst(216,34-216,71); use=SfLists.fst(216,34-216,39)
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

; Encoding query formula : forall (l: SfLists.ilist) (h: Prims.int) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.snoc_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(216,0-216,71)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(216,41-216,45)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(216,41-216,45)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(216,41-216,45)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.snoc_app, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.snoc_app


; <Skipped val SfLists.snoc_app/>

(push) ;; push{2

; Starting query at SfLists.fst(217,23-221,6)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;h : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_1 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_1
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_1
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.snoc_app (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.snoc_app@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.snoc l h = SfLists.app l (SfLists.Cons h SfLists.Nil) ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (b << l \/ b === l /\ h << h) /\
;             (forall (any_result: Prims.int).
;                 h == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.snoc b h = SfLists.app b (SfLists.Cons h SfLists.Nil) ==>
;                     (forall (any_result: Prims.unit). k any_result))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(217,23-221,6)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(217,23-221,6)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(216,40-216,71); use=SfLists.fst(217,23-221,6)
(or label_2

;; def=SfLists.fst(216,40-216,71); use=SfLists.fst(217,23-221,6)
(= (SfLists.snoc x_da0ce6472e3557dab4a010c89b01a198_0
x_ae567c2fb75be05905677af440075565_1)
(SfLists.app x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
SfLists.Nil@tok)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(217,23-221,6)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(217,23-221,6)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(217,23-221,6)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(217,23-221,6)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(217,23-221,6)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(217,23-221,6)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(217,23-221,6)
(and (implies 
;; def=SfLists.fst(217,17-217,18); use=SfLists.fst(217,29-217,30)
(and 
;; def=SfLists.fst(217,17-217,18); use=SfLists.fst(217,29-217,30)
(not 
;; def=SfLists.fst(217,17-217,18); use=SfLists.fst(217,29-217,30)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(217,17-217,18); use=SfLists.fst(217,29-217,30)
(not 
;; def=SfLists.fst(217,17-217,18); use=SfLists.fst(217,29-217,30)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(217,17-218,7); use=SfLists.fst(217,29-218,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(217,23-221,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(217,23-221,6)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(217,23-221,6)
(not 
;; def=SfLists.fst(217,17-217,18); use=SfLists.fst(217,29-217,30)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(217,23-221,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(217,23-221,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(217,17-219,14); use=SfLists.fst(217,29-219,14)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(217,23-221,6)
(and 
;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(220,24-220,25)
(or label_4

;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(220,24-220,25)
(Valid 
;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(220,24-220,25)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(220,24-220,25)
(and 
;; def=SfLists.fst(216,14-217,18); use=SfLists.fst(220,24-220,25)
(Valid 
;; def=SfLists.fst(216,14-217,18); use=SfLists.fst(220,24-220,25)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(220,24-220,25)
(Valid 
;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(220,24-220,25)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_1
x_ae567c2fb75be05905677af440075565_1)
)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(217,23-221,6)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.int)

;; def=SfLists.fst(216,25-217,20); use=SfLists.fst(217,23-221,6)
(= x_ae567c2fb75be05905677af440075565_1
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(220,12-220,20)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(216,40-216,71); use=SfLists.fst(220,12-220,20)
(= (SfLists.snoc @x3
x_ae567c2fb75be05905677af440075565_1)
(SfLists.app @x3
(SfLists.Cons x_ae567c2fb75be05905677af440075565_1
SfLists.Nil@tok)))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(217,23-221,6)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(217,23-221,6)
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
; QUERY ID: (SfLists.snoc_app, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @fuel_correspondence_SfLists.snoc.fuel_instrumented, @fuel_irrelevance_SfLists.app.fuel_instrumented, @fuel_irrelevance_SfLists.snoc.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_ae567c2fb75be05905677af440075565_1, binder_x_da0ce6472e3557dab4a010c89b01a198_0, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, data_typing_intro_SfLists.Cons@tok, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, equation_with_fuel_SfLists.snoc.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, int_inversion, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, token_correspondence_SfLists.snoc.fuel_instrumented, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(217,0-221,6)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(217,0-221,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e))

:named refinement_kinding_Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(217,0-221,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(217,0-221,6)

;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(217,0-221,6)
(or 
;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(217,23-221,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(217,0-221,6)
(and 
;; def=SfLists.fst(216,14-217,18); use=SfLists.fst(217,0-221,6)
(Valid 
;; def=SfLists.fst(216,14-217,18); use=SfLists.fst(217,0-221,6)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(217,23-221,6)
(Valid 
;; def=SfLists.fst(217,23-221,6); use=SfLists.fst(217,23-221,6)
(Prims.precedes Prims.int
Prims.int
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e))

:named refinement_interpretation_Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(216,14-221,6); use=SfLists.fst(217,0-221,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.int)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x0
@x1
@x2))))
:qid haseqTm_refine_2a14e9523c8cb40f95e109ca8d443e1e))

:named haseqTm_refine_2a14e9523c8cb40f95e109ca8d443e1e))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(216,34-216,71); use=SfLists.fst(217,8-217,16)
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

; Encoding query formula : forall (l: SfLists.ilist)
;   (h: Prims.int)
;   (l: SfLists.ilist)
;   (h: Prims.int{l << l \/ l === l /\ h << h})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec snoc_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(217,0-221,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist)
(HasType @x3
(Tm_refine_2a14e9523c8cb40f95e109ca8d443e1e @x2
@x0
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(217,8-217,16)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(217,8-217,16)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(217,8-217,16)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.snoc_app, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec snoc_app


; <Start encoding let rec snoc_app>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.snoc_app (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.snoc_app@tok () Term)

; </end encoding let rec snoc_app>

(push) ;; push{2

; Starting query at SfLists.fst(223,0-223,88)

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
;; def=SfLists.fst(223,35-223,88); use=SfLists.fst(223,35-223,40)
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

; Encoding query formula : forall (tl: SfLists.ilist) (hd: Prims.int) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.rev_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(223,0-223,88)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Prims.int)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(223,42-223,45)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(223,42-223,45)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(223,42-223,45)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.rev_app, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.rev_app


; <Skipped val SfLists.rev_app/>

(push) ;; push{2

; Starting query at SfLists.fst(224,20-224,40)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (tl: SfLists.ilist) (hd: Prims.int).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     (forall (pure_result: Prims.unit).
;         SfLists.rev (SfLists.Cons hd tl) =
;         SfLists.app (SfLists.rev tl) (SfLists.Cons hd SfLists.Nil) ==>
;         p pure_result) ==>
;     (forall (pure_result: Prims.unit).
;         SfLists.snoc (SfLists.rev tl) hd =
;         SfLists.app (SfLists.rev tl) (SfLists.Cons hd SfLists.Nil) ==>
;         p pure_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let rev_app`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
SfLists.ilist)
(HasType @x1
Prims.int))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(224,20-224,40)
(forall ((@x3 Term))
 (! (implies (and (or label_1
(HasType @x3
Prims.unit))

;; def=SfLists.fst(223,41-223,88); use=SfLists.fst(224,20-224,40)
(or label_2

;; def=SfLists.fst(223,41-223,88); use=SfLists.fst(224,20-224,40)
(= (SfLists.rev (SfLists.Cons @x1
@x0))
(SfLists.app (SfLists.rev @x0)
(SfLists.Cons @x1
SfLists.Nil@tok)))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(224,20-224,40)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(224,20-224,40)
(ApplyTT @x2
@x3)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(224,20-224,40)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(224,20-224,40)
(ApplyTT @x2
@x3)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(224,20-224,40)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=SfLists.fst(216,40-216,71); use=SfLists.fst(224,20-224,28)
(= (SfLists.snoc (SfLists.rev @x0)
@x1)
(SfLists.app (SfLists.rev @x0)
(SfLists.Cons @x1
SfLists.Nil@tok)))
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(224,20-224,40)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(224,20-224,40)
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
; QUERY ID: (SfLists.rev_app, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.rev.fuel_instrumented, @fuel_irrelevance_SfLists.rev.fuel_instrumented, @query, constructor_distinct_SfLists.Cons, data_typing_intro_SfLists.Cons@tok, equation_with_fuel_SfLists.rev.fuel_instrumented, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rev_app


; <Start encoding let rev_app>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.rev_app (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.rev_app@tok () Term)

; </end encoding let rev_app>

(push) ;; push{2

; Starting query at SfLists.fst(226,0-226,94)

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
;; def=SfLists.fst(226,50-226,94); use=SfLists.fst(226,50-226,55)
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

; Encoding query formula : forall (l: SfLists.ilist) (l': SfLists.ilist) (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `val SfLists.fold_left_cons_is_rev`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(226,0-226,94)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist)
(HasType @x2
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(226,79-226,82)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(226,79-226,82)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(226,79-226,82)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.fold_left_cons_is_rev, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt val SfLists.fold_left_cons_is_rev


; <Skipped val SfLists.fold_left_cons_is_rev/>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term))
 (! (NoHoist @x0
(HasType SfLists.Cons@tok
Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))
 

:pattern ((ApplyTT SfLists.Cons@tok
@x0))

:pattern ((ApplyTT @x0
SfLists.Cons@tok))
:qid typing_tok_SfLists.Cons@tok))

:named typing_tok_SfLists.Cons@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x0))
(HasType @x2
SfLists.ilist)
(HasType @x3
@x0))
(HasType (SfLists.fold_left @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((SfLists.fold_left @x0
@x1
@x2
@x3))
:qid typing_SfLists.fold_left))

:named typing_SfLists.fold_left))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1))
(HasType @x3
SfLists.ilist)
(HasType @x4
@x1))
(HasType (SfLists.fold_left.fuel_instrumented @u0
@x1
@x2
@x3
@x4)
@x1))
 

:pattern ((SfLists.fold_left.fuel_instrumented @u0
@x1
@x2
@x3
@x4))
:qid token_correspondence_SfLists.fold_left.fuel_instrumented))

:named token_correspondence_SfLists.fold_left.fuel_instrumented))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x0)
Tm_type))
:qid kinding_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))

:named kinding_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (HasType Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1
Tm_type)
:named kinding_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! (= 139
(Term_constr_id SfLists.Cons@tok))
:named fresh_token_SfLists.Cons@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.fold_left
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1))
(HasType @x3
SfLists.ilist)
(HasType @x4
@x1))
(= (SfLists.fold_left.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(let ((@lb5 @x3))
(ite (is-SfLists.Nil @lb5)
@x4
(ite (is-SfLists.Cons @lb5)
(SfLists.fold_left.fuel_instrumented @u0
@x1
@x2
(SfLists.Cons__1 @lb5)
(ApplyTT (ApplyTT @x2
(SfLists.Cons__0 @lb5))
@x4))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.fold_left.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid equation_with_fuel_SfLists.fold_left.fuel_instrumented))

:named equation_with_fuel_SfLists.fold_left.fuel_instrumented))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,4-27,8); use=SfLists.fst(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfLists.Cons@tok
@x0)
@x1)
(SfLists.Cons @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfLists.Cons@tok
@x0)
@x1))
:qid equality_tok_SfLists.Cons@tok))

:named equality_tok_SfLists.Cons@tok))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x2)))
:qid SfLists_pre_typing_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))

:named SfLists_pre_typing_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,11-27,32); use=SfLists.fst(27,11-27,32)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))
:qid SfLists_pre_typing_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))

:named SfLists_pre_typing_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1))
(and 
;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Prims.int)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
@x1))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e.1))

(IsTotFun @x0)

;; def=SfLists.fst(204,18-205,19); use=SfLists.fst(205,8-205,19)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e @x1)))
:qid SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))

:named SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1
;;; Fact-ids: Name SfLists.ilist; Namespace SfLists; Name SfLists.Nil; Namespace SfLists; Name SfLists.Cons; Namespace SfLists
(assert (! 
;; def=SfLists.fst(27,11-27,32); use=SfLists.fst(27,11-27,32)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1)
(and 
;; def=SfLists.fst(27,11-27,32); use=SfLists.fst(27,11-27,32)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
SfLists.ilist))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
SfLists.ilist))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1.1))

(IsTotFun @x0)

;; def=SfLists.fst(27,11-27,32); use=SfLists.fst(27,11-27,32)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))
:qid SfLists_interpretation_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))

:named SfLists_interpretation_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (SfLists.fold_left.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(SfLists.fold_left.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4))
 

:pattern ((SfLists.fold_left.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid @fuel_irrelevance_SfLists.fold_left.fuel_instrumented))

:named @fuel_irrelevance_SfLists.fold_left.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.fold_left; Namespace SfLists
(assert (! 
;; def=SfLists.fst(205,8-205,17); use=SfLists.fst(205,8-205,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (SfLists.fold_left @x0
@x1
@x2
@x3)
(SfLists.fold_left.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3))
 

:pattern ((SfLists.fold_left @x0
@x1
@x2
@x3))
:qid @fuel_correspondence_SfLists.fold_left.fuel_instrumented))

:named @fuel_correspondence_SfLists.fold_left.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(227,37-233,6)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;l' : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_1 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_1
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_1
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.fold_left_cons_is_rev (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.fold_left_cons_is_rev@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_8b6194d51478a0053805e17112462f7b (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,12-230,33)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_8b6194d51478a0053805e17112462f7b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_8b6194d51478a0053805e17112462f7b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_8b6194d51478a0053805e17112462f7b))

:named refinement_kinding_Tm_refine_8b6194d51478a0053805e17112462f7b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,12-230,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_8b6194d51478a0053805e17112462f7b @x2))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,12-230,33)

;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,12-230,33)
(or 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,12-230,33)
(Valid 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,12-230,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,12-230,33)
(and 
;; def=SfLists.fst(226,27-227,31); use=SfLists.fst(230,12-230,33)
(Valid 
;; def=SfLists.fst(226,27-227,31); use=SfLists.fst(230,12-230,33)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,12-230,33)
(Valid 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,12-230,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
x_da0ce6472e3557dab4a010c89b01a198_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_8b6194d51478a0053805e17112462f7b @x2)))
:qid refinement_interpretation_Tm_refine_8b6194d51478a0053805e17112462f7b))

:named refinement_interpretation_Tm_refine_8b6194d51478a0053805e17112462f7b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_8b6194d51478a0053805e17112462f7b
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,12-230,33)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_8b6194d51478a0053805e17112462f7b @x0)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_8b6194d51478a0053805e17112462f7b @x0))))
:qid haseqTm_refine_8b6194d51478a0053805e17112462f7b))

:named haseqTm_refine_8b6194d51478a0053805e17112462f7b))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
SfLists.Cons@tok))
:named @kick_partial_app_555f88775ce4fe6297109f0637c6c74d))


; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       SfLists.fold_left SfLists.Cons l l' = SfLists.app (SfLists.rev l) l' ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             (b << l \/ b === l /\ SfLists.Cons b l' << l') /\
;             (forall (return_val: l': SfLists.ilist{b << l \/ b === l /\ l' << l'}).
;                 return_val == SfLists.Cons b l' ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.fold_left SfLists.Cons b (SfLists.Cons b l') =
;                     SfLists.app (SfLists.rev b) (SfLists.Cons b l') ==>
;                     (forall (pure_result: Prims.unit).
;                         SfLists.app (SfLists.rev b) (SfLists.Cons b l') =
;                         SfLists.app (SfLists.app (SfLists.rev b) (SfLists.Cons b SfLists.Nil)) l' ==>
;                         (forall (pure_result: Prims.unit).
;                             SfLists.rev (SfLists.Cons b b) =
;                             SfLists.app (SfLists.rev b) (SfLists.Cons b SfLists.Nil) ==>
;                             (forall (any_result: Prims.unit). k any_result))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec fold_left_cons_is_rev`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(227,37-233,6)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(227,37-233,6)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(226,56-226,94); use=SfLists.fst(227,37-233,6)
(or label_2

;; def=SfLists.fst(226,56-226,94); use=SfLists.fst(227,37-233,6)
(= (SfLists.fold_left SfLists.ilist
SfLists.Cons@tok
x_da0ce6472e3557dab4a010c89b01a198_0
x_da0ce6472e3557dab4a010c89b01a198_1)
(SfLists.app (SfLists.rev x_da0ce6472e3557dab4a010c89b01a198_0)
x_da0ce6472e3557dab4a010c89b01a198_1))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(227,37-233,6)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(227,37-233,6)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(227,37-233,6)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(227,37-233,6)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(227,37-233,6)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(227,37-233,6)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(227,37-233,6)
(and (implies 
;; def=SfLists.fst(227,30-227,31); use=SfLists.fst(227,43-227,44)
(and 
;; def=SfLists.fst(227,30-227,31); use=SfLists.fst(227,43-227,44)
(not 
;; def=SfLists.fst(227,30-227,31); use=SfLists.fst(227,43-227,44)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(227,30-227,31); use=SfLists.fst(227,43-227,44)
(not 
;; def=SfLists.fst(227,30-227,31); use=SfLists.fst(227,43-227,44)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(227,30-228,7); use=SfLists.fst(227,43-228,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(227,37-233,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(227,37-233,6)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(227,37-233,6)
(not 
;; def=SfLists.fst(227,30-227,31); use=SfLists.fst(227,43-227,44)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(227,37-233,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(227,37-233,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(227,30-229,14); use=SfLists.fst(227,43-229,14)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(227,37-233,6)
(and 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,37-230,49)
(or label_4

;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,37-230,49)
(Valid 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,37-230,49)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(230,37-230,49)
(and 
;; def=SfLists.fst(226,27-227,31); use=SfLists.fst(230,37-230,49)
(Valid 
;; def=SfLists.fst(226,27-227,31); use=SfLists.fst(230,37-230,49)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)


;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,37-230,49)
(Valid 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(230,37-230,49)
(Prims.precedes SfLists.ilist
SfLists.ilist
(SfLists.Cons @x2
x_da0ce6472e3557dab4a010c89b01a198_1)
x_da0ce6472e3557dab4a010c89b01a198_1)
)
)
)


;; def=Prims.fst(356,2-356,58); use=SfLists.fst(227,37-233,6)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Tm_refine_8b6194d51478a0053805e17112462f7b @x3))

;; def=Prims.fst(356,26-356,41); use=SfLists.fst(227,37-233,6)
(= @x4
(SfLists.Cons @x2
x_da0ce6472e3557dab4a010c89b01a198_1))
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(230,12-230,33)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(226,56-226,94); use=SfLists.fst(230,12-230,33)
(= (SfLists.fold_left SfLists.ilist
SfLists.Cons@tok
@x3
(SfLists.Cons @x2
x_da0ce6472e3557dab4a010c89b01a198_1))
(SfLists.app (SfLists.rev @x3)
(SfLists.Cons @x2
x_da0ce6472e3557dab4a010c89b01a198_1)))
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(231,12-231,20)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.unit)

;; def=SfLists.fst(209,53-209,106); use=SfLists.fst(231,12-231,20)
(= (SfLists.app (SfLists.rev @x3)
(SfLists.Cons @x2
x_da0ce6472e3557dab4a010c89b01a198_1))
(SfLists.app (SfLists.app (SfLists.rev @x3)
(SfLists.Cons @x2
SfLists.Nil@tok))
x_da0ce6472e3557dab4a010c89b01a198_1))
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(232,12-232,19)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=SfLists.fst(223,41-223,88); use=SfLists.fst(232,12-232,19)
(= (SfLists.rev (SfLists.Cons @x2
@x3))
(SfLists.app (SfLists.rev @x3)
(SfLists.Cons @x2
SfLists.Nil@tok)))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(227,37-233,6)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(227,37-233,6)
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
; QUERY ID: (SfLists.fold_left_cons_is_rev, 2)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.app.fuel_instrumented, @fuel_correspondence_SfLists.fold_left.fuel_instrumented, @fuel_correspondence_SfLists.rev.fuel_instrumented, @fuel_irrelevance_SfLists.fold_left.fuel_instrumented, @query, SfLists_interpretation_Tm_arrow_924f4bf62b5e2ee4bcbee7815297eef1, SfLists_interpretation_Tm_arrow_d0b6d3feb2ef676c1988a77f1e77ad4e, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, binder_x_da0ce6472e3557dab4a010c89b01a198_1, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Cons@tok, equality_tok_SfLists.Nil@tok, equation_with_fuel_SfLists.app.fuel_instrumented, equation_with_fuel_SfLists.fold_left.fuel_instrumented, equation_with_fuel_SfLists.rev.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, kinding_SfLists.ilist@tok, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.rev, typing_tok_SfLists.Cons@tok, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop
(push) ;; push{2

; Starting query at SfLists.fst(227,0-233,6)

(declare-fun label_1 () Bool)
(declare-fun Tm_refine_fae7b72d737eef16117e0331642aae22 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(227,0-233,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_fae7b72d737eef16117e0331642aae22 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_fae7b72d737eef16117e0331642aae22 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_fae7b72d737eef16117e0331642aae22))

:named refinement_kinding_Tm_refine_fae7b72d737eef16117e0331642aae22))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(227,0-233,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_fae7b72d737eef16117e0331642aae22 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
SfLists.ilist)

;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(227,0-233,6)

;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(227,0-233,6)
(or 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(227,37-233,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(227,0-233,6)
(and 
;; def=SfLists.fst(226,27-227,31); use=SfLists.fst(227,0-233,6)
(Valid 
;; def=SfLists.fst(226,27-227,31); use=SfLists.fst(227,0-233,6)
(Prims.op_Equals_Equals_Equals SfLists.ilist
SfLists.ilist
@x2
@x3)
)


;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(227,37-233,6)
(Valid 
;; def=SfLists.fst(227,37-233,6); use=SfLists.fst(227,37-233,6)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x1
@x4)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_fae7b72d737eef16117e0331642aae22 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_fae7b72d737eef16117e0331642aae22))

:named refinement_interpretation_Tm_refine_fae7b72d737eef16117e0331642aae22))
;;;;;;;;;;;;;;;;haseq for Tm_refine_fae7b72d737eef16117e0331642aae22
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,27-233,6); use=SfLists.fst(227,0-233,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_fae7b72d737eef16117e0331642aae22 @x0
@x1
@x2)))
(Valid (Prims.hasEq SfLists.ilist)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_fae7b72d737eef16117e0331642aae22 @x0
@x1
@x2))))
:qid haseqTm_refine_fae7b72d737eef16117e0331642aae22))

:named haseqTm_refine_fae7b72d737eef16117e0331642aae22))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(226,50-226,94); use=SfLists.fst(227,8-227,29)
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

; Encoding query formula : forall (l: SfLists.ilist)
;   (l': SfLists.ilist)
;   (l: SfLists.ilist)
;   (l': SfLists.ilist{l << l \/ l === l /\ l' << l'})
;   (_: Prims.squash Prims.l_True).
;   (*  - Could not prove post-condition
; *) Prims.hasEq SfLists.ilist


; Context: While encoding a query
; While typechecking the top-level declaration `let rec fold_left_cons_is_rev`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=dummy(0,0-0,0); use=SfLists.fst(227,0-233,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
SfLists.ilist)
(HasType @x2
SfLists.ilist)
(HasType @x3
(Tm_refine_fae7b72d737eef16117e0331642aae22 @x2
@x0
@x1))
(HasType @x4
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(227,8-227,29)
(or label_1

;; def=Prims.fst(73,23-73,30); use=SfLists.fst(227,8-227,29)
(Valid 
;; def=Prims.fst(73,23-73,30); use=SfLists.fst(227,8-227,29)
(Prims.hasEq SfLists.ilist)
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
; QUERY ID: (SfLists.fold_left_cons_is_rev, 3)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_SfLists.ilist__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec fold_left_cons_is_rev


; <Start encoding let rec fold_left_cons_is_rev>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.fold_left_cons_is_rev (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.fold_left_cons_is_rev@tok () Term)

; </end encoding let rec fold_left_cons_is_rev>


; encoding sigelt val SfLists.forallb


; <Skipped val SfLists.forallb/>

(push) ;; push{2

; Starting query at SfLists.fst(240,22-245,12)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;f : _: Prims.int -> Prims.bool (_: Prims.int -> Prims.bool)
(declare-fun x_d572127907d518d641a8068497b9d6e8_1 () Term)
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
;; def=SfLists.fst(239,27-239,42); use=SfLists.fst(240,8-240,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid SfLists_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named SfLists_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(239,27-239,42); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(and 
;; def=SfLists.fst(239,27-239,42); use=SfLists.fst(240,8-240,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Prims.bool))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid SfLists_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named SfLists_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;binder_x_d572127907d518d641a8068497b9d6e8_1
;;; Fact-ids: 
(assert (! (HasType x_d572127907d518d641a8068497b9d6e8_1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
:named binder_x_d572127907d518d641a8068497b9d6e8_1))

(declare-fun Tm_refine_2866e5db2f39239ee62503256849a2a0 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(239,24-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_2866e5db2f39239ee62503256849a2a0 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_2866e5db2f39239ee62503256849a2a0 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_2866e5db2f39239ee62503256849a2a0))

:named refinement_kinding_Tm_refine_2866e5db2f39239ee62503256849a2a0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(239,24-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2866e5db2f39239ee62503256849a2a0 @x2))
(and (HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)

;; def=SfLists.fst(240,22-245,12); use=SfLists.fst(240,22-245,12)

;; def=SfLists.fst(240,22-245,12); use=SfLists.fst(240,22-245,12)
(Valid 
;; def=SfLists.fst(240,22-245,12); use=SfLists.fst(240,22-245,12)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2866e5db2f39239ee62503256849a2a0 @x2)))
:qid refinement_interpretation_Tm_refine_2866e5db2f39239ee62503256849a2a0))

:named refinement_interpretation_Tm_refine_2866e5db2f39239ee62503256849a2a0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2866e5db2f39239ee62503256849a2a0
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(239,24-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2866e5db2f39239ee62503256849a2a0 @x0)))
(Valid (Prims.hasEq Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2866e5db2f39239ee62503256849a2a0 @x0))))
:qid haseqTm_refine_2866e5db2f39239ee62503256849a2a0))

:named haseqTm_refine_2866e5db2f39239ee62503256849a2a0))
(declare-fun SfLists.forallb (Term Term) Term)


;;;;;;;;;;;;;;;;l: ilist -> f: (_: Prims.int -> Prims.bool){l << l} -> Prims.bool
(declare-fun Tm_arrow_6a0cd974e545f9230aff0df07ea0828c () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_6a0cd974e545f9230aff0df07ea0828c
Tm_type)
:named kinding_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(239,15-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6a0cd974e545f9230aff0df07ea0828c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))
:qid SfLists_pre_typing_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))

:named SfLists_pre_typing_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(239,15-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6a0cd974e545f9230aff0df07ea0828c)
(and 
;; def=SfLists.fst(239,15-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
(Tm_refine_2866e5db2f39239ee62503256849a2a0 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c.1))

(IsTotFun @x0)

;; def=SfLists.fst(239,15-245,12); use=SfLists.fst(239,24-245,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))
:qid SfLists_interpretation_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))

:named SfLists_interpretation_Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))
(declare-fun SfLists.forallb@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfLists.forallb@tok
@x0)
@x1)
(SfLists.forallb @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfLists.forallb@tok
@x0)
@x1))
:qid token_correspondence_SfLists.forallb))

:named token_correspondence_SfLists.forallb))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.forallb@tok
Tm_arrow_6a0cd974e545f9230aff0df07ea0828c))

;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfLists.forallb@tok
@x1)
@x2)
(SfLists.forallb @x1
@x2))
 

:pattern ((SfLists.forallb @x1
@x2))
:qid function_token_typing_SfLists.forallb.1))
)
 

:pattern ((ApplyTT @x0
SfLists.forallb@tok))
:qid function_token_typing_SfLists.forallb))

:named function_token_typing_SfLists.forallb))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_2866e5db2f39239ee62503256849a2a0 @x0)))
(HasType (SfLists.forallb @x0
@x1)
Prims.bool))
 

:pattern ((SfLists.forallb @x0
@x1))
:qid typing_SfLists.forallb))

:named typing_SfLists.forallb))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.bool).
;   (forall (x: Prims.bool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==> (forall (b: Prims.int) (b: SfLists.ilist). l == SfLists.Cons b b ==> b << l))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec forallb`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(240,22-245,12)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(240,22-245,12)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(240,22-245,12)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(240,22-245,12)
(and (implies 
;; def=SfLists.fst(240,16-240,17); use=SfLists.fst(240,28-240,29)
(and 
;; def=SfLists.fst(240,16-240,17); use=SfLists.fst(240,28-240,29)
(not 
;; def=SfLists.fst(240,16-240,17); use=SfLists.fst(240,28-240,29)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(240,16-240,17); use=SfLists.fst(240,28-240,29)
(not 
;; def=SfLists.fst(240,16-240,17); use=SfLists.fst(240,28-240,29)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(240,22-245,12)
(not 
;; def=SfLists.fst(240,16-240,17); use=SfLists.fst(240,28-240,29)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(240,22-245,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(240,22-245,12)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(240,16-242,13); use=SfLists.fst(240,28-242,13)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x1
@x2))
)

;; def=SfLists.fst(240,22-245,12); use=SfLists.fst(244,24-244,25)
(or label_2

;; def=SfLists.fst(240,22-245,12); use=SfLists.fst(244,24-244,25)
(Valid 
;; def=SfLists.fst(240,22-245,12); use=SfLists.fst(244,24-244,25)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
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
; QUERY ID: (SfLists.forallb, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec forallb


; <Start encoding let rec forallb>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.forallb.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.forallb.fuel_instrumented_token () Term)
(declare-fun SfLists.forallb (Term Term) Term)
(declare-fun SfLists.forallb@tok () Term)
;;;;;;;;;;;;;;;;_: Prims.int -> Prims.bool
(declare-fun Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1 () Term)


;;;;;;;;;;;;;;;;l: ilist -> f: (_: Prims.int -> Prims.bool) -> Prims.bool
(declare-fun Tm_arrow_bcbebe2770ae8ceefd3e06c15b279820 () Term)

; </end encoding let rec forallb>


; encoding sigelt val SfLists.existsb


; <Skipped val SfLists.existsb/>

;;;;;;;;;;;;;;;;kinding_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! (HasType Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
Tm_type)
:named kinding_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(239,27-239,42); use=SfLists.fst(240,8-240,15)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid SfLists_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named SfLists_pre_typing_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(239,27-239,42); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
(and 
;; def=SfLists.fst(239,27-239,42); use=SfLists.fst(240,8-240,15)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Prims.bool))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
:qid SfLists_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))

:named SfLists_interpretation_Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(push) ;; push{2

; Starting query at SfLists.fst(248,22-253,12)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;f : _: Prims.int -> Prims.bool (_: Prims.int -> Prims.bool)
(declare-fun x_d572127907d518d641a8068497b9d6e8_1 () Term)

;;;;;;;;;;;;;;;;binder_x_d572127907d518d641a8068497b9d6e8_1
;;; Fact-ids: 
(assert (! (HasType x_d572127907d518d641a8068497b9d6e8_1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
:named binder_x_d572127907d518d641a8068497b9d6e8_1))

(declare-fun Tm_refine_c16d4931afd592c5268612b6edda5802 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(247,24-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c16d4931afd592c5268612b6edda5802 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c16d4931afd592c5268612b6edda5802 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c16d4931afd592c5268612b6edda5802))

:named refinement_kinding_Tm_refine_c16d4931afd592c5268612b6edda5802))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(247,24-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c16d4931afd592c5268612b6edda5802 @x2))
(and (HasTypeFuel @u0
@x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)

;; def=SfLists.fst(248,22-253,12); use=SfLists.fst(248,22-253,12)

;; def=SfLists.fst(248,22-253,12); use=SfLists.fst(248,22-253,12)
(Valid 
;; def=SfLists.fst(248,22-253,12); use=SfLists.fst(248,22-253,12)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c16d4931afd592c5268612b6edda5802 @x2)))
:qid refinement_interpretation_Tm_refine_c16d4931afd592c5268612b6edda5802))

:named refinement_interpretation_Tm_refine_c16d4931afd592c5268612b6edda5802))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c16d4931afd592c5268612b6edda5802
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(247,24-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c16d4931afd592c5268612b6edda5802 @x0)))
(Valid (Prims.hasEq Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c16d4931afd592c5268612b6edda5802 @x0))))
:qid haseqTm_refine_c16d4931afd592c5268612b6edda5802))

:named haseqTm_refine_c16d4931afd592c5268612b6edda5802))
(declare-fun SfLists.existsb (Term Term) Term)


;;;;;;;;;;;;;;;;l: ilist -> f: (_: Prims.int -> Prims.bool){l << l} -> Prims.bool
(declare-fun Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4
Tm_type)
:named kinding_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(247,15-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))
:qid SfLists_pre_typing_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))

:named SfLists_pre_typing_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(247,15-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4)
(and 
;; def=SfLists.fst(247,15-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
(Tm_refine_c16d4931afd592c5268612b6edda5802 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.bool))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid SfLists_interpretation_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4.1))

(IsTotFun @x0)

;; def=SfLists.fst(247,15-253,12); use=SfLists.fst(247,24-253,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
SfLists.ilist)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid SfLists_interpretation_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))
:qid SfLists_interpretation_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))

:named SfLists_interpretation_Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))
(declare-fun SfLists.existsb@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT SfLists.existsb@tok
@x0)
@x1)
(SfLists.existsb @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT SfLists.existsb@tok
@x0)
@x1))
:qid token_correspondence_SfLists.existsb))

:named token_correspondence_SfLists.existsb))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType SfLists.existsb@tok
Tm_arrow_e8bab20639a3e35eabb42006c9e6bbb4))

;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT SfLists.existsb@tok
@x1)
@x2)
(SfLists.existsb @x1
@x2))
 

:pattern ((SfLists.existsb @x1
@x2))
:qid function_token_typing_SfLists.existsb.1))
)
 

:pattern ((ApplyTT @x0
SfLists.existsb@tok))
:qid function_token_typing_SfLists.existsb))

:named function_token_typing_SfLists.existsb))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
(Tm_refine_c16d4931afd592c5268612b6edda5802 @x0)))
(HasType (SfLists.existsb @x0
@x1)
Prims.bool))
 

:pattern ((SfLists.existsb @x0
@x1))
:qid typing_SfLists.existsb))

:named typing_SfLists.existsb))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post Prims.bool).
;   (forall (x: Prims.bool). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==> (forall (b: Prims.int) (b: SfLists.ilist). l == SfLists.Cons b b ==> b << l))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec existsb`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(402,27-402,88); use=SfLists.fst(248,22-253,12)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(248,22-253,12)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(248,22-253,12)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(248,22-253,12)
(and (implies 
;; def=SfLists.fst(248,16-248,17); use=SfLists.fst(248,28-248,29)
(and 
;; def=SfLists.fst(248,16-248,17); use=SfLists.fst(248,28-248,29)
(not 
;; def=SfLists.fst(248,16-248,17); use=SfLists.fst(248,28-248,29)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(248,16-248,17); use=SfLists.fst(248,28-248,29)
(not 
;; def=SfLists.fst(248,16-248,17); use=SfLists.fst(248,28-248,29)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(248,22-253,12)
(not 
;; def=SfLists.fst(248,16-248,17); use=SfLists.fst(248,28-248,29)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(248,22-253,12)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(248,22-253,12)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
SfLists.ilist)

;; def=SfLists.fst(248,16-250,13); use=SfLists.fst(248,28-250,13)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x1
@x2))
)

;; def=SfLists.fst(248,22-253,12); use=SfLists.fst(252,24-252,25)
(or label_2

;; def=SfLists.fst(248,22-253,12); use=SfLists.fst(252,24-252,25)
(Valid 
;; def=SfLists.fst(248,22-253,12); use=SfLists.fst(252,24-252,25)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x2
x_da0ce6472e3557dab4a010c89b01a198_0)
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
; QUERY ID: (SfLists.existsb, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_da0ce6472e3557dab4a010c89b01a198_0, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, fuel_guarded_inversion_SfLists.ilist, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_tok_SfLists.Nil@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec existsb


; <Start encoding let rec existsb>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun SfLists.existsb.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun SfLists.existsb.fuel_instrumented_token () Term)
(declare-fun SfLists.existsb (Term Term) Term)
(declare-fun SfLists.existsb@tok () Term)





; </end encoding let rec existsb>


; encoding sigelt val SfLists.existsb'


; <Skipped val SfLists.existsb'/>


; encoding sigelt let existsb'


; <Start encoding let existsb'>


(declare-fun SfLists.existsb_ (Term Term) Term)


(declare-fun SfLists.existsb_@tok () Term)


(declare-fun Tm_abs_ee542b1ae92dade1b66ef61811d7e38e (Term) Term)

; </end encoding let existsb'>


; encoding sigelt val SfLists.existsb_existsb'


; <Skipped val SfLists.existsb_existsb'/>

;;;;;;;;;;;;;;;;typing_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e
;;; Fact-ids: Name SfLists.existsb'; Namespace SfLists
(assert (! 
;; def=SfLists.fst(257,12-257,21); use=SfLists.fst(257,12-257,21)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_ee542b1ae92dade1b66ef61811d7e38e @x0)
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
 

:pattern ((Tm_abs_ee542b1ae92dade1b66ef61811d7e38e @x0))
:qid typing_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e))

:named typing_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(HasType (SfLists.forallb @x0
@x1)
Prims.bool))
 

:pattern ((SfLists.forallb @x0
@x1))
:qid typing_SfLists.forallb))

:named typing_SfLists.forallb))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.existsb'; Namespace SfLists
(assert (! 
;; def=SfLists.fst(256,4-256,12); use=SfLists.fst(256,4-256,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(HasType (SfLists.existsb_ @x0
@x1)
Prims.bool))
 

:pattern ((SfLists.existsb_ @x0
@x1))
:qid typing_SfLists.existsb_))

:named typing_SfLists.existsb_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name SfLists.existsb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
SfLists.ilist)
(HasType @x1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(HasType (SfLists.existsb @x0
@x1)
Prims.bool))
 

:pattern ((SfLists.existsb @x0
@x1))
:qid typing_SfLists.existsb))

:named typing_SfLists.existsb))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(HasType (SfLists.forallb.fuel_instrumented @u0
@x1
@x2)
Prims.bool))
 

:pattern ((SfLists.forallb.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfLists.forallb.fuel_instrumented))

:named token_correspondence_SfLists.forallb.fuel_instrumented))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name SfLists.existsb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(HasType (SfLists.existsb.fuel_instrumented @u0
@x1
@x2)
Prims.bool))
 

:pattern ((SfLists.existsb.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_SfLists.existsb.fuel_instrumented))

:named token_correspondence_SfLists.existsb.fuel_instrumented))
;;; Fact-ids: Name Prims.op_Negation; Namespace Prims
(assert (! 
;; def=Prims.fst(534,4-534,15); use=Prims.fst(534,4-534,15)
(forall ((@x0 Term))
 (! (= (Prims.op_Negation @x0)
(BoxBool (not (BoxBool_proj_0 @x0))))
 

:pattern ((Prims.op_Negation @x0))
:qid primitive_Prims.op_Negation))

:named primitive_Prims.op_Negation))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e
;;; Fact-ids: Name SfLists.existsb'; Namespace SfLists
(assert (! 
;; def=SfLists.fst(257,12-257,21); use=SfLists.fst(257,12-257,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_ee542b1ae92dade1b66ef61811d7e38e @x1)
@x0)
(Prims.op_Negation (ApplyTT @x1
@x0)))
 

:pattern ((ApplyTT (Tm_abs_ee542b1ae92dade1b66ef61811d7e38e @x1)
@x0))
:qid interpretation_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e))

:named interpretation_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.forallb
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(= (SfLists.forallb.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-SfLists.Nil @lb3)
(BoxBool true)
(ite (is-SfLists.Cons @lb3)
(Prims.op_AmpAmp (ApplyTT @x2
(SfLists.Cons__0 @lb3))
(SfLists.forallb.fuel_instrumented @u0
(SfLists.Cons__1 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.forallb.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfLists.forallb.fuel_instrumented))

:named equation_with_fuel_SfLists.forallb.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: SfLists.existsb
;;; Fact-ids: Name SfLists.existsb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
SfLists.ilist)
(HasType @x2
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1))
(= (SfLists.existsb.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-SfLists.Nil @lb3)
(BoxBool false)
(ite (is-SfLists.Cons @lb3)
(Prims.op_BarBar (ApplyTT @x2
(SfLists.Cons__0 @lb3))
(SfLists.existsb.fuel_instrumented @u0
(SfLists.Cons__1 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((SfLists.existsb.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_SfLists.existsb.fuel_instrumented))

:named equation_with_fuel_SfLists.existsb.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for SfLists.existsb'
;;; Fact-ids: Name SfLists.existsb'; Namespace SfLists
(assert (! 
;; def=SfLists.fst(256,4-256,12); use=SfLists.fst(256,4-256,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.existsb_ @x0
@x1)
(Prims.op_Negation (SfLists.forallb @x0
(Tm_abs_ee542b1ae92dade1b66ef61811d7e38e @x1))))
 

:pattern ((SfLists.existsb_ @x0
@x1))
:qid equation_SfLists.existsb_))

:named equation_SfLists.existsb_))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfLists.forallb.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfLists.forallb.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfLists.forallb.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfLists.forallb.fuel_instrumented))

:named @fuel_irrelevance_SfLists.forallb.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name SfLists.existsb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (SfLists.existsb.fuel_instrumented (SFuel @u0)
@x1
@x2)
(SfLists.existsb.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((SfLists.existsb.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_SfLists.existsb.fuel_instrumented))

:named @fuel_irrelevance_SfLists.existsb.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.forallb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(240,8-240,15); use=SfLists.fst(240,8-240,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.forallb @x0
@x1)
(SfLists.forallb.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfLists.forallb @x0
@x1))
:qid @fuel_correspondence_SfLists.forallb.fuel_instrumented))

:named @fuel_correspondence_SfLists.forallb.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name SfLists.existsb; Namespace SfLists
(assert (! 
;; def=SfLists.fst(248,8-248,15); use=SfLists.fst(248,8-248,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (SfLists.existsb @x0
@x1)
(SfLists.existsb.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((SfLists.existsb @x0
@x1))
:qid @fuel_correspondence_SfLists.existsb.fuel_instrumented))

:named @fuel_correspondence_SfLists.existsb.fuel_instrumented))
(push) ;; push{2

; Starting query at SfLists.fst(264,31-268,6)

;;;;;;;;;;;;;;;;l : SfLists.ilist (SfLists.ilist)
(declare-fun x_da0ce6472e3557dab4a010c89b01a198_0 () Term)
;;;;;;;;;;;;;;;;binder_x_da0ce6472e3557dab4a010c89b01a198_0
;;; Fact-ids: 
(assert (! (HasType x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.ilist)
:named binder_x_da0ce6472e3557dab4a010c89b01a198_0))
;;;;;;;;;;;;;;;;f : _: Prims.int -> Prims.bool (_: Prims.int -> Prims.bool)
(declare-fun x_d572127907d518d641a8068497b9d6e8_1 () Term)

;;;;;;;;;;;;;;;;binder_x_d572127907d518d641a8068497b9d6e8_1
;;; Fact-ids: 
(assert (! (HasType x_d572127907d518d641a8068497b9d6e8_1
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)
:named binder_x_d572127907d518d641a8068497b9d6e8_1))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun SfLists.existsb_existsb_ (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun SfLists.existsb_existsb_@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit). SfLists.existsb l f = SfLists.existsb' l f ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == SfLists.Nil ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: SfLists.ilist).
;             l == SfLists.Cons b b ==>
;             b << l /\
;             (forall (any_result: (_: Prims.int -> Prims.bool)).
;                 f == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     SfLists.existsb b f = SfLists.existsb' b f ==>
;                     (forall (any_result: Prims.unit). k any_result))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec existsb_existsb'`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=SfLists.fst(264,31-268,6); use=SfLists.fst(264,31-268,6)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(264,31-268,6)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=SfLists.fst(263,31-263,59); use=SfLists.fst(264,31-268,6)
(or label_2

;; def=SfLists.fst(263,31-263,59); use=SfLists.fst(264,31-268,6)
(= (SfLists.existsb x_da0ce6472e3557dab4a010c89b01a198_0
x_d572127907d518d641a8068497b9d6e8_1)
(SfLists.existsb_ x_da0ce6472e3557dab4a010c89b01a198_0
x_d572127907d518d641a8068497b9d6e8_1))
)
)

;; def=Prims.fst(441,83-441,96); use=SfLists.fst(264,31-268,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(264,31-268,6)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(264,31-268,6)
(Valid 
;; def=Prims.fst(441,83-441,96); use=SfLists.fst(264,31-268,6)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(264,31-268,6)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=SfLists.fst(264,31-268,6)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(264,31-268,6)
(Valid 
;; def=Prims.fst(402,73-402,79); use=SfLists.fst(264,31-268,6)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=SfLists.fst(264,31-268,6)
(Valid 
;; def=Prims.fst(402,84-402,87); use=SfLists.fst(264,31-268,6)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(264,31-268,6)
(and (implies 
;; def=SfLists.fst(264,25-264,26); use=SfLists.fst(264,37-264,38)
(and 
;; def=SfLists.fst(264,25-264,26); use=SfLists.fst(264,37-264,38)
(not 
;; def=SfLists.fst(264,25-264,26); use=SfLists.fst(264,37-264,38)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=SfLists.fst(264,25-264,26); use=SfLists.fst(264,37-264,38)
(not 
;; def=SfLists.fst(264,25-264,26); use=SfLists.fst(264,37-264,38)
(BoxBool_proj_0 (SfLists.uu___is_Cons x_da0ce6472e3557dab4a010c89b01a198_0))
)
)

label_3)
(implies 
;; def=SfLists.fst(264,25-265,7); use=SfLists.fst(264,37-265,7)
(= x_da0ce6472e3557dab4a010c89b01a198_0
SfLists.Nil@tok)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(264,31-268,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(264,31-268,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(264,31-268,6)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=SfLists.fst(264,31-268,6)
(not 
;; def=SfLists.fst(264,25-264,26); use=SfLists.fst(264,37-264,38)
(BoxBool_proj_0 (SfLists.uu___is_Nil x_da0ce6472e3557dab4a010c89b01a198_0))
)


;; def=Prims.fst(413,99-413,120); use=SfLists.fst(264,31-268,6)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=SfLists.fst(264,31-268,6)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
SfLists.ilist)

;; def=SfLists.fst(264,25-266,13); use=SfLists.fst(264,37-266,13)
(= x_da0ce6472e3557dab4a010c89b01a198_0
(SfLists.Cons @x2
@x3))
)

;; def=Prims.fst(459,77-459,89); use=SfLists.fst(264,31-268,6)
(and 
;; def=SfLists.fst(264,31-268,6); use=SfLists.fst(267,32-267,33)
(or label_4

;; def=SfLists.fst(264,31-268,6); use=SfLists.fst(267,32-267,33)
(Valid 
;; def=SfLists.fst(264,31-268,6); use=SfLists.fst(267,32-267,33)
(Prims.precedes SfLists.ilist
SfLists.ilist
@x3
x_da0ce6472e3557dab4a010c89b01a198_0)
)
)


;; def=Prims.fst(451,66-451,102); use=SfLists.fst(264,31-268,6)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1)

;; def=SfLists.fst(262,33-264,28); use=SfLists.fst(264,31-268,6)
(= x_d572127907d518d641a8068497b9d6e8_1
@x4)
)

;; def=Prims.fst(441,36-441,97); use=SfLists.fst(267,12-267,28)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=SfLists.fst(263,31-263,59); use=SfLists.fst(267,12-267,28)
(= (SfLists.existsb @x3
x_d572127907d518d641a8068497b9d6e8_1)
(SfLists.existsb_ @x3
x_d572127907d518d641a8068497b9d6e8_1))
)

;; def=Prims.fst(451,66-451,102); use=SfLists.fst(264,31-268,6)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=SfLists.fst(264,31-268,6)
(Valid 
;; def=Prims.fst(451,90-451,102); use=SfLists.fst(264,31-268,6)
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
; QUERY ID: (SfLists.existsb_existsb', 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_SfLists.existsb.fuel_instrumented, @fuel_correspondence_SfLists.forallb.fuel_instrumented, @fuel_irrelevance_SfLists.existsb.fuel_instrumented, @fuel_irrelevance_SfLists.forallb.fuel_instrumented, @query, SfLists_pretyping_da0ce6472e3557dab4a010c89b01a198, binder_x_d572127907d518d641a8068497b9d6e8_1, binder_x_da0ce6472e3557dab4a010c89b01a198_0, bool_inversion, constructor_distinct_SfLists.Cons, constructor_distinct_SfLists.Nil, disc_equation_SfLists.Cons, disc_equation_SfLists.Nil, equality_tok_SfLists.Nil@tok, equation_SfLists.existsb_, equation_with_fuel_SfLists.existsb.fuel_instrumented, equation_with_fuel_SfLists.forallb.fuel_instrumented, fuel_guarded_inversion_SfLists.ilist, interpretation_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e, primitive_Prims.op_AmpAmp, primitive_Prims.op_BarBar, primitive_Prims.op_Negation, projection_inverse_BoxBool_proj_0, projection_inverse_SfLists.Cons__0, projection_inverse_SfLists.Cons__1, subterm_ordering_SfLists.Cons, typing_SfLists.forallb, typing_Tm_abs_ee542b1ae92dade1b66ef61811d7e38e, typing_tok_SfLists.Nil@tok
