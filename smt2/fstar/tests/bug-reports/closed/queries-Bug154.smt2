
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


; Externals for interface FStar.IndefiniteDescription


; <Start encoding val FStar.IndefiniteDescription.elim_squash>

(declare-fun FStar.IndefiniteDescription.elim_squash (Term Term) Term)
(declare-fun Tm_ghost_arrow_c6842219f247b61822e21d8f892190b3 () Term)
(declare-fun FStar.IndefiniteDescription.elim_squash@tok () Term)

; </end encoding val FStar.IndefiniteDescription.elim_squash>


; <Start encoding val FStar.IndefiniteDescription.indefinite_description_ghost>

(declare-fun Tm_arrow_81e65de2755319ee661cc1adc7d951e3 (Term) Term)
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
(declare-fun Tm_arrow_84543425b818e2d10a976186b8e8c250 (Term) Term)


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


; Externals for module FStar.Exn


; <Start encoding val FStar.Exn.raise>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Exn.raise (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Exn.raise@tok () Term)

; </end encoding val FStar.Exn.raise>


; End Externals for module FStar.Exn


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


; Externals for module FStar.List


; <Skipped val FStar.List.hd/>


; <Start encoding let hd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.hd (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.hd@tok () Term)

; </end encoding let hd>


; <Skipped val FStar.List.tail/>


; <Start encoding let tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.tail (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.tail@tok () Term)

; </end encoding let tail>


; <Skipped val FStar.List.tl/>


; <Start encoding let tl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.tl (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.tl@tok () Term)

; </end encoding let tl>


; <Skipped val FStar.List.last/>


; <Start encoding let rec last>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.last (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.last@tok () Term)

; </end encoding let rec last>


; <Skipped val FStar.List.init/>


; <Start encoding let rec init>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.init (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.init@tok () Term)

; </end encoding let rec init>


; <Skipped val FStar.List.nth/>


; <Start encoding let rec nth>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.nth (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.nth@tok () Term)

; </end encoding let rec nth>


; <Skipped val FStar.List.iter/>


; <Start encoding let rec iter>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.iter (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.iter@tok () Term)

; </end encoding let rec iter>


; <Skipped val FStar.List.iteri_aux/>


; <Start encoding let rec iteri_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.iteri_aux (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.iteri_aux@tok () Term)

; </end encoding let rec iteri_aux>


; <Skipped val FStar.List.iteri/>


; <Start encoding let iteri>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.iteri (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.iteri@tok () Term)

; </end encoding let iteri>


; <Skipped val FStar.List.map/>


; <Start encoding let rec map>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.map (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.map@tok () Term)

; </end encoding let rec map>


; <Skipped val FStar.List.mapT/>


; <Start encoding let mapT>


(declare-fun FStar.List.mapT (Term Term Term Term) Term)


(declare-fun FStar.List.mapT@tok () Term)


; </end encoding let mapT>


; <Skipped val FStar.List.mapi_init/>


; <Start encoding let rec mapi_init>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.mapi_init (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.mapi_init@tok () Term)

; </end encoding let rec mapi_init>


; <Skipped val FStar.List.mapi/>


; <Start encoding let mapi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.mapi (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.mapi@tok () Term)

; </end encoding let mapi>


; <Skipped val FStar.List.concatMap/>


; <Start encoding let rec concatMap>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.concatMap (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.concatMap@tok () Term)

; </end encoding let rec concatMap>


; <Skipped val FStar.List.map2/>


; <Start encoding let rec map2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.map2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.map2@tok () Term)

; </end encoding let rec map2>


; <Skipped val FStar.List.map3/>


; <Start encoding let rec map3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.map3 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.map3@tok () Term)

; </end encoding let rec map3>


; <Skipped val FStar.List.fold_left/>


; <Start encoding let rec fold_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.fold_left (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.fold_left@tok () Term)

; </end encoding let rec fold_left>


; <Skipped val FStar.List.fold_left2/>


; <Start encoding let rec fold_left2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.fold_left2 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.fold_left2@tok () Term)

; </end encoding let rec fold_left2>


; <Skipped val FStar.List.fold_right/>


; <Start encoding let rec fold_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.fold_right (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.fold_right@tok () Term)

; </end encoding let rec fold_right>


; <Skipped val FStar.List.filter/>


; <Start encoding let rec filter>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.filter (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.filter@tok () Term)

; </end encoding let rec filter>


; <Skipped val FStar.List.for_all/>


; <Start encoding let rec for_all>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.for_all (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.for_all@tok () Term)

; </end encoding let rec for_all>


; <Skipped val FStar.List.forall2/>


; <Start encoding let rec forall2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.forall2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.forall2@tok () Term)

; </end encoding let rec forall2>


; <Skipped val FStar.List.collect/>


; <Start encoding let rec collect>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.collect (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.collect@tok () Term)

; </end encoding let rec collect>


; <Skipped val FStar.List.tryFind/>


; <Start encoding let rec tryFind>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.tryFind (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.tryFind@tok () Term)

; </end encoding let rec tryFind>


; <Skipped val FStar.List.tryPick/>


; <Start encoding let rec tryPick>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.tryPick (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.tryPick@tok () Term)

; </end encoding let rec tryPick>


; <Skipped val FStar.List.choose/>


; <Start encoding let rec choose>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.choose (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.choose@tok () Term)

; </end encoding let rec choose>


; <Skipped val FStar.List.partition/>


; <Start encoding let rec partition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.partition (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.partition@tok () Term)

; </end encoding let rec partition>


; <Skipped val FStar.List.zip/>


; <Start encoding let rec zip>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.zip (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.zip@tok () Term)

; </end encoding let rec zip>


; <Skipped val FStar.List.sortWith/>


; <Start encoding let rec sortWith>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.sortWith (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.sortWith@tok () Term)

; </end encoding let rec sortWith>


; <Skipped val FStar.List.splitAt/>


; <Start encoding let rec splitAt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.splitAt (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.splitAt@tok () Term)

; </end encoding let rec splitAt>


; <Start encoding let filter_map>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.filter_map (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.filter_map@tok () Term)

; </end encoding let filter_map>


; <Skipped val FStar.List.index/>


; <Start encoding let index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.List.index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.List.index@tok () Term)

; </end encoding let index>


; End Externals for module FStar.List

(push) ;; push{1

; Internals for Bug154


; encoding sigelt val Bug154.search


; <Skipped val Bug154.search/>

(push) ;; push{2

; expect_failure

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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Nil @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid typing_Prims.uu___is_Nil))

:named typing_Prims.uu___is_Nil))
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
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Nil @x0
@x1)
(BoxBool (is-Prims.Nil @x1)))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid disc_equation_Prims.Nil))

:named disc_equation_Prims.Nil))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
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
(push) ;; push{3

; Starting query at Bug154.fst(21,2-23,63)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;l : Prims.list Prims.int (Prims.list Prims.int)
(declare-fun x_66b03f5c7897b05649fed8196554c587_1 () Term)
;;;;;;;;;;;;;;;;binder_x_66b03f5c7897b05649fed8196554c587_1
;;; Fact-ids: 
(assert (! (HasType x_66b03f5c7897b05649fed8196554c587_1
(Prims.list Prims.int))
:named binder_x_66b03f5c7897b05649fed8196554c587_1))
(declare-fun Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4))

:named refinement_kinding_Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x2))
(and (HasTypeFuel @u0
@x1
(Prims.list Prims.int))

;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)

;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(or 
;; def=Bug154.fst(21,2-23,63); use=Bug154.fst(21,2-23,63)
(Valid 
;; def=Bug154.fst(21,2-23,63); use=Bug154.fst(21,2-23,63)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(and 
;; def=Bug154.fst(18,13-20,16); use=Bug154.fst(18,13-20,16)
(Valid 
;; def=Bug154.fst(18,13-20,16); use=Bug154.fst(18,13-20,16)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(21,2-23,63); use=Bug154.fst(21,2-23,63)
(Valid 
;; def=Bug154.fst(21,2-23,63); use=Bug154.fst(21,2-23,63)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x1
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x2)))
:qid refinement_interpretation_Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4))

:named refinement_interpretation_Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x0)))
(Valid (Prims.hasEq (Prims.list Prims.int))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x0))))
:qid haseqTm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4))

:named haseqTm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4))
(declare-fun Bug154.search (Term Term) Term)

(declare-fun Tm_refine_40e3277faff668991ecb67df4a72b290 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_40e3277faff668991ecb67df4a72b290
Tm_type)
:named refinement_kinding_Tm_refine_40e3277faff668991ecb67df4a72b290))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(18,42-18,61); use=Bug154.fst(20,8-20,14)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_40e3277faff668991ecb67df4a72b290)
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(20,8-20,14)
(= @x1
(BoxBool false))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_40e3277faff668991ecb67df4a72b290))
:qid refinement_interpretation_Tm_refine_40e3277faff668991ecb67df4a72b290))

:named refinement_interpretation_Tm_refine_40e3277faff668991ecb67df4a72b290))
;;;;;;;;;;;;;;;;haseq for Tm_refine_40e3277faff668991ecb67df4a72b290
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_40e3277faff668991ecb67df4a72b290))
(Valid (Prims.hasEq Prims.bool)))
:named haseqTm_refine_40e3277faff668991ecb67df4a72b290))
;;;;;;;;;;;;;;;;x: Prims.int -> l: Prims.list Prims.int {x << x \/ x === x /\ l << l} -> b: Prims.bool{b = false}
(declare-fun Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44
Tm_type)
:named kinding_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))
:qid Bug154_pre_typing_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))

:named Bug154_pre_typing_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44)
(and 
;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_refine_40e3277faff668991ecb67df4a72b290))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Bug154_interpretation_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44.1))

(IsTotFun @x0)

;; def=Bug154.fst(18,13-23,63); use=Bug154.fst(18,13-23,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Bug154_interpretation_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))
:qid Bug154_interpretation_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))

:named Bug154_interpretation_Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))
(declare-fun Bug154.search@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(20,8-20,14); use=Bug154.fst(20,8-20,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search@tok
@x0)
@x1)
(Bug154.search @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Bug154.search@tok
@x0)
@x1))
:qid token_correspondence_Bug154.search))

:named token_correspondence_Bug154.search))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(20,8-20,14); use=Bug154.fst(20,8-20,14)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Bug154.search@tok
Tm_arrow_a8fe4b102a8bb04ebc174cdd5c9def44))

;; def=Bug154.fst(20,8-20,14); use=Bug154.fst(20,8-20,14)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search@tok
@x1)
@x2)
(Bug154.search @x1
@x2))
 

:pattern ((Bug154.search @x1
@x2))
:qid function_token_typing_Bug154.search.1))
)
 

:pattern ((ApplyTT @x0
Bug154.search@tok))
:qid function_token_typing_Bug154.search))

:named function_token_typing_Bug154.search))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(20,8-20,14); use=Bug154.fst(20,8-20,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_acc4c4dd8a9bcbc60347dadf5fd36bd4 @x0)))
(HasType (Bug154.search @x0
@x1)
Tm_refine_40e3277faff668991ecb67df4a72b290))
 

:pattern ((Bug154.search @x0
@x1))
:qid typing_Bug154.search))

:named typing_Bug154.search))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)



; Encoding query formula : forall (k: Prims.pure_post (b: Prims.bool{b = false})).
;   (forall (x: b: Prims.bool{b = false}). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (~(Nil? l) ==>
;     (forall (b: Prims.int) (b: Prims.list Prims.int). l == b :: b ==> (x = b || false) = false))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec search`
; While typechecking the top-level declaration `[@@expect_failure] let rec search`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post Tm_refine_40e3277faff668991ecb67df4a72b290))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(21,2-23,63)
(and (implies 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(and 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(21,2-23,63)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(20,17-23,11); use=Bug154.fst(21,8-23,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(or label_2

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool false))
(BoxBool false))
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
; QUERY ID: (Bug154.search, 1)
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
(Prims.pure_post Tm_refine_40e3277faff668991ecb67df4a72b290))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(21,2-23,63)
(and (implies 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(and 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(21,2-23,63)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(20,17-23,11); use=Bug154.fst(21,8-23,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(or label_2

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool false))
(BoxBool false))
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
; QUERY ID: (Bug154.search, 1)
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
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_40e3277faff668991ecb67df4a72b290))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(21,2-23,63)
(and (implies 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(and 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(21,2-23,63)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(20,17-23,11); use=Bug154.fst(21,8-23,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(or label_2

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool false))
(BoxBool false))
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
; QUERY ID: (Bug154.search, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='8' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel ZFuel)))))))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_40e3277faff668991ecb67df4a72b290))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(21,2-23,63)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(21,2-23,63)
(and (implies 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(and 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(21,2-23,63)
(not 
;; def=Bug154.fst(20,17-20,18); use=Bug154.fst(21,8-21,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(21,2-23,63)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(20,17-23,11); use=Bug154.fst(21,8-23,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(or label_2

;; def=Bug154.fst(18,50-18,59); use=Bug154.fst(23,16-23,63)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool false))
(BoxBool false))
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
; QUERY ID: (Bug154.search, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt val Bug154.search2


; <Skipped val Bug154.search2/>

(push) ;; push{2

; expect_failure

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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Nil @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid typing_Prims.uu___is_Nil))

:named typing_Prims.uu___is_Nil))
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
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(Prims.list @x0)))
(HasType (FStar.List.Tot.Base.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid typing_FStar.List.Tot.Base.mem))

:named typing_FStar.List.Tot.Base.mem))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(HasType (FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.List.Tot.Base.mem
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-Prims.Nil @lb4)
(BoxBool false)
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (Prims.op_Equality @x1
(Prims.Cons_hd @lb4)
@x2)))
(ite (= @lb5
(BoxBool true))
(BoxBool true)
(FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
(Prims.Cons_tl @lb4))))
Tm_unit)))))
 :weight 0


:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))

:named equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Nil @x0
@x1)
(BoxBool (is-Prims.Nil @x1)))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid disc_equation_Prims.Nil))

:named disc_equation_Prims.Nil))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.List.Tot.Base.mem.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.List.Tot.Base.mem @x0
@x1
@x2)
(FStar.List.Tot.Base.mem.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
(push) ;; push{3

; Starting query at Bug154.fst(28,2-30,64)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;l : Prims.list Prims.int (Prims.list Prims.int)
(declare-fun x_66b03f5c7897b05649fed8196554c587_1 () Term)
;;;;;;;;;;;;;;;;binder_x_66b03f5c7897b05649fed8196554c587_1
;;; Fact-ids: 
(assert (! (HasType x_66b03f5c7897b05649fed8196554c587_1
(Prims.list Prims.int))
:named binder_x_66b03f5c7897b05649fed8196554c587_1))
(declare-fun Tm_refine_57ade177306f6fef8f9e62bcb387b15b (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_57ade177306f6fef8f9e62bcb387b15b))

:named refinement_kinding_Tm_refine_57ade177306f6fef8f9e62bcb387b15b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x2))
(and (HasTypeFuel @u0
@x1
(Prims.list Prims.int))

;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)

;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(or 
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(and 
;; def=Bug154.fst(25,14-27,17); use=Bug154.fst(25,14-27,17)
(Valid 
;; def=Bug154.fst(25,14-27,17); use=Bug154.fst(25,14-27,17)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x1
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x2)))
:qid refinement_interpretation_Tm_refine_57ade177306f6fef8f9e62bcb387b15b))

:named refinement_interpretation_Tm_refine_57ade177306f6fef8f9e62bcb387b15b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_57ade177306f6fef8f9e62bcb387b15b
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x0)))
(Valid (Prims.hasEq (Prims.list Prims.int))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x0))))
:qid haseqTm_refine_57ade177306f6fef8f9e62bcb387b15b))

:named haseqTm_refine_57ade177306f6fef8f9e62bcb387b15b))
(declare-fun Bug154.search2 (Term Term) Term)

(declare-fun Tm_refine_db212410dc4fbe44760604c9a76fb0d4 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,44-25,48); use=Bug154.fst(27,8-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_db212410dc4fbe44760604c9a76fb0d4))

:named refinement_kinding_Tm_refine_db212410dc4fbe44760604c9a76fb0d4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,44-25,48); use=Bug154.fst(27,8-27,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(27,8-27,15)
(= @x1
(FStar.List.Tot.Base.mem Prims.int
@x2
@x3))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_db212410dc4fbe44760604c9a76fb0d4))

:named refinement_interpretation_Tm_refine_db212410dc4fbe44760604c9a76fb0d4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_db212410dc4fbe44760604c9a76fb0d4
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,44-25,48); use=Bug154.fst(27,8-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x0
@x1)))
(Valid (Prims.hasEq Prims.bool)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x0
@x1))))
:qid haseqTm_refine_db212410dc4fbe44760604c9a76fb0d4))

:named haseqTm_refine_db212410dc4fbe44760604c9a76fb0d4))
;;;;;;;;;;;;;;;;x: Prims.int -> l: Prims.list Prims.int {x << x \/ x === x /\ l << l} -> Prims.Pure Prims.bool
(declare-fun Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa
Tm_type)
:named kinding_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))
:qid Bug154_pre_typing_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))

:named Bug154_pre_typing_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa)
(and 
;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x1
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Bug154_interpretation_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa.1))

(IsTotFun @x0)

;; def=Bug154.fst(25,14-30,64); use=Bug154.fst(25,14-30,64)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Bug154_interpretation_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))
:qid Bug154_interpretation_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))

:named Bug154_interpretation_Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))
(declare-fun Bug154.search2@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(27,8-27,15); use=Bug154.fst(27,8-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search2@tok
@x0)
@x1)
(Bug154.search2 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Bug154.search2@tok
@x0)
@x1))
:qid token_correspondence_Bug154.search2))

:named token_correspondence_Bug154.search2))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(27,8-27,15); use=Bug154.fst(27,8-27,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Bug154.search2@tok
Tm_arrow_07a71d220af9413eccb5c8ad16e02ffa))

;; def=Bug154.fst(27,8-27,15); use=Bug154.fst(27,8-27,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search2@tok
@x1)
@x2)
(Bug154.search2 @x1
@x2))
 

:pattern ((Bug154.search2 @x1
@x2))
:qid function_token_typing_Bug154.search2.1))
)
 

:pattern ((ApplyTT @x0
Bug154.search2@tok))
:qid function_token_typing_Bug154.search2))

:named function_token_typing_Bug154.search2))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(27,8-27,15); use=Bug154.fst(27,8-27,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_57ade177306f6fef8f9e62bcb387b15b @x0)))
(HasType (Bug154.search2 @x0
@x1)
(Tm_refine_db212410dc4fbe44760604c9a76fb0d4 @x0
@x1)))
 

:pattern ((Bug154.search2 @x0
@x1))
:qid typing_Bug154.search2))

:named typing_Bug154.search2))
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.bool).
;   (forall (pure_result: Prims.bool). pure_result = FStar.List.Tot.Base.mem x l ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.bool).
;       (forall (x: Prims.bool). {:pattern Prims.guard_free (k x)}
;           (x ==
;             (match l with
;               | [] -> false
;               | n :: _ -> x = n || false) ==>
;             (forall (return_val: Prims.bool). return_val == x ==> p return_val)) ==>
;           k x) ==>
;       (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;       (l == [] ==> (forall (any_result: Prims.bool). k any_result)) /\
;       (~(Nil? l) ==>
;         (forall (b: Prims.int) (b: Prims.list Prims.int).
;             l == b :: b ==> (forall (any_result: Prims.bool). k any_result))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec search2`
; While typechecking the top-level declaration `[@@expect_failure] let rec search2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.bool))

;; def=Prims.fst(441,36-441,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.bool))

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(or label_2

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(= @x1
(FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)

;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.bool))

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (implies 
;; def=Bug154.fst(25,44-30,64); use=Bug154.fst(28,2-30,64)
(= @x2
(let ((@lb3 x_66b03f5c7897b05649fed8196554c587_1))
(ite (is-Prims.Nil @lb3)
(BoxBool false)
(ite (is-Prims.Cons @lb3)
(Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
(Prims.Cons_hd @lb3))
(BoxBool false))
Tm_unit))))


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

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

;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(28,2-30,64)
(and (implies 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(and 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_3)
(implies 
;; def=Bug154.fst(27,18-29,6); use=Bug154.fst(28,8-29,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.5))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(28,2-30,64)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.list Prims.int))

;; def=Bug154.fst(27,18-30,11); use=Bug154.fst(28,8-30,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x4)
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
; QUERY ID: (Bug154.search2, 1)
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
(assert (! (not 
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.bool))

;; def=Prims.fst(441,36-441,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.bool))

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(or label_2

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(= @x1
(FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)

;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.bool))

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (implies 
;; def=Bug154.fst(25,44-30,64); use=Bug154.fst(28,2-30,64)
(= @x2
(let ((@lb3 x_66b03f5c7897b05649fed8196554c587_1))
(ite (is-Prims.Nil @lb3)
(BoxBool false)
(ite (is-Prims.Cons @lb3)
(Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
(Prims.Cons_hd @lb3))
(BoxBool false))
Tm_unit))))


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

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

;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(28,2-30,64)
(and (implies 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(and 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_3)
(implies 
;; def=Bug154.fst(27,18-29,6); use=Bug154.fst(28,8-29,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.5))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(28,2-30,64)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.list Prims.int))

;; def=Bug154.fst(27,18-30,11); use=Bug154.fst(28,8-30,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x4)
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
; QUERY ID: (Bug154.search2, 1)
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
(assert (! (not 
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.bool))

;; def=Prims.fst(441,36-441,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.bool))

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(or label_2

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(= @x1
(FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)

;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.bool))

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (implies 
;; def=Bug154.fst(25,44-30,64); use=Bug154.fst(28,2-30,64)
(= @x2
(let ((@lb3 x_66b03f5c7897b05649fed8196554c587_1))
(ite (is-Prims.Nil @lb3)
(BoxBool false)
(ite (is-Prims.Cons @lb3)
(Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
(Prims.Cons_hd @lb3))
(BoxBool false))
Tm_unit))))


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

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

;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(28,2-30,64)
(and (implies 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(and 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_3)
(implies 
;; def=Bug154.fst(27,18-29,6); use=Bug154.fst(28,8-29,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.5))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(28,2-30,64)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.list Prims.int))

;; def=Bug154.fst(27,18-30,11); use=Bug154.fst(28,8-30,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x4)
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
; QUERY ID: (Bug154.search2, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='8' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel ZFuel)))))))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not 
;; def=Bug154.fst(28,2-30,64); use=Bug154.fst(28,2-30,64)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.bool))

;; def=Prims.fst(441,36-441,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.bool))

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(or label_2

;; def=Bug154.fst(25,84-25,100); use=Bug154.fst(28,2-30,64)
(= @x1
(FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)

;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug154.fst(28,2-30,64)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.bool))

;; def=Prims.fst(402,2-402,97); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (implies 
;; def=Bug154.fst(25,44-30,64); use=Bug154.fst(28,2-30,64)
(= @x2
(let ((@lb3 x_66b03f5c7897b05649fed8196554c587_1))
(ite (is-Prims.Nil @lb3)
(BoxBool false)
(ite (is-Prims.Cons @lb3)
(Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
(Prims.Cons_hd @lb3))
(BoxBool false))
Tm_unit))))


;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

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

;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(28,2-30,64)
(and (implies 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(and 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_3)
(implies 
;; def=Bug154.fst(27,18-29,6); use=Bug154.fst(28,8-29,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.5))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(28,2-30,64)
(not 
;; def=Bug154.fst(27,18-27,19); use=Bug154.fst(28,8-28,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(28,2-30,64)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.list Prims.int))

;; def=Bug154.fst(27,18-30,11); use=Bug154.fst(28,8-30,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x2
@x3))
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(28,2-30,64)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.bool)

;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Bug154.fst(28,2-30,64)
(ApplyTT @x1
@x4)
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
; QUERY ID: (Bug154.search2, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt val Bug154.search3


; <Skipped val Bug154.search3/>

(push) ;; push{2

; expect_failure

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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Nil @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid typing_Prims.uu___is_Nil))

:named typing_Prims.uu___is_Nil))
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
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(Prims.list @x0)))
(HasType (FStar.List.Tot.Base.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid typing_FStar.List.Tot.Base.mem))

:named typing_FStar.List.Tot.Base.mem))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(HasType (FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.List.Tot.Base.mem
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-Prims.Nil @lb4)
(BoxBool false)
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (Prims.op_Equality @x1
(Prims.Cons_hd @lb4)
@x2)))
(ite (= @lb5
(BoxBool true))
(BoxBool true)
(FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
(Prims.Cons_tl @lb4))))
Tm_unit)))))
 :weight 0


:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))

:named equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Nil @x0
@x1)
(BoxBool (is-Prims.Nil @x1)))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid disc_equation_Prims.Nil))

:named disc_equation_Prims.Nil))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.List.Tot.Base.mem.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.List.Tot.Base.mem @x0
@x1
@x2)
(FStar.List.Tot.Base.mem.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
(push) ;; push{3

; Starting query at Bug154.fst(35,2-37,47)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;l : Prims.list Prims.int (Prims.list Prims.int)
(declare-fun x_66b03f5c7897b05649fed8196554c587_1 () Term)
;;;;;;;;;;;;;;;;binder_x_66b03f5c7897b05649fed8196554c587_1
;;; Fact-ids: 
(assert (! (HasType x_66b03f5c7897b05649fed8196554c587_1
(Prims.list Prims.int))
:named binder_x_66b03f5c7897b05649fed8196554c587_1))
(declare-fun Tm_refine_aab3290590aaed76ac3e6c1f56af3859 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_aab3290590aaed76ac3e6c1f56af3859))

:named refinement_kinding_Tm_refine_aab3290590aaed76ac3e6c1f56af3859))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x2))
(and (HasTypeFuel @u0
@x1
(Prims.list Prims.int))

;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)

;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(or 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(35,2-37,47)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(35,2-37,47)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(and 
;; def=Bug154.fst(32,14-34,17); use=Bug154.fst(32,14-34,17)
(Valid 
;; def=Bug154.fst(32,14-34,17); use=Bug154.fst(32,14-34,17)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(35,2-37,47)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(35,2-37,47)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x1
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x2)))
:qid refinement_interpretation_Tm_refine_aab3290590aaed76ac3e6c1f56af3859))

:named refinement_interpretation_Tm_refine_aab3290590aaed76ac3e6c1f56af3859))
;;;;;;;;;;;;;;;;haseq for Tm_refine_aab3290590aaed76ac3e6c1f56af3859
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x0)))
(Valid (Prims.hasEq (Prims.list Prims.int))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x0))))
:qid haseqTm_refine_aab3290590aaed76ac3e6c1f56af3859))

:named haseqTm_refine_aab3290590aaed76ac3e6c1f56af3859))
(declare-fun Bug154.search3 (Term Term) Term)

(declare-fun Tm_refine_d529c130cf969b4d62aed9399dfcba78 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,43-32,72); use=Bug154.fst(34,8-34,15)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d529c130cf969b4d62aed9399dfcba78))

:named refinement_kinding_Tm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,43-32,72); use=Bug154.fst(34,8-34,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(34,8-34,15)
(iff 
;; def=Bug154.fst(32,44-32,45); use=Bug154.fst(34,8-34,15)
(BoxBool_proj_0 @x1)


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(34,8-34,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x2
@x3))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d529c130cf969b4d62aed9399dfcba78))

:named refinement_interpretation_Tm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d529c130cf969b4d62aed9399dfcba78
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,43-32,72); use=Bug154.fst(34,8-34,15)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))
(Valid (Prims.hasEq Prims.bool)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1))))
:qid haseqTm_refine_d529c130cf969b4d62aed9399dfcba78))

:named haseqTm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;x: Prims.int -> l: Prims.list Prims.int {x << x \/ x === x /\ l << l}   -> r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}
(declare-fun Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85
Tm_type)
:named kinding_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))
:qid Bug154_pre_typing_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))

:named Bug154_pre_typing_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85)
(and 
;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x1
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Bug154_interpretation_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85.1))

(IsTotFun @x0)

;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(32,14-37,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Bug154_interpretation_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))
:qid Bug154_interpretation_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))

:named Bug154_interpretation_Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))
(declare-fun Bug154.search3@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(34,8-34,15); use=Bug154.fst(34,8-34,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search3@tok
@x0)
@x1)
(Bug154.search3 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Bug154.search3@tok
@x0)
@x1))
:qid token_correspondence_Bug154.search3))

:named token_correspondence_Bug154.search3))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(34,8-34,15); use=Bug154.fst(34,8-34,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Bug154.search3@tok
Tm_arrow_efc7e1f00a25c2f1864f5ad20266de85))

;; def=Bug154.fst(34,8-34,15); use=Bug154.fst(34,8-34,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search3@tok
@x1)
@x2)
(Bug154.search3 @x1
@x2))
 

:pattern ((Bug154.search3 @x1
@x2))
:qid function_token_typing_Bug154.search3.1))
)
 

:pattern ((ApplyTT @x0
Bug154.search3@tok))
:qid function_token_typing_Bug154.search3))

:named function_token_typing_Bug154.search3))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(34,8-34,15); use=Bug154.fst(34,8-34,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_aab3290590aaed76ac3e6c1f56af3859 @x0)))
(HasType (Bug154.search3 @x0
@x1)
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))
 

:pattern ((Bug154.search3 @x0
@x1))
:qid typing_Bug154.search3))

:named typing_Bug154.search3))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_27ce3cd64fd831b8b251270fe9548879 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_27ce3cd64fd831b8b251270fe9548879
Tm_type)
:named refinement_kinding_Tm_refine_27ce3cd64fd831b8b251270fe9548879))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(32,43-32,72); use=Bug154.fst(35,2-37,47)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_27ce3cd64fd831b8b251270fe9548879)
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(35,2-37,47)
(iff 
;; def=Bug154.fst(32,44-32,45); use=Bug154.fst(35,2-37,47)
(BoxBool_proj_0 @x1)


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(35,2-37,47)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_27ce3cd64fd831b8b251270fe9548879))
:qid refinement_interpretation_Tm_refine_27ce3cd64fd831b8b251270fe9548879))

:named refinement_interpretation_Tm_refine_27ce3cd64fd831b8b251270fe9548879))
;;;;;;;;;;;;;;;;haseq for Tm_refine_27ce3cd64fd831b8b251270fe9548879
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_27ce3cd64fd831b8b251270fe9548879))
(Valid (Prims.hasEq Prims.bool)))
:named haseqTm_refine_27ce3cd64fd831b8b251270fe9548879))


; Encoding query formula : forall (k: Prims.pure_post (r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l})).
;   (forall (x: r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (l == [] ==> ~(FStar.List.Tot.Base.mem x l)) /\
;   (~(Nil? l) ==>
;     (forall (b: Prims.int) (b: Prims.list Prims.int).
;         l == b :: b ==>
;         (~(x = b) ==> x << x \/ b << l) /\
;         (forall (any_result: Prims.bool).
;             (x = b || Bug154.search3 x b && false) == any_result ==>
;             (x = b || Bug154.search3 x b && false <==> FStar.List.Tot.Base.mem x l))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec search3`
; While typechecking the top-level declaration `[@@expect_failure] let rec search3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(and 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(34,18-36,6); use=Bug154.fst(35,8-36,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(or label_2

;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(not 
;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(35,2-37,47)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(34,18-37,11); use=Bug154.fst(35,8-37,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(not 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(= x_ae567c2fb75be05905677af440075565_0
@x1)
)


;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(37,35-37,37)
(or label_3

;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x2
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(35,2-37,47)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=Bug154.fst(32,43-37,47); use=Bug154.fst(35,2-37,47)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false)))
@x3)
)

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(or label_4

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(iff 
;; def=Bug154.fst(32,44-32,45); use=Bug154.fst(37,15-37,47)
(or (BoxBool_proj_0 (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxBool_proj_0 (Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false))))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(37,15-37,47)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
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
; QUERY ID: (Bug154.search3, 1)
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
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(and 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(34,18-36,6); use=Bug154.fst(35,8-36,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(or label_2

;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(not 
;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(35,2-37,47)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(34,18-37,11); use=Bug154.fst(35,8-37,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(not 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(= x_ae567c2fb75be05905677af440075565_0
@x1)
)


;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(37,35-37,37)
(or label_3

;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x2
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(35,2-37,47)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=Bug154.fst(32,43-37,47); use=Bug154.fst(35,2-37,47)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false)))
@x3)
)

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(or label_4

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(iff 
;; def=Bug154.fst(32,44-32,45); use=Bug154.fst(37,15-37,47)
(or (BoxBool_proj_0 (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxBool_proj_0 (Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false))))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(37,15-37,47)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
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
; QUERY ID: (Bug154.search3, 1)
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
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(and 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(34,18-36,6); use=Bug154.fst(35,8-36,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(or label_2

;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(not 
;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(35,2-37,47)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(34,18-37,11); use=Bug154.fst(35,8-37,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(not 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(= x_ae567c2fb75be05905677af440075565_0
@x1)
)


;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(37,35-37,37)
(or label_3

;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x2
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(35,2-37,47)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=Bug154.fst(32,43-37,47); use=Bug154.fst(35,2-37,47)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false)))
@x3)
)

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(or label_4

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(iff 
;; def=Bug154.fst(32,44-32,45); use=Bug154.fst(37,15-37,47)
(or (BoxBool_proj_0 (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxBool_proj_0 (Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false))))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(37,15-37,47)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
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
; QUERY ID: (Bug154.search3, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='8' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel ZFuel)))))))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(35,2-37,47)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(and 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(34,18-36,6); use=Bug154.fst(35,8-36,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(or label_2

;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(not 
;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(36,10-36,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(35,2-37,47)
(not 
;; def=Bug154.fst(34,18-34,19); use=Bug154.fst(35,8-35,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(35,2-37,47)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(34,18-37,11); use=Bug154.fst(35,8-37,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(35,2-37,47)
(and (implies 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(not 
;; def=Bug154.fst(37,15-37,20); use=Bug154.fst(37,15-37,20)
(= x_ae567c2fb75be05905677af440075565_0
@x1)
)


;; def=Bug154.fst(32,14-37,47); use=Bug154.fst(37,35-37,37)
(or label_3

;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes Prims.int
Prims.int
x_ae567c2fb75be05905677af440075565_0
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Valid 
;; def=Bug154.fst(35,2-37,47); use=Bug154.fst(37,35-37,37)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x2
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

;; def=Prims.fst(451,66-451,102); use=Bug154.fst(35,2-37,47)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.bool)

;; def=Bug154.fst(32,43-37,47); use=Bug154.fst(35,2-37,47)
(= (Prims.op_BarBar (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false)))
@x3)
)

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(or label_4

;; def=Bug154.fst(32,51-32,70); use=Bug154.fst(37,15-37,47)
(iff 
;; def=Bug154.fst(32,44-32,45); use=Bug154.fst(37,15-37,47)
(or (BoxBool_proj_0 (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1))
(BoxBool_proj_0 (Prims.op_AmpAmp (Bug154.search3 x_ae567c2fb75be05905677af440075565_0
@x2)
(BoxBool false))))


;; def=Bug154.fst(32,58-32,70); use=Bug154.fst(37,15-37,47)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
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
; QUERY ID: (Bug154.search3, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt val Bug154.search4


; <Skipped val Bug154.search4/>

(push) ;; push{2

; expect_failure

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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Nil @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid typing_Prims.uu___is_Nil))

:named typing_Prims.uu___is_Nil))
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
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(Prims.list @x0)))
(HasType (FStar.List.Tot.Base.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid typing_FStar.List.Tot.Base.mem))

:named typing_FStar.List.Tot.Base.mem))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(HasType (FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.List.Tot.Base.mem
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-Prims.Nil @lb4)
(BoxBool false)
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (Prims.op_Equality @x1
(Prims.Cons_hd @lb4)
@x2)))
(ite (= @lb5
(BoxBool true))
(BoxBool true)
(FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
(Prims.Cons_tl @lb4))))
Tm_unit)))))
 :weight 0


:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))

:named equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Nil @x0
@x1)
(BoxBool (is-Prims.Nil @x1)))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid disc_equation_Prims.Nil))

:named disc_equation_Prims.Nil))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.List.Tot.Base.mem.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.List.Tot.Base.mem @x0
@x1
@x2)
(FStar.List.Tot.Base.mem.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
(push) ;; push{3

; Starting query at Bug154.fst(42,2-44,20)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_d529c130cf969b4d62aed9399dfcba78 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(39,43-39,72); use=Bug154.fst(42,2-44,20)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d529c130cf969b4d62aed9399dfcba78))

:named refinement_kinding_Tm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(39,43-39,72); use=Bug154.fst(42,2-44,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(42,2-44,20)
(iff 
;; def=Bug154.fst(39,44-39,45); use=Bug154.fst(42,2-44,20)
(BoxBool_proj_0 @x1)


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(42,2-44,20)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x2
@x3))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d529c130cf969b4d62aed9399dfcba78))

:named refinement_interpretation_Tm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d529c130cf969b4d62aed9399dfcba78
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(39,43-39,72); use=Bug154.fst(42,2-44,20)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))
(Valid (Prims.hasEq Prims.bool)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1))))
:qid haseqTm_refine_d529c130cf969b4d62aed9399dfcba78))

:named haseqTm_refine_d529c130cf969b4d62aed9399dfcba78))


; Encoding query formula : forall (x: Prims.int) (l: Prims.list Prims.int).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post (r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l})).
;     (forall (x: r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}).
;         {:pattern Prims.guard_free (k x)}
;         Prims.auto_squash (k x)) ==>
;     (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;     (l == [] ==> ~(FStar.List.Tot.Base.mem x l)) /\
;     (~(Nil? l) ==>
;       (forall (b: Prims.int) (b: Prims.list Prims.int).
;           l == b :: b ==> (x = b <==> FStar.List.Tot.Base.mem x l)))


; Context: While encoding a query
; While typechecking the top-level declaration `let search4`
; While typechecking the top-level declaration `[@@expect_failure] let search4`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.list Prims.int)))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(42,2-44,20)
(and (implies 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(and 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
@x1))
)
)

label_1)
(implies 
;; def=Bug154.fst(41,14-43,6); use=Bug154.fst(42,8-43,6)
(= @x1
(Prims.Nil Prims.int))


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(or label_2

;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(not 
;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(42,2-44,20)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.list Prims.int))

;; def=Bug154.fst(41,14-44,11); use=Bug154.fst(42,8-44,11)
(= @x1
(Prims.Cons Prims.int
@x3
@x4))
)

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(or label_3

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(iff 
;; def=Bug154.fst(39,44-39,45); use=Bug154.fst(44,15-44,20)
(= @x0
@x3)


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(44,15-44,20)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Bug154.search4, 1)
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
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Prims.list Prims.int)))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(42,2-44,20)
(and (implies 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(and 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
@x1))
)
)

label_1)
(implies 
;; def=Bug154.fst(41,14-43,6); use=Bug154.fst(42,8-43,6)
(= @x1
(Prims.Nil Prims.int))


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(or label_2

;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(not 
;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(42,2-44,20)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.list Prims.int))

;; def=Bug154.fst(41,14-44,11); use=Bug154.fst(42,8-44,11)
(= @x1
(Prims.Cons Prims.int
@x3
@x4))
)

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(or label_3

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(iff 
;; def=Bug154.fst(39,44-39,45); use=Bug154.fst(44,15-44,20)
(= @x0
@x3)


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(44,15-44,20)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Bug154.search4, 1)
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
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Prims.list Prims.int)))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(42,2-44,20)
(and (implies 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(and 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
@x1))
)
)

label_1)
(implies 
;; def=Bug154.fst(41,14-43,6); use=Bug154.fst(42,8-43,6)
(= @x1
(Prims.Nil Prims.int))


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(or label_2

;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(not 
;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(42,2-44,20)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.list Prims.int))

;; def=Bug154.fst(41,14-44,11); use=Bug154.fst(42,8-44,11)
(= @x1
(Prims.Cons Prims.int
@x3
@x4))
)

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(or label_3

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(iff 
;; def=Bug154.fst(39,44-39,45); use=Bug154.fst(44,15-44,20)
(= @x0
@x3)


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(44,15-44,20)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Bug154.search4, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='8' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel ZFuel)))))))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Prims.list Prims.int)))
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(42,2-44,20)
(ApplyTT @x2
@x3)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.2))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(42,2-44,20)
(and (implies 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(and 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
@x1))
)
)

label_1)
(implies 
;; def=Bug154.fst(41,14-43,6); use=Bug154.fst(42,8-43,6)
(= @x1
(Prims.Nil Prims.int))


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(or label_2

;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(not 
;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(43,10-43,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(42,2-44,20)
(not 
;; def=Bug154.fst(41,14-41,15); use=Bug154.fst(42,8-42,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
@x1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(42,2-44,20)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.list Prims.int))

;; def=Bug154.fst(41,14-44,11); use=Bug154.fst(42,8-44,11)
(= @x1
(Prims.Cons Prims.int
@x3
@x4))
)

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(or label_3

;; def=Bug154.fst(39,51-39,70); use=Bug154.fst(44,15-44,20)
(iff 
;; def=Bug154.fst(39,44-39,45); use=Bug154.fst(44,15-44,20)
(= @x0
@x3)


;; def=Bug154.fst(39,58-39,70); use=Bug154.fst(44,15-44,20)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x0
@x1))
)
)
)
 
;;no pats
:qid @query.4))
)
 
;;no pats
:qid @query.3))
))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Bug154.search4, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt val Bug154.search5


; <Skipped val Bug154.search5/>

(push) ;; push{2

; expect_failure

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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.T@tok
Prims.trivial)
:named typing_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.list @x0)))
(HasType (Prims.uu___is_Nil @x0
@x1)
Prims.bool))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid typing_Prims.uu___is_Nil))

:named typing_Prims.uu___is_Nil))
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
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(Prims.list @x0)))
(HasType (FStar.List.Tot.Base.mem @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid typing_FStar.List.Tot.Base.mem))

:named typing_FStar.List.Tot.Base.mem))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(HasType (FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
@x3))
:qid token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named token_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
Tm_type)
:named refinement_kinding_Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (is-Tm_arrow (PreType Prims.list@tok))
:named pre_kinding_Prims.list@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_free_addr_unused_in; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b197fcc3fe1a6a8a07bfa2aebd77a80a))
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
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Prims.list; Namespace Prims; Name Prims.Nil; Namespace Prims; Name Prims.Cons; Namespace Prims
(assert (! (= 319
(Term_constr_id Prims.list@tok))
:named fresh_token_Prims.list@tok))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: FStar.List.Tot.Base.mem
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Prims.eqtype)
(HasType @x2
@x1)
(HasType @x3
(Prims.list @x1)))
(= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(let ((@lb4 @x3))
(ite (is-Prims.Nil @lb4)
(BoxBool false)
(ite (is-Prims.Cons @lb4)
(let ((@lb5 (Prims.op_Equality @x1
(Prims.Cons_hd @lb4)
@x2)))
(ite (= @lb5
(BoxBool true))
(BoxBool true)
(FStar.List.Tot.Base.mem.fuel_instrumented @u0
@x1
@x2
(Prims.Cons_tl @lb4))))
Tm_unit)))))
 :weight 0


:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))

:named equation_with_fuel_FStar.List.Tot.Base.mem.fuel_instrumented))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Prims.uu___is_Nil; Namespace Prims
(assert (! 
;; def=Prims.fst(615,4-615,7); use=Prims.fst(615,4-615,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.uu___is_Nil @x0
@x1)
(BoxBool (is-Prims.Nil @x1)))
 

:pattern ((Prims.uu___is_Nil @x0
@x1))
:qid disc_equation_Prims.Nil))

:named disc_equation_Prims.Nil))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.core_mref; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(39,4-39,13); use=FStar.Monotonic.Heap.fsti(39,4-39,13)
(forall ((@x0 Term))
 (! (= 111
(Term_constr_id (FStar.Monotonic.Heap.core_mref @x0)))
 

:pattern ((FStar.Monotonic.Heap.core_mref @x0))
:qid constructor_distinct_FStar.Monotonic.Heap.core_mref))

:named constructor_distinct_FStar.Monotonic.Heap.core_mref))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3)
(FStar.List.Tot.Base.mem.fuel_instrumented ZFuel
@x1
@x2
@x3))
 

:pattern ((FStar.List.Tot.Base.mem.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3))
:qid @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_irrelevance_FStar.List.Tot.Base.mem.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name FStar.List.Tot.Base.mem; Namespace FStar.List.Tot.Base
(assert (! 
;; def=FStar.List.Tot.Base.fst(240,8-240,11); use=FStar.List.Tot.Base.fst(240,8-240,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.List.Tot.Base.mem @x0
@x1
@x2)
(FStar.List.Tot.Base.mem.fuel_instrumented MaxFuel
@x0
@x1
@x2))
 

:pattern ((FStar.List.Tot.Base.mem @x0
@x1
@x2))
:qid @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))

:named @fuel_correspondence_FStar.List.Tot.Base.mem.fuel_instrumented))
(push) ;; push{3

; Starting query at Bug154.fst(49,2-51,78)

;;;;;;;;;;;;;;;;x : Prims.int (Prims.int)
(declare-fun x_ae567c2fb75be05905677af440075565_0 () Term)
;;;;;;;;;;;;;;;;binder_x_ae567c2fb75be05905677af440075565_0
;;; Fact-ids: 
(assert (! (HasType x_ae567c2fb75be05905677af440075565_0
Prims.int)
:named binder_x_ae567c2fb75be05905677af440075565_0))
;;;;;;;;;;;;;;;;l : Prims.list Prims.int (Prims.list Prims.int)
(declare-fun x_66b03f5c7897b05649fed8196554c587_1 () Term)
;;;;;;;;;;;;;;;;binder_x_66b03f5c7897b05649fed8196554c587_1
;;; Fact-ids: 
(assert (! (HasType x_66b03f5c7897b05649fed8196554c587_1
(Prims.list Prims.int))
:named binder_x_66b03f5c7897b05649fed8196554c587_1))
(declare-fun Tm_refine_e554bd897464a747e46a2401ccde20f9 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_e554bd897464a747e46a2401ccde20f9 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_e554bd897464a747e46a2401ccde20f9 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_e554bd897464a747e46a2401ccde20f9))

:named refinement_kinding_Tm_refine_e554bd897464a747e46a2401ccde20f9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e554bd897464a747e46a2401ccde20f9 @x2))
(and (HasTypeFuel @u0
@x1
(Prims.list Prims.int))

;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)

;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(or 
;; def=Bug154.fst(49,2-51,78); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Bug154.fst(49,2-51,78); use=Bug154.fst(49,2-51,78)
(Prims.precedes Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(and 
;; def=Bug154.fst(46,14-48,17); use=Bug154.fst(46,14-48,17)
(Valid 
;; def=Bug154.fst(46,14-48,17); use=Bug154.fst(46,14-48,17)
(Prims.op_Equals_Equals_Equals Prims.int
Prims.int
@x2
x_ae567c2fb75be05905677af440075565_0)
)


;; def=Bug154.fst(49,2-51,78); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Bug154.fst(49,2-51,78); use=Bug154.fst(49,2-51,78)
(Prims.precedes (Prims.list Prims.int)
(Prims.list Prims.int)
@x1
x_66b03f5c7897b05649fed8196554c587_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e554bd897464a747e46a2401ccde20f9 @x2)))
:qid refinement_interpretation_Tm_refine_e554bd897464a747e46a2401ccde20f9))

:named refinement_interpretation_Tm_refine_e554bd897464a747e46a2401ccde20f9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e554bd897464a747e46a2401ccde20f9
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e554bd897464a747e46a2401ccde20f9 @x0)))
(Valid (Prims.hasEq (Prims.list Prims.int))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e554bd897464a747e46a2401ccde20f9 @x0))))
:qid haseqTm_refine_e554bd897464a747e46a2401ccde20f9))

:named haseqTm_refine_e554bd897464a747e46a2401ccde20f9))
(declare-fun Bug154.search5 (Term Term) Term)

(declare-fun Tm_refine_d529c130cf969b4d62aed9399dfcba78 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,43-46,72); use=Bug154.fst(48,8-48,15)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d529c130cf969b4d62aed9399dfcba78))

:named refinement_kinding_Tm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,43-46,72); use=Bug154.fst(48,8-48,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(46,51-46,70); use=Bug154.fst(48,8-48,15)
(iff 
;; def=Bug154.fst(46,44-46,45); use=Bug154.fst(48,8-48,15)
(BoxBool_proj_0 @x1)


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(48,8-48,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
@x2
@x3))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d529c130cf969b4d62aed9399dfcba78))

:named refinement_interpretation_Tm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d529c130cf969b4d62aed9399dfcba78
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,43-46,72); use=Bug154.fst(48,8-48,15)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))
(Valid (Prims.hasEq Prims.bool)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1))))
:qid haseqTm_refine_d529c130cf969b4d62aed9399dfcba78))

:named haseqTm_refine_d529c130cf969b4d62aed9399dfcba78))
;;;;;;;;;;;;;;;;x: Prims.int -> l: Prims.list Prims.int {x << x \/ x === x /\ l << l}   -> r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}
(declare-fun Tm_arrow_1d5211fd886be355a0f46327184d832e () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1d5211fd886be355a0f46327184d832e
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_1d5211fd886be355a0f46327184d832e
Tm_type)
:named kinding_Tm_arrow_1d5211fd886be355a0f46327184d832e))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1d5211fd886be355a0f46327184d832e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1d5211fd886be355a0f46327184d832e))
:qid Bug154_pre_typing_Tm_arrow_1d5211fd886be355a0f46327184d832e))

:named Bug154_pre_typing_Tm_arrow_1d5211fd886be355a0f46327184d832e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1d5211fd886be355a0f46327184d832e
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1d5211fd886be355a0f46327184d832e)
(and 
;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Prims.int)
(HasType @x2
(Tm_refine_e554bd897464a747e46a2401ccde20f9 @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x1
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Bug154_interpretation_Tm_arrow_1d5211fd886be355a0f46327184d832e.1))

(IsTotFun @x0)

;; def=Bug154.fst(46,14-51,78); use=Bug154.fst(46,14-51,78)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Bug154_interpretation_Tm_arrow_1d5211fd886be355a0f46327184d832e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1d5211fd886be355a0f46327184d832e))
:qid Bug154_interpretation_Tm_arrow_1d5211fd886be355a0f46327184d832e))

:named Bug154_interpretation_Tm_arrow_1d5211fd886be355a0f46327184d832e))
(declare-fun Bug154.search5@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(48,8-48,15); use=Bug154.fst(48,8-48,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search5@tok
@x0)
@x1)
(Bug154.search5 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Bug154.search5@tok
@x0)
@x1))
:qid token_correspondence_Bug154.search5))

:named token_correspondence_Bug154.search5))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(48,8-48,15); use=Bug154.fst(48,8-48,15)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Bug154.search5@tok
Tm_arrow_1d5211fd886be355a0f46327184d832e))

;; def=Bug154.fst(48,8-48,15); use=Bug154.fst(48,8-48,15)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Bug154.search5@tok
@x1)
@x2)
(Bug154.search5 @x1
@x2))
 

:pattern ((Bug154.search5 @x1
@x2))
:qid function_token_typing_Bug154.search5.1))
)
 

:pattern ((ApplyTT @x0
Bug154.search5@tok))
:qid function_token_typing_Bug154.search5))

:named function_token_typing_Bug154.search5))

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(48,8-48,15); use=Bug154.fst(48,8-48,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
(Tm_refine_e554bd897464a747e46a2401ccde20f9 @x0)))
(HasType (Bug154.search5 @x0
@x1)
(Tm_refine_d529c130cf969b4d62aed9399dfcba78 @x0
@x1)))
 

:pattern ((Bug154.search5 @x0
@x1))
:qid typing_Bug154.search5))

:named typing_Bug154.search5))
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
(declare-fun Tm_refine_27ce3cd64fd831b8b251270fe9548879 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_27ce3cd64fd831b8b251270fe9548879
Tm_type)
:named refinement_kinding_Tm_refine_27ce3cd64fd831b8b251270fe9548879))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Bug154.fst(46,43-46,72); use=Bug154.fst(49,2-51,78)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_27ce3cd64fd831b8b251270fe9548879)
(and (HasTypeFuel @u0
@x1
Prims.bool)

;; def=Bug154.fst(46,51-46,70); use=Bug154.fst(49,2-51,78)
(iff 
;; def=Bug154.fst(46,44-46,45); use=Bug154.fst(49,2-51,78)
(BoxBool_proj_0 @x1)


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(49,2-51,78)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_27ce3cd64fd831b8b251270fe9548879))
:qid refinement_interpretation_Tm_refine_27ce3cd64fd831b8b251270fe9548879))

:named refinement_interpretation_Tm_refine_27ce3cd64fd831b8b251270fe9548879))
;;;;;;;;;;;;;;;;haseq for Tm_refine_27ce3cd64fd831b8b251270fe9548879
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.hasEq Tm_refine_27ce3cd64fd831b8b251270fe9548879))
(Valid (Prims.hasEq Prims.bool)))
:named haseqTm_refine_27ce3cd64fd831b8b251270fe9548879))






; Encoding query formula : forall (k: Prims.pure_post (r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l})).
;   (forall (x: r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}). {:pattern Prims.guard_free (k x)}
;       Prims.auto_squash (k x)) ==>
;   (~(Nil? l) /\ ~(Cons? l) ==> Prims.l_False) /\
;   (l == [] ==> ~(FStar.List.Tot.Base.mem x l)) /\
;   (~(Nil? l) ==>
;     (forall (b: Prims.int) (b: Prims.list Prims.int).
;         l == b :: b ==>
;         (forall (k: Prims.pure_post (r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l})).
;             (forall (x: r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}).
;                 {:pattern Prims.guard_free (k x)}
;                 Prims.auto_squash (k x)) ==>
;             (x = b == true ==> FStar.List.Tot.Base.mem x l) /\
;             (~(x = b = true) ==>
;               (forall (b: Prims.bool).
;                   x = b == b ==>
;                   (forall (k: Prims.pure_post (r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l})).
;                       (forall (x: r: Prims.bool{r <==> FStar.List.Tot.Base.mem x l}).
;                           {:pattern Prims.guard_free (k x)}
;                           Prims.auto_squash (k x)) ==>
;                       (forall (b: Prims.bool). false == b ==> ~(FStar.List.Tot.Base.mem x l))))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec search5`
; While typechecking the top-level declaration `[@@expect_failure] let rec search5`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(and 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(48,18-50,6); use=Bug154.fst(49,8-50,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(or label_2

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(48,18-51,11); use=Bug154.fst(49,8-51,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.5))
)

;; def=Prims.fst(389,2-389,39); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(or label_3

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Bug154.fst(51,18-51,78); use=Bug154.fst(51,18-51,78)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
@x4)
)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x5
@x6)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid @query.8))
)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=Bug154.fst(51,43-51,77); use=Bug154.fst(51,43-51,77)
(= (BoxBool false)
@x6)
)

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(or label_4

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.7)))
 
;;no pats
:qid @query.6))
))
)
 
;;no pats
:qid @query.4)))
 
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
; QUERY ID: (Bug154.search5, 1)
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
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(and 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(48,18-50,6); use=Bug154.fst(49,8-50,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(or label_2

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(48,18-51,11); use=Bug154.fst(49,8-51,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.5))
)

;; def=Prims.fst(389,2-389,39); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(or label_3

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Bug154.fst(51,18-51,78); use=Bug154.fst(51,18-51,78)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
@x4)
)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x5
@x6)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid @query.8))
)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=Bug154.fst(51,43-51,77); use=Bug154.fst(51,43-51,77)
(= (BoxBool false)
@x6)
)

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(or label_4

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.7)))
 
;;no pats
:qid @query.6))
))
)
 
;;no pats
:qid @query.4)))
 
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
; QUERY ID: (Bug154.search5, 1)
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
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(and 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(48,18-50,6); use=Bug154.fst(49,8-50,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(or label_2

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(48,18-51,11); use=Bug154.fst(49,8-51,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.5))
)

;; def=Prims.fst(389,2-389,39); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(or label_3

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Bug154.fst(51,18-51,78); use=Bug154.fst(51,18-51,78)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
@x4)
)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x5
@x6)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid @query.8))
)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=Bug154.fst(51,43-51,77); use=Bug154.fst(51,43-51,77)
(= (BoxBool false)
@x6)
)

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(or label_4

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.7)))
 
;;no pats
:qid @query.6))
))
)
 
;;no pats
:qid @query.4)))
 
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
; QUERY ID: (Bug154.search5, 1)
; STATUS: unknown because (incomplete quantifiers)

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(push) ;; push{0

; <fuel='8' ifuel='2'>

;;; Fact-ids: 
(assert (! (= MaxFuel
(SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel (SFuel ZFuel)))))))))
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
(SFuel (SFuel ZFuel)))
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(and 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Cons Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)
)

label_1)
(implies 
;; def=Bug154.fst(48,18-50,6); use=Bug154.fst(49,8-50,6)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Nil Prims.int))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(or label_2

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(50,10-50,15)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(48,18-48,19); use=Bug154.fst(49,8-49,9)
(BoxBool_proj_0 (Prims.uu___is_Nil Prims.int
x_66b03f5c7897b05649fed8196554c587_1))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.list Prims.int))

;; def=Bug154.fst(48,18-51,11); use=Bug154.fst(49,8-51,11)
(= x_66b03f5c7897b05649fed8196554c587_1
(Prims.Cons Prims.int
@x1
@x2))
)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x3
@x4)
)

 

:pattern ((ApplyTT @x3
@x4))
:qid @query.5))
)

;; def=Prims.fst(389,2-389,39); use=Bug154.fst(49,2-51,78)
(and (implies 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))


;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(or label_3

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,29-51,33)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
(implies 
;; def=Prims.fst(389,19-389,21); use=Bug154.fst(49,2-51,78)
(not 
;; def=Bug154.fst(51,18-51,23); use=Bug154.fst(51,18-51,23)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.bool)

;; def=Bug154.fst(51,18-51,78); use=Bug154.fst(51,18-51,78)
(= (Prims.op_Equality Prims.int
x_ae567c2fb75be05905677af440075565_0
@x1)
@x4)
)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(Prims.pure_post Tm_refine_27ce3cd64fd831b8b251270fe9548879))

;; def=Prims.fst(402,27-402,88); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(Valid 
;; def=Prims.fst(402,84-402,87); use=Bug154.fst(49,2-51,78)
(ApplyTT @x5
@x6)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid @query.8))
)

;; def=Prims.fst(413,99-413,120); use=Bug154.fst(49,2-51,78)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Prims.bool)

;; def=Bug154.fst(51,43-51,77); use=Bug154.fst(51,43-51,77)
(= (BoxBool false)
@x6)
)

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(or label_4

;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(not 
;; def=Bug154.fst(46,58-46,70); use=Bug154.fst(51,72-51,77)
(BoxBool_proj_0 (FStar.List.Tot.Base.mem Prims.int
x_ae567c2fb75be05905677af440075565_0
x_66b03f5c7897b05649fed8196554c587_1))
)
)
)
 
;;no pats
:qid @query.9))
)
 
;;no pats
:qid @query.7)))
 
;;no pats
:qid @query.6))
))
)
 
;;no pats
:qid @query.4)))
 
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
; QUERY ID: (Bug154.search5, 1)
; STATUS: unknown because (incomplete quantifiers)
