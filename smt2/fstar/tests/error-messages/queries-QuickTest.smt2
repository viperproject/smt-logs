
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


; Externals for interface FStar.Sealed


; <Start encoding val FStar.Sealed.sealed>

(declare-fun FStar.Sealed.sealed (Term) Term)

(declare-fun FStar.Sealed.sealed@tok () Term)

; </end encoding val FStar.Sealed.sealed>


; <Start encoding val FStar.Sealed.sealed_singl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Sealed.sealed_singl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Sealed.sealed_singl@tok () Term)

; </end encoding val FStar.Sealed.sealed_singl>


; <Start encoding val FStar.Sealed.seal>

(declare-fun FStar.Sealed.seal (Term Term) Term)
(declare-fun Tm_arrow_202c0385508095b22536f7b176783182 () Term)
(declare-fun FStar.Sealed.seal@tok () Term)

; </end encoding val FStar.Sealed.seal>


; <Start encoding val FStar.Sealed.map_seal>

(declare-fun Tm_arrow_6980332764c4493a7b0df5c02f7aefbe (Term Term) Term)
(declare-fun FStar.Sealed.map_seal (Term Term Term Term) Term)

(declare-fun Tm_arrow_8ae919a1b422d31df5f3a30011fa6e98 () Term)
(declare-fun FStar.Sealed.map_seal@tok () Term)

; </end encoding val FStar.Sealed.map_seal>


; <Start encoding val FStar.Sealed.bind_seal>

(declare-fun Tm_arrow_5dc851dfbcbc38067d4415ede8f88e9f (Term Term) Term)
(declare-fun FStar.Sealed.bind_seal (Term Term Term Term) Term)

(declare-fun Tm_arrow_4d90a5e6583ddd9ddbd451cbed0e9d01 () Term)
(declare-fun FStar.Sealed.bind_seal@tok () Term)

; </end encoding val FStar.Sealed.bind_seal>


; End Externals for interface FStar.Sealed


; Externals for interface FStar.Range


; <Start encoding val FStar.Range.__range>

(declare-fun FStar.Range.__range () Term)

; </end encoding val FStar.Range.__range>


; <Start encoding let range>

(declare-fun FStar.Range.range () Term)

; </end encoding let range>


; <Start encoding val FStar.Range.__range_0>

(declare-fun FStar.Range.__range_0 (Dummy_sort) Term)

; </end encoding val FStar.Range.__range_0>


; <Start encoding let range_0>

(declare-fun FStar.Range.range_0 (Dummy_sort) Term)

; </end encoding let range_0>


; <Start encoding val FStar.Range.__mk_range>

(declare-fun FStar.Range.__mk_range (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_692aa0ebe01353db00b5203de7da6785 () Term)
(declare-fun FStar.Range.__mk_range@tok () Term)

; </end encoding val FStar.Range.__mk_range>


; <Start encoding val FStar.Range.mk_range>

(declare-fun FStar.Range.mk_range (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_2d3d853349c0a35c0e0c8d13086384ea () Term)
(declare-fun FStar.Range.mk_range@tok () Term)

; </end encoding val FStar.Range.mk_range>


; <Start encoding val FStar.Range.join_range>

(declare-fun FStar.Range.join_range (Term Term) Term)
(declare-fun Tm_arrow_6eaaa31f2d36a5c7cca7eb998962a7fa () Term)
(declare-fun FStar.Range.join_range@tok () Term)

; </end encoding val FStar.Range.join_range>


; <Start encoding let labeled>

(declare-fun FStar.Range.labeled (Term Term Term) Term)
(declare-fun Tm_arrow_ab5899212fc4c148181589be7fd78af1 () Term)
(declare-fun FStar.Range.labeled@tok () Term)

; </end encoding let labeled>


; <Start encoding val FStar.Range.explode>

(declare-fun FStar.Range.explode (Term) Term)
(declare-fun Tm_arrow_f9315f3207257087f0bf3975f13024e3 () Term)
(declare-fun FStar.Range.explode@tok () Term)

; </end encoding val FStar.Range.explode>


; End Externals for interface FStar.Range

(push) ;; push{1

; Internals for QuickTest


; encoding sigelt let va_qattr


; <Start encoding let va_qattr>

(declare-fun QuickTest.va_qattr (Dummy_sort) Term)

; </end encoding let va_qattr>


; encoding sigelt type QuickTest.vale_state


; <Start encoding type QuickTest.vale_state>

;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.vale_state () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.Mkvale_state (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.Mkvale_state_vs_ok (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: QuickTest.Mkvale_state
(declare-fun QuickTest.Mkvale_state@tok () Term)
;;;;;;;;;;;;;;;;vs_ok: Prims.bool -> vale_state
(declare-fun Tm_arrow_9e4c502c1153fda571b1cca63a959427 () Term)

; <start constructor QuickTest.vale_state>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.vale_state ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
104)
(= __@x0
QuickTest.vale_state)))

; </end constructor QuickTest.vale_state>


; <start constructor QuickTest.Mkvale_state>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.Mkvale_state ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
110)
(= __@x0
(QuickTest.Mkvale_state (QuickTest.Mkvale_state_vs_ok __@x0)))))

; </end constructor QuickTest.Mkvale_state>


; </end encoding type QuickTest.vale_state>


; encoding sigelt val QuickTest.__proj__Mkvale_state__item__vs_ok


; <Start encoding val QuickTest.__proj__Mkvale_state__item__vs_ok>

(declare-fun QuickTest.__proj__Mkvale_state__item__vs_ok (Term) Term)
;;;;;;;;;;;;;;;;projectee: vale_state -> Prims.bool
(declare-fun Tm_arrow_7ecc6d8a119d4c4eafc670877b96d855 () Term)
(declare-fun QuickTest.__proj__Mkvale_state__item__vs_ok@tok () Term)

; </end encoding val QuickTest.__proj__Mkvale_state__item__vs_ok>


; encoding sigelt let __proj__Mkvale_state__item__vs_ok


; <Skipped let __proj__Mkvale_state__item__vs_ok/>


; encoding sigelt let quickProc_wp


; <Start encoding let quickProc_wp>

(declare-fun QuickTest.quickProc_wp (Term) Term)

(declare-fun QuickTest.quickProc_wp@tok () Term)
;;;;;;;;;;;;;;;;wp_continue: vale_state -> _: a -> Type
(declare-fun Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab (Term) Term)
;;;;;;;;;;;;;;;;s0: vale_state -> _: (wp_continue: vale_state -> _: a -> Type) -> Type
(declare-fun Tm_arrow_745e349e9df404734fa11a4683e1fcbb (Term) Term)

; </end encoding let quickProc_wp>


; encoding sigelt let t_ensure


; <Start encoding let t_ensure>


(declare-fun QuickTest.t_ensure (Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;wp: quickProc_wp a -> s0: vale_state -> k: (_: vale_state -> _: a -> Type) -> _: vale_state & a   -> Type
(declare-fun Tm_arrow_923f38b636cedc8ee89d24c68fff98e5 () Term)
(declare-fun QuickTest.t_ensure@tok () Term)


; </end encoding let t_ensure>


; encoding sigelt let t_proof


; <Start encoding let t_proof>

(declare-fun QuickTest.t_proof (Term Term) Term)
;;;;;;;;;;;;;;;;wp: quickProc_wp a -> Type
(declare-fun Tm_arrow_023bfe1fbd58434af1d307070eba4e78 () Term)
(declare-fun QuickTest.t_proof@tok () Term)

(declare-fun Tm_refine_32499093eded1c2fa98e9fd1afad83de (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: vale_state -> k: (_: vale_state -> _: a -> Type) -> Prims.Ghost (vale_state & a)
(declare-fun Tm_ghost_arrow_a31a1eb1b3bdffb227fe8241a935c923 (Term Term) Term)

; </end encoding let t_proof>


; encoding sigelt type QuickTest.quickCode


; <Start encoding type QuickTest.quickCode>

;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.quickCode (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun QuickTest.quickCode@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.QProc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QProc_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QProc_wp (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QProc_proof (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: QuickTest.QProc
(declare-fun QuickTest.QProc@tok () Term)
;;;;;;;;;;;;;;;;wp: quickProc_wp a -> proof: t_proof wp -> quickCode a
(declare-fun Tm_arrow_a613a220e4e2f0b8455d2e238a43b184 () Term)

; <start constructor QuickTest.quickCode>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.quickCode ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
137)
(exists ((@x0 Term))
 (! (= __@x0
(QuickTest.quickCode @x0))
 
;;no pats
:qid is-QuickTest.quickCode))))

; </end constructor QuickTest.quickCode>


; <start constructor QuickTest.QProc>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.QProc ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
144)
(= __@x0
(QuickTest.QProc (QuickTest.QProc_a __@x0)
(QuickTest.QProc_wp __@x0)
(QuickTest.QProc_proof __@x0)))))

; </end constructor QuickTest.QProc>


; </end encoding type QuickTest.quickCode>


; encoding sigelt val QuickTest.uu___is_QProc


; <Start encoding val QuickTest.uu___is_QProc>

(declare-fun QuickTest.uu___is_QProc (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: quickCode a -> Prims.bool
(declare-fun Tm_arrow_e8832e4d9aae9e36e62c96d3ffa93fcc () Term)
(declare-fun QuickTest.uu___is_QProc@tok () Term)

; </end encoding val QuickTest.uu___is_QProc>


; encoding sigelt let uu___is_QProc


; <Skipped let uu___is_QProc/>


; encoding sigelt val QuickTest.__proj__QProc__item__wp


; <Start encoding val QuickTest.__proj__QProc__item__wp>

(declare-fun QuickTest.__proj__QProc__item__wp (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: quickCode a -> quickProc_wp a
(declare-fun Tm_arrow_fbb7877004a4db1d8ccd0f9c8fc93d2d () Term)
(declare-fun QuickTest.__proj__QProc__item__wp@tok () Term)

; </end encoding val QuickTest.__proj__QProc__item__wp>


; encoding sigelt let __proj__QProc__item__wp


; <Skipped let __proj__QProc__item__wp/>


; encoding sigelt val QuickTest.__proj__QProc__item__proof


; <Start encoding val QuickTest.__proj__QProc__item__proof>

(declare-fun QuickTest.__proj__QProc__item__proof (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: quickCode a -> t_proof projectee.wp
(declare-fun Tm_arrow_aa850fe32ea3b142ebad855fb46f6b92 () Term)
(declare-fun QuickTest.__proj__QProc__item__proof@tok () Term)

; </end encoding val QuickTest.__proj__QProc__item__proof>


; encoding sigelt let __proj__QProc__item__proof


; <Skipped let __proj__QProc__item__proof/>


; encoding sigelt let labeled_wrap


; <Start encoding let labeled_wrap>

(declare-fun QuickTest.labeled_wrap (Term Term Term) Term)

(declare-fun QuickTest.labeled_wrap@tok () Term)

; </end encoding let labeled_wrap>

;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.__cache_version_number__; Namespace Prims
(assert (! (HasType Prims.__cache_version_number__
Prims.int)
:named function_token_typing_Prims.__cache_version_number__))
;;;;;;;;;;;;;;;;Range_const typing
;;; Fact-ids: Name FStar.Range.range; Namespace FStar.Range
(assert (! (HasTypeZ (Range_const 1)
FStar.Range.range)
:named typing_range_const))
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
;;; Fact-ids: Name QuickTest.labeled_wrap; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(28,4-28,16); use=QuickTest.fst(28,4-28,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Range.range)
(HasType @x1
Prims.string)
(HasType @x2
Tm_type))
(HasType (QuickTest.labeled_wrap @x0
@x1
@x2)
Tm_type))
 

:pattern ((QuickTest.labeled_wrap @x0
@x1
@x2))
:qid typing_QuickTest.labeled_wrap))

:named typing_QuickTest.labeled_wrap))
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
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Prims.eqtype
Tm_type)
:named typing_Prims.eqtype))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Sealed.sealed; Namespace FStar.Sealed
(assert (! 
;; def=FStar.Sealed.fsti(34,9-34,15); use=FStar.Sealed.fsti(34,9-34,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Sealed.sealed @x0)
Tm_type))
 

:pattern ((FStar.Sealed.sealed @x0))
:qid typing_FStar.Sealed.sealed))

:named typing_FStar.Sealed.sealed))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Range.range; Namespace FStar.Range
(assert (! (HasType FStar.Range.range
Tm_type)
:named typing_FStar.Range.range))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Range.__range; Namespace FStar.Range
(assert (! (HasType FStar.Range.__range
Tm_type)
:named typing_FStar.Range.__range))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
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
;;; Fact-ids: Name FStar.Range.range; Namespace FStar.Range
(assert (! (HasType FStar.Range.range
Tm_type)
:named function_token_typing_FStar.Range.range))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Range.__range; Namespace FStar.Range
(assert (! (HasType FStar.Range.__range
Tm_type)
:named function_token_typing_FStar.Range.__range))
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
;;;;;;;;;;;;;;;;Equation for FStar.Range.range
;;; Fact-ids: Name FStar.Range.range; Namespace FStar.Range
(assert (! (= FStar.Range.range
(FStar.Sealed.sealed FStar.Range.__range))
:named equation_FStar.Range.range))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= Prims.T@tok
Prims.T)
:named equality_tok_Prims.T@tok))
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
;;; Fact-ids: Name Prims.string; Namespace Prims
(assert (! (= 207
(Term_constr_id Prims.string))
:named constructor_distinct_Prims.string))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Sealed.sealed; Namespace FStar.Sealed
(assert (! 
;; def=FStar.Sealed.fsti(34,9-34,15); use=FStar.Sealed.fsti(34,9-34,15)
(forall ((@x0 Term))
 (! (= 103
(Term_constr_id (FStar.Sealed.sealed @x0)))
 

:pattern ((FStar.Sealed.sealed @x0))
:qid constructor_distinct_FStar.Sealed.sealed))

:named constructor_distinct_FStar.Sealed.sealed))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Range.__range; Namespace FStar.Range
(assert (! (= 101
(Term_constr_id FStar.Range.__range))
:named constructor_distinct_FStar.Range.__range))
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
;;; Fact-ids: Name FStar.Sealed.sealed; Namespace FStar.Sealed
(assert (! 
;; def=FStar.Sealed.fsti(34,9-34,15); use=FStar.Sealed.fsti(34,9-34,15)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Sealed.sealed @x2))
(= (FStar.Sealed.sealed @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Sealed.sealed @x2)))
:qid FStar.Sealed_pretyping_1ca2a4440b3b942a4d7dd2ab3cd3f1bf))

:named FStar.Sealed_pretyping_1ca2a4440b3b942a4d7dd2ab3cd3f1bf))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Range.__range; Namespace FStar.Range
(assert (! 
;; def=FStar.Range.fsti(33,16-33,23); use=FStar.Range.fsti(33,16-33,23)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
FStar.Range.__range)
(= FStar.Range.__range
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
FStar.Range.__range))
:qid FStar.Range_pretyping_f74555f406a5a5cdaf563561d6f78f8d))

:named FStar.Range_pretyping_f74555f406a5a5cdaf563561d6f78f8d))
(push) ;; push{2

; Starting query at QuickTest.fst(32,2-33,22)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (r: FStar.Range.range) (msg: Prims.string) (p: Type).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Type0).
;     (forall (pure_result: Type0). (pure_result <==> p) ==> p pure_result) ==>
;     (FStar.Range.labeled r msg p ==> p) /\ (p ==> FStar.Range.labeled r msg p) /\
;     (forall (pure_result: Prims.unit).
;         (QuickTest.labeled_wrap r msg p <==> p) ==>
;         (forall (any_result: Type0).
;             any_result == QuickTest.labeled_wrap r msg p ==>
;             (forall (return_val: Type0). return_val == any_result ==> p return_val)))


; Context: While encoding a query
; While typechecking the top-level declaration `let label`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
FStar.Range.range)
(HasType @x1
Prims.string)
(HasType @x2
Tm_type))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_post Tm_type))

;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(32,2-33,22)
(forall ((@x4 Term))
 (! (implies (and (or label_1
(HasType @x4
Tm_type))

;; def=QuickTest.fst(31,90-31,98); use=QuickTest.fst(32,2-33,22)
(or label_2

;; def=QuickTest.fst(31,90-31,98); use=QuickTest.fst(32,2-33,22)
(iff 
;; def=Prims.fst(441,45-441,56); use=Prims.fst(441,67-441,78)
(Valid 
;; def=Prims.fst(441,45-441,56); use=Prims.fst(441,67-441,78)
@x4
)


;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(31,97-31,98)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(31,97-31,98)
@x2
)
)
)
)

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(32,2-33,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(32,2-33,22)
(ApplyTT @x3
@x4)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(32,2-33,22)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(32,2-33,22)
(ApplyTT @x3
@x4)
)
)
:qid @query.2))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(32,2-32,13)
(and (implies 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,34-32,35)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,34-32,35)
@x2
)


;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
(or label_3

;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
@x2
)
)
)
(implies 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
@x2
)


;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,34-32,35)
(or label_4

;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,34-32,35)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,34-32,35)
@x2
)
)
)

;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(32,2-32,13)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=QuickTest.fst(32,14-32,43); use=QuickTest.fst(32,2-32,13)
(iff 
;; def=QuickTest.fst(32,15-32,35); use=QuickTest.fst(32,2-32,13)
(Valid 
;; def=QuickTest.fst(32,15-32,35); use=QuickTest.fst(32,2-32,13)
(QuickTest.labeled_wrap @x0
@x1
@x2)
)


;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(32,41-32,42)
@x2
)
)
)

;; def=Prims.fst(451,66-451,102); use=QuickTest.fst(32,2-33,22)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_type)

;; def=QuickTest.fst(31,51-33,22); use=QuickTest.fst(32,2-33,22)
(= @x5
(QuickTest.labeled_wrap @x0
@x1
@x2))
)

;; def=Prims.fst(356,2-356,58); use=Prims.fst(426,19-426,31)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_type)

;; def=Prims.fst(356,26-356,41); use=Prims.fst(426,19-426,31)
(= @x6
@x5)
)

;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(Valid 
;; def=Prims.fst(356,46-356,58); use=Prims.fst(426,19-426,31)
(ApplyTT @x3
@x6)
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
; QUERY ID: (QuickTest.label, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let label


; <Start encoding let label>

(declare-fun QuickTest.label (Term Term Term) Term)
(declare-fun Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 (Term) Term)
;;;;;;;;;;;;;;;;r: FStar.Range.range -> msg: Prims.string -> p: Type -> Prims.Ghost Type
(declare-fun Tm_arrow_b7c63ab49f833416a9ea580e10f5fbcd () Term)
(declare-fun QuickTest.label@tok () Term)


; </end encoding let label>


; encoding sigelt type QuickTest.quickCodes


; <Start encoding type QuickTest.quickCodes>

;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.quickCodes (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun QuickTest.quickCodes@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.QEmpty (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QEmpty_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QEmpty__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: QuickTest.QEmpty
(declare-fun QuickTest.QEmpty@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun QuickTest.QPURE (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QPURE_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QPURE_r (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QPURE_msg (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QPURE_pre (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QPURE__3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun QuickTest.QPURE__4 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: QuickTest.QPURE
(declare-fun QuickTest.QPURE@tok () Term)
;;;;;;;;;;;;;;;;_0: a -> quickCodes a
(declare-fun Tm_arrow_1fe85ff71a100a14ab80434c2c087163 () Term)
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)

;;;;;;;;;;;;;;;;y: _: Prims.unit{Prims.l_True} -> Prims.GTot Type
(declare-fun Tm_arrow_3b69f71421c5687fd98671b03c995f9a () Term)
(declare-fun Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a (Term) Term)
(declare-fun Tm_refine_67612f8951d32961f6b077feaf1630d4 (Term) Term)



(declare-fun Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f () Term)
;;;;;;;;;;;;;;;;_: Prims.unit -> Prims.PURE Prims.unit
(declare-fun Tm_arrow_582bbc689b5fa61706dbd693625a682b (Term) Term)










;;;;;;;;;;;;;;;;r: FStar.Range.range ->     msg: Prims.string ->     pre: Prims.pure_wp Prims.unit ->     _3: (_: Prims.unit -> Prims.PURE Prims.unit) ->     _4: quickCodes a   -> quickCodes a
(declare-fun Tm_arrow_5f6fa5f1755d8c5363e1625689eed76c () Term)

; <start constructor QuickTest.quickCodes>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.quickCodes ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
160)
(exists ((@x0 Term))
 (! (= __@x0
(QuickTest.quickCodes @x0))
 
;;no pats
:qid is-QuickTest.quickCodes))))

; </end constructor QuickTest.quickCodes>


; <start constructor QuickTest.QEmpty>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.QEmpty ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
167)
(= __@x0
(QuickTest.QEmpty (QuickTest.QEmpty_a __@x0)
(QuickTest.QEmpty__0 __@x0)))))

; </end constructor QuickTest.QEmpty>


; <start constructor QuickTest.QPURE>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-QuickTest.QPURE ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
183)
(= __@x0
(QuickTest.QPURE (QuickTest.QPURE_a __@x0)
(QuickTest.QPURE_r __@x0)
(QuickTest.QPURE_msg __@x0)
(QuickTest.QPURE_pre __@x0)
(QuickTest.QPURE__3 __@x0)
(QuickTest.QPURE__4 __@x0)))))

; </end constructor QuickTest.QPURE>


; </end encoding type QuickTest.quickCodes>


; encoding sigelt val QuickTest.uu___is_QEmpty


; <Start encoding val QuickTest.uu___is_QEmpty>

(declare-fun QuickTest.uu___is_QEmpty (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: quickCodes a -> Prims.bool
(declare-fun Tm_arrow_80859c6268f87a50e4f69d24318d1db9 () Term)
(declare-fun QuickTest.uu___is_QEmpty@tok () Term)

; </end encoding val QuickTest.uu___is_QEmpty>


; encoding sigelt let uu___is_QEmpty


; <Skipped let uu___is_QEmpty/>


; encoding sigelt val QuickTest.__proj__QEmpty__item___0


; <Start encoding val QuickTest.__proj__QEmpty__item___0>

(declare-fun Tm_refine_c9fd3541ac584866629f59932dd18c92 (Term) Term)
(declare-fun QuickTest.__proj__QEmpty__item___0 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: quickCodes a {QEmpty? _} -> a
(declare-fun Tm_arrow_e2a3b4efce45e2f10a868f878951b06f () Term)
(declare-fun QuickTest.__proj__QEmpty__item___0@tok () Term)

; </end encoding val QuickTest.__proj__QEmpty__item___0>

;;;;;;;;;;;;;;;;typing_Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=Prims.fst(635,86-635,95); use=QuickTest.fst(38,18-38,22)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a @x0)
Tm_arrow_3b69f71421c5687fd98671b03c995f9a)
 

:pattern ((Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a @x0))
:qid typing_Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a))

:named typing_Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a))
;;;;;;;;;;;;;;;;typing_Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (HasType Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f
Tm_arrow_3b69f71421c5687fd98671b03c995f9a)
:named typing_Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.uu___is_QEmpty; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(QuickTest.quickCodes @x0)))
(HasType (QuickTest.uu___is_QEmpty @x0
@x1)
Prims.bool))
 

:pattern ((QuickTest.uu___is_QEmpty @x0
@x1))
:qid typing_QuickTest.uu___is_QEmpty))

:named typing_QuickTest.uu___is_QEmpty))
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
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (HasType Prims.bool
Prims.eqtype)
:named typing_Prims.bool))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(35,10-35,20); use=QuickTest.fst(35,10-35,20)
(forall ((@x0 Term))
 (! (= (ApplyTT QuickTest.quickCodes@tok
@x0)
(QuickTest.quickCodes @x0))
 

:pattern ((ApplyTT QuickTest.quickCodes@tok
@x0))

:pattern ((QuickTest.quickCodes @x0))
:qid token_correspondence_QuickTest.quickCodes@tok))

:named token_correspondence_QuickTest.quickCodes@tok))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)
(QuickTest.quickCodes @x7))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x6
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)
(QuickTest.quickCodes @x7)))
:qid subterm_ordering_QuickTest.QPURE))

:named subterm_ordering_QuickTest.QPURE))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(QuickTest.QEmpty @x1
@x2)
(QuickTest.quickCodes @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(QuickTest.QEmpty @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(QuickTest.QEmpty @x1
@x2)
(QuickTest.quickCodes @x3)))
:qid subterm_ordering_QuickTest.QEmpty))

:named subterm_ordering_QuickTest.QEmpty))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickTest.__proj__QEmpty__item___0; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c9fd3541ac584866629f59932dd18c92 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c9fd3541ac584866629f59932dd18c92 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c9fd3541ac584866629f59932dd18c92))

:named refinement_kinding_Tm_refine_c9fd3541ac584866629f59932dd18c92))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(38,18-38,22); use=QuickTest.fst(38,18-38,22)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_67612f8951d32961f6b077feaf1630d4 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_67612f8951d32961f6b077feaf1630d4 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_67612f8951d32961f6b077feaf1630d4))

:named refinement_kinding_Tm_refine_67612f8951d32961f6b077feaf1630d4))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
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
;;; Fact-ids: Name QuickTest.__proj__QEmpty__item___0; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c9fd3541ac584866629f59932dd18c92 @x2))
(and (HasTypeFuel @u0
@x1
(QuickTest.quickCodes @x2))

;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(BoxBool_proj_0 (QuickTest.uu___is_QEmpty @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c9fd3541ac584866629f59932dd18c92 @x2)))
:qid refinement_interpretation_Tm_refine_c9fd3541ac584866629f59932dd18c92))

:named refinement_interpretation_Tm_refine_c9fd3541ac584866629f59932dd18c92))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(38,18-38,22); use=QuickTest.fst(38,18-38,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_67612f8951d32961f6b077feaf1630d4 @x2))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(635,71-635,97); use=QuickTest.fst(38,18-38,22)
(not 
;; def=Prims.fst(635,72-635,97); use=QuickTest.fst(38,18-38,22)
(Valid 
;; def=Prims.fst(635,72-635,97); use=QuickTest.fst(38,18-38,22)
(ApplyTT @x2
(Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a @x1))
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_67612f8951d32961f6b077feaf1630d4 @x2)))
:qid refinement_interpretation_Tm_refine_67612f8951d32961f6b077feaf1630d4))

:named refinement_interpretation_Tm_refine_67612f8951d32961f6b077feaf1630d4))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=Prims.fst(315,31-315,40); use=QuickTest.fst(38,18-38,22)
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickTest.QPURE_r (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
@x1)
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_QuickTest.QPURE_r))

:named projection_inverse_QuickTest.QPURE_r))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickTest.QPURE_pre (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
@x3)
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_QuickTest.QPURE_pre))

:named projection_inverse_QuickTest.QPURE_pre))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickTest.QPURE_msg (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
@x2)
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_QuickTest.QPURE_msg))

:named projection_inverse_QuickTest.QPURE_msg))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickTest.QPURE_a (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
@x0)
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_QuickTest.QPURE_a))

:named projection_inverse_QuickTest.QPURE_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickTest.QPURE__4 (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
@x5)
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_QuickTest.QPURE__4))

:named projection_inverse_QuickTest.QPURE__4))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (QuickTest.QPURE__3 (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
@x4)
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid projection_inverse_QuickTest.QPURE__3))

:named projection_inverse_QuickTest.QPURE__3))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (QuickTest.QEmpty_a (QuickTest.QEmpty @x0
@x1))
@x0)
 

:pattern ((QuickTest.QEmpty @x0
@x1))
:qid projection_inverse_QuickTest.QEmpty_a))

:named projection_inverse_QuickTest.QEmpty_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (QuickTest.QEmpty__0 (QuickTest.QEmpty @x0
@x1))
@x1)
 

:pattern ((QuickTest.QEmpty @x0
@x1))
:qid projection_inverse_QuickTest.QEmpty__0))

:named projection_inverse_QuickTest.QEmpty__0))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (is-Tm_arrow (PreType QuickTest.quickCodes@tok))
:named pre_kinding_QuickTest.quickCodes@tok))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_582bbc689b5fa61706dbd693625a682b
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(38,5-38,22); use=QuickTest.fst(38,5-38,22)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_582bbc689b5fa61706dbd693625a682b @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_582bbc689b5fa61706dbd693625a682b @x0)
Tm_type))
:qid kinding_Tm_arrow_582bbc689b5fa61706dbd693625a682b))

:named kinding_Tm_arrow_582bbc689b5fa61706dbd693625a682b))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3b69f71421c5687fd98671b03c995f9a
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (HasType Tm_arrow_3b69f71421c5687fd98671b03c995f9a
Tm_type)
:named kinding_Tm_arrow_3b69f71421c5687fd98671b03c995f9a))
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (and (IsTotFun QuickTest.quickCodes@tok)

;; def=QuickTest.fst(35,10-35,20); use=QuickTest.fst(35,10-35,20)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (QuickTest.quickCodes @x0)
Tm_type))
 

:pattern ((QuickTest.quickCodes @x0))
:qid kinding_QuickTest.quickCodes@tok))
)
:named kinding_QuickTest.quickCodes@tok))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=Prims.fst(635,86-635,95); use=QuickTest.fst(38,18-38,22)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a @x1)
@x0)
(Prims.l_not (Prims.eq2 Prims.unit
@x0
@x1)))
 

:pattern ((ApplyTT (Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a @x1)
@x0))
:qid interpretation_Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a))

:named interpretation_Tm_abs_89447cd1aa9afa7f1f584aea7ee0d61a))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=Prims.fst(630,69-630,73); use=QuickTest.fst(38,18-38,22)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f
@x0)
Prims.l_True)
 

:pattern ((ApplyTT Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f
@x0))
:qid interpretation_Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f))

:named interpretation_Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c9fd3541ac584866629f59932dd18c92
;;; Fact-ids: Name QuickTest.__proj__QEmpty__item___0; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c9fd3541ac584866629f59932dd18c92 @x0)))
(Valid (Prims.hasEq (QuickTest.quickCodes @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c9fd3541ac584866629f59932dd18c92 @x0))))
:qid haseqTm_refine_c9fd3541ac584866629f59932dd18c92))

:named haseqTm_refine_c9fd3541ac584866629f59932dd18c92))
;;;;;;;;;;;;;;;;haseq for Tm_refine_67612f8951d32961f6b077feaf1630d4
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(38,18-38,22); use=QuickTest.fst(38,18-38,22)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_67612f8951d32961f6b077feaf1630d4 @x0)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_67612f8951d32961f6b077feaf1630d4 @x0))))
:qid haseqTm_refine_67612f8951d32961f6b077feaf1630d4))

:named haseqTm_refine_67612f8951d32961f6b077feaf1630d4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
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
;;; Fact-ids: Name Prims.l_False; Namespace Prims
(assert (! (HasType Prims.l_False
Prims.logical)
:named function_token_typing_Prims.l_False))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (HasType Prims.bool
Prims.eqtype)
:named function_token_typing_Prims.bool))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(35,10-35,20); use=QuickTest.fst(35,10-35,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(QuickTest.quickCodes @x2))
(or (and (is-QuickTest.QEmpty @x1)
(= @x2
(QuickTest.QEmpty_a @x1)))
(and (is-QuickTest.QPURE @x1)
(= @x2
(QuickTest.QPURE_a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(QuickTest.quickCodes @x2)))
:qid fuel_guarded_inversion_QuickTest.quickCodes))

:named fuel_guarded_inversion_QuickTest.quickCodes))
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
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! (= 161
(Term_constr_id QuickTest.quickCodes@tok))
:named fresh_token_QuickTest.quickCodes@tok))
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
;;;;;;;;;;;;;;;;Equation for Prims.pure_pre
;;; Fact-ids: Name Prims.pure_pre; Namespace Prims
(assert (! (= Prims.pure_pre
Tm_type)
:named equation_Prims.pure_pre))
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
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name QuickTest.uu___is_QEmpty; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (QuickTest.uu___is_QEmpty @x0
@x1)
(BoxBool (is-QuickTest.QEmpty @x1)))
 

:pattern ((QuickTest.uu___is_QEmpty @x0
@x1))
:qid disc_equation_QuickTest.QEmpty))

:named disc_equation_QuickTest.QEmpty))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
FStar.Range.range)
(HasTypeFuel @u0
@x3
Prims.string)
(HasTypeFuel @u0
@x4
(Prims.pure_wp Prims.unit))
(HasTypeFuel @u0
@x5
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x4))
(HasTypeFuel @u0
@x6
(QuickTest.quickCodes @x1)))
(HasTypeFuel @u0
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)
(QuickTest.quickCodes @x1)))
 

:pattern ((HasTypeFuel @u0
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)
(QuickTest.quickCodes @x1)))
:qid data_typing_intro_QuickTest.QPURE@tok))

:named data_typing_intro_QuickTest.QPURE@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1))
(HasTypeFuel @u0
(QuickTest.QEmpty @x1
@x2)
(QuickTest.quickCodes @x1)))
 

:pattern ((HasTypeFuel @u0
(QuickTest.QEmpty @x1
@x2)
(QuickTest.quickCodes @x1)))
:qid data_typing_intro_QuickTest.QEmpty@tok))

:named data_typing_intro_QuickTest.QEmpty@tok))
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
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)
(QuickTest.quickCodes @x7))
(and (HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x2
FStar.Range.range)
(HasTypeFuel @u0
@x3
Prims.string)
(HasTypeFuel @u0
@x4
(Prims.pure_wp Prims.unit))
(HasTypeFuel @u0
@x5
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x4))
(HasTypeFuel @u0
@x6
(QuickTest.quickCodes @x7))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(QuickTest.QPURE @x1
@x2
@x3
@x4
@x5
@x6)
(QuickTest.quickCodes @x7)))
:qid data_elim_QuickTest.QPURE))

:named data_elim_QuickTest.QPURE))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(QuickTest.QEmpty @x1
@x2)
(QuickTest.quickCodes @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
@x3)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(QuickTest.QEmpty @x1
@x2)
(QuickTest.quickCodes @x3)))
:qid data_elim_QuickTest.QEmpty))

:named data_elim_QuickTest.QEmpty))
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
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(35,10-35,20); use=QuickTest.fst(35,10-35,20)
(forall ((@x0 Term))
 (! (= 160
(Term_constr_id (QuickTest.quickCodes @x0)))
 

:pattern ((QuickTest.quickCodes @x0))
:qid constructor_distinct_QuickTest.quickCodes))

:named constructor_distinct_QuickTest.quickCodes))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= 183
(Term_constr_id (QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5)))
 

:pattern ((QuickTest.QPURE @x0
@x1
@x2
@x3
@x4
@x5))
:qid constructor_distinct_QuickTest.QPURE))

:named constructor_distinct_QuickTest.QPURE))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 167
(Term_constr_id (QuickTest.QEmpty @x0
@x1)))
 

:pattern ((QuickTest.QEmpty @x0
@x1))
:qid constructor_distinct_QuickTest.QEmpty))

:named constructor_distinct_QuickTest.QEmpty))
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
;;; Fact-ids: Name Prims.bool; Namespace Prims
(assert (! (= 107
(Term_constr_id Prims.bool))
:named constructor_distinct_Prims.bool))
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
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(35,10-35,20); use=QuickTest.fst(35,10-35,20)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(QuickTest.quickCodes @x2))
(= (QuickTest.quickCodes @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(QuickTest.quickCodes @x2)))
:qid QuickTest_pretyping_092349cca06b86956df736b8874bdf41))

:named QuickTest_pretyping_092349cca06b86956df736b8874bdf41))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(38,5-38,22); use=QuickTest.fst(38,5-38,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x2)))
:qid QuickTest_pre_typing_Tm_arrow_582bbc689b5fa61706dbd693625a682b))

:named QuickTest_pre_typing_Tm_arrow_582bbc689b5fa61706dbd693625a682b))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=Prims.fst(315,31-315,54); use=QuickTest.fst(38,18-38,22)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_3b69f71421c5687fd98671b03c995f9a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_3b69f71421c5687fd98671b03c995f9a))
:qid QuickTest_pre_typing_Tm_arrow_3b69f71421c5687fd98671b03c995f9a))

:named QuickTest_pre_typing_Tm_arrow_3b69f71421c5687fd98671b03c995f9a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_582bbc689b5fa61706dbd693625a682b
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(38,5-38,22); use=QuickTest.fst(38,5-38,22)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x1))
(and 
;; def=QuickTest.fst(38,5-38,22); use=QuickTest.fst(38,5-38,22)
(forall ((@x2 Term))
 (! (implies (and 
;; def=Prims.fst(630,56-630,74); use=QuickTest.fst(38,18-38,22)
(Valid 
;; def=Prims.fst(630,56-630,74); use=QuickTest.fst(38,18-38,22)
(ApplyTT @x1
Tm_abs_6d8f1da5bf4e21daabadfa90c8e4740f)
)

(HasType @x2
Prims.unit))
(HasType (ApplyTT @x0
@x2)
(Tm_refine_67612f8951d32961f6b077feaf1630d4 @x1)))
 

:pattern ((ApplyTT @x0
@x2))
:qid QuickTest_interpretation_Tm_arrow_582bbc689b5fa61706dbd693625a682b.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x1)))
:qid QuickTest_interpretation_Tm_arrow_582bbc689b5fa61706dbd693625a682b))

:named QuickTest_interpretation_Tm_arrow_582bbc689b5fa61706dbd693625a682b))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3b69f71421c5687fd98671b03c995f9a
;;; Fact-ids: Name QuickTest.quickCodes; Namespace QuickTest; Name QuickTest.QEmpty; Namespace QuickTest; Name QuickTest.QPURE; Namespace QuickTest
(assert (! 
;; def=Prims.fst(315,31-315,54); use=QuickTest.fst(38,18-38,22)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_3b69f71421c5687fd98671b03c995f9a)
(and 
;; def=Prims.fst(315,31-315,54); use=QuickTest.fst(38,18-38,22)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_3b69f71421c5687fd98671b03c995f9a.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_3b69f71421c5687fd98671b03c995f9a))
:qid QuickTest_interpretation_Tm_arrow_3b69f71421c5687fd98671b03c995f9a))

:named QuickTest_interpretation_Tm_arrow_3b69f71421c5687fd98671b03c995f9a))
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
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: QuickTest.quickCodes a {QEmpty? _}).
;   (*  - Could not prove post-condition
; *) ~(QEmpty? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QEmpty__item___0`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_c9fd3541ac584866629f59932dd18c92 @x0))

;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(not 
;; def=QuickTest.fst(36,2-36,8); use=QuickTest.fst(36,2-36,8)
(BoxBool_proj_0 (QuickTest.uu___is_QEmpty @x0
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
; QUERY ID: (QuickTest.__proj__QEmpty__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_c9fd3541ac584866629f59932dd18c92

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QEmpty__item___0


; <Skipped let __proj__QEmpty__item___0/>


; encoding sigelt val QuickTest.uu___is_QPURE


; <Start encoding val QuickTest.uu___is_QPURE>

(declare-fun QuickTest.uu___is_QPURE (Term Term) Term)

(declare-fun QuickTest.uu___is_QPURE@tok () Term)

; </end encoding val QuickTest.uu___is_QPURE>


; encoding sigelt let uu___is_QPURE


; <Skipped let uu___is_QPURE/>


; encoding sigelt val QuickTest.__proj__QPURE__item__r


; <Start encoding val QuickTest.__proj__QPURE__item__r>

(declare-fun Tm_refine_43618871bcdd390dc872c0cf7b040280 (Term) Term)
(declare-fun QuickTest.__proj__QPURE__item__r (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: quickCodes a {QPURE? _} -> FStar.Range.range
(declare-fun Tm_arrow_416fdff0a206642a45a56e93b23a41c2 () Term)
(declare-fun QuickTest.__proj__QPURE__item__r@tok () Term)

; </end encoding val QuickTest.__proj__QPURE__item__r>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.uu___is_QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(QuickTest.quickCodes @x0)))
(HasType (QuickTest.uu___is_QPURE @x0
@x1)
Prims.bool))
 

:pattern ((QuickTest.uu___is_QPURE @x0
@x1))
:qid typing_QuickTest.uu___is_QPURE))

:named typing_QuickTest.uu___is_QPURE))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickTest.__proj__QPURE__item__r; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_43618871bcdd390dc872c0cf7b040280))

:named refinement_kinding_Tm_refine_43618871bcdd390dc872c0cf7b040280))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name QuickTest.__proj__QPURE__item__r; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x2))
(and (HasTypeFuel @u0
@x1
(QuickTest.quickCodes @x2))

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x2)))
:qid refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280))

:named refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280))
;;;;;;;;;;;;;;;;haseq for Tm_refine_43618871bcdd390dc872c0cf7b040280
;;; Fact-ids: Name QuickTest.__proj__QPURE__item__r; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0)))
(Valid (Prims.hasEq (QuickTest.quickCodes @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0))))
:qid haseqTm_refine_43618871bcdd390dc872c0cf7b040280))

:named haseqTm_refine_43618871bcdd390dc872c0cf7b040280))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name QuickTest.uu___is_QPURE; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (QuickTest.uu___is_QPURE @x0
@x1)
(BoxBool (is-QuickTest.QPURE @x1)))
 

:pattern ((QuickTest.uu___is_QPURE @x0
@x1))
:qid disc_equation_QuickTest.QPURE))

:named disc_equation_QuickTest.QPURE))
(push) ;; push{2

; Starting query at QuickTest.fst(37,9-37,10)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: QuickTest.quickCodes a {QPURE? _}).
;   (*  - Could not prove post-condition
; *) ~(QPURE? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QPURE__item__r`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0))

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,9-37,10)
(not 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,9-37,10)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x0
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
; QUERY ID: (QuickTest.__proj__QPURE__item__r, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QPURE__item__r


; <Skipped let __proj__QPURE__item__r/>


; encoding sigelt val QuickTest.__proj__QPURE__item__msg


; <Start encoding val QuickTest.__proj__QPURE__item__msg>


(declare-fun QuickTest.__proj__QPURE__item__msg (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: quickCodes a {QPURE? _} -> Prims.string
(declare-fun Tm_arrow_6e727e468f28440a661f49a55cfce2a4 () Term)
(declare-fun QuickTest.__proj__QPURE__item__msg@tok () Term)

; </end encoding val QuickTest.__proj__QPURE__item__msg>

(push) ;; push{2

; Starting query at QuickTest.fst(37,20-37,23)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: QuickTest.quickCodes a {QPURE? _}).
;   (*  - Could not prove post-condition
; *) ~(QPURE? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QPURE__item__msg`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0))

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,20-37,23)
(not 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,20-37,23)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x0
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
; QUERY ID: (QuickTest.__proj__QPURE__item__msg, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QPURE__item__msg


; <Skipped let __proj__QPURE__item__msg/>


; encoding sigelt val QuickTest.__proj__QPURE__item__pre


; <Start encoding val QuickTest.__proj__QPURE__item__pre>


(declare-fun QuickTest.__proj__QPURE__item__pre (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: quickCodes a {QPURE? _} -> Prims.pure_wp Prims.unit
(declare-fun Tm_arrow_7917119ccbd77ff6060deb4ac491412f () Term)
(declare-fun QuickTest.__proj__QPURE__item__pre@tok () Term)

; </end encoding val QuickTest.__proj__QPURE__item__pre>

(push) ;; push{2

; Starting query at QuickTest.fst(37,34-37,37)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: QuickTest.quickCodes a {QPURE? _}).
;   (*  - Could not prove post-condition
; *) ~(QPURE? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QPURE__item__pre`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0))

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,34-37,37)
(not 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,34-37,37)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x0
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
; QUERY ID: (QuickTest.__proj__QPURE__item__pre, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QPURE__item__pre


; <Skipped let __proj__QPURE__item__pre/>


; encoding sigelt val QuickTest.__proj__QPURE__item___3


; <Start encoding val QuickTest.__proj__QPURE__item___3>


(declare-fun QuickTest.__proj__QPURE__item___3 (Term Term) Term)





(declare-fun Tm_refine_e30e116d6a57330990f8b4234dfa028c (Term Term) Term)





;;;;;;;;;;;;;;;;_: Prims.unit -> Prims.PURE Prims.unit
(declare-fun Tm_arrow_7373a18ce227daa6411a5f3a0317c65f (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: _: quickCodes a {QPURE? _} -> _: Prims.unit -> Prims.PURE Prims.unit
(declare-fun Tm_arrow_923f3850754e940b6c6f33dc4bd6a23d () Term)
(declare-fun QuickTest.__proj__QPURE__item___3@tok () Term)













; </end encoding val QuickTest.__proj__QPURE__item___3>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)












; Encoding query formula : forall (a: Type) (projectee: _: QuickTest.quickCodes a {QPURE? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(QPURE? projectee) ==> Prims.l_False) /\
;   (forall (b: FStar.Range.range)
;       (b: Prims.string)
;       (b: Prims.pure_wp Prims.unit)
;       (b: (_: Prims.unit -> Prims.PURE Prims.unit))
;       (b: QuickTest.quickCodes a).
;       projectee == QuickTest.QPURE b b b b b ==>
;       (forall (_: Prims.unit).
;           (*  - Subtyping check failed
;   - Expected type _: quickCodes a {QPURE? _} got type quickCodes a
; *)
;           QPURE? (QuickTest.QPURE b b b b b)))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QPURE__item___3`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(not 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
FStar.Range.range)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
Prims.string)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(Prims.pure_wp Prims.unit))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (HasType @x5
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x4))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(QuickTest.quickCodes @x0))

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(= @x1
(QuickTest.QPURE @x0
@x2
@x3
@x4
@x5
@x6))
)
(forall ((@x7 Term))
 (! (implies (HasType @x7
Prims.unit)

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(or label_2

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(38,5-38,22)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x0
(QuickTest.QPURE @x0
@x2
@x3
@x4
@x5
@x6)))
)
)
 
;;no pats
:qid @query.6)))
 
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (QuickTest.__proj__QPURE__item___3, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QPURE__item___3


; <Skipped let __proj__QPURE__item___3/>


; encoding sigelt val QuickTest.__proj__QPURE__item___4


; <Start encoding val QuickTest.__proj__QPURE__item___4>


(declare-fun QuickTest.__proj__QPURE__item___4 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: quickCodes a {QPURE? _} -> quickCodes a
(declare-fun Tm_arrow_3b437299fba0336b12ba0d7dced39d15 () Term)
(declare-fun QuickTest.__proj__QPURE__item___4@tok () Term)

; </end encoding val QuickTest.__proj__QPURE__item___4>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: QuickTest.quickCodes a {QPURE? _}).
;   (*  - Could not prove post-condition
; *) ~(QPURE? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__QPURE__item___4`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_43618871bcdd390dc872c0cf7b040280 @x0))

;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(not 
;; def=QuickTest.fst(37,2-37,7); use=QuickTest.fst(37,2-37,7)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE @x0
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
; QUERY ID: (QuickTest.__proj__QPURE__item___4, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_43618871bcdd390dc872c0cf7b040280

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__QPURE__item___4


; <Skipped let __proj__QPURE__item___4/>


; encoding sigelt let qPURE


; <Start encoding let qPURE>











(declare-fun QuickTest.qPURE (Term Term Term Term Term Term) Term)










;;;;;;;;;;;;;;;;r: FStar.Range.range ->     msg: Prims.string ->     $l: (_: Prims.unit -> Prims.PURE Prims.unit) ->     qcs: quickCodes a   -> quickCodes a
(declare-fun Tm_arrow_2d892334d111a2542abcc6e33bb9f725 () Term)
(declare-fun QuickTest.qPURE@tok () Term)











; </end encoding let qPURE>


; encoding sigelt let range1


; <Start encoding let range1>

(declare-fun QuickTest.range1 (Dummy_sort) Term)

; </end encoding let range1>

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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(QuickTest.Mkvale_state @x1)
QuickTest.vale_state)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(QuickTest.Mkvale_state @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(QuickTest.Mkvale_state @x1)
QuickTest.vale_state))
:qid subterm_ordering_QuickTest.Mkvale_state))

:named subterm_ordering_QuickTest.Mkvale_state))
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
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@x0 Term))
 (! (= (QuickTest.Mkvale_state_vs_ok (QuickTest.Mkvale_state @x0))
@x0)
 

:pattern ((QuickTest.Mkvale_state @x0))
:qid projection_inverse_QuickTest.Mkvale_state_vs_ok))

:named projection_inverse_QuickTest.Mkvale_state_vs_ok))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,18-9,96); use=QuickTest.fst(9,72-9,96)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0)
Tm_type))
:qid kinding_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab))

:named kinding_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab))
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! (HasType QuickTest.vale_state
Tm_type)
:named kinding_QuickTest.vale_state@tok))
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
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (HasType Prims.int
Prims.eqtype)
:named function_token_typing_Prims.int))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
QuickTest.vale_state)
(is-QuickTest.Mkvale_state @x1))
 

:pattern ((HasTypeFuel @u0
@x1
QuickTest.vale_state))
:qid fuel_guarded_inversion_QuickTest.vale_state))

:named fuel_guarded_inversion_QuickTest.vale_state))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Prims.bool)
(HasTypeFuel @u0
(QuickTest.Mkvale_state @x1)
QuickTest.vale_state))
 

:pattern ((HasTypeFuel @u0
(QuickTest.Mkvale_state @x1)
QuickTest.vale_state))
:qid data_typing_intro_QuickTest.Mkvale_state@tok))

:named data_typing_intro_QuickTest.Mkvale_state@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(QuickTest.Mkvale_state @x1)
QuickTest.vale_state)
(HasTypeFuel @u0
@x1
Prims.bool))
 

:pattern ((HasTypeFuel (SFuel @u0)
(QuickTest.Mkvale_state @x1)
QuickTest.vale_state))
:qid data_elim_QuickTest.Mkvale_state))

:named data_elim_QuickTest.Mkvale_state))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! (= 104
(Term_constr_id QuickTest.vale_state))
:named constructor_distinct_QuickTest.vale_state))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@x0 Term))
 (! (= 110
(Term_constr_id (QuickTest.Mkvale_state @x0)))
 

:pattern ((QuickTest.Mkvale_state @x0))
:qid constructor_distinct_QuickTest.Mkvale_state))

:named constructor_distinct_QuickTest.Mkvale_state))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.int; Namespace Prims
(assert (! (= 303
(Term_constr_id Prims.int))
:named constructor_distinct_Prims.int))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name QuickTest.vale_state; Namespace QuickTest; Name QuickTest.Mkvale_state; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(7,10-7,20); use=QuickTest.fst(7,10-7,20)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
QuickTest.vale_state)
(= QuickTest.vale_state
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
QuickTest.vale_state))
:qid QuickTest_pretyping_6ac0c46dcfaf0377765d66e7ebb10290))

:named QuickTest_pretyping_6ac0c46dcfaf0377765d66e7ebb10290))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,18-9,96); use=QuickTest.fst(9,72-9,96)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x2)))
:qid QuickTest_pre_typing_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab))

:named QuickTest_pre_typing_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,18-9,96); use=QuickTest.fst(9,72-9,96)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1))
(and 
;; def=QuickTest.fst(9,18-9,96); use=QuickTest.fst(9,72-9,96)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
QuickTest.vale_state)
(HasType @x3
@x1))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid QuickTest_interpretation_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab.1))

(IsTotFun @x0)

;; def=QuickTest.fst(9,18-9,96); use=QuickTest.fst(9,72-9,96)
(forall ((@x2 Term))
 (! (implies (HasType @x2
QuickTest.vale_state)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid QuickTest_interpretation_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1)))
:qid QuickTest_interpretation_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab))

:named QuickTest_interpretation_Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab))
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

; Starting query at QuickTest.fst(54,2-60,28)

;;;;;;;;;;;;;;;;a : Type0 (Type)
(declare-fun x_fe28d8bcde588226b4e538b35321de05_0 () Term)
;;;;;;;;;;;;;;;;binder_x_fe28d8bcde588226b4e538b35321de05_0
;;; Fact-ids: 
(assert (! (HasType x_fe28d8bcde588226b4e538b35321de05_0
Tm_type)
:named binder_x_fe28d8bcde588226b4e538b35321de05_0))
;;;;;;;;;;;;;;;;qcs : QuickTest.quickCodes a (QuickTest.quickCodes a)
(declare-fun x_30fc52c44917e89b6e78f0e85d6391d2_1 () Term)
;;;;;;;;;;;;;;;;binder_x_30fc52c44917e89b6e78f0e85d6391d2_1
;;; Fact-ids: 
(assert (! (HasType x_30fc52c44917e89b6e78f0e85d6391d2_1
(QuickTest.quickCodes x_fe28d8bcde588226b4e538b35321de05_0))
:named binder_x_30fc52c44917e89b6e78f0e85d6391d2_1))
;;;;;;;;;;;;;;;;k : _: QuickTest.vale_state -> _: a -> Type0 (_: QuickTest.vale_state -> _: a -> Type)
(declare-fun x_6dae20311701793049ce8330d490e300_2 () Term)
;;;;;;;;;;;;;;;;_: vale_state -> _: a -> Type
(declare-fun Tm_arrow_fdf9725163084d88eb63e62b07014dac () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fdf9725163084d88eb63e62b07014dac
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_fdf9725163084d88eb63e62b07014dac
Tm_type)
:named kinding_Tm_arrow_fdf9725163084d88eb63e62b07014dac))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,13-51,68); use=QuickTest.fst(51,44-51,68)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fdf9725163084d88eb63e62b07014dac)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fdf9725163084d88eb63e62b07014dac))
:qid QuickTest_pre_typing_Tm_arrow_fdf9725163084d88eb63e62b07014dac))

:named QuickTest_pre_typing_Tm_arrow_fdf9725163084d88eb63e62b07014dac))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fdf9725163084d88eb63e62b07014dac
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,13-51,68); use=QuickTest.fst(51,44-51,68)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fdf9725163084d88eb63e62b07014dac)
(and 
;; def=QuickTest.fst(51,13-51,68); use=QuickTest.fst(51,44-51,68)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
QuickTest.vale_state)
(HasType @x2
x_fe28d8bcde588226b4e538b35321de05_0))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickTest_interpretation_Tm_arrow_fdf9725163084d88eb63e62b07014dac.1))

(IsTotFun @x0)

;; def=QuickTest.fst(51,13-51,68); use=QuickTest.fst(51,44-51,68)
(forall ((@x1 Term))
 (! (implies (HasType @x1
QuickTest.vale_state)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_fdf9725163084d88eb63e62b07014dac.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fdf9725163084d88eb63e62b07014dac))
:qid QuickTest_interpretation_Tm_arrow_fdf9725163084d88eb63e62b07014dac))

:named QuickTest_interpretation_Tm_arrow_fdf9725163084d88eb63e62b07014dac))
;;;;;;;;;;;;;;;;binder_x_6dae20311701793049ce8330d490e300_2
;;; Fact-ids: 
(assert (! (HasType x_6dae20311701793049ce8330d490e300_2
Tm_arrow_fdf9725163084d88eb63e62b07014dac)
:named binder_x_6dae20311701793049ce8330d490e300_2))
;;;;;;;;;;;;;;;;s0 : QuickTest.vale_state (QuickTest.vale_state)
(declare-fun x_6ac0c46dcfaf0377765d66e7ebb10290_3 () Term)
;;;;;;;;;;;;;;;;binder_x_6ac0c46dcfaf0377765d66e7ebb10290_3
;;; Fact-ids: 
(assert (! (HasType x_6ac0c46dcfaf0377765d66e7ebb10290_3
QuickTest.vale_state)
:named binder_x_6ac0c46dcfaf0377765d66e7ebb10290_3))

(declare-fun Tm_refine_113778b5a11892f99032ffbcad728172 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,71-60,28); use=QuickTest.fst(51,71-60,28)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_113778b5a11892f99032ffbcad728172 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_113778b5a11892f99032ffbcad728172 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_113778b5a11892f99032ffbcad728172))

:named refinement_kinding_Tm_refine_113778b5a11892f99032ffbcad728172))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,71-60,28); use=QuickTest.fst(51,71-60,28)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_113778b5a11892f99032ffbcad728172 @x2
@x3))
(and (HasTypeFuel @u0
@x1
QuickTest.vale_state)

;; def=QuickTest.fst(52,25-60,28); use=QuickTest.fst(52,25-60,28)

;; def=QuickTest.fst(52,25-60,28); use=QuickTest.fst(52,25-60,28)
(or 
;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(54,2-60,28)
(Valid 
;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(54,2-60,28)
(Prims.precedes Prims.int
Prims.int
(BoxInt 0)
(BoxInt 0))
)


;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(54,2-60,28)
(Valid 
;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(54,2-60,28)
(Prims.precedes (QuickTest.quickCodes @x2)
(QuickTest.quickCodes x_fe28d8bcde588226b4e538b35321de05_0)
@x3
x_30fc52c44917e89b6e78f0e85d6391d2_1)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_113778b5a11892f99032ffbcad728172 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_113778b5a11892f99032ffbcad728172))

:named refinement_interpretation_Tm_refine_113778b5a11892f99032ffbcad728172))
;;;;;;;;;;;;;;;;haseq for Tm_refine_113778b5a11892f99032ffbcad728172
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,71-60,28); use=QuickTest.fst(51,71-60,28)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_113778b5a11892f99032ffbcad728172 @x0
@x1)))
(Valid (Prims.hasEq QuickTest.vale_state)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_113778b5a11892f99032ffbcad728172 @x0
@x1))))
:qid haseqTm_refine_113778b5a11892f99032ffbcad728172))

:named haseqTm_refine_113778b5a11892f99032ffbcad728172))
(declare-fun QuickTest.wp (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;qcs: quickCodes a -> k: (_: vale_state -> _: a -> Type) -> s0: vale_state{0 << 0 \/ qcs << qcs}   -> Prims.Tot Type
(declare-fun Tm_arrow_1a5b43010abe803458b161cb175da4f2 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1a5b43010abe803458b161cb175da4f2
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_1a5b43010abe803458b161cb175da4f2
Tm_type)
:named kinding_Tm_arrow_1a5b43010abe803458b161cb175da4f2))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,13-60,28); use=QuickTest.fst(51,15-60,28)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1a5b43010abe803458b161cb175da4f2)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1a5b43010abe803458b161cb175da4f2))
:qid QuickTest_pre_typing_Tm_arrow_1a5b43010abe803458b161cb175da4f2))

:named QuickTest_pre_typing_Tm_arrow_1a5b43010abe803458b161cb175da4f2))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,13-60,28); use=QuickTest.fst(51,15-60,28)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1a5b43010abe803458b161cb175da4f2)
(and 
;; def=QuickTest.fst(51,13-60,28); use=QuickTest.fst(51,15-60,28)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(QuickTest.quickCodes @x1))
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1))
(HasType @x4
(Tm_refine_113778b5a11892f99032ffbcad728172 @x1
@x2)))
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
:qid QuickTest_interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2.1))

(IsTotFun @x0)

;; def=QuickTest.fst(51,13-60,28); use=QuickTest.fst(51,15-60,28)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2.2))


;; def=QuickTest.fst(51,13-60,28); use=QuickTest.fst(51,15-60,28)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(QuickTest.quickCodes @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickTest_interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2.3))


;; def=QuickTest.fst(51,13-60,28); use=QuickTest.fst(51,15-60,28)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(QuickTest.quickCodes @x1))
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1)))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid QuickTest_interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1a5b43010abe803458b161cb175da4f2))
:qid QuickTest_interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2))

:named QuickTest_interpretation_Tm_arrow_1a5b43010abe803458b161cb175da4f2))
(declare-fun QuickTest.wp@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickTest.wp@tok
@x0)
@x1)
@x2)
@x3)
(QuickTest.wp @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickTest.wp@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_QuickTest.wp))

:named token_correspondence_QuickTest.wp))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType QuickTest.wp@tok
Tm_arrow_1a5b43010abe803458b161cb175da4f2))

;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickTest.wp@tok
@x1)
@x2)
@x3)
@x4)
(QuickTest.wp @x1
@x2
@x3
@x4))
 

:pattern ((QuickTest.wp @x1
@x2
@x3
@x4))
:qid function_token_typing_QuickTest.wp.1))
)
 

:pattern ((ApplyTT @x0
QuickTest.wp@tok))
:qid function_token_typing_QuickTest.wp))

:named function_token_typing_QuickTest.wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(QuickTest.quickCodes @x0))
(HasType @x2
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0))
(HasType @x3
(Tm_refine_113778b5a11892f99032ffbcad728172 @x0
@x1)))
(HasType (QuickTest.wp @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((QuickTest.wp @x0
@x1
@x2
@x3))
:qid typing_QuickTest.wp))

:named typing_QuickTest.wp))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)










;;;;;;;;;;;;;;;;_: Prims.unit -> Prims.GTot Type
(declare-fun Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
Tm_type)
:named kinding_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,17-57,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
:qid QuickTest_pre_typing_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

:named QuickTest_pre_typing_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,17-57,35)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(and 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,17-57,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.unit)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
:qid QuickTest_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

:named QuickTest_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

; Encoding query formula : forall (k: Prims.pure_post Type0).
;   (forall (x: Type0). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(QEmpty? qcs) /\ ~(QPURE? qcs) ==> Prims.l_False) /\
;   (~(QEmpty? qcs) ==>
;     (forall (b: FStar.Range.range)
;         (b: Prims.string)
;         (b: Prims.pure_wp Prims.unit)
;         (b: (_: Prims.unit -> Prims.PURE Prims.unit))
;         (b: QuickTest.quickCodes a).
;         qcs == QuickTest.QPURE b b b b b ==>
;         (forall (p: (_: Prims.unit -> Prims.GTot Type0)) (u1161: Prims.unit).
;             (*  - Subtyping check failed
;   - Expected type s0: vale_state{0 << 0 \/ 0 === 0 /\ qcs << qcs}
;     got type vale_state
; *)
;             0 << 0 \/ b << qcs)))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec wp`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=Prims.fst(402,27-402,88); use=QuickTest.fst(54,2-60,28)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=QuickTest.fst(54,2-60,28)
(Valid 
;; def=Prims.fst(402,84-402,87); use=QuickTest.fst(54,2-60,28)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=QuickTest.fst(54,2-60,28)
(and (implies 
;; def=QuickTest.fst(51,23-51,26); use=QuickTest.fst(54,8-54,11)
(and 
;; def=QuickTest.fst(51,23-51,26); use=QuickTest.fst(54,8-54,11)
(not 
;; def=QuickTest.fst(51,23-51,26); use=QuickTest.fst(54,8-54,11)
(BoxBool_proj_0 (QuickTest.uu___is_QEmpty x_fe28d8bcde588226b4e538b35321de05_0
x_30fc52c44917e89b6e78f0e85d6391d2_1))
)


;; def=QuickTest.fst(51,23-51,26); use=QuickTest.fst(54,8-54,11)
(not 
;; def=QuickTest.fst(51,23-51,26); use=QuickTest.fst(54,8-54,11)
(BoxBool_proj_0 (QuickTest.uu___is_QPURE x_fe28d8bcde588226b4e538b35321de05_0
x_30fc52c44917e89b6e78f0e85d6391d2_1))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=QuickTest.fst(54,2-60,28)
(not 
;; def=QuickTest.fst(51,23-51,26); use=QuickTest.fst(54,8-54,11)
(BoxBool_proj_0 (QuickTest.uu___is_QEmpty x_fe28d8bcde588226b4e538b35321de05_0
x_30fc52c44917e89b6e78f0e85d6391d2_1))
)


;; def=Prims.fst(413,99-413,120); use=QuickTest.fst(54,2-60,28)
(forall ((@x1 Term))
 (! (implies (HasType @x1
FStar.Range.range)

;; def=Prims.fst(413,99-413,120); use=QuickTest.fst(54,2-60,28)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.string)

;; def=Prims.fst(413,99-413,120); use=QuickTest.fst(54,2-60,28)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Prims.pure_wp Prims.unit))

;; def=Prims.fst(413,99-413,120); use=QuickTest.fst(54,2-60,28)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(Tm_arrow_582bbc689b5fa61706dbd693625a682b @x3))

;; def=Prims.fst(413,99-413,120); use=QuickTest.fst(54,2-60,28)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(QuickTest.quickCodes x_fe28d8bcde588226b4e538b35321de05_0))

;; def=QuickTest.fst(51,23-56,25); use=QuickTest.fst(54,8-56,25)
(= x_30fc52c44917e89b6e78f0e85d6391d2_1
(QuickTest.QPURE x_fe28d8bcde588226b4e538b35321de05_0
@x1
@x2
@x3
@x4
@x5))
)

;; def=dummy(0,0-0,0); use=QuickTest.fst(54,2-60,28)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(HasType @x7
Prims.unit))

;; def=QuickTest.fst(52,25-60,28); use=QuickTest.fst(58,64-58,66)
(or label_2

;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(58,64-58,66)
(Valid 
;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(58,64-58,66)
(Prims.precedes Prims.int
Prims.int
(BoxInt 0)
(BoxInt 0))
)


;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(58,64-58,66)
(Valid 
;; def=QuickTest.fst(54,2-60,28); use=QuickTest.fst(58,64-58,66)
(Prims.precedes (QuickTest.quickCodes x_fe28d8bcde588226b4e538b35321de05_0)
(QuickTest.quickCodes x_fe28d8bcde588226b4e538b35321de05_0)
@x5
x_30fc52c44917e89b6e78f0e85d6391d2_1)
)
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
; QUERY ID: (QuickTest.wp, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, binder_x_30fc52c44917e89b6e78f0e85d6391d2_1, disc_equation_QuickTest.QEmpty, disc_equation_QuickTest.QPURE, fuel_guarded_inversion_QuickTest.quickCodes, projection_inverse_BoxBool_proj_0, projection_inverse_QuickTest.QPURE__4, subterm_ordering_QuickTest.QPURE

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec wp


; <Start encoding let rec wp>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun QuickTest.wp.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun QuickTest.wp.fuel_instrumented_token () Term)
(declare-fun QuickTest.wp (Term Term Term Term) Term)
(declare-fun QuickTest.wp@tok () Term)

;;;;;;;;;;;;;;;;_: Prims.unit -> Prims.GTot Type
(declare-fun Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe () Term)


(declare-fun Tm_abs_e0d90bbf937342218dd5f4da2094e04c (Fuel Term Term Term Term Term) Term)

;;;;;;;;;;;;;;;;p: (_: Prims.unit -> Prims.GTot Type) -> Prims.GTot Type
(declare-fun Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6 () Term)
(declare-fun Tm_abs_276b8782b687cbc05736644fafd3ef37 (Fuel Term Term Term Term) Term)



;;;;;;;;;;;;;;;;qcs: quickCodes a -> k: (_: vale_state -> _: a -> Type) -> s0: vale_state -> Prims.Tot Type
(declare-fun Tm_arrow_091fcc0ca854eda0bd72c34d1414c6ff () Term)

; </end encoding let rec wp>


; encoding sigelt let wp_block


; <Start encoding let wp_block>

;;;;;;;;;;;;;;;;_: vale_state -> Prims.GTot (quickCodes a)
(declare-fun Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d (Term) Term)

(declare-fun QuickTest.wp_block (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;qcs: (_: vale_state -> Prims.GTot (quickCodes a)) ->     s0: vale_state ->     k: (_: vale_state -> _: a -> Type)   -> Type
(declare-fun Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0 () Term)
(declare-fun QuickTest.wp_block@tok () Term)



; </end encoding let wp_block>


; encoding sigelt val QuickTest.qblock_proof


; <Start encoding val QuickTest.qblock_proof>



(declare-fun QuickTest.qblock_proof (Term Term Term Term) Term)


(declare-fun Tm_refine_8dc7f2ac64477d1627b7deb098f94e2d (Term Term) Term)
;;;;;;;;;;;;;;;;qcs: (_: vale_state -> Prims.GTot (quickCodes a)) ->     s0: vale_state ->     k: (_: vale_state -> _: a -> Type)   -> Prims.Ghost (vale_state & a)
(declare-fun Tm_ghost_arrow_39b3dc9bfc8f367069a362b8c2f65e51 () Term)
(declare-fun QuickTest.qblock_proof@tok () Term)


; </end encoding val QuickTest.qblock_proof>

;;;;;;;;;;;;;;;;typing_Tm_abs_e0d90bbf937342218dd5f4da2094e04c
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (HasType (Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u0
@x1
@x2
@x3
@x4
@x5)
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
 

:pattern ((Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Tm_abs_e0d90bbf937342218dd5f4da2094e04c))

:named typing_Tm_abs_e0d90bbf937342218dd5f4da2094e04c))
;;;;;;;;;;;;;;;;typing_Tm_abs_276b8782b687cbc05736644fafd3ef37
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_abs_276b8782b687cbc05736644fafd3ef37 @u0
@x1
@x2
@x3
@x4)
Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6)
 

:pattern ((Tm_abs_276b8782b687cbc05736644fafd3ef37 @u0
@x1
@x2
@x3
@x4))
:qid typing_Tm_abs_276b8782b687cbc05736644fafd3ef37))

:named typing_Tm_abs_276b8782b687cbc05736644fafd3ef37))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,4-63,12); use=QuickTest.fst(63,4-63,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x0))
(HasType @x2
QuickTest.vale_state)
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0)))
(HasType (QuickTest.wp_block @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((QuickTest.wp_block @x0
@x1
@x2
@x3))
:qid typing_QuickTest.wp_block))

:named typing_QuickTest.wp_block))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(QuickTest.quickCodes @x0))
(HasType @x2
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0))
(HasType @x3
QuickTest.vale_state))
(HasType (QuickTest.wp @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((QuickTest.wp @x0
@x1
@x2
@x3))
:qid typing_QuickTest.wp))

:named typing_QuickTest.wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.t_ensure; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(11,4-11,12); use=QuickTest.fst(11,4-11,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(QuickTest.quickProc_wp @x0))
(HasType @x2
QuickTest.vale_state)
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0))
(HasType @x4
(FStar.Pervasives.Native.tuple2 QuickTest.vale_state
@x0)))
(HasType (QuickTest.t_ensure @x0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((QuickTest.t_ensure @x0
@x1
@x2
@x3
@x4))
:qid typing_QuickTest.t_ensure))

:named typing_QuickTest.t_ensure))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,4-9,16); use=QuickTest.fst(9,4-9,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (QuickTest.quickProc_wp @x0)
Tm_type))
 

:pattern ((QuickTest.quickProc_wp @x0))
:qid typing_QuickTest.quickProc_wp))

:named typing_QuickTest.quickProc_wp))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.label; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(31,4-31,9); use=QuickTest.fst(31,4-31,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Range.range)
(HasType @x1
Prims.string)
(HasType @x2
Tm_type))
(HasType (QuickTest.label @x0
@x1
@x2)
(Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x2)))
 

:pattern ((QuickTest.label @x0
@x1
@x2))
:qid typing_QuickTest.label))

:named typing_QuickTest.label))
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
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,4-63,12); use=QuickTest.fst(63,4-63,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickTest.wp_block@tok
@x0)
@x1)
@x2)
@x3)
(QuickTest.wp_block @x0
@x1
@x2
@x3))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickTest.wp_block@tok
@x0)
@x1)
@x2)
@x3))
:qid token_correspondence_QuickTest.wp_block))

:named token_correspondence_QuickTest.wp_block))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(QuickTest.quickCodes @x1))
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1))
(HasType @x4
QuickTest.vale_state))
(HasType (QuickTest.wp.fuel_instrumented @u0
@x1
@x2
@x3
@x4)
Tm_type))
 

:pattern ((QuickTest.wp.fuel_instrumented @u0
@x1
@x2
@x3
@x4))
:qid token_correspondence_QuickTest.wp.fuel_instrumented))

:named token_correspondence_QuickTest.wp.fuel_instrumented))
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
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name QuickTest.label; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(31,51-31,55); use=QuickTest.fst(31,51-31,55)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_2a09f2450e26fe8d9312d402cf7d7936))

:named refinement_kinding_Tm_refine_2a09f2450e26fe8d9312d402cf7d7936))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name QuickTest.label; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(31,51-31,55); use=QuickTest.fst(31,51-31,55)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x2))
(and (HasTypeFuel @u0
@x1
Tm_type)

;; def=QuickTest.fst(31,90-31,98); use=QuickTest.fst(31,90-31,98)
(iff (Valid @x1)

;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(31,97-31,98)
(Valid 
;; def=QuickTest.fst(31,34-31,35); use=QuickTest.fst(31,97-31,98)
@x2
)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x2)))
:qid refinement_interpretation_Tm_refine_2a09f2450e26fe8d9312d402cf7d7936))

:named refinement_interpretation_Tm_refine_2a09f2450e26fe8d9312d402cf7d7936))
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
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@u5 Fuel))
 (! (iff (Valid (Prims.l_Forall Prims.unit
(Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u5
@x4
@x3
@x2
@x1
@x0)))

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x6 Term))
 (! 
;; def=QuickTest.fst(58,55-58,75); use=QuickTest.fst(58,55-58,75)
(implies 
;; def=QuickTest.fst(58,55-58,66); use=QuickTest.fst(58,55-58,66)
(Valid 
;; def=QuickTest.fst(58,55-58,66); use=QuickTest.fst(58,55-58,66)
(QuickTest.wp.fuel_instrumented @u5
@x4
(QuickTest.QPURE__4 @x3)
@x2
@x1)
)


;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x0
Tm_unit)
)
)

 

:pattern ((ApplyTT @x0
@x6))
:qid l_quant_interp_564099aa1f0a4647d4c9ff884ab8153d.1))
)
 

:pattern ((Valid (Prims.l_Forall Prims.unit
(Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u5
@x4
@x3
@x2
@x1
@x0))))
:qid l_quant_interp_564099aa1f0a4647d4c9ff884ab8153d))

:named l_quant_interp_564099aa1f0a4647d4c9ff884ab8153d))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@u4 Fuel))
 (! (iff (Valid (Prims.l_Forall Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
(Tm_abs_276b8782b687cbc05736644fafd3ef37 @u4
@x3
@x2
@x1
@x0)))

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x6 Term))
 (! 
;; def=QuickTest.fst(58,55-58,75); use=QuickTest.fst(58,55-58,75)
(implies 
;; def=QuickTest.fst(58,55-58,66); use=QuickTest.fst(58,55-58,66)
(Valid 
;; def=QuickTest.fst(58,55-58,66); use=QuickTest.fst(58,55-58,66)
(QuickTest.wp.fuel_instrumented @u4
@x3
(QuickTest.QPURE__4 @x2)
@x1
@x0)
)


;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x5
Tm_unit)
)
)

 

:pattern ((ApplyTT @x5
@x6))
:qid l_quant_interp_2dd0bc72ef6c0c969ed19f3016b779f7.2))
)

;; def=QuickTest.fst(60,8-60,27); use=QuickTest.fst(60,8-60,27)
(Valid 
;; def=QuickTest.fst(60,8-60,27); use=QuickTest.fst(60,8-60,27)
(QuickTest.label (QuickTest.QPURE_r @x2)
(QuickTest.QPURE_msg @x2)
(ApplyTT (QuickTest.QPURE_pre @x2)
@x5))
)
)
 
;;no pats
:qid l_quant_interp_2dd0bc72ef6c0c969ed19f3016b779f7.1))
)
 

:pattern ((Valid (Prims.l_Forall Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
(Tm_abs_276b8782b687cbc05736644fafd3ef37 @u4
@x3
@x2
@x1
@x0))))
:qid l_quant_interp_2dd0bc72ef6c0c969ed19f3016b779f7))

:named l_quant_interp_2dd0bc72ef6c0c969ed19f3016b779f7))
;;;;;;;;;;;;;;;;kinding_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,28-63,61); use=QuickTest.fst(63,28-63,61)
(forall ((@x0 Term))
 (! (HasType (Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x0)
Tm_type)
 

:pattern ((HasType (Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x0)
Tm_type))
:qid kinding_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d))

:named kinding_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! (HasType Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
Tm_type)
:named kinding_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! (HasType Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0
Tm_type)
:named kinding_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_745e349e9df404734fa11a4683e1fcbb
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,18-9,106); use=QuickTest.fst(9,44-9,106)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x0)
Tm_type))
:qid kinding_Tm_arrow_745e349e9df404734fa11a4683e1fcbb))

:named kinding_Tm_arrow_745e349e9df404734fa11a4683e1fcbb))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! (HasType Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6
Tm_type)
:named kinding_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))
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
;;;;;;;;;;;;;;;;interpretation_Tm_abs_e0d90bbf937342218dd5f4da2094e04c
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (ApplyTT (Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u1
@x2
@x3
@x4
@x5
@x6)
@x0)
(Prims.l_imp (QuickTest.wp.fuel_instrumented @u1
@x2
(QuickTest.QPURE__4 @x3)
@x4
@x5)
(ApplyTT @x6
Tm_unit)))
 

:pattern ((ApplyTT (Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u1
@x2
@x3
@x4
@x5
@x6)
@x0))
:qid interpretation_Tm_abs_e0d90bbf937342218dd5f4da2094e04c))

:named interpretation_Tm_abs_e0d90bbf937342218dd5f4da2094e04c))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_276b8782b687cbc05736644fafd3ef37
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (= (ApplyTT (Tm_abs_276b8782b687cbc05736644fafd3ef37 @u1
@x2
@x3
@x4
@x5)
@x0)
(Prims.l_imp (Prims.l_Forall Prims.unit
(Tm_abs_e0d90bbf937342218dd5f4da2094e04c @u1
@x2
@x3
@x4
@x5
@x0))
(QuickTest.label (QuickTest.QPURE_r @x3)
(QuickTest.QPURE_msg @x3)
(ApplyTT (QuickTest.QPURE_pre @x3)
@x0))))
 

:pattern ((ApplyTT (Tm_abs_276b8782b687cbc05736644fafd3ef37 @u1
@x2
@x3
@x4
@x5)
@x0))
:qid interpretation_Tm_abs_276b8782b687cbc05736644fafd3ef37))

:named interpretation_Tm_abs_276b8782b687cbc05736644fafd3ef37))
;;;;;;;;;;;;;;;;haseq for Tm_refine_2a09f2450e26fe8d9312d402cf7d7936
;;; Fact-ids: Name QuickTest.label; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(31,51-31,55); use=QuickTest.fst(31,51-31,55)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x0)))
(Valid (Prims.hasEq Tm_type)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_2a09f2450e26fe8d9312d402cf7d7936 @x0))))
:qid haseqTm_refine_2a09f2450e26fe8d9312d402cf7d7936))

:named haseqTm_refine_2a09f2450e26fe8d9312d402cf7d7936))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,4-63,12); use=QuickTest.fst(63,4-63,12)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType QuickTest.wp_block@tok
Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))

;; def=QuickTest.fst(63,4-63,12); use=QuickTest.fst(63,4-63,12)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT (ApplyTT QuickTest.wp_block@tok
@x1)
@x2)
@x3)
@x4)
(QuickTest.wp_block @x1
@x2
@x3
@x4))
 

:pattern ((QuickTest.wp_block @x1
@x2
@x3
@x4))
:qid function_token_typing_QuickTest.wp_block.1))
)
 

:pattern ((ApplyTT @x0
QuickTest.wp_block@tok))
:qid function_token_typing_QuickTest.wp_block))

:named function_token_typing_QuickTest.wp_block))
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
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: QuickTest.wp
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(QuickTest.quickCodes @x1))
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1))
(HasType @x4
QuickTest.vale_state))
(= (QuickTest.wp.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(let ((@lb5 @x2))
(ite (is-QuickTest.QEmpty @lb5)
(ApplyTT (ApplyTT @x3
@x4)
(QuickTest.QEmpty__0 @lb5))
(ite (is-QuickTest.QPURE @lb5)
(Prims.l_Forall Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
(Tm_abs_276b8782b687cbc05736644fafd3ef37 @u0
@x1
@lb5
@x3
@x4))
Tm_unit)))))
 :weight 0


:pattern ((QuickTest.wp.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid equation_with_fuel_QuickTest.wp.fuel_instrumented))

:named equation_with_fuel_QuickTest.wp.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for QuickTest.wp_block
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,4-63,12); use=QuickTest.fst(63,4-63,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (QuickTest.wp_block @x0
@x1
@x2
@x3)
(QuickTest.wp @x0
(ApplyTT @x1
@x2)
@x3
@x2))
 

:pattern ((QuickTest.wp_block @x0
@x1
@x2
@x3))
:qid equation_QuickTest.wp_block))

:named equation_QuickTest.wp_block))
;;;;;;;;;;;;;;;;Equation for QuickTest.t_ensure
;;; Fact-ids: Name QuickTest.t_ensure; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(11,4-11,12); use=QuickTest.fst(11,4-11,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (QuickTest.t_ensure @x0
@x1
@x2
@x3
@x4)
(let ((@lb5 @x4))
(ApplyTT (ApplyTT @x3
(FStar.Pervasives.Native.Mktuple2__1 @lb5))
(FStar.Pervasives.Native.Mktuple2__2 @lb5))))
 

:pattern ((QuickTest.t_ensure @x0
@x1
@x2
@x3
@x4))
:qid equation_QuickTest.t_ensure))

:named equation_QuickTest.t_ensure))
;;;;;;;;;;;;;;;;Equation for QuickTest.quickProc_wp
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,4-9,16); use=QuickTest.fst(9,4-9,16)
(forall ((@x0 Term))
 (! (= (QuickTest.quickProc_wp @x0)
(Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x0))
 

:pattern ((QuickTest.quickProc_wp @x0))
:qid equation_QuickTest.quickProc_wp))

:named equation_QuickTest.quickProc_wp))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,28-63,61); use=QuickTest.fst(63,28-63,61)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x2)))
:qid QuickTest_pre_typing_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d))

:named QuickTest_pre_typing_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,17-57,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
:qid QuickTest_pre_typing_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

:named QuickTest_pre_typing_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,15-63,115); use=QuickTest.fst(63,17-63,115)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))
:qid QuickTest_pre_typing_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))

:named QuickTest_pre_typing_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,18-9,106); use=QuickTest.fst(9,44-9,106)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x2)))
:qid QuickTest_pre_typing_Tm_arrow_745e349e9df404734fa11a4683e1fcbb))

:named QuickTest_pre_typing_Tm_arrow_745e349e9df404734fa11a4683e1fcbb))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,14-57,36)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))
:qid QuickTest_pre_typing_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))

:named QuickTest_pre_typing_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))
;;;;;;;;;;;;;;;;interpretation_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,28-63,61); use=QuickTest.fst(63,28-63,61)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x1))

;; def=QuickTest.fst(63,28-63,61); use=QuickTest.fst(63,28-63,61)
(forall ((@x2 Term))
 (! (implies (HasType @x2
QuickTest.vale_state)
(HasType (ApplyTT @x0
@x2)
(QuickTest.quickCodes @x1)))
 

:pattern ((ApplyTT @x0
@x2))
:qid QuickTest_interpretation_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d.1))
)
 

:pattern ((HasTypeZ @x0
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x1)))
:qid QuickTest_interpretation_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d))

:named QuickTest_interpretation_Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,17-57,35)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(and 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,17-57,35)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.unit)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
:qid QuickTest_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))

:named QuickTest_interpretation_Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0
;;; Fact-ids: Name QuickTest.wp_block; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(63,15-63,115); use=QuickTest.fst(63,17-63,115)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0)
(and 
;; def=QuickTest.fst(63,15-63,115); use=QuickTest.fst(63,17-63,115)
(forall ((@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x1))
(HasType @x3
QuickTest.vale_state)
(HasType @x4
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1)))
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
:qid QuickTest_interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0.1))

(IsTotFun @x0)

;; def=QuickTest.fst(63,15-63,115); use=QuickTest.fst(63,17-63,115)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0.2))


;; def=QuickTest.fst(63,15-63,115); use=QuickTest.fst(63,17-63,115)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid QuickTest_interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0.3))


;; def=QuickTest.fst(63,15-63,115); use=QuickTest.fst(63,17-63,115)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x1))
(HasType @x3
QuickTest.vale_state))
(IsTotFun (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid QuickTest_interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0.4))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))
:qid QuickTest_interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))

:named QuickTest_interpretation_Tm_arrow_b8cc9bba30e203d9b44ab677d67d8ca0))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_745e349e9df404734fa11a4683e1fcbb
;;; Fact-ids: Name QuickTest.quickProc_wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(9,18-9,106); use=QuickTest.fst(9,44-9,106)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x1))
(and 
;; def=QuickTest.fst(9,18-9,106); use=QuickTest.fst(9,44-9,106)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
QuickTest.vale_state)
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x2)
@x3)
Tm_type))
 

:pattern ((ApplyTT (ApplyTT @x0
@x2)
@x3))
:qid QuickTest_interpretation_Tm_arrow_745e349e9df404734fa11a4683e1fcbb.1))

(IsTotFun @x0)

;; def=QuickTest.fst(9,18-9,106); use=QuickTest.fst(9,44-9,106)
(forall ((@x2 Term))
 (! (implies (HasType @x2
QuickTest.vale_state)
(IsTotFun (ApplyTT @x0
@x2)))
 

:pattern ((ApplyTT @x0
@x2))
:qid QuickTest_interpretation_Tm_arrow_745e349e9df404734fa11a4683e1fcbb.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_745e349e9df404734fa11a4683e1fcbb @x1)))
:qid QuickTest_interpretation_Tm_arrow_745e349e9df404734fa11a4683e1fcbb))

:named QuickTest_interpretation_Tm_arrow_745e349e9df404734fa11a4683e1fcbb))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,14-57,36)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6)
(and 
;; def=QuickTest.fst(57,17-57,35); use=QuickTest.fst(57,14-57,36)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))
:qid QuickTest_interpretation_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))

:named QuickTest_interpretation_Tm_arrow_2a3381d384e2722434518a0bfbf9e1c6))
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
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (QuickTest.wp.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4)
(QuickTest.wp.fuel_instrumented ZFuel
@x1
@x2
@x3
@x4))
 

:pattern ((QuickTest.wp.fuel_instrumented (SFuel @u0)
@x1
@x2
@x3
@x4))
:qid @fuel_irrelevance_QuickTest.wp.fuel_instrumented))

:named @fuel_irrelevance_QuickTest.wp.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name QuickTest.wp; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(51,8-51,10); use=QuickTest.fst(51,8-51,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (QuickTest.wp @x0
@x1
@x2
@x3)
(QuickTest.wp.fuel_instrumented MaxFuel
@x0
@x1
@x2
@x3))
 

:pattern ((QuickTest.wp @x0
@x1
@x2
@x3))
:qid @fuel_correspondence_QuickTest.wp.fuel_instrumented))

:named @fuel_correspondence_QuickTest.wp.fuel_instrumented))
(push) ;; push{2

; Starting query at QuickTest.fst(73,2-73,41)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
QuickTest.wp_block@tok))
:named @kick_partial_app_a96941eb66dc82fd04af755356df889b))

; Encoding query formula : forall (a: Type) (qcs: (_: QuickTest.vale_state -> Prims.GTot (QuickTest.quickCodes a))).
;   (*  - Could not prove post-condition
; *)
;   forall (s0: QuickTest.vale_state)
;     (k: (_: QuickTest.vale_state -> _: a -> Type0))
;     (p: Prims.pure_post (QuickTest.vale_state & a)).
;     QuickTest.wp_block qcs s0 k /\
;     (forall (ghost_result: QuickTest.vale_state & a).
;         QuickTest.t_ensure (QuickTest.wp_block qcs) s0 k ghost_result ==> p ghost_result) ==>
;     QuickTest.wp_block qcs s0 k /\
;     (forall (ghost_result: QuickTest.vale_state & a).
;         (let sM, g = ghost_result in
;           k sM g) ==>
;         p ghost_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let qblock`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_ghost_arrow_87ed0bf4a21c9d45404fda46aac1267d @x0)))

;; def=dummy(0,0-0,0); use=QuickTest.fst(73,23-73,41)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
QuickTest.vale_state)
(HasType @x3
(Tm_arrow_7725a41d7dd78e017968a18f5b1f6eab @x0))
(HasType @x4
(Prims.pure_post (FStar.Pervasives.Native.tuple2 QuickTest.vale_state
@x0)))

;; def=QuickTest.fst(16,14-16,21); use=QuickTest.fst(73,23-73,41)
(Valid 
;; def=QuickTest.fst(16,14-16,21); use=QuickTest.fst(73,23-73,41)
(QuickTest.wp_block @x0
@x1
@x2
@x3)
)


;; def=Prims.fst(485,36-485,100); use=QuickTest.fst(73,23-73,41)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(FStar.Pervasives.Native.tuple2 QuickTest.vale_state
@x0))

;; def=Prims.fst(485,63-485,80); use=QuickTest.fst(73,23-73,41)
(Valid 
;; def=Prims.fst(485,63-485,80); use=QuickTest.fst(73,23-73,41)
(QuickTest.t_ensure @x0
(ApplyTT (ApplyTT QuickTest.wp_block@tok
@x0)
@x1)
@x2
@x3
@x5)
)
)

;; def=Prims.fst(485,85-485,99); use=QuickTest.fst(73,23-73,41)
(Valid 
;; def=Prims.fst(485,85-485,99); use=QuickTest.fst(73,23-73,41)
(ApplyTT @x4
@x5)
)
)
 
;;no pats
:qid @query.2))
)

;; def=Prims.fst(485,29-485,100); use=QuickTest.fst(73,23-73,41)
(and 
;; def=QuickTest.fst(68,12-68,29); use=QuickTest.fst(73,23-73,41)
(or label_1

;; def=QuickTest.fst(68,12-68,29); use=QuickTest.fst(73,23-73,41)
(Valid 
;; def=QuickTest.fst(68,12-68,29); use=QuickTest.fst(73,23-73,41)
(QuickTest.wp_block @x0
@x1
@x2
@x3)
)
)


;; def=Prims.fst(485,36-485,100); use=QuickTest.fst(73,23-73,41)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(FStar.Pervasives.Native.tuple2 QuickTest.vale_state
@x0))
(let ((@lb6 @x5))

;; def=QuickTest.fst(69,26-69,32); use=QuickTest.fst(73,23-73,41)
(Valid 
;; def=QuickTest.fst(69,26-69,32); use=QuickTest.fst(73,23-73,41)
(ApplyTT (ApplyTT @x3
(FStar.Pervasives.Native.Mktuple2__1 @lb6))
(FStar.Pervasives.Native.Mktuple2__2 @lb6))
)
))

;; def=Prims.fst(485,85-485,99); use=QuickTest.fst(73,23-73,41)
(or label_2

;; def=Prims.fst(485,85-485,99); use=QuickTest.fst(73,23-73,41)
(Valid 
;; def=Prims.fst(485,85-485,99); use=QuickTest.fst(73,23-73,41)
(ApplyTT @x4
@x5)
)
)
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
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (QuickTest.qblock, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, equation_QuickTest.t_ensure

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let qblock


; <Start encoding let qblock>


(declare-fun QuickTest.qblock (Term Term) Term)

;;;;;;;;;;;;;;;;qcs: (_: vale_state -> Prims.GTot (quickCodes a)) -> quickCode a
(declare-fun Tm_arrow_2e82d886e4911cb2e3e55e52c5523143 () Term)
(declare-fun QuickTest.qblock@tok () Term)

; </end encoding let qblock>


; encoding sigelt let wp_sound_code_pre


; <Start encoding let wp_sound_code_pre>

(declare-fun Tm_refine_25748ee259bb54b87ecf8d9e3df3c676 (Term) Term)
;;;;;;;;;;;;;;;;s0': vale_state{s0 == s0'} -> _: vale_state -> _: a -> Type
(declare-fun Tm_arrow_96b957612b132e25c8bf25f629f2d56e (Term Term) Term)
(declare-fun QuickTest.wp_sound_code_pre (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;qc: quickCode a ->     s0: vale_state ->     k: (s0': vale_state{s0 == s0'} -> _: vale_state -> _: a -> Type)   -> Type
(declare-fun Tm_arrow_8ce0c921d649d24e73d7ef27565b7e8d () Term)
(declare-fun QuickTest.wp_sound_code_pre@tok () Term)



; </end encoding let wp_sound_code_pre>


; encoding sigelt let wp_sound_code_post


; <Start encoding let wp_sound_code_post>



(declare-fun QuickTest.wp_sound_code_post (Term Term Term Term Term) Term)


;;;;;;;;;;;;;;;;qc: quickCode a ->     s0: vale_state ->     k: (s0': vale_state{s0 == s0'} -> _: vale_state -> _: a -> Type) ->     _: vale_state & a   -> Type
(declare-fun Tm_arrow_85f0663bcd4cbea6f770aa53f9be86cf () Term)
(declare-fun QuickTest.wp_sound_code_post@tok () Term)



; </end encoding let wp_sound_code_post>


; encoding sigelt let normal_steps


; <Start encoding let normal_steps>

(declare-fun QuickTest.normal_steps (Dummy_sort) Term)

; </end encoding let normal_steps>


; encoding sigelt let normal


; <Start encoding let normal>

(declare-fun QuickTest.normal (Term) Term)

(declare-fun QuickTest.normal@tok () Term)

; </end encoding let normal>


; encoding sigelt val QuickTest.wp_sound_code_norm


; <Start encoding val QuickTest.wp_sound_code_norm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun QuickTest.wp_sound_code_norm (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun QuickTest.wp_sound_code_norm@tok () Term)

; </end encoding val QuickTest.wp_sound_code_norm>


; encoding sigelt val QuickTest.f


; <Start encoding val QuickTest.f>

(declare-fun QuickTest.f (Term) Term)

(declare-fun QuickTest.f@tok () Term)

; </end encoding val QuickTest.f>


; encoding sigelt val QuickTest.lem


; <Start encoding val QuickTest.lem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun QuickTest.lem (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun QuickTest.lem@tok () Term)

; </end encoding val QuickTest.lem>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name QuickTest.f; Namespace QuickTest
(assert (! 
;; def=QuickTest.fst(89,11-89,12); use=QuickTest.fst(89,11-89,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)
(HasType (QuickTest.f @x0)
Prims.int))
 

:pattern ((QuickTest.f @x0))
:qid typing_QuickTest.f))

:named typing_QuickTest.f))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(333,4-333,22); use=Prims.fst(333,4-333,22)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.pure_wp_ @x0)))
(HasType (Prims.pure_wp_monotonic0 @x0
@x1)
Prims.logical))
 

:pattern ((Prims.pure_wp_monotonic0 @x0
@x1))
:qid typing_Prims.pure_wp_monotonic0))

:named typing_Prims.pure_wp_monotonic0))
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
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(333,4-333,22); use=Prims.fst(333,4-333,22)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Prims.pure_wp_monotonic0@tok
@x0)
@x1)
(Prims.pure_wp_monotonic0 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Prims.pure_wp_monotonic0@tok
@x0)
@x1))
:qid token_correspondence_Prims.pure_wp_monotonic0))

:named token_correspondence_Prims.pure_wp_monotonic0))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Prims.pure_wp_monotonic; Namespace Prims
(assert (! 
;; def=Prims.fst(337,4-337,21); use=Prims.fst(337,4-337,21)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Prims.pure_wp_monotonic@tok
@x0)
@x1)
(Prims.pure_wp_monotonic @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Prims.pure_wp_monotonic@tok
@x0)
@x1))
:qid token_correspondence_Prims.pure_wp_monotonic))

:named token_correspondence_Prims.pure_wp_monotonic))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! (HasType Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e
Tm_type)
:named kinding_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(333,4-333,22); use=Prims.fst(333,4-333,22)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Prims.pure_wp_monotonic0@tok
Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))

;; def=Prims.fst(333,4-333,22); use=Prims.fst(333,4-333,22)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Prims.pure_wp_monotonic0@tok
@x1)
@x2)
(Prims.pure_wp_monotonic0 @x1
@x2))
 

:pattern ((Prims.pure_wp_monotonic0 @x1
@x2))
:qid function_token_typing_Prims.pure_wp_monotonic0.1))
)
 

:pattern ((ApplyTT @x0
Prims.pure_wp_monotonic0@tok))
:qid function_token_typing_Prims.pure_wp_monotonic0))

:named function_token_typing_Prims.pure_wp_monotonic0))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Prims.pure_wp_monotonic; Namespace Prims
(assert (! 
;; def=Prims.fst(337,4-337,21); use=Prims.fst(337,4-337,21)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Prims.pure_wp_monotonic@tok
Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))

;; def=Prims.fst(337,4-337,21); use=Prims.fst(337,4-337,21)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT Prims.pure_wp_monotonic@tok
@x1)
@x2)
(Prims.pure_wp_monotonic @x1
@x2))
 

:pattern ((Prims.pure_wp_monotonic @x1
@x2))
:qid function_token_typing_Prims.pure_wp_monotonic.1))
)
 

:pattern ((ApplyTT @x0
Prims.pure_wp_monotonic@tok))
:qid function_token_typing_Prims.pure_wp_monotonic))

:named function_token_typing_Prims.pure_wp_monotonic))
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
;;;;;;;;;;;;;;;;Equation for Prims.pure_wp_monotonic0
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(333,4-333,22); use=Prims.fst(333,4-333,22)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (Prims.pure_wp_monotonic0 @x0
@x1))

;; def=Prims.fst(334,2-334,75); use=Prims.fst(334,2-334,75)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
(Prims.pure_post @x0))
(HasType @x3
(Prims.pure_post @x0))

;; def=Prims.fst(334,28-334,55); use=Prims.fst(334,28-334,55)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
@x0)

;; def=Prims.fst(334,43-334,46); use=Prims.fst(334,43-334,46)
(Valid 
;; def=Prims.fst(334,43-334,46); use=Prims.fst(334,43-334,46)
(ApplyTT @x2
@x4)
)
)

;; def=Prims.fst(334,51-334,54); use=Prims.fst(334,51-334,54)
(Valid 
;; def=Prims.fst(334,51-334,54); use=Prims.fst(334,51-334,54)
(ApplyTT @x3
@x4)
)
)
 
;;no pats
:qid equation_Prims.pure_wp_monotonic0.2))


;; def=Prims.fst(334,61-334,65); use=Prims.fst(334,61-334,65)
(Valid 
;; def=Prims.fst(334,61-334,65); use=Prims.fst(334,61-334,65)
(ApplyTT @x1
@x2)
)
)

;; def=Prims.fst(334,70-334,74); use=Prims.fst(334,70-334,74)
(Valid 
;; def=Prims.fst(334,70-334,74); use=Prims.fst(334,70-334,74)
(ApplyTT @x1
@x3)
)
)
 
;;no pats
:qid equation_Prims.pure_wp_monotonic0.1))
)
 

:pattern ((Prims.pure_wp_monotonic0 @x0
@x1))
:qid equation_Prims.pure_wp_monotonic0))

:named equation_Prims.pure_wp_monotonic0))
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
;;;;;;;;;;;;;;;;Prop-typing for Prims.pure_wp_monotonic0
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(333,4-333,22); use=Prims.fst(333,4-333,22)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Prims.pure_wp_ @x0)))
(Valid (Prims.subtype_of (Prims.pure_wp_monotonic0 @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Prims.pure_wp_monotonic0 @x0
@x1)
Prims.unit))
:qid defn_equation_Prims.pure_wp_monotonic0))

:named defn_equation_Prims.pure_wp_monotonic0))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(286,50-333,46); use=Prims.fst(333,26-334,26)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))
:qid Prims_pre_typing_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))

:named Prims_pre_typing_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e
;;; Fact-ids: Name Prims.pure_wp_monotonic0; Namespace Prims
(assert (! 
;; def=Prims.fst(286,50-333,46); use=Prims.fst(333,26-334,26)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e)
(and 
;; def=Prims.fst(286,50-333,46); use=Prims.fst(333,26-334,26)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Prims.pure_wp_ @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
Prims.logical))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Prims_interpretation_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e.1))

(IsTotFun @x0)

;; def=Prims.fst(286,50-333,46); use=Prims.fst(333,26-334,26)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Prims_interpretation_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))
:qid Prims_interpretation_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))

:named Prims_interpretation_Tm_arrow_85436e2c1c64a4dd0159a737ef5b212e))
(push) ;; push{2

; Starting query at QuickTest.fst(97,0-106,3)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;i: Prims.int -> Prims.GTot Type0
(declare-fun Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2
Tm_type)
:named kinding_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(92,22-92,25); use=QuickTest.fst(101,6-105,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
:qid QuickTest_pre_typing_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))

:named QuickTest_pre_typing_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(92,22-92,25); use=QuickTest.fst(101,6-105,7)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2)
(and 
;; def=QuickTest.fst(92,22-92,25); use=QuickTest.fst(101,6-105,7)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
:qid QuickTest_interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))

:named QuickTest_interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
(declare-fun Tm_abs_bcb9b874f20bfd13ade209f93dd01207 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_bcb9b874f20bfd13ade209f93dd01207
;;; Fact-ids: 
(assert (! (HasType Tm_abs_bcb9b874f20bfd13ade209f93dd01207
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2)
:named typing_Tm_abs_bcb9b874f20bfd13ade209f93dd01207))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bcb9b874f20bfd13ade209f93dd01207
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(92,11-92,50); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_bcb9b874f20bfd13ade209f93dd01207
@x0)
(Prims.b2t (Prims.op_GreaterThan (QuickTest.f @x0)
(BoxInt 0))))
 

:pattern ((ApplyTT Tm_abs_bcb9b874f20bfd13ade209f93dd01207
@x0))
:qid interpretation_Tm_abs_bcb9b874f20bfd13ade209f93dd01207))

:named interpretation_Tm_abs_bcb9b874f20bfd13ade209f93dd01207))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.l_Forall Prims.int
Tm_abs_bcb9b874f20bfd13ade209f93dd01207))

;; def=QuickTest.fst(92,11-92,50); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)

;; def=QuickTest.fst(92,42-92,49); use=QuickTest.fst(101,39-101,42)
(> (BoxInt_proj_0 (QuickTest.f @x0))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x0))
:qid l_quant_interp_87b8742d5c90d5a7cb5192d121ae2110))
)
:named l_quant_interp_87b8742d5c90d5a7cb5192d121ae2110))

(declare-fun Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0)
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
 

:pattern ((Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))
:qid typing_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))

:named typing_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x1)
@x0)
(Prims.l_imp (Prims.l_Forall Prims.int
Tm_abs_bcb9b874f20bfd13ade209f93dd01207)
(ApplyTT @x1
@x0)))
 

:pattern ((ApplyTT (Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x1)
@x0))
:qid interpretation_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))

:named interpretation_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0)))

;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(101,39-101,42)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.unit)

;; def=QuickTest.fst(92,11-92,50); use=QuickTest.fst(101,39-101,42)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=QuickTest.fst(92,42-92,49); use=QuickTest.fst(101,39-101,42)
(> (BoxInt_proj_0 (QuickTest.f @x2))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x2))
:qid l_quant_interp_22caf454d04a6b99218d77caf1b22642.2))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(101,39-101,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(101,39-101,42)
(ApplyTT @x0
@x1)
)
)
 
;;no pats
:qid l_quant_interp_22caf454d04a6b99218d77caf1b22642.1))
)
 

:pattern ((Valid (Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))))
:qid l_quant_interp_22caf454d04a6b99218d77caf1b22642))

:named l_quant_interp_22caf454d04a6b99218d77caf1b22642))
;;;;;;;;;;;;;;;;p: Prims.pure_post Prims.unit -> Prims.logical
(declare-fun Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21
Tm_type)
:named kinding_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(188,39-441,24); use=QuickTest.fst(101,39-101,42)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
:qid QuickTest_pre_typing_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))

:named QuickTest_pre_typing_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(188,39-441,24); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
(and 
;; def=Prims.fst(188,39-441,24); use=QuickTest.fst(101,39-101,42)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.pure_post Prims.unit))
(HasType (ApplyTT @x0
@x1)
Prims.logical))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
:qid QuickTest_interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))

:named QuickTest_interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
(declare-fun Tm_abs_94acc224dbae00cebc47585d496e9dfe () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_94acc224dbae00cebc47585d496e9dfe
;;; Fact-ids: 
(assert (! (HasType Tm_abs_94acc224dbae00cebc47585d496e9dfe
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
:named typing_Tm_abs_94acc224dbae00cebc47585d496e9dfe))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_94acc224dbae00cebc47585d496e9dfe
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(101,39-101,42)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_94acc224dbae00cebc47585d496e9dfe
@x0)
(Prims.l_and (Prims.eq2 Prims.int
(Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
(Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))))
 

:pattern ((ApplyTT Tm_abs_94acc224dbae00cebc47585d496e9dfe
@x0))
:qid interpretation_Tm_abs_94acc224dbae00cebc47585d496e9dfe))

:named interpretation_Tm_abs_94acc224dbae00cebc47585d496e9dfe))







(declare-fun Tm_abs_28d8b753ff960e93610d2c149dffed61 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_28d8b753ff960e93610d2c149dffed61
;;; Fact-ids: 
(assert (! (HasType Tm_abs_28d8b753ff960e93610d2c149dffed61
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
:named typing_Tm_abs_28d8b753ff960e93610d2c149dffed61))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_28d8b753ff960e93610d2c149dffed61
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(102,39-102,42)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_28d8b753ff960e93610d2c149dffed61
@x0)
(Prims.l_and (Prims.eq2 Prims.int
(Prims.op_Subtraction (QuickTest.f (BoxInt 5))
(QuickTest.f (BoxInt 5)))
(BoxInt 0))
(Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))))
 

:pattern ((ApplyTT Tm_abs_28d8b753ff960e93610d2c149dffed61
@x0))
:qid interpretation_Tm_abs_28d8b753ff960e93610d2c149dffed61))

:named interpretation_Tm_abs_28d8b753ff960e93610d2c149dffed61))







(declare-fun Tm_abs_94b2e56008f023cc927c7b4c9673a6d5 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_94b2e56008f023cc927c7b4c9673a6d5
;;; Fact-ids: 
(assert (! (HasType Tm_abs_94b2e56008f023cc927c7b4c9673a6d5
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
:named typing_Tm_abs_94b2e56008f023cc927c7b4c9673a6d5))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_94b2e56008f023cc927c7b4c9673a6d5
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(103,39-103,42)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_94b2e56008f023cc927c7b4c9673a6d5
@x0)
(Prims.l_and (Prims.eq2 Prims.int
(Prims.op_Subtraction (QuickTest.f (BoxInt 6))
(QuickTest.f (BoxInt 6)))
(BoxInt 0))
(Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))))
 

:pattern ((ApplyTT Tm_abs_94b2e56008f023cc927c7b4c9673a6d5
@x0))
:qid interpretation_Tm_abs_94b2e56008f023cc927c7b4c9673a6d5))

:named interpretation_Tm_abs_94b2e56008f023cc927c7b4c9673a6d5))
















;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Prims.pure_wp_monotonic0@tok))
:named @kick_partial_app_25616340d459cde424d4aeb089ef1ac9))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Prims.pure_wp_monotonic@tok))
:named @kick_partial_app_b166469916763497ecd6e2634f4ebf75))

; Encoding query formula : forall (pure_result: Prims.unit).
;   Prims.pure_wp_monotonic0 == Prims.pure_wp_monotonic ==>
;   (forall (va_s: QuickTest.vale_state).
;       (*  - Could not prove post-condition
; *)
;       Prims.auto_squash (Prims.pure_wp_monotonic Prims.unit
;             (fun p ->
;                 QuickTest.f 4 - QuickTest.f 4 == 0 /\
;                 (forall (pure_result: Prims.unit).
;                     (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                     p pure_result))) /\
;       (forall (any_result: Prims.pure_wp Prims.unit).
;           (fun p ->
;               QuickTest.f 4 - QuickTest.f 4 == 0 /\
;               (forall (pure_result: Prims.unit).
;                   (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                   p pure_result)) ==
;           any_result ==>
;           Prims.auto_squash (Prims.pure_wp_monotonic Prims.unit
;                 (fun p ->
;                     QuickTest.f 5 - QuickTest.f 5 == 0 /\
;                     (forall (pure_result: Prims.unit).
;                         (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                         p pure_result))) /\
;           (forall (any_result: Prims.pure_wp Prims.unit).
;               (fun p ->
;                   QuickTest.f 5 - QuickTest.f 5 == 0 /\
;                   (forall (pure_result: Prims.unit).
;                       (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                       p pure_result)) ==
;               any_result ==>
;               Prims.auto_squash (Prims.pure_wp_monotonic Prims.unit
;                     (fun p ->
;                         QuickTest.f 6 - QuickTest.f 6 == 0 /\
;                         (forall (pure_result: Prims.unit).
;                             (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                             p pure_result))))))


; Context: While encoding a query
; While checking for top-level effects
; While typechecking the top-level declaration `let va_qcode_Test`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(98,2-98,15)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
Prims.unit)

;; def=FStar.Pervasives.fsti(328,60-328,78); use=QuickTest.fst(98,2-98,15)
(= Prims.pure_wp_monotonic0@tok
Prims.pure_wp_monotonic@tok)
)
(forall ((@x1 Term))
 (! (implies (HasType @x1
QuickTest.vale_state)

;; def=Prims.fst(459,77-459,89); use=QuickTest.fst(101,6-105,7)
(and 
;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(101,39-101,42)
(or label_1

;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(101,39-101,42)
(Valid 
;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(101,39-101,42)
(Prims.pure_wp_monotonic Prims.unit
Tm_abs_94acc224dbae00cebc47585d496e9dfe)
)
)


;; def=Prims.fst(451,66-451,102); use=QuickTest.fst(101,6-105,7)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(Prims.pure_wp Prims.unit))

;; def=QuickTest.fst(42,6-42,9); use=QuickTest.fst(101,6-105,7)
(= Tm_abs_94acc224dbae00cebc47585d496e9dfe
@x2)
)

;; def=Prims.fst(459,77-459,89); use=QuickTest.fst(101,6-105,7)
(and 
;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(102,39-102,42)
(or label_2

;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(102,39-102,42)
(Valid 
;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(102,39-102,42)
(Prims.pure_wp_monotonic Prims.unit
Tm_abs_28d8b753ff960e93610d2c149dffed61)
)
)


;; def=Prims.fst(451,66-451,102); use=QuickTest.fst(101,6-105,7)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(Prims.pure_wp Prims.unit))

;; def=QuickTest.fst(42,6-42,9); use=QuickTest.fst(101,6-105,7)
(= Tm_abs_28d8b753ff960e93610d2c149dffed61
@x3)
)

;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(103,39-103,42)
(or label_3

;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(103,39-103,42)
(Valid 
;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(103,39-103,42)
(Prims.pure_wp_monotonic Prims.unit
Tm_abs_94b2e56008f023cc927c7b4c9673a6d5)
)
)
)
 
;;no pats
:qid @query.3))
)
)
 
;;no pats
:qid @query.2))
)
)
 
;;no pats
:qid @query.1)))
 
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
; QUERY ID: (QuickTest.va_qcode_Test, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, Prims_pretyping_f8666440faa91836cc5a13998af863fc, eq2-interp, equation_Prims.pure_wp_monotonic0, function_token_typing_Prims.__cache_version_number__, function_token_typing_Prims.pure_wp_monotonic, interpretation_Tm_abs_28d8b753ff960e93610d2c149dffed61, interpretation_Tm_abs_94acc224dbae00cebc47585d496e9dfe, interpretation_Tm_abs_94b2e56008f023cc927c7b4c9673a6d5, l_and-interp, l_quant_interp_22caf454d04a6b99218d77caf1b22642, primitive_Prims.op_Subtraction, token_correspondence_Prims.pure_wp_monotonic0, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let va_qcode_Test


; <Start encoding let va_qcode_Test>

(declare-fun QuickTest.va_qcode_Test (Dummy_sort) Term)

; </end encoding let va_qcode_Test>

(push) ;; push{2

; Starting query at QuickTest.fst(109,2-112,34)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)




; Encoding query formula : forall (va_s0: QuickTest.vale_state).
;   (*  - Could not prove post-condition
; *)
;   forall (ok: Prims.bool).
;     (forall (p: (_: Prims.unit -> Prims.GTot Type0)).
;         (forall (u317: Prims.unit). {:pattern Prims.guard_free (p u317)}
;             (forall (p: (_: Prims.unit -> Prims.GTot Type0)).
;                 (forall (u320: Prims.unit). {:pattern Prims.guard_free (p u320)}
;                     (forall (p: (_: Prims.unit -> Prims.GTot Type0)).
;                         (forall (u323: Prims.unit). {:pattern Prims.guard_free (p u323)}
;                             Prims.auto_squash (p ())) ==>
;                         FStar.Range.labeled (FStar.Sealed.seal QuickTest(1,2-3,4))
;                           ""
;                           (QuickTest.f 6 - QuickTest.f 6 == 0 /\
;                             (forall (pure_result: Prims.unit).
;                                 (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                                 p pure_result))) ==>
;                     p ()) ==>
;                 FStar.Range.labeled (FStar.Sealed.seal QuickTest(1,2-3,4))
;                   ""
;                   (QuickTest.f 5 - QuickTest.f 5 == 0 /\
;                     (forall (pure_result: Prims.unit).
;                         (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                         p pure_result))) ==>
;             p ()) ==>
;         FStar.Range.labeled (FStar.Sealed.seal QuickTest(1,2-3,4))
;           ""
;           (QuickTest.f 4 - QuickTest.f 4 == 0 /\
;             (forall (pure_result: Prims.unit).
;                 (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                 p pure_result)))
;     <:
;     Type0


; Context: While encoding a query
; While typechecking the top-level declaration `let va_lemma_Test`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
QuickTest.vale_state)

;; def=QuickTest.fst(77,2-77,42); use=QuickTest.fst(109,2-109,20)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.bool)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x3 Term))
 (! (implies 
;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x5 Term))
 (! (implies 
;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x7 Term))
 (! 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x6
Tm_unit)
)

 

:pattern ((ApplyTT @x6
@x7))
:qid @query.7))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(103,39-103,42)
(and 
;; def=QuickTest.fst(91,12-91,26); use=QuickTest(1,2-3,4)
(or label_1

;; def=QuickTest.fst(91,12-91,26); use=QuickTest.fst(103,39-103,42)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 6))
(QuickTest.f (BoxInt 6)))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(103,39-103,42)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Prims.unit)

;; def=QuickTest.fst(92,11-92,50); use=QuickTest.fst(103,39-103,42)
(forall ((@x8 Term))
 (! (implies (HasType @x8
Prims.int)

;; def=QuickTest.fst(92,42-92,49); use=QuickTest.fst(103,39-103,42)
(> (BoxInt_proj_0 (QuickTest.f @x8))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x8))
:qid @query.9))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest(1,2-3,4)
(or label_2

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(103,39-103,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(103,39-103,42)
(ApplyTT @x6
@x7)
)
)
)
 
;;no pats
:qid @query.8))
)
)
 
;;no pats
:qid @query.6))


;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x4
Tm_unit)
)
)
 :weight 0


:pattern ((ApplyTT @x4
@x5))
:qid @query.5))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(102,39-102,42)
(and 
;; def=QuickTest.fst(91,12-91,26); use=QuickTest(1,2-3,4)
(or label_3

;; def=QuickTest.fst(91,12-91,26); use=QuickTest.fst(102,39-102,42)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 5))
(QuickTest.f (BoxInt 5)))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(102,39-102,42)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=QuickTest.fst(92,11-92,50); use=QuickTest.fst(102,39-102,42)
(forall ((@x6 Term))
 (! (implies (HasType @x6
Prims.int)

;; def=QuickTest.fst(92,42-92,49); use=QuickTest.fst(102,39-102,42)
(> (BoxInt_proj_0 (QuickTest.f @x6))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x6))
:qid @query.11))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(102,39-102,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(102,39-102,42)
(ApplyTT @x4
@x5)
)
)
 
;;no pats
:qid @query.10))
)
)
 
;;no pats
:qid @query.4))


;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x2
Tm_unit)
)
)
 :weight 0


:pattern ((ApplyTT @x2
@x3))
:qid @query.3))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(101,39-101,42)
(and 
;; def=QuickTest.fst(91,12-91,26); use=QuickTest(1,2-3,4)
(or label_4

;; def=QuickTest.fst(91,12-91,26); use=QuickTest.fst(101,39-101,42)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(101,39-101,42)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=QuickTest.fst(92,11-92,50); use=QuickTest.fst(101,39-101,42)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=QuickTest.fst(92,42-92,49); use=QuickTest.fst(101,39-101,42)
(> (BoxInt_proj_0 (QuickTest.f @x4))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x4))
:qid @query.13))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(101,39-101,42)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(101,39-101,42)
(ApplyTT @x2
@x3)
)
)
 
;;no pats
:qid @query.12))
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
; QUERY ID: (QuickTest.va_lemma_Test, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, primitive_Prims.op_Subtraction, unit_inversion

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let va_lemma_Test


; <Start encoding let va_lemma_Test>

(declare-fun QuickTest.va_lemma_Test (Term) Term)
;;;;;;;;;;;;;;;;va_s0: vale_state -> Prims.unit
(declare-fun Tm_arrow_939ee5248ae5903fbefc6eb8d3a82c84 () Term)
(declare-fun QuickTest.va_lemma_Test@tok () Term)

; </end encoding let va_lemma_Test>


; encoding sigelt val QuickTest.lem2


; <Start encoding val QuickTest.lem2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun QuickTest.lem2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun QuickTest.lem2@tok () Term)

; </end encoding val QuickTest.lem2>

(push) ;; push{2

; Starting query at QuickTest.fst(120,0-127,3)

(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;i: Prims.int -> Prims.GTot Type0
(declare-fun Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2
Tm_type)
:named kinding_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(117,22-117,25); use=QuickTest.fst(124,6-126,5)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
:qid QuickTest_pre_typing_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))

:named QuickTest_pre_typing_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(117,22-117,25); use=QuickTest.fst(124,6-126,5)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2)
(and 
;; def=QuickTest.fst(117,22-117,25); use=QuickTest.fst(124,6-126,5)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.int)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
:qid QuickTest_interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))

:named QuickTest_interpretation_Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2))
(declare-fun Tm_abs_bcb9b874f20bfd13ade209f93dd01207 () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_bcb9b874f20bfd13ade209f93dd01207
;;; Fact-ids: 
(assert (! (HasType Tm_abs_bcb9b874f20bfd13ade209f93dd01207
Tm_arrow_fce5e26d6599fbb4e26956c05e4721d2)
:named typing_Tm_abs_bcb9b874f20bfd13ade209f93dd01207))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_bcb9b874f20bfd13ade209f93dd01207
;;; Fact-ids: 
(assert (! 
;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_bcb9b874f20bfd13ade209f93dd01207
@x0)
(Prims.b2t (Prims.op_GreaterThan (QuickTest.f @x0)
(BoxInt 0))))
 

:pattern ((ApplyTT Tm_abs_bcb9b874f20bfd13ade209f93dd01207
@x0))
:qid interpretation_Tm_abs_bcb9b874f20bfd13ade209f93dd01207))

:named interpretation_Tm_abs_bcb9b874f20bfd13ade209f93dd01207))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! (iff (Valid (Prims.l_Forall Prims.int
Tm_abs_bcb9b874f20bfd13ade209f93dd01207))

;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)

;; def=QuickTest.fst(117,42-117,49); use=QuickTest.fst(124,39-124,43)
(> (BoxInt_proj_0 (QuickTest.f @x0))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x0))
:qid l_quant_interp_87b8742d5c90d5a7cb5192d121ae2110))
)
:named l_quant_interp_87b8742d5c90d5a7cb5192d121ae2110))

(declare-fun Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded (Term) Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0)
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)
 

:pattern ((Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))
:qid typing_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))

:named typing_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x1)
@x0)
(Prims.l_imp (Prims.l_Forall Prims.int
Tm_abs_bcb9b874f20bfd13ade209f93dd01207)
(ApplyTT @x1
@x0)))
 

:pattern ((ApplyTT (Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x1)
@x0))
:qid interpretation_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))

:named interpretation_Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded))
;;;;;;;;;;;;;;;;Interpretation of deeply embedded quantifier
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0)))

;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Prims.unit)

;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.int)

;; def=QuickTest.fst(117,42-117,49); use=QuickTest.fst(124,39-124,43)
(> (BoxInt_proj_0 (QuickTest.f @x2))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x2))
:qid l_quant_interp_22caf454d04a6b99218d77caf1b22642.2))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(ApplyTT @x0
@x1)
)
)
 
;;no pats
:qid l_quant_interp_22caf454d04a6b99218d77caf1b22642.1))
)
 

:pattern ((Valid (Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))))
:qid l_quant_interp_22caf454d04a6b99218d77caf1b22642))

:named l_quant_interp_22caf454d04a6b99218d77caf1b22642))
;;;;;;;;;;;;;;;;p: Prims.pure_post Prims.unit -> Prims.logical
(declare-fun Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21
Tm_type)
:named kinding_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(188,39-441,24); use=QuickTest.fst(124,39-124,43)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
:qid QuickTest_pre_typing_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))

:named QuickTest_pre_typing_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(188,39-441,24); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
(and 
;; def=Prims.fst(188,39-441,24); use=QuickTest.fst(124,39-124,43)
(forall ((@x1 Term))
 (! (implies (HasType @x1
(Prims.pure_post Prims.unit))
(HasType (ApplyTT @x0
@x1)
Prims.logical))
 

:pattern ((ApplyTT @x0
@x1))
:qid QuickTest_interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
:qid QuickTest_interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))

:named QuickTest_interpretation_Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21))
(declare-fun Tm_abs_33a9c06ef337946eca3fef717a50082c () Term)
;;;;;;;;;;;;;;;;typing_Tm_abs_33a9c06ef337946eca3fef717a50082c
;;; Fact-ids: 
(assert (! (HasType Tm_abs_33a9c06ef337946eca3fef717a50082c
Tm_arrow_6d40a3ff25433fc91a0f28572e37ed21)
:named typing_Tm_abs_33a9c06ef337946eca3fef717a50082c))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_33a9c06ef337946eca3fef717a50082c
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x0 Term))
 (! (= (ApplyTT Tm_abs_33a9c06ef337946eca3fef717a50082c
@x0)
(Prims.l_and (Prims.l_and (Prims.eq2 Prims.int
(Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
(Prims.eq2 Prims.int
(QuickTest.f (BoxInt 4))
(BoxInt 0)))
(Prims.l_Forall Prims.unit
(Tm_abs_e4b57d361a8b8d7d1c206086f2c37ded @x0))))
 

:pattern ((ApplyTT Tm_abs_33a9c06ef337946eca3fef717a50082c
@x0))
:qid interpretation_Tm_abs_33a9c06ef337946eca3fef717a50082c))

:named interpretation_Tm_abs_33a9c06ef337946eca3fef717a50082c))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Prims.pure_wp_monotonic0@tok))
:named @kick_partial_app_25616340d459cde424d4aeb089ef1ac9))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
Prims.pure_wp_monotonic@tok))
:named @kick_partial_app_b166469916763497ecd6e2634f4ebf75))

; Encoding query formula : forall (pure_result: Prims.unit).
;   Prims.pure_wp_monotonic0 == Prims.pure_wp_monotonic ==>
;   (forall (va_s: QuickTest.vale_state).
;       (*  - Could not prove post-condition
; *)
;       Prims.auto_squash (Prims.pure_wp_monotonic Prims.unit
;             (fun p ->
;                 QuickTest.f 4 - QuickTest.f 4 == 0 /\ QuickTest.f 4 == 0 /\
;                 (forall (pure_result: Prims.unit).
;                     (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                     p pure_result))))


; Context: While encoding a query
; While checking for top-level effects
; While typechecking the top-level declaration `let va_qcode_Test2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(121,2-121,15)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
Prims.unit)

;; def=FStar.Pervasives.fsti(328,60-328,78); use=QuickTest.fst(121,2-121,15)
(= Prims.pure_wp_monotonic0@tok
Prims.pure_wp_monotonic@tok)
)
(forall ((@x1 Term))
 (! (implies (HasType @x1
QuickTest.vale_state)

;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(124,39-124,43)
(or label_1

;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(124,39-124,43)
(Valid 
;; def=Prims.fst(339,38-339,60); use=QuickTest.fst(124,39-124,43)
(Prims.pure_wp_monotonic Prims.unit
Tm_abs_33a9c06ef337946eca3fef717a50082c)
)
)
)
 
;;no pats
:qid @query.1)))
 
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
; QUERY ID: (QuickTest.va_qcode_Test2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, Prims_pretyping_f8666440faa91836cc5a13998af863fc, eq2-interp, equation_Prims.pure_wp_monotonic0, function_token_typing_Prims.__cache_version_number__, function_token_typing_Prims.pure_wp_monotonic, int_typing, interpretation_Tm_abs_33a9c06ef337946eca3fef717a50082c, l_and-interp, l_quant_interp_22caf454d04a6b99218d77caf1b22642, projection_inverse_BoxInt_proj_0, token_correspondence_Prims.pure_wp_monotonic0, unit_typing

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let va_qcode_Test2


; <Start encoding let va_qcode_Test2>

(declare-fun QuickTest.va_qcode_Test2 (Dummy_sort) Term)

; </end encoding let va_qcode_Test2>

(push) ;; push{2

; expect_failure

(push) ;; push{3

; Starting query at QuickTest.fst(131,2-134,34)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (va_s0: QuickTest.vale_state).
;   (*  - Could not prove post-condition
; *)
;   forall (ok: Prims.bool).
;     (forall (p: (_: Prims.unit -> Prims.GTot Type0)).
;         (forall (u180: Prims.unit). {:pattern Prims.guard_free (p u180)} Prims.auto_squash (p ())) ==>
;         FStar.Range.labeled (FStar.Sealed.seal QuickTest(1,2-3,4))
;           ""
;           (QuickTest.f 4 - QuickTest.f 4 == 0 /\ QuickTest.f 4 == 0 /\
;             (forall (pure_result: Prims.unit).
;                 (forall (i: Prims.int). {:pattern QuickTest.f i} QuickTest.f i > 0) ==>
;                 p pure_result)))
;     <:
;     Type0


; Context: While encoding a query
; While typechecking the top-level declaration `let va_lemma_Test2`
; While typechecking the top-level declaration `[@@expect_failure] let va_lemma_Test2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
QuickTest.vale_state)

;; def=QuickTest.fst(77,2-77,42); use=QuickTest.fst(131,2-131,20)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.bool)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x3 Term))
 (! 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x2
Tm_unit)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.3))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(124,39-124,43)
(and 
;; def=QuickTest.fst(115,12-115,26); use=QuickTest(1,2-3,4)
(or label_1

;; def=QuickTest.fst(115,12-115,26); use=QuickTest.fst(124,39-124,43)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
)


;; def=QuickTest.fst(116,12-116,20); use=QuickTest(1,2-3,4)
(or label_2

;; def=QuickTest.fst(116,12-116,20); use=QuickTest.fst(124,39-124,43)
(= (QuickTest.f (BoxInt 4))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=QuickTest.fst(117,42-117,49); use=QuickTest.fst(124,39-124,43)
(> (BoxInt_proj_0 (QuickTest.f @x4))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x4))
:qid @query.5))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest(1,2-3,4)
(or label_3

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(ApplyTT @x2
@x3)
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
; QUERY ID: (QuickTest.va_lemma_Test2, 1)
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
QuickTest.vale_state)

;; def=QuickTest.fst(77,2-77,42); use=QuickTest.fst(131,2-131,20)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.bool)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x3 Term))
 (! 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x2
Tm_unit)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.3))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(124,39-124,43)
(and 
;; def=QuickTest.fst(115,12-115,26); use=QuickTest(1,2-3,4)
(or label_1

;; def=QuickTest.fst(115,12-115,26); use=QuickTest.fst(124,39-124,43)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
)


;; def=QuickTest.fst(116,12-116,20); use=QuickTest(1,2-3,4)
(or label_2

;; def=QuickTest.fst(116,12-116,20); use=QuickTest.fst(124,39-124,43)
(= (QuickTest.f (BoxInt 4))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=QuickTest.fst(117,42-117,49); use=QuickTest.fst(124,39-124,43)
(> (BoxInt_proj_0 (QuickTest.f @x4))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x4))
:qid @query.5))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest(1,2-3,4)
(or label_3

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(ApplyTT @x2
@x3)
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
; QUERY ID: (QuickTest.va_lemma_Test2, 1)
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
QuickTest.vale_state)

;; def=QuickTest.fst(77,2-77,42); use=QuickTest.fst(131,2-131,20)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.bool)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x3 Term))
 (! 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x2
Tm_unit)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.3))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(124,39-124,43)
(and 
;; def=QuickTest.fst(115,12-115,26); use=QuickTest(1,2-3,4)
(or label_1

;; def=QuickTest.fst(115,12-115,26); use=QuickTest.fst(124,39-124,43)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
)


;; def=QuickTest.fst(116,12-116,20); use=QuickTest(1,2-3,4)
(or label_2

;; def=QuickTest.fst(116,12-116,20); use=QuickTest.fst(124,39-124,43)
(= (QuickTest.f (BoxInt 4))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=QuickTest.fst(117,42-117,49); use=QuickTest.fst(124,39-124,43)
(> (BoxInt_proj_0 (QuickTest.f @x4))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x4))
:qid @query.5))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest(1,2-3,4)
(or label_3

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(ApplyTT @x2
@x3)
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
; QUERY ID: (QuickTest.va_lemma_Test2, 1)
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
 (! (implies (HasType @x0
QuickTest.vale_state)

;; def=QuickTest.fst(77,2-77,42); use=QuickTest.fst(131,2-131,20)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Prims.bool)

;; def=QuickTest.fst(57,6-60,28); use=QuickTest.fst(57,6-60,28)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_arrow_b9ff16838ca14be79c4714dd5f2c76fe)

;; def=QuickTest.fst(58,8-58,76); use=QuickTest.fst(58,8-58,76)
(forall ((@x3 Term))
 (! 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(Valid 
;; def=QuickTest.fst(58,71-58,75); use=QuickTest.fst(58,71-58,75)
(ApplyTT @x2
Tm_unit)
)

 

:pattern ((ApplyTT @x2
@x3))
:qid @query.3))
)

;; def=Prims.fst(441,29-441,97); use=QuickTest.fst(124,39-124,43)
(and 
;; def=QuickTest.fst(115,12-115,26); use=QuickTest(1,2-3,4)
(or label_1

;; def=QuickTest.fst(115,12-115,26); use=QuickTest.fst(124,39-124,43)
(= (Prims.op_Subtraction (QuickTest.f (BoxInt 4))
(QuickTest.f (BoxInt 4)))
(BoxInt 0))
)


;; def=QuickTest.fst(116,12-116,20); use=QuickTest(1,2-3,4)
(or label_2

;; def=QuickTest.fst(116,12-116,20); use=QuickTest.fst(124,39-124,43)
(= (QuickTest.f (BoxInt 4))
(BoxInt 0))
)


;; def=Prims.fst(441,36-441,97); use=QuickTest.fst(124,39-124,43)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
Prims.unit)

;; def=QuickTest.fst(117,11-117,50); use=QuickTest.fst(124,39-124,43)
(forall ((@x4 Term))
 (! (implies (HasType @x4
Prims.int)

;; def=QuickTest.fst(117,42-117,49); use=QuickTest.fst(124,39-124,43)
(> (BoxInt_proj_0 (QuickTest.f @x4))
(BoxInt_proj_0 (BoxInt 0)))
)
 

:pattern ((QuickTest.f @x4))
:qid @query.5))
)

;; def=Prims.fst(441,83-441,96); use=QuickTest(1,2-3,4)
(or label_3

;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(Valid 
;; def=Prims.fst(441,83-441,96); use=QuickTest.fst(124,39-124,43)
(ApplyTT @x2
@x3)
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
; QUERY ID: (QuickTest.va_lemma_Test2, 1)
; STATUS: unknown because (incomplete quantifiers)